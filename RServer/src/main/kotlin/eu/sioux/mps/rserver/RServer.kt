package eu.sioux.mps.rserver

import com.jetbrains.rd.framework.*
import com.jetbrains.rd.util.lifetime.onTermination
import com.jetbrains.rd.util.threading.SingleThreadScheduler
import org.jetbrains.mps.openapi.model.SNode

open class RServer(val port: Int = 8888) : RPeer() {

    init {
        scheduler = SingleThreadScheduler(socketLifetime, "SingleThreadScheduler")
        protocol = Protocol(
            "RService-Protocol",
            Serializers(),
            Identities(IdKind.Server),
            scheduler,
            SocketWire.Server(socketLifetime, scheduler, port, "RServer"),
            socketLifetime
        )

        modelLifetime.onTermination {
            NodeSynchronizer.dispose()
        }

        createModel()
        adviseToModel()
    }

    fun focusOn(sNode: SNode) {
        queue() {
            val rNode = NodeSynchronizer.getRNode(sNode)

            if(rNode == null) {
                println("[${currentThread()}] -RDx- focusOn unmapped sNode: $sNode")
                return@queue
            }

            println("[${currentThread()}] -RDx- focusOn ${rNode.info}")
            requireNotNull(rNode.rId.valueOrNull) {"focusOn RNode without RId is most illogical"}

            model.focusOn.fire(rNode.rId.valueOrNull!!)
        }
    }

}