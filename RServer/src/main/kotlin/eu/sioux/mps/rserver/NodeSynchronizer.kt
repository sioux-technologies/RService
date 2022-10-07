package eu.sioux.mps.rserver

import org.jetbrains.mps.openapi.language.*
import org.jetbrains.mps.openapi.model.SNode
import org.jetbrains.mps.openapi.model.SNodeAccessUtil
import org.jetbrains.mps.openapi.module.SRepository


/**
 * Bidirectional map SNode to/from RNode.
 * Also RId-to-RNode map
 */
class NodesMap {
    private var s2rNode: MutableMap<SNode, RNode> = HashMap()
    private var r2sNode: MutableMap<RNode, SNode> = HashMap()
    private var rIdToRNode: MutableMap<RId, RNode> = HashMap()

    /**
     * Registers RNode-SNode pair
     */
    fun registerNodes(sNode: SNode, rNode: RNode) {
        requireNotNull(rNode.rId.valueOrNull) {"Registering RNode without id is most illogical"}
        s2rNode[sNode] = rNode
        r2sNode[rNode] = sNode
        rIdToRNode[rNode.rId.valueOrNull!!] = rNode
    }

    /**
     * Unregisters RNode-SNode pair
     */
    fun unregisterRNode(rNode: RNode) : SNode? {
        requireNotNull(rNode.rId.valueOrNull) {"UnRegistering RNode without id is most illogical"}
        rIdToRNode.remove(rNode.rId.valueOrNull)
        val sNode = r2sNode.remove(rNode) ?: return null // unregistered rNode
        s2rNode.remove(sNode)
        return sNode
    }

    /**
     * Unregisters RNode-SNode pair
     */
    fun unregisterSNode(sNode: SNode) : RNode? {
        val rNode = s2rNode.remove(sNode) ?: return null // unregistered sNode
        r2sNode.remove(rNode)
        requireNotNull(rNode.rId.valueOrNull) {"UnRegistering RNode without id is most illogical"}
        rIdToRNode.remove(rNode.rId.valueOrNull)
        return rNode
    }

    fun getRNode(rId: RId) : RNode?  = rIdToRNode[rId]
    fun getRNode(sNode: SNode) : RNode?  = s2rNode[sNode]
    fun getSNode(rNode: RNode) : SNode?  = r2sNode[rNode]
    fun getSNode(rId: RId) : SNode?  = getRNode(rId)?.let { getSNode(it) }

    fun dispose() {
        println("Dispose NodesMap of s2rNode: ${s2rNode.size}, r2sNode: ${r2sNode.size}, rIdToRNode: ${rIdToRNode.size}")
        s2rNode.clear()
        r2sNode.clear()
        rIdToRNode.clear()
    }
}



object NodeSynchronizer {

    private var nodesMap : NodesMap = NodesMap()
    private var pendingRefsActions: MutableList<() -> Unit> = mutableListOf()

    var identityProvider = IdentityProvider.Server()

    private fun addPendingRef(action: () -> Unit) {
        pendingRefsActions.add(action)
    }
    private fun processPendingRefs() {
        pendingRefsActions.forEach{ it() }
        pendingRefsActions.clear()
    }

    private fun syncRNode(rNode: RNode, original: SNode) {
        rNode.model.set(original.model!!.rModelName)
        rNode.identify()
        rNode.concept.set(original.concept.rConceptName)
        addPendingRef {
            rNode.parentId.set(original.parent?.let {
                requireNotNull(nodesMap.getRNode(it)) {"RNode's parent should have been created prior processing the pending refs"}.rId.valueOrNull
            })
        }
        rNode.role.set(original.containmentLink?.name)
        rNode.rootId.set(RId(-1))
        rNode.properties.addAll( original.concept.properties.mapNotNull { sProperty ->
        // TODO: Should we add properties with null values? If not uncomment.
//            if (SNodeAccessUtil.hasProperty(original, sProperty))
//                return@mapNotNull null
            var rProp: RProperty = RProperty()
            rProp.name.set(sProperty.name)
            rProp.value.set(SNodeAccessUtil.getPropertyValue(original, sProperty)?.toString())
            rProp
        })
        original.concept.referenceLinks.forEach { sRefLink ->
            addPendingRef {
                val rRef = RReference()
                rRef.name.set(sRefLink.name)
                val targetRNode = original.getReferenceTarget(sRefLink)?.let { nodesMap.getRNode(it) }
                rRef.targetNodeId.set(targetRNode?.rId?.valueOrNull)
                rNode.references.add(rRef)
            }
        }
    }
    fun syncRNodeWithDescendants(rNode: RNode, original: SNode) {
        syncRNode(rNode, original)
        original.children.forEach { sChild ->
            val rChild = nodesMap.getRNode(sChild) ?: createRNode(sChild)
            rNode.children.add(rChild)
        }
    }
    /**
     * RNode is considered created when instantiated + initialized (from SNode) + registered in nodesMap
     * along with its descendants.
     * RNode's references (incl. parent-child relation) are not bound yet.
     */
    private fun createRNode(sNode: SNode) : RNode {
        // Order is important and deliberately chosen.
        // Method is recursive so binding references is deliberately excluded
        return RNode().also {                       // 1. instantiate
            syncRNodeWithDescendants(it, sNode)     // 2. sync (fill the data)
            nodesMap.registerNodes(sNode, it)       // 3. map it after RNode creation is complete
        }
    }

    private fun createAndMapMPSNode(rNode: RNode, repo: SRepository) : SNode {
        require(!rNode.isMapped) {"Can't map already mapped rNode: $rNode"}
        requireNotNull(rNode.model.valueOrNull) { "Creating SNode of RNode without model is most illogical" }
        requireNotNull(rNode.concept.valueOrNull) { "Creating SNode of RNode without concept is most illogical" }
        val sConcept = repo.findConcept(rNode.model.valueOrNull!!, rNode.concept.valueOrNull!!) as SConcept
        return jetbrains.mps.smodel.SNode(sConcept).also {  // Instantiate it
            nodesMap.registerNodes(it, rNode)               // Map it
        }
    }
    private fun getOrCreateMPSNode(rNode: RNode, repo: SRepository) : SNode {
        return getSNode(rNode) ?: createAndMapMPSNode(rNode, repo)
    }
    private fun syncDescendantsToMPS(sParent: SNode, rParent: RNode, repo: SRepository) {
        rParent.children.forEach { rChild ->
            val link = sParent.concept.findContainmentLink(rChild.role.value!!)
            val sChild = createAndSyncNodeToMPS(rChild, repo)
            syncDescendantsToMPS(sChild, rChild, repo)
            sParent.addChild(link, sChild)
        }
    }
    private fun createAndSyncNodeToMPS(rNode: RNode, repo: SRepository) : SNode {
        val sNode = createAndMapMPSNode(rNode, repo)
        // Sync Meta properties - happens during instantiation [concept, id] and attachment [model, root, parent, role]
        // Sync properties
        // sNode.name is set as one of the properties if sNode implements INamedConcept
        rNode.properties.forEach { rProp ->
            requireNotNull(rProp.name.valueOrNull) {"Sync SNode property from RNode property without name is most illogical: $rProp"}
            val sProp = sNode.concept.findProperty(rProp.name.valueOrNull!!)
            sNode.setProperty(sProp, rProp.value.value)
        }
        // Sync references
        addPendingRef {
            rNode.references.forEach { rRef ->
                requireNotNull(rRef.name.valueOrNull) { "Sync SNode reference from RNode reference without name is most illogical: $rRef" }
                val sRefLink = sNode.concept.findReferenceLink(rRef.name.valueOrNull!!)
                val sTarget = rRef.targetNodeId.value?.let { nodesMap.getSNode(it) }
                sNode.setReferenceTarget(sRefLink, sTarget)
            }
        }
        return sNode
    }
    fun syncTreeToMPS(rNode: RNode, repo: SRepository) : SNode {
        return createAndSyncNodeToMPS(rNode, repo).also { sNode ->
            syncDescendantsToMPS(sNode, rNode, repo)
            processPendingRefs()
        }
    }
    fun syncNodeToMPS(rNode: RNode, repo: SRepository) : SNode {
        return createAndSyncNodeToMPS(rNode, repo).also {
            processPendingRefs()
        }
    }

    fun getRNode(rId: RId) : RNode? = nodesMap.getRNode(rId)
    fun getRNode(sNode: SNode) : RNode?  = nodesMap.getRNode(sNode)
    fun getSNode(rNode: RNode) : SNode?  = nodesMap.getSNode(rNode)
    fun getSNode(rId: RId) : SNode?  = nodesMap.getSNode(rId)

    fun isNodeMapped(rNode: RNode) = getSNode(rNode) != null
    fun isNodeMapped(sNode: SNode) = getRNode(sNode) != null


    /**
     * Get or create RNode along with its descendants
     */
    fun getOrCreateRNode(sNode: SNode) : RNode {
        return nodesMap.getRNode(sNode) ?: createRNode(sNode).also {
            processPendingRefs()                    // 4. binding references deliberately after RNode and its descendants are created
        }
    }
    /**
     * Remove RNode along with its descendants
     */
    fun unmapTree(rNode: RNode) : SNode? {
        rNode.children.forEach{ unmapTree(it) }
        return nodesMap.unregisterRNode(rNode)
    }
    fun unmapTree(sNode: SNode) : RNode? {
        sNode.children.forEach { unmapTree(it) }
        return nodesMap.unregisterSNode(sNode)
    }
    fun unmapNode(rNode: RNode) : SNode? {
        return nodesMap.unregisterRNode(rNode)
    }
    fun unmapNode(sNode: SNode) : RNode? {
        return nodesMap.unregisterSNode(sNode)
    }

    fun dispose() {
        nodesMap.dispose()
    }
}