# orocos_onway_test

This is a simple cleint server test to check execution times for periodic tasks in congestes distributed systems

setup:

* run the receiver ruby script on one machine
 * ruby run_receiver.rb 
*  run the local receiver script on the same machine as the sender (below)
 * ruby run_receiver_local.rb 
* run the sender script at another machine with the ip of the first one as paramater
 * ruby run_sender.rb 192.168.1.2

the tasks runs in periodic mode of 0.01 secons, it prints the loop and execution time for every update hook

when the tasks are running, the receivers are printing the execution times and the execution count received

## testing

start the iperf program (bandwidth benchmark) using the same connection (sudo apt-get install iperf)

iperf -s on one maching (server)

iperf -c 192.168.1.1 on the second



## receiver logs

here, two receivers are used on remote and one locally

### local normal 

As long ipers runs NO messages are received!

```
loop time: 0.010006 seconds, used cpu time: 0.000023 seconds
loop time: 0.009993 seconds, used cpu time: 0.000029 seconds
loop time: 0.009910 seconds, used cpu time: 0.000020 seconds
loop time: 0.009953 seconds, used cpu time: 0.000025 seconds
loop time: 0.010009 seconds, used cpu time: 0.000024 seconds
loop time: 0.009988 seconds, used cpu time: 0.000022 seconds
loop time: 0.009912 seconds, used cpu time: 0.000020 seconds
loop time: 0.009930 seconds, used cpu time: 0.000019 seconds
loop time: 0.010036 seconds, used cpu time: 0.000021 seconds
loop time: 0.009894 seconds, used cpu time: 0.000054 seconds
loop time: 0.009982 seconds, used cpu time: 0.000015 seconds
loop time: 0.010047 seconds, used cpu time: 0.000023 seconds
loop time: 0.009919 seconds, used cpu time: 0.000071 seconds
loop time: 0.009990 seconds, used cpu time: 0.000021 seconds
loop time: 0.009977 seconds, used cpu time: 0.000019 seconds
loop time: 0.010009 seconds, used cpu time: 0.000021 seconds
loop time: 0.009948 seconds, used cpu time: 0.000022 seconds
loop time: 0.009974 seconds, used cpu time: 0.000015 seconds
loop time: 0.009945 seconds, used cpu time: 0.000020 seconds
loop time: 0.009986 seconds, used cpu time: 0.000019 seconds
loop time: 0.009944 seconds, used cpu time: 0.000018 seconds
loop time: 0.009993 seconds, used cpu time: 0.000019 seconds
loop time: 0.009963 seconds, used cpu time: 0.000019 seconds
loop time: 0.009962 seconds, used cpu time: 0.000019 seconds
loop time: 0.009994 seconds, used cpu time: 0.000018 seconds
loop time: 0.009946 seconds, used cpu time: 0.000019 seconds
loop time: 0.009995 seconds, used cpu time: 0.000018 seconds
loop time: 0.009900 seconds, used cpu time: 0.000061 seconds
loop time: 0.010099 seconds, used cpu time: 0.000020 seconds
loop time: 0.009917 seconds, used cpu time: 0.000019 seconds
loop time: 0.010005 seconds, used cpu time: 0.000021 seconds
loop time: 0.009994 seconds, used cpu time: 0.000020 seconds
loop time: 0.009947 seconds, used cpu time: 0.000086 seconds
loop time: 0.009977 seconds, used cpu time: 0.000019 seconds
loop time: 0.010026 seconds, used cpu time: 0.000021 seconds
loop time: 0.009882 seconds, used cpu time: 0.000058 seconds
loop time: 0.009966 seconds, used cpu time: 0.000017 seconds
loop time: 0.009975 seconds, used cpu time: 0.000019 seconds
loop time: 0.009985 seconds, used cpu time: 0.000019 seconds
loop time: 0.009972 seconds, used cpu time: 0.000019 seconds
loop time: 0.009958 seconds, used cpu time: 0.000022 seconds
loop time: 0.009965 seconds, used cpu time: 0.000019 seconds
loop time: 0.009991 seconds, used cpu time: 0.000020 seconds
loop time: 0.009964 seconds, used cpu time: 0.000018 seconds
loop time: 0.009959 seconds, used cpu time: 0.000020 seconds
loop time: 0.009967 seconds, used cpu time: 0.000019 seconds
loop time: 0.009978 seconds, used cpu time: 0.000021 seconds
loop time: 0.009999 seconds, used cpu time: 0.000060 seconds
loop time: 0.009944 seconds, used cpu time: 0.000023 seconds
loop time: 0.009962 seconds, used cpu time: 0.000022 seconds
loop time: 0.009948 seconds, used cpu time: 0.000018 seconds
loop time: 0.009981 seconds, used cpu time: 0.000019 seconds
loop time: 0.009983 seconds, used cpu time: 0.000017 seconds
loop time: 0.009928 seconds, used cpu time: 0.000013 seconds
loop time: 0.009979 seconds, used cpu time: 0.000021 seconds
loop time: 0.010019 seconds, used cpu time: 0.000022 seconds
loop time: 0.009936 seconds, used cpu time: 0.000022 seconds
loop time: 0.009982 seconds, used cpu time: 0.000019 seconds
loop time: 0.009939 seconds, used cpu time: 0.000017 seconds
loop time: 0.009964 seconds, used cpu time: 0.000016 seconds
loop time: 0.010000 seconds, used cpu time: 0.000021 seconds
loop time: 0.009970 seconds, used cpu time: 0.000020 seconds
loop time: 0.010012 seconds, used cpu time: 0.000020 seconds
loop time: 0.009932 seconds, used cpu time: 0.000019 seconds
loop time: 0.009959 seconds, used cpu time: 0.000018 seconds
loop time: 0.009959 seconds, used cpu time: 0.000018 seconds
loop time: 0.009981 seconds, used cpu time: 0.000029 seconds
loop time: 0.009996 seconds, used cpu time: 0.000056 seconds

```


### local oneway with oneway option is runs normally
```
1686
loop time: 0.010008 seconds, used cpu time: 0.000133 seconds
1687
loop time: 0.009973 seconds, used cpu time: 0.000163 seconds
1688
loop time: 0.009919 seconds, used cpu time: 0.000151 seconds
1689
loop time: 0.009982 seconds, used cpu time: 0.000174 seconds
1690
loop time: 0.009979 seconds, used cpu time: 0.000126 seconds
1691
loop time: 0.009969 seconds, used cpu time: 0.000103 seconds
1692
loop time: 0.009977 seconds, used cpu time: 0.000072 seconds
1693
loop time: 0.009939 seconds, used cpu time: 0.000090 seconds
1694
loop time: 0.010001 seconds, used cpu time: 0.000122 seconds
1695
loop time: 0.009987 seconds, used cpu time: 0.000115 seconds
1696
loop time: 0.010014 seconds, used cpu time: 0.000177 seconds
1697
loop time: 0.009886 seconds, used cpu time: 0.000079 seconds
1698
loop time: 0.009980 seconds, used cpu time: 0.000060 seconds
1699
loop time: 0.010005 seconds, used cpu time: 0.000092 seconds
1700
loop time: 0.009969 seconds, used cpu time: 0.000083 seconds
1701
loop time: 0.009968 seconds, used cpu time: 0.000165 seconds
1702
loop time: 0.010009 seconds, used cpu time: 0.000175 seconds
1703
loop time: 0.010007 seconds, used cpu time: 0.000096 seconds
1704
loop time: 0.009966 seconds, used cpu time: 0.000182 seconds
1705
loop time: 0.009994 seconds, used cpu time: 0.000100 seconds
1706
loop time: 0.009922 seconds, used cpu time: 0.000279 seconds
1707
loop time: 0.009988 seconds, used cpu time: 0.000099 seconds
1708
loop time: 0.009979 seconds, used cpu time: 0.000108 seconds
1709
loop time: 0.009992 seconds, used cpu time: 0.000101 seconds
1710
loop time: 0.009978 seconds, used cpu time: 0.000127 seconds
1711
loop time: 0.009957 seconds, used cpu time: 0.000126 seconds
1712
loop time: 0.009981 seconds, used cpu time: 0.000072 seconds
1713
loop time: 0.009932 seconds, used cpu time: 0.000159 seconds
1714
loop time: 0.009926 seconds, used cpu time: 0.000127 seconds
1715
loop time: 0.009933 seconds, used cpu time: 0.000097 seconds
1716
loop time: 0.009970 seconds, used cpu time: 0.000124 seconds
1717
loop time: 0.010016 seconds, used cpu time: 0.000170 seconds
1718
loop time: 0.009938 seconds, used cpu time: 0.000091 seconds
1719
loop time: 0.010010 seconds, used cpu time: 0.000140 seconds
1720
loop time: 0.009935 seconds, used cpu time: 0.000121 seconds
1721
loop time: 0.009977 seconds, used cpu time: 0.000111 seconds
1722
loop time: 0.010014 seconds, used cpu time: 0.000098 seconds
1723

```

### remote oneway
```
loop time: 0.009931 seconds, used cpu time: 0.000156 seconds
loop time: 0.009920 seconds, used cpu time: 0.000360 seconds
499
loop time: 0.009986 seconds, used cpu time: 0.000294 seconds
500
loop time: 0.009951 seconds, used cpu time: 0.000219 seconds
501
loop time: 0.010024 seconds, used cpu time: 0.000060 seconds
loop time: 0.009965 seconds, used cpu time: 0.000413 seconds
503
loop time: 0.009881 seconds, used cpu time: 0.000151 seconds
504
loop time: 0.010000 seconds, used cpu time: 0.000039 seconds
loop time: 0.010001 seconds, used cpu time: 0.000254 seconds
506
loop time: 0.009932 seconds, used cpu time: 0.000037 seconds
loop time: 0.010039 seconds, used cpu time: 0.000275 seconds
508
loop time: 0.009932 seconds, used cpu time: 0.000264 seconds
509
loop time: 0.009915 seconds, used cpu time: 0.000190 seconds
510
loop time: 0.009993 seconds, used cpu time: 0.000065 seconds
loop time: 0.009980 seconds, used cpu time: 0.000384 seconds
512
loop time: 0.009960 seconds, used cpu time: 0.000064 seconds
loop time: 0.009992 seconds, used cpu time: 0.000208 seconds
513
loop time: 0.009980 seconds, used cpu time: 0.000347 seconds
515

```


