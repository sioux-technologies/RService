package eu.sioux.mps.rserver

import java.util.concurrent.atomic.AtomicLong

open class IdentityProvider(kind: PeerKind) : IdentityProviderBase(kind) {
    private var idCounter = AtomicLong(when(kind) {
        PeerKind.Client -> baseClientId
        PeerKind.Server -> baseServerId
    })

    override fun next(): RId {
        return RId(idCounter.getAndAdd(2))
    }

    class Server : IdentityProvider(PeerKind.Server)
    class Client : IdentityProvider(PeerKind.Client)
}
