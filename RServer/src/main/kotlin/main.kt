import com.jetbrains.rd.util.string.printToString
import com.jetbrains.rd.util.threading.SingleThreadScheduler
import eu.sioux.mps.rserver.*


internal enum class ApplicationType {
    Server,
    Client
}

fun main(args: Array<String>) {

    var applicationType: ApplicationType = ApplicationType.Client


    if (args.size != 2) throw IllegalArgumentException("needs two parameter");
    if (args[0].toLowerCase() == "server")
        applicationType = ApplicationType.Server;
    var Name: String = args[1];

    if (applicationType == ApplicationType.Client)
        Thread.sleep(1000);

    var p :RPeer

    if (applicationType == ApplicationType.Server) {
        p = RServer()
    }
    else {
        p = RClient()
    }

    // Command line interpreter actions
    val actions = mapOf(
        "add_model" to { name: String ->
            var rModel = RModel()
            rModel.modelId.set(name)
            p.model.modules.getOrNull(0)?.models?.add(rModel)
        },
        "add_module" to { name: String ->
            var rModule = RModule()
            rModule.moduleId.set(name)
            rModule.moduleName.set(name)
            p.model.modules += rModule
            rModule.location
        },
        "delete_modules" to {
            p.model.modules.clear()
        },
        "update_module" to { newValue: String ->
            p.model.modules.getOrNull(0)?.let {
                it.moduleId.set(newValue)
                it.moduleName.set(newValue)
            }
        },
        "copy_node" to {
            // Duplicate first node and add it as last node
            val nodesToActOn = p.model.modules.getOrNull(0)?.models?.getOrNull(0)?.rootNodes?.getOrNull(0)?.children
            nodesToActOn?.getOrNull(0)?.let { firstNode ->
                val rNode = firstNode.deepClone()
                rNode.name?.set(rNode.name?.value + " - COPY")
                nodesToActOn.add(rNode)
            }
        },
        "remove_node" to {
            // Remove last node
            val nodesToActOn = p.model.modules.getOrNull(0)?.models?.getOrNull(0)?.rootNodes?.getOrNull(0)?.children
            nodesToActOn?.removeLastOrNull()
        },
        "update_prop" to {
            // Remove last node
            val nodesToActOn = p.model.modules.getOrNull(0)?.models?.getOrNull(0)?.rootNodes?.getOrNull(0)?.children
            nodesToActOn?.getOrNull(0)?.let { firstNode ->
                firstNode.name?.set(firstNode.name?.value + " - COPY")
            }
        },
        "print" to {
            println(p.model.printToString())
        },
    )

    while(true) {
        print("# ")
        val cmd = readLine()
        if( ! cmd.isNullOrBlank()) {
            val cmdParts = cmd.split(" ", limit = 2)
            val cmdName = cmdParts[0]
            val cmdParameter = cmdParts.getOrElse(1){"-default"}

            if (cmdName == "quit") {
                break
            }

            if(actions.contains(cmdName.toLowerCase())) {
                p.queue {
                    actions[cmdName]?.invoke(cmdParameter)
                }
            }
            else {
                println("Wrong command")
            }

            while((p.scheduler as SingleThreadScheduler).tasksInQueue.get() > 0){}
        }
    }

    p.terminate()
}