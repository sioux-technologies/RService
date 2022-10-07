# RServer approah to Objects Identity Management
How are objects identified in RServer?

## Used terms
Checkout [MPS Identities Management](docs\MPS-internals\mps-identities-management.puml)

Object = [module, model, node]

RObject = [RModule, RModel, RNode] in RServer

SObject = [SModule, SModel, SNode] in MPS


## Use cases
1. Map SObjetc-to-RОbject * to find which RD object represents an MPS object
    - To update RD object(s) when MPS object is changed (server/MPS side originating change)
    - To create RD object under certain parent (when MPS object is created), i.e. find the parent
2. Map RObject-to-SObject objects - to Find which MPS object is represented by an RD object
    - To update MPS object when RD object is changed (clinet side originating change)
    - To create MPS object under certain parent (when RD object is created), i.e. find the parent
3. Map RObjects-to-SM objects
4. Map SM-to-RObjects
5. RОbject-to-RОbject - References (encode and resolve)
    - reference between MPS SNodes encoded as reference between RNodes
    - SNode refering to containing SModel
    - SModel refering to containing SModule
6. Create/delete objects on server initiative and on client initiative
7. Move objects in the hierarchy
    - Not nice if IDs are the path to the object
    - Can we store objects in separate flat maps. And get inspiration of how MPS does IDs


## Design decisions
1. Deliberately move away from (e.i. not mimic) MPS identity managment. Use RServer internal identity managment by introdicung RIds instead of MPS' IDs.
    * Benefits/Motivations
        - MPS Ids of different classes have different uniquness scope (e.g. NodeIDs unique per model) in other words are not globally unique. 
        - Working with not globally unique IDs is more complicated.
        - MPS uses multiple types of Ids (e.g. ForeignSModelId) which can be useful for custome persistence scnearios.
        - Persistence is not a concern for RServer, we only work with in-memory objects
        - Implementing multiple types of Ids (to mimic MPS) is more work
    * Drawbacks/risks
        - Risk @Klemens: RServer takes the reponsinility to keep correspondence between SObjects (MPS IDs) and RObjects (RIds). That can be error prone. But we need to keep correspondence between MPS and RObjects anyhow. SO IDs are not special in that regard.
        - Other people implementing RClients need to familirize with RIds design. Unless we encapsulate it well.
2. RClient can create an object on its own initiative by creating it in the shared RD model. No need to ask the RServer (and consequently MPS) to do so.
    * Benefits/Motivations
        - Makes RClient less complex
    * Drawbacks
        - Some corner cases might be tricky to handle.
            + What if the new node is not allowed to be creaded by MPS (e.g. due to constraints)?
            + Then RServer should handle this by deleting the node, subsequently it will get deleted at RClient side
            + Another option is to leave the node but report the problem via the error mechanism.


## Chosen Solution

### RObject-SObject: local maps (at server and client sides)
* SObject-to-RObject maps (of Java/Kotlin references) => covers use case #1 and #3
* RObject-to-SObject => covers use case #2 and #4
    * Use Adapters inheriting generated Robjects to extend them with needed funcionality
    * RObjectAdapter: contains ref to representing SObject
    * Create RObjectAdapter 
### RId-RObject Map
* RId-to-RObject map holds RId (data) as key and RObject programming language reference as value => covers use case #5
* Maintain RId-to-RObject map locally (at server and client side) according to pre-agreed contract
* RId are created by pre-agreed id collision avoidance protocol similar to RdId (i.e. com.jetbrains.rd.framework.Identities).
    - Collision avoidance allows for the client to create an object on its own initiative => covers use case #6
* Encode references as RId, i.e. key in the map => covers use case #5
* Easily resolve references by map look-up => covers use case #5


        
		

