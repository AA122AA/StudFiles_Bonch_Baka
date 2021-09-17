На S3 были не верно настроены все ether-channels, 
я сделал так: 
no int port-channel 1
no int port-channel 4
no int port-channel 6
int range g0/1-2
channel-group 1 mode active 
no sh
int range f0/21-22
channel-group 4 mode active 
no sh
int range f0/23-24
channel-group 6 mode active 
no sh

На S4 тоже правил port-channel

И последнее на S2 транки настроил:
int port-channel 2
sw mode trunk
int port-channel 3
sw mode trunk
int port-channel 6
sw mode trunk