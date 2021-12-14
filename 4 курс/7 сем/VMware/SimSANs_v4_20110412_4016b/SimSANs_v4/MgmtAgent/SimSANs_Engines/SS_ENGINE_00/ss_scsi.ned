//
// SCSI Layer (both Initiator and Target)
//
simple ScsiLayer
{
    gates:
        inout app;
        inout adapter[];
        input from_drv @directIn;
}

