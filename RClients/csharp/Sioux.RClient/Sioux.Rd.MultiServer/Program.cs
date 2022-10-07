using System;
using System.Collections.Generic;
using System.Linq;
using JetBrains.Collections.Viewable;
using JetBrains.Lifetimes;
using JetBrains.Rd;
using Sioux.Rd.MultiServer.Synchronization;

namespace Sioux.Rd.MultiServer
{
    class Program
    {
        private static LifetimeDefinition SchedulerLifetimeDef { get; } = Lifetime.Eternal.CreateNested();
        private static Lifetime SchedulerLifetime { get; set; }

        
        private static int ServerPort;
        private static List<int> ClientPorts = new(); 
        
        private static Connection ClientToServer { get; set; }
        private static List<Connection> ServersForClients { get; set; } = new();
        private static List<RdNodeSynchronizer> Synchronizers { get; set; } = new();


        static void Main(string[] args)
        {
            if (args.Length<2)
            {
                Console.Out.WriteLine($"There should be atleast 2 arguments.");    
                return;
            }

            if (!int.TryParse(args[0], out ServerPort))
            {
                Console.Out.WriteLine($"the first parameter should be a port number of the server which it should connect to");
                return;
            }
            foreach (var s in args.Skip(1))
            {
                if (int.TryParse(s, out var port))
                {
                    ClientPorts.Add(port);
                }
                else
                {
                    Console.Out.WriteLine(
                        $"the second and after parameter should be a port number of the servers that clients can connect to.");
                    return;
                }
            }

            SchedulerLifetime = SchedulerLifetimeDef.Lifetime;
            
            var scheduler = SingleThreadScheduler.RunOnSeparateThread(SchedulerLifetime, "Worker");

            scheduler.Queue(() =>
            {
                ClientToServer = new Connection(scheduler, IdKind.Client, ServerPort);
                foreach (var clientPort in ClientPorts)
                {
                    var server = new Connection(scheduler, IdKind.Server, clientPort);
                    ServersForClients.Add(server);
                    Synchronizers.Add(new RdNodeSynchronizer(scheduler, ClientToServer.Service, server.Service));
                }
            });


            Console.Out.WriteLine($"Press any key to close...");
            Console.ReadKey();
        }
    }
}