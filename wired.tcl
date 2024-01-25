#create a simulator object
set ns [new Simulator]

#create a trace file, this file is for loging purpose
set tracefile [open wired.tcl]
$ns trace-all $tracefile
#above line associates simulator output to tracefile

#create a animation information or nam file creation
set namfile [open wired.nam w]
$ns trace-all $namfile

#create nodes
set n0 [$ns node]
set n1 [$ns node]
set n2 [$ns node]
set n3 [$ns node]
set n4 [$ns node]
set n5 [$ns node]

#creation of link between nodes with Droptail

$ns duplex-link $n0 $n1 5Mb 2ms DropTail
$ns duplex-link $n2 $n1 10Mb 5ms DropTail
$ns duplex-link $n1 $n4 3Mb 10ms DropTail
$ns duplex-link $n4 $n3 100Mb 2ms DropTail
$ns duplex-link $n4 $n5 4Mb 10ms DropTail
#$ns duplex-link $n0 $n1 5Mb 2ms DropTail
#droptail means dropping the tail

#creation of agents  
#node 0 to node 3
set udp [new Agent/UDP]
#udp is variable u can keep any name
set null [new Agent/Null]
$ns attach-agent $n0 $udp
$ns attach-agent $n3 $null
$ns connect $udp $null
# connecting agents

#creation tcp agents
set tcp [new Agent/TCP] 
#TCP/RENO various tcp protocols are availble tcp/newreno
set sink [new Agent Agent/TCPSink]
$ns attach-agent $n2 $tcp
$ns attach-agent $n5 $sink
$ns connect $tcp $sink


#creation of applications CBR,FTP
#CBR - Constant Bit Rate (example mp3 files)
#FTP File Transfer Protocol (download file from a network)

set cbr [new Application/Traffic/CBR]
$cbr attach-agent $udp

set ftp [new Application/Traffic/FTP]
$ftp attach-agent $tcp


#start the traffic
$ns at 1.0 "$cbr start"
#above at what time you want to start the traffic
$ns at 2.0 "$ftp start"

$ns at 10.0 "finish"
#"following finish proc will run at 10sec"
proc finish{}{
    global ns tracefile namfile
    $ns flush-trace
    close $tracefile
    close $namfile
    exit 0
}
puts "Simulation is starting"
$ns run