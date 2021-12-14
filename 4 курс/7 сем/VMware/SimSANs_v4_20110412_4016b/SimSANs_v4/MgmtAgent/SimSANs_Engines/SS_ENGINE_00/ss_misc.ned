//
// Port Medium shared by both FC and Ethernet
// FC  : 8B/10B transmission code
//       auto-negotiation data rate
//       auto-negotiation connection mode
// ETH : 64B/66B transmission code
//       auto-negotiation data rate
//       Ethernet MAC and Flow Control
// Note:
// - Connect FC with ETH won't get link up
// - The modeling of Port Medium here is pretty much high level, which
//   does not include detailed link negotiation such like port state machine,
//   ordered set, or primitives.
// - Ethernet MAC implicitly uses Duplex and 10G (or above) data rate.
// - SFP/SFP+ is always assumed as the physical medium for
//   2/4/8G Fibre Channel and 10G FCoE, either Fibre or Twinax.
//
simple PortMedium
{
	parameters:
		//volatile int numPxPorts;	//Physical port count, always one for FC
    	volatile string sfpType;	//SFP connector type
    	volatile string dataRate;	//Link Data Rate
    	volatile string topology;	//Topology or Connection Mode
		volatile bool txRdy;		//Transmitter ready
		volatile bool rxRdy;		//Receiver ready
	gates:
		//inout px_port[];	//mutiple logical physical ports may exist for FCoE
		inout px_port;	//to FC-1/2 (FC) or MAC (Ethernet)
		inout link;
		//inout fcoe; //for FCoE only   
}

//
// Virtual Port Bus Connection
//
simple VxPortBusRoute
{
    parameters:
    	volatile int numVxPorts;
	gates:
		inout vx_port[];
		inout bus;
}

//
// Virtual Host Adapter Bus Connection
//
simple VHABusRoute
{
	parameters:
		//volatile int numVHAs;
	gates:
		inout bus;
		inout vha[];
}

//
// Virtual Host Adapter ULP Connection
//
simple VHAULPRoute
{
	parameters:
		//volatile int numVHAs;
	gates:
		inout vha[];
		inout ulp;
}

//
// Adapter Bus
//
simple AdapterBus
{
	parameters:
		volatile int numPorts;
	gates:
		inout port[];
		inout driver[];
		input from_port @directIn;
		input from_drv @directIn;
}

//
// Adapter ULP Agent
//
simple AdapterULPAgent
{
	parameters:
		volatile int numPorts;
	gates:
		inout driver[];
		inout ulp;
		input from_drv @directIn;
}

//
// Matrix Port
//
simple MatrixPort
{
    gates:
        inout flink;	//fabric link (to/from host, switch, or device)
        inout mlink;	//matrix link (to/from another matrix port)
}

//
// FC Firmware Resource
//
simple FCFirmwareResource
{
    gates:
    	input evtg @directIn;	//receive direct message for event notification
}

//
// Virtualization Engine (application layer in storage)
//
simple VirtualEngine
{
    gates:
        inout frontend;
        inout backend;
}

//
// IO Generator (application layer)
//
simple IoGenerator
{
    gates:
        inout scsi;
}

//
// Entity Management Module
//
simple EntityMgmt
{
}

//
// Processor
//
simple Processor
{
    parameters:
        volatile int procCnt;
    gates:
        input dummy; //for sendDirect
}
