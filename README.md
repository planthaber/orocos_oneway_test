# orocos_onway_test

This is a simple cleint server test to check execution times for periodic tasks in congestes distributed systems

setup:

* run the receiver ruby script on one machine
 * ruby run_receiver.rb 
* run the sender script at another machine with the ip of the first one as paramater
 * ruby run_sender.rb 192.168.1.2

the tasks runs in periodic mode of 0.01 secons, it prints the loop and execution time for every update hook

when the tasks are running, the receiver prints the execution times and the execution count received

## testing

start the iperf program (bandwidth benchmark) using the same connection (sudo apt-get install iperf)

iperf -s on one maching (server)

iperf -c 192.168.1.1 on the second
