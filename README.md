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
```
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
```
##iperf
```
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
```

## with oneway

# normal 

```
loop time: 0.009904 seconds, used cpu time: 0.000174 seconds
769
loop time: 0.009987 seconds, used cpu time: 0.000150 seconds
770
loop time: 0.010029 seconds, used cpu time: 0.000191 seconds
771
loop time: 0.009915 seconds, used cpu time: 0.000262 seconds
772
loop time: 0.009944 seconds, used cpu time: 0.000167 seconds
773
loop time: 0.009998 seconds, used cpu time: 0.000137 seconds
774
loop time: 0.009949 seconds, used cpu time: 0.000132 seconds
775
loop time: 0.010003 seconds, used cpu time: 0.000220 seconds
776
loop time: 0.009979 seconds, used cpu time: 0.000160 seconds
777
loop time: 0.010007 seconds, used cpu time: 0.000214 seconds
778
loop time: 0.009924 seconds, used cpu time: 0.000187 seconds
779
loop time: 0.009998 seconds, used cpu time: 0.000198 seconds
780
loop time: 0.009965 seconds, used cpu time: 0.000246 seconds
781
loop time: 0.009898 seconds, used cpu time: 0.000241 seconds
782
loop time: 0.010028 seconds, used cpu time: 0.000189 seconds
783
loop time: 0.009942 seconds, used cpu time: 0.000248 seconds
784
loop time: 0.009884 seconds, used cpu time: 0.000198 seconds
785
loop time: 0.010050 seconds, used cpu time: 0.000273 seconds
786
loop time: 0.009961 seconds, used cpu time: 0.000213 seconds
787
loop time: 0.009919 seconds, used cpu time: 0.000264 seconds
788
loop time: 0.009960 seconds, used cpu time: 0.000183 seconds
789
loop time: 0.010020 seconds, used cpu time: 0.000265 seconds
790
loop time: 0.009884 seconds, used cpu time: 0.000248 seconds
791
loop time: 0.009996 seconds, used cpu time: 0.000181 seconds
792
loop time: 0.010000 seconds, used cpu time: 0.000166 seconds
793
loop time: 0.009949 seconds, used cpu time: 0.000198 seconds
794
loop time: 0.009974 seconds, used cpu time: 0.000147 seconds
795
loop time: 0.009961 seconds, used cpu time: 0.000253 seconds
796
loop time: 0.009952 seconds, used cpu time: 0.000193 seconds
797
loop time: 0.009995 seconds, used cpu time: 0.000195 seconds
798
loop time: 0.010024 seconds, used cpu time: 0.000145 seconds
799
loop time: 0.009906 seconds, used cpu time: 0.000245 seconds
800
loop time: 0.009963 seconds, used cpu time: 0.000234 seconds
801
loop time: 0.009961 seconds, used cpu time: 0.000248 seconds
802
loop time: 0.009963 seconds, used cpu time: 0.000043 seconds
loop time: 0.009988 seconds, used cpu time: 0.000131 seconds
803
loop time: 0.009962 seconds, used cpu time: 0.000360 seconds
805
loop time: 0.010029 seconds, used cpu time: 0.000211 seconds
806
loop time: 0.009920 seconds, used cpu time: 0.000181 seconds
807
loop time: 0.010008 seconds, used cpu time: 0.000199 seconds
808
```

### iperf

```
786
loop time: 0.009973 seconds, used cpu time: 0.000148 seconds
787
loop time: 0.009985 seconds, used cpu time: 0.000057 seconds
loop time: 0.010024 seconds, used cpu time: 0.000051 seconds
loop time: 0.009922 seconds, used cpu time: 0.000180 seconds
788
loop time: 0.009975 seconds, used cpu time: 0.000173 seconds
789
loop time: 0.009990 seconds, used cpu time: 0.000034 seconds
loop time: 0.009998 seconds, used cpu time: 0.000241 seconds
790
loop time: 0.009936 seconds, used cpu time: 0.000217 seconds
791
loop time: 0.009993 seconds, used cpu time: 0.000181 seconds
792
loop time: 0.009960 seconds, used cpu time: 0.000049 seconds
loop time: 0.009949 seconds, used cpu time: 0.000046 seconds
loop time: 0.009969 seconds, used cpu time: 0.000194 seconds
793
loop time: 0.009951 seconds, used cpu time: 0.000212 seconds
794
loop time: 0.009942 seconds, used cpu time: 0.000320 seconds
796
loop time: 0.009961 seconds, used cpu time: 0.000218 seconds
798
loop time: 0.009996 seconds, used cpu time: 0.000059 seconds
loop time: 0.009922 seconds, used cpu time: 0.000349 seconds
800
loop time: 0.009983 seconds, used cpu time: 0.000053 seconds
loop time: 0.009958 seconds, used cpu time: 0.000058 seconds
loop time: 0.009939 seconds, used cpu time: 0.000204 seconds
801
loop time: 0.009994 seconds, used cpu time: 0.000205 seconds
802
loop time: 0.009913 seconds, used cpu time: 0.000094 seconds
loop time: 0.009953 seconds, used cpu time: 0.000202 seconds
803
loop time: 0.009968 seconds, used cpu time: 0.000396 seconds
805
loop time: 0.009984 seconds, used cpu time: 0.000092 seconds
loop time: 0.009934 seconds, used cpu time: 0.000168 seconds
806
loop time: 0.009988 seconds, used cpu time: 0.000068 seconds
loop time: 0.009988 seconds, used cpu time: 0.000046 seconds
loop time: 0.009926 seconds, used cpu time: 0.000351 seconds
808
loop time: 0.009957 seconds, used cpu time: 0.000422 seconds
810
loop time: 0.009995 seconds, used cpu time: 0.000059 seconds
loop time: 0.009942 seconds, used cpu time: 0.000357 seconds
812
loop time: 0.009985 seconds, used cpu time: 0.000043 seconds
loop time: 0.009953 seconds, used cpu time: 0.000793 seconds
815
loop time: 0.010001 seconds, used cpu time: 0.000214 seconds
816
loop time: 0.009972 seconds, used cpu time: 0.000206 seconds
817
loop time: 0.009955 seconds, used cpu time: 0.000692 seconds
821
loop time: 0.010073 seconds, used cpu time: 0.000056 seconds
loop time: 0.009855 seconds, used cpu time: 0.000052 seconds
loop time: 0.009934 seconds, used cpu time: 0.000045 seconds
loop time: 0.009950 seconds, used cpu time: 0.000216 seconds
823
loop time: 0.009982 seconds, used cpu time: 0.000063 seconds
loop time: 0.009994 seconds, used cpu time: 0.000041 seconds
loop time: 0.009998 seconds, used cpu time: 0.000184 seconds
824
loop time: 0.009928 seconds, used cpu time: 0.000172 seconds
825
loop time: 0.009958 seconds, used cpu time: 0.000048 seconds
loop time: 0.009968 seconds, used cpu time: 0.000182 seconds
826
loop time: 0.009932 seconds, used cpu time: 0.000197 seconds
827
loop time: 0.009950 seconds, used cpu time: 0.000158 seconds
828
loop time: 0.009984 seconds, used cpu time: 0.000036 seconds
loop time: 0.009976 seconds, used cpu time: 0.000141 seconds
829
loop time: 0.009991 seconds, used cpu time: 0.000078 seconds
loop time: 0.009936 seconds, used cpu time: 0.000217 seconds
830
loop time: 0.009982 seconds, used cpu time: 0.000330 seconds
832
loop time: 0.009953 seconds, used cpu time: 0.000064 seconds
loop time: 0.009992 seconds, used cpu time: 0.000977 seconds
840
loop time: 0.009925 seconds, used cpu time: 0.000104 seconds
loop time: 0.009954 seconds, used cpu time: 0.000097 seconds
841
loop time: 0.009946 seconds, used cpu time: 0.000221 seconds
842
loop time: 0.009975 seconds, used cpu time: 0.000082 seconds
loop time: 0.009913 seconds, used cpu time: 0.000465 seconds
844
loop time: 0.009970 seconds, used cpu time: 0.000711 seconds
851
loop time: 0.009981 seconds, used cpu time: 0.000263 seconds
852
loop time: 0.009974 seconds, used cpu time: 0.000209 seconds
853
loop time: 0.009989 seconds, used cpu time: 0.000193 seconds
854
loop time: 0.009963 seconds, used cpu time: 0.000055 seconds
loop time: 0.009961 seconds, used cpu time: 0.000085 seconds
loop time: 0.010143 seconds, used cpu time: 0.000224 seconds
855
loop time: 0.009768 seconds, used cpu time: 0.000060 seconds
loop time: 0.009962 seconds, used cpu time: 0.000100 seconds
856

```

## dual receiver

here, two receivers are used on remote and one locally

### local oneway
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
```
