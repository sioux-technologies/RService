package eu.sioux.mps.rserver.listeners

import com.jetbrains.rd.util.currentThreadName
import eu.sioux.mps.rserver.*
import jetbrains.mps.ide.ThreadUtils
import org.jetbrains.mps.openapi.event.SNodeAddEvent
import org.jetbrains.mps.openapi.event.SNodeRemoveEvent
import org.jetbrains.mps.openapi.event.SPropertyChangeEvent
import org.jetbrains.mps.openapi.event.SReferenceChangeEvent
import org.jetbrains.mps.openapi.model.SNodeAccessUtil
import org.jetbrains.mps.openapi.model.SNodeChangeListener
import org.jetbrains.mps.openapi.module.SRepository

class SNodeChangeListener(val rServer: RServer, val repo: SRepository) : SNodeChangeListener {

    override fun propertyChanged(e: SPropertyChangeEvent) {
        println("[${currentThread()}]-MPS- property changed ${e.node}.${e.property.name}=${e.newValue}")
        rServer.queue {
            repo.modelAccess.runReadAction {
                RNode.of(e.node).also { rNode ->
                    rNode.propertyByName(e.property.name)?.let { rProp ->
                        val newValue = SNodeAccessUtil.getPropertyValue(e.node, e.property)?.toString()
                        if (rProp.value.value != newValue) {
                            rProp.value.set(newValue)
                            println("[${currentThread()}]-MPS- Changed property: '${rNode.name?.value}'.${rProp.name.valueOrNull}=$newValue")
                        }
                    }
                }
            }
        }
    }

    override fun referenceChanged(e: SReferenceChangeEvent) {
        println("[${currentThread()}]-MPS- ref changed ${e.node}.${e.associationLink.name}=${e.newValue?.targetNode}")
        rServer.queue {
            repo.modelAccess.runReadAction {
                RNode.of(e.node).also { rNode ->
                    rNode.referenceByName(e.associationLink.name).also { rRef ->
                        val oldTargetSNode = rRef.targetNodeId.value?.let { NodeSynchronizer.getSNode(it) }
                        val newTargetSNode = e.newValue?.targetNode
                        if (oldTargetSNode === newTargetSNode) {
                             println("[${currentThread()}]-MPS- ref changed but identical ${e.node}.${e.associationLink.name} old:$oldTargetSNode new:$newTargetSNode")
                        } else {
                            val newTargetRNode = newTargetSNode?.let { NodeSynchronizer.getRNode(it) }
                            rRef.targetNodeId.set(newTargetRNode?.rId?.valueOrNull)
                             println("[${currentThread()}]-MPS- ref changed: '${rNode.name?.value}'.${rRef.name.valueOrNull}=${newTargetRNode?.rId?.valueOrNull}->$newTargetRNode")
                        }
                    }
                }
            }
        }
    }

    override fun nodeAdded(e: SNodeAddEvent) {
        // When sub-tree is added MPS calls this once with the e.child being the root of the sub-tree
        val rNode = NodeSynchronizer.getRNode(e.child)
        if(rNode != null) { // e.child is mapped
            println("[${currentThread()}]-MPS- added mapped sNode, discard it. rNode: ${rNode.info} sNode: ${e.model.name}.${e.parent}.${e.child}")
        } else {
            println("[${currentThread()}]-MPS- added unmapped sNode, sync it to RServer: ${e.model.name}.${e.parent}.${e.child}")
            rServer.queue {
                repo.modelAccess.runReadAction {
                    // Create and map
                    val rNode = RNode.of(e.child)
                    println("[${currentThread()}]-MPS- create rNode: ${rNode.info}")

                    // Attach
                    if (e.isRoot) {
                        // TODO: test model inserts at the right place
                        val idx = e.model.module.models.indexOf(e.model)
                        require(idx >= 0) {"sModel is not contained by its module's models!"}
                        // TODO: replace with RModel map lookup after implementing ModelSynchronizer
                        rServer.model.findModelByName(e.model.rModelName).rootNodes.add(idx, rNode)
                        // RModel.of(e.model).rootNodes.add(rNode)
                    } else {
                        val idx = e.parent!!.children.indexOf(e.child)
                        require(idx >= 0) {"sChild is not contained by its parent's children!"}
                        RNode.of(e.parent!!).children.add(idx, rNode)
                    }
                }
            }
        }
    }

    override fun nodeRemoved(e: SNodeRemoveEvent) {
        // When sub-tree is removed MPS calls this once with the e.child being the root of the sub-tree
        val rNode = NodeSynchronizer.getRNode(e.child)
        if(rNode == null) {
            println("[${currentThread()}]-MPS- removed unmapped sNode, discard it.: ${e.model.name}.${e.child.name}")
            return
        }
        println("[${currentThread()}]-MPS- removed mapped sNode, detach it from RServer. Mapped rNode: ${rNode.info} sNode: ${e.model.name}.${e.child.name}")
        rServer.queue {
            repo.modelAccess.runReadAction {
                // Unmap
                rNode.unmapWithDescendants()

                // Detach
                println("[${currentThread()}] -MPS- detach rNode: ${rNode.info}")
                if (e.isRoot) {
                    // TODO: replace with RModel map lookup after implementing ModelSynchronizer
                    rServer.model.findModelByName(e.model.rModelName).rootNodes.remove(rNode)
                    // RModel.of(e.model).rootNodes.remove(rNode)
                } else {
                    RNode.of(e.parent!!).children.remove(rNode)
                }
            }
        }
    }
}