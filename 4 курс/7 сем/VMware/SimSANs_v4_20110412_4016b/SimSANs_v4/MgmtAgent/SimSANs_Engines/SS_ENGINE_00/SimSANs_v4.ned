//
// Matrix Switch
//
module MatrixSwitch
{
    parameters:
        int maxNumPorts;
        int maxLong;
        int maxWide;
        @display("bgb=$maxWide,$maxLong");
    gates:
        inout g[maxNumPorts];
    submodules:
        m[maxNumPorts]: MatrixPort {
            @display("p=50,55,m,16,50,50;i=status/connect");
        }
        mxMgmt: EntityMgmt {
        }
    connections allowunconnected:
        for i=0..maxNumPorts-1 {
            m[i].flink <--> g[i];
        }

        //DO NOT DELETE THIS LINE: Matrix Switch Port Connectivity Start
        m[1536].mlink <--> m[0].mlink;        //sw[0][0][0] <--> host[0][0][0]
        m[1537].mlink <--> m[1].mlink;        //sw[0][0][1] <--> host[0][0][1]
        m[1538].mlink <--> m[4].mlink;        //sw[0][0][2] <--> host[0][1][0]
        m[1539].mlink <--> m[5].mlink;        //sw[0][0][3] <--> host[0][1][1]
        m[1540].mlink <--> m[1024].mlink;        //sw[0][0][4] <--> dev[0][0][0]
        m[1541].mlink <--> m[1025].mlink;        //sw[0][0][5] <--> dev[0][0][1]
        m[1600].mlink <--> m[16].mlink;        //sw[0][1][0] <--> host[1][0][0]
        m[1601].mlink <--> m[17].mlink;        //sw[0][1][1] <--> host[1][0][1]
        m[1602].mlink <--> m[1032].mlink;        //sw[0][1][2] <--> dev[0][1][0]
        m[1603].mlink <--> m[1033].mlink;        //sw[0][1][3] <--> dev[0][1][1]
        m[1604].mlink <--> m[1152].mlink;        //sw[0][1][4] <--> dev[1][0][0]
        m[2048].mlink <--> m[20].mlink;        //sw[1][0][0] <--> host[1][1][0]
        m[2078].mlink <--> m[21].mlink;        //sw[1][0][30] <--> host[1][1][1]
        m[2079].mlink <--> m[1034].mlink;        //sw[1][0][31] <--> dev[0][1][2]
        m[2128].mlink <--> m[1026].mlink;        //sw[1][1][16] <--> dev[0][0][2]
        //DO NOT DELETE THIS LINE: Matrix Switch Port Connectivity End
}

//
// Central Management Module
//
simple MgmtComm
{
    parameters:
        int mgmtAgentPort;
}

//
// SAN World
//
module SANWorld
{
    parameters:
        bool isRoot;
        bool terminationFlag;

        volatile int numHosts;
        volatile int numSwitches;
        volatile int numDevices;

		int maxNumAdapters;
		int maxNumPortsPerAdapter;
		int maxNumHosts;
		
		int maxNumFEIBs;
		int maxNumPortsPerFEIB;
		int maxNumDevices;
		
		int maxNumModules;
		int maxNumPortsPerModule;
		int maxNumSwitches;
		
        int maxNumMatrixPorts;
        @display("bgb=617,327");
    submodules:
        host[numHosts]: ClientHost {
			parameters:
				maxNumAdapters = maxNumAdapters;
				maxNumPortsPerAdapter = maxNumPortsPerAdapter;
            @display("i=old/drive1;p=53,63,column,50");
            //gates:
            //    fabric[];//outside link see below "host[x].fabric++
        }
        dev[numDevices]: StorageDevice {
			parameters:
				maxNumFEIBs = maxNumFEIBs;
				maxNumPortsPerFEIB = maxNumPortsPerFEIB;
            @display("i=old/router2;p=560,63,column,50");
            //gates:
            //    fabric[];//outside link see below "dev[x].fabric++
        }
        sw[numSwitches]: SANSwitch {
			parameters:
				maxNumModules = maxNumModules;
				maxNumPortsPerModule = maxNumPortsPerModule;
            @display("i=device/hub;p=130,248,row,50");
            //gates:
            //    fabric[];//outside link see below "sw[x].fabric++
        }
        matrix: MatrixSwitch {
            parameters:
                maxNumPorts = maxNumMatrixPorts;
                maxLong = (maxNumMatrixPorts/16+2)*50;
                maxWide = (16+1) * 50;
                @display("p=305,129");
        }
        mgmtComm: MgmtComm {
            parameters:
                @display("i=device/laptop;p=94,370");
        }
    connections allowunconnected:
		for i=0..numHosts-1, for j=0..maxNumAdapters*maxNumPortsPerAdapter-1 {
			host[i].fabric[j] <--> matrix.g[i*maxNumAdapters*maxNumPortsPerAdapter+j];
		}
		for i=0..numDevices-1, for j=0..maxNumFEIBs*maxNumPortsPerFEIB-1 {
			dev[i].fabric[j] <--> matrix.g[maxNumHosts*maxNumAdapters*maxNumPortsPerAdapter + i*maxNumFEIBs*maxNumPortsPerFEIB+j];
		}
		for i=0..numSwitches-1, for j=0..maxNumModules*maxNumPortsPerModule-1 {
			sw[i].fabric[j] <--> matrix.g[maxNumHosts*maxNumAdapters*maxNumPortsPerAdapter + maxNumDevices*maxNumFEIBs*maxNumPortsPerFEIB + i*maxNumModules*maxNumPortsPerModule+j];
		}
}

//
// Instantiates a SAN Network
//
network SimSANs extends SANWorld
{
    parameters:
        isRoot = true; 				//DO NOT remove this!!!
        terminationFlag = false;	//DO NOT remove this!!!
        @display("bgl=2");
}
