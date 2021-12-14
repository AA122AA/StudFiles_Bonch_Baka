//
// FC Virtual Port (VN_Port, VF_Port, VE_Port)
// - FC-2 Exchange and Sequence Management
// - NPIV Capability
//
simple FCVirtualPort
{
	parameters:
	    volatile string portId;//this port
	    volatile string lnkEndPortId;//Link End Port_ID (FC - adjacent port, FCoE - virtual link end port)
		//volatile int vpIndex;	//Virtual Port Index: 0 - base port (FLOGI), others - alias ports (FDISC)
		volatile string nportWwpn;
		volatile string nportWwnn;
		volatile string fpmaMac;
		volatile int portType;
	gates:
		inout px_port;
		inout bus;
		input from_vha @directIn;	//receive message directly from FCPVirtualHostAdapter via Bus
}

//
// FC Physical Port (PN_Port, PF_Port, PE_Port)
// - FC-2 Flow Control
//
simple FCPhysicalPort
{
	parameters:
	    volatile string portMode;	//"node", "fabric", "isl"
	    volatile string portType;	//U, N, NL, F, FL, E
	    volatile string wwpn;
	    volatile string wwnn;
	    volatile string lepMac;
	    volatile string lepWwn;
	    //volatile int instance;		//port index
		//volatile int bbCredit;
		//volatile int bbCount;
		//volatile int numVxPorts;
	gates:
		inout vx_port[];
		inout medium;
		input from_swctr @directIn;
}

//
// FC Medium
// - FC-1: 8B/10B transmission code
// - FC-0: Cable
//   Note: FC-0 is not part of FC-FS standard.
//
//simple FCMedium
//{
//    //@class(FCMedium);
//	//parameters:
//	//	volatile int numPxPorts;
//	gates:
//		inout px_port;	//only one physical port for FC
//		inout link;
//}

