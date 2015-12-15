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



## receiver logs

### normal operation
30529902
loop time: 0.010012 seconds, used cpu time: 0.000104 seconds
30529903
loop time: 0.009978 seconds, used cpu time: 0.000167 seconds
30529904
loop time: 0.009947 seconds, used cpu time: 0.000153 seconds
30529905
loop time: 0.010030 seconds, used cpu time: 0.000147 seconds
30529906
loop time: 0.009917 seconds, used cpu time: 0.000123 seconds
30529907
loop time: 0.009996 seconds, used cpu time: 0.000233 seconds
30529908
loop time: 0.009982 seconds, used cpu time: 0.000246 seconds
30529909
loop time: 0.009953 seconds, used cpu time: 0.000232 seconds
30529910
loop time: 0.009977 seconds, used cpu time: 0.000256 seconds
30529911
loop time: 0.009941 seconds, used cpu time: 0.000223 seconds
30529912
loop time: 0.010022 seconds, used cpu time: 0.000265 seconds
30529913
loop time: 0.009919 seconds, used cpu time: 0.000324 seconds
30529914
loop time: 0.009966 seconds, used cpu time: 0.000262 seconds
30529915

##iperf

30529563
loop time: 0.009973 seconds, used cpu time: 0.000038 seconds
loop time: 0.010033 seconds, used cpu time: 0.000039 seconds
loop time: 0.009929 seconds, used cpu time: 0.000060 seconds
loop time: 0.009957 seconds, used cpu time: 0.000036 seconds
loop time: 0.009990 seconds, used cpu time: 0.000060 seconds
loop time: 0.009946 seconds, used cpu time: 0.000033 seconds
loop time: 0.009989 seconds, used cpu time: 0.000031 seconds
loop time: 0.010016 seconds, used cpu time: 0.000053 seconds
loop time: 0.009936 seconds, used cpu time: 0.000039 seconds
loop time: 0.009982 seconds, used cpu time: 0.000064 seconds
loop time: 0.010031 seconds, used cpu time: 0.000040 seconds
loop time: 0.009933 seconds, used cpu time: 0.000040 seconds
loop time: 0.009966 seconds, used cpu time: 0.000032 seconds
loop time: 0.009982 seconds, used cpu time: 0.000035 seconds
loop time: 0.009969 seconds, used cpu time: 0.000103 seconds
loop time: 0.009957 seconds, used cpu time: 0.000046 seconds
loop time: 0.009983 seconds, used cpu time: 0.000032 seconds
loop time: 0.009961 seconds, used cpu time: 0.000037 seconds
loop time: 0.009972 seconds, used cpu time: 0.000034 seconds
loop time: 0.010004 seconds, used cpu time: 0.000073 seconds
loop time: 0.009967 seconds, used cpu time: 0.000036 seconds
loop time: 0.009960 seconds, used cpu time: 0.000035 seconds
loop time: 0.009952 seconds, used cpu time: 0.000030 seconds
loop time: 0.009990 seconds, used cpu time: 0.000039 seconds
loop time: 0.009975 seconds, used cpu time: 0.000075 seconds
loop time: 0.009993 seconds, used cpu time: 0.000046 seconds
loop time: 0.009959 seconds, used cpu time: 0.000046 seconds
loop time: 0.009955 seconds, used cpu time: 0.000059 seconds
loop time: 0.009964 seconds, used cpu time: 0.000051 seconds
loop time: 0.009979 seconds, used cpu time: 0.000081 seconds
loop time: 0.009936 seconds, used cpu time: 0.000045 seconds
loop time: 0.009960 seconds, used cpu time: 0.000040 seconds
loop time: 0.010015 seconds, used cpu time: 0.000073 seconds
loop time: 0.009940 seconds, used cpu time: 0.000049 seconds
loop time: 0.009937 seconds, used cpu time: 0.000061 seconds
loop time: 0.010027 seconds, used cpu time: 0.000038 seconds
loop time: 0.009957 seconds, used cpu time: 0.000060 seconds
loop time: 0.009962 seconds, used cpu time: 0.000042 seconds
loop time: 0.009987 seconds, used cpu time: 0.000046 seconds
loop time: 0.009957 seconds, used cpu time: 0.000097 seconds
loop time: 0.009943 seconds, used cpu time: 0.000044 seconds
loop time: 0.009970 seconds, used cpu time: 0.000040 seconds
loop time: 0.010036 seconds, used cpu time: 0.000052 seconds
loop time: 0.009893 seconds, used cpu time: 0.000050 seconds
loop time: 0.009941 seconds, used cpu time: 0.000063 seconds
loop time: 0.010012 seconds, used cpu time: 0.000033 seconds
loop time: 0.009968 seconds, used cpu time: 0.000024 seconds
loop time: 0.009977 seconds, used cpu time: 0.000030 seconds
loop time: 0.010002 seconds, used cpu time: 0.000046 seconds
loop time: 0.009965 seconds, used cpu time: 0.000057 seconds
loop time: 0.009988 seconds, used cpu time: 0.000043 seconds
loop time: 0.009980 seconds, used cpu time: 0.000079 seconds
loop time: 0.009934 seconds, used cpu time: 0.000049 seconds
loop time: 0.010020 seconds, used cpu time: 0.000062 seconds
loop time: 0.009923 seconds, used cpu time: 0.000083 seconds
loop time: 0.009932 seconds, used cpu time: 0.000038 seconds
loop time: 0.010047 seconds, used cpu time: 0.000045 seconds
loop time: 0.009903 seconds, used cpu time: 0.000051 seconds
loop time: 0.009943 seconds, used cpu time: 0.000041 seconds
loop time: 0.010013 seconds, used cpu time: 0.000081 seconds
loop time: 0.010014 seconds, used cpu time: 0.000052 seconds
loop time: 0.009905 seconds, used cpu time: 0.000043 seconds
loop time: 0.009990 seconds, used cpu time: 0.000057 seconds
loop time: 0.009995 seconds, used cpu time: 0.000064 seconds
loop time: 0.009902 seconds, used cpu time: 0.000080 seconds
loop time: 0.010020 seconds, used cpu time: 0.000437 seconds
30529678



