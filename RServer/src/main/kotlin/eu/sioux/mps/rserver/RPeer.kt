package eu.sioux.mps.rserver

import com.jetbrains.rd.framework.IProtocol
import com.jetbrains.rd.util.lifetime.Lifetime
import com.jetbrains.rd.util.reactive.*
import eu.sioux.mps.rserver.listeners.IChangeListener


abstract class RPeer {
    lateinit var scheduler: IScheduler
    protected lateinit var protocol: IProtocol

    private val modelLifetimeDef = Lifetime.Eternal.createNested()
    private val socketLifetimeDef = Lifetime.Eternal.createNested()

    protected val modelLifetime = modelLifetimeDef.lifetime
    protected val socketLifetime = socketLifetimeDef.lifetime

    lateinit var model: RServiceModel

    protected var changeListeners : MutableList<IChangeListener> = mutableListOf()

    fun addChangeListener(listener: IChangeListener) {
        changeListeners.add(listener)
    }

    fun queue(action: () -> Unit) {
        scheduler.queue {
            try {
                action()
            } catch (e: Throwable) {
                e.printStackTrace()
            }
        }
    }

    fun createModel() {
        queue {
            model = RServiceModel.create(modelLifetime, protocol)
        }
    }

    protected fun adviseToModel() {
        queue {
            model.modules.adviseAddRemove(modelLifetime) { kind, idx, rModule ->
                var module = "module[$idx]${rModule.moduleName.valueOrNull}"
                when (kind) {
                    AddRemove.Remove -> println("-RDx- removed $module")
                    AddRemove.Add -> {
                         println("[${currentThread()}] -RDx- added  $module")

                        //rModule.moduleName.adviseEternal { println("changed module[$idx]${rModule.moduleName.valueOrNull} name > $it") }
                        // rModule.moduleId.adviseEternal { println("changed module[$idx]${rModule.moduleId.valueOrNull}
                        // id > $it") }
                        rModule.models.adviseAddRemove(modelLifetime) { kind, idx, rModel ->
                            var model = "$module.model[$idx]"
                            when (kind) {
                                AddRemove.Remove ->  println("[${currentThread()}] -RDx- m removed $model ${rModel.modelName.valueOrNull}")
                                AddRemove.Add ->  {
                                     println("[${currentThread()}] -RDx- m added $model ${rModel.modelName.valueOrNull}")

                                    rModel.rootNodes.adviseAddRemove(modelLifetime) { kind, idx, rNode ->
                                        adviseNode(rModel, null, rNode, kind, idx)
                                    }
                                }
                            }
                        }
                    }
                }
            }

            model.concepts.advise(modelLifetime){
                 println("[${currentThread()}] -RDx- c changed ${it.newValueOpt?.name}")
            }
        }
    }

    protected fun adviseNode(model: RModel, parent: RNode?, node: RNode, kind: AddRemove, idx: Int) {
        var parentName = parent?.name?.value

//        var nodeInfo = "'${node.name?.value}' (id=${node.rawId}, concept=${node.concept.valueOrNull})"
//        nodePath += " ... ${node.location}"
        when (kind) {
            AddRemove.Remove ->  {
                println("[${currentThread()}] -RDx- n removed ${node.info}")
                changeListeners.forEach { it.nodeRemoved(model, node, idx) }
            }
            AddRemove.Add -> {
                println("[${currentThread()}] -RDx- n added ${node.info}")
                node.properties.adviseAddRemove(modelLifetime) { kind, idx, prop ->
                    when (kind) {
                        AddRemove.Remove ->  println("[${currentThread()}] -RDx- n.p removed ${node.info}.${prop.name.valueOrNull}")
                        AddRemove.Add -> {
                            //println("n.p added $nodePath.${prop.name.valueOrNull}=${prop.value.value}")
                            prop.value.view(modelLifetime) { lf, v ->
                                 println("[${currentThread()}] -RDx- n.p updated ${node.info}.${prop.name.valueOrNull}=$v")
                                changeListeners.forEach { it.propertyChanged(node, prop, idx) }
                            }
                        }
                    }
                }
                node.references.adviseAddRemove(modelLifetime) { kind, _, ref ->
                    when (kind) {
                        AddRemove.Remove ->  println("[${currentThread()}] -RDx- n.r removed ${node.info}.${ref.name.valueOrNull}")
                        AddRemove.Add -> {
                            //println("[${currentThread()}] -RDx- n.r added ${node.info}.${ref.name.valueOrNull}=${ref.targetNodeId.value}->${ref.targetRNode?.name?.value}")
                            ref.targetNodeId.view(modelLifetime) { lf, targetNodeId ->
                                println("[${currentThread()}] -RDx- n.r updated ${node.info}.${ref.name.valueOrNull}=$targetNodeId->${targetNodeId?.mappedRNode?.name?.value}")
                                changeListeners.forEach { it.referenceChanged(node, ref, idx) }
                            }
                        }
                    }
                }
                node.children.adviseAddRemove(modelLifetime) { kind, idx, child ->
                    adviseNode(model, node, child, kind, idx)
                }
                // After we subscribed for changes on node's contents, now we inform listeners
                changeListeners.forEach { it.nodeAdded(model, parent, node, idx) }
            }
        }
    }

    fun terminate() {
        socketLifetimeDef.terminate()
        modelLifetimeDef.terminate()
    }

}