package eu.sioux.mps.rserver

import com.jetbrains.rd.util.currentThreadName
import com.jetbrains.rd.util.reactive.hasValue
import jetbrains.mps.ide.ThreadUtils
import jetbrains.mps.smodel.SNodeId
import jetbrains.mps.smodel.SNodeUtil
import org.jetbrains.mps.openapi.language.SAbstractConcept
import org.jetbrains.mps.openapi.language.SContainmentLink
import org.jetbrains.mps.openapi.language.SProperty
import org.jetbrains.mps.openapi.language.SReferenceLink
import org.jetbrains.mps.openapi.model.SModel
import org.jetbrains.mps.openapi.model.SNode
import org.jetbrains.mps.openapi.module.SRepository


// ToDo: Move it inside log() method after migrate to using proper logger
fun currentThread() = if(ThreadUtils.isInEDT()) "EDT" else currentThreadName()



// mps.openapi extensions
val SNode.regularNodeId : SNodeId.Regular? get() = nodeId as? SNodeId.Regular
val SNode.isMapped get() = NodeSynchronizer.isNodeMapped(this)
fun SNode.unmap() : RNode? = NodeSynchronizer.unmapNode(this)
fun SNode.unmapWithDescendants() : RNode? = NodeSynchronizer.unmapTree(this)


val SModel.rModelName: String get() = modelName

val SAbstractConcept.virtualPackage: String? get() = declarationNode?.getProperty(SNodeUtil.property_BaseConcept_virtualPackage)
val SAbstractConcept.fullName: String  get() = if(virtualPackage?.isNotEmpty() == true) "$virtualPackage.$name" else name
val SAbstractConcept.rConceptName: String  get() = "${language.qualifiedName}.$fullName"

fun SRepository.findModelByName(modelName: String) : SModel {
    return modules.flatMap { it.models }
        .firstOrNull { it.name.longName == modelName }
        .let { requireNotNull(it){"Model not found: $modelName" } }
}
fun SRepository.findConcept(modelName: String, rConceptName: String) : SAbstractConcept {
    return findModelByName(modelName).module.usedLanguages
        .flatMap { it.concepts }
        .firstOrNull { it.rConceptName == rConceptName }
        .let { requireNotNull(it){"Concept not found: $modelName.$rConceptName" } }
}

fun SAbstractConcept.findContainmentLink(linkName: String) : SContainmentLink {
    return containmentLinks.firstOrNull { it.name == linkName }
        .let { requireNotNull(it){"Containment link: $this.$linkName not found" } }
}
fun SAbstractConcept.findReferenceLink(linkName: String) : SReferenceLink {
    return referenceLinks.firstOrNull { it.name == linkName }
        .let { requireNotNull(it){"Reference link: $this.$linkName not found" } }
}
fun SAbstractConcept.findProperty(propName: String) : SProperty {
    return properties.firstOrNull { it.name == propName }
        .let { requireNotNull(it){"Property: $this.$propName not found" } }
}





// RServiceModel extensions
fun RNode.Companion.of(sNode: SNode) : RNode = NodeSynchronizer.getOrCreateRNode(sNode)
val RNode.isMapped get() = NodeSynchronizer.isNodeMapped(this)
fun RNode.unmap() : SNode? = NodeSynchronizer.unmapNode(this)
fun RNode.unmapWithDescendants() : SNode? = NodeSynchronizer.unmapTree(this)
fun RNode.propertyByName(name: String): RProperty? {
    return properties.firstOrNull { it.name.valueOrNull == name }
    //.let { requireNotNull(it){"rProperty not found: $this.$name"} }
}
fun RNode.referenceByName(name: String): RReference {
    return references.firstOrNull { it.name.valueOrNull == name }
        .let { requireNotNull(it){"rReference not found: $this.$name"} }
}
val RNode.name get() = propertyByName("name")?.value
fun RNode.identify() {
    require(!rId.hasValue) {"RId is already set of rNode: $this"}
    rId.set(NodeSynchronizer.identityProvider.next())
}
val RNode.rawId get() = rId.valueOrNull?.id
val RNode.info get() = "(name='${name?.value}', id=${rawId}, concept=${concept.valueOrNull})"

val RId.mappedRNode get() =  NodeSynchronizer.getRNode(this)

val RReference.targetRNode : RNode? get() = targetNodeId.value?.let { NodeSynchronizer.getRNode(it) }
val RReference.targetSNode : SNode? get() = targetNodeId.value?.let { NodeSynchronizer.getSNode(it) }
val RReference.info get() = "${name.valueOrNull}=${targetNodeId.value}->${targetRNode}"

val RProperty.info get() = "${name.valueOrNull}=${value.value}"

fun RServiceModel.findModelByName(modelName: String) : RModel {
    return modules.flatMap { it.models }
        .firstOrNull { it.modelName.valueOrNull == modelName }
        .let { requireNotNull(it){"Model not found: $modelName" } }
}
