package eu.sioux.mps.rserver

import com.jetbrains.rd.framework.*
import com.jetbrains.rd.util.threading.SingleThreadScheduler

open class RClient(val port: Int = 8888) : RPeer() {

    init {
        scheduler = SingleThreadScheduler(socketLifetime, "SingleThreadScheduler")
        protocol = Protocol(
            "RService-Protocol",
            Serializers(),
            Identities(IdKind.Client),
            scheduler,
            SocketWire.Client(socketLifetime, scheduler, port, "RClient"),
            socketLifetime
        )

        createModel()
        adviseToModel()
    }

}