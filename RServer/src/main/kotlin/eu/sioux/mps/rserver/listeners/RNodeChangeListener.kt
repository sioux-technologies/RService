package eu.sioux.mps.rserver.listeners

import com.jetbrains.rd.util.currentThreadName
import eu.sioux.mps.rserver.*
import jetbrains.mps.ide.ThreadUtils
import org.jetbrains.mps.openapi.model.SNode
import org.jetbrains.mps.openapi.model.SNodeAccessUtil
import org.jetbrains.mps.openapi.module.SRepository


interface IChangeListener {
    /**
     * When (sub-)tree is added this handler is called for every node of the (sub-)tree starting with its root node
     */
    fun nodeAdded(rModel: RModel, rParent: RNode?, rNode: RNode, idx: Int)
    /**
     * When (sub-)tree is removed this handler is called for every node of the (sub-)tree starting with its root node
     */
    fun nodeRemoved(rModel: RModel, rNode: RNode, idx: Int)
    fun propertyChanged(rNode: RNode, rProp: RProperty, idx: Int)
    fun referenceChanged(rNode: RNode, rRef: RReference, idx: Int)
}

class RNodeChangeListener(val rServer: RServer, val repo: SRepository) : IChangeListener {

    override fun nodeAdded(rModel: RModel, rParent: RNode?, rNode: RNode, idx: Int) {
        // Propagate only changes originating from client-side
        // If rNode isn't mapped it was added from client-side
        if(rNode.isMapped) {
            println("[${currentThread()}]-SRV- added mapped rNode, discard it: ${rNode.info}")
        } else {
            println("[${currentThread()}]-SRV- added unmapped rNode, sync it to MPS: ${rNode.info}")
            var sNode: SNode
            repo.modelAccess.runReadAction { // Get read-only-access in current thread to create a dangling sNode and map it
                println("[${currentThread()}]-SRV- sync rNode: ${rNode.info}")
                sNode = NodeSynchronizer.syncNodeToMPS(rNode, repo)

                repo.modelAccess.executeCommandInEDT { // Post write-access action in EDT to attach the dangling sNode
                    println("[${currentThread()}]-SRV.EDT- attach rNode: ${rNode.info}")
                    // Attach
                    if(rParent == null) {
                        // TODO: replace with RModel map lookup after implementing ModelSynchronizer
                        repo.findModelByName(rModel.modelName.valueOrNull!!).addRootNode(sNode)
                    } else {
                        val sParent = NodeSynchronizer.getSNode(rParent)
                        requireNotNull(sParent) {"No sParent found for rParent ${rParent.info}"}
                        val sPrevSibling = rParent.children.getOrNull(idx-1)?.let { NodeSynchronizer.getSNode(it) }
                        val link = sParent.concept.findContainmentLink(rNode.role.value!!)
                        sParent.insertChildAfter(link, sNode, sPrevSibling)
                    }
                }
            }
        }
    }

    override fun nodeRemoved(rModel: RModel, rNode: RNode, idx: Int) {
        // Propagate only changes originating from client-side
        // If rNode is mapped it was removed from client-side
        val sNode = NodeSynchronizer.getSNode(rNode)
        if(sNode == null) {
            println("[${currentThread()}]-SRV- removed unmapped rNode, discard it: ${rNode.info}")
            return
        }
        println("[${currentThread()}]-SRV- removed mapped rNode, detach it from MPS: ${rNode.info}")

        repo.modelAccess.executeCommandInEDT {
            println("[${currentThread()}]-SRV.EDT- sNode detach $sNode of rNode: ${rNode.info}")
            // Keep unmap and detach in the same action to provide atomicity
            sNode.unmap()
            sNode.delete() // Detach
        }
    }

    override fun propertyChanged(rNode: RNode, rProp: RProperty, idx: Int) {
        // Propagate only changes originating from client-side
        // Compare property values (sNode vs rNode) to determine if the change originates from us (server-side)
        println("[${currentThread()}]-SRV- rProp Updated ${rNode.info}.${rProp.info}")
        requireNotNull(rProp.name.valueOrNull) { "Sync SNode property from RNode property without name is most illogical: $rProp" }
        val sNode = NodeSynchronizer.getSNode(rNode) ?: return // if not mapped exit
        repo.modelAccess.executeCommandInEDT {
            val sProp = sNode.concept.findProperty(rProp.name.valueOrNull!!)
            if (rProp.value.value != SNodeAccessUtil.getPropertyValue(sNode, sProp)?.toString()) {
                sNode.setProperty(sProp, rProp.value.value)
                println("[${currentThread()}]-SRV.EDT- rProp Updated ${rNode.info}.${rProp.info}")
            }
        }
    }

    override fun referenceChanged(rNode: RNode, rRef: RReference, idx: Int) {
        // Propagate only changes originating from client-side
        println("[${currentThread()}]-SRV- rRef Updated ${rNode.info}.${rRef.info}")
        requireNotNull(rRef.name.valueOrNull) { "Sync SNode ref from RNode ref without name is most illogical: $rRef" }
        val sNode = NodeSynchronizer.getSNode(rNode)
        if (sNode == null) { // if not mapped exit
            println("[${currentThread()}]-SRV- rRef Updated but missing source sNode of source rNode: $rNode")
            return
        }
        repo.modelAccess.executeCommandInEDT {
            val sRefLink = sNode.concept.findReferenceLink(rRef.name.valueOrNull!!)
            val oldTargetSNode = sNode.getReferenceTarget(sRefLink)
            val newTargetSNode = rRef.targetSNode
            if (oldTargetSNode === newTargetSNode) {
                println("[${currentThread()}]-SRV.EDT- rRef Updated but identical $sNode.${sRefLink.name} old:$oldTargetSNode new:$newTargetSNode")
            } else {
                sNode.setReferenceTarget(sRefLink, newTargetSNode)
                println("[${currentThread()}]-SRV.EDT- rRef Updated ${sNode.name}.${sRefLink.name}=$newTargetSNode")
            }
        }
    }
}