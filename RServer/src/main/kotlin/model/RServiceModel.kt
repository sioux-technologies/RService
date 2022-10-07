@file:Suppress("unused")

package model

import com.jetbrains.rd.generator.nova.*

object RServiceModel : Root() {

    // --------------------------------------------------------------------------------------------
    // [WIP] Objects Identity types
    var PeerKind = enum {
        (+"Server").doc("RServer in Kotlin running from within MPS instance")
        (+"Client").doc("Client in Kotlin/C#/C++")
    }

    var RId = structdef("RId") {
        field("id", PredefinedType.int64)
    }

    val iIdentityProvider = interfacedef("IIdentityProvider") {
        method("next", RId).doc("Calculates the next unique ID")
    }.doc("Provides unique IDs for objects (nodes, models, modules)." +
                  "Starts with the baseServerId or baseClientId and increment it by 2 for every next object." +
                  "Supports separate ID spaces for IDs assigned on the client and the server side of the protocol.")

    val identityProviderBase = baseclass("IdentityProviderBase") implements iIdentityProvider with {
        field("kind", PeerKind)
        const("baseClientId", PredefinedType.long, 0)
        const("baseServerId", PredefinedType.long, 0 + 1)
    }

    // --------------------------------------------------------------------------------------------
    // TODO: deprecate in favour of RId
//    val NodeId = structdef("NodeId") {
//        field("value", PredefinedType.int64).default(-1)//todo read only for client
//    }

//    val NodeReference = structdef("NodeReference") {
//        field("refId", RId)
//    }

    //todo ModelRoot also maybe?
    //todo read only values (eg isReadOnly, ModuleId)???
    //todo references
    //todo SModel.Problem

    // --------------------------------------------------------------------------------------------
    // M2 meta-model level types
    val RPropertyDef = classdef("RPropertyDef") {
        property("Name", PredefinedType.string).doc("referencing ID")
        property("Type", PredefinedType.string)
    }
    val RReferenceLink = classdef("RReferenceLink") {
        property("Name", PredefinedType.string).doc("referencing ID")
        property("ConceptName", PredefinedType.string)
    }
    val RContainmentLink = classdef("RContainmentLink") { //M2
        property("Name", PredefinedType.string).doc("referencing ID")
        property("ConceptName", PredefinedType.string)
    }
    val RConcept = classdef("RConcept") { //M2
        property("Name", PredefinedType.string).doc("referencing ID")
        list("Properties", RPropertyDef)
        list("ContainmentLinks", RContainmentLink)
        list("ReferenceLinks", RReferenceLink)
    }


    // --------------------------------------------------------------------------------------------
    // M1 model level types
    var RReference = classdef("RReference") {
        property("Name", PredefinedType.string).doc("reference to SReferenceLink")
        property("TargetNodeId", RId.nullable)
    }

    var RProperty = classdef("RProperty") {
        property("Name", PredefinedType.string)
        property("Value", PredefinedType.string.nullable)
    }

    var RNode = classdef("RNode") {
        property("Model", PredefinedType.string).doc("Reference to Model") //todo, maybe make this a field, that gets updates on both sides by it's parents advice??
        //property("NodeId", NodeId).readonly.doc("reference ID, should not be changed by the client, should be set before putting in the model tree, after which it should not be changed anymore")
        property("RId", RId).doc("ToDo: supersede NodeId")
        property("Concept", PredefinedType.string).doc("reference to SConcept")
        //property("MyParent", NodeReference.nullable).doc("Corresponds to SNode.getParent() but prefixed 'My' to avoid name conflict with RD parent property")
        property("ParentId", RId.nullable).doc("ToDo: supersede MyParent") //todo, maybe make this a field, that gets updates on both sides by it's parents advice??
        property("Role", PredefinedType.string.nullable).doc("Node's role in parent")
        property("RootId", RId) //todo, maybe make this a field, that gets updates on both sides by it's parents advice??
        // TODO: change it to a map, in C# we don't use INotifyCollectionChanged interface
        list("Properties", RProperty) // this is not a map, because the map does not implement INotifyCollectionChanged interface on the C# side
        list("References", RReference)
        list("Children", this)
    }

    var RModel = openclass("RModel") {
        property("ModelId", PredefinedType.string).readonly//referencing ID, should not be changed by the client
        property("ModelName", PredefinedType.string)
        property("ModuleName", PredefinedType.string)
        property("isReadOnly", PredefinedType.bool)//should not be changed by the client
        list("RootNodes", RNode)
    }


    var RModule = openclass("RModule") {
        property("ModuleId", PredefinedType.string).readonly//referencing ID, should not be changed by the client
        property("ModuleName", PredefinedType.string)
        property("isReadOnly", PredefinedType.bool)//should not be changed by the client
        property("isPackaged", PredefinedType.bool)//should not be changed by the client
        list("Models", RModel)
    }

    // --------------------------------------------------------------------------------------------
    // RModelService model (shared between server and client)
    init {
        //setting(Kotlin11Generator.Namespace, "eu.sioux.mps.rserver")

        list("Modules", RModule)
        list("Concepts", RConcept) // TODO: concepts should be contained by RLanguage. RLanguage should be contained by RModule.
        property("InstanceName", PredefinedType.string)
        signal("FocusOn", RId).doc("Intended to enable Server to initiate open/focus on a node")
    }
}