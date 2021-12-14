//
// FC/FCoE SAN Adapter
//
module SANAdapter
{
    parameters:
        int drvCpuCnt;
        bool drvCpuActive;
        int numPorts; //number of ports per adapter: initialized once from config
        int maxNumPorts;
        string type;  //adapter type: "fc" or "fcoe"
        @display("bgb=703,358");
    gates:
        //inout link[numPorts];
        inout link[maxNumPorts];
        inout ulp;
    submodules:
        port[numPorts]: SANPort {
			parameters:
				vsanId = 0;
				vlanId = 0;
				@display("p=86,91,column,75;i=block/broadcast");
        }
        bus: AdapterBus {
            parameters:
                numPorts = numPorts;
                @display("p=258,170;i=block/switch");
            gates:
                port[numPorts];
                driver[numPorts];
        }
        driver[numPorts]: FCPortDriver {
            @display("p=429,91,column,75;i=block/cogwheel");
        }
        ulp: AdapterULPAgent {
            parameters:
                numPorts = numPorts;
                @display("p=600,170;i=block/uparrow");
            gates:
                driver[numPorts];
        }
        drvCpu: Processor { //only make sense for FEIB
            parameters:
                procCnt = drvCpuCnt;
                @display("p=586,320;i=device/cpu");
        }
    connections allowunconnected:
        for i=0..numPorts-1 {
            link[i] <--> port[i].link;
            port[i].bus <--> bus.port[i];
            bus.driver[i] <--> driver[i].bus;
            driver[i].ulp <--> ulp.driver[i];
        }
        ulp.ulp <--> ulp;
}

