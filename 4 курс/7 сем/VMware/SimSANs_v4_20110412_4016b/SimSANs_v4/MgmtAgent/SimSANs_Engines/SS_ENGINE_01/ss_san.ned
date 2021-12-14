//
// FC or FCoE Client Host
//
module ClientHost
{
    parameters:
        volatile int numAdapters;
        volatile int numPortsPerAdapter;
		int cpuCnt;
        int maxNumAdapters;
        int maxNumPortsPerAdapter;
        @display("bgb=558,462;bgl=2");
    gates:
        //inout fabric[numAdapters*numPortsPerAdapter];
        inout fabric[maxNumAdapters*maxNumPortsPerAdapter];
    submodules:
        adapter[numAdapters]: SANAdapter {
            parameters:
                drvCpuCnt = 0;	//drvCpu share with host cpu
                drvCpuActive = false;
                numPorts = numPortsPerAdapter;
                maxNumPorts = maxNumPortsPerAdapter;
                @display("p=86,93,column,75;i=block/ifcard");
            //gates:
            //    link[];//numPortsPerAdapter
        }
        scsiInit: ScsiLayer {
            @display("p=272,215");
            gates:
                adapter[numAdapters];
        }
        ioGen: IoGenerator {
            parameters:
                @display("p=469,215;i=block/source");
        }
        cpu: Processor {
            parameters:
                procCnt = cpuCnt;
                @display("p=88,328;i=device/cpu");
        }
        hostMgmt: EntityMgmt {
        }
    connections allowunconnected:
        //for i=0..numAdapters-1, for j=0..numPortsPerAdapter-1 {
        //    fabric[i*numPortsPerAdapter+j] <--> adapter[i].link[j];//or adapter[i].link++
        //}
        for i=0..numAdapters-1, for j=0..maxNumPortsPerAdapter-1 {
            fabric[i*maxNumPortsPerAdapter+j] <--> adapter[i].link[j];//or adapter[i].link++
        }

		//for i=0..numAdapters-1
		//	adapter[i].ulp <--> scsiLayer.adapter[i];
		//scsiLayer.app <--> ioGen.scsi;
        for i=0..numAdapters-1 {
            adapter[i].ulp <--> scsiInit.adapter[i];
        }
        
        scsiInit.app <--> ioGen.scsi;
}

//
// FC or FCoE Switch (Support VSAN and VLAN)
//
module SANSwitch
{
    parameters:
        volatile int numModules;
        volatile int numPortsPerModule;
        int maxNumModules;
        int maxNumPortsPerModule;
        //volatile int domainId - use VSAN
        @display("bgb=409,476");
    gates:
        //inout fabric[numModules*numPortsPerModule];
        inout fabric[maxNumModules*maxNumPortsPerModule];
    submodules:
        linecard[numModules]: SANAdapter {
            parameters:
                drvCpuCnt = 0;
                drvCpuActive = false;
                numPorts = numPortsPerModule;
                maxNumPorts = maxNumPortsPerModule;
                @display("p=60,72,column,50;i=old/ipc");
            //gates:
            //    link[];//numPortsPerModule
        }
        switchCenter: SwitchCenter {
            parameters:
                @display("p=322,288;i=block/broadcast");
            gates:
                linecard[numModules];
        }
        swMgmt: EntityMgmt {
        }
    connections allowunconnected:
        //for i=0..numModules-1, for j=0..numPortsPerModule-1 {
        //   fabric[i*numPortsPerModule+j] <--> linecard[i].link[j];//or linecard[i].link++
        //}
        for i=0..numModules-1, for j=0..maxNumPortsPerModule-1 {
            fabric[i*maxNumPortsPerModule+j] <--> linecard[i].link[j];//or linecard[i].link++
        }

        for i=0..numModules-1 {
            linecard[i].ulp <--> switchCenter.linecard[i];
        }		//for i=0..numAdapters-1
		//	adapter[i].ulp <--> scsiLayer.adapter[i];
		//scsiLayer.app <--> ioGen.scsi;
}

//
// FC or FCoE Storage Device
//
module StorageDevice
{
    parameters:
        volatile int numFEIBs;
        volatile int numPortsPerFEIB;
		int arrayCpuCnt;
        int maxNumFEIBs;	
        int maxNumPortsPerFEIB;
        @display("bgb=558,462");
    gates:
        //inout fabric[numFEIBs*numPortsPerFEIB];
        inout fabric[maxNumFEIBs*maxNumPortsPerFEIB];
    submodules:
        feib[numFEIBs]: SANAdapter {
            parameters:
                //drvCpuCnt = from main.ini
                drvCpuActive = true;
                numPorts = numPortsPerFEIB;
                maxNumPorts = maxNumPortsPerFEIB;
                @display("p=77,97,column,75;i=block/ifcard");
            //gates:
            //    link[];//numPortsPerFEIB
        }
        scsiTgt: ScsiLayer {
            @display("p=272,215");
            gates:
                adapter[numFEIBs];
        }
        virtualEngine: VirtualEngine {
            @display("p=479,215");
        }
        cpu: Processor {
            parameters:
                procCnt = arrayCpuCnt;
                @display("p=528,336;i=device/cpu");
        }
        devMgmt: EntityMgmt {
        }
    connections allowunconnected:
        //for i=0..numFEIBs-1, for j=0..numPortsPerFEIB-1 {
        //    fabric[i*numPortsPerFEIB+j] <--> feib[i].link[j];//or feib[i].link++
        //}
        for i=0..numFEIBs-1, for j=0..maxNumPortsPerFEIB-1 {
            fabric[i*maxNumPortsPerFEIB+j] <--> feib[i].link[j];//or feib[i].link++
        }

        for i=0..numFEIBs-1 {
            feib[i].ulp <--> scsiTgt.adapter[i];
        }

        scsiTgt.app <--> virtualEngine.frontend;
}

