package c4s1.simulations;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.ethernet.Eth100M;
import inet.node.inet.StandardHost;


@license(LGPL);
//
// TODO documentation
//
network c4s1
{
    @display("bgb=324,191");
    submodules:
        configurator: Ipv4NetworkConfigurator {
            @display("p=158,39;is=s");
        }
        server: StandardHost {
            @display("p=158,89;is=s");
        }
        client1: StandardHost {
            @display("p=52,152;is=s");
        }
        client2: StandardHost {
            @display("p=118,152;is=s");
        }
        client3: StandardHost {
            @display("p=187,152;is=s");
        }
        client4: StandardHost {
            @display("p=249,152;is=s");
        }
    connections:
        server.ethg++ <--> Eth100M <--> client3.ethg++;
        server.ethg++ <--> Eth100M <--> client4.ethg++;
        server.ethg++ <--> Eth100M <--> client2.ethg++;
        server.ethg++ <--> Eth100M <--> client1.ethg++;
}

