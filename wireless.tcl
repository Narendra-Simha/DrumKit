#Example of Wireless Networks
# Step 1 intialize variables
# Step 2 Create a Simulator object
#Step 3 Create tracing and animation file
# 4 topography
# 5 GOD General OPerations Director
# 6 Create Nodes
# 7 Create channel (communication path)
# 8 position of the node(wireless nodes needs a location)
# 9 Any mobility codes (if the nodes are moving)
# 10 TCP, UDP Traffic
# run the simulations
 
 # ======================================================================
# Define options
# ======================================================================
set val(chan)           Channel/WirelessChannel    ;# channel type
set val(prop)           Propagation/TwoRayGround   ;# radio-propagation model
set val(netif)          Phy/WirelessPhy            ;# network interface type
set val(mac)            Mac/802_11                 ;# MAC type
set val(ifq)            Queue/DropTail/PriQueue    ;# interface queue type
set val(ll)             LL                         ;# link layer type
set val(ant)            Antenna/OmniAntenna        ;# antenna model
set val(ifqlen)         50                         ;# max packet in ifq
set val(nn)             6                          ;# number of mobilenodes
set val(rp)             AODV                       ;# routing protocol
set val(x)              500
set val(y)              500
# ======================================================================
# Main Program
# ======================================================================
#

#creation of simulator
set ns [new simulator]
#creation of Trace and namfile
set tracefile [open wireless.tr w]
$ns trace-all $tracefile

#creation of Network Animation file
set namfile [opne wireless.nam w]
$ns namtrace-all-wireless $namfile $val(x) $val(y)


#create topography
set topo =[new Topography]
$topo load_flatgrid $val(x) $val(y)

#GOD Creation General operations Director
create-god $val(nn)

set channel1 [new $val(chan)]
set channel2 [new $val(chan)]

#configure the node
$ns node-config -adhocRouting $val(rp) \
                -llType $val(ll) \
                -macType $val(mac) \
                -ifqType $val(mac) \
                -ifqLen $val(mac) \
                -macType $val(mac) \
                -macType $val(mac) \








