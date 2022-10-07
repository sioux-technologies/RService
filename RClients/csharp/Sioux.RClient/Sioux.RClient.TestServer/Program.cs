using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using JetBrains.Collections.Viewable;
using JetBrains.Lifetimes;
using JetBrains.Rd;
using JetBrains.Rd.Impl;
using Sioux.RClient.Generated.Server;

namespace Sioux.RClient.TestServer
{
    class Program
    {
        private static int port = 8889;
        private static IProtocol Protocol { get; set; }
        private static IScheduler Scheduler { get; set; }
        private static LifetimeDefinition ModelLifetimeDef { get; } = Lifetime.Eternal.CreateNested();
        private static LifetimeDefinition SocketLifetimeDef { get; } = Lifetime.Eternal.CreateNested();
        private static Lifetime ModelLifetime { get; set; }
        private static Lifetime SocketLifetime { get; set; }

        private static RServiceModel Service { get; set; }

        static void Main(string[] args)
        {
            ModelLifetime = ModelLifetimeDef.Lifetime;
            SocketLifetime = SocketLifetimeDef.Lifetime;
            
            Scheduler = SingleThreadScheduler.RunOnSeparateThread(SocketLifetime, "Worker", scheduler =>
            {
                IWire client = new SocketWire.Server(ModelLifetime, scheduler, new IPEndPoint(IPAddress.Loopback, port), "MpsTestServer");
                var serializers = new Serializers(ModelLifetime, scheduler, null);
                
                Protocol = new Protocol("MpsTestServer", serializers, new Identities(IdKind.Server), scheduler, client,
                    SocketLifetime);
            });
            
            Scheduler.Queue(() =>
            {
                Service = new RServiceModel(ModelLifetime, Protocol);
                Service.InstanceName.Value = "TestInstance";
                Service.InstanceName.Change.Advise(Lifetime.Eternal, s =>
                {
                    Console.Out.WriteLine($"New InstanceName: {s}");
                });
                //initialize the MPSServer with a test model

                var module = new RModule();
                module.ModuleName.Value = "TodoList";
                module.ModuleId.Value = "1234567890";
                module.ModuleId.Change.Advise(Lifetime.Eternal, s =>
                {
                    Console.Out.WriteLine($"New id: {s}");
                });
                Service.Modules.Add(module);
                
                var model = new RModel();
                model.ModuleName.Value = "TodoList.List1";
                model.ModelId.Value = "1234567891";
                module.Models.Add(model);

                var list = CreateSNode("TodoList", new Dictionary<string, string>() {{"Name", "Some todo list"}});
                model.RootNodes.Add(list);

                var item1 = CreateSNode("TodoItem", new Dictionary<string, string>() {{"Content", "Do task 1"}});
                list.Children.Add(item1);
                var item2 = CreateSNode("TodoItem", new Dictionary<string, string>() {{"Content", "Do task 2"}});
                list.Children.Add(item2);
            });

            var rand = new Random();

            while (true)
            {
                Console.Out.WriteLine($"q to quit, space to random number");
                var key = Console.ReadKey();

                switch (key.Key)
                {
                    case ConsoleKey.Q:
                        SocketLifetimeDef.Terminate();
                        ModelLifetimeDef.Terminate();
                        return;
                    case ConsoleKey.Spacebar:
                        Scheduler.Queue(() =>
                        {
                            Service.Modules.First().ModuleId.Value = rand.Next().ToString();    
                        });
                        break;
                    case ConsoleKey.A:
                        Scheduler.Queue(() =>
                        {
                            var module = new RModule();
                            module.ModuleName.Value = "Some added module";
                            module.ModuleId.Value = rand.Next().ToString();
                            Service.Modules.Add(module);
                        });
                        break;
                    case ConsoleKey.B:
                        Scheduler.Queue(() =>
                        {
                            Service.InstanceName.Value = rand.Next().ToString();    
                        });
                        break;
                }
            }
        }

        private static RNode CreateSNode(string conceptName, Dictionary<string, string> properties)
        {
            var result = new RNode();
            result.Concept.Value = conceptName;

            foreach (var (key, value) in properties)
            {
                var listNameProperty = new RProperty();
                listNameProperty.Name.Value = key;
                listNameProperty.Value.Value = value;
                result.Properties.Add(listNameProperty);
            }
            
            return result;
        }
    }
}