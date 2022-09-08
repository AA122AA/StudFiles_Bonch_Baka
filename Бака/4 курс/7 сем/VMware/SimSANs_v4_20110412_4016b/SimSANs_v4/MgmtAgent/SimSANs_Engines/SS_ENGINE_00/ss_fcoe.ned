//
// FCoE Logical Physical Port
// - LEP: Link End Point
// - FC<->ETH encap/decap happens here
//
//simple FCoELEP
//{
//	parameters:
//		//volatile int numVxPorts;
//	gates:
//		inout vx_port[];
//		inout mac;
//}

//
// Ethernet
// - MAC: Flow Control 
// - Cable
//
simple EthernetMAC
{
    //@class(EthernetMedium);
	parameters:
		//volatile int numPxPorts;
	gates:
		inout lep[];	//mutiple logical physical ports may exist for FCoE
		inout medium;
		inout fcoe;
}

//
// FCoE Controller
// - Discovery, FLOGI, FDISC
//
//simple FCoEController
//{
//	gates:
//		inout mac;
//}


