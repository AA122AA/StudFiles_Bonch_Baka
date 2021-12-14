//
// FC/FCoE SAN Port
//
module SANPort
{
    parameters:
		volatile int vsanId;
		volatile int vlanId;
        @display("bgb=606,369");
    gates:
        inout link;
        inout bus;
    submodules:
        med: PortMedium {
            parameters:
                sfpType = "";
                dataRate = "";
                topology = "";
                txRdy = false;
                rxRdy = false;
                @display("p=86,170");
        }
        //px: FCPhysicalPort { bbCredit = 8; bbCount = 1; numVxPorts = 1; @display("p=205,170"); } - generated at run time for FC

        //fcoe: FCoEController { @display("p=86,70"); } - generated at run time for FCoE
        //lep: FCoEPhysicalPort - to be created at run time - generated at run time for FCoE

        //vx: FCVirtualPort - to be created at run time for both FC and FCoE
        fwrsc: FCFirmwareResource {
            @display("p=86,286;i=device/memory");
        }
        bus: VxPortBusRoute {
            parameters:
                numVxPorts = 0;
                @display("p=521,170");
        }
    connections allowunconnected:
        link <--> med.link;
        //link <--> fc1.link;
        //fc1.px_port <--> px.medium;
        //link <--> eth.link;
        //fcoe.medium <--> eth.fcoe;
        bus.bus <--> bus;
}

