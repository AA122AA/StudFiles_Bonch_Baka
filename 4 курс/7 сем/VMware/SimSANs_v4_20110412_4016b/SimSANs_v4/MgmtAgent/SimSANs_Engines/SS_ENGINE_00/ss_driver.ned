//
// Virtual Host Adapter (Driver)
// - FC-GS, FC-LS, FCP, FCSW
// - One for each FCVirtualPort
//
simple FCVirtualHostAdapter
{
	parameters:
		volatile int pxPortIndex;	//physical port instance 
		volatile int vxPortIndex;	//virtual port index
	gates:
		inout bus;
		inout ulp;
		input from_vxport @directIn;	//receive messages directly from FCVirtualPort via Bus
		input from_scsi @directIn;		//receive messages directly from SCSI
}

//
// FC SAN Port Driver
//
module FCPortDriver
{
    parameters:

        @display("bgb=606,369");
    gates:
        inout bus;
        inout ulp;
    submodules:
        bus: VHABusRoute {
            @display("p=132,181");
        }
        //vha: FCVirtualHostAdapter - to be generated at run time
        ulp: VHAULPRoute {
            @display("p=480,181");
        }
    connections allowunconnected:
        bus.bus <--> bus;
        ulp.ulp <--> ulp;
}

