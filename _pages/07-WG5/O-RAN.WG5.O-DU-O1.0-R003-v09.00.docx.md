---
title: O-RAN.WG5.O-DU-O1.0-R003-v09.00.docx.md
author: O-RAN Alliance, WG5
layout: post
---

- View in [GitHub Mode]({{site.github_page_url}}/O-RAN.WG5.O-DU-O1.0-R003-v09.00.docx.md).
- Go back to [Table of Contents]({{site.baseurl}}/).
- Download the [Original Document]({{site.download_url}}/O-RAN.WG5.O-DU-O1.0-R003-v09.00.docx).

---

* toc
{:toc}

---

![]({{site.baseurl}}/assets/images/4db4d6b959d3.png)O-RAN.WG5.O-DU-O1.0-R003-v09.00

*Technical Specification*

1

**O-RAN Work Group 5 (Open F1/W1/E1/X2/Xn interface Workgroup)**

**O1 Interface specification for O-DU**

Copyright (C) 2024 by O-RAN ALLIANCE e.V.

The copying or incorporation into any other work of part or all of the material available in this specification in any form without the prior written permission of O-RAN ALLIANCE e.V. is prohibited, save that you may print or download extracts of the material of this specification for your personal use, or copy the material of this specification for the purpose of sending to individual third parties for their information provided that you acknowledge O-RAN ALLIANCE as the source of the material and that you inform the third party that these conditions apply to them and that they must comply with them.

O-RAN ALLIANCE e.V.

Buschkauler Weg 27, 53347 Alfter, Germany Register of Associations, Bonn VR 11238 VAT ID DE321720189

(C) 2024 O-RAN ALLIANCE e.V. All Rights Reserved

1

# 1 Contents

##### Contents 2

##### List of Figures 8

##### List of Tables 8

##### Foreword 8

##### Modal verbs terminology 9

##### 1 Scope 10

##### 2 References 10

1. 2.1 Normative references 10
2. 2.2 Informative references 11

##### 3 Definitions of terms, symbols and abbreviations 11

1. 3.1 Terms 11
2. 3.2 Symbols 13
3. 3.3 Abbreviations 13
4. 3.4 Conventions 14
5. 3.5 Revision and compatibility handling 14

##### 4 High Level Description 15

1. 4.1 Top level functional description, terminology, including hybrid, hierarchical 15
2. 4.1.1 Architecture for O-RAN WG5 functional split 15
3. 4.1.2 O1 interface for O-DU architecture model 15
4. 4.1.3 Transport Network 15
5. 4.2 Interfaces 15

##### 5 PNF Startup and Registration Management 16

1. 5.1 Introduction 16
2. 5.2 PNF Plug-n-Play 16
3. 5.3 PNF Registration 16
4. 5.4 NETCONF Connection Establishment 16
5. 5.4.1 NETCONF Authentication 16
6. 5.5 NETCONF Access Control 16
7. 5.6 NETCONF Protocol Aspects 16
8. 5.6.1 Introduction 16
9. 5.6.2 NETCONF Capability Discovery 16
10. 5.6.3 NETCONF Session Termination 17
11. 5.6.4 NETCONF Session Establishment 17

##### 6 Heartbeat Management Services 17

1. 6.1 Heartbeat Notification 17
2. 6.2 Heartbeat Control 17

##### 7 PNF Software Management 17

1. 7.1 Introduction 17
2. 7.2 O-DU Software Management 17
3. 7.3 O-RU Software Management 17
4. 7.3.1 Hierarchical Model 17
5. 7.3.2 Hybrid Model 22

##### 8 Performance Assurance Management 22

1. 8.1 Performance Data File Reporting 22
2. 8.1.1 PM File Content 22
3. 8.1.2 PM File Naming 22
4. 8.1.3 PM File XML Format 22
5. 8.2 Performance Data Streaming 22
6. 8.3 Performance Assurance Control 22
7. 8.3.1 Performance Assurance Control for O-RU performance counters 23

##### 9 Fault Supervision Management 23

1. 9.1 General 23
2. 9.2 Definition of the Operations for Fault Events 24
3. 9.3 Definition of Notifications as Fault Events 24
4. 9.4 Message Format for Fault Events 24
5. 9.5 O-RU Alarms Management by O-DU in Hierarchical Model 24

##### 10 File Management 25

1. 10.1 Introduction 25
2. 10.2 File Structure 26
3. 10.3 Notification notifyFileReady 26
4. 10.4 File Management Operation: listAvailableFiles 27
5. 10.5 File Management Operation: transferFile 27
6. 10.6 File Management Operation: downloadFile 27

##### 11 Synchronization Aspects 27

1. 11.1 Introduction 27
2. 11.2 Synchronization 28
3. 11.2.1 Synchronization status 28
4. 11.2.2 Synchronization capabilities 29
5. 11.2.3 Synchronization configuration 29
6. 11.2.4 PTP configuration 29
7. 11.2.5 PTP status 30
8. 11.2.6 SyncE configuration 30
9. 11.2.7 SyncE status 31
10. 11.2.8 GNSS Configuration 31
11. 11.2.9 GNSS Status 31
12. 11.3 Synchronization master 32
13. 11.3.1 Introduction 32
14. 11.3.2 Synchronization master capabilities 32
15. 11.3.3 Synchronization master configuration 33
16. 11.3.4 Master PTP status 33
17. 11.4 O-DU and O-RU synchronization relation with cell and carrier activation / in-activation 33
18. 11.4.1 Cell and carrier activation 33
19. 11.4.2 Cell and carrier in-activation 34

##### 12 Provisioning Management 34

1. 12.1 Introduction 34
2. 12.2 Configuration for Hierarchical Model 34
3. 12.2.1 Configuration Step 34
4. 12.2.2 Aggregation model for configuration to O-RU via SMO 35
5. 12.3 Configuration for Hybrid model 37
6. 12.4 Cell Activation 37
7. 12.4.1 Hierarchical Model 37
8. 12.4.2 Hybrid Model 37
9. 12.5 Notification aspect in hierarchical model 38
10. 12.5.1 Introduction 38
11. 12.5.2 Subscribing for O-RU notification from SMO 38
12. 12.5.3 Forwarding the notification from O-RU via O-DU 38

##### 13 Fronthaul Delay Management Support 40

##### 14 Trace Management Services 44

1. 14.1 Introduction 44
2. 14.2 Call Trace 44
3. 14.3 Minimization of Drive Testing (MDT) 44
4. 14.4 Radio Link Failure (RLF) 44
5. 14.5 RRC Connection Establishment Failure (RCEF) 44
6. 14.6 Trace Control 44
7. 14.7 Streaming Trace 44

##### 15 Shared O-RU 44

1. 15.1 Introduction 44
2. 15.2 Single Operator Shared O-RU 45
3. 15.2.1 O-DU(s) roles 45
4. 15.2.2 Configuring O-RU 45
5. 15.2.3 Supervision Monitoring per O-DU 46
6. 15.2.4 NETCONF call home 46
7. 15.3 Multi Operator Shared O-RU 46
8. 15.3.1 O-DU(s) roles 46
9. 15.3.2 Configuring O-RU general OAM related configuration 47
10. 15.3.3 Managing O-RU general OAM related functions 47
11. 15.3.4 NETCONF server user account provisioning for shared resource operators 47
12. 15.3.5 NETCONF call home 47
13. 15.3.6 Enhanced sro-id based NETCONF access control 48
14. 15.3.7 Supervision Monitoring per O-DU 48
15. 15.3.8 Processing element configuration 48
16. 15.3.9 Carrier Partitioning and Configuration in Shared O-RU 48
17. 15.3.10 Notification of configuration updates 48
18. 15.3.11 Shared O-RU Reset Co-ordination 49
19. 15.3.12 Locked administrative state 49
20. 15.3.13 Antenna calibration 49
21. 15.3.14 Shared O-RU with antenna line devices 49
22. 15.3.15 Shared O-RU operation in combination with shared cell 49
23. 15.4 Content of Fronthaul M-plane ODU ID 50
24. 15.5 Content of Fronthaul M-plane SRO ID 50

##### 16 Information Model definition 50

1. 16.1 Imported and associated information entities 50
2. 16.1.1 Imported information entities and local labels 50
3. 16.1.2 Associated information entities and local labels 50
4. 16.2 Class diagrams 50
5. 16.2.1 Relationships 50
6. 16.2.2 Inheritance 51
7. 16.3 Class definitions 52
8. 16.3.1 SharedOruConfiguration <<IOC>> 52
9. 16.3.2 SecondaryODuInfo <<dataType>> 53
10. 16.3.3 CallHomeClientInfo <<dataType>> 53
11. 16.3.4 NESPolicy <<IOC>> 54
12. 16.4 Attribute definitions 55

##### 17 O-DU behavior for 3GPP conformance testing 57

1. 17.1 Introduction 57
2. 17.2 O-DU behavior for O-RU uplink evaluation 57
3. 17.3 O-DU behavior for O-RU downlink evaluation 57

##### Annex A (informative): Counter definition 58

1. A.1 NR F1 Interface performance counters 58
2. A.1.1 UL PDCP PDUs transmitted via F1-U UL GTP-U tunnel 58
3. A.1.2 UL PDCP PDU volume transmitted via F1-U UL GTP-U tunnel 58
4. A.1.3 Maximum UL PDCP PDU volume transmitted via F1-U UL GTP-U tunnel 59
5. A.1.4 Minimum UL PDCP PDU volume transmitted via F1-U UL GTP-U tunnel 59
6. A.1.5 DL PDCP PDUs received via F1-U DL GTP-U tunnel 60
7. A.1.6 DL PDCP PDU volume received via F1-U DL GTP-U tunnel 60
8. A.1.7 Maximum DL PDCP PDU volume received via F1-U DL GTP-U tunnel 61
9. A.1.8 Minimum DL PDCP PDU volume received via F1-U DL GTP-U tunnel 61
10. A.1.9 Transmitted F1-C messages 62
11. A.1.10 Received F1-C messages 62
12. A.1.11 DL F1-U packets discarded due to NR U-Plane protocol error 62
13. A.1.12 DL F1-U packet loss rate 63
14. A.1.13 DL Packet Drop Rate in gNB-DU 63
15. A.1.14 UL PDCP PDU volume transmitted via F1-U UL GTP-U tunnel 64
16. A.1.15 DL PDCP PDU volume received via F1-U DL GTP-U tunnel 65
17. A.2 NR RLC performance counters 65
18. A.2.1 Received UL RLC PDUs 65
19. A.2.2 Received UL RLC PDU volume 66
20. A.2.3 Request for UL RLC PDUs retransmission 66
21. A.2.4 Transmitted DL RLC PDUs 67
22. A.2.5 Transmitted DL RLC PDU volume 67
23. A.2.6 Retransmitted DL RLC PDUs 67
24. A.2.7 Retransmitted DL RLC PDU volume 68
25. A.2.8 UL RLC PDUs discarded due to bearer release 68
26. A.2.9 UL RLC PDU volume discarded due to bearer release 69
27. A.2.10 UL RLC PDUs discarded due to RLC re-establishment 69
28. A.2.11 UL RLC PDU volume discarded due to RLC re-establishment 70
29. A.2.12 UL RLC PDUs discarded due to other causes 70
30. A.2.13 UL RLC PDU volume discarded due to other causes 71
31. A.2.14 DL RLC PDUs discarded due to bearer release 71
32. A.2.15 DL RLC PDU volume discarded due to bearer release 71
33. A.2.16 DL RLC PDUs discarded due to RLC re-establishment 72
34. A.2.17 DL RLC PDU volume discarded due to RLC re-establishment 72
35. A.2.18 DL RLC PDUs discarded due to full buffer 73
36. A.2.19 DL RLC PDU volume discarded due to full buffer 73
37. A.2.20 The number of exceeding maximum RLC retransmissions 74
38. A.2.21 Average delay DL in gNB-DU 74
39. A.2.22 IP Latency DL in gNB-DU 75
40. A.2.23 Received paging records 75
41. A.2.24 Discarded paging records 76
42. A.3 NR MAC performance counters 76
43. A.3.1 Received UL MAC PDU volume 76
44. A.3.2 Transmitted DL MAC PDU volume 76
45. A.3.3 Average delay DL air-interface 77
46. A.4 NR UL HARQ performance counters 78
47. A.4.1 Distribution of PUSCH per MCS (initial transmission) 78
48. A.4.2 Distribution of PUSCH per MCS (initial transmission/CRC OK) 78
49. A.4.3 Distribution of PUSCH per MCS (any/CRC OK) 79
50. A.4.4 Distribution of PUSCH per MCS (exceeding HARQ retransmission) 80
51. A.4.5 Distribution of PUSCH per MCS (MU-MIMO/initial transmission) 80
52. A.4.6 Distribution of PUSCH per MCS (MU-MIMO/initial transmission/ACK) 81
53. A.5 NR DL HARQ performance counters 82
54. A.5.1 Distribution of PDSCH per MCS (initial transmission) 82
55. A.5.2 Distribution of PDSCH per MCS (initial transmission/ACK) 82
56. A.5.3 Distribution of PDSCH per MCS (any/ACK) 83
57. A.5.4 Distribution of PDSCH per MCS (exceeding HARQ retransmission) 84
58. A.5.5 Distribution of PDSCH per MCS (MU-MIMO/initial transmission) 84
59. A.5.6 Distribution of PDSCH per MCS (MU-MIMO/initial transmission/ACK) 85
60. A.6 NR UL Signal Quality Level performance counters 85
61. A.6.1 Distribution of PUSCH per MCS (Rank1) 85
62. A.6.2 Distribution of PUSCH per MCS (Rank2) 86
63. A.6.3 Distribution of PUSCH per SSB (Rank1) 87
64. A.6.4 Distribution of PUSCH per SSB (Rank2) 87
65. A.6.5 PUSCH received power 88
66. A.6.6 PUSCH RSSI 89
67. A.6.7 PUSCH SINR 89
68. A.6.8 PUCCH RSSI 90
69. A.6.9 PUCCH SINR 91
70. A.6.10 PRACH preamble correlation value 92
71. A.6.11 RSSI of PRACH transmission occasion 93
72. A.6.12 Distribution of path loss for FR1 93
73. A.6.13 Path loss for FR2 94
74. A.6.14 Detection of UL out-of-sync 95
75. A.7 NR DL Signal Quality Level performance counters 95
76. A.7.1 Distribution of PDSCH per MCS (Rank1) 95
77. A.7.2 Distribution of PDSCH per MCS (Rank2) 96
78. A.7.3 Distribution of PDSCH per MCS (Rank3) 97
79. A.7.4 Distribution of PDSCH per MCS (Rank4) 97
80. A.7.5 Distribution of PDSCH per SSB (Rank1) 98
81. A.7.6 Distribution of PDSCH per SSB (Rank2) 98
82. A.7.7 Distribution of PDSCH per SSB (Rank3) 99
83. A.7.8 Distribution of PDSCH per SSB (Rank4) 99
84. A.7.9 Distribution of Wideband CQI for FR1 99
85. A.7.10 Wideband CQI for FR2 100
86. A.7.11 PDCCH transmission power 101
87. A.8 NR Beamforming performance counters 102
88. A.8.1 Distribution of UEs per beam index 102
89. A.8.2 Best and Second Best Beam distribution 103
90. A.8.3 UE reported differential L1-RSRP of second best beam 103
91. A.9 NR RACH Usage performance counters 104
92. A.9.1 Received preambles in group A 104
93. A.9.2 The number of received dedicated preamble 104
94. A.9.3 Transmitted RARs for preamble in group A 104
95. A.9.4 Transmitted RARs for dedicated preamble 105
96. A.9.5 Failures at assignment of dedicated preamble 105
97. A.9.6 Occasions for dedicated preamble reception 106
98. A.9.7 Failures at assignment of a dedicated preamble for PDCCH order RA (UL out-of-sync) 106
99. A.10 NR Timing Advance performance counters 107
100. A.10.1 Distribution of NTA value of RAR message 107
101. A.11 NR Cell Utilization performance counters (Type A) 108
102. A.11.1 Slots at which PDCCH resource shortage occurred 108
103. A.11.2 Canceled DCI due to PDCCH resource shortage 108
104. A.11.3 Maximum UEs buffering UL/DL data 108
105. A.11.4 Maximum UEs buffering UL data 109
106. A.11.5 Maximum UEs buffering DL data 109
107. A.11.6 Multiplexed transmissions of PUSCH 110
108. A.11.7 Multiplexed receptions of PDSCH 110
109. A.11.8 Maximum DRX inactive UEs 111
110. A.11.9 Maximum DRX active UEs 111
111. A.11.10 Distribution of trafficInactivityTimer 112
112. A.11.11 Slots in which scheduler assigned as mini slot 112
113. A.11.12 Mini slots in which PUSCH was received 112
114. A.11.13 UEs in the cell using this cell as PSCell or having activated SCell in DL 113
115. A.11.14 UEs in the cell using this cell as PSCell or having activated SCell in UL 113
116. A.11.15 Distribution of PSCell UEs with X activated SCells in UL 114
117. A.11.16 Distribution of PSCell UEs with X activated SCells in DL 114
118. A.11.17 Maximum amount of PSCell UEs (UL) 115
119. A.11.18 Minimum amount of PSCell UEs (UL) 115
120. A.11.19 Maximum amount of PSCell UEs (DL) 116
121. A.11.20 Minimum amount of PSCell UEs (DL) 116
122. A.11.21 Activation/Deactivation MAC CE (SCell Active) 117
123. A.11.22 Activation/Deactivation MAC CE (SCell Deactive) 117
124. A.11.23 Distribution of DL Total PRB Usage 117
125. A.11.24 Distribution of UL Total PRB Usage 118
126. A.11.25 Average DL Cell throughput 119
127. A.11.26 Average UL Cell throughput 120
128. A.11.27 Average DL Beam throughput 120
129. A.11.28 Average UL Beam throughput 121
130. A.11.29 Average DL active DRB 121
131. A.11.30 Maximum DL active DRB 122
132. A.11.31 Mean DL PRB used for data traffic 122
133. A.11.32 Mean UL PRB used for data traffic 123
134. A.11.33 Distribution of UL UE throughput in gNB 123
135. A.11.34 Distribution of DL UE throughput in gNB 125
136. A.11.35 Distribution of DL packet drop rate 126
137. A.11.36 PDCCH for BWP switching 127
138. A.11.37 Distribution of Activated BWP ID 128
139. A.11.38 Non-linear Scale Distribution of UL UE throughput in gNB 128
140. A.11.39 Non-linear Scale Distribution of DL UE throughput in gNB 129
141. A.12 NR Cell Utilization performance counters (Type B) 130
142. A.12.1 PUSCH slots 130
143. A.12.2 PDSCH slots 131
144. A.12.3 PDCCH slots 131
145. A.12.4 CCE utilization rate 131
146. A.12.5 UEs buffering UL/DL data 132
147. A.12.6 UEs buffering UL data 132
148. A.12.7 UEs buffering DL data 133
149. A.12.8 DRX inactive UEs 133
150. A.12.9 DRX active UEs 133
151. A.12.10 PDSCH slot for paging 134
152. A.13 O-RU Performance counters measured at O-DU 134
153. A.13.1 Uplink data and control frames received in total 134
154. A.13.2 Uplink data frames received on Time 135
155. A.13.3 Uplink data frames received too early 135
156. A.13.4 Uplink data frames received too late 135
157. A.13.5 Uplink control frames received on Time 136
158. A.13.6 Uplink control frames received too early 136
159. A.13.7 Uplink control frames received too late 136
160. A.13.8 Uplink data frames with detecting sequence identifier error 137
161. A.13.9 Uplink control frames with detecting sequence identifier error 137
162. A.13.10 Uplink frames with corrupt contents 138
163. A.13.11 Uplink frames dropped and discarded. 138
164. A.13.12 Downlink control and data frames transmitted 138
165. A.13.13 Downlink control frames transmitted to O-RU in total at O-DU 139
166. A.14 O-RU Performance counters measured at O-RU 139

##### Annex B (informative): Optional Multi-Vendor Functionality 139

1. B.1: Optional Namespace Exposed Using O-RAN WG5 Models 139
2. B.2: Optional Namespace Exposed Using O-RAN WG4 Models 140
3. B.3: Optional YANG Features Exposed Using O-RAN WG5 Models 140
4. B.4: Optional YANG Features Exposed Using O-RAN WG4 Models 140
5. B.5: Optional YANG Features Exposed Using Common Models 141
6. B.6: Optional Capabilities Exposed Using O-RAN WG5 Models 142
7. B.7: Optional Capabilities Exposed Using O-RAN WG4 Models 142
8. B.8: Optional Capabilities Exposed Using Common Models 144

##### Annex C (informative): YANG Module Graphical Representation 144

1. C.1 Additional configuration folder 144
2. C.2 Common Models folder 144
3. C.2.1 o-ran-dhcp.yang Module 144
4. C.2.2 o-ran-synchronization.yang Module 145
5. C.2.3 o-ran-wg5-delay-management Module 146
6. C.3 DU Specific Models folder 147
7. C.3.1 o-ran-aggregation-base.yang Module 147
8. C.3.2 o-ran-o1-ctiOdu.yang Module 147
9. C.3.2 o-ran-o-du-shared-o-ru.yang 149
10. C.4 Provisioning folder 149
11. C.5 CTI folder 149

##### Annex D (informative): WG4 instance categories in Hierarchical Model 150

##### Annex E (informative): Parameters definition for 3GPP conformance testing 150

##### Annex F (informative): Network Energy Saving 153

1. F.1 Introduction 153
2. F.2 Cell and carrier deactivation / activation 153
3. F.2.1 Flow description 153
4. F.3 RF Channel Reconfiguration 155
5. F.3.1 Flow description 155
6. F.4 Advanced Sleep Modes 158
7. F.4.1 Flow description 158

##### Revision History 163

8

9 List of Figures

1. Figure 7-1: Software Inventory 19
2. Figure 7-2: Software Download 20
3. Figure 7-3: Software Activate 21
4. Figure 9-1: Operation to merge O-RU Alarms by O-DU 24
5. Figure 10-1: File Ready Notification 27
6. Figure 11-1: Allowed sync state transitions 29
7. Figure 12-1: Cell activation procedure 37
8. Figure 12-2: Notification to the SMO preceded by the O-RU notification 39
9. Figure 12-3: Notification to the SMO preceded by the O-DU <get> operation 39
10. Figure 13-1: Delay Management Configuration Procedure 43
11. Figure 16-1: SharedOruConfiguration containment 50
12. Figure 16-2: RF Channel Reconfiguration (TRx Control) (NESPolicy) containment 51
13. Figure 16-3: AdvancedSleepMode (NESPolicy) containment 51
14. Figure 16-4: SharedOruConfiguration inheritance 51
15. Figure 16-5: Network Energy Saving (NESPolicy) inheritance 52
16. Figure F.1: Network Energy Saving - Cell and carrier deactivation / activation use case. 154
17. Figure F.2: Common flow for Network Energy Saving use cases for RF Channel Reconfiguration 156
18. Figure F.3: Network Energy Saving - RF Channel Reconfiguration use case based on policies known to O-DU 158
19. Figure F.4: Network Energy Saving use cases for Advanced Sleep Modes 160
20. Figure F.5: Network Energy Saving - Advanced Sleep Mode use case based on policies known to O-DU. 162

30

# 31 List of Tables

1. Table 1: Mapping of O-RU NETCONF based fault notification to ONAP VES in 'fault3gppFields' 25
2. Table 2: Parameters list for Notification notifyFileReady 26
3. Table 3: Optional O-RAN WG5 Namespace 139
4. Table 4: Optional O-RAN WG4 Namespace 140
5. Table 5: Optional O-RAN WG5 defined feature support 140
6. Table 6: Optional O-RAN WG4 defined feature support 141
7. Table 7: Optional feature support in common models 142
8. Table 8: Optional capabilities in O-RAN WG5 defined YANG models 142
9. Table 9: Optional capabilities in O-RAN WG4 defined YANG models 143
10. Table 10: Optional capabilities in common YANG models 144
11. Table 11: Categories for YANG parameters 150
12. Table 12: Parameters for O-RU uplink evaluation 152
13. Table 13: Parameters for O-RU downlink evaluation 152

45

46 Foreword

47 This Technical Specification (TS) has beed produced by WG5 of the O-RAN Allance.

1. The contents of the present document are subject to continuing work within O-RAN WG5 and may change following
2. formal O-RAN approval. Should the O-RAN.org modify the contents of the present document, it will be re-released by
3. O-RAN Alliance with an identifying change of release date and an increase in version number as follows:
4. Release x.y.z
5. where:
6. x the first digit is incremented for all changes of substance, i.e. technical enhancements, corrections, updates,
7. etc. (the initial approved document will have x=01).
8. y the second digit is incremented when editorial only changes have been incorporated in the document.
9. z the third digit included only in working versions of the document indicating incremental changes during the
10. editing process.

# 11 Modal verbs terminology

1. In the present document "**shall**", "**shall not**", "**should**", "**should not**", "**may**", "**need not**", "**will**", "**will not**", "**can**" and
2. "**cannot**" are to be interpreted as described in clause 3.2 of the O-RAN Drafting Rules (Verbal forms for the expression
3. of provisions).
4. "must" and "must not" are NOT allowed in O-RAN deliverables except when used in direct citation.

1 1 Scope

1. The present document specifies the O1 Interface specification for O-DU used over the interface linking the O-DU (O-
2. RAN Distributed Unit) with other management plane entities, that may include the O-CU (O-RAN Central Unit) as well
3. as Service Management and Orchestration (SMO).

# 5 2 References

## 2.1 Normative references

1. References are either specific (identified by date of publication, edition number, version number, etc.) or non-specific.
2. For a specific reference, subsequent revisions do not apply. For a non-specific reference, the latest version applies. In the
3. case of a reference to a 3GPP document (including a GSM document), a non-specific reference implicitly refers to the
4. latest version of that document in Release 17.
5. The following referenced documents are necessary for the application of the present document.
6. [1] 3GPP TR 21.905: "Vocabulary for 3GPP Specifications"
7. [2] ORAN-WG4.MP.0-v12.00 "Management Plane Specification", O-RAN Alliance, Working Group 4
8. [3] RFC 6187, "X.509v3 Certificates for Secure Shell Authentication", IETF, March 2011
9. [4] RFC 4253, "The Secure Shell (SSH) Transport Layer Protocol", IETF, January 2006
10. [5] O-RAN-WG10.OAM-Architecture-v09.00, O-RAN Alliance, Working Group 10
11. [6] O-RAN.WG10.O1-Interface.0-v10.00, "O-RAN Operations and Maintenance Interface Specification", O-RAN
12. Alliance, Working Group 10
13. [7] 3GPP 28.545, "Management and orchestration; Fault Supervision (FS)", 3GPP, v16.1.0, 2020-09
14. [8] 3GPP 28.541, "Management and orchestration; 5G Network Resource Model (NRM)", 3GPP, v17.4.0, 2021-04
15. [9] ORAN-WG4.CUS.0-v12.00 "Control, User and Synchronization Plane Specification", O-RAN Alliance, Working
16. Group 4
17. [10] 3GPP 32.342, "File Transfer (FT); Integration Reference Point (IRP)", 3GPP, v17.0.0, 2022-04
18. [11] 3GPP 32.302, "Configuration Management (CM); Notification Integration Reference Point (IRP)", 3GPP, v16.0.0,
19. 2020-07
20. [12] O-RAN.SFG.O-RAN-Security-Requirements-Specifications-v01.00 "O-RAN Security Requirements
21. Specification", O-RAN Alliance, Security Focus Group
22. [13] 3GPP TS 28.622: Telecommunication management; Generic Network Resource Model (NRM) Integration
23. Reference Point (IRP); Information Service (IS), 3GPP, v16.7.1, 2021-04
24. [14] 3GPP TS 28.552: "Management and orchestration; 5G performance measurements", 3GPP, v17.4.0 (2021-09)
25. [15] RFC 7589, "Using the NETCONF Protocol over Transport Layer Security (TLS) with Mutual X.509
26. Authentication", IETF, June 2015
27. [16] 3GPP TS 38.141-1: "Base Station (BS) conformance testing Part 1: Conducted conformance testing", 3GPP,
28. v16.9.0 (2021-10)
29. [17] 3GPP TS 38.141-2: "Base Station (BS) conformance testing Part 2: Radiated conformance testing", 3GPP,
30. v16.9.0 (2021-10)
31. [18] 3GPP TS 38.104: "Base Station (BS) radio transmission and reception", 3GPP, v16.9.0 (2021-10) 38

## 2.2 Informative references

1. References are either specific (identified by date of publication, edition number, version number, etc.) or non-specific.
2. For a specific reference, subsequent revisions do not apply. For a non-specific reference, the latest version applies. In the
3. case of a reference to a 3GPP document (including a GSM document), a non-specific reference implicitly refers to the
4. latest version of that document in Release 17.
5. The following referenced documents are not necessary for the application of the present document, but they assist the
6. user with regard to a particular subject area.
7. [i.1] RFC 6241, "Network Configuration Protocol (NETCONF)", IETF, June 2011
8. [i.2] G.8275.1, "Precision time protocol telecom profile for phase/time synchronization with full timing support from
9. the network", ITU, June 2016
10. [i.3] G.8275.2, "Precision time protocol telecom profile for phase/time synchronization with partial timing support
11. from the network", ITU, March 2020
12. [i.4] G.810, "Definitions and terminology for synchronization networks", ITU, August 1996
13. [i.5] 1588v2-2008, "IEEE Standard for a Precision Clock Synchronization Protocol for Networked Measurement and
14. Control Systems", IEEE, 2008
15. [i.6] G.8261, "Timing and synchronization aspects in packet networks", ITU, August 2019
16. [i.7] RFC 6933, "Entity MIB (Version 4)", IETF, May 2013
17. [i.8] RFC 4268, "Entity State MIB", IETF, November 2005
18. [i.9] RFC 3433, "Entity Sensor Management Information Base", IETF, December 2002
19. [i.10] RFC 2863, "The Interfaces Group MIB", IETF, June 2000
20. [i.11] O-RAN.WG1.Network-Energy-Savings-Technical-Report-R003-v02.00, O-RAN Alliance, Working Group 1.

# 22 3 Definitions of terms, symbols and abbreviations

## 3.1 Terms

1. For the purposes of the present document, the terms and definitions given in 3GPP TR 21.905 [1] and the following apply.
2. A term defined in the present document takes precedence over the definition of the same term, if any, in 3GPP
3. TR 21.905 [1].
4. **Advanced Sleep Mode (ASM)**: Advanced sleep mode may be used to achieve energy saving by disabling some fraction
5. of the O-RU's processing for a defined or undefined period of time.
6. **Antenna Line**: connection between O-RU and antenna
7. **C-Plane**: Control Plane: refers specifically to real-time control between O-DU and O-RU, and should not be confused
8. with the UE's control plane
9. **c\_eAxC:** component eAxC: a portion of an eAxC flow assigned to a specific O-DU processing element.
10. **DL**: Downlink: data flow towards the radiating antenna (generally on the LLS interface)
11. **DU**: Distributed Unit: a logical node hosting RLC/MAC/High-PHY/Low-PHY layers and RF processing layers based on
12. a higher layer functional split for integrated model
13. **eAxC**: extended Antenna-Carrier: a data flow for a single antenna (or spatial stream) for a single carrier in a single sector.
14. **Emergency Wake-up**: In TRX Control and Advanced Sleep Mode energy saving techniques, the CU-Plane processing
15. unit of O-RU may be turned off, hence O-DU can't wake-up the O-RU from sleep through C-Plane. When C-Plane is
16. disabled, M-Plane shall be used to abort the ongoing Advanced Sleep Modes and TRX Control.
17. **Energy Saving Policy**: A set of rules and conditions defined by the MnS Consumer that, when provided to O-DU, shall
18. be used by O-DU to decide when and for how long to utilize specific type of Energy Saving. As such, Energy Saving
19. Policy is not exact command that triggers addressee to immediately apply specific Advanced Sleep Mode or to activate /
20. deactivate cells / carriers.
21. Note: It is not prohibited for single policy to contain rules and conditionals for more than one Energy Saving Mode.
22. **FFT/iFFT**: Fast Fourier Transform/inverse Fast Fourier Transform: an algorithm that computes discrete Fourier
23. transform or its inverse.
24. **High-PHY**: those portions of the PHY processing on the O-DU side of the fronthaul interface, including FEC
25. encode/decode, scrambling, and modulation/demodulation.
26. **IOC:** Information Object Class.
27. **LLS**: Lower Layer Split: logical interface between O-DU and O-RU when using a lower layer (intra-PHY based)
28. functional split.
29. **LLS-C:** Lower Layer Split Control-plane: logical interface between O-DU and O-RU when using a lower layer functional
30. split.
31. **Low-PHY**: those portions of the PHY processing on the O-RU side of the fronthaul interface, including FFT/iFFT, digital
32. beamforming, and PRACH extraction and filtering.
33. **M-Plane**: Management Plane: refers to non-real-time management operations between the O-DU and the O-RU
34. **MnS Consumer**: The Network Element that consumes and utilizes Management Services (here SMO or non-RT RIC).
35. **MnS Producer**: The Network Element that produces Management Services (here O-DU or O-CU).
36. **Multi O-DU O-RU**: An O-RU that supports the **SHARED-ORU-MULTI-ODU** feature
37. **Multi-Operator O-RU**: An O-RU that supports the **SHARED-ORU-MULTI-OPERATOR** and **SHARED-ORU-**
38. **MULTI-ODU** features
39. **O-CU**: O-RAN Central Unit: a logical node hosting in the Control Plane (O-CU-CP) the RRC and the Control Plane part
40. of the PDCP protocol and in the User Plane (O-CU-UP) the user plane part of the PDCP protocol and the SDAP protocol.
41. **O-CU-CP**: O-RAN Central Unit: Control Plane: a logical node hosting the RRC and the control plane part of the PDCP
42. protocol.
43. **O-CU-UP**: O-RAN Central Unit: User Plane: a logical node hosting the user plane part of the PDCP protocol and the
44. SDAP protocol.
45. **O-DU**: O-RAN Distributed Unit -- A logical node hosting RLC/MAC/High-PHY layers based on a lower layer functional
46. split.
47. **O-RU**: O-RAN Radio Unit: a logical node hosting Low-PHY layer and RF processing based on a higher layer functional
48. split in 3-box model. This is similar to 3GPP's "TRP" or "RRH" but more specific in including the Low-PHY layer
49. (FFT/iFFT, PRACH extraction).
50. **Port**: End of a transport link - in most cases this is an optical port
51. **Port Number**: A number which identifies a port (see Port). In case of SFP/SFP+ port, port number value is 0 to N-1
52. where N is number of ports in the device. Numbers 0 to N-1 are assigned to ports in order following order of labels on
53. the device (labels for ports are not necessarily numbers starting from zero)
54. **S-Plane**: Synchronization Plane: refers to traffic between the O-RU or O-DU to a synchronization controller which is
55. generally an IEEE-1588 Grand Master (however, Grand Master functionality may be embedded in the O-DU).
56. **Shared O-RU Host**: The role performed by the NETCONF client associated with the operator of a Multi-Operator O-
57. RU who determines how the resources of a Multi-Operator O-RU are partitioned between Shared Resource Operators.
58. **Shared O-RU Host O-DU:** The O-DU performing Shared O-RU Host role.
59. **Shared Resource Operator:** The role performed by the NETCONF client associated with an operator that utilizes the
60. carrier resources of a Multi-Operator O-RU. The Shared Resource Operator is allocated a Shared Resource Operator
61. identity by the Shared O-RU Host.
62. NOTE: A NETCONF client of an operator can simultaneously perform the Shared O-RU Host role and the Shared
63. Resource Operator role. Alternatively, a NETCONF client of an operator can only perform the Shared O-RU Host
64. role and not Shared Resource Operator role, in which case the operator corresponds to a neutral host operator.
65. **Shared Resource Operator O-DU:** The O-DU performing Shared Resource Operator role.
66. **Spatial stream**: the data flow on the DL associated with precoded data (may be same as layers or different if there is
67. expansion in the precoding), and on UL associated with the number of outputs from the digital beamforming (sometimes
68. called "beams").
69. **SSM**: Synchronization Status Message: part of ITU G.781 and G.8264 standards.
70. **TRX Control**: TRX control may be used to achieve energy saving through disabling one or more O-RU antenna array
71. elements for a defined or undefined period of time.
72. **U-Plane**: User Plane: refers to IQ sample data between O-DU and O-RU.
73. **UL**: Uplink: data flow away from the radiating antenna (generally on the LLS interface)

## 3.2 Symbols

1. For the purposes of the present document, the symbols [given in 3GPP TR 21.905 [1] and the following apply. A symbol
2. defined in the present document takes precedence over the definition of the same symbol, if any, in 3GPP TR 21.905 [1]. 12

## 3.3 Abbreviations

1. For the purposes of the present document, the abbreviations given in 3GPP TR 21.905 [1] and the following apply. An
2. abbreviation defined in the present document takes precedence over the definition of the same abbreviation, if any, in
3. 3GPP TR 21.905 [1].

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| 17 | ALD | Antenna Line Device |
| 18 | ASM | Advanced Sleep Mode |
| 19 | AVP | Average Power |
| 20 | BCN | BTS Clock Number |
| 21 | CRC | Cyclic Redundancy Check |
| 22 | CUS | Control/User/Synchronization |
| 23 | CU-CP | Central Unit Control Plane |
| 24 | CU-UP | Central Unit User Plane |
| 25 | DHCP | Dynamic Host Configuration Protocol |
| 26 | DMTC | DRS Measurement Timing Configuration |
| 27 | DRS | Discovery Reference Signal |
| 28 | DSCP | Differentiated Services Code Point |
| 29 | DU | Distributed Unit |
| 30 | ESP | Energy Saving Policy |
| 31 | FH | Fronthaul |
| 32 | HDLC | High-Level Data Link Control |
| 33 | lls-M | Lower Layer Split Management plane |
| 34 | LAA | Licensed Assisted Access |
| 35 | LBM | Loop-Back Message |
| 36 | LBR | Loop Back Reply |
| 37 | LBT | Listen Before Talk |
| 38 | ME | Maintenance Entity |
| 39 | MEP | Maintenance association End Point |
| 40 | MnS | Management Service |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| 1 | NAT | Network Address Translation |
| 2 | NES | Network Energy Saving |
| 3 | NETCONF | Network Configuration Protocol |
| 4 | NMS | Network Management System |
| 5 | O-CU | O-RAN Central Unit |
| 6 | O-CU-CP | O-RAN Central Unit Control Plane |
| 7 | O-CU-UP | O-RAN Central Unit User Plane |
| 8 | O-DU | O-RAN Distributed Unit |
| 9 | O-RU | O-RAN Radio Unit |
| 10 | PDV | Packet Delay Variation |
| 11 | PNF | Physical Network Function |
| 12 | QoS | Quality of Service |
| 13 | RET | Remote Electrical Tilt |
| 14 | RPC | Remote Procedure Call |
| 15 | SFP | Small Form-factor Pluggable |
| 16 | sFTP | Secure File Transfer Protocol or SSH File Transfer Protocol |
| 17 | SLAAC | Stateless Address Auto Configuration |
| 18 | SMO | Service Management and Orchestration |
| 19 | SRO | Shared Resource Operator |
| 20 | SSH | Secure Shell |
| 21 | TRX | Transceiver |
| 22 | VLAN | Virtual LAN |
| 23 | YANG | Yet Another Next Generation |
| 24 |  |  |

</div>

## 3.4 Conventions

1. This management plane specification includes cross references to a set of associated YANG models. Text may reference
2. particular YANG leafs, notifications and remote procedure calls (RPCs). In order to assist in readability, all cross
3. references to YANG defined elements will keep the identical case format as defined in the corresponding YANG model,
4. with the font-weight set to **bold**. This convention applies only to text and not to YANG elements embedded into figures.
5. If there is any conflict between the YANG models and the accompanying text description in this specification, the
6. definition of the YANG models shall take precedence. 32

## 3.5 Revision and compatibility handling

1. The revision statement in the YANG models shall be used to describe future revisions to the models that are backwards
2. compatible. Backwards incompatible changes will be addressed by incrementing the number used as part of the model
3. name and namespace, effectively creating a new YANG model. The format of the namespace used in all O-RAN YANG
4. models is "urn:o-ran:"<model-name>":"<model-number>, where the initial <model-number> used in a newly defined
5. YANG model is "1.0". Where this document makes reference to models, irrespective of their backward compatibility, a
6. generic <model-number> of "x.y" is used to enable reference to all versions of the namespace for a particular <model-
7. name>.

41

1. The revision statement in all YANG models includes a reference statement used to cross-reference to the first version of
2. this document where the corresponding description was introduced. For example, the reference in all revision statements
3. for the initial O-RAN models include cross-reference to "ORAN-WG5.MP.0-v01.00". 4
4. The revision statement of the YANG models also includes a description which is used to track the versioning of the
5. YANG model. All revision statement descriptions will begin with "version "<a>"."<b>"."<c>, where <a>, <b> and <c>
6. are used to reflect the version of the YANG model, where 8
7. <a> corresponds to the first digit of the O-RAN WG5 O1 interface specification for O-DU version where the
8. corresponding description was first introduced, corresponding to <x> in subclause 1.1
9. <b> is incremented when errors in the YANG model have been corrected
10. <c> is incremented only in working versions of the YANG model indicating incremental changes during the
11. editing process

14

15

# 16 4 High Level Description

## 4.1 Top level functional description, terminology, including hybrid,

1. hierarchical

### 4.1.1 Architecture for O-RAN WG5 functional split

1. This O1 interface facilitates the initialization, configuration and management of the O-DU to support the functional split.
2. Please refer to O-RAN OAM Architecture [i.5] for more details on architecture and functional split.

### 4.1.2 O1 interface for O-DU architecture model

1. O1 interface for O-DU is used for supporting the management features including "start up" installation, PNF software
2. management, provisioning management, performance management, fault management and file management towards the
3. O-DU.
4. The O1 interface for O-DU is also used to support O-RU management. For this purpose, specific models are used to
5. aggregate the configuration of individual O-RU functions (deployed as separate entities) and present them over the O1
6. interface of the O-DU(s) connected to them. The management of these O-RUs may be performed according to either
7. Hierarchical model or Hybrid model, depending on the particular deployment; see clause 12 for details regarding these
8. two models.

31

### 4.1.3 Transport Network

1. Based on the transport topology, various modes of network connectivity are possible between O-DU and O-CU and SMO.
2. The basic requirement for O1 interface for O-DU is to have end to end IP connectivity between the O-DU and the elements
3. managing it. The O-DU shall support either IPv4 or IPv6 and optionally support dual stack (IPv4 and IPv6).
4. This version of the O1 interface for O-DU has not been defined to be able to operate in the presence of any Network
5. Address Translation (NAT) between the O-DU and elements managing it.

## 4.2 Interfaces

1. The interface between the management system and the O-DU is O1. The general requirement for O1 interface for O-DU
2. is aligned with [6], clause 4 General Requirements.
3. Heartbeat Notification for O-DU is aligned with [6], clause 6.6.1 Heartbeat Notification.

# 1 5 PNF Startup and Registration Management

## 5.1 Introduction

1. O-DU may be deployed as PNF as described in O1 Interface Specification [0], clause 6.7 PNF Startup and Registration
2. Management Services.

## 5.2 PNF Plug-n-Play

1. PNF Plug-n-Play for O-DU is aligned with O1 Interface Specification [0], clause 6.7.1 PNF Plug-n-Play.

## 5.3 PNF Registration

1. PNF Registration for O-DU is aligned with O1 Interface Specification [0], clause 6.7.2 PNF Registration.

## 5.4 NETCONF Connection Establishment

### 5.4.1 NETCONF Authentication

1. This version of the O1 Specification uses mutual authentication based on X.509 certificates [3].
2. Mutual Public key-based client/server authentication shall be used for authenticating the server (RFC 4253 [4]) by the
3. clients. and authenticating the client by the server.
4. For the purposes of NETCONF user authentication, the mapping between certificates and user-names is provided by the
5. SubjectAltName field of the X.509 certificate [3], which means that the user name is coded in the subjectAltName. The
6. username is determined from the subjectAltName using the rules defined in RFC 7589 [15].
7. Note: In RFC7589, different user-name and SubjectAltName mappings are possible. O-RAN SFG is working on extensive
8. solution designed for O1 interface. Further alignment with generic O1 Interface Specification [6] will be needed once
9. done.

## 5.5 NETCONF Access Control

1. This subclause provides the access control for NETCONF client. Its motivation is when multiple NETCONF clients
2. (users) exist, access control mechanism allows to limit some operation for one client but full access for the other client.
3. For the O1 interface, in order to support interoperable access control management, the NETCONF Server shall follow
4. privilege access control requirements which are specified in O-RAN Security Requirements Specification [12] clause
5. 3.2.2.1.2.
6. For accessing O-RU YANG data models access control please refer to clause 6.5 of [2].

## 5.6 NETCONF Protocol Aspects

### 5.6.1 Introduction

1. This clause covers aspects of NETCONF protocol usage by the O-DU. For full list of supported services please refer to
2. clause 6.1 of [6].

### 5.6.2 NETCONF Capability Discovery

1. The O-DU advertises its NETCONF capabilities in the NETCONF Hello message. The Hello message provides an
2. indication of support for standard features defined in NETCONF RFCs [i.1] as well as support for specific namespaces.
3. NETCONF capabilities are exchanged between the O-DU and the NETCONF client(s).
4. For full list of supported operations and capabilities please refer to clause 6.1.1. of [6]

### 5.6.3 NETCONF Session Termination

1. For O-DU NETCONF Session Termination functionality description, please refer to clause 6.1.9 of [6].

### 5.6.4 NETCONF Session Establishment

1. The O-DU NETCONF Session Establishment functionality description, please refer to clause 6.1.8 of [6]. 7

# 8 6 Heartbeat Management Services

## 6.1 Heartbeat Notification

1. Heartbeat Notification for O-DU is aligned with [6], clause 6.6.1 Heartbeat Notification.

## 6.2 Heartbeat Control

1. Heartbeat Control for O-DU is aligned with [6], clause 6.6.2 Heartbeat Control. 13

# 14 7 PNF Software Management

## 7.1 Introduction

1. The PNF Software Management Services specified in O1 Interface Specification [6] is adapted to the software
2. management for O-DU. Please refer clause 6.8 of [6]. This clause describes the behaviour of O-DU in the software
3. management process between the SMO, O-DU and O-RU.

## 7.2 O-DU Software Management

1. Please refer to clause 6.8 of [6].

## 7.3 O-RU Software Management

### 7.3.1 Hierarchical Model

#### 7.3.1.1 Preparation

##### 7.3.1.1.1 Aggregated YANG data model

1. O-DU provides the software inventory information of each connected O-RU to the SMO by o-ran-agg-software-
2. management.yang that has a mount point. To mount the software-inventory instance in o-ran-software-
3. management.yang defined in [6] under the mount point, O-DU shall prepare the ietf-yang-schema-mount.yang with
4. appropriate configuration as shown in the following example.
5. **Example**: configuration of the ietf-yang-schema-mount.yang in xml format for software management.

2

<schema-mounts>

<namespace>

<prefix>o-ran-swm</prefix>

<uri>urn:o-ran:software-management:1.0</uri>

</namespace>

<mount-point>

<module>o-ran-agg-software-management</module>

<label>swm-root</label>

<config>false</config>

<inline></inline>

</mount-point>

</schema-mounts>

3

4

5

6

7

8

9

10

11

12

13

14

1. In this case, building the data tree such as following image, which is not created or validated by a tool (e.g. pyang), is
2. expected and the SMO will retrieve it from O-DU.

17

module: o-ran-aggregation-base

+--rw aggregated-o-ru

+--ro recovered-ru-instance-ids\* [ru-instance-id]

<div class="table-wrapper" markdown="block">

| +--ro ru-instance-id ru-ref

</div>

+--rw aggregation\* [ru-instance]

+--rw ru-instance -> /aggregated-o-ru/recovered-ru-instance-ids/ru-instance-id

+--rw or-agg-swm:software-management-model

+--mp swm-root

+--ro software-inventory

+--ro software-slot\* [name]

+--ro name string

+--ro name string

+--ro version? string

+--ro local-path string

+--ro integrity? enumeration

18

19

20

21

22

23

24

25

26

27

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| 28 | +--ro | status | enumeration |
| 29 | +--ro | active? | boolean |
| 30 | +--ro | running? | boolean |
| 31 | +--ro | access? | enumeration |
| 32 | +--ro | product-code? | -> /hw:hardware/component/o-ran-hw:product-code |
| 33 | +--ro | vendor-code? | string |
| 34 | +--ro | build-id? | string |
| 35 | +--ro | build-name? | string |
| 36 | +--ro | build-version? | string |
| 37 | +--ro | files\* [name] |  |

</div>

38

39

40

41

#### 7.3.1.2 Software inventory

##### 7.3.1.2.1 Description

1. The SMO retrieves the software inventory information of O-RU by using the aggregated yang data model.

##### 7.3.1.2.2 Procedures

###### Precondition:

1. - O-DU has the software inventory information of connected O-RUs, which is retrieved in startup with O-RU. 48

![Generated by PlantUML]({{site.baseurl}}/assets/images/e0ead392bf4f.png)1

###### Figure 7-1: Software Inventory

1. 1. SMO establishes NETCONF session with O-DU.
2. 2. O-DU receives NETCONF <rpc><get><filter> from SMO where software aggregated model is indicated to retrieve
3. information of software slot of O-RU.
4. 3. O-DU returns requested data in NETCONF <rpc-reply> response.
5. 4. SMO terminates NETCONF session with O-DU. 8

#### 7.3.1.3 Software Download

##### 7.3.1.3.1 Description

1. The SMO triggers the software download to O-RU by sending software download rpc defined in [6] with ru-instance-id
2. which identifies a target O-RU. After software download for O-RU, O-DU performs the software install to O-RU
3. according to [2].

##### 7.3.1.3.2 Procedures

15

![Generated by PlantUML]({{site.baseurl}}/assets/images/a847c02d51a2.png)1

###### Figure 7-2: Software Download

* 1. 1. SMO establishes NETCONF session with O-DU.
  2. 2. SMO sends NETCONF <rpc><software-download><remote-file-path><softwarePackage> with ru-instance-id to
  3. trigger a download of the software and to identify the target O-RU.
  4. a. O-DU validates the request.
  5. 3. O-DU returns NETCONF <rpc-reply><software-download-status>.
  6. 4. SMO terminates NETCONF session with O-DU.
  7. Alternative 1: O-RU directly downloads the software package from software server
  8. 5. O-DU sends <rpc><software-download> toward O-RU with remote-file-path.
  9. 6. O-RU returns <rpc-reply><software-download>.
  10. 7. O-RU downloads the software package.
  11. Alternative 2: O-RU indirectly downloads the software package from software server
  12. 8. O-DU downloads software package of O-RU from software server and temporarily stores in the storage on itself.
  13. NOTE: storing SW package in O-DU may be removed after step 14.
  14. b. O-DU decides whether download is needed or not by comparing manifest file and information of software
  15. slot.
  16. 9. O-DU sends <rpc><software-download> toward O-RU with remote-file-path.
  17. 10. O-RU returns <rpc-reply><software-download>.
  18. 11. O-RU downloads the software package.
  19. 12. O-RU sends <notification><download-event> to notify the result of download process.

1. 13. O-DU sends <rpc><software-install> to perform the software install for O-RU. O-DU selects an install slot based

2 on [2].

1. 14. O-RU returns <rpc-reply><software-install>.
2. 15. O-RU sends <notification><install-event> to notify the result of install process.
3. 16. When download operation is completed, O-DU sends download-event NETCONF downloadFile notification to
4. SMO with the final status of the download (success or the reason for failure). 7

8

#### 7.3.1.4 SW activate

##### 7.3.1.4.1 Description

1. When O-DU receives NETCONF <rpc><software-activate><softwarePackage> with ru-instance-id from the SMO, O-
2. DU executes the software activation mechanism to O-RU indicated by ru-instance-id.

##### ![Generated by PlantUML]({{site.baseurl}}/assets/images/8f13443d26cf.png)7.3.1.4.2 Procedures

14

###### 15 Figure 7-3: Software Activate

16

1. 1. SMO establishes NETCONF session with O-DU.
2. 2. SMO sends NETCONF <rpc><software-activate><softwarePackage> with ru-instance-id to trigger an activation
3. of the software slot on O-RU.
4. a. O-DU validates the request.
5. 3. O-DU returns status to the SMO in the NETCONF <rpc-reply> response.
6. 4. SMO terminates NETCONF session with O-DU.
7. 5. O-DU sends <rpc><software-activation> to activate the software slot on O-RU. The most recently used slot to
8. install is selected.
9. 6. O-RU returns status into <rpc-reply>.
10. 7. O-DU recieves <notification><activation-event>.
11. 8. O-DU sends <rpc><reset> toward O-RU to apply the newly installed and activated software.
12. 9. O-RU returns <rpc-reply>.
13. a. O-RU starts reset process.
14. 10. When O-DU retrieves software inventory information of all reset O-RU in the startup, O-DU sends a
15. softwareActivate notification to SMO with the final status of the software activate and O-RU reset results. 6

### 7.3.2 Hybrid Model

1. In the hybrid architecture for O-RU, this clause is not applicable as O-DU is not responsible for the SW management of
2. O-RU. In such case, the SMO performs the software management of O-DU by [6], and the software management of O-
3. RU by O-RAN WG4 Management Plane Specification [2]. The SMO may perform the software management of O-RU
4. by O1 Interface Specification [6] if O-RU supports [6] for its management.

# 12 8 Performance Assurance Management

## 8.1 Performance Data File Reporting

1. Performance Data File Reporting function for O-DU is aligned with O1 Interface Specification [6] except following
2. part.
3. **O-RU performance counters measured at O-RU:**
4. In the hierarchical architecture of O-RAN WG4 Management Plane Specification [2], O-DU as NETCONF client will
5. control the performance measurement of O-RU as NETCONF server. The information to be collected in O-RU is also
6. controlled by SMO via O-DU by [2]. They are defined in Annex A.14.
7. The measured result file created by O-RU will be periodically uploaded to O-DU's internal storage aligned with [2] and
8. O-DU will handle it by Performance Data File Reporting function aligned with O1 interface spec [6]. As the alternative
9. way, the measured result file created by O-RU will be forwarded to the FTP server configured by O-DU. For the latter
10. case, Performance Assurance MnS Consumer shall provide the remote-SFTP-upload-path and its credential to O-RU
11. that can upload the PM data file directly.

### 8.1.1 PM File Content

1. The Measurement Type and definitions for performance counters are described in both clause 6.3 of O1 interface
2. specification [6] and Annex A of this specification. All measurements are optional and can be selected based on service
3. deployment.

### 8.1.2 PM File Naming

1. PM file naming is specified in [6] clause 6.3.1.7.

### 8.1.3 PM File XML Format

1. PM file XML format is specified in [6] clause 6.3.1.8.

## 8.2 Performance Data Streaming

1. Performance Data Streaming for O-DU is aligned with [6]

## 8.3 Performance Assurance Control

1. Performance Assurance Control for "O1 interface for O-DU" is aligned with [6].
2. In addition to the parameters defined in Measurement Control, the following two parameters are additionally defined for
3. O1 interface spec.
4. - **pm-count-list-drb**: indicates the QoS group specific to performance assurance control for **qci-index**. Each entry
5. contains **qci-index** [0...255] and corresponding **pm-count-group** [0...17]. The multiple entries with different **qci-**
6. **index** can map to same **pm-count-group** to combine the measurement result for them. Value 0 for **pm-count-**
7. **group** means that there is no need to collect measurement for the **qci-index**.
8. - **pm-count-list-srb**: indicates the QoS group specific to performance assurance control for **srb-index**. Each entry
9. contains **srb-index** [SRB1, SRB2, SRB3] and corresponding **pm-count-group** [0, 18...20]. Value 0 for **pm-count-**
10. **group** means that there is no need to collect measurement for the **srb-index**.
11. NOTE: pm-count-group [1..20] corresponds to PmCountGroup number #0 to 19.

11

### 8.3.1 Performance Assurance Control for O-RU performance counters

1. **O-RU performance counters measured at O-DU:**
2. In the hierarchical architecture of O-RAN WG4 Management Plane Specification [2], O-DU as NETCONF client will
3. measure the performance counters defined in Annex A.13. The measurementTypes and gPs for O-RU performance
4. counters measured at O-DU are defined in aggregation model. A part of yang tree structure related to this subclause is
5. shown as follows.

18

module: o-ran-aggregation-base

+--rw aggregated-o-ru

+--ro recovered-ru-instance-ids\* [ru-instance-id]

<div class="table-wrapper" markdown="block">

| +--ro ru-instance-id ru-ref

</div>

+--rw aggregation\* [ru-instance]

+--rw ru-instance -> /aggregated-o-ru/recovered-ru-instance-ids/ru-instance-id

+--ro or-agg-pm:measurementsList\* [idx]

<div class="table-wrapper" markdown="block">

| +--ro or-agg-pm:idx uint32

</div>

<div class="table-wrapper" markdown="block">

| +--ro or-agg-pm:measurementTypes\* string

</div>

<div class="table-wrapper" markdown="block">

| +--ro or-agg-pm:gPs\* uint32

</div>

19

20

21

22

23

24

25

26

27

1. On the other hand, the measurement control such as selecting the counters to be reported is performed using 3GPP SA5
2. data model in the same way as other measurement counters for O-DU.

30

1. **O-RU performance counters measured at O-RU:**
2. The measurement activation and de-activation of O-RU are controlled by SMO by aggregation model according to [2]
3. clause 10.2. The details of configuration method of aggregation model are described in clause 12. 34

# 35 9 Fault Supervision Management

## 9.1 General

1. Fault Supervision Management allows a managed element to provide asynchronous Fault notification to the authorized
2. manager of the managed element. O-DU should have a capability to send fault notifications and corresponding
3. authorized manager should have a capability to receive and handle the fault notifications for managed element.
4. The requirement of Fault Supervision Management is based on the Fault Supervision Management Services of O1
5. interface specification [6] that contains 3GPP TS 28.545 [7] such as the requirement of fault notification and control.
6. This clause describes the fault supervision management for O-DU specific aspects.
7. General architecture of Fault Supervision Management is aligned with the Fault Supervision Management Services of
8. O1 interface specification [6].

## 9.2 Definition of the Operations for Fault Events

1. O-DU Fault Supervision Management is specified in clause 6.2.2 of O1 interface specification [6]. Fault Supervision
2. Management subscription is specified in clause 6.1.7 of O1 interface specification [6].

## 9.3 Definition of Notifications as Fault Events

1. O-DU as for Fault Supervision Data Report service producer notifies the JSON encoded asynchronous notifications to
2. Fault Supervision MnS Consumer using REST/HTTPS. All O1 fault notification types are specified in clause 6.2.1.4 of
3. O1 interface specification [6].

## 9.4 Message Format for Fault Events

1. An O-RAN fault notification format is specified in clause 6.2.1.4 of O1 interface specification [6].

## 9.5 O-RU Alarms Management by O-DU in Hierarchical Model

1. In hierarchical model, O-DU is responsible for managing AlarmRecords in the AlarmList, including O-DU alarms and
2. O-RU alarms. O-DU receives NETCONF based alarm notification from the O-RU, converts NETCONF based alarm
3. notification to O-RAN fault notification, updates AlarmRecords and delivers it to SMO. O-DU alarms and O-RU
4. ![Generated by PlantUML]({{site.baseurl}}/assets/images/d89109d77235.png)alarms may have the same alarm-id, they are distinguished using nfcNamingCode in the VES common event header. 15

16

###### 17 Figure 9-1: Operation to merge O-RU Alarms by O-DU

18

1. The field mapping between NETCONF based alarm notification and VES based Fault3gpp notification is as in the
2. following table:

1

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **O-RU NETCONF**  **based fault notification** | **SQ** | **ONAP VES common event header field name** | **ONAP VES event parameter name**  **in 'fault3gppFields'** | **SQ** | **Remark** |
| fault-id | M | - | alarmId | O |  |
| fault-source | M | - | additionalInformation | O |  |
| affected-objects  - name | M | - | additionalInformation | O |  |
| fault-severity | M | - | perceivedSeverity | M | If is-cleared is TRUE, perceivedSeverity shall be updated with "Cleared".  If is-cleared is FALSE, notificationType shall be updated with fault-severity. |
| is-cleared | M | - |
| fault-text | O | - | additionalInformation | O |  |
| event-time | M | startEpochMicrosec lastEpochMicrosec | - | M | If is-cleared is TRUE, event-time shall be mapped to lastEpochMicrosec.  If is-cleared is FALSE, event-time shall be mapped to both startEpochMicrosec and lastEpochMicrosec. |

</div>

###### Table 1: Mapping of O-RU NETCONF based fault notification to ONAP VES in 'fault3gppFields'

3

4

# 5 10 File Management

## 10.1 Introduction

1. This clause illustrates File Management between the O-DU and the SMO/OAM. The File Management Service is
2. applied to manage file transfer for different types of data file such as Bulk CM file, Call and UE trace file, Performance
3. Measurement result file, etc. The following file management use cases are supported for the O-DU:
4. ? List available files
5. ? Transfer file
6. ? Download file
7. ? File ready notification
8. The detailed description of the use cases including file management operations and procedures as well as sequence
9. diagram can be found in the O1 Interface Specification [6], clause 6.5.
10. This clause shall describe the handling of files that are stored in the O-DU which are generated by the O-DU itself or
11. transferred from another server like O-RU(s). One scenario would be that files stored in the O-DU file repository are
12. transferred from the O-RU or from some other file servers. The files handling between O-DU and O-RU are defined in
13. the O-RAN WG4 Management Plane Specification [2].
14. The data files that are stored in the O-DU shall follow clause 8.1 of this specification.

## 10.2 File Structure

1. The file system structure for the O-DU is defined as for file management procedures defined in the rest of this clause. If
2. the O-DU's physical file structure differs from the logical file structure defined below, the O-DU shall perform the
3. mapping of related files into defined structure.
4. The O-DU shall support the standardized folders for files generated by the O-DU itself and files transferred from O-RUs.
5. The following standardized folders are defined:
6. > O-RAN/O-DU/PM/ for performance data files
7. > O-RAN/O-DU/CM/ for configuration files (except inventory),
8. > O-RAN/O-DU/NL/ for notification log file
9. > O-RAN/O-DU/CT/ for call trace files
10. > O-RAN/O-DU/OT/ for other files
11. > O-RAN/O-DU/O-RU<RC>/ for files from O-RU which shall follow [2] logical file structure. The RC parameter
12. is a running count, starting with the value of "1", and shall be appended only if the filename is not unique, i.e.
13. more than one file is generated, and all other parameters of the file name are identical.
14. > The O-DU may additionally support vendor defined folders which are out of scope of this specification.

## 10.3 Notification notifyFileReady

1. The file ready notification is applied when the management data files have been prepared in the O-DU. The O-DU will
2. send notification using notifyFileReady VES event to subscribed SMO/OAM, in order to notify the availability of the
3. file(s) as defined in [6].
4. The following input parameters are provided by the file ready notification (see also 3GPP TS 32.342 [10]):

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| objectClass | Notification header - see 3GPP TS 32.302 [11]. It shall carry the FTIRP class name. |
| objectInstance | Notification header - see 3GPP TS 32.302 [11]. It shall carry the DN of the FTIRP. |
| notificationId | Notification header - see 3GPP TS 32.302 [11]. |
| eventTime | Notification header - see 3GPP TS 32.302 [11]. |
| systemDN | Notification header - see 3GPP TS 32.302 [11]. |
| notificationType | Notification header - see 3GPP TS 32.302 [11]. |
| fileInfoList | It specifies the information of the available file. |
| additionalText | It carries vendor-specific semantics not defined in the present document. |

</div>

###### Table 2: Parameters list for Notification notifyFileReady

22

23 When a file is available, the O-DU sends a notifyFileReady notification to the SMO using HTTP/TLS as defined in [6].

![Generated by PlantUML]({{site.baseurl}}/assets/images/6ce80b6fa287.png)1

###### 2 Figure 10-1: File Ready Notification

3

## 10.4 File Management Operation: listAvailableFiles

1. This listAvailableFiles operation for the SMO/OAM is applied to obtain the available file list with files location and type
2. from the O-DU by reading the AvailableFileList IOC as specified in [10]. SMO/OAM may read the O-RU available files
3. which are already stored in the O-DU and can be represented with AvailableFileList IOC as specified in [10]. Detailed
4. procedure can be found in clause 6.5.2 of [6]. 9

## 10.5 File Management Operation: transferFile

1. The Transfer File Service provides the capability for the SMO/OAM to transfer files from or to the O-DU. The
2. SMO/OAM may perform this action as a result of a FileReady notification from the O-DU informing SMO/OAM that a
3. file is now available to transfer. In any case, the file transfer is performed using a secure file transfer protocol (SFTP or
4. FTPeS) from or to the location provided by the O-DU. The SMO/OAM triggers file transfer operation to the O-DU.
5. Detailed procedure can be found in clause 6.5.3 of [6].

## 10.6 File Management Operation: downloadFile

1. The Download File Service provides the capability for the SMO/OAM to request the O-DU to download the file(s)
2. when the SMO/OAM has a file that needs to be downloaded. In any case, the file download is performed using a secure
3. file transfer protocol (SFTP or FTPeS) from the location provided by the SMO/OAM. The O-DU replies to the
4. SMO/OAM with the result of the download procedure. Detailed procedure can be found in clause 6.5.4 of [6]

# 21 11 Synchronization Aspects

## 11.1 Introduction

1. This clause provides the Management Plane's interactions with various aspects of the time synchronization of the O-DU.
2. In general, the O-DU is responsible for managing its synchronization status, to select one or more synchronization input
3. source(s) in the LLS-C1/LLS-C2/LLS-C3 deployments and act as synchronization master in LLS-C1/LLS-C2
4. deployments.
5. Synchronization deployment options are defined in the [9].
6. O-RU synchronization is defined by WG4, refer for details to the [2].
7. Refer to ITU-T recommendations [i.6], [i.4], [i.2], [i.3] for details of synchronization.
8. Prerequisite is that the O-DU synchronization parameters have been provisioned to the O-DU;
9. - Before O-DU can start to synchronize its internal clock by external timing source.
10. - Before O-DU begins its function as master clock.
11. Following clauses contain main parameters required for O-DU when it is receiving synchronization from external timing
12. source. All parameters are defined in o-ran-synchronization.yang, which shall be read together with this document.

## 11.2 Synchronization

### 11.2.1 Synchronization status

1. The read-only sync-state indicates O-DU synchronization status:
2. - **LOCKED:** O-DU clock timing is phase-locked to a reference timing signal. Refer also to [i.4] definition. 10
3. - **HOLDOVER:** O-DU clock has lost its controlling reference input and is using stored data, acquired while in locked
4. operation, to control its output. Refer also to [i.4] definition.
5. Note: HOLDOVER state is optional. 14
6. - **FREERUN:** O-DU clock has lost its controlling reference input and the output frequency accuracy is outside of
7. required accuracy. Refer also to [i.4] definition. 17
8. When state of O-DU synchronization changes, O-DU shall send notifyMOIAttributeValueChange notification VES event
9. about change.

20

1. O-DU shall raise appropriate alarm in case of state change to HOLDOVER or FREERUN. O-DU shall cancel alarm when
2. state changes back to LOCKED. 23
3. O-DU shall update information which timing source(s) O-DU is using to synchronize its own clock. O-DU shall update
4. this to ptp-status, synce-status and gnss-status containers described in following clauses. 26

![Generated by PlantUML]({{site.baseurl}}/assets/images/368df6362f07.png)1

###### Figure 11-1: Allowed sync state transitions

* 1. Note: HOLDOVER mode is optional and depends on internal O-DU design. 4

### 11.2.2 Synchronization capabilities

1. The read-only container sync-capability tells which timing source type(s) O-DU is capable to support.

### 11.2.3 Synchronization configuration

1. The container sync-config contains:
2. Configurable list sync-priority-config, which is priority order list to control O-DU to select timing source(s).
3. Timing source types:
4. ? GNSS
5. ? PTP
6. ? SYNCE
7. Because SyncE only provides a frequency signal, it can only be used in combination with another timing source
8. providing phase synchronization. Specific configurable parameter synce-enabled is used to control SyncE usage.

### 11.2.4 PTP configuration

1. The container ptp-config contains:
2. - needed parameters for G.8275.1 and G.8275.2 configuration.
   1. ? domain-number. This indicates Domain Number for PTP announce messages.
   2. ? accepted-clock-classes. This is a list of PTP acceptable Clock Classes
   3. ? delay-asymmetry. The parameter defines static phase error in the recovered PTP timing signal to be
   4. compensated at the device
   5. ? local-priority. The parameter defines local priority.
   6. PTP profile selection of G.8275.1 or G.8275.2
   7. The container g-8275-1-config contains:
   8. - multicast-mac-address. The parameter defines the destination MAC address, used by the O-DU in the egress PTP
   9. messages. Allowed values:
   10. ? FORWARDABLE (means that PTP shall use 01-1B-19-00-00-00 destination MAC address)
   11. ? NONFORWARDABLE (means that PTP shall use 01-80-C2-00-00-0E destination MAC address)
   12. The container g-8275-2-config contains:
   13. - list master-ip-configuration. Defines list of ip configuration of devices acting as ptp signal source.
   14. - ip-address. The parameter defines master IP address. 15

### 11.2.5 PTP status

1. Container ptp-status contains:
2. - reporting-period, which defines minimum time between ptp-status VES notification reports sent by O-DU.
3. - sync-source-status, which contains status of PTP as timing source:
4. ? IN\_USE - Indicates that this source is the current master clock, i.e. the clock, which the clock, controlled by
5. the device, is synchronized to.
6. ? USABLE - Indicates that this source is an alternate master, which the clock, controlled by the device, can
7. potentially synchronize to, i.e. clock class and priority, announced by the master clock is lower, compared to
8. those of the clock, controlled by the device, and the clock class is accepted.
9. ? NOT\_USABLE - Indicates that this source is an alternate master, which the clock, controlled by the device,
10. has an operational connection to, but the class or priority of the master clock is higher or equal to those of
11. the clock, controlled by the device, or the clock class is not accepted.
12. ? NOT\_IN\_USE - Indicates that this source is an alternate master, which the clock controlled by the device,
13. has no operational connection to.
14. - clock-class, which contains clock class of the clock, controlled by the O-DU
15. - clock-identity, which is received form the PTP source
16. - sources, which contains a list of PTP sources per local-port-number.
17. - steps-removed, which value is received PTP Announce message stepsRemoved attribute +1.
18. - other attributes from the PTP Announce messages. 35

### 11.2.6 SyncE configuration

1. The container synce-config contains configuration parameters for the SyncE:
2. - acceptance-list-of-ssm, which defines SyncE SSM values acceptable.
3. - ssm-timeout, maximum duration in seconds for which the actual SSM value may be different than configured
4. values.

### 11.2.7 SyncE status

1. Container synce-status contains:
2. - reporting-period, which defines minimum time between synce-status VES notification reports sent by O-DU.
3. - sync-source-status, which contains status of SyncE as timing source:
4. ? IN\_USE - Indicates that this source is the current master clock, i.e. the clock, which the clock, controlled by
5. the device, is synchronized to.
6. ? USABLE - Indicates that this source is an alternate master, which the clock, controlled by the device, can
7. potentially synchronize to, i.e. when the clock quality of the primary SyncE signal (SSM value) is lower,
8. when compared to the alternate master, controlled by the device, and the SSM value is accepted.
9. ? NOT\_USABLE - Indicates that this source is an alternate master, which the clock, controlled by the device,
10. has an operational connection to, but the SSM value is not accepted (i.e clock quality is not in the acceptable
11. range).
12. ? NOT\_IN\_USE - Indicates that this source is an alternate SyncE clock, which the clock controlled by the
13. device, has no operational connection to.
14. Note, master identity is not generally available unless ESMC is in use.
15. - sources, which contains list of SyncE sources per local-port-number, as reference to source MAC address, from
16. which the SyncE signal is received.

### 11.2.8 GNSS Configuration

1. If O-DU Yang if-feature GNSS is true and O-DU is connected to GNSS RX (e.g. having some specific non radio
2. interface, which is an example of local PRTC), then container gnss-config contains configuration parameters for the
3. GNSS:
4. - enable, which defines if GNSS receiver shall be enabled or not
5. - satellite-constellation-list, which defines list of constellations to be used to acquire synchronization:
6. ? GLONASS
7. ? GALILEO
8. ? BEIDOU
9. ? GPS

### 11.2.9 GNSS Status

1. If O-DU supports GNSS feature, then container gnss-status contains GNSS status parameters:
2. - reporting-period, which defines minimum time between gnss-status VES notification reports sent by O-DU.
3. - sync-source-status, which contains status of GNSS as timing source:
4. ? IN\_USE - Indicates that this source is the current master clock, i.e. the clock, which the clock, controlled by
5. the device, is synchronized to.
   1. ? USABLE - Indicates that this source is an alternate master, which the clock, controlled by the device, can
   2. potentially synchronize to, i.e. clock class and priority, announced by the master clock is lower, compared to
   3. those of the clock, controlled by the device, and the SSM value is accepted.
   4. ? NOT\_USABLE - Indicates that this source is an alternate master, which the clock, controlled by the device,
   5. has an operational connection to, but the class or priority of the master clock is higher or equal to those of
   6. the clock, controlled by the device, or the SSM value is not accepted.
   7. ? NOT\_IN\_USE - Indicates that this source is an alternate master, which the clock controlled by the device,
   8. has no operational connection to.
   9. - gnss-sync-status:

SYNCHRONIZED - Indicates that GNSS functionality is synchronized. ACQUIRING-SYNC - Indicates that GNSS functionality is acquiring sync.

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| 10 |  | ? |
| 11 |  | ? |
| 12 |  | ? |
| 13 |  | ? |
| 14 |  | ? |
| 15 |  |  |
| 16 | 11.3 |  |

</div>

ANTENNA-DISCONNECTED - Indicates that GNSS functionality has its antenna disconnected. BOOTING - Indicates that GNSS functionality is booting.

ANTENNA-SHORT-CIRCUIT - Indicates that GNSS functionality has an antenna short circuit.

## Synchronization master

### 11.3.1 Introduction

1. O-DU acts as synchronization master for fronthaul in LLS-C1/LLS-C2 deployments. Synchronization deployment
2. options are defined in the [9].
3. Prerequisite for O-DU to act as synchronization master is that O-DU's sync-state is LOCKED.
4. Container sync-master-capabilities contains information of O-DU capability to act as a synchronization master and
5. needed configuration parameters.
6. Following clauses contain main parameters required for O-DU acting as synchronization master. All parameters are
7. defined in o-ran-synchronization.yang, which shall be read together with this document.

### 11.3.2 Synchronization master capabilities

1. Container sync-master-capabilities contains information of O-DU capability to act as a synchronization master:
2. - ptp-sync-master-capabilities contains:
3. ? ptp-sync-master-supported:
4. TRUE - O-DU can serve as PTP synchronization master.
5. FALSE - O-DU cannot serve as PTP synchronization master.
6. - synce-sync-master-capabilities contains:
7. ? synce-sync-master-supported:
8. TRUE - O-DU can serve as SyncE synchronization master.
9. FALSE - O-DU cannot serve as SyncE synchronization master. 35
10. Note: [9] considers only SyncE + PTP.

### 11.3.3 Synchronization master configuration

1. Container sync-master-configuration contains configuration parameters for O-DU to act as a synchronization master.
2. - ptp-master-configuration contains configuration for PTP master:
3. ? ptp-master-enabled-local-port-numbers. This is reference to portNumber of ExternalEthernetPort to identify
4. the port, where the PTP is provided.
5. ? domain-number. This parameter indicates Domain Number for PTP announce messages.
6. ? multicast-mac-address. This parameter indicates Ethernet MAC address to be used as destination address
7. (forwardable, nonforwardable)
8. ? priority2. This parameter reflects value of the priority2 attribute in PTP Announce messages.
9. - synce-master-configuration contains configuration for SyncE master:
10. ? synce-master-enabled-local-port-numbers. This is reference to portNumber of ExternalEthernetPort to
11. identify the port, where the SyncE is provided.
12. Note! If configuration change is applied during O-DU run time, i.e. transmission to air is ongoing, configuration change

14 may cause service interruption.

### 11.3.4 Master PTP status

* 1. Container ptp-master-status contains
  2. - reporting-period, which defines minimum time between ptp-master-status VES notification reports sent by O-DU.
  3. - ptp-status containing PTP status and PTP message attributes. Refer to [i.2], [i.5] and o-ran-synchronization.yang. In
  4. case O-DU is synchronized using PTP, O-DU will forward PTP message attributes received from the sync-source
  5. to master port. In case O-DU is synchronized from GNSS, O-DU shall compute locally PTP message attributes to
  6. be sent on the PTP master port. 22

## 11.4 O-DU and O-RU synchronization relation with cell and carrier

1. activation / in-activation

### 11.4.1 Cell and carrier activation

1. O-DU sync-state and O-RU sync-state shall be LOCKED (or HOLDOVER) before O-DU is allowed to send gNB-DU
2. Configuration Update to CU, because it contains *Served NR Cells To Add/Modify/Delete IE* indicating cells which O-
3. CU can activate.
4. When O-DU receives GNB-CU CONFIGURATION UPDATE including *Cells to be Activated List Item IE* from CU,
5. O-DU shall check that O-DU sync-state and O-RU sync-state are LOCKED (or HOLDOVER) before O-DU configures
6. to O-RU the value of the parameter "active" at tx-array-carrier element / rx-array-carrier element to "ACTIVE" for the
7. carriers serving the cell(s) requested to be activated.
8. If O-DU sync-state is not LOCKED (and not HOLDOVER), then O-DU shall not activate any cells from *Cells to be*
9. *Activated List Item IE*. O-DU shall report back to CU *Cells failed to be activated list IE*.
10. If O-RU(s) sync-state is not LOCKED (and not HOLDOVER), then O-DU shall not activate carriers related to *Cells to*
11. *be Activated List Item IE,* to those O-RU(s) which sync-state is not LOCKED (and not HOLDOVER). O-DU shall
12. report back to CU *Cells failed to be activated list IE* for cells that O-DU did not activate carrier(s) to O-RU(s).

### 11.4.2 Cell and carrier in-activation

1. When O-DU sync-state transits to FREERUN state, O-DU shall disable all carriers in all O-RUs and report to CU in
2. gNB-DU Configuration update *Cells Status IE* all O-DU cells as inactive.
3. When O-DU receives notification from O-RU that O-RU sync-state transit to FREERUN, O-DU shall disable all
4. carriers in that O-RU and report to CU in gNB-DU Configuration update *Cells Status IE* all affected cells as inactive.
5. Refer to the [9] clause 9.4.1.3 and [2] clause 15.3.3 for more details.

7

# 8 12 Provisioning Management

## 12.1 Introduction

1. The requirement of Provisioning Management is described in clause 6.1 Provisioning Management Services of O1
2. Interface Specification [6]. This clause describes the Provisioning Management for O-DU specific aspects in addition to
3. [6].
4. There are 2 models to be considered for configuration of O-DU:
5. A) Hierarchical model
6. ? SMO configures O-DU with all instances which are necessary for O-DU and each O-RU under O-DU.
7. These instances are based on 3GPP SA5 data model specified in 3GPP TS 28.541 [8] and O-RAN WG4
8. Management Plane Specification [2] YANG data model.
9. Note: This spec focuses on the model as the first step.
10. B) Hybrid model
11. ? SMO configures O-DU with all instances which are necessary for O-DU and some O-RAN WG4
12. Management Plane Specification [2] data model instances which are necessary for each O-RU under O-
13. DU to be configured by O-DU (not by SMO). In such case, SMO configures O-RUs directly using
14. remaining [2] data model instances which don't need to be configured via O-DU.
15. Note: The categorize of [2] data model instances (either via O-DU or not) is for further study, and this
16. spec will reflect the agreement in future release. 26

## 12.2 Configuration for Hierarchical Model

### 12.2.1 Configuration Step

29

30 Configuration steps for hierarchical model are following:

31

1. **Step1: SMO configures the instances to O-DU**
2. Regarding the data model configured from SMO, there are 4 types:

###### 1. 3GPP SA5 data model

1. Following modules are necessary since these are related to O-DU. See TS 28.541 [8]
2. - \_3gpp-common-managed-element.yang
3. - \_3gpp-nr-nrm-gnbdufunction.yang
4. - \_3gpp-nr-nrm-nrcelldu.yang
5. - \_3gpp-nr-nrm-ep.yang
6. - \_3gpp-nr-nrm-nrsectorcarrier.yang
7. - \_3gpp-nr-nrm-bwp.yang
8. - \_3gpp-nr-nrm-beam.yang
9. - \_3gpp-nr-nrm-commonbeamformingfunction.yang

###### 2. O-RAN WG5 modified model based on 3GPP SA5

1. These are added prefix "o-ran-" to the module name of 3GPP SA5.
2. Note: Additional instances should be expected to be proposed to 3GPP for having alignment between 3GPP
3. and O-RAN WG5. Study on the model will be included in the next version of this specification.

###### 3. O-RAN WG4 data model

1. O-RAN WG4 data model instances which cannot be mapped from SA5 data model and cannot be created by
2. O-DU's internal logic, needs to be set from SMO to O-DU by aggregation model based on O-RAN WG4
3. data model. Which parameters needs to be configured from SMO is described in Annex D

###### 4. O-RAN WG5 original data model

1. O-RAN WG5 introduces original data model in order to configure instances which are related to fronthaul
2. operation at O-DU side (such as O-DU transmission/reception window). 3GPP does not assume non
3. integrated O-DU, so O-RAN WG5 introduces original model for supporting fronthaul operations.
4. Note: These modules are not expected to be proposed to 3GPP since these are for fronthaul management
5. operation and 3GPP does not assume fronthaul management. This version includes o-ran-wg5-delay-
6. management.yang. Whether other modules are necessary or not will be studied in the next version of this
7. specification.

25

26

1. **Step2: O-DU configures to O-RU**
2. O-DU configures to O-RU by several ways:
3. 1. Mapping 3GPP SA5 parameters to WG4 parameters.
4. 2. Creating WG4 parameters by internal logic
5. 3. Configuring based on aggregation model 32

33 These categories are specified in Annex D. 34

### 12.2.2 Aggregation model for configuration to O-RU via SMO

36

1. In order to configure WG4 data model to O-RU via O-DU from SMO, aggregation model which has a mount point is
2. used. The following is an example of o-ran-uplane-conf.yang:
3. Aggregation model: o-ran-agg-uplane-conf.yang is prepared

3

module o-ran-agg-uplane-conf { yang-version 1.1;

namespace "urn:o-ran:agg-uplane-conf:1.0"; prefix "o-ran-agg-uplane-conf";

import o-ran-aggregation-base { prefix "agg";

}

import ietf-yang-schema-mount { prefix "yangmnt";

}

organization "O-RAN Alliance"; contact

["www.o-ran.org](http://www.o-ran.org/)";

description

"This module defines the augmentation of the base aggregation module to configure o-ran-uplane-conf.yang instances to O-RUs.

==omitted==

augment "/agg:aggregated-o-ru/agg:aggregation" { container uplane-conf-model {

yangmnt:mount-point "uplane-conf-root" { description

"Root for o-ran-uplane-conf.yang model supported per O-RU instance";

}

}

}

}

4

5

6

7

8

9

10

11

12

13

14

15

16

17

18

19

20

21

22

23

24

25

26

27

28

29

30

31

32

33

34

35

36

1. SMO configures ietf-yang-schema-mount.yang in xml format for uplane configuration. 38

39

<schema-mounts>

<namespace>

<prefix> o-ran-uplane-conf</prefix>

<uri> urn:o-ran:uplane-conf:1.0</uri>

</namespace>

<mount-point>

<module> o-ran-agg-uplane-conf</module>

<label>uplane-conf-root</label>

<config>true</config>

<inline></inline>

</mount-point>

</schema-mounts>

40

41

42

43

44

45

46

47

48

49

50

51

1. SMO configures O-DU for each O-RU by using o-ran-aggregation-base.yang as below. **ru-instance** indicates O-RU to
2. be configured, with provided aggregated yang module.

54

<rpc xmlns="urn:ietf:params:xml:ns:netconf:base:1.0"...>

<edit-config>

<config>

<aggregated-o-ru xmlns="urn:o-ran:agg-uplane-conf:1.0">

<aggregation>

<ru-instance>(mfg-name)\_(model-name)\_(serial-num)</ru-instance>

<uplane-conf-model xmlns="urn:o-ran:agg-uplane-conf:1.0">

<uplane-conf-root>

<user-plane-configuration xmlns="urn:o-ran:uplane-conf:1.0">

<low-level-tx-links>

<name>low-level-tx-links1</name>

...

</rpc>

55

56

57

58

59

60

61

62

63

64

65

66

67

1. **id** in NRCellDU should be equal to **ru-instance-id** of O-RU which the NRCellDU belongs to in order to link between
2. NRCellDU and O-RU.
3. After configuring from SMO, O-DU configures to each O-RU based on configured instances from SMO. O-DU
4. distinguishes which O-RU to be configured by ru-instance at above xml from SMO. 6

## 12.3 Configuration for Hybrid model

1. This clause will be described in the next version of this specification. 9

## 12.4 Cell Activation

### 12.4.1 Hierarchical Model

1. After cell configuration and carrier configuration which are described at clause 12.2, SMO activates cells as Figure 9

![Generated by PlantUML]({{site.baseurl}}/assets/images/4d13439950c9.png)13

14

### 12.4.2 Hybrid Model

###### Figure 12-1: Cell activation procedure

1. This clause will be described at the next version.
2. Note: This subclause will follow O-RAN WG4 O1 Alignment WI output. 2

## 12.5 Notification aspect in hierarchical model

### 12.5.1 Introduction

1. There are 2 topics to be specified in this specification on notification aspect:
2. - Subscribing for the O-RU notification from the SMO
3. ? Subscription for the O-RU notification specified in WG4 M-Plane specification [2] shall be done
4. by the O-DU and corresponding parameters values shall be stored in the aggregated model of the
5. O-RU. The SMO shall subscribe for parameters of interest changes from the O-RU aggregated
6. model.
7. - Forwarding the notification from O-RU via O-DU
8. ? Some of the O-RU notification specified in WG4 M-Plane specification [2] should be forwarded to
9. the SMO via the O-DU. In such case the SMO will receive notifications from the O-DU, after
10. subscribing to the parameters of interest from the O-RU aggregated model.
11. Note: Some of the notifications are not necessary to be forwarded to the SMO via the O-DU since
12. it is enough to be noticed by the O-DU. In such case it is not needed for the SMO to make
13. subscription to those parameters in the O-RU aggregated model. 18
14. Note: In Hybrid model, no additional description is necessary in this spec since O-RU can send notification to SMO
15. directly (no need to send notification via O-DU). 21

### 12.5.2 Subscribing for O-RU notification from SMO

* 1. The O-DU is responsible for representing parameters of the O-RU using aggregated YANG model. The SMO is
  2. responsible of subscribing to the parameters of interest from aggregated model using subscription mechanism described
  3. in O1 Interface specification [6] clause 6.1.7 Subscription Control.

### 12.5.3 Forwarding the notification from O-RU via O-DU

* 1. Once the SMO is subscribed to the parameters of interest as described in clause 12.5.2 of this specification, the SMO
  2. will receive notification about each value change of parameter(s) in the O-DU.

![Generated by PlantUML]({{site.baseurl}}/assets/images/125d9df667d6.png)1

###### Figure 12-2: Notification to the SMO preceded by the O-RU notification

![Generated by PlantUML]({{site.baseurl}}/assets/images/7868cfa8f6bd.png)3

4

###### 5 Figure 12-3: Notification to the SMO preceded by the O-DU <get> operation

6

# 1 13 Fronthaul Delay Management Support

1. O-RAN WG4 [2] specifies delay management between O-DU and O-RU, where transmission of data over fronthaul is
2. governed by O-DU transmission/reception window and O-RU transmission/reception window. O-RU
3. transmission/reception window is decided by O-RU itself, and the relevant procedures and data models are specified in
4. WG4 spec [2]. This clause addresses how O-DU transmission/reception window can be determined and the relevant
5. procedures and data models. 7
6. O-DU may support the following alternatives:
7. A) Not Configured by O1
8. ? O-DU determines O-DU transmission/reception window. How O-DU determines the window is up to O-
9. DU, it may be hardcoded value at O-DU, or calculated from O-RU transmission/reception window and
10. FH delay based on O-RAN WG4 Management Plane Specification [2].
11. Note: WG4 IOT profile describes O-DU transmission/reception window values. O-DU
12. transmission/reception window can be hardcoded based on these values.
13. ? There is no impact to this specification, since O-DU transmission/reception window is determined at O-
14. DU.
15. B) Configured by O1
16. ? SMO configures the O-DU transmission/reception window by O1. The SMO configured parameters
17. should be taken by the O-DU as the maximum or minimum allowed values for the respective
18. transmission/reception window parameters. Having the SMO configure maximum or minimum allowed
19. values instead of the exact value, provides necessary flexibility for the O-DU implementation. SMO may
20. take into account O-RU reported window and FH delay to determine O-DU transmission/reception
21. window.
22. ? There is impact to this specification, where the details are described below. 25
23. Note: This version focuses on hierarchical model. Next version will include hybrid model since this scheme can be
24. extended to hybrid model. 28

###### Pre-condition

1. - Connection is established between SMO - O-DU / O-DU - O-RU

###### Post -condition

1. - Delay management between O-DU and O-RU is operational 33
2. Steps of Fronthaul delay management support are as follows:
3. 1. SMO sends <rpc><get><**window-determine-capability**> to O-DU for getting the capability of O-DU
4. 2. O-DU replies the rpc with O-DU's capability. There are 3 capabilities:
5. **Not-Configured**: O-DU transmission/reception window can be determined by O-DU
6. **Configured**: O-DU transmission/reception window can be determined by configured value from SMO
7. **Both**: O-DU has both capabilities, **Not-Configured** and **Configured**
   1. 3. SMO decides the method how O-DU transmission/reception window is determined from capability supported
   2. by O-DU
   3. 4. SMO sends <rpc><edit-config><**window-determine-method**> based on the decision of step3.
   4. 5. In parallel with step1,2,3, O-DU gets O-RU transmission/reception window based on O-RAN WG4
   5. specification [2]
   6. 6. If SMO directs **Not-Configured** as **window-determine-method** to O-DU at step4, O-DU
   7. transmission/reception window is determined by O-DU. How O-DU determines the window is up to O-DU, it

8 may be hardcoded value at O-DU, or calculated from O-RU transmission/reception window and FH delay

1. based on O-RAN WG4 CUS spec [9]. If SMO has pre-configured FH delay, SMO sends it in rpc **window-**
2. **determine-method** for O-DU to calculate O-DU transmission/reception window.
3. 7. If SMO directs **Configured** as **window-determine-method** to O-DU at step4,
4. 1. SMO sends <rpc><get><**o-ru-window**> and/or <**measured-transport-delay**> to O-DU as necessary
5. (SMO may have such information apriori and may not need to get them from O-DU).
6. 2. SMO determines O-DU transmission/reception window taking into account the following WG4
7. instances:
8. ? FH delay (pre-defined or measured):

17 - **t12-min, t12-max,**

###### - t34-min, t-34max

1. ? O-RU transmission/reception window:
2. - **t2a-min-up, t2a-max-up**
3. - **t2a-min-cp-dl, t2a-max-cp-dl**
4. - **tcp-adv-dl**
5. - **ta3-min, ta3-max**
6. - **t2a-min-cp-ul, t2a-max-cp-ul**
7. SMO determines the following parameters for O-DU transmission/reception window:

###### ? maximum-t1a-max-up:

1. ? the maximum allowed value of T1a\_max\_up

###### ? minimum-t1a-min-up:

1. ? the minimum allowed value of T1a\_min\_up

###### ? maximum-t1a-max-cp-dl:

1. ? the maximum allowed value of T1a\_max\_cp\_dl

###### ? minimum-t1a-min-cp-dl:

1. ? the minimum allowed value of T1a\_min\_cp\_dl

###### ? maximum-t1a-max-cp-ul:

1. ? the maximum allowed value of T1a\_max\_cp\_ul

###### ? minimum-t1a-min-cp-ul:

1. ? the minimum allowed value of T1a\_min\_cp\_ul
2. ? **maximum-ta4-max**:
   1. ? the minimum allowed value of Ta4\_max
   2. ? **minimum-ta4-min**:
   3. ? the maximum allowed value of Ta4\_min
   4. Note: The above maximum or minimum allowed values for the respective O-DU transmission/reception
   5. window parameters that the SMO determines should satisfy the relations specified in 4.4.3 U-Plane/ C-
   6. Plane Timing in O-RAN WG4 CUS-Plane Specification [9].
   7. 3. SMO sends <rpc><edit-config><**o-du-window**> with determined maximum or minimum allowed
   8. values for the respective O-DU transmission/reception window parameters at the previous step.
   9. 4. O-DU sets O-DU transmission/reception window based on **o-du-window** from SMO.
   10. 8. If O-RU has the capability to set O-RU transmission/reception window adaptively as specified at 7.8 O-RU
   11. Adaptive Delay Capability in O-RAN WG4 M-Plane spec, O-DU sends O-DU transmission/reception window
   12. and FH delay to O-RU. O-RU may set O-RU transmission/reception window adaptively based on O-DU
   13. transmission/reception window and FH delay.
   14. 9. Delay management between O-DU and O-RU is operational 15

16

17

![Generated by PlantUML]({{site.baseurl}}/assets/images/7e4d2dea40a3.png)1

###### 2 Figure 13-1: Delay Management Configuration Procedure

3

# 1 14 Trace Management Services

## 14.1 Introduction

1. Trace Management Service for O-DU is aligned with O1 Interface Specification [6], clause 6.4.

## 14.2 Call Trace

1. Call Trace for for O-DU is aligned with O1 Interface Specification [6], clause 6.4.1. 6

## 14.3 Minimization of Drive Testing (MDT)

1. Minimization of Drive Testing for O-DU is aligned with O1 Interface Specification [6], clause 6.4.2. 9

## 14.4 Radio Link Failure (RLF)

1. Radio Link Failure for O-DU is aligned with O1 Interface Specification [6], clause 6.4.3. 12

## 14.5 RRC Connection Establishment Failure (RCEF)

1. RRC Connection Establishment Failure for O-DU is aligned with O1 Interface Specification [6], clause 6.4.4. 15

## 14.6 Trace Control

1. Trace Control for O-DU is aligned with O1 Interface Specification [6], clause 6.4.5. 18

## 14.7 Streaming Trace

1. Streaming Trace for O-DU is aligned with O1 Interface Specification [6], clause 6.4.6. 21

# 22 15 Shared O-RU

## 15.1 Introduction

1. A Shared O-RU deployment allows one or more operators to connect their O-DUs to an O-RU and share its resources.
2. An O-DU should simultaneously support connections to non-Shared O-RUs, Multi O-DU O-RUs and/or Multi-Operator
3. O-RUs, dependent on which Shared O-RU features the O-DU supports.
4. Refer to [2] for more details of Shared O-RU.

## 15.2 Single Operator Shared O-RU

### 15.2.1 O-DU(s) roles

1. In Single Operator Shared O-RU deployment, O-DUs do not have specific access privilege roles as in Multi-Operator
2. Shared O-RU. O-DUs use the same access control groups as in non-Shared O-RU.
3. In hierarchical deployment, O-DUs all use the same access control group "sudo" toward the Multi O-DU O-RU. One O-
4. DU acts as primary O-DU responsible for configuring general OAM related configuration, supervision per O-DU,
5. NETCONF call home and managing general OAM functions.
6. Refer to clause 12 and [2] clause 6.5 for further details.

9

### 15.2.2 Configuring O-RU

#### 15.2.2.1 Configuring O-RU general OAM related configuration

1. In hierarchical deployment, it is recommended that SMO configures general OAM related configuration for each Multi
2. O-DU O-RU using O1 toward only one sharing O-DU (primary). That O-DU then consequently uses the configuration
3. data to configure the Multi O-DU O-RU over its fronthaul interface. If SMO configures the same Multi O-DU O-RU
4. through more than one sharing O-DU, it is recommended that SMO validates outside of the O-DUs that the
5. configuration is aligned in all the sharing O-DUs to avoid configuration discrepancy. How validation is done is out of
6. the scope of the present document.
7. NOTE: O-RU does not check which O-DU(s) is configuring it, nor does it validate if e.g., same parameter is
8. configured to different allowed values by O-DUs.
9. In hybrid deployment, it is recommended that SMO directly configures all general OAM related configuration for each
10. Multi O-DU O-RU over its Fronthaul M-plane interface.
11. Refer to clause 12 for further details. 23

#### 15.2.2.2 Managing O-RU general OAM related functions

1. In hierarchical deployment, it is recommended that SMO manages Multi O-DU O-RU general OAM functions using O1
2. toward only one sharing O-DU (primary), for example: software management, file Management, synchronization
3. aspects, antenna line devices, operational aspects of external IO, O-RU connectors, beamforming configuration update,
4. user account provisioning. If SMO manages general OAM functions for the same Multi O-DU O-RU through more than
5. one sharing O-DU, it is recommended that SMO co-ordinates the O-DUs that the management is aligned in all of the
6. sharing O-DUs to avoid discrepancy. How validation is done is out of the scope of the present document.
7. In hybrid deployment, it is recommended that SMO directly manages all Multi O-DU O-RU general OAM functions for
8. each Multi O-DU O-RU over its Fronthaul M-plane interface.
9. O-DUs may manage other O-RU functions independently e.g., NETCONF connection establishment, performance
10. management, fault management, static configuration for PRACH and SRS.
11. Refer to clause 12 and [2] clauses 8, 12, 13, 14.4, 14.5, 14.6, 15.4 for further details.

36

#### 15.2.2.3 Configuring carrier configuration

1. SMO shall configure only the cells that the O-DU serves and their corresponding carriers over O1 towards that O-DU.
2. The O-DU shall then consequently configure the corresponding tx/rx-array-carriers on the Multi O-DU O-RUs over
3. their fronthaul interfaces.

41

#### 15.2.2.4 Carrier state management

1. An O-DU shall only activate or deactivate the tx/rx-array-carriers on the Shared O-RU that belongs to the cells that the
2. O-DU serves.
3. When an O-DU receive a notification from a Shared O-RU indicating tx/rx-array-carrier state change, the O-DU shall
4. treat the notification in the same way as for a non-shared O-RU, i.e., O-DU shall ignore the notifications that do not
5. relate to the O-DU cell's NRSectorCarriers. 7

### 15.2.3 Supervision Monitoring per O-DU

* 1. In hierarchical deployment, SMO may configure SecondaryODuInfo including attribute *supervisionPerODu* over O1 on
  2. the primary O-DU. The primary O-DU shall then consequently configure Shared Resource Operator O-DU supervision
  3. on each Shared O-RU.
  4. In hybrid deployment, SMO instead may configure Shared Resource Operator O-DU supervision directly on each
  5. Shared O-RU over its Fronthaul M-plane interface.
  6. Refer to [2] clause 6.7, 19.3.4 for further details.

15

### 15.2.4 NETCONF call home

1. In hierarchical deployment, SMO may configure the SecondaryODuInfo including attribute *callHomeClientInfo* over
2. O1 only on the primary O-DU. If *callHomeClientInfo* has been configured, the primary O-DU shall then consequently
3. configure call home addresses on each Shared O-RU.
4. In hybrid deployment, SMO instead may configure call home addresses directly on each Shared O-RU over its
5. Fronthaul M-plane interface. 22

## 15.3 Multi Operator Shared O-RU

### 15.3.1 O-DU(s) roles

1. O-DU possible roles towards a Multi Operator Shared O-RU are defined in [2]. O-DU role towards all connected Multi
2. Operator Shared O-RUs is configured over O1 by setting *oDuRoleOfSharedORu* to one of the values:
3. "HOST\_AND\_SRO", "HOST" or "SRO".
4. When O-DU role is set to "HOST\_AND\_SRO", the O-DU simultaneously perform the Shared O-RU Host role and the
5. Shared Resource Operator roles towards all connected Multi Operator Shared O-RUs.
6. When O-DU role is set to "HOST", the O-DU only performs the Shared O-RU Host role, equaling Neutral Host. That
7. O-DU configures and manages all connected Multi Operator Shared O-RUs but does not have carriers in those O-RUs.
8. For each Multi Operator Shared O-RU, at most only one connected O-DU should perform the Shared O-RU Host role.
9. If no connected O-DU performs the Shared O-RU Host role, it is assumed that an SMO performs that role, acting as
10. Neutral Host. However, the scenario in which the Neutral Host is provided by SMO is not considered in this version of
11. the document.
12. In a hierarchical deployment containing Multi Operator Shared O-RUs, the O-DU performing the Shared O-RU Host
13. role uses the access control group "sudo" toward all connected Multi Operator Shared O-RUs. The O-DUs performing
14. only the Shared Resource Operator role (i.e., not together with the Shared O-RU Host role) use the access control group
15. "carrier" towards all connected Multi Operator Shared O-RUs.
16. In a hybrid deployment containing Multi Operator Shared O-RUs, if an O-DU performs the Shared O-RU Host role, it
17. uses the access control group "hybrid-odu" toward the Multi O-DU O-RU. The O-DUs performing only the Shared
18. Resource Operator role (i.e., not together with the Shared O-RU Host role) use the access control group "carrier"
19. towards all connected Multi Operator Shared O-RUs.
20. Following sub-clauses define what shall be configured over O1 to O-DU to realize O-DU functions defined in [2]. 4

### 15.3.2 Configuring O-RU general OAM related configuration

1. In hierarchical deployment, it is recommended that SMO configures O-RU general OAM related configuration over O1
2. toward only the single Shared O-RU Host O-DU. The Shared O-RU Host O-DU shall then consequently configure
3. general OAM related configuration on the Multi Operator O-RUs over their fronthaul interfaces.
4. In hybrid deployment, it is recommended that SMO directly configures general OAM related configuration for each
5. Multi O-DU O-RU over its Fronthaul M-plane interface. 11

### 15.3.3 Managing O-RU general OAM related functions

1. In hierarchical deployment, it is recommended that SMO manages O-RU general OAM related functions over O1
2. toward only the single shared O-RU Host O-DU. The Shared O-RU Host O-DU shall then consequently manage
3. general OAM related functions on the Multi Operator O-RUs over their fronthaul interfaces.
4. In hybrid deployment, it is recommended that SMO directly manages Multi O-DU O-RU general OAM functions for
5. each Multi O-DU O-RU over its Fronthaul M-plane interface. 18

### 15.3.4 NETCONF server user account provisioning for shared resource

1. operators
2. In hierarchical deployment, SMO shall configure the SecondaryODuInfo over O1 only on the Shared O-RU Host O-
3. DU. The Shared O-RU Host O-DU shall then consequently configure Shared Resource Operator user accounts with
4. "carrier" access privilege and *sro-id=sharedResourceOperatorId* on the connected Multi Operator O-RUs over their
5. fronthaul interfaces.
6. NOTE: Value of each *sharedResourceOperatorId* shall be unique and associated with a particular Shared Resource
7. Operator only.
8. In hybrid deployment, SMO instead configures Shared Resource Operator user accounts with "carrier" access privilege
9. and *sro-id=sharedResourceOperatorId* directly on each Multi Operator O-RU over its Fronthaul M-plane interface.
10. Refer to [2] clause 19.3.1 for further details.

30

### 15.3.5 NETCONF call home

1. In hierarchical deployment, SMO may configure the SecondaryODuInfo including attribute *callHomeClientInfo* over
2. O1 only on the Shared O-RU Host O-DU. If *callHomeClientInfo* has been configured, the Shared O-RU Host O-DU
3. shall then consequently configure call home addresses on each Shared O-RU.
4. In hybrid deployment, SMO instead may configure call home addresses directly on each Shared O-RU using its
5. Fronthaul M-plane interface.
6. Refer to [2] clause 19.3.2 for further details.

38

### 15.3.6 Enhanced sro-id based NETCONF access control

1. SMO shall configure the attribute *sharedResourceOperatorId* over O1 with a unique value on each Shared Resource
2. Operator O-DU. The Shared Resource Operator O-DU shall then consequently use the value of
3. *sharedResourceOperatorId* for the user account of the NETCONF client with sro-id configured on the Multi Operator
4. Shared O-RUs.
5. Refer to [2] clause 19.3.3 for further details.

7

### 15.3.7 Supervision Monitoring per O-DU

1. In hierarchical deployment, SMO may configure SecondaryODuInfo including attribute *supervisionPerODu* over O1 on
2. the Shared O-RU Host. The Shared O-RU Host shall then consequently configure Shared Resource Operator O-DU
3. supervision on each Shared O-RU.
4. In hybrid deployment, SMO instead may configure Shared Resource Operator O-DU supervision directly on each
5. Shared O-RU using its Fronthaul M-plane interface.
6. Refer to [2] clause 6.7, 19.3.4 for further details.

15

### 15.3.8 Processing element configuration

1. Shared O-RU Host O-DU shall use the value of each Shared Resource Operator O-DUs *sharedResourceOperatorId*
2. attribute to configure a particular O-RU's ru-element list entry as being uniquely associated with a particular Shared
3. Resource Operator. Shared O-RU Host O-DU gets *sharedResourceOperatorId* as defined in 13.3.6.
4. Refer to [2] clause 19.4.2.

21

### 15.3.9 Carrier Partitioning and Configuration in Shared O-RU

1. Only Shared O-RU Host O-DU has access privileges over Fronthaul M-plane to create tx/rx-array-carrier configuration
2. in the Shared O-RU.
3. NOTE: How Shared Resource Operators agree configuration partitioning is outside the scope of the present
4. document. It is assumed that operators mutually agree partitioning.
5. NOTE: How Shared Resource Operators configurations are validated is outside the scope of the present document.
6. It is assumed that operators mutually validate as part of configuration partitioning.
7. NOTE: How Shared Resource Operators agree eAxC-IDs partitioning is out of the scope of the present document. It
8. is assumed that operators mutually agree partitioning.
9. Refer to clause 12.1 and [2] clause 19.6.1, 19.11.

32

### 15.3.10 Notification of configuration updates

1. A Shared Resource Operator O-DU may configure subscriptions to receive notifications of modifications to a connected
2. shared O-RU's datastore, according to the defined NETCONF access control privileges for the NETCONF client of that
3. Shared Resource Operator.
4. Refer to clause 12 and [2] clause 19.6.2 for further details.

38

### 15.3.11 Shared O-RU Reset Co-ordination

1. Co-ordination of Shared O-RU reset is outside the scope of the current specification.
2. NOTE: It is assumed that operator mutually agree time when Shared O-RU Host O-DU reset Shared O-RU.
3. NOTE: It is assumed that SMO(s) disable cell(s) in a controlled manner before Shared O-RU reset.
4. Refer to [2] clause 19.10.1 for further details.

6

### 15.3.12 Locked administrative state

1. Co-ordination of Shared O-RU administrate state change to locked is outside the scope of the current specification.
2. NOTE: It is assumed that operators mutually agree time when Shared O-RU Host O-DU change Shared O-RU
3. administrative state to locked.
4. NOTE: It is assumed that SMO(s) disable cell(s) in a controlled manner before Shared O-RU state is changed to
5. locked.
6. Refer to [2] clause 19.10.2 for further details.

14

### 15.3.13 Antenna calibration

1. Co-ordination of Shared O-RU antenna calibration timing is outside the scope of the current specification.
2. NOTE: It is assumed that operators mutually agree timing for Shared O-RU antenna calibrations.
3. Refer to [2] clause 19.10.3 for further details.

19

### 15.3.14 Shared O-RU with antenna line devices

1. The Shared O-RU Host O-DU is responsible for configuring and controlling antenna line devices.
2. NOTE: It is assumed that operators mutually share antenna line devices configuration and co-ordinate antenna line
3. operations e.g., remote electrical tilt.

24 Refer to [2] clause 14.4, 19.11.6.

25

### 15.3.15 Shared O-RU operation in combination with shared cell

1. The Shared O-RU Host O-DU is responsible for configuring shared cell copy and combine parameters on behalf of each
2. Shared Resource Operator O-DU.
3. NOTE: How Shared Resource Operators agree Shared Cell configuration of copy and combine is outside the scope
4. of the present document. It is assumed that operators mutually agree partitioning.
5. Refer to [2] clause 17, 19.14 for further details.

32

## 15.4 Content of Fronthaul M-plane ODU ID

1. O-DU uses the value of the attribute *oDuIdForSharedORu* as the Fronthaul M-plane odu-id, which is a free text string
2. and can be set to e.g.., concatenated gNBId and gNBDUId. 4

## 15.5 Content of Fronthaul M-plane SRO ID

1. O-DU uses the value of the attribute *sharedResourceOperatorId* as the Fronthaul M-plane sro-id*,* which is a free text
2. string and can be set to e.g.., PLMN ID. 8

# 9 16 Information Model definition

## 16.1 Imported and associated information entities

### 16.1.1 Imported information entities and local labels

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Label reference** | **Local label** |
| 3GPP TS 28.622 [13], IOC, Top | Top |
| 3GPP TS 28.541 [8], IOC, GNBDUFunction | GNBDUFunction |

</div>

12

### 13 16.1.2 Associated information entities and local labels

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Label reference** | **Local label** |
| TS 28.541 [8], IOC, GNBDUFunction | GNBDUFunction |

</div>

14

## 16.2 Class diagrams

### ![Generated by PlantUML]({{site.baseurl}}/assets/images/eb85732ee764.png)16.2.1 Relationships

17

18

###### Figure 16-1: SharedOruConfiguration containment

20

![Generated by PlantUML]({{site.baseurl}}/assets/images/325e81b79acb.png)1

###### 2 Figure 16-2: RF Channel Reconfiguration (TRx Control) (NESPolicy) containment

3

![Generated by PlantUML]({{site.baseurl}}/assets/images/ab7e1b01aebc.png)4

5

6

### 7 16.2.2 Inheritance

8

9

10

11

###### Figure 16-3: AdvancedSleepMode (NESPolicy) containment

![Generated by PlantUML]({{site.baseurl}}/assets/images/7e1422052350.png)

**Figure 16-4: SharedOruConfiguration inheritance**

![Generated by PlantUML]({{site.baseurl}}/assets/images/45cedf075c45.png)1

###### 2 Figure 16-5: Network Energy Saving (NESPolicy) inheritance

3

## 16.3 Class definitions

### 16.3.1 SharedOruConfiguration <<IOC>>

#### 16.3.1.1 Definition

1. This Information Object Class (IOC) provides attribute(s) that are needed to configure O-DU to work with Shared O-
2. RU.

#### 16.3.1.2 Attributes

1. The SharedOruConfiguration IOC includes attributes inherited from Top IOC (defined in 3GPP TS 28.622, clause
2. 4.3.29) and contain the following attributes:

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **Attribute name** | **S** | **isReadable** | **isWritable** | **isInvariant** | **isNotifyable** |
| *oDuRoleOfSharedORu* | CM | T | T | F | T |
| *sharedResourceOperatorId* | CM | T | T | F | T |
| *oDuIdForSharedORu* | CM | T | T | F | T |
| *secondaryODuInfoList* | CM | T | T | F | T |

</div>

12

#### 13 16.3.1.3 Attribute constraints

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Name** | **Definition** |
| oDuRoleOfSharedORu CM support qualifier | Condition: When O-RU supports Multiple Operator Shared O-RU configuration and O-RU is configured to work in shared O-RU mode, this parameter is mandatory |
| sharedResourceOperatorId CM support qualifier | Condition: When O-RU supports Multiple Operator Shared O-RU configuration and O-RU is configured to work in shared O-RU mode, this parameter is mandatory |
| oDuIdForSharedORu CM support qualifier | Condition: When O-RU supports Multiple Operator Shared O-RU or Shared O-RU Multi O-DU configuration and O-RU is configured to work in shared O-RU mode, this parameter  is mandatory |
| secondaryODuInfoList CM support qualifier | Condition: This parameter is mandatory when oDuRoleOfSharedORu is HOST or HOST\_AND\_SRO in Multi Operator Shared O-RU or primary in Single Operator Shared O-RU. When the role of the O-DU is SRO or  secondary, this parameter is not used. |

</div>

14

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| 1 | 16.3.1.4 | Notifications |
| 2 | None |  |
| 3 | 16.3.1.5 | State diagram |
| 4 | None |  |

</div>

### 16.3.2 SecondaryODuInfo <<dataType>>

#### 16.3.2.1 Definition

1. "This data type provides fields that are needed to configure an O-DU that performs the Shared Resource Operator
2. (SRO) role. The O-DU that has the Shared O-RU Host role configures this data on the Shared O-RUs connected to the
3. SRO O-DU."

#### 16.3.2.2 Attributes

1. The SecondaryODuInfo data type contains the following fields:

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **Attribute name** | **S** | **isReadable** | **isWritable** | **isInvariant** | **isNotifyable** |
| *oDuIdForSharedORu* | M | T | T | F | T |
| *sharedResourceOperatorId* | CM | T | T | F | T |
| *accessControlGroup* | CM | T | T | F | T |
| *supervisionPerODu* | O | T | T | F | T |
| *callHomeClientInfo* | O | T | T | F | T |
| *sharedORuList* | O | T | T | F | T |

</div>

12

13 16.3.2.3 Attribute constraints

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Name** | **Definition** |
| *sharedResourceOperatorId* CM support qualifier | Condition: When O-RU supports Multiple Operator Shared O-  RU configuration and O-RU is configured to work in shared O- RU mode, this parameter is mandatory |
| *accessControlGroup* CM support qualifier | Condition: When O-RU supports Multiple Operator Shared O- RU configuration and O-RU is configured to work in shared O-  RU mode, this parameter is mandatory |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| 14 |  | |
| 15 | 16.3.2.4 | Notifications |
| 16 | None |  |
| 17 | 16.3.2.5 | State diagram |
| 18 | None |  |

</div>

### 16.3.3 CallHomeClientInfo <<dataType>>

#### 16.3.3.1 Definition

1. "This data type provides fields that are needed to configure a call home address for an O-DU that performs the Shared
2. Resource Operator (SRO) role. The O-DU that has the Shared O-RU Host role configures this data on the Shared O-
3. RUs connected to the SRO O-DU."

#### 16.3.3.2 Attributes

1. The callHomeClientInfo data type contains the following fields:

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **Attribute name** | **S** | **isReadable** | **isWritable** | **isInvariant** | **isNotifyable** |
| *host* | O | T | T | F | T |
| *portNumber* | O | T | T | F | T |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| 1 |  | |
| 2 | 16.3.3.3 | Attribute constraints |
| 3 | None |  |
| 4 | 16.3.3.4 | Notifications |
| 5 | None |  |
| 6 | 16.3.3.5 | State diagram |
| 7 | None |  |

</div>

### 8 16.3.4 NESPolicy <<IOC>>

9

#### 10 16.3.4.1 Definition

11

1. This Information Object Class (IOC) is O-RAN specific class and provides attribute(s) that are needed to provide the
2. policy or policies to O-DU to enable or disable the energy saving uses (TRx Control (RF Channel Reconfiguration) and
3. Advanced Sleep Mode) in O-RU. 15

#### 16 16.3.4.2 Attributes

17

1. NESPolicy IOC includes attributes inherited from Top IOC (defined in 3GPP TS 28.622, clause 4.3.29) and contains the
2. following attributes that are intended to be used for O-RAN specific NES use cases: 20

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| Attribute name | S | isReadable | isWritable | isInvariant | isNotifyable |
| trxCtrlPolicyList | O | T | T | F | T |
| asmPolicyList | O | T | T | F | T |

</div>

21

## 16.4 Attribute definitions

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Attribute Name** | **Documentation and Allowed Values** | **Properties** |
| *oDuRoleOfSharedORu* | This attribute defines the role of O-DU.  When O-DU role is set to "HOST\_AND\_SRO", O-DU simultaneously perform the Shared O-RU Host role and the Shared Resource Operator roles.  allowedValues: "HOST\_AND\_SRO", "HOST",  "SRO". | type: enum multiplicity: 0..1 isOrdered: N/A isUnique: N/A defaultValue: None isNullable: False |
| *sharedResourceOperatorI d* | This parameter defines Shared Resource Operator ID of O-DUs, which Shared Resource Operator O-DU shall use for the user account of the NETCONF client with sro-id configured. When the role of the O-DU is HOST, this attribute is not used. | type: string multiplicity: 0..1 isOrdered: N/A isUnique: N/A defaultValue: None isNullable: True |
| *oDuIdForSharedORu* | This parameter defines O-DUs own *oduidforsharedoru* to be used for fronthaul O-DU ID. | type: string multiplicity: 0..1 isOrdered: N/A isUnique: N/A defaultValue: None isNullable: False |
| *accessControlGroup* | Defines the Netconf access control group per SRO O-DU, which is then created by the Shared O-RU Host in the Shared O-RUs. If the role for a O-DU already exists, then that role is updated with the new enum "carrier". When the role of the O-DU is SRO, this attribute is not used. | type: string multiplicity: 0..1 isOrdered: N/A isUnique: N/A defaultValue: None isNullable: False |
| *supervisionPerODu* | Operator may activate O-RU supervision per Shared Resource Operator O-DU by configuring over O1 *supervisionperodu* to *"true"*, which triggers Shared O-RU Host in Multi OperatorShared O-RU or primary O-DU in Single Operator Shared O-RU to configure odu-id parameter in the per-odu-monitoring over Fronthaul M- plane. When the role of the O-DU is SRO in Multi Operator  Shared O-RU or secondary in Single Operator Shared O- RU, this attribute is not used. | type: boolean multiplicity: 1 isOrdered: N/A isUnique: N/A defaultValue: None isNullable: False |
| *secondaryODuInfoList* | List containing information about all SRO O-DUs or secondary O-DUs, which shared O-RU Host in Multi Operator Shared O-RU or primary O-DU in Single Operarator Shared O-RU shall use to configure the Shared O-RUs included in the *sharedORuList* field. | type: SecondaryODuInfo multiplicity: 0..\* isOrdered: N/A isUnique: N/A defaultValue: None isNullable: False |
| *callHomeClientInfo* | In Multi Operator Shared O-RU, over O1 is send only to the Shared O-RU Host O-DU *callhomeclientinfo*, which Shared O-RU Host O-DU shall use to configure in each Shared O-RU multiple call home addresses towards O-DU.  In Single Operator Shared O-RU, over O1 is send only to the primary O-DU *callhomeclientinfo*, which primary O-DU  shall use to configure in each Shared O-RU multiple call home addresses towards O-DU. | type: CallHomeClientInfo multiplicity: 0..1 isOrdered: N/A isUnique: N/A defaultValue: None isNullable: False |
| *sharedORuList* | In Multi Operator Shared O-RU, list of Shared O-RU identities connected to the Shared O-RU Host O-DU and Shared Resource Operator O-DU  In Single Operator Shared O-RU, list of Shared O-RU  identities connected to the primary O-DU and secondary O-DU. | type: string multiplicity: 0..\* isOrdered: N/A isUnique: N/A defaultValue: None isNullable: False |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| *host* | Represents an IP address or DNS domain name (see RFC6991). | type: string multiplicity: 0..1 isOrdered: N/A isUnique: N/A defaultValue: None isNullable: False |
| *portNumber* | Represents a 16-bit port number of an  Internet transport-layer protocol (see RFC6991). | type: integer multiplicity: 0..1 isOrdered: N/A isUnique: N/A defaultValue: None isNullable: False |

</div>

1

# 2 17 O-DU behavior for 3GPP conformance testing

## 17.1 Introduction

1. This clause describes O-DU behavior to evaluate O-RU performance based on the 3GPP standardized conformance
2. tests.
3. To guarantee the minimum performance of gNB, O-RAN WG5 follows tests definition from [16], [17], and [18].
4. Any points not mentioned in this clause are expected to be in accordance with the corresponding test specifications in
5. [16], [17], and [18].
6. Note: The present version of this specification considers only PNF-deployed O-DU.

## 17.2 O-DU behavior for O-RU uplink evaluation

1. O-DU behavior for uplink tests specified in clauses 7 and 8 in [18] is as follows:
2. Step 1: O-DU receives a request, by O1, to conduct a test with the configuration parameters defined in Table 12 of
3. Annex E.
4. Step 2: In the test mode, when receiving signals from O-RU for a certain measurement period, O-DU counts
5. measurements shown in Table 12 of Annex E.
6. Step 3: O-DU reports the measurements results by O1 as PM counters specified in Annex A. After finishing reporting,
7. O-DU exits the test mode.
8. Note: A test of "Receiver spurious emissions" defined in clause 7.6 in [18] is not applicable to the above steps as it is
9. not measured at the O-DU.

## 17.3 O-DU behavior for O-RU downlink evaluation

1. O-DU behavior for downlink tests specified in clause 6 in [18] is as follows:
2. Step 1: O-DU receives a request, by O1, to conduct a test with the configuration parameters defined in Table 13 of
3. Annex E.
4. Step 2: In the test mode, O-DU generates test data and sends it to O-RU over CU-Plane of the Open Fronthaul interface.
5. After sending test data, the O-DU exits the test mode.
6. Note: O-DU doesn't measure parameters in downlink tests because test results will be collected by the measurement
7. equipment such as a spectrum analyzer. 28

# 1 Annex A (informative):

2 Counter definition

## A.1 NR F1 Interface performance counters

### A.1.1 UL PDCP PDUs transmitted via F1-U UL GTP-U tunnel

#### A.1.1.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.F1.UlPdcpPduTxF1UUl |
| Description | This counter provides the number of the UL PDCP PDUs transmitted via F1-U UL GTP-U tunnel.  It is optional counter for O-DU. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by 1 whenever the UL PDCP PDU is transmitted via F1 U UL GTP-u tunnel when the QCI or the 5QI of the UL PDCP PDU is group of subcounter.*Pmgroup.* |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.F1.UlPdcpPduTxF1UUl.*Pmgroup* where  *PmGroup* is PmCountGroup number: 0: #0  1: #1  ...  19: #19 |
| Measurement Object Class | gNBDUFunction |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

6

### A.1.2 UL PDCP PDU volume transmitted via F1-U UL GTP-U tunnel

#### A.1.2.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.F1.UlPdcpPduVolTxF1UUl |
| Description | This counter provides the UL PDCP PDU volume transmitted via F1-U UL GTP-U tunnel.  NOTE: Measurement Object Class, gNBDUFunction, is different to A.1.14.  It is optional counter for O-DU. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is accumulated by the volume of UL PDCP PDU whenever the UL PDCP PDU is transmitted via F1 U UL GTP-u tunnel when the QCI or the 5QI of the UL PDCP PDU is group of  subcounter.*Pmgroup.* |
| Measurement Result | kilobyte (U32) |
| Measurement Type | OR.F1.UlPdcpPduVolTxF1UUl.*Pmgroup* where  *PmGroup* is PmCountGroup number: 0: #0  1: #1  ...  19: #19 |
| Measurement Object Class | gNBDUFunction |
| Switching Technology | Packet Switched |
| Generation | 5GS |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

1

### A.1.3 Maximum UL PDCP PDU volume transmitted via F1-U UL GTP-U

1. tunnel

#### A.1.3.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.F1.MaxUlPdcpPduVolTxF1UUl |
| Description | This counter provides the maximum UL PDCP PDU volume transmitted during 1s via F1-U UL GTP-U tunnel.  It is optional counter for O-DU. |
| Collection Method | SI (Status Inspection) |
| Condition | Measurement subcounter is the maximum value of x when the QCI or the 5QI of the UL PDCP PDU is group of subcounter.*Pmgroup*. It is assigned with period of 1s by the volume x, if x is bigger than previously counted volume.  x is the volume of UL PDCP PDU for every 1 second. x is incremented by the volume of UL PDCP PDU whenever the UL PDCP PDU is transmitted via F1 U UL GTP-u tunnel for a period of 1 second. |
| Measurement Result | kilobyte (U32) |
| Measurement Type | OR.F1.MaxUlPdcpPduVolTxF1UUl.*Pmgroup* where  *PmGroup* is PmCountGroup number: 0: #0  1: #1  ... 19: #19 |
| Measurement Object Class | gNBDUFunction |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

5

### A.1.4 Minimum UL PDCP PDU volume transmitted via F1-U UL GTP-U tunnel

#### A.1.4.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.F1.MinUlPdcpPduVolTxF1U |
| Description | This counter provides the minimum UL PDCP PDU volume transmitted during 1s via F1-U UL GTP-U tunnel.  It is optional counter for O-DU. |
| Collection Method | SI (Status Inspection) |
| Condition | Measurement subcounter is the minimum value of x when the QCI or the 5QI of the UL PDCP PDU is group of subcounter.*Pmgroup.* It is assigned with period of 1s by the volume x, if x is smaller than previously counted volume.  x is the volume of UL PDCP PDU for every 1 second. x is incremented by the volume of UL PDCP PDU whenever the UL PDCP PDU is  transmitted via F1 U UL GTP-u tunnel for a period of 1 second. |
| Measurement Result | kilobyte (U32) |
| Measurement Type | OR.F1.MinUlPdcpPduVolTxF1U.*Pmgroup* where  *PmGroup* is PmCountGroup number: 0: #0  1: #1  ... 19: #19 |
| Measurement Object Class | gNBDUFunction |
| Switching Technology | Packet Switched |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

1

### A.1.5 DL PDCP PDUs received via F1-U DL GTP-U tunnel

#### A.1.5.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.F1.DlPdcpPduRxF1UDl |
| Description | This counter provides the number of the DL PDCP PDUs received via F1-U DL GTP-U tunnel.  It is optional counter for O-DU. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by 1 whenever the DL PDCP PDU is received via F1 U DL GTP-u tunnel when the QCI or the 5QI of the DL PDCP PDU is group of subcounter.*Pmgroup.* |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.F1.DlPdcpPduRxF1UDl.*Pmgroup* where  *PmGroup* is PmCountGroup number: 0: #0  1: #1  ... 19: #19 |
| Measurement Object Class | gNBDUFunction |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

4

### A.1.6 DL PDCP PDU volume received via F1-U DL GTP-U tunnel

#### A.1.6.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.F1.DlPdcpPduVolRxF1UDl |
| Description | This counter provides the DL PDCP PDU volume received via F1-U DL GTP-U tunnel.  NOTE: Measurement Object Class, gNBDUFunction, is different to A.1.15.  It is optional counter for O-DU. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is accumulated by the volume of DL PDCP PDU whenever the DL PDCP PDU is received via F1 U DL GTP-u tunnel when the QCI or the 5QI of the DL PDCP PDU is group of subcounter.*Pmgroup.* |
| Measurement Result | kilobyte (U32) |
| Measurement Type | OR.F1.DlPdcpPduVolRxF1UDl.*Pmgroup* where  *PmGroup* is PmCountGroup number: 0: #0  1: #1  ... 19: #19 |
| Measurement Object Class | gNBDUFunction |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

7

### A.1.7 Maximum DL PDCP PDU volume received via F1-U DL GTP-U tunnel

#### A.1.7.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.F1.MaxDlPdcpPduVolRxF1UDl |
| Description | This counter provides the maximum DL PDCP PDU volume received during 1s via F1-U DL GTP-U tunnel.  It is optional counter for O-DU. |
| Collection Method | SI (Status Inspection) |
| Condition | Measurement subcounter is the maximum value of x when the QCI or the 5QI of the DL PDCP PDU is group of subcounter.*Pmgroup.* It is assigned with period of 1s by the volume x, if x is bigger than previously counted volume.  x is the volume of DL PDCP PDU for every 1 second. x is incremented by the volume of DL PDCP PDU whenever the DL PDCP PDU is received via F1 U DL GTP-u tunnel for a period of 1 second. |
| Measurement Result | kilobyte (U32) |
| Measurement Type | OR.F1.MaxDlPdcpPduVolRxF1UDl.*Pmgroup* where  *PmGroup* is PmCountGroup number: 0: #0  1: #1  ... 19: #19 |
| Measurement Object Class | gNBDUFunction |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

3

### A.1.8 Minimum DL PDCP PDU volume received via F1-U DL GTP-U tunnel

#### A.1.8.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.F1.MinDlPdcpPduVolRxF1UDl |
| Description | This counter provides the minimum DL PDCP PDU volume received during 1s via F1-U DL GTP-U tunnel.  It is optional counter for O-DU. |
| Collection Method | SI (Status Inspection) |
| Condition | Measurement subcounter is the minimum value of x when the QCI or the 5QI of the DL PDCP PDU is group of subcounter.*Pmgroup.* It is assigned with period of 1s by the volume x, if x is smaller than previously counted volume.  x is the volume of DL PDCP PDU for every 1 second. x is incremented by the volume of DL PDCP PDU whenever the DL PDCP PDU is received via F1 U DL GTP-u tunnel for a period of 1 second. |
| Measurement Result | kilobyte (U32) |
| Measurement Type | OR.F1.MinDlPdcpPduVolRxF1UDl.*Pmgroup* where  *PmGroup* is PmCountGroup number: 0: #0  1: #1  ... 19: #19 |
| Measurement Object Class | gNBDUFunction |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

6

### A.1.9 Transmitted F1-C messages

#### A.1.9.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.F1.TxF1CMes |
| Description | This counter provides the number of the transmitted F1-C messages per signal type that is non UE-associated or UE-associated signaling.  It is optional counter for O-DU. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by 1 whenever the F1 C-plane message is transmitted per the signal type of the F1 C-plane message:  non UE-associated or UE-associated as subcounter.*Sigtype.* |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.F1.TxF1CMes.*Sigtype* where  *Sigtype* is the signal type: 0: non UE-associated  1: UE-associated |
| Measurement Object Class | gNBDUFunction |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

3

### A.1.10 Received F1-C messages

#### A.1.10.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.F1.RxF1CMes |
| Description | This counter provides the number of the received F1-C SCTP messages per signal type that is non UE-associated or UE-associated signaling.  It is optional counter for O-DU. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by 1 whenever the F1 C-plane message is received per the signal type of the F1 C-plane message: non UE-associated or UE-associated as subcounter.*Sigtype.* |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.F1.RxF1CMes*.Sigtype* where  *Sigtype* is the signal type: 0: non UE-associated  1: UE-associated |
| Measurement Object Class | gNBDUFunction |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

6

### A.1.11 DL F1-U packets discarded due to NR U-Plane protocol error

#### A.1.11.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.F1.DlF1UDiscardNRUProtocolError |
| Description | This counter provides the number of the DL F1-U packets discarded due to NR U-Plane protocol error.  It is recommended to support for O-DU. |
| Collection Method | CC (Cumulative Counter) |
| Condition | The measurement counter is incremented by 1 whenever the DL F1-U plane packet is discarded due to NR U-plane protocol error. |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.F1.DlF1UDiscardNRUProtocolError |
| Measurement Object Class | gNBDUFunction |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

1

### A.1.12 DL F1-U packet loss rate

#### A.1.12.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | DRB.F1UPacketLossRateDl |
| Description | Refer to 3GPP TS 28.552 [14] clause 5.1.3.1.3  O-RAN addition:  It is optional counter for O-DU.  The counter is split into subcounters per S-NSSAI. The counter is recommended when related slice feature is supported. |
| Collection Method | Refer to 3GPP TS 28.552 [14] clause 5.1.3.1.3 |
| Condition | Refer to 3GPP TS 28.552 [14] clause 5.1.3.1.3  O-RAN addition:  The subcounter per QoS level should be regarded as subcounter per  *PmGroup*, and the subcounter should be calculated per subcounter.*Pmgroup*. |
| Measurement Result | Refer to 3GPP TS 28.552 [14] clause 5.1.3.1.3 |
| Measurement Type | Refer to 3GPP TS 28.552 [14] clause 5.1.3.1.3  O-RAN addition:  Subcounter OR.DRB.F1UPacketLossRateDl.*Pmgroup* where  *PmGroup* is PmCountGroup number: 0: #0  1: #1  ... 19: #19 |
| Measurement Object Class | O-RAN Measurement Object Class: gNBDUFunction |
| Switching Technology | Refer to 3GPP TS 28.552 [14] clause 5.1.3.1.3 |
| Generation | Refer to 3GPP TS 28.552 [14] clause 5.1.3.1.3 |
| Purpose | Refer to 3GPP TS 28.552 [14] clause 5.1.3.1.3 |

</div>

4

### A.1.13 DL Packet Drop Rate in gNB-DU

#### A.1.13.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | DRB.RlcPacketDropRateDl |
| Description | Refer to 3GPP TS 28.552 [14] clause 5.1.3.2.2  O-RAN addition:  It is optional counter for O-DU.  The counter is split into subcounters per S-NSSAI. The counter is recommended when related slice feature is supported. |
| Collection Method | Refer to 3GPP TS 28.552 [14] clause 5.1.3.2.2 |
| Condition | Refer to 3GPP TS 28.552 [14] clause 5.1.3.2.2  O-RAN addition: |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
|  | The subcounter per QoS level should be regarded as subcounter per  *PmGroup*, and the subcounter should be calculated per subcounter.*Pmgroup*. |
| Measurement Result | Refer to 3GPP TS 28.552 [14] clause 5.1.3.2.2 |
| Measurement Type | Refer to 3GPP TS 28.552 [14] clause 5.1.3.2.2  O-RAN addition:  Subcounter OR.DRB.RlcPacketDropRateDl.*Pmgroup* where  *PmGroup* is PmCountGroup number: 0: #0  1: #1  ... 19: #19 |
| Measurement Object Class | Refer to 3GPP TS 28.552 [14] clause 5.1.3.2.2 |
| Switching Technology | Refer to 3GPP TS 28.552 [14] clause 5.1.3.2.2 |
| Generation | Refer to 3GPP TS 28.552 [14] clause 5.1.3.2.2 |
| Purpose | Refer to 3GPP TS 28.552 [14] clause 5.1.3.2.2 |

</div>

1

### A.1.14 UL PDCP PDU volume transmitted via F1-U UL GTP-U tunnel

#### A.1.14.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.F1.UlPdcpPduCellVolTxF1UUl |
| Description | This counter provides the UL PDCP PDU volume of the cell transmitted via F1-U UL GTP-U tunnel.  NOTE: Measurement Object Class, NRCellDU, is different to A.1.2. It is optional counter for O-DU.  The counter is split into subcounters per S-NSSAI. The counter is recommended when related slice feature is supported.  The counter is split into subcounter of subcounter per PmCountGroup. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement counter is accumulated by the volume of UL PDCP PDU whenever the UL PDCP PDU is transmitted from the Cell via F1 U UL GTP-u tunnel.  S-NSSAI subcounter is maintained, the number of measurements is accumulated per the number of supported S-NSSAI. If related slice feature is not supported, only the S-NSSAI #0 is used.  PmCountGroup subcounter of subcounter is maintained, the number of  measurements is accumulated per the number of supported PmCountGroup. |
| Measurement Result | kilobyte (U32) |
| Measurement Type | OR.F1.UlPdcpPduCellVOlTxF1UUl.*SNSSAI.PmGroup*, where *SNSSAI*  is S-NSSAI.  *PmGroup* is PmCountGroup number: 0: #0  1: #1  ...  19: #19 |
| Measurement Object Class | NRCellDU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

4

### A.1.15 DL PDCP PDU volume received via F1-U DL GTP-U tunnel

#### A.1.15.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.F1.DlPdcpPduCellVolRxF1UDl |
| Description | This counter provides the DL PDCP PDU volume of the cell received via F1-U DL GTP-U tunnel.  NOTE: Measurement Object Class, NRCellDU, is different to A.1.6. It is optional counter for O-DU.  The counter is split into subcounters per S-NSSAI. The counter is recommended when related slice feature is supported.  The counter is split into subcounter of subcounter per PmCountGroup. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement counter is accumulated by the volume of DL PDCP PDU whenever the DL PDCP PDU is received to the Cell via F1 U DL GTP-u tunnel.  S-NSSAI subcounter is maintained, the number of measurements is accumulated per the number of supported S-NSSAI. If related slice feature is not supported, only the S-NSSAI #0 is used.  PmCountGroup subcounter of subcounter is maintained, the number of  measurements is accumulated per the number of supported PmCountGroup. |
| Measurement Result | kilobyte (U32) |
| Measurement Type | OR.F1.DlPdcpPduCellVolTxF1UDl.*SNSSAI*.*PmGroup*, where *SNSSAI* is the S-NSSAI.  *PmGroup* is PmCountGroup number: 0: #0  1: #1  ...  19: #19 |
| Measurement Object Class | NRCellDU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

3

## A.2 NR RLC performance counters

### A.2.1 Received UL RLC PDUs

#### A.2.1.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.RLC.RxUlRlcPdu |
| Description | This counter provides the number of the received UL RLC PDUs. It is optional counter for O-DU. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by 1 whenever the UL RLC  PDU is received when the QCI or the 5QI of the UL RLC PDU is group of subcounter.*Pmgroup*. |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.RLC.RxUlRlcPdu.*Pmgroup* where *Pmgroup* is PmCountGroup number:  0: #0  1: #1  ...  19: #19 |
| Measurement Object Class | gNBDUFuncton |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

1

### A.2.2 Received UL RLC PDU volume

#### A.2.2.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.RLC.RxUlRlcPduVol |
| Description | This counter provides the received UL RLC PDU volume. It is recommended to support for O-DU. |
| Collection Method | SI (Status Inspection) |
| Condition | Measurement subcounter is incremented by the volume of the UL RLC PDU whenever the UL RLC PDU is received when the QCI or the 5QI of the UL RLC PDU is group of subcounter.*Pmgroup*. |
| Measurement Result | kilobyte (U32) |
| Measurement Type | OR.RLC.RxUlRlcPduVol.*Pmgroup* where *Pmgroup* is PmCountGroup number:  0: #0  1: #1  ...  19: #19 |
| Measurement Object Class | gNBDUFuncton |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

4

### A.2.3 Request for UL RLC PDUs retransmission

#### A.2.3.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.RLC.ReqUlRlcPduRetrans |
| Description | This counter provides the number of the requests for UL RLC PDUs retransmission.  It is optional counter for O-DU. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by 1 whenever the UL RLC  PDU is received when the QCI or the 5QI of the UL RLC PDU is group of subcounter.*Pmgroup*. |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.RLC.ReqUlRlcPduRetrans.*Pmgroup* where *Pmgroup* is PmCountGroup number:  0: #0  1: #1  ...  19: #19 |
| Measurement Object Class | gNBDUFuncton |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

7

### A.2.4 Transmitted DL RLC PDUs

#### A.2.4.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.RLC.TxDlRlcPdu |
| Description | This counter provides the number of the transmitted DL RLC PDUs. It is optional counter for O-DU. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by 1 whenever the DL RLC  PDU is transmitted when the QCI or the 5QI of the DL RLC PDU is group of subcounter.*Pmgroup*. |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.RLC.TxDlRlcPdu.*Pmgroup* where *Pmgroup* is PmCountGroup number:  0: #0  1: #1  ...  19: #19 |
| Measurement Object Class | gNBDUFuncton |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

3

### A.2.5 Transmitted DL RLC PDU volume

#### A.2.5.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.RLC.TxDlRlcPduVol |
| Description | This counter provides the transmitted DL RLC PDU volume. It is recommendedf to support for O-DU. |
| Collection Method | SI (Status Inspection) |
| Condition | Measurement subcounter is incremented by the volume of the DL RLC PDU whenever the DL RLC PDU is transmitted when the QCI or the 5QI of the DL RLC PDU is group of subcounter.*Pmgroup*. |
| Measurement Result | kilobyte (U32) |
| Measurement Type | OR.RLC.TxDlRlcPduVol.*Pmgroup* where *Pmgroup* is PmCountGroup number:  0: #0  1: #1  ...  19: #19 |
| Measurement Object Class | gNBDUFuncton |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

6

### A.2.6 Retransmitted DL RLC PDUs

#### A.2.6.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.RLC.RxDlRlcPdu |
| Description | This counter provides the number of the DL RLC PDUs retransmitted in RLC layer.  It is optional counter for O-DU. |
| Collection Method | CC (Cumulative Counter) |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Condition | Measurement subcounter is incremented by 1 whenever the DL RLC  PDU is retransmitted in RLC layer when the QCI or the 5QI of the DL RLC PDU is group of subcounter.*Pmgroup*. |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.RLC.RxDlRlcPdu.*Pmgroup* where *Pmgroup* is PmCountGroup number:  0: #0  1: #1  ...  19: #19 |
| Measurement Object Class | gNBDUFuncton |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

1

### A.2.7 Retransmitted DL RLC PDU volume

#### A.2.7.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.RLC.RxDlRlcPduVol |
| Description | This counter provides the DL RLC PDU volume retransmitted in RLC layer.  It is recommended to support for O-DU. |
| Collection Method | SI (Status Inspection) |
| Condition | Measurement subcounter is incremented by the volume of the DL RLC PDU whenever the DL RLC PDU is retransmitted in RLC layer when the QCI or the 5QI of the DL RLC PDU is group of subcounter.*Pmgroup*. |
| Measurement Result | kilobyte (U32) |
| Measurement Type | OR.RLC.RxDlRlcPduVol.*Pmgroup* where *Pmgroup* is PmCountGroup number:  0: #0  1: #1  ...  19: #19 |
| Measurement Object Class | gNBDUFuncton |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

4

### A.2.8 UL RLC PDUs discarded due to bearer release

#### A.2.8.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.RLC.UlRlcPduDiscardBearerRel |
| Description | This counter provides the number of the UL RLC PDUs discarded due to bearer release.  It is optional counter for O-DU. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by 1 whenever the UL RLC PDU is discarded due to bearer release when the QCI or the 5QI of the UL RLC PDU is group of subcounter.*Pmgroup*. |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.RLC.UlRlcPduDiscardBearerRel.*Pmgroup* where *Pmgroup* is PmCountGroup number: |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
|  | 0: #0  1: #1  ...  19: #19 |
| Measurement Object Class | gNBDUFuncton |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

1

### A.2.9 UL RLC PDU volume discarded due to bearer release

#### A.2.9.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.RLC.UlRlcPduVolDiscardBearerRel |
| Description | This counter provides the UL RLC PDU volume discarded due to bearer release.  It is recommended to support for O-DU. |
| Collection Method | SI (Status Inspection) |
| Condition | Measurement subcounter is incremented by the volume of the UL RLC PDU whenever the DL RLC PDU is discarded due to bearer release when the QCI or the 5QI of the DL RLC PDU is group of  subcounter.*Pmgroup*. |
| Measurement Result | kilobyte (U32) |
| Measurement Type | OR.RLC.UlRlcPduVolDiscardBearerRel.*Pmgroup* where *Pmgroup* is PmCountGroup number:  0: #0  1: #1  ...  19: #19 |
| Measurement Object Class | gNBDUFuncton |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

4

### A.2.10 UL RLC PDUs discarded due to RLC re-establishment

#### A.2.10.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.RLC.UlRlcPduDiscardRlcReest |
| Description | This counter provides the number of the UL RLC PDUs discarded due to RLC re-establishment.  It is optional counter for O-DU. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by 1 whenever the UL RLC  PDU is discarded due to RLC re-establishment when the QCI or the 5QI of the UL RLC PDU is group of subcounter.*Pmgroup*. |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.RLC.UlRlcPduDiscardRlcReest.*Pmgroup* where *Pmgroup* is PmCountGroup number:  0: #0  1: #1  ...  19: #19 |
| Measurement Object Class | gNBDUFuncton |
| Switching Technology | Packet Switched |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

1

### A.2.11 UL RLC PDU volume discarded due to RLC re-establishment

#### A.2.11.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.RLC.UlRlcPduVolDiscardRlcReest |
| Description | This counter provides the UL RLC PDU volume discarded due to RLC re-establishment.  It is recommended to support for O-DU. |
| Collection Method | SI (Status Inspection) |
| Condition | Measurement subcounter is incremented by the volume of the UL RLC PDU whenever the UL RLC PDU is discarded due to RLC re- establishment when the QCI or the 5QI of the DL RLC PDU is group of subcounter.*Pmgroup*. |
| Measurement Result | kilobyte (U32) |
| Measurement Type | OR.RLC.UlRlcPduVolDiscardRlcReest.*Pmgroup* where *Pmgroup* is PmCountGroup number:  0: #0  1: #1  ...  19: #19 |
| Measurement Object Class | gNBDUFuncton |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

4

### A.2.12 UL RLC PDUs discarded due to other causes

#### A.2.12.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.RLC.RlcPduDiscardOther |
| Description | This counter provides the number of the UL RLC PDUs discarded due to other causes.  It is optional counter for O-DU. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by 1 whenever the UL RLC PDU is discarded for reason other than bearer release and RLC re- establishment when the QCI or the 5QI of the UL RLC PDU is group of subcounter.*Pmgroup*. |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.RLC.RlcPduDiscardOther.*Pmgroup* where *Pmgroup* is PmCountGroup number:  0: #0  1: #1  ...  19: #19 |
| Measurement Object Class | gNBDUFuncton |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

7

### A.2.13 UL RLC PDU volume discarded due to other causes

#### A.2.13.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.RLC.UlRlcPduVolDiscardOther |
| Description | This counter provides the UL RLC PDU volume discarded due to other causes.  It is recommended to support for O-DU. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by the volume of the UL RLC PDU whenever the UL RLC PDU is discarded for reason other than bearer release and RLC re-establishment when the QCI or the 5QI of the  UL RLC PDU is group of subcounter.*Pmgroup*. |
| Measurement Result | kilobyte (U32) |
| Measurement Type | OR.RLC.UlRlcPduVolDiscardOther.*Pmgroup* where *Pmgroup* is PmCountGroup number:  0: #0  1: #1  ...  19: #19 |
| Measurement Object Class | gNBDUFuncton |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

3

### A.2.14 DL RLC PDUs discarded due to bearer release

#### A.2.14.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.RLC.DlRlcPduDiscardBearerRel |
| Description | This counter provides the number of DL RLC PDUs discarded due to bearer release. This counter includes DL RLC PDUs which has transmitted or not lower layer.  It is optional counter for O-DU. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by 1 whenever the DL RLC  PDU is discarded due to bearer release when the QCI or the 5QI of the DL RLC PDU is group of subcounter.*Pmgroup*. |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.RLC.DlRlcPduDiscardBearerRel.*Pmgroup* where *Pmgroup* is PmCountGroup number:  0: #0  1: #1  ...  19: #19 |
| Measurement Object Class | gNBDUFuncton |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

6

### A.2.15 DL RLC PDU volume discarded due to bearer release

#### A.2.15.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.RLC.DlRlcduVolDiscardBearerRel |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Description | This counter provides the DL RLC PDU volume discarded due to bearer release. This counter includes DL RLC PDUs which has transmitted or not lower layer.  It is recommended to support for O-DU. |
| Collection Method | SI (Status Inspection) |
| Condition | Measurement subcounter is incremented by the volume of the DL RLC PDU whenever the DL RLC PDU is discarded due to bearer release when the QCI or the 5QI of the DL RLC PDU is group of subcounter.*Pmgroup*. |
| Measurement Result | kilobyte (U32) |
| Measurement Type | OR.RLC.DlRlcduVolDiscardBearerRel.*Pmgroup* where *Pmgroup* is PmCountGroup number:  0: #0  1: #1  ...  19: #19 |
| Measurement Object Class | gNBDUFuncton |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

1

### A.2.16 DL RLC PDUs discarded due to RLC re-establishment

#### A.2.16.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.RLC.DlRlcPduDiscardRlcReest |
| Description | This counter provides the number of the DL RLC PDUs discarded due to RLC re-establishment. This counter includes DL RLC PDUs which has transmitted or not lower layer.  It is optional counter for O-DU. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by 1 whenever the DL RLC PDU is discarded due to RLC re-establishment when the QCI or the 5QI of the DL RLC PDU is group of subcounter.*Pmgroup*. |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.RLC.DlRlcPduDiscardRlcReest.*Pmgroup* where *Pmgroup* is PmCountGroup number:  0: #0  1: #1  ...  19: #19 |
| Measurement Object Class | gNBDUFuncton |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

4

### A.2.17 DL RLC PDU volume discarded due to RLC re-establishment

#### A.2.17.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.RLC.DlRlcPduVolDiscardRlcReest |
| Description | This counter provides the DL RLC PDU volume discarded due to RLC re-establishment. This counter includes DL RLC PDUs which has transmitted or not lower layer.  It is recommended to support for O-DU. |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Collection Method | SI (Status Inspection) |
| Condition | Measurement subcounter is incremented by the volume of the DL RLC PDU whenever the DL RLC PDU is discarded due to RLC re-  establishment when the QCI or the 5QI of the DL RLC PDU is group of subcounter.*Pmgroup*. |
| Measurement Result | kilobyte (U32) |
| Measurement Type | OR.RLC.DlRlcPduVolDiscardRlcReest.*Pmgroup* where *Pmgroup* is PmCountGroup number:  0: #0  1: #1  ...  19: #19 |
| Measurement Object Class | gNBDUFuncton |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

1

### A.2.18 DL RLC PDUs discarded due to full buffer

#### A.2.18.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.RLC.DlRlcSduDiscardFullBuffer |
| Description | This counter provides the number of the DL RLC PDUs discarded due to full buffer. This counter includes DL RLC PDUs which has transmitted or not lower layer.  It is optional counter for O-DU. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by 1 whenever the DL RLC  PDU is discarded due to full buffer when the QCI or the 5QI of the DL RLC PDU is group of subcounter.*Pmgroup*. |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.RLC.DlRlcSduDiscardFullBuffer.*Pmgroup* where *Pmgroup* is PmCountGroup number:  0: #0  1: #1  ...  19: #19 |
| Measurement Object Class | gNBDUFuncton |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

4

### A.2.19 DL RLC PDU volume discarded due to full buffer

#### A.2.19.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.RLC.DlRlcSduVolDiscardFullBuffer |
| Description | This counter provides the DL RLC PDU volume discarded due to full buffer. This counter includes DL RLC PDUs which has transmitted or not lower layer.  It is recommended to support for O-DU. |
| Collection Method | SI (Status Inspection) |
| Condition | Measurement subcounter is incremented by the volume of the DL RLC PDU whenever the DL RLC PDU is discarded due to full buffer when |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
|  | the QCI or the 5QI of the DL RLC PDU is group of subcounter.*Pmgroup*. |
| Measurement Result | kilobyte (U32) |
| Measurement Type | OR.RLC.DlRlcSduVolDiscardFullBuffer.*Pmgroup* where *Pmgroup* is PmCountGroup number:  0: #0  1: #1  ...  19: #19 |
| Measurement Object Class | gNBDUFuncton |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

1

### A.2.20 The number of exceeding maximum RLC retransmissions

#### A.2.20.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.RLC.NumExceedMaxRlcRetrans |
| Description | This counter provides the number of received NACK for the final retransmission in RLC layer.  It is recommended to support for O-DU. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by 1 whenever RLC status report including NACK for the final retransmission is received when the QCI or the 5QI of the DL RLC PDU is group of subcounter.*Pmgroup*. |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.RLC.NumExceedMaxRlcRetrans.*Pmgroup* where *Pmgroup* is PmCountGroup number:  0: #0  1: #1  ...  19: #19 |
| Measurement Object Class | gNBDUFuncton |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

4

### A.2.21 Average delay DL in gNB-DU

#### A.2.21.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | DRB.RlcSduDelayDl |
| Description | Refer to 3GPP TS 28.552 [14] clause 5.1.3.3.3  O-RAN addition:  It is optional counter for O-DU. |
| Collection Method | Refer to 3GPP TS 28.552 [14] clause 5.1.3.3.3 |
| Condition | Refer to 3GPP TS 28.552 [14] clause 5.1.3.3.3  O-RAN addition:  The subcounter per QoS level should be regarded as subcounter per  *PmGroup*, and the subcounter should be accumulated per subcounter.*Pmgroup*. |
| Measurement Result | Refer to 3GPP TS 28.552 [14] clause 5.1.3.3.3 |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Type | Refer to 3GPP TS 28.552 [14] clause 5.1.3.3.3  O-RAN addition:  Subcounter OR.DRB.RlcSduDelayDl.*Pmgroup* where *Pmgroup* is PmCountGroup number:  0: #0  1: #1  ...  19: #19 |
| Measurement Object Class | O-RAN Measurement Object Class: gNBDUFuncton |
| Switching Technology | Refer to 3GPP TS 28.552 [14] clause 5.1.3.3.3 |
| Generation | Refer to 3GPP TS 28.552 [14] clause 5.1.3.3.3 |
| Purpose | Refer to 3GPP TS 28.552 [14] clause 5.1.3.3.3 |

</div>

1

### A.2.22 IP Latency DL in gNB-DU

1. A.2.22.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | DRB.RlcSduLatencyDl |
| Description | Refer to 3GPP TS 28.552 [14] clause 5.1.3.4.2  O-RAN addition:  It is optional counter for O-DU. |
| Collection Method | Refer to 3GPP TS 28.552 [14] clause 5.1.3.4.2 |
| Condition | Refer to 3GPP TS 28.552 [14] clause 5.1.3.4.2  O-RAN addition:  The subcounter per QoS level should be regarded as subcounter per *PmGroup*, and the subcounter should be accumulated per subcounter.*Pmgroup*. |
| Measurement Result | Refer to 3GPP TS 28.552 [14] clause 5.1.3.4.2 |
| Measurement Type | Refer to 3GPP TS 28.552 [14] clause 5.1.3.4.2  O-RAN addition:  Subcounter OR.DRB.RlcSduLatencyDl.*Pmgroup* where *Pmgroup* is PmCountGroup number:  0: #0  1: #1  ...  19: #19 |
| Measurement Object Class | O-RAN Measurement Object Class: gNBDUFuncton |
| Switching Technology | Refer to 3GPP TS 28.552 [14] clause 5.1.3.4.2 |
| Generation | Refer to 3GPP TS 28.552 [14] clause 5.1.3.4.2 |
| Purpose | Refer to 3GPP TS 28.552 [14] clause 5.1.3.4.2 |

</div>

### A.2.23 Received paging records

#### A.2.23.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | PAG.ReceivedNbr |
| Description | Refer to 3GPP TS 28.552 [14] clause 5.1.1.27.3 |
| Collection Method | Refer to 3GPP TS 28.552 [14] clause 5.1.1.27.3 |
| Condition | Refer to 3GPP TS 28.552 [14] clause 5.1.1.27.3 |
| Measurement Result | Refer to 3GPP TS 28.552 [14] clause 5.1.1.27.3 |
| Measurement Type | Refer to 3GPP TS 28.552 [14] clause 5.1.1.27.3 |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Object Class | Refer to 3GPP TS 28.552 [14] clause 5.1.1.27.3 |
| Switching Technology | Refer to 3GPP TS 28.552 [14] clause 5.1.1.27.3 |
| Generation | Refer to 3GPP TS 28.552 [14] clause 5.1.1.27.3 |
| Purpose | Refer to 3GPP TS 28.552 [14] clause 5.1.1.27.3 |

</div>

1

### A.2.24 Discarded paging records

#### A.2.24.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | PAG.DiscardedNbr |
| Description | Refer to 3GPP TS 28.552 [14] clause 5.1.1.27.6 |
| Collection Method | Refer to 3GPP TS 28.552 [14] clause 5.1.1.27.6 |
| Condition | Refer to 3GPP TS 28.552 [14] clause 5.1.1.27.6 |
| Measurement Result | Refer to 3GPP TS 28.552 [14] clause 5.1.1.27.6 |
| Measurement Type | Refer to 3GPP TS 28.552 [14] clause 5.1.1.27.6 |
| Measurement Object Class | Refer to 3GPP TS 28.552 [14] clause 5.1.1.27.6 |
| Switching Technology | Refer to 3GPP TS 28.552 [14] clause 5.1.1.27.6 |
| Generation | Refer to 3GPP TS 28.552 [14] clause 5.1.1.27.6 |
| Purpose | Refer to 3GPP TS 28.552 [14] clause 5.1.1.27.6 |

</div>

4

## A.3 NR MAC performance counters

### A.3.1 Received UL MAC PDU volume

#### A.3.1.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.MAC.RxUlMacPduVol |
| Description | This counter provides the UL MAC PDU volume received as initial transmission or retransmission in MAC layer.  It is recommended to support for O-DU. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by the volume of the UL MAC PDU whenever the UL MAC PDU is received as initial transmission or retransmission when the SSB for PUSCH is the group of  subcounter.*SSB*. |
| Measurement Result | kilobyte (U32) |
| Measurement Type | OR.MAC.RxUlMacPduVol.*SSB* where *SSB* is the SSB index: 0: #0  1: #1  ...  63: #63 |
| Measurement Object Class | NRCellDU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

8

### A.3.2 Transmitted DL MAC PDU volume

#### A.3.2.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.MAC.TxDlMacPduVol |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Description | This counter provides the DL MAC PDU volume transmitted as initial transmission or retransmission in MAC layer.  It is recommended to support for O-DU. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by the volume of the DL MAC PDU whenever the DL MAC PDU is transmitted as initial transmission or retransmission when the SSB for PDSCH is the group of subcounter.*SSB*. |
| Measurement Result | kilobyte (U32) |
| Measurement Type | OR.MAC.TxDlMacPduVol.*SSB* where *SSB* is the SSB index: 0: #0  1: #1  ...  63: #63 |
| Measurement Object Class | NRCellDU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

1

### A.3.3 Average delay DL air-interface

#### A.3.3.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | DRB.AirIfDelayDl |
| Description | Refer to 3GPP TS 28.552 [14] clause 5.1.1.1.1  O-RAN addition:  It is optional counter for O-DU. |
| Collection Method | Refer to 3GPP TS 28.552 [14] clause 5.1.1.1.1 |
| Condition | Refer to 3GPP TS 28.552 [14] clause 5.1.1.1.1  O-RAN addition:  The subcounter per QoS level should be regarded as subcounter per *PmGroup*, and the subcounter should be accumulated per subcounter.*Pmgroup*. |
| Measurement Result | Refer to 3GPP TS 28.552 [14] clause 5.1.1.1.1 |
| Measurement Type | Refer to 3GPP TS 28.552 [14] clause 5.1.1.1.1  O-RAN addition:  Subcounter OR.DRB.AirIfDelayDl.*Pmgroup* where *Pmgroup* is PmCountGroup number:  0: #0  1: #1  ...  19: #19 |
| Measurement Object Class | Refer to 3GPP TS 28.552 [14] clause 5.1.1.1.1 |
| Switching Technology | Refer to 3GPP TS 28.552 [14] clause 5.1.1.1.1 |
| Generation | Refer to 3GPP TS 28.552 [14] clause 5.1.1.1.1 |
| Purpose | Refer to 3GPP TS 28.552 [14] clause 5.1.1.1.1 |

</div>

4

## A.4 NR UL HARQ performance counters

### A.4.1 Distribution of PUSCH per MCS (initial transmission)

#### A.4.1.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.ULHARQ.DistPuschMcsInitial |
| Description | This counter provides the distributions of PUSCH at the initial transmission per MCS.  It is optional counter for O-DU. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by 1 whenever PUSCH is received for initial transmission when the MCS table of the PUSCH is group of subcounter.*MCSTable* and when the MCS index of the PUSCH is group of subcounter.*MCSInitial*. |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.ULHARQ.DistPuschMcsInitial.*MCSInitial.MCSTable* where  *MCSInitial* is the MCS index for initial transmission: 0: IMCS = 0  1: IMCS = 1  ...  28: IMCS = 28  *MCSTable* is the MCS table:  0: MCS index table 1 for PDSCH/PUSCH without transform precoding  1: MCS index table 2 for PDSCH/PUSCH without transform precoding  2: MCS index table 3 for PDSCH/PUSCH without transform precoding  3: MCS index table for PUSCH with transform precoding and 64QAM (q=1)  4: MCS index table for PUSCH with transform precoding and 64QAM (q=2)  5: MCS index table 2 for PUSCH with transform precoding and 64QAM(q=1)  6: MCS index table 2 for PUSCH with transform precoding and 64QAM (q=2) |
| Measurement Object Class | NRCellDU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

4

### A.4.2 Distribution of PUSCH per MCS (initial transmission/CRC OK)

#### A.4.2.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.ULHARQ.DistPuschMcsInitialTxCRC |
| Description | This counter provides the distributions of the number of CRC succeeded for PUSCH at initial transmission per MCS.  It is optional counter for O-DU. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by 1 whenever PUSCH of which CRC is OK is received for initial transmission when the MCS  table of the PUSCH is group of subcounter.*MCSTable* and when the MCS index of the PUSCH is group of subcounter.*MCSInitial*. |
| Measurement Result | Integer number (U32) |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Type | OR.ULHARQ.DistPuschMcsInitialTxCRC.*MCSInitial.MCSTable* where  *MCSInitial* is the MCS index for initial transmission: 0: IMCS = 0  1: IMCS = 1  ...  28: IMCS = 28  *MCSTable* is the MCS table:  0: MCS index table 1 for PDSCH/PUSCH without transform precoding  1: MCS index table 2 for PDSCH/PUSCH without transform precoding  2: MCS index table 3 for PDSCH/PUSCH without transform precoding  3: MCS index table for PUSCH with transform precoding and 64QAM (q=1)  4: MCS index table for PUSCH with transform precoding and 64QAM (q=2)  5: MCS index table 2 for PUSCH with transform precoding and 64QAM(q=1)  6: MCS index table 2 for PUSCH with transform precoding and 64QAM (q=2) |
| Measurement Object Class | NRCellDU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

1

### A.4.3 Distribution of PUSCH per MCS (any/CRC OK)

#### A.4.3.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.ULHARQ.DistPuschMcsAny |
| Description | This counter provides the distributions of PUSCH at initial transmission or retransmission per MCS.  It is optional counter for O-DU. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by 1 whenever PUSCH of which CRC is OK is received for initial transmission or retransmission when the MCS table of the PUSCH is group of subcounter.*MCSTable*  and when the MCS index of the PUSCH is group of subcounter.*MCSRetx*. |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.ULHARQ.DistPuschMcsAny.*MCSRetx.MCSTable* where *MCSRetx*  is the MCS index for initial transmission:  0: IMCS = 0  1: IMCS = 1  ...  31: IMCS = 31  *MCSTable* is the MCS table:  0: MCS index table 1 for PDSCH/PUSCH without transform precoding  1: MCS index table 2 for PDSCH/PUSCH without transform precoding  2: MCS index table 3 for PDSCH/PUSCH without transform precoding  3: MCS index table for PUSCH with transform precoding and 64QAM (q=1)  4: MCS index table for PUSCH with transform precoding and 64QAM (q=2) |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
|  | 5: MCS index table 2 for PUSCH with transform precoding and 64QAM(q=1)  6: MCS index table 2 for PUSCH with transform precoding and 64QAM (q=2) |
| Measurement Object Class | NRCellDU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

1

### A.4.4 Distribution of PUSCH per MCS (exceeding HARQ retransmission)

#### A.4.4.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.ULHARQ.DistPuschMcsExceedHarqRetrans |
| Description | This counter provides the distributions of the number of CRC failure for PUSCH at final retransmission per MCS.  It is optional counter for O-DU. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by 1 whenever PUSCH of which CRC is NG is received for final retransmission when the MCS table of the PUSCH is group of subcounter.*MCSTable* and when the MCS index of the PUSCH is group of subcounter.*MCSRetx*. |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.ULHARQ.DistPuschMcsExceedHarqRetrans.*MCSRetx.MCSTable* where *MCSRetx*is the MCS index for initial transmission:  0: IMCS = 0  1: IMCS = 1  ...  31: IMCS = 31  *MCSTable* is the MCS table:  0: MCS index table 1 for PDSCH/PUSCH without transform precoding  1: MCS index table 2 for PDSCH/PUSCH without transform precoding  2: MCS index table 3 for PDSCH/PUSCH without transform precoding  3: MCS index table for PUSCH with transform precoding and 64QAM (q=1)  4: MCS index table for PUSCH with transform precoding and 64QAM (q=2)  5: MCS index table 2 for PUSCH with transform precoding and 64QAM(q=1)  6: MCS index table 2 for PUSCH with transform precoding and 64QAM (q=2) |
| Measurement Object Class | NRCellDU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

4

### A.4.5 Distribution of PUSCH per MCS (MU-MIMO/initial transmission)

#### A.4.5.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.ULHARQ.DistPuschMcsMuMimoInitialTx |
| Description | This counter provides the distributions of PUSCH at initial transmission in MU-MIMO usage per MCS. |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
|  | It is optional counter for O-DU. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by 1 whenever PUSCH is transmitted (including MU-MIMO usage) for initial transmission when  the MCS table of the PUSCH is group of subcounter.*MCSTable* and when the MCS index of the PUSCH is group of subcounter.*MCSInitial*. |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.ULHARQ.DistPuschMcsMuMimoInitialTx.*MCSInitial.MCSTable* where *MCSInitial* is the MCS index for initial transmission:  0: IMCS = 0  1: IMCS = 1  ...  27: IMCS = 27  *MCSTable* is the MCS table:  0: MCS index table 1 for PDSCH/PUSCH without transform precoding  1: MCS index table 2 for PDSCH/PUSCH without transform precoding  2: MCS index table 3 for PDSCH/PUSCH without transform precoding  3: MCS index table for PUSCH with transform precoding and 64QAM (q=1)  4: MCS index table for PUSCH with transform precoding and 64QAM (q=2)  5: MCS index table 2 for PUSCH with transform precoding and 64QAM(q=1)  6: MCS index table 2 for PUSCH with transform precoding and 64QAM (q=2) |
| Measurement Object Class | NRCellDU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

1

### A.4.6 Distribution of PUSCH per MCS (MU-MIMO/initial transmission/ACK)

#### A.4.6.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.ULHARQ.DistPuschMcsMuMimoInitialTxAck |
| Description | This counter provides the distributions of the number of HARQ-ACK for PUSCH at initial transmission in MU-MIMO usage per MCS.  It is optional counter for O-DU. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by 1 whenever PUSCH is which of CRC is OK is transmitted (including MU-MIMO usage) for initial transmission when the MCS table of the PUSCH is group of subcounter.*MCSTable* and when the MCS index of the PUSCH is group of subcounter.*MCSInitial*. |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.ULHARQ.DistPuschMcsMuMimoInitialTxAck.*MCSInitial.MCSTable* where *MCSInitial* is the MCS index for initial transmission:  0: IMCS = 0  1: IMCS = 1  ...  27: IMCS = 27  *MCSTable* is the MCS table:  0: MCS index table 1 for PDSCH/PUSCH without transform precoding 1: MCS index table 2 for PDSCH/PUSCH without transform precoding  2: MCS index table 3 for PDSCH/PUSCH without transform precoding |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
|  | 3: MCS index table for PUSCH with transform precoding and 64QAM (q=1)  4: MCS index table for PUSCH with transform precoding and 64QAM (q=2)  5: MCS index table 2 for PUSCH with transform precoding and 64QAM(q=1)  6: MCS index table 2 for PUSCH with transform precoding and 64QAM (q=2) |
| Measurement Object Class | NRCellDU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

1

## A.5 NR DL HARQ performance counters

### A.5.1 Distribution of PDSCH per MCS (initial transmission)

#### A.5.1.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.DLHARQ.DistPdschMcsInitial |
| Description | This counter provides the distributions of PDSCH at initial transmission. This counter excludes MU-MIMO usage.  It is optional counter for O-DU. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by 1 whenever PDSCH is transmitted (except for MU-MIMO usage) for initial transmission when  the MCS table of the PDSCH is group of subcounter.*MCSTable* and when the MCS index of the PDSCH is group of subcounter.*MCSInitial*. |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.DLHARQ.DistPdschMcsInitial.*MCSInitial.MCSTable* where  *MCSInitial* is the MCS index for initial transmission: 0: IMCS = 0  1: IMCS = 1  ...  28: IMCS = 28  *MCSTable* is the MCS table:  0: MCS index table 1 for PDSCH/PUSCH without transform precoding  1: MCS index table 2 for PDSCH/PUSCH without transform precoding  2: MCS index table 3 for PDSCH/PUSCH without transform precoding |
| Measurement Object Class | NRCellDU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

5

### A.5.2 Distribution of PDSCH per MCS (initial transmission/ACK)

#### A.5.2.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.DLHARQ.DistPdschMcsInitialTxAck |
| Description | This counter provides the distributions of the number of HARQ-ACK for PDSCH at initial transmission per MCS. This counter excludes MU- MIMO usage. |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
|  | It is optional counter for O-DU. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by 1 whenever PDSCH (except for MU-MIMO usage) of which CRC is OK is transmitted for initial transmission when the MCS table of the PDSCH is group of subcounter.*MCSTable* and when the MCS index of the PDSCH is group  of subcounter.*MCSInitial*. |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.DLHARQ.DistPdschMcsInitialTxAck.*MCSInitial.MCSTable* where  *MCSInitial* is the MCS index for initial transmission: 0: IMCS = 0  1: IMCS = 1  ...  28: IMCS = 28  *MCSTable* is the MCS table:  0: MCS index table 1 for PDSCH/PUSCH without transform precoding  1: MCS index table 2 for PDSCH/PUSCH without transform precoding  2: MCS index table 3 for PDSCH/PUSCH without transform precoding |
| Measurement Object Class | NRCellDU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

1

### A.5.3 Distribution of PDSCH per MCS (any/ACK)

#### A.5.3.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.DLHARQ.DistPdschMcsAny |
| Description | This counter provides the distributions of the number of HARQ-ACK for PDSCH at initial transmission or retransmission per MCS. This counter excludes MU-MIMO usage.  It is optional counter for O-DU. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by 1 whenever PDSCH of which CRC is OK is received (except for MU-MIMO usage) for initial transmission or retransmission when the MCS table of the PDSCH is group of subcounter.*MCSTable* and when the MCS index of the PDSCH  is group of subcounter.*MCSRetx*. |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.DLHARQ.DistPdschMcsAny.*MCSRetx.MCSTable* where *MCSRetx*  is the MCS index for initial transmission:  0: IMCS = 0  1: IMCS = 1  ...  31: IMCS = 31  *MCSTable* is the MCS table:  0: MCS index table 1 for PDSCH/PUSCH without transform precoding  1: MCS index table 2 for PDSCH/PUSCH without transform precoding  2: MCS index table 3 for PDSCH/PUSCH without transform precoding |
| Measurement Object Class | NRCellDU |
| Switching Technology | Packet Switched |
| Generation | 5GS |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

1

### A.5.4 Distribution of PDSCH per MCS (exceeding HARQ retransmission)

#### A.5.4.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.DLHARQ.DistPdschMcsExceedHarqRetrans |
| Description | This counter provides the distributions of the number of HARQ-NACK for PUSCH at final retransmission per MCS. This counter excludes MU- MIMO usage.  It is optional counter for O-DU. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by 1 whenever PDSCH of which CRC is NG is transmitted (except for MU-MIMO usage) for final transmission when the MCS table of the PDSCH is group of subcounter.*MCSTable* and when the MCS index of the PDSCH is group  of subcounter.*MCSRetx*. |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.DLHARQ.DistPdschMcsExceedHarqRetrans.*MCSRetx.MCSTable* where *MCSRetx* is the MCS index for initial transmission:  0: IMCS = 0  1: IMCS = 1  ...  31: IMCS = 31  *MCSTable* is the MCS table:  0: MCS index table 1 for PDSCH/PUSCH without transform precoding  1: MCS index table 2 for PDSCH/PUSCH without transform precoding  2: MCS index table 3 for PDSCH/PUSCH without transform precoding |
| Measurement Object Class | NRCellDU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

4

### A.5.5 Distribution of PDSCH per MCS (MU-MIMO/initial transmission)

#### A.5.5.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.DLHARQ.DistPdschMcsMuMimoInitialTx |
| Description | This counter provides the distributions of PDSCH at initial transmission in MU-MIMO usage per MCS.  It is optional counter for O-DU. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by 1 whenever PDSCH is transmitted (including MU-MIMO usage) for initial transmission when the MCS table of the PDSCH is group of subcounter.*MCSTable* and  when the MCS index of the PDSCH is group of subcounter.*MCSInitial*. |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.DLHARQ.DistPdschMcsMuMimoInitialTx.*MCSInitial.MCSTable* where *MCSInitial* is the MCS index for initial transmission:  0: IMCS = 0  1: IMCS = 1  ...  28: IMCS = 28 |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
|  | *MCSTable* is the MCS table:  0: MCS index table 1 for PDSCH/PUSCH without transform precoding  1: MCS index table 2 for PDSCH/PUSCH without transform precoding  2: MCS index table 3 for PDSCH/PUSCH without transform precoding |
| Measurement Object Class | NRCellDU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

1

### A.5.6 Distribution of PDSCH per MCS (MU-MIMO/initial transmission/ACK)

#### A.5.6.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.DLHARQ.DistPdschMcsMuMimoInitialTxAck |
| Description | This counter provides the distributions of the number of HARQ-ACK for PDSCH at initial transmission in MU-MIMO usage per MCS.  It is optional counter for O-DU. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by 1 whenever PDSCH is which of CRC is OK is transmitted (including MU-MIMO usage) for initial transmission when the MCS table of the PDSCH is group of subcounter.*MCSTable* and when the MCS index of the PDSCH is group of  subcounter.*MCSInitial*. |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.DLHARQ.DistPdschMcsMuMimoInitialTxAck.*MCSInitial.MCSTable* where *MCSInitial* is the MCS index for initial transmission:  0: IMCS = 0  1: IMCS = 1  ...  28: IMCS = 28  *MCSTable* is the MCS table:  0: MCS index table 1 for PDSCH/PUSCH without transform precoding 1: MCS index table 2 for PDSCH/PUSCH without transform precoding  2: MCS index table 3 for PDSCH/PUSCH without transform precoding |
| Measurement Object Class | NRCellDU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

4

## A.6 NR UL Signal Quality Level performance counters

### A.6.1 Distribution of PUSCH per MCS (Rank1)

#### A.6.1.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.ULSQL.DistPuschMcsRank1 |
| Description | This counter provides the distributions of PUSCH transmitted with rank 1 per MCS.  It is optional counter for O-DU. |
| Collection Method | CC (Cumulative Counter) |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Condition | Measurement subcounter is incremented by 1 whenever PUSCH is received with Rank 1 when the MCS table of the PUSCH is group of  subcounter.*MCSTable* and when the MCS index of the PUSCH is group of subcounter.*MCSRetx*. |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.ULSQL.DistPuschMcsRank1.*MCSRetx.MCSTable* where *MCSRetx*  is the MCS index for initial transmission:  0: IMCS = 0  1: IMCS = 1  ...  31: IMCS = 31  *MCSTable* is the MCS table:  0: MCS index table 1 for PDSCH/PUSCH without transform precoding  1: MCS index table 2 for PDSCH/PUSCH without transform precoding  2: MCS index table 3 for PDSCH/PUSCH without transform precoding  3: MCS index table for PUSCH with transform precoding and 64QAM (q=1)  4: MCS index table for PUSCH with transform precoding and 64QAM (q=2)  5: MCS index table 2 for PUSCH with transform precoding and 64QAM(q=1)  6: MCS index table 2 for PUSCH with transform precoding and 64QAM (q=2) |
| Measurement Object Class | NRCellDU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

1

### A.6.2 Distribution of PUSCH per MCS (Rank2)

#### A.6.2.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.ULSQL.DistPuschMcsRank2 |
| Description | This counter provides the distributions of PUSCH transmitted with rank 2 per MCS.  It is optional counter for O-DU. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by 1 whenever PUSCH is received with Rank 2 when the MCS table of the PUSCH is group of subcounter.*MCSTable* and when the MCS index of the PUSCH is group  of subcounter.*MCSRetx*. |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.ULSQL.DistPuschMcsRank2.*MCSRetx.MCSTable* where *MCSRetx*  is the MCS index for initial transmission:  0: IMCS = 0  1: IMCS = 1  ...  31: IMCS = 31  *MCSTable* is the MCS table:  0: MCS index table 1 for PDSCH/PUSCH without transform precoding  1: MCS index table 2 for PDSCH/PUSCH without transform precoding  2: MCS index table 3 for PDSCH/PUSCH without transform precoding |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
|  | 3: MCS index table for PUSCH with transform precoding and 64QAM (q=1)  4: MCS index table for PUSCH with transform precoding and 64QAM (q=2)  5: MCS index table 2 for PUSCH with transform precoding and 64QAM(q=1)  6: MCS index table 2 for PUSCH with transform precoding and 64QAM (q=2) |
| Measurement Object Class | NRCellDU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

1

### A.6.3 Distribution of PUSCH per SSB (Rank1)

#### A.6.3.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.ULSQL.DistPuschSsbBeamRank1 |
| Description | This counter provides the distributions of PUSCH transmitted with rank 1 per SSB.  It is optional counter for O-DU. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by 1 whenever PUSCH is received with Rank 1 when the SSB used for the PUSCH is group of  subcounter.*SSB*. |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.ULSQL.DistPuschSsbBeamRank1.*SSB* where *SSB* is the SSB index: 0: #0  1: #1  ...  63: #63 |
| Measurement Object Class | **NRCellDU** |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

4

### A.6.4 Distribution of PUSCH per SSB (Rank2)

#### A.6.4.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.ULSQL.DistPuschSsbBeamRank2 |
| Description | This counter provides the distributions of PUSCH transmitted with rank 2 per SSB.  It is optional counter for O-DU. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by 1 whenever PUSCH is received with Rank 2 when the SSB used for the PUSCH is group of subcounter.*SSB*. |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.ULSQL.DistPuschSsbBeamRank2.*SSB* where *SSB* is the SSB index: 0: #0  1: #1  ...  63: #63 |
| Measurement Object Class | NRCellDU |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

1

### A.6.5 PUSCH received power

#### A.6.5.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.ULSQL.PuschRxPower |
| Description | This counter measures the following x and provides round(x, 2)?102. x is the statistics of received power of FL DMRS of PUSCH. This counter obtains the power for every slot or mini slot in which PUSCH reception is expected. The power is normalized by PRB and antenna port. If Rx beam is created by some antenna ports, this counter is calculated with the power of only the antenna ports used to create Rx beam.  It is recommended to support for O-DU. |
| Collection Method | SI (Status Inspection) |
| Condition | Measurement subcounter of subcounter.*statistic*(avg.) is calculated by round(x/y, 2) \* 102, where:  x is incremented by the volume of power of front loaded DMRS of PUSCH whenever PUSCH reception is expected when SSB used for PUSCH is group of subcounter.SSB. The power is normalized by PRB and antenna port. If Rx beam is created by some antenna ports, this counter is calculated with the power of only the antenna ports used to create Rx beam.  y is incremented by 1 whenever PUSCH reception is expected when SSB used for PUSCH is group of subcounter.*SSB*.  Measurement subcounter of subcounter.statistic(max/min) is maximum/minimum number of round(z, 2) \* 102 . It is assigned whenever z is updated by the volume round(z, 2) \* 102, if round(z, 2) \* 102 is bigger/smaller than previously counted volume, where:  z is the volume of power of front loaded DMRS of PUSCH whenever PUSCH reception is expected when SSB used for PUSCH is group of subcounter.*SSB*. The power is normalized by PRB and antenna port. If Rx beam is created by some antenna ports, this counter is calculated with the power of only the antenna ports used to create Rx beam. |
| Measurement Result | dBm/102 (S16) |
| Measurement Type | OR.ULSQL.PuschRxPower.*SSB.statistic* where *SSB* is the SSB index: 0: #0  1: #1  ...  63: #63  *statistic* is  0: average  1: maximum  2: minimum |
| Measurement Object Class | NRCellDU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

4

### A.6.6 PUSCH RSSI

#### A.6.6.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.ULSQL.PuschRssi |
| Description | This counter measures the following x and provides round(x, 2)?102. x is the statistic of the power of the REs in which PUSCH DMRS reception is expected.  It is recommended to support for O-DU. |
| Collection Method | SI (Status Inspection) |
| Condition | Measurement subcounter of subcounter.*statistic*(avg.) is calculated by round(x/y, 2) \* 102, where:  x is incremented by the volume of power of the RE which PUSCH DMRS reception is expected whenever PUSCH reception is expected when SSB used for PUSCH is group of subcounter.*SSB*.  y is incremented by 1 whenever PUSCH reception is expected when SSB used for PUSCH is group of subcounter.*SSB*.  Measurement subcounter of subcounter.statistic(max/min) is maximum/minimum number of round(z, 2) \* 102. It is assigned whenever z is updated by the volume round(z, 2) \* 102, if round(z, 2) \* 102 is bigger/smaller than previously counted volume, where:  z is the volume of power of the RE which PUSCH DMRS reception is expected whenever PUSCH reception is expected when SSB used for PUSCH is group of subcounter.SSB. |
| Measurement Result | dBm/102 (S16) |
| Measurement Type | OR.ULSQL.PuschRssi.*SSB.statistic* where *SSB* is the SSB index: 0: #0  1: #1  ...  63: #63  *statistic* is  0: average  1: maximum  2: minimum |
| Measurement Object Class | NRCellDU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

3

### A.6.7 PUSCH SINR

#### A.6.7.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.ULSQL.PuschSinr |
| Description | This counter measures the following x and provides round(x, 2)?102. x is the statistics of PUSCH with 2 dB bin of SINR of UE specific PUSCH.  It is optional counter for O-DU. |
| Collection Method | SI (Status Inspection) |
| Condition | Measurement subcounter of subcounter.*statistic*(avg.) is calculated by round(x/y, 2) \* 102, where: |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
|  | x is incremented by the volume of SINR of the UE specific PUSCH when SSB used for PUSCH is group of subcounter.*SSB* and when MIMO layer of the PUSCH is group of subcounter.*MIMO*.  y is incremented by 1 whenever PUSCH which power detection check is OK is received when SSB used for PUSCH is group of subcounter.*SSB* and when MIMO layer of the PUSCH is group of subcounter.*MIMO*.  Measurement subcounter of subcounter.*statistic*(max/min) is maximum/minimum number of round(z, 2) \* 102. It is assigned whenever z is updated by the volume round(z, 2) \* 102, if round(z, 2) \* 102 is bigger/smaller than previously counted volume, where:  z is the volume of SINR of the UE specific PUSCH when SSB used for PUSCH is group of subcounter.*SSB* and when MIMO layer of the PUSCH is group of subcounter.*MIMO*. |
| Measurement Result | dB/102 (S16) |
| Measurement Type | OR.ULSQL.PuschSinr.*SSB*.*MIMO.statistic* where *SSB* is the SSB index: 0: #0  1: #1  ...  63: #63  *MIMO* is the number of MIMO layer: 0: 1 layer  1: 2 layer  ...  7: 8 layer  *statistic* is  0: average  1: maximum  2: minimum |
| Measurement Object Class | NRCellDU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

1

### A.6.8 PUCCH RSSI

#### A.6.8.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.ULSQL.PucchRssi |
| Description | This counter measures the following x and provides round(x, 2)?102. x is the statistics of the power of the REs in which PUCCH DMRS reception is expected.  It is recommended to support for O-DU. |
| Collection Method | SI (Status Inspection) |
| Condition | Measurement subcounter of subcounter.*statistic*(avg.) is calculated by round(x/y, 2) \* 102, where:  x is incremented by the volume of power of the RE which PUCCH DMRS reception is expected whenever PUCCH reception is expected when SSB used for PUCCH is group of subcounter.*SSB*. |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
|  | y is incremented by 1 whenever PUCCH reception is expected when SSB used for PUCCH is group of subcounter.*SSB*.  Measurement subcounter of subcounter.statistic(max/min) is maximum/minimum number of round(z, 2) \* 102. It is assigned whenever z is updated by the volume round(z, 2) \* 102, if round(z, 2) \* 102 is bigger/smaller than previously counted volume, where:  z is the volume of power of the RE which PUCCH DMRS reception is expected whenever PUCCH reception is expected when SSB used for PUCCH is group of subcounter.*SSB.* |
| Measurement Result | dBm/102 (S16) |
| Measurement Type | OR.ULSQL.PucchRssi.*SSB.statistic* where *SSB* is the SSB index: 0: #0  1: #1  ...  63: #63  *statistic* is  0: average  1: maximum  2: minimum |
| Measurement Object Class | NRCellDU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

1

### A.6.9 PUCCH SINR

#### A.6.9.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.ULSQL.PucchSinr |
| Description | This counter measures the following x and provides round(x, 2)?102. x is the statistics of SINR of UE specific PUCCH.  It is optional counter for O-DU. |
| Collection Method | SI (Status Inspection) |
| Condition | Measurement subcounter of subcounter.*statistic*(avg.) is calculated by round(x/y, 2) \* 102, where:  x is incremented by the volume of SINR of the UE specific PUCCH when SSB used for PUCCH is group of subcounter.*SSB*.  y is incremented by 1 whenever PUCCH which power detection check is OK is received when SSB used for PUCCH is group of subcounter.*SSB*.  Measurement subcounter of subcounter.*statistic*(max/min) is maximum/minimum number of round(z, 2) \* 102. It is assigned whenever z is updated by the volume round(z, 2) \* 102, if round(z, 2) \* 102 is bigger/smaller than previously counted volume, where:  z is the volume of SINR of the UE specific PUCCH when SSB used for PUCCH is group of subcounter.*SSB*. |
| Measurement Result | dB/102 (S16) |
| Measurement Type | OR.ULSQL.PucchSinr.*SSB.statistic* where *SSB* is the SSB index: 0: #0  1: #1  ...  63: #63 |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
|  | *statistic* is  0: average  1: maximum  2: minimum |
| Measurement Object Class | NRCellDU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

1

### A.6.10 PRACH preamble correlation value

#### A.6.10.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.ULSQL.PrachPreambleCorrelationValue |
| Description | This counter measures the following x and provides round(x, 2) ?102. x is the statistics of the correlation value among preambles of the PRB  where PRACH preabmble is detected. This counter normalized by PRB. It is recommended to support for O-DU. |
| Collection Method | SI (Status Inspection) |
| Condition | Measurement subcounter of subcounter.*statistic*(avg.) is calculated by round(x/y, 2) \* 102, where:  x is incremented by the correlation volume among preambles of the PRB whenever PRACH preamble is detected when SSB used for PRACH is group of subcounter.*SSB*.  y is incremented by 1 whenever PRACH preamble is detected when SSB used for PRACH is group of subcounter.*SSB*.  Measurement subcounter of subcounter.*statistic*(max/min) is maximum/minimum number of round(z, 2) \* 102. It is assigned whenever z is updated by the volume round(z, 2) \* 102, if round(z, 2) \* 102 is bigger/smaller than previously counted volume, where:  z is the correlation volume among preambles of the PRB whenever PRACH preamble is detected when SSB used for PRACH is group of subcounter.*SSB*. |
| Measurement Result | dBm/102 (S16) |
| Measurement Type | OR.ULSQL.PrachPreambleCorrelationValue.*SSB.statistic* where *SSB* is the SSB index:  0: #0  1: #1  ...  63: #63  *statistic* is  0: average  1: maximum  2: minimum |
| Measurement Object Class | NRCellDU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

4

### A.6.11 RSSI of PRACH transmission occasion

#### A.6.11.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.ULSQL.RssiPrachTxOccasion |
| Description | This counter measures the following x and provides round(x, 2) ?102. x is the statistics of the RACH occasion RSSI. This counter is normalized by PRB.  It is optional counter for O-DU. |
| Collection Method | SI (Status Inspection) |
| Condition | Measurement subcounter of subcounter.*statistic*(avg.) is calculated by round(x/y, 2) \* 102, where:  x is incremented by the volume of RSSI at every PRACH occasion when SSB used for PRACH is group of subcounter.*SSB*.  y is incremented by 1 at every PRACH occasion when SSB used for PRACH is group of subcounter.*SSB*.  Measurement subcounter of subcounter.*statistic*(max/min) is maximum/minimum number of round(z, 2) \* 102. It is assigned whenever z is updated by the volume round(z, 2) \* 102, if round(z, 2) \* 102 is bigger/smaller than previously counted volume, where:  z is the volume of RSSI at every PRACH occasion when SSB used for PRACH is group of subcounter.*SSB*. |
| Measurement Result | dBm/102 (S16) |
| Measurement Type | OR.ULSQL.RssiPrachTxOccasion.*SSB.statistic* where *SSB* is the SSB index:  0: #0  1: #1  ...  63: #63  *statistic* is  0: average  1: maximum  2: minimum |
| Measurement Object Class | NRCellDU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

3

### A.6.12 Distribution of path loss for FR1

#### A.6.12.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.ULSQL.DistPathlossFr1 |
| Description | This counter provides the distributions of PUSCH including PHR with a certain bin of the pathloss. This counter is for FR1.  It is optional counter for O-DU. |
| Collection Method | CC (Cumulative Counter) |
| Condition | This subcounter is measured only when the cell uses FR1.  Measurement subcounter is incremented by 1 whenever PHR is received when the SSB used for the PUSCH is group of subcounter.*SSB* and when the pathloss calculated with the PHR is group of subcounter.*binX*. |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.ULSQL.DistPathlossFr1.*SSB.binX* where *SSB* is the SSB index: |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
|  | 0: #0  1: #1  ...  63: #63  binX is the bin of the pathloss, x. Bin1: 0 dB <= x < 40 dB  Bin2: 40 dB <= x < 45 dB Bin3: 45 dB <= x < 50 dB  ...  Bin25: 155 dB <= x |
| Measurement Object Class | NRCellDU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

1

### A.6.13 Path loss for FR2

#### A.6.13.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.ULSQL.PathlossFr2 |
| Description | This counter measures the following x and provides round(x, 2)?102. x is the statistics of the pathloss. This counter is for FR2.  It is optional counter for O-DU. |
| Collection Method | SI (Status Inspection) |
| Condition | This subcounter is measured only when the cell uses FR2.  Measurement subcounter of subcounter.*statistic*(avg.) is calculated by round(x/y, 2) \* 102, where:  x is incremented by the volume of the pathloss calculated with PHR whenever PHR is received when the SSB used for the PUSCH is group of subcounter.*SSB*.  y is incremented by 1 whenever PHR is received when the SSB used for the PUSCH is group of subcounter.*SSB*  Measurement subcounter of subcounter.*statistic*(max/min) is maximum/minimum number of round(z, 2) \* 102. It is assigned whenever z is updated by the volume round(z, 2) \* 102, if round(z, 2) \* 102 is bigger/smaller than previously counted volume, where:  z is the volume of the pathloss calculated with PHR whenever PHR is received when the SSB used for the PUSCH is group of subcounter.*SSB*. |
| Measurement Result | dB/102 (S16) |
| Measurement Type | OR.ULSQL.PathlossFr2.*SSB.statistic* where *SSB* is the SSB index: 0: #0  1: #1  ...  63: #63  *statistic* is  0: average  1: maximum  2: minimum |
| Measurement Object Class | NRCellDU |
| Switching Technology | Packet Switched |
| Generation | 5GS |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

1

### A.6.14 Detection of UL out-of-sync.

#### A.6.14.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.ULSQL.DetectUlOutSync |
| Description | This counter provides the number of the detection of UL out-of-sync for bearer type change from SN terminated split bearer to SN terminated MCG bearer or SgNB release or RRC release.  It is recommended to support for O-DU. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by 1 whenever the UL out-of-  sync is detected per SSB index of the UE: #0, #1, ..., #63 as subcounter.*SSB*. |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.ULSQL.DetectUlOutSync.*SSB* where *SSB* is the SSB index: 0: #0  1: #1  ...  63: #63 |
| Measurement Object Class | NRCellDU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

4

## A.7 NR DL Signal Quality Level performance counters

### A.7.1 Distribution of PDSCH per MCS (Rank1)

#### A.7.1.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.DLSQL.DistPdschMcsRank1 |
| Description | This counter provides the distributions of PDSCH transmitted with rank 1 per MCS.  It is optional counter for O-DU. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by 1 whenever PDSCH is transmitted with Rank 1 when the MCS table of the PDSCH is group of subcounter.*MCSTable* and when the MCS index of the PDSCH is group  of subcounter.*MCSRetx*. |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.DLSQL.DistPdschMcsRank1.*MCSRetx.MCSTable* where *MCSRetx*  is the MCS index for initial transmission:  0: IMCS = 0  1: IMCS = 1  ...  31: IMCS = 31  *MCSTable* is the MCS table:  0: MCS index table 1 for PDSCH/PUSCH without transform precoding  1: MCS index table 2 for PDSCH/PUSCH without transform precoding  2: MCS index table 3 for PDSCH/PUSCH without transform precoding |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
|  | 3: MCS index table for PUSCH with transform precoding and 64QAM (q=1)  4: MCS index table for PUSCH with transform precoding and 64QAM (q=2)  5: MCS index table 2 for PUSCH with transform precoding and 64QAM(q=1)  6: MCS index table 2 for PUSCH with transform precoding and 64QAM (q=2) |
| Measurement Object Class | NRCellDU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

1

### A.7.2 Distribution of PDSCH per MCS (Rank2)

#### A.7.2.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.DLSQL.DistPdschMcsRank2 |
| Description | This counter provides the distributions of PDSCH transmitted with rank 2 per MCS.  It is optional counter for O-DU. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by 1 whenever PDSCH is transmitted with Rank 2 when the MCS table of the PDSCH is group of subcounter.*MCSTable* and when the MCS index of the PDSCH is group  of subcounter.*MCSRetx*. |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.DLSQL.DistPdschMcsRank2.*MCSRetx.MCSTable* where *MCSRetx*  is the MCS index for initial transmission:  0: IMCS = 0  1: IMCS = 1  ...  31: IMCS = 31  *MCSTable* is the MCS table:  0: MCS index table 1 for PDSCH/PUSCH without transform precoding  1: MCS index table 2 for PDSCH/PUSCH without transform precoding  2: MCS index table 3 for PDSCH/PUSCH without transform precoding  3: MCS index table for PUSCH with transform precoding and 64QAM (q=1)  4: MCS index table for PUSCH with transform precoding and 64QAM (q=2)  5: MCS index table 2 for PUSCH with transform precoding and 64QAM(q=1)  6: MCS index table 2 for PUSCH with transform precoding and 64QAM (q=2) |
| Measurement Object Class | NRCellDU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

4

### A.7.3 Distribution of PDSCH per MCS (Rank3)

#### A.7.3.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.DLSQL.DistPdschMcsRank3 |
| Description | This counter provides the distributions of PDSCH transmitted with rank 3 per MCS.  It is optional counter for O-DU. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by 1 whenever PDSCH is transmitted with Rank 3 when the MCS table of the PDSCH is group of  subcounter.*MCSTable* and when the MCS index of the PDSCH is group of subcounter.*MCSRetx*. |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.DLSQL.DistPdschMcsRank3.*MCSRetx.MCSTable* where *MCSRetx*  is the MCS index for initial transmission:  0: IMCS = 0  1: IMCS = 1  ...  31: IMCS = 31  *MCSTable* is the MCS table:  0: MCS index table 1 for PDSCH/PUSCH without transform precoding  1: MCS index table 2 for PDSCH/PUSCH without transform precoding  2: MCS index table 3 for PDSCH/PUSCH without transform precoding  3: MCS index table for PUSCH with transform precoding |
| Measurement Object Class | NRCellDU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

3

### A.7.4 Distribution of PDSCH per MCS (Rank4)

#### A.7.4.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.DLSQL.DistPdschMcsRank4 |
| Description | This counter provides the distributions of PDSCH transmitted with rank 4 per MCS.  It is optional counter for O-DU. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by 1 whenever PDSCH is transmitted with Rank 4 when the MCS table of the PDSCH is group of  subcounter.*MCSTable* and when the MCS index of the PDSCH is group of subcounter.*MCSRetx*. |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.DLSQL.DistPdschMcsRank4.*MCSRetx.MCSTable* where *MCSRetx*  is the MCS index for initial transmission:  0: IMCS = 0  1: IMCS = 1  ...  31: IMCS = 31  *MCSTable* is the MCS table:  0: MCS index table 1 for PDSCH/PUSCH without transform precoding  1: MCS index table 2 for PDSCH/PUSCH without transform |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
|  | precoding  2: MCS index table 3 for PDSCH/PUSCH without transform precoding  3: MCS index table for PUSCH with transform precoding |
| Measurement Object Class | NRCellDU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

1

### A.7.5 Distribution of PDSCH per SSB (Rank1)

#### A.7.5.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.DLSQL.DistPdschSsbBeamRank1 |
| Description | This counter provides the distributions of PDSCH transmitted with rank 1 per SSB.  It is optional counter for O-DU. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by 1 whenever PDSCH is transmitted with Rank 1 when the SSB used for the PDSCH is group of subcounter.*SSB*. |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.DLSQL.DistPdschSsbBeamRank1.*SSB* where *SSB* is the SSB index: 0: #0  1: #1  ...  63: #63 |
| Measurement Object Class | NRCellDU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

4

### A.7.6 Distribution of PDSCH per SSB (Rank2)

#### A.7.6.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.DLSQL.DistPdschSsbBeamRank2 |
| Description | This counter provides the distributions of PDSCH transmitted with rank 2 per SSB.  It is optional counter for O-DU. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by 1 whenever PDSCH is  transmitted with Rank 2 when the SSB used for the PDSCH is group of subcounter.*SSB*. |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.DLSQL.DistPdschSsbBeamRank2.*SSB* where *SSB* is the SSB index: 0: #0  1: #1  ...  63: #63 |
| Measurement Object Class | NRCellDU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

7

### A.7.7 Distribution of PDSCH per SSB (Rank3)

#### A.7.7.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.DLSQL.DistPdschSsbBeamRank3 |
| Description | This counter provides the distributions of PDSCH transmitted with rank 3 per SSB.  It is optional counter for O-DU. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by 1 whenever PDSCH is transmitted with Rank 3 when the SSB used for the PDSCH is group of subcounter.*SSB*. |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.DLSQL.DistPdschSsbBeamRank3.*SSB* where *SSB* is the SSB index: 0: #0  1: #1  ...  63: #63 |
| Measurement Object Class | NRCellDU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

3

### A.7.8 Distribution of PDSCH per SSB (Rank4)

#### A.7.8.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.DLSQL.DistPdschSsbBeamRank4 |
| Description | This counter provides the distributions of PDSCH transmitted with rank 4 per SSB.  It is optional counter for O-DU. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by 1 whenever PDSCH is transmitted with Rank 4 when the SSB used for the PDSCH is group of  subcounter.*SSB*. |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.DLSQL.DistPdschSsbBeamRank4.*SSB* where *SSB* is the SSB index: 0: #0  1: #1  ...  63: #63 |
| Measurement Object Class | NRCellDU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

6

### A.7.9 Distribution of Wideband CQI for FR1

#### A.7.9.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.DLSQL.DistWidebandCqiFR1 |
| Description | This counter provides the distributions of the wideband CQI reports. It is optional counter for O-DU. |
| Collection Method | CC (Cumulative Counter) |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Condition | This subcounter is measured only when the cell uses FR1. Measurement subcounter is incremented by 1 whenever CQI report is received when the SSB index used for the CQI report is group of subcounter.*SSB,* when the CQI table of the CQI report is group of  subcounter.*CQITable* and when the CQI is group of subcounter.*CQI.* |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.DLSQL.DistWidebandCqiFR1.*SSB*.*CQITable.CQI* where *SSB* is the SSB index:  0: #0  1: #1  ...  63: #63  *CQITable* is the CQI table: 0: table 1  1: table 2  *CQI* is the CQI index: 0: CQI index 0  1: CQI index 1  ...  15: CQI index 15 |
| Measurement Object Class | NRCellDU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

1

### A.7.10 Wideband CQI for FR2

#### A.7.10.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.DLSQL.WidebandCqiFR2 |
| Description | This counter measures the following x and provides round(x, 2)?102. x is the statistics of linear value of the wideband CQI reports.  It is optional counter for O-DU. |
| Collection Method | SI (Status Inspection) |
| Condition | This subcounter is measured only when the cell uses FR2.  Measurement subcounter of subcounter.*statistic*(avg.) is calculated by round(x/y, 2) \* 102, where:  x is incremented by the volume of CQI whenever CQI report is received when the SSB index used for the CQI report is group of subcounter.*SSB* and when the CQI table of the CQI report is group of subcounter.*CQITable.*  y is incremented by 1 whenever CQI report is received when the SSB index used for the CQI report is group of subcounter.*SSB* and when the CQI table of the CQI report is group of subcounter.*CQITable.*  Measurement subcounter of subcounter.*statistic*(max/min) is maximum/minimum number of round(z, 2) \* 102. It is assigned whenever z is updated by the volume round(z, 2) \* 102, if round(z, 2) \* 102 is bigger/smaller than previously counted volume, where:  z is the volume of CQI whenever CQI report is received when the SSB index used for the CQI report is group of subcounter.*SSB* and when the CQI table of the CQI report is group of subcounter.*CQITable*. |
| Measurement Result | CQI/102 (S16) |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Type | OR.DLSQL.WidebandCqiFR2.*SSB*.*CQITable.statistic* where *SSB* is the SSB index:  0: #0  1: #1  ...  63: #63  *CQITable* is the CQI table: 0: table 1  1: table 2  *statistic* is  0: average  1: maximum  2: minimum |
| Measurement Object Class | NRCellDU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

1

### A.7.11 PDCCH transmission power

#### A.7.11.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.DLSQL.PdcchTxPower |
| Description | This counter measures the following x and provides round(x, 2) ?102. x is the statistics of transmission power determined by outer-loop TPC of UE specific PDCCH. If PDCCH is transmitted within some OFDM symbols with same SSB in one slot, this counter counts 1 sample and calculates power as linear average within OFDM symbols. If PDCCH is transmitted with different SSB each OFDM symbols in the one slot, this counter counts the PDCCH for each SSB, and doesn't calculate power as average within OFDM symbols.  It is optional counter for O-DU. |
| Collection Method | SI (Status Inspection) |
| Condition | Measurement subcounter of subcounter.*statistic*(avg.) is calculated by round(x/y, 2) \* 102, where:  x is incremented by the volume of transmission power of PDCCH whenever PDCCH is transmitted when SSB used for PDCCH is group of subcounter.*SSB* and when the DCI format of transmitted DCI is group of subcounter.*DCI*. If PDCCH is transmitted within plural OFDM symbols with same SSB in one slot, the volume is linear average within the OFDM symbols. If PDCCH is transmitted with different SSB in each OFDM symbols in the one slot, x is incremented for each one.  y is incremented by 1 whenever PDCCH is transmitted when SSB used for PDCCH is group of subcounter.*SSB* and when the DCI format of transmitted DCI is group of subcounter.*DCI*. If PDCCH is transmitted within plural OFDM symbols with same SSB in one slot, y is only incremented once per slot. If PDCCH is transmitted with different SSB in each OFDM symbols in the one slot, y is incremented once per OFDM symbol.  Measurement subcounter of subcounter.*statistic*(max/min) is maximum/minimum number of round(z, 2) \* 102. It is assigned whenever z is updated by the volume round(z, 2) \* 102, if round(z, 2) \* 102 is bigger/smaller than previously counted volume, where:  z is the volume of transmission power of PDCCH whenever PDCCH is transmitted when SSB used for PDCCH is group of |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
|  | subcounter.*SSB* and when the DCI format of transmitted DCI is group of subcounter.*DCI*. If PDCCH is transmitted within plural OFDM symbols with same SSB in one slot, the volume is linear average within OFDM symbols. If PDCCH is transmitted with different SSB in each OFDM symbols in the one slot, z is once per OFDM symbol. |
| Measurement Result | dBm/102 (S16) |
| Measurement Type | OR.DLSQL.PdcchTxPower.*SSB.DCI.statistic* where *SSB* is the SSB index:  0: #0  1: #1  ...  63: #63  *DCI* is the DCI format: 0: 0\_0  1: 0\_1  2: 1\_0  3: 1\_1  *statistic* is  0: average  1: maximum  2: minimum |
| Measurement Object Class | NRCellDU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

1

2

## A.8 NR Beamforming performance counters

### A.8.1 Distribution of UEs per beam index

#### A.8.1.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.BF.DistUeBeamIndex |
| Description | This counter provides distribution of the UEs with beam index. This counter obtains the number of the UEs every 100 ms.  This is recommended to support for O-DU. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by the number of the UEs per SSB index of the UE: #0, #1, ..., #63 as subcounter.*SSB*.  The number is acquired as an instantaneous value at every 100ms. |
| Measurement Result | Integer number (U16) |
| Measurement Type | OR.BF.DistUeBeamIndex.*SSB* where  *SSB* is the SSB index: 0: #0  1: #1  ..  63: #63 |
| Measurement Object Class | NRCellDU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

6

### A.8.2 Best and Second Best Beam distribution

#### A.8.2.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.BF.BestSecondBestBeamDist |
| Description | This counter provides the distribution of Best and Second best beams. This counter is only updated when number of SSB is 8 or less.  This is optional counter for O-DU. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by the number of the UEs per the best and second best SSB index of the UE: best beam #0 and second beam #0, best beam #1 and second beam #0, ..., best beam#7 and second beam#7 as subcounter.*binX*.  The value for a given bin shall be incremented when either best or second best beam is changed for any reason. |
| Measurement Result | Integer number (U16) |
| Measurement Type | OR.BF.BestSecondBestBeamDist*.binX* where  *Bin1* is best beam #0 and second beam #0.  *Bin2* is best beam #1 and second beam #0.  *:*  *BinX* is best beam #a and second beam #b. :X = a+8b+1  *:*  *Bin64* is best beam#7 and second beam#7. |
| Measurement Object Class | NRCellDU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

3

### A.8.3 UE reported differential L1-RSRP of second best beam

#### A.8.3.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.BF.UeReportedDisffL1RsrpSecondBestBeam |
| Description | This counter provides the distribution of the UE reported differential L1- RSRP of second best beam.  This is optional counter for O-DU. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by 1 whenever L1-RSRP report is received when the differential L1-RSRP of second best beam is group of subcounter.bin. |
| Measurement Result | Integer number (U16) |
| Measurement Type | OR.BF.UeReportedDisffL1RsrpSecondBestBeam*.binX* where *binX* corresponds to the UE reported differential L1-RSRP, x, of second best beam  Bin1: 0 <= x < 2 dB Bin2: 2 dB <= x < 4 dB  ...  Bin16: 30 dB <= x |
| Measurement Object Class | NRCellDU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

6

## A.9 NR RACH Usage performance counters

### A.9.1 Received preambles in group A

#### A.9.1.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.RACH.RxPreamblesGroupA |
| Description | This counter provides the number of the received random preambles of group A.  This is recommended to support for O-DU. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by 1 whenever random preamble of group A is received when the SSB which is used for preamble transmission is group of subcounter.*SSB*. |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.RACH.RxPreamblesGroupA.*SSB* where *SSB* is the SSB index: 0: #0  1: #1  ...  63: #63 |
| Measurement Object Class | NRCellDU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

4

### A.9.2 The number of received dedicated preamble

#### A.9.2.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.RACH.NumRxDedictedPreamble |
| Description | This counter provides the number of the received dedicated preambles. This is recommended to support for O-DU. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by 1 whenever dedicated preamble is received when the SSB which is used for preamble  transmission is group of subcounter.*SSB*. |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.RACH.NumRxDedictedPreamble.*SSB* where *SSB* is the SSB index: 0: #0  1: #1  ...  63: #63 |
| Measurement Object Class | NRCellDU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

7

### A.9.3 Transmitted RARs for preamble in group A

#### A.9.3.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.RACH.TxRarPreambleGroupA |
| Description | This counter provides the number of the transmitted RAR for preambles of group A. |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
|  | This is recommended to support for O-DU. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by 1 whenever RAR for  preamble of group A is transmitted when the SSB which is used for RAR transmission is group of subcounter.*SSB*. |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.RACH.TxRarPreambleGroupA.*SSB* where *SSB* is the SSB index: 0: #0  1: #1  ...  63: #63 |
| Measurement Object Class | NRCellDU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

1

### A.9.4 Transmitted RARs for dedicated preamble

#### A.9.4.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.RACH.TxRarDedicatedPreamble |
| Description | This counter provides the number of the transmitted RAR for dedicated preambles.  This is recommended to support for O-DU. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by 1 whenever RAR for dedicated preamble is transmitted when the SSB which is used for RAR  transmission is group of subcounter.*SSB*. |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.RACH.TxRarDedicatedPreamble.*SSB* where *SSB* is the SSB index: 0: #0  1: #1  ...  63: #63 |
| Measurement Object Class | NRCellDU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

4

### A.9.5 Failures at assignment of dedicated preamble

#### A.9.5.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.RACH.FailAssignmentDedicatedPreamble |
| Description | This counter provides the number indicating use of random preamble due to NG of dedicated preamble delivery.  This is optional counter for O-DU. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by 1 whenever RA procedure using random preamble is triggered due to NG of dedicated preamble assignment when the SSB which is used for random preamble transmission is group of subcounter.*SSB*. |
| Measurement Result | Integer number (U16) |
| Measurement Type | OR.RACH.FailAssignmentDedicatedPreamble.*SSB* where *SSB* is the SSB index: |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
|  | 0: #0  1: #1  ...  63: #63 |
| Measurement Object Class | NRCellDU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

1

### A.9.6 Occasions for dedicated preamble reception

#### A.9.6.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.RACH.OccasionDedicatedPreambleRx |
| Description | This counter provides the number of the occasions for dedicated preamble. If multiple dedicated preambles are assigned, this counter calculated as the number of assigned preambles.  This is optional counter for O-DU. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by the number of assigned preambles whenever dedicated preamble(s) are expected to be received  when the SSB which is used for random preamble transmission is group of subcounter.*SSB*. |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.RACH.OccasionDedicatedPreambleRx.*SSB* where *SSB* is the SSB index:  0: #0  1: #1  ...  63: #63 |
| Measurement Object Class | NRCellDU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

4

### A.9.7 Failures at assignment of a dedicated preamble for PDCCH order RA

1. (UL out-of-sync)

#### A.9.7.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.RACH.FailAssignmentDedicatedPreamblePdcchOrderRaUlOutSync |
| Description | This counter provides the number of failures at assignment of a dedicated preamble when the gNB detects UL out-of-sync and tries CFRA operation (PDCCH order) to recover UL link connection.  This is optional counter for O-DU. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by 1 whenever a failure at assignment of a dedicated preamble is occurred due to UL out-of-sync when  the SSB used for assignment of a dedicated preamble is group of subcounter.*SSB*. |
| Measurement Result | Integer number (U16) |
| Measurement Type | OR.RACH.FailAssignmentDedicatedPreamblePdcchOrderRaUlOutSync.*SSB* where *SSB* is the SSB index:  0: #0  1: #1 |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
|  | ...  63: #63 |
| Measurement Object Class | NRCellDU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

1

## A.10 NR Timing Advance performance counters

### A.10.1 Distribution of NTA value of RAR message

#### A.10.1.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.TA.DistNtaRarMessage |
| Description | This counter provides the distributions of RARs with the bin of NTA value described the following. The bin type is selected corresponding to CellSize.  This is optional counter for O-DU. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by 1 whenever RAR is transmitted when the SSB index used for the RAR is group of  subcounter.*SSB* and when the NTA is group of subcounter.*binX*. |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.TA.DistNtaRarMessage.*SSB.binX* where  *SSB* is the SSB index:  0: #0  1: #1  ..  63: #63  *binX* depends on cellSize below: CellSize = *large*:  bin1: 0 <= NTA < 72765  bin2: 72765 <= NTA < 145530  ...  bin10: 654885 <= NTA  CellSize = *middle*:  bin1: 0 <= NTA < 29106  bin2: 29106 <= NTA < 58212  ...  bin10: 261954 <= NTA  CellSize = *small*: bin1: 0 <= NTA < 728  bin2: 728 <= NTA < 1456  ...  bin10: 6552 <= NTA  CellSize = *Very small*: Reserved |
| Measurement Object Class | NRCellDU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

5

## A.11 NR Cell Utilization performance counters (Type A)

### A.11.1 Slots at which PDCCH resource shortage occurred

#### A.11.1.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.CellUA.SlotPdcchResourceShortageOccurred |
| Description | This counter provides the number of the slots when PDCCH shortage occurred.  This is recommended to support for O-DU. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by 1 at every slot in whcih CCE resource shortage restricts the multiplexing number of PDCCH at least once. |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.CellUA.SlotPdcchResourceShortageOccurred |
| Measurement Object Class | NRCellDU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

4

### A.11.2 Canceled DCI due to PDCCH resource shortage

#### A.11.2.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.CellUA.CancelDciPdcchResourceShortage |
| Description | This counter provides the number of the cancels of DCI transmission due to PDCCH resource shortage.  This is optional counter for O-DU. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by the number of DCI which is canceled due to CCE resource shortage whenever CCE resource shortage  restricts the multiplexing number of PDCCH. |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.CellUA.CancelDciPdcchResourceShortage |
| Measurement Object Class | NRCellDU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

7

### A.11.3 Maximum UEs buffering UL/DL data

#### A.11.3.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.CellUA.MaxUeBufferUlDlData |
| Description | This counter obtains the number of UEs buffering UL/DL data every 100 ms and provides the maximum number of each 100 ms.  This is optional counter for O-DU. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is the maximum number of x. It is assigned with period of 100ms by the volume x, if x is bigger than previously counted volume.  x is the number of the UEs which have UL and/or DL data which is group of subcounter.*Pmgroup.* x is acquired as an instantaneous value at |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
|  | every 100ms. Note: multiple 5QIs can be set per UE, each 5QI is counted per QoS flow. |
| Measurement Result | Integer number (U16) |
| Measurement Type | OR.CellUA.MaxUeBufferUlDlData.*Pmgroup* where *Pmgroup* is PmCountGroup number:  0: #0  1: #1  ...  19: #19 |
| Measurement Object Class | NRCellDU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

1

### A.11.4 Maximum UEs buffering UL data

#### A.11.4.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.CellUA.MaxUeBufferUlData |
| Description | This counter obtains the number of UEs buffering UL data every 100 ms and provides the maximum number of each 100 ms.  This is optional counter for O-DU. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is the maximum number of x. It is assigned with period of 100ms by the volume x, if x is bigger than previously counted volume.  x is the number of UEs which has UL data with subcounter.*Pmgroup.* x is and is acquired as an instantaneous value at every 100ms. Note: multiple 5QIs can be set per UE, each 5QI is counted per QoS flow. |
| Measurement Result | Integer number (U16) |
| Measurement Type | OR.CellUA.MaxUeBufferUlData.*Pmgroup* where *Pmgroup* is PmCountGroup number:  0: #0  1: #1  ...  19: #19 |
| Measurement Object Class | NRCellDU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

4

### A.11.5 Maximum UEs buffering DL data

#### A.11.5.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.CellUA.MaxUeBufferDlData |
| Description | This counter obtains the number of UEs buffering DL data every 100 ms and provides the maximum number of each 100 ms.  This is optional counter for O-DU. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is the maximum number of x. It is assigned with period of 100ms by the volume x, if x is bigger than previously  counted volume. |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
|  | x is the number of UEs which has DL data with subcounter.*Pmgroup.* x  is acquired as an instantaneous value at every 100ms. Note: multiple 5QIs can be set per UE, each 5QI is counted per QoS flow. |
| Measurement Result | Integer number (U16) |
| Measurement Type | OR.CellUA.MaxUeBufferDlData.*Pmgroup* where *Pmgroup* is PmCountGroup number:  0: #0  1: #1  ...  19: #19 |
| Measurement Object Class | NRCellDU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

1

### A.11.6 Multiplexed transmissions of PUSCH

#### A.11.6.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.CellUA.MultiplexTxPusch |
| Description | This counter provides the accumulated number of the multiplication number of PUSCH.  This is optional counter for O-DU. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by 1 at every slot in which PDSCH is recieved when the multiplexed number in frequency domain is group of subcounter.*mux*. |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.CellUA.MultiplexTxPusch.*mux* where *mux* is the number of multiplex:  0: 1 multiplex  1: 2 multiplex to 5 multiplex  2: 6 multiplex to 12 multiplex  3: more than 12 multiplex |
| Measurement Object Class | NRCellDU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

4

### A.11.7 Multiplexed receptions of PDSCH

#### A.11.7.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.CellUA.MultiplexRxPdsch |
| Description | This counter provides the accumulated number of the multiplication number of PDSCH.  This is optional counter for O-DU. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by 1 when PDSCH is recieved when the multiplexed number in frequency domain is group of subcounter.*mux*. |
| Measurement Result | Integer number (U16) |
| Measurement Type | OR.CellUA.MultiplexRxPdsch.*mux* where *mux* is the number of multiplex:  0: 1 multiplex |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
|  | 1: 2 multiplex to 5 multiplex  2: 6 multiplex to 12 multiplex  3: more than 12 multiplex |
| Measurement Object Class | NRCellDU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

1

### A.11.8 Maximum DRX inactive UEs

#### A.11.8.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.CellUA.MaxDrxInactiveUe |
| Description | This counter obtains the number of UEs configured as DRX inactive every 100 ms and provides the maximum number of each 100 ms.  This is optional counter for O-DU. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is the maximum number of x. It is assigned with period of 100ms by the volume x, if x is bigger than previously counted volume.  x is the number of UEs of which *drx-InactibityTimer* is assumed to be running. x is acquired as an instantaneous value at every 100ms. |
| Measurement Result | Integer number (U16) |
| Measurement Type | OR.CellUA.MaxDrxInactiveUe |
| Measurement Object Class | NRCellDU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

4

### A.11.9 Maximum DRX active UEs

#### A.11.9.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.CellUA.MaxDrxActiveUe |
| Description | This counter obtains the number of UEs configured as DRX active every 100 ms and provides the maximum number of each 100 ms.  This is optional counter for O-DU. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is the maximum number of x. It is assigned with period of 100ms by the volume x, if x is bigger than previously counted volume.  x is the number of UEs which is configured *drx-confing* and of which  *drx-InactibityTimer* is assumed not to be running. x is acquired as an instantaneous value at every 100ms. |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.CellUA.MaxDrxActiveUe |
| Measurement Object Class | NRCellDU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

7

### A.11.10 Distribution of trafficInactivityTimer

#### A.11.10.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.CellUA.DistTrafficInactiveTimer |
| Description | This counter provides the distribution of the UEs whose trafficInactivityTimer is running with 1 s bin of the trafficInactivityTimer. trafficInactivityTimer measures the consecutive time when no UL/DL data for the UE is available. This counter obtains the number of UEs every 1 m.  This is optional counter for O-DU. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by the number of UEs whose trafficInactivityTimer is in the value of the subcounter.*binX*.  The number is acquired as an instantaneous value at every 1 minutes. |
| Measurement Result | Integer number (U16) |
| Measurement Type | OR.CellUA.DistTrafficInactiveTimer*.binX* where bin 1: 0 s <= trafficInactivityTimer< 1 s  bin 2: 1 s <= trafficInactivityTimer< 2 s  bin 3: 2 s <= trafficInactivityTimer< 4 s  bin 4: 4 s <= trafficInactivityTimer< 8 s  bin 5: 8 s <= trafficInactivityTimer< 16 s  bin 6: 16 s <= trafficInactivityTimer< 32 s  bin 7: 32 s <= trafficInactivityTimer< 64 s  bin 8: 64 s <= trafficInactivityTimer< 128 s  bin 9: 128 s <= trafficInactivityTimer |
| Measurement Object Class | NRCellDU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

3

### A.11.11 Slots in which scheduler assigned as mini slot

#### A.11.11.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.CellUA.SlotSchedulerAssignMiniSlot |
| Description | This counter provides the number of slots with mini slot scheduling. This counter is for FR2.  This is optional counter for O-DU. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by 1 at every slot in which PDSCH which is multiplexed in time domain in a slot is assigned. |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.CellUA.SlotSchedulerAssignMiniSlot |
| Measurement Object Class | NRCellDU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

6

### A.11.12 Mini slots in which PUSCH was received

#### A.11.12.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.CellUA.MiniSlotsPuschRx |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Description | This counter provides the number of mini slots when PUSCH is received.  This is optional counter for O-DU. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by 1 when PUSCH which is multiplexed in time domain in a slot is assigned. |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.CellUA.MiniSlotsPuschRx |
| Measurement Object Class | NRCellDU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

1

### A.11.13 UEs in the cell using this cell as PSCell or having activated SCell in DL

#### A.11.13.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.CellUA.UeCellPscellActiveScellDl |
| Description | This counter provides the accumulated number of the UEs in the cell using this cell as PSCell or having activated SCell in DL. This counter obtains the number of the UEs every 100 ms.  This is optional counter for O-DU. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by the number of the UEs which using this cell as PSCell or activate SCell in DL.  The number is acquired as an instantaneous value at every 100ms. |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.CellUA.UeCellPscellActiveScellDl |
| Measurement Object Class | NRCellDU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

4

### A.11.14 UEs in the cell using this cell as PSCell or having activated SCell in UL

#### A.11.14.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.CellUA.UeCellPscellActiveScellUl |
| Description | This counter provides the accumulated number of the UEs in the cell using this cell as PSCell or having activated SCell in UL. This counter obtains the number of the UEs every 100 ms.  This is optional counter for O-DU. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by the number of the UEs which using this cell as PSCell or activate SCell in UL.  The number is acquired as an instantaneous value at every 100ms. |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.CellUA.UeCellPscellActiveScellUl |
| Measurement Object Class | NRCellDU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

7

### A.11.15 Distribution of PSCell UEs with X activated SCells in UL

#### A.11.15.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.CellUA.DistPscellUeXactiveScellUl |
| Description | This counter provides the distribution of the PSCell UE with the number of activated SCell in UL. This counter obtains the number of the UEs every 100 ms.  This is optional counter for O-DU. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by the number of the UE configured this cell as PSCell per the number of activated SCell in UL: 1 active SCell,, 2 active SCell, ..., 31 active SCell as subcounter.*SCell.*  The number is acquired as an instantaneous value at every 100ms. |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.CellUA.DistPscellUeXactiveScellUl.*NumScell* where *NumScell* is the number of active SCell:  0: 1 active SCell  1: 2 active SCell  ...  30: 31 active SCell |
| Measurement Object Class | NRCellDU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

3

### A.11.16 Distribution of PSCell UEs with X activated SCells in DL

#### A.11.16.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.CellUA.DistPscellUeXactiveScellDl |
| Description | This counter provides the distribution of the PSCell UEs with the number of activated SCell in DL. This counter obtains the number of the UEs every 100 ms.  This is optional counter for O-DU. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by the number of the UE configured this cell as PSCell per the number of activated SCell in DL: 1 active SCell,, 2 active SCell, ..., 31 active SCell as subcounter.*SCell.*  The number is acquired as an instantaneous value at every 100ms. |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.CellUA.DistPscellUeXactiveScellDl.*NumScell* where *NumScell* is the number of active SCell:  0: 1 active SCell  1: 2 active SCell  ...  30: 31 active SCell |
| Measurement Object Class | NRCellDU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

6

### A.11.17 Maximum amount of PSCell UEs (UL)

#### A.11.17.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.CellUA.MaxPscellUeUl |
| Description | This counter obtains the number of the PSCell UEs for UL every 100 ms and provides the maximum number of each 100 ms.  This is optional counter for O-DU. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is the maximum number of x. It is assigned with period of 100ms by the volume x, if x is bigger than previously counted volume.  x is the number of UE configured this cell as PSCell per the number of activated SCell in UL: 1 active SCell,, 2 active SCell, ..., 31 active SCell as subcounter.*SCell.* x is acquired as an instantaneous value at every 100ms. |
| Measurement Result | Integer number (U16) |
| Measurement Type | OR.CellUA.MaxPscellUeUl.*NumScell* where *NumScell* is the number of active SCell:  0: 1 active SCell  1: 2 active SCell  ...  30: 31 active SCell |
| Measurement Object Class | NRCellDU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

3

### A.11.18 Minimum amount of PSCell UEs (UL)

#### A.11.18.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.CellUA.MinPscellUeUl |
| Description | This counter obtains the number of the PSCell UEs for UL every 100 ms and provides the minimum number of each 100 ms.  This is optional counter for O-DU. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is the minimum number of x. It is assigned with period of 100ms by the volume x, if x is smaller than previously counted volume.  x is the number of the UE configured this cell as PSCell per the number of activated SCell in UL: 1 active SCell,, 2 active SCell, ..., 31 active SCell as subcounter.*SCell.* x is acquired as an instantaneous value at every 100ms. |
| Measurement Result | Integer number (U16) |
| Measurement Type | OR.CellUA.MinPscellUeUl.*NumScell* where *NumScell* is the number of active SCell:  0: 1 active SCell  1: 2 active SCell  ...  30: 31 active SCell |
| Measurement Object Class | NRCellDU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

6

### A.11.19 Maximum amount of PSCell UEs (DL)

#### A.11.19.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.CellUA.MaxPscellUeDl |
| Description | This counter obtains the number of the PSCell UEs for DL every 100 ms and provides the maximum number of each 100 ms.  This is optional counter for O-DU. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is the maximum number of x. It is assigned with period of 100ms by the volume x, if x is bigger than previously counted volume.  x is the number of the UE configured this cell as PSCell per the number of activated SCell in DL: 1 active SCell,, 2 active SCell, ..., 31 active SCell as subcounter.*SCell.* x is acquired as an instantaneous value at every 100ms. |
| Measurement Result | Integer number (U16) |
| Measurement Type | OR.CellUA.MaxPscellUeDl.*NumScell* where *NumScell* is the number of active SCell:  0: 1 active SCell  1: 2 active SCell  ...  30: 31 active SCell |
| Measurement Object Class | NRCellDU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

3

### A.11.20 Minimum amount of PSCell UEs (DL)

#### A.11.20.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.CellUA.MinPscellUeDl |
| Description | This counter obtains the number of the PSCell UEs for DL every 100 ms and provides the minimum number of each 100 ms.  This is optional counter for O-DU. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is the minimum number of x. It is assigned with period of 100ms by the volume x, if x is smaller than previously counted volume.  x is the number of the UE configured this cell as PSCell per the number of activated SCell in DL: 1 active SCell,, 2 active SCell, ..., 31 active SCell as subcounter.SCell. x is acquired as an instantaneous value at every 100ms. |
| Measurement Result | Integer number (U16) |
| Measurement Type | OR.CellUA.MinPscellUeDl.*NumScell* where *NumScell* is the number of active SCell:  0: 1 active SCell  1: 2 active SCell  ...  30: 31 active SCell |
| Measurement Object Class | NRCellDU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

6

### A.11.21 Activation/Deactivation MAC CE (SCell Active)

#### A.11.21.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.CellUA.ActDeactMacCeScellAct |
| Description | This counter provides the number of the Activation/Deactivation MAC CEs transmitted for SCell activation.  This is optional counter for O-DU. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is the incremented by 1 whenever Activation/Deactivatoin MAC CEs is transmitted for SCell activation. |
| Measurement Result | Integer number (U16) |
| Measurement Type | OR.CellUA.ActDeactMacCeScellAct |
| Measurement Object Class | NRCellDU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

3

### A.11.22 Activation/Deactivation MAC CE (SCell Deactive)

#### A.11.22.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.CellUA.ActDeactMacCeScellDeact |
| Description | This counter provides the number of the Activation/Deactivation MAC CEs transmitted for SCell deactivation. If Activation/Deactivation MAC CE isn't transmitted when sCellDeactivationTimer expires, this counter includes the number of sCellDeactivationTimer expiry.  This is optional counter for O-DU. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is the incremented by 1 whenever Activation/Deactivatoin MAC CEs is transmitted for SCell deactivation or whenever sCellDeactivationTimer managed at O-DU expires. |
| Measurement Result | Integer number (U16) |
| Measurement Type | OR.CellUA.ActDeactMacCeScellDeact |
| Measurement Object Class | NRCellDU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

6

### A.11.23 Distribution of DL Total PRB Usage

#### A.11.23.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | RRU.PrbTotDlDist.BinX |
| Description | Refer to 3GPP TS 28.552 [14] clause 5.1.1.2.3  O-RAN addition:  Averaging is done over a time period tn of 1s.  bin 1: 0 % <= PRB usage < 5 % bin 2: 5 % <= PRB usage < 10 % bin 3: 10 % <= PRB usage < 15 % bin 4: 15 % <= PRB usage < 20 % bin 5: 20 % <= PRB usage < 25 %  bin 6: 25 % <= PRB usage < 30 % |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
|  | bin 7: 30 % <= PRB usage < 35 % bin 8: 35 % <= PRB usage < 40 % bin 9: 40 % <= PRB usage < 45 % bin 10: 45 % <= PRB usage < 50 % bin 11: 50 % <= PRB usage < 55 % bin 12: 55 % <= PRB usage < 60 % bin 13: 60 % <= PRB usage < 65 % bin 14: 65 % <= PRB usage < 70 % bin 15: 70 % <= PRB usage < 75 % bin 16: 75 % <= PRB usage < 80 % bin 17: 80 % <= PRB usage < 85 % bin 18: 85 % <= PRB usage < 90 % bin 19: 90 % <= PRB usage < 95 % bin 20: 95 % <= PRB usage < 100 %  This is recommended to support for O-DU.  The counter is split into subcounters per S-NSSAI. The counter is recommended when related slice feature is supported. |
| Collection Method | Refer to 3GPP TS 28.552 [14] clause 5.1.1.2.3 |
| Condition | Refer to 3GPP TS 28.552 [14] clause 5.1.1.2.3  O-RAN addition:  Averaging is done over a time period tn of 1s and the bin defined in description should be used.  If S-NSSAI subcounter is maintained, the number of measurements is accumulated per the number of supported S-NSSAI. |
| Measurement Result | Refer to 3GPP TS 28.552 [14] clause 5.1.1.2.3 |
| Measurement Type | Refer to 3GPP TS 28.552 [14] clause 5.1.1.2.3  O-RAN addition:  Subcounter  OR.RRU.PrbTotDlDist.BinX.*SNSSAI*, where SNSSAI identifies the S- NSSAI. |
| Measurement Object Class | Refer to 3GPP TS 28.552 [14] clause 5.1.1.2.3 |
| Switching Technology | Refer to 3GPP TS 28.552 [14] clause 5.1.1.2.3 |
| Generation | Refer to 3GPP TS 28.552 [14] clause 5.1.1.2.3 |
| Purpose | Refer to 3GPP TS 28.552 [14] clause 5.1.1.2.3 |

</div>

1

### A.11.24 Distribution of UL Total PRB Usage

#### A.11.24.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | RRU.PrbTotUlDist.BinX |
| Description | Refer to 3GPP TS 28.552 [14] clause 5.1.1.2.4  O-RAN addition:  Averaging is done over a time period tn of 1s.  bin 1: 0 % <= PRB usage < 5 % bin 2: 5 % <= PRB usage < 10 % bin 3: 10 % <= PRB usage < 15 % bin 4: 15 % <= PRB usage < 20 % bin 5: 20 % <= PRB usage < 25 % bin 6: 25 % <= PRB usage < 30 % bin 7: 30 % <= PRB usage < 35 % bin 8: 35 % <= PRB usage < 40 % bin 9: 40 % <= PRB usage < 45 %  bin 10: 45 % <= PRB usage < 50 % bin 11: 50 % <= PRB usage < 55 % |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
|  | bin 12: 55 % <= PRB usage < 60 % bin 13: 60 % <= PRB usage < 65 % bin 14: 65 % <= PRB usage < 70 % bin 15: 70 % <= PRB usage < 75 % bin 16: 75 % <= PRB usage < 80 % bin 17: 80 % <= PRB usage < 85 % bin 18: 85 % <= PRB usage < 90 % bin 19: 90 % <= PRB usage < 95 % bin 20: 95 % <= PRB usage < 100 %  This is recommended to support for O-DU.  The counter is split into subcounters per S-NSSAI. The counter is recommended when related slice feature is supported. |
| Collection Method | Refer to 3GPP TS 28.552 [14] clause 5.1.1.2.4 |
| Condition | Refer to 3GPP TS 28.552 [14] clause 5.1.1.2.4  O-RAN addition:  Averaging is done over a time period tn of 1s and the bin defined in description should be used.  If S-NSSAI subcounter is maintained, the number of measurements is accumulated per the number of supported S-NSSAI. |
| Measurement Result | Refer to 3GPP TS 28.552 [14] clause 5.1.1.2.4 |
| Measurement Type | Refer to 3GPP TS 28.552 [14] clause 5.1.1.2.4  O-RAN addition:  Subcounter  OR.RRU.PrbTotUlDist.BinX.*SNSSAI*, where SNSSAI identifies the S- NSSAI. |
| Measurement Object Class | Refer to 3GPP TS 28.552 [14] clause 5.1.1.2.4 |
| Switching Technology | Refer to 3GPP TS 28.552 [14] clause 5.1.1.2.4 |
| Generation | Refer to 3GPP TS 28.552 [14] clause 5.1.1.2.4 |
| Purpose | Refer to 3GPP TS 28.552 [14] clause 5.1.1.2.4 |

</div>

1

### A.11.25 Average DL Cell throughput

#### A.11.25.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.CellUA.AveDlCellThroughput |
| Description | This counter provides the Average DL Cell throughput of MAC. This counter is obtained by accumulating the MAC level volume of a data, and then dividing by the scheduled time per cell. The measurement is performed at the MAC level. This measurement can be split into subcounters per supported S-NSSAI.  This is optional counter for O-DU.  The counter is split into subcounters per S-NSSAI. The counter is recommended when related slice feature is supported. |
| Collection Method | SI (Status Inspection) |
| Condition | Measurement subcounter is calculated by x/y.  x is incremented by the volume of DL MAC PDU whenever the successfully delivery of DL MAC PDU is confirmed.  y is incremented by the transmission period (e.g. 0.5ms or 0.125ms) for the PDU whenever DL MAC PDU is transmitted (i.e. including HARQ retransmission) .  If S-NSSAI subcounter is maintained, the number of measurements is accumulated per the number of supported S-NSSAI. |
| Measurement Result | kbps (U32) |
| Measurement Type | OR.CellUA.AveDlCellThroughput or OR.CellUA.AveDlCellThroughput.*SNSSAI*, where SNSSAI identifies  the S-NSSAI. |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Object Class | NRCellDU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

1

### A.11.26 Average UL Cell throughput

#### A.11.26.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.CellUA.AveUlCellThroughput |
| Description | This counter provides the Average UL Cell throughput of MAC. This counter is obtained by accumulating the MAC level volume of a data, and then dividing by the scheduled time per cell. The measurement is performed at the MAC level. This measurement can be split into subcounters per S-NSSAI.  This is optional counter for O-DU.  The counter is split into subcounters per S-NSSAI. The counter is recommended when related slice feature is supported. |
| Collection Method | SI (Status Inspection) |
| Condition | Measurement subcounter is calculated by x/y.  x is incremented by the volume of UL MAC PDU whenever UL MAC PDU is successfully received.  y is incremented by the transmission period whenever the UL MAC PDU is received (i.e. including HARQ retransmission) .  If S-NSSAI subcounter is maintained, the number of measurements is accumulated per the number of supported S-NSSAI. |
| Measurement Result | kbps (U32) |
| Measurement Type | OR.CellUA.AveUlCellThroughput or OR.CellUA.AveUlCellThroughput.*SNSSAI*, where SNSSAI identifies  the S-NSSAI. |
| Measurement Object Class | NRCellDU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

4

### A.11.27 Average DL Beam throughput

#### A.11.27.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.CellUA.AveDlBeamThroughput |
| Description | This counter provides the Average DL Beam throughput of MAC. This counter is obtained by accumulating the MAC level volume of a data, and then dividing by the scheduled time per SSB index. The measurement is performed at the MAC level.  This is optional counter for O-DU. |
| Collection Method | SI (Status Inspection) |
| Condition | Measurement subcounter is calculated by x/y.  x is incremented by the volume of DL MAC PDU whenever DL MAC PDU is confirmed the successfully delivery when the SSB used for PDSCH is the group of subcounter.*SSB*.  y is incremented by the transmission period whenever the DL MAC PDU is transmitted (i.e. including HARQ retransmission) when the SSB used for PDSCH is the group of subcounter.*SSB*.. |
| Measurement Result | kbps (U32) |
| Measurement Type | OR.CellUA.AveDlBeamThroughput.*SSB* where *SSB* is the SSB index: |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
|  | 0: #0  1: #1  ...  63: #63 |
| Measurement Object Class | NRCellDU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

1

### A.11.28 Average UL Beam throughput

#### A.11.28.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.CellUA.AveUlBeamThroughput |
| Description | This counter provides the Average UL Beam throughput of MAC. This counter is obtained by accumulating the MAC level volume of a data, and then dividing by the scheduled time per SSB index. The measurement is performed at the MAC level.  This is optional counter for O-DU. |
| Collection Method | SI (Status Inspection) |
| Condition | Measurement subcounter is calculated by x/y.  x is incremented by the volume of UL MAC PDU whenever UL MAC PDU is successfully received when the SSB used for PUSCH is the group of subcounter.*SSB*..  y is incremented by the transmission period whenever the UL MAC PDU is received (i.e. including HARQ retransmission) when the SSB used for PUSCH is the group of subcounter.*SSB*. |
| Measurement Result | kbps (U32) |
| Measurement Type | OR.CellUA.AveUlBeamThroughput.*SSB* where *SSB* is the SSB index: 0: #0  1: #1  ...  63: #63 |
| Measurement Object Class | NRCellDU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

4

### A.11.29 Average DL active DRB

#### A.11.29.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.CellUA.AveDlActDrb |
| Description | This counter provides the average number of DL active DRB. This counter is obtained by averaging the number of the active DRB which has data in MAC/RLC buffer during measurement time per cell.  This is optional counter for O-DU. |
| Collection Method | SI (Status Inspection) |
| Condition | Measurement subcounter is calculated by x/y.  x is incremented by the number of the DRB which has DL data in MAC/RLC buffer at every 100 ms.  y is calculated by measurement period divided by 100 ms. |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.CellUA.AveDlActDrb |
| Measurement Object Class | NRCellDU |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

1

### A.11.30 Maximum DL active DRB

#### A.11.30.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.CellUA.MaxDlActDrb |
| Description | This counter provides the maximum number of DL active DRB. This counter is obtained by providing the maximum number of the active DRB which has data in MAC/RLC buffer during measurement time per cell.  This is optional counter for O-DU. |
| Collection Method | SI (Status Inspection) |
| Condition | Measurement subcounter is the maximum number of x. It is assigned with period of 100ms by the volume x, if x is bigger than previously counted volume.  x is the number of the DRB which has DL data in MAC/RLC buffer. x is acquired as an instantaneous value at every 100ms. |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.CellUA.MaxDlActDrb |
| Measurement Object Class | NRCellDU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

4

### A.11.31 Mean DL PRB used for data traffic

#### A.11.31.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.RRU.PrbUsedDl |
| Description | Refer to 3GPP TS 28.552 [14] clause 5.1.1.2.5  O-RAN addition:  The split into subcounters per S-NSSAI is recommended when the Slicing feature is supported.  The counter is split into subcounter of subcounter per PmCountGroup. |
| Collection Method | Refer to 3GPP TS 28.552 [14] clause 5.1.1.2.5 |
| Condition | Refer to 3GPP TS 28.552 [14] clause 5.1.1.2.5  O-RAN addition:  S-NSSAI subcounter is maintained, the number of measurements is counted per the number of supported S-NSSAI. If related slice feature is not supported, only the S-NSSAI #0 is used.  PmCountGroup subcounter of subcounter is maintained, the number of measurements is counted per the number of supported PmCountGroup. |
| Measurement Result | Refer to 3GPP TS 28.552 [14] clause 5.1.1.2.5 |
| Measurement Type | Refer to 3GPP TS 28.552 [14] clause 5.1.1.2.5  O-RAN addition:  OR.RRU.PrbUsedDl.*SNSSAI*.*PmGroup*, where *SNSSAI* is S-NSSAI.  *PmGroup* is PmCountGroup number: 0: #0  1: #1 |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
|  | ...  19: #19 |
| Measurement Object Class | Refer to 3GPP TS 28.552 [14] clause 5.1.1.2.5 |
| Switching Technology | Refer to 3GPP TS 28.552 [14] clause 5.1.1.2.5 |
| Generation | Refer to 3GPP TS 28.552 [14] clause 5.1.1.2.5 |
| Purpose | Refer to 3GPP TS 28.552 [14] clause 5.1.1.2.5 |

</div>

1

### A.11.32 Mean UL PRB used for data traffic

#### A.11.32.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.RRU.PrbUsedUl |
| Description | Refer to 3GPP TS 28.552 [14] clause 5.1.1.2.7  O-RAN addition:  The split into subcounters per S-NSSAI is recommended when the Slicing feature is supported.  The counter is split into subcounter of subcounter per PmCountGroup. |
| Collection Method | Refer to 3GPP TS 28.552 [14] clause 5.1.1.2.7 |
| Condition | Refer to 3GPP TS 28.552 [14] clause 5.1.1.2.7  O-RAN addition:  S-NSSAI subcounter is maintained, the number of measurements is counted per the number of supported S-NSSAI. If related slice feature is not supported, only the S-NSSAI #0 is used.  PmCountGroup subcounter of subcounter is maintained, the number of measurements is counted per the number of supported PmCountGroup. |
| Measurement Result | Refer to 3GPP TS 28.552 [14] clause 5.1.1.2.7 |
| Measurement Type | Refer to 3GPP TS 28.552 [14] clause 5.1.1.2.7  O-RAN addition:  OR.RRU.PrbUsedUl.*SNSSAI*.*PmGroup*, where *SNSSAI* is S-NSSAI.  *PmGroup* is PmCountGroup number: 0: #0  1: #1  ...  19: #19 |
| Measurement Object Class | Refer to 3GPP TS 28.552 [14] clause 5.1.1.2.7 |
| Switching Technology | Refer to 3GPP TS 28.552 [14] clause 5.1.1.2.7 |
| Generation | Refer to 3GPP TS 28.552 [14] clause 5.1.1.2.7 |
| Purpose | Refer to 3GPP TS 28.552 [14] clause 5.1.1.2.7 |

</div>

4

### A.11.33 Distribution of UL UE throughput in gNB

#### A.11.33.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.DRB.UEThpUlDist.Bin |
| Description | Refer to 3GPP TS 28.552 [14] clause 5.1.1.3.4  O-RAN addition:  The split into subcounters per S-NSSAI is recommended when the Slicing feature is supported. The split into subcounter of subcounter per PmCountGroup.  The reference measurement time T for calculating the throughput of each UE is 1000ms. |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
|  | The bins corresponding to the UL throughput experienced by the UE is defined as follow.  bin 1: 0 <= UL UE throughput < 0.05xThroughput  bin 2: 0.05xThroughput <= UL UE throughput < 0.1xThroughput bin 3: 0.1xThroughput <= UL UE throughput < 0.15xThroughput bin 4: 0.15xThroughput <= UL UE throughput < 0.2xThroughput bin 5: 0.2xThroughput <= UL UE throughput < 0.25xThroughput bin 6: 0.25xThroughput <= UL UE throughput < 0.3xThroughput bin 7: 0.3xThroughput <= UL UE throughput < 0.35xThroughput bin 8: 0.35xThroughput <= UL UE throughput < 0.4xThroughput bin 9: 0.4xThroughput <= UL UE throughput < 0.45xThroughput bin 10: 0.45xThroughput <= UL UE throughput < 0.5xThroughput bin 11: 0.5xThroughput <= UL UE throughput < 0.55xThroughput bin 12: 0.55xThroughput <= UL UE throughput < 0.6xThroughput bin 13: 0.6xThroughput <= UL UE throughput < 0.65xThroughput bin 14: 0.65xThroughput <= UL UE throughput < 0.7xThroughput bin 15: 0.7xThroughput <= UL UE throughput < 0.75xThroughput bin 16: 0.75xThroughput <= UL UE throughput < 0.8xThroughput bin 17: 0.8xThroughput <= UL UE throughput e < 0.85xThroughput bin 18: 0.85xThroughput <= UL UE throughput < 0.9xThroughput bin 19: 0.9xThroughput <= UL UE throughput < 0.95xThroughput bin 20: 0.95xThroughput <= UL UE throughput < Throughput  \*Throughput is a predefined value in the implementation  This is recommended to support for O-DU. |
| Collection Method | Refer to 3GPP TS 28.552 [14] clause 5.1.1.3.4 |
| Condition | Refer to 3GPP TS 28.552 [14] clause 5.1.1.3.4  O-RAN addition:  The per UE throughput is calculated by the following formula. And the bin defined in description should be used.  If ?ThpTimeUl > 0, ?ThpVolUl x 1000[kbits/s]  ?ThpTimeUl  If ?ThpTimeUl=0,0[kbit/s]  S-NSSAI subcounter is maintained, the number of measurements is counted per the number of supported S-NSSAI. If related slice feature is not supported, only the S-NSSAI #0 is used.  PmCountGroup subcounter of subcounter is maintained, the number of measurements is counted per the number of supported PmCountGroup. |
| Measurement Result | Refer to 3GPP TS 28.552 [14] clause 5.1.1.3.4 |
| Measurement Type | Refer to 3GPP TS 28.552 [14] clause 5.1.1.3.4  O-RAN addition:  OR.DRB.UEThpUlDist.Bin.*SNSSAI*.*PmGroup*, where *SNSSAI* is S- NSSAI.  *PmGroup* is PmCountGroup number: 0: #0  1: #1  ...  19: #19 |
| Measurement Object Class | Refer to 3GPP TS 28.552 [14] clause 5.1.1.3.4 |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Switching Technology | Refer to 3GPP TS 28.552 [14] clause 5.1.1.3.4 |
| Generation | Refer to 3GPP TS 28.552 [14] clause 5.1.1.3.4 |
| Purpose | Refer to 3GPP TS 28.552 [14] clause 5.1.1.3.4 |

</div>

1

### A.11.34 Distribution of DL UE throughput in gNB

#### A.11.34.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.DRB.UEThpDlDist.Bin |
| Description | Refer to 3GPP TS 28.552 [14] clause 5.1.1.3.2  O-RAN addition:  The split into subcounters per S-NSSAI is recommended when the Slicing feature is supported. The split into subcounter of subcounter per PmCountGroup.  The reference measurement time T for calculating the throughput of each UE is 1000ms.  The bins corresponding to the DL throughput experienced by the UE is defined as follow.  bin 1: 0 <= DL UE throughput < 0.05xThroughput  bin 2: 0.05xThroughput <= DL UE throughput < 0.1xThroughput bin 3: 0.1xThroughput <= DL UE throughput < 0.15xThroughput bin 4: 0.15xThroughput <= DL UE throughput < 0.2xThroughput bin 5: 0.2xThroughput <= DL UE throughput < 0.25xThroughput bin 6: 0.25xThroughput <= DL UE throughput < 0.3xThroughput bin 7: 0.3xThroughput <= DL UE throughput < 0.35xThroughput bin 8: 0.35xThroughput <= DL UE throughput < 0.4xThroughput bin 9: 0.4xThroughput <= DL UE throughput < 0.45xThroughput bin 10: 0.45xThroughput <= DL UE throughput < 0.5xThroughput bin 11: 0.5xThroughput <= DL UE throughput < 0.55xThroughput bin 12: 0.55xThroughput <= DL UE throughput < 0.6xThroughput bin 13: 0.6xThroughput <= DL UE throughput < 0.65xThroughput bin 14: 0.65xThroughput <= DL UE throughput < 0.7xThroughput bin 15: 0.7xThroughput <= DL UE throughput < 0.75xThroughput bin 16: 0.75xThroughput <= DL UE throughput < 0.8xThroughput bin 17: 0.8xThroughput <= DL UE throughput < 0.85xThroughput bin 18: 0.85xThroughput <= DL UE throughput < 0.9xThroughput bin 19: 0.9xThroughput <= DL UE throughput < 0.95xThroughput bin 20: 0.95xThroughput <= DL UE throughput < Throughput  \*Throughput is a predefined value in the implementation  This is recommended to support for O-DU. |
| Collection Method | Refer to 3GPP TS 28.552 [14] clause 5.1.1.3.2 |
| Condition | Refer to 3GPP TS 28.552 [14] clause 5.1.1.3.2  O-RAN addition:  The per UE throughput is calculated by the following formula. And the bin defined in description should be used. |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
|  | If ?ThpTimeDl > 0, ?ThpVolDl x 1000[kbits/s]  ?ThpTimeDl  If ?ThpTimeDl=0,0[kbit/s]  S-NSSAI subcounter is maintained, the number of measurements is counted per the number of supported S-NSSAI. If related slice feature is not supported, only the S-NSSAI #0 is used.  PmCountGroup subcounter of subcounter is maintained, the number of measurements is counted per the number of supported PmCountGroup. |
| Measurement Result | Refer to 3GPP TS 28.552 [14] clause 5.1.1.3.2 |
| Measurement Type | Refer to 3GPP TS 28.552 [14] clause 5.1.1.3.2  O-RAN addition:  OR.DRB.UEThpDlDist.Bin.SNSSAI.PmGroup, where SNSSAI is S- NSSAI.  PmGroup is PmCountGroup number: 0: #0  1: #1  ...  19: #19 |
| Measurement Object Class | Refer to 3GPP TS 28.552 [14] clause 5.1.1.3.2 |
| Switching Technology | Refer to 3GPP TS 28.552 [14] clause 5.1.1.3.2 |
| Generation | Refer to 3GPP TS 28.552 [14] clause 5.1.1.3.2 |
| Purpose | Refer to 3GPP TS 28.552 [14] clause 5.1.1.3.2 |

</div>

1

### A.11.35 Distribution of DL packet drop rate

#### A.11.35.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.DRB.RlcPacketDropRateDlDist.Bin |
| Description | This measurement provides distribution of UE's fraction of RLC SDU packets which are dropped on the downlink, due to high traffic load, traffic management etc, in the gNB-DU. Only user-plane traffic (DTCH) is considered. A dropped packet is one who context is removed from the gNB-DU without any part of it having been transmitted on the air interface.  The counter is split into subcounters per S-NSSAI. The counter is recommended when related slice feature is supported.  The counter is split into subcounter of subcounter per PmCountGroup. The reference measurement time T for calculating the packet drop rate of each UE is 1000ms.  The bins corresponding to the DL packet drop rate experienced by the UE is defined as follow.  bin 1: 0 % <= DL Packet drop rate < 5 % bin 2: 5 % <= DL Packet drop rate < 10 % bin 3: 10 % <= DL Packet drop rate < 15 % bin 4: 15 % <= DL Packet drop rate < 20 % bin 5: 20 % <= DL Packet drop rate < 25 % bin 6: 25 % <= DL Packet drop rate < 30 % bin 7: 30 % <= DL Packet drop rate < 35 % bin 8: 35 % <= DL Packet drop rate < 40 % bin 9: 40 % <= DL Packet drop rate < 45 % bin 10: 45 % <= DL Packet drop rate < 50 % bin 11: 50 % <= DL Packet drop rate < 55 % bin 12: 55 % <= DL Packet drop rate < 60 % bin 13: 60 % <= DL Packet drop rate < 65 % bin 14: 65 % <= DL Packet drop rate < 70 % bin 15: 70 % <= DL Packet drop rate < 75 %  bin 16: 75 % <= DL Packet drop rate < 80 % |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
|  | bin 17: 80 % <= DL Packet drop rate < 85 % bin 18: 85 % <= DL Packet drop rate < 90 %  bin 19: 90 % <= DL Packet drop rate < 95 % bin 20: 95 % <= DL Packet drop rate < 100 % |
| Collection Method | SI (Status Inspection) |
| Condition | This measurement is obtained as: 1000000\*Number of DL packets, for which no part has been transmitted over the air, of the data radio bearers for each UE, that are discarded in the gNB-DU divided by Number of DL packets for data radio bearers for each UE that were received from gNB-CU-UP. Then map packet drop rate to the bins according to their value and the thresholds of the bins and then provide an integer value of the number of samples in Bin  S-NSSAI subcounter is maintained, the number of measurements is accumulated per the number of supported S-NSSAI. If related slice feature is not supported, only the S-NSSAI #0 is used.  PmCountGroup subcounter of subcounter is maintained, the number of measurements is accumulated per the number of supported  PmCountGroup. |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.DRB.RlcPacketDropRateDlDist.Bin.*SNSSAI.PmGroup*, where  *SNSSAI* is S-NSSAI.  *PmGroup* is PmCountGroup number:  0: #0  1: #1  ...  19: #19 |
| Measurement Object Class | NRCellDU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

1

### A.11.36 PDCCH for BWP switching

#### A.11.36.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.CellA.PdcchBwpSwitch |
| Description | This measurement provides the total number of PDCCH for BWP switching. This measurement optionally is split into subcounters per BWP ID. |
| Collection Method | CC (Cumulative Counter) |
| Condition | The measurement counter is incremented by 1 whenever PDCCH for BWP switching is triggered. This measurement counter shall not count retransmission.  If the optional BWP ID level subcounter measurements are performed, the number of measurements is equal to the number of BWP IDs to which the target BWP is to be switched. |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.CellA.PdcchBwpSwitch or optionally OR.CellA.PdcchBwpSwitch.*BWP*, where *BWP* is BWP ID. |
| Measurement Object Class | NRCellDU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

4

### A.11.37 Distribution of Activated BWP ID

#### A.11.37.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.CellA.DistActBwpId |
| Description | This measurement provides distribution of UEs for activated BWP. The measurement is split into subcounters per active BWP ID. This counter obtains the number of the UEs in certain period with recommended value 100ms. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by the number of the UEs per active BWP ID. This measurement counter shall count UEs configured multiple BWPs and triggered BWP switching by PDCCH. (ex. Energy saving). The number of UEs is acquired as an instantaneous value in  certain period with recommended value 100ms. |
| Measurement Result | Integer number (U16) |
| Measurement Type | OR.CellA.DistActBwpId.*BWP*, where *BWP* is BWP ID. |
| Measurement Object Class | NRCellDU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

3

### A.11.38 Non-linear Scale Distribution of UL UE throughput in gNB

#### A.11.38.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.DRB.UEThpUlLogDist.Bin |
| Description | Refer to 3GPP TS 28.552 [14] clause 5.1.1.3.4  O-RAN addition:  The split into subcounter of subcounter per S-NSSAI is recommended when the Slicing feature is supported. The split into subcounters per PmCountGroup. The reference measurement time T for calculating the throughput of each UE is 1000ms.  The bins corresponding to the UL throughput experienced by the UE is defined as follows.  bin1: 0 kbps <= UL UE Throughput < 100 Kbps bin2: 100 Kbps <= UL UE Throughput < 200 Kbps bin3: 200 Kbps <= UL UE Throughput < 500 Kbps bin4: 500 Kbps <= UL UE Throughput < 1 Mbps bin5: 1 Mbps <= UL UE Throughput < 2 Mbps bin6: 2 Mbps <= UL UE Throughput < 5 Mbps bin7: 5 Mbps <= UL UE Throughput < 10 Mbps bin8: 10 Mbps <= UL UE Throughput < 20 Mbps bin9: 20 Mbps <= UL UE Throughput < 40 Mbps bin10: 40 Mbps <= UL UE Throughput < 60 Mbps bin11: 60 Mbps <= UL UE Throughput < 80 Mbps bin12: 80 Mbps <= UL UE Throughput < 100 Mbps  bin13: 100 Mbps <= UL UE Throughput < 200 Mbps bin14: 200 Mbps <= UL UE Throughput < 400 Mbps bin15: 400 Mbps <= UL UE Throughput < 600 Mbps bin16: 600 Mbps <= UL UE Throughput < 800 Mbps bin17: 800 Mbps <= UL UE Throughput < 1 Gbps bin18: 1 Gbps <= UL UE Throughput < 2 Gbps  bin19: 2 Gbps <= UL UE Throughput < 5 Gbps bin20: 5 Gbps <= UL UE Throughput |
| Collection Method | Refer to 3GPP TS 28.552 [14] clause 5.1.1.3.4 |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Condition | Refer to 3GPP TS 28.552 [14] clause 5.1.1.3.4  O-RAN addition:  The per UE throughput is calculated by the following formula. And the bin defined in description should be used.  If ?ThpTimeUl > 0, ?ThpVolUl x 1000[kbits/s]  ?ThpTimeUl  If ?ThpTimeUl=0,0[kbit/s]  S-NSSAI subcounter is maintained, the number of measurements is counted per the number of supported S-NSSAI. If related slice feature is not supported, only the S-NSSAI #0 is used.  PmCountGroup subcounter of subcounter is maintained, the number of measurements is counted per the number of supported PmCountGroup. |
| Measurement Result | Refer to 3GPP TS 28.552 [14] clause 5.1.1.3.4 |
| Measurement Type | Refer to 3GPP TS 28.552 [14] clause 5.1.1.3.4  O-RAN addition:  OR.DRB.UEThpUlLogDist.Bin.*SNSSAI.PmGroup*, where *SNSSAI* is S- NSSAI.  *PmGroup* is PmCountGroup number: 0: #0  1: #1  ...  19: #19 |
| Measurement Object Class | Refer to 3GPP TS 28.552 [14] clause 5.1.1.3.4 |
| Switching Technology | Refer to 3GPP TS 28.552 [14] clause 5.1.1.3.4 |
| Generation | Refer to 3GPP TS 28.552 [14] clause 5.1.1.3.4 |
| Purpose | Refer to 3GPP TS 28.552 [14] clause 5.1.1.3.4 |

</div>

1

### A.11.39 Non-linear Scale Distribution of DL UE throughput in gNB

1. A.11.39.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.DRB.UEThpDlLogDist.Bin |
| Description | Refer to 3GPP TS 28.552 [14] clause 5.1.1.3.2  O-RAN addition:  The split into subcounters per S-NSSAI is recommended when the Slicing feature is supported. The split into subcounter of subcounter per PmCountGroup.  The reference measurement time T for calculating the throughput of each UE is 1000ms.  The bins corresponding to the DL throughput experienced by the UE is defined as follows.  bin1: 0 kbps <= DL UE Throughput < 500 Kbps bin2: 500 Kbps <= DL UE Throughput < 1 Mbps bin3: 1 Mbps <= DL UE Throughput < 5 Mbps bin4: 5 Mbps <= DL UE Throughput < 10 Mbps bin5: 10 Mbps <= DL UE Throughput < 20 Mbps bin6: 20 Mbps <= DL UE Throughput < 40 Mbps bin7: 40 Mbps <= DL UE Throughput < 60 Mbps bin8: 60 Mbps <= DL UE Throughput < 80 Mbps bin9: 80 Mbps <= DL UE Throughput < 100 Mbps  bin10: 100 Mbps <= DL UE Throughput < 120 Mbps bin11: 120 Mbps <= DL UE Throughput < 160 Mbps bin12: 160 Mbps <= DL UE Throughput < 200 Mbps  bin13: 200 Mbps <= DL UE Throughput < 400 Mbps |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
|  | bin14: 400 Mbps <= DL UE Throughput < 800 Mbps bin15: 800 Mbps <= DL UE Throughput < 1.6 Gbps bin16: 1.6 Gbps <= DL UE Throughput < 2 Gbps bin17: 2 Gbps <= DL UE Throughput < 4 Gbps bin18: 4 Gbps <= DL UE Throughput < 8 Gbps  bin19: 8 Gbps <= DL UE Throughput < 16 Gbps bin20: 16 Gbps <= DL UE Throughput |
| Collection Method | Refer to 3GPP TS 28.552 [14] clause 5.1.1.3.2 |
| Condition | Refer to 3GPP TS 28.552 [14] clause 5.1.1.3.2  O-RAN addition:  The per UE throughput is calculated by the following formula. And the bin defined in description should be used.  If ?ThpTimeDl > 0, ?ThpVolDl x 1000[kbits/s]  ?ThpTimeDl  If ?ThpTimeDl=0,0[kbit/s]  S-NSSAI subcounter is maintained, the number of measurements is counted per the number of supported S-NSSAI. If related slice feature is not supported, only the S-NSSAI #0 is used.  PmCountGroup subcounter of subcounter is maintained, the number of measurements is counted per the number of supported PmCountGroup. |
| Measurement Result | Refer to 3GPP TS 28.552 [14] clause 5.1.1.3.2 |
| Measurement Type | Refer to 3GPP TS 28.552 [14] clause 5.1.1.3.2  O-RAN addition:  OR.DRB.UEThpDlLogDist.Bin.*SNSSAI*.*PmGroup*, where *SNSSAI* is S- NSSAI.  *PmGroup* is PmCountGroup number:  0: #0  1: #1  ...  19: #19 |
| Measurement Object Class | Refer to 3GPP TS 28.552 [14] clause 5.1.1.3.2 |
| Switching Technology | Refer to 3GPP TS 28.552 [14] clause 5.1.1.3.2 |
| Generation | Refer to 3GPP TS 28.552 [14] clause 5.1.1.3.2 |
| Purpose | Refer to 3GPP TS 28.552 [14] clause 5.1.1.3.2 |

</div>

## A.12 NR Cell Utilization performance counters (Type B)

### A.12.1 PUSCH slots

#### A.12.1.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.CellUB.PuschSlot |
| Description | This counter provides the number of the slots when PUSCH was received.  This is recommended to support for O-DU. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by 1 whenever PUSCH is received. |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.CellUB.PuschSlot |
| Measurement Object Class | NRCellDU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

1

### A.12.2 PDSCH slots

#### A.12.2.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.CellUB.PdschSlot |
| Description | This counter provides the number of the slots when PDSCH was transmitted.  This is recommended to support for O-DU. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by 1 whenever PDSCH is transmitted. |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.CellUB.PdschSlot |
| Measurement Object Class | NRCellDU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

4

### A.12.3 PDCCH slots

#### A.12.3.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.CellUB.PdcchSlot |
| Description | This counter provides the number of the slots when PDCCH was transmitted.  This is optional counter for O-DU. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by 1 whenever PDCCH is transmitted. |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.CellUB.PdcchSlot |
| Measurement Object Class | NRCellDU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

7

### A.12.4 CCE utilization rate

#### A.12.4.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.CellUB.CceUtiliationRate |
| Description | This counter measures the following x in the report period and provides round(x, 2)?102. x is the usage rate of CCE.  This is recommended to support for O-DU. |
| Collection Method | SI (Status Inspection) |
| Condition | Measurement subcounter is round(x/y, 2)\*10^2.  x is incremented by the number of CCEs which are used to transmit DCI whenever PDCCH is transmitted.  y is incremented by the number of CCEs which can be used whenever PDCCH is transmitted. |
| Measurement Result | Percentage/102 (U16) |
| Measurement Type | OR.CellUB.CceUtiliationRate |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Object Class | NRCellDU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

1

### A.12.5 UEs buffering UL/DL data

#### A.12.5.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.CellUB.UeBufferingUlDlData |
| Description | This counter provides the accumulated number of the UEs buffering UL/DL data. This counter obtains the number of the UEs every 100 ms. This is recommended to support for O-DU. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by the number of the UEs which have UL and/or DL data which is group of subcounter.*Pmgroup*. The number is acquired as an instantaneous value at every 100ms. Note:  multiple 5QIs can be set per UE, each 5QI is counted per QoS flow. |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.CellUB.UeBufferingUlDlData.*Pmgroup* where *Pmgroup is*  PmCountGroup number: 0: #0  1: #1  ...  19: #19 |
| Measurement Object Class | NRCellDU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

4

### A.12.6 UEs buffering UL data

#### A.12.6.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.CellUB.UeBufferingUlData |
| Description | This counter provides the accumulated number of the UEs buffering UL data. This counter obtains the number of the UEs every 100 ms.  This is recommended to support for O-DU. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by the number of the UEs which have UL data which is group of subcounter.*Pmgroup*.  The number is acquired as an instantaneous value at every 100ms. Note: multiple 5QIs can be set per UE, each 5QI is counted per QoS flow. |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.CellUB.UeBufferingUlData.*Pmgroup* where *Pmgroup is*  PmCountGroup number: 0: #0  1: #1  ...  19: #19 |
| Measurement Object Class | NRCellDU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

7

### A.12.7 UEs buffering DL data

#### A.12.7.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.CellUB.UeBufferingDlData.*Pmgroup* |
| Description | This counter provides the accumulated number of the UEs buffering DL data. This counter obtains the number of the UEs every 100 ms.  This is recommended to support for O-DU. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by the number of the UEs which have DL data which is group of subcounter.*Pmgroup.*  The number is acquired as an instantaneous value at every 100ms. Note: multiple 5QIs can be set per UE, each 5QI is counted per QoS flow. |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.CellUB.UeBufferingDlData.*Pmgroup* where *Pmgroup is*  PmCountGroup number: 0: #0  1: #1  ...  19: #19 |
| Measurement Object Class | NRCellDU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

3

### A.12.8 DRX inactive UEs

#### A.12.8.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.CellUB.DrxInactUe |
| Description | This counter provides the accumulated number of the UEs configured as DRX inactive. This counter obtains the number of the UEs every 100 ms.  This is optional counter for O-DU. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by the number of UEs of which  *drx-InactibityTimer* is assumed to be running.  The number is acquired as an instantaneous value at every 100ms. |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.CellUB.DrxInactUe |
| Measurement Object Class | NRCellDU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

6

### A.12.9 DRX active UEs

#### A.12.9.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.CellUB.DrxActUe |
| Description | This counter provides the accumulated number of the UEs configured as DRX active. This counter obtains the number of the UEs every 100 ms. This is optional counter for O-DU. |
| Collection Method | CC (Cumulative Counter) |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Condition | Measurement subcounter is incremented by the number of UEs which is configured *drx-confing* and of which *drx-InactibityTimer* is assumed not to be running.  The number is acquired as an instantaneous value at every 100ms. |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.CellUB.DrxActUe |
| Measurement Object Class | NRCellDU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

1

### A.12.10 PDSCH slot for paging

#### A.12.10.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.CellUB.PdschSlotForPaging |
| Description | This counter provides the number of PDSCH slot in which paging message is actually transmitted. |
| Collection Method | CC (Cumulative Counter) |
| Condition | This counter is incremented by 1 even when the same paging message is transmitted for different beam. |
| Measurement Result | Integer number(U32) |
| Measurement Type | OR.CellUB.PdschSlotForPaging |
| Measurement Object Class | NRCellDU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

4

## A.13 O-RU Performance counters measured at O-DU

### A.13.1 Uplink data and control frames received in total

#### A.13.1.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.ORU.RX.Total |
| Description | The total number of control/user plane messages received. It is recommended to support for O-DU. |
| Collection Method | CC (Cumulative Counter) |
| Condition | The total number of control/user plane eCPRI or 1914.3 messages received. This counter is the sum of all valid and errored messages received. |
| Measurement Result | Integer number (U64) |
| Measurement Type | OR.ORU.RX.Total |
| Measurement Object Class | aggregation (O-RU) |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

8

### A.13.2 Uplink data frames received on Time

#### A.13.2.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.ORU.RXData.OnTime |
| Description | The number of inbound user plane messages that arrived within the specified time window.  It is recommended to support for O-DU. |
| Collection Method | CC (Cumulative Counter) |
| Condition | The number of inbound user plane (ecpri type 0) messages that arrived within the specified time window. Some "on time" messages may have sequence number errors or corruption errors but as long as they arrived within specified window time, this counter should include them. If the received message has been transport-fragmented, the full message shall  be reassembled before checking its arrival window. |
| Measurement Result | Integer number (U64) |
| Measurement Type | OR.ORU.RXData.OnTime |
| Measurement Object Class | aggregation (O-RU) |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

3

### A.13.3 Uplink data frames received too early

#### A.13.3.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.ORU.RXData.TooEarly |
| Description | The number of inbound user plane messages which were detected to have arrived before the start of their designated receive window time. It is recommended to support for O-DU. |
| Collection Method | CC (Cumulative Counter) |
| Condition | The number of inbound user plane messages which were detected to have arrived before the start of their designated receive window time. |
| Measurement Result | Integer number (U64) |
| Measurement Type | OR.ORU.RXData.TooEarly |
| Measurement Object Class | aggregation (O-RU) |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

6

### A.13.4 Uplink data frames received too late

#### A.13.4.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.ORU.RXData.TooLate |
| Description | The number of inbound user plane messages which were detected to  have arrived after the end of their designated receive window time. It is recommended to support for O-DU. |
| Collection Method | CC (Cumulative Counter) |
| Condition | The number of inbound user plane messages which were detected to have arrived after the end of their designated receive window time. |
| Measurement Result | Integer number (U64) |
| Measurement Type | OR.ORU.RXData.TooLate |
| Measurement Object Class | aggregation (O-RU) |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

1

### A.13.5 Uplink control frames received on Time

#### A.13.5.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.ORU.RXControl.OnTime |
| Description | The number of inbound control plane messages which were detected to  have arrived before the start of their designated receive window time. It is recommended to support for O-DU. |
| Collection Method | CC (Cumulative Counter) |
| Condition | The number of valid inbound control plane (ecpri type 2) messages that arrived within the specified time window. Some "on time" messages may have sequence number errors or corruption errors but as long as they arrived within specified window time, this counter should count  them. |
| Measurement Result | Integer number (U64) |
| Measurement Type | OR.ORU.RXControl.OnTime |
| Measurement Object Class | aggregation (O-RU) |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

4

### A.13.6 Uplink control frames received too early

#### A.13.6.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.ORU.RXControl.TooEarly |
| Description | The number of inbound control plane messages which were detected to have arrived after the end of their designated receive window time.  It is recommended to support for O-DU. |
| Collection Method | CC (Cumulative Counter) |
| Condition | The number of inbound control plane messages which were detected to have arrived before the start of their designated receive window time. |
| Measurement Result | Integer number (U64) |
| Measurement Type | OR.ORU.RXControl.TooEarly |
| Measurement Object Class | aggregation (O-RU) |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

7

### A.13.7 Uplink control frames received too late

#### A.13.7.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.ORU.RXControl.TooLate |
| Description | The number of inbound user plane messages which were detected to have arrived after the end of their designated receive window time.  It is recommended to support for O-DU. |
| Collection Method | CC (Cumulative Counter) |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Condition | The number of inbound control plane messages which were detected to have arrived after the end of their designated receive window time. |
| Measurement Result | Integer number (U64) |
| Measurement Type | OR.ORU.RXControl.TooLate |
| Measurement Object Class | aggregation (O-RU) |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

1

### A.13.8 Uplink data frames with detecting sequence identifier error

#### A.13.8.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.ORU.RXData.SeqidErr |
| Description | The number of inbound on time user plane messages in which a sequence identifier number error is detected.  It is optional counter for O-DU. |
| Collection Method | CC (Cumulative Counter) |
| Condition | The number of inbound on time user plane messages in which a sequence identifier number error is detected.  This error occurs when the ecpriSeqId field does not increment. Both the Sequence ID, and Subsequence ID fields must be checked if transport fragmentation is supported otherwise only the Sequence ID field may be checked.  In addition to identifying a sending equipment sequencing error, this counter can increment when packets are dropped prior to reception by the RU, or when packets reordered by the network exceed the receiving device's capabilities. |
| Measurement Result | Integer number (U64) |
| Measurement Type | OR.ORU.RXData.SeqidErr |
| Measurement Object Class | aggregation (O-RU) |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

4

### A.13.9 Uplink control frames with detecting sequence identifier error

#### A.13.9.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.ORU.RXControl.SeqidErr |
| Description | The number of inbound on time control messages in which a sequence identifier number error is detected.  It is optional counter for O-DU. |
| Collection Method | CC (Cumulative Counter) |
| Condition | The number of inbound on time control messages in which a sequence identifier number error is detected.  This counter increments under the same conditions as the rx\_seqid\_num\_err except for control plane messages. |
| Measurement Result | Integer number (U64) |
| Measurement Type | OR.ORU.RXControl.SeqidErr |
| Measurement Object Class | aggregation (O-RU) |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

7

### A.13.10 Uplink frames with corrupt contents

#### A.13.10.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.ORU.RX.Corrupt |
| Description | The number of inbound on time messages with a correct ecpriSeqId (no sequence number error) which are dropped by the terminating entity due to the message containing one or more eCPRI/1914.3 or ORAN protocol errors.  It is optional counter for O-DU. |
| Collection Method | CC (Cumulative Counter) |
| Condition | The number of inbound on time messages with a correct ecpriSeqId (no sequence number error) which are dropped by the terminating entity due to the message containing one or more eCPRI/1914.3 or ORAN protocol errors.  Protocol errors are defined as when eCPRI/1914.3/ORAN defined fields contain invalid values or indicate unsupported capabilities. Some examples of this are:   1. PcId or section Id number which has not been configured. 2. Unexpected use of C bit, 3. Unconfigured or Unsupported udCompHdr setting. 4. Unsupported section extension. 5. Wrong ecpriVersion and/or payloadVersion information 6. ecpriMessage field does not contain 0, 2, or 5. |
| Measurement Result | Integer number (U64) |
| Measurement Type | OR.ORU.RX.Corrupt |
| Measurement Object Class | aggregation (O-RU) |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

3

### A.13.11 Uplink frames dropped and discarded.

#### A.13.11.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.ORU.RX.ErrDrop |
| Description | The total number of inbound messages which are discarded by the receiving O-RAN entity for any reason.  It is optional counter for O-DU. |
| Collection Method | CC (Cumulative Counter) |
| Condition | The total number of inbound messages which are discarded by the receiving O-RAN entity for any reason. |
| Measurement Result | Integer number (U64) |
| Measurement Type | OR.ORU.RX.ErrDrop |
| Measurement Object Class | aggregation (O-RU) |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

6

### A.13.12 Downlink control and data frames transmitted

#### A.13.12.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.ORU.TX.Total |
| Description | The number of valid outbound control/user plane messages. |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
|  | It is recommended to support for O-DU. |
| Collection Method | CC (Cumulative Counter) |
| Condition | The number of valid outbound control/user plane messages. |
| Measurement Result | Integer number (U64) |
| Measurement Type | OR.ORU.TX.Total |
| Measurement Object Class | aggregation (O-RU) |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

1

### A.13.13 Downlink control frames transmitted to O-RU in total at O-DU

#### A.13.13.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.ORU.TXControl.Total |
| Description | The number of valid outbound control plane messages. This counter is required only if RU supports LAA/LBT capabilities.  It is recommended to support for O-DU. |
| Collection Method | CC (Cumulative Counter) |
| Condition | The number of valid outbound control plane messages. This counter is required only if RU supports LAA/LBT capabilities. |
| Measurement Result | Integer number (U64) |
| Measurement Type | OR.ORU.TXControl.Total |
| Measurement Object Class | aggregation (O-RU) |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

4

## A.14 O-RU Performance counters measured at O-RU

1. Please see [2].

7

8

# 9 Annex B (informative):

10 Optional Multi-Vendor Functionality

## B.1: Optional Namespace Exposed Using O-RAN WG5 Models

1. Some of the O-RAN WG5 defined YANG models are optional for the O-DU to support. In this version of the management
2. plane specification, the following O-RAN WG5 defined YANG models are optional to support. If an O-DU/NETCONF
3. server does not return the namespace associated with an optional O-RAN WG5 defined YANG model, the NETCONF
4. client can infer that the O-DU does not support the optional capability associated with the model.

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| No | Optional Functionality | Reference | Namespace |
|  |  |  |  |

</div>

1. **Table 3: Optional O-RAN WG5 Namespace**

## B.2: Optional Namespace Exposed Using O-RAN WG4 Models

* 1. Some of the O-RAN WG4 defined YANG models are optional to support. If a device does not return the namespace
  2. associated with an optional O-RAN WG4 defined YANG model, the NETCONF client can infer that the device does not
  3. support the optional capability associated with the model.

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| No | Optional Functionality | Reference | Namespace |
| 1 | Antenna Line Device | O-RAN WG4 Management Plane Specification [2], Clause 14.4 | "urn:o-ran:ald-port:x.y"  "urn:o-ran:ald: x.y " |
| 2 | External IO Port | O-RAN WG4 Management Plane Specification [2], Clause 14.5 | "urn:o-ran:external-io:x.y " |
| 3 | eCPRI delay measurement | O-RAN WG4 Management Plane Specification [2], Clause 7.7 | "urn:o-ran:message5:x.y " |
| 4 | UDP Echo functionality for IP based transport verification | O-RAN WG4 Management Plane Specification [2], Clause 7.6 | "urn:o-ran:udpecho:x.y " |
| 5 | Beamforming | O-RAN WG4 Management Plane Specification [2], Clause 15.4 | "urn:o-ran:beamforming:x.y " |
| 6 | FAN | - | "urn:o-ran:fan:x.y" |
| 7 | LAA | O-RAN WG4 Management Plane Specification [2], Clause 16 | "urn:o-ran:laa:x.y "  "urn:o-ran:laa-operations:x.y " |

</div>

###### Table 4: Optional O-RAN WG4 Namespace

6

## B.3: Optional YANG Features Exposed Using O-RAN WG5 Models

1. Some of the O-RAN WG5 defined YANG models define optional feature support. The optional multi-vendor features
2. defined in the O-RAN WG5 defined YANG models are shown below.

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| No | Optional Feature | Namespace | Feature name |
|  |  |  |  |

</div>

1. **Table 5: Optional O-RAN WG5 defined feature support**

## B.4: Optional YANG Features Exposed Using O-RAN WG4 Models

1. Some of the O-RAN WG4 defined YANG models define optional feature support. The optional multi-vendor features
2. defined in the O-RAN WG4 defined YANG models are shown below.

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| No | Optional Feature | Namespace | Feature name |
| 1 | Adaptive O-RU delay profile | "urn:o-ran:delay:x.y " | ADAPTIVE-RU-PROFILE |
| 2 | O-RU Energy saving | "urn:o-ran:hardware:x.y " | ENERGYSAVING |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| 3 | Alias MAC address based C/U transport | "urn:o-ran:interfaces:x.y " | ALIASMAC-BASED-CU-PLANE |
| 4 | UDP/IP based C/U Transport | "urn:o-ran:interfaces:x.y " | UDPIP-BASED-CU-PLANE |
| 5 | Dynamic Beamforming Configuration | "urn:o-ran:beamforming:x.y " | MODIFY-BF-CONFIG |
| 6 | GNSS Support | "urn:o-ran:sync:x.y " | GNSS |
| 7 | ALD overcurrent reporting | "urn:o-ran:ald-port:x.y " | OVERCURRENT-SUPPORTED |
| 8 | TRANSPORT in rx-window- measurement | "urn:o-ran:performance- management:x.y " | GRANULARITY-TRANSPORT- MEASUREMENT |
| 9 | EAXC\_ID in rx-window- measurement | "urn:o-ran:performance- management:x.y " | GRANULARITY-EAXC-ID- MEASUREMENT |
| 10 | LAA Support | "urn:o-ran: module-cap " | LAA |
| 11 | Transport Fragmentation | "urn:o-ran:module-cap:x.y " | TRANSPORT-FRAGMENTATION |
| 12 | GNSS Anti Jamming | "urn:o-ran:sync:x.y " | ANTI-JAM |
| 13 | Tilting pre-defined beams | "urn:o-ran:beamforming:x.y" | BEAM-TILT |

</div>

* 1. **Table 6: Optional O-RAN WG4 defined feature support**

## B.5: Optional YANG Features Exposed Using Common Models

* 1. Some of the O-RAN defined YANG models augment existing YANG models which have optional features defined. The
  2. optional features defined in these "common" models are shown in the table below.

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| No | Optional Feature | Namespace | Feature name |
| 1 | RFC 6933 [i.7]: Entity MIB | "urn:ietf:params:xml:ns:yang:ietf- hardware" | entity-mib |
| 2 | RFC 4268 [i.8]: Entity State MIB | "urn:ietf:params:xml:ns:yang:ietf- hardware" | hardware-state |
| 3 | RFC 3433 [i.9]: Entity Sensor Management Information Base | "urn:ietf:params:xml:ns:yang:ietf- hardware" | hardware-sensor |
| 4 | O-RU allows user-controlled interfaces to be named arbitrarily | "urn:ietf:params:xml:ns:yang:ietf- interfaces" | arbitrary-names |
| 5 | O-RU supports pre-provisioning of interface configuration, i.e., it is possible to configure an interface whose physical interface hardware is not present on the device | "urn:ietf:params:xml:ns:yang:ietf- interfaces" | pre-provisioning |
| 6 | RFC 2863 [i.10]: The Interfaces Group MIB | "urn:ietf:params:xml:ns:yang:ietf- interfaces" | if-mib |
| 7 | O-RU supports configuring non- contiguous subnet masks | "urn:ietf:params:xml:ns:yang:ietf- ip" | ipv4-non-contiguous-netmasks |
| 8 | O-RU supports privacy extensions for stateless address autoconfiguration in IPv6 | "urn:ietf:params:xml:ns:yang:ietf- ip" | ipv6-privacy-autoconf |

</div>

1. **Table 7: Optional feature support in common models**

## B.6: Optional Capabilities Exposed Using O-RAN WG5 Models

1. In addition to optional namespaces and optional features within supported namespaces, certain O-RAN WG5 defined
2. YANG models are used to be able to expose support for certain optional capabilities by the O-DU.

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| No | Optional Feature | Namespace | Leaf |
|  |  |  |  |

</div>

1. **Table 8: Optional capabilities in O-RAN WG5 defined YANG models**

## B.7: Optional Capabilities Exposed Using O-RAN WG4 Models

1. In addition to optional namespaces and optional features within supported namespaces, certain O-RAN WG4 defined
2. YANG models are used to be able to expose support for certain optional capabilities by the O-RU.

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| No | Optional Feature | Namespace | Leaf |
| 1 | Type of synchronization source supported by O-RU | "urn:o-ran:sync:x.y " | / sync/:sync-status/supported- reference-types |
| 2 | O-RU supports extended Category A operation - more than 8 spatial streams | "urn:o-ran:module-cap:x.y " | /module-capability/ru-capabilities/ ru-supported-category and  /module-capability/ru-capabilities/ number-of-spatial-streams |
| 3 | O-RU supports Category B operation - precoding in the O-RU | "urn:o-ran:module-cap:x.y " | /module-capability/ru-capabilities/ ru-supported-category |
| 4 | O-RU supports the capability to apply the modified beamforming configuration by using rpc activate-beamforming-config without deletion of tx-array- carriers and rx-array-carriers | "urn:o-ran:beamforming:x.y " | /beamforming-configuration/ operational-properties/update-bf- non-delete |
| 5 | O-RU supports the capability to store the modified beamforming configuration file in the reset persistent memory | "urn:o-ran:beamforming:x.y " | /beamforming-configuration/ operational-properties/persistent-bf- files |
| 6 | Optional VLAN optimized searching | "urn:o-ran:mplane- interfaces:x.y " | /mplane-info/searchable-mplane- access-vlans-info |
| 7 | Configurable CoS marking for C, U and M-Plane | "urn:o-ran:interfaces:x.y " | augmented /if:interfaces/if:interface: with u-plane-marking c-plane- marking and m-plane-marking |
| 8 | Configurable DSCP marking for C, U and M-Plane | "urn:o-ran:interfaces:x.y " | augmented /if:interfaces/if:interface: with u-plane-marking c-plane- marking and m-plane-marking |
| 9 | Ethernet Frame MTU | "urn:o-ran:interfaces:x.y" | augmented /if:interfaces/if:interface: with l2-mtu |
| 10 | VLAN Tagging | "urn:o-ran:interfaces:x.y" | augmented /if:interfaces/if:interface: with vlan-tagging |
| 11 | IEEE 1914.3 header support | "urn:o-ran:operations:x.y " | /operational-info/o-ran- split/optional-header-support |
| 12 | eCPRI Concatenation support | "urn:o-ran:operations:x.y " | /operational-info/o-ran-split/ecpri- concatenation-support |
| 13 | O-RU local management of the LAA contention window | "urn:o-ran:module-cap:x.y " | /module-capability/band- capabilities/sub-band-info/self- configure |
| 14 | O-RU supports LAA ending in Downlink Pilot Time Slot (DwPTS) | "urn:o-ran:laa:x.y" | /laa-config/ laa-ending-dwpts- supported |
| 15 | O-RU supports configurable timer for C/U plane monitoring | "urn:o-ran: supervision:x.y" | /supervision/cu-plane-monitoring |

</div>

1 **Table 9: Optional capabilities in O-RAN WG4 defined YANG models**

## B.8: Optional Capabilities Exposed Using Common Models

1. When O-RAN defines augmentation of existing YANG models, these models may expose support for certain optional
2. capabilities by the O-RU. 4

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| No | Optional Feature | Namespace | Leaf |
| 1 | IPv6 Supported by O-RU | "urn:ietf:params:xml:ns:yang:ietf- ip" | augmented /if:interfaces/if:interface: with ipv6 |

</div>

5 **Table 10: Optional capabilities in common YANG models**

# 6 Annex C (informative):

7 YANG Module Graphical Representation

1. The different released version of the set of YANG modules for the O-DU can be downloaded from O-RAN's website
2. [http://www.o-ran.org/resources/.](http://www.o-ran.org/resources/) The YANG models are available in a zip file, whose name is used to represent the
3. version of the YANG model and follows the numerical format defined in subclause 1.1 with the periods replaced with "-
4. ", i.e., YANG models for release 1.0.0 of the O1 interface specification are availabile in the file 1-0-0.zip. This zip file
5. includes all published revisions of the YANG models supporting a particular release of the O1 interface specification.
6. This Annex provides a set of "tree-views" of the modules to provide a simplified graphical representation of the data
7. models. These trees have been automatically generated using the pyang YANG validator tool. If there are any
8. inconsistencies between the tree representation in this Annex and the yang models, the yang models shall take precedence.
9. For WG4 YANG modules please refer to O-RAN WG4 Management Plane Specification [2] Annex D.

## C.1 Additional configuration folder

1. Currently no module can be represented in tree view as all of modules in this folder are augmentations of 3GPP
2. modules.

## C.2 Common Models folder

### C.2.1 o-ran-dhcp.yang Module

22

module: o-ran-dhcp

+--ro dhcp

+--ro interfaces\* [interface]

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

+--ro interface

+--ro dhcpv4

if:interface-ref

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

+--ro client-id?

+--ro dhcp-server-identifier?

+--ro domain-name?

+--ro domain-name-servers\*

+--ro interface-mtu?

+--ro default-gateways\*

+--ro netconf-clients\* [client]

string

inet:ip-address string

inet:ip-address uint32

inet:ip-address

<div class="table-wrapper" markdown="block">

| +--ro client

</div>

<div class="table-wrapper" markdown="block">

| +--ro optional-port?

</div>

netconf-client-id

inet:port-number

+--ro ca-ra-servers\* [servers]

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

+--ro servers

+--ro optional-port?

+--ro ca-ra-path?

+--ro subject-name?

+--ro protocol?

ca-ra-server-id

inet:port-number string

string enumeration

+--ro segw\* [gateways]

+--ro gateways

segw-id

+--ro dhcpv6

+--ro dhcp-client-identifier

23

24

25

26

27

28

29

30

31

32

33

34

35

36

37

38

39

40

41

42

43

44

45

1

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

+--ro dhcp-server-identifier

+--ro domain-name? string

+--ro domain-name-servers\* inet:ip-address

+--ro netconf-clients\* [client]

<div class="table-wrapper" markdown="block">

| +--ro client

</div>

<div class="table-wrapper" markdown="block">

| +--ro optional-port?

</div>

netconf-client-id

inet:port-number

+--ro ca-ra-servers\* [servers]

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

+--ro servers

+--ro optional-port?

+--ro ca-ra-path?

+--ro subject-name?

+--ro protocol?

ca-ra-server-id

inet:port-number string

string enumeration

+--ro segw\* [gateways]

+--ro gateways

segw-id

+--ro m-plane-dhcp

+--ro private-enterprise-number? uint16

+--ro vendor-class-data? string

2

3

4

5

6

7

8

9

10

11

12

13

14

15

16

17

18

### 19 C.2.2 o-ran-synchronization.yang Module

20

module: o-ran-synchronization

+--rw sync

+--rw sync-functions

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

| number

</div>

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

+--ro sync-state

+--ro sync-capability

enumeration

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

+--ro partial-timing-supported?

boolean

+--ro supported-reference-types\* [sync-source]

+--ro sync-source

enumeration

+--rw sync-config

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

+--rw sync-priority-config\* [sync-source]

<div class="table-wrapper" markdown="block">

| +--rw sync-source

</div>

+--rw synce-enabled?

enumeration

boolean

+--rw ptp-config

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

+--rw domain-number?

uint8

+--rw accepted-clock-classes\* [clock-classes]

<div class="table-wrapper" markdown="block">

| +--rw clock-classes

</div>

+--rw delay-asymmetry?

+--rw ptp-profile?

+--rw g-8275-1-config

uint8

int16

enumeration

<div class="table-wrapper" markdown="block">

| +--rw multicast-mac-address?

</div>

+--rw g-8275-2-config

+--rw local-ip-port?

enumeration

-> /if:interfaces/interface/name

+--rw master-ip-configuration\* [local-priority]

<div class="table-wrapper" markdown="block">

| +--rw local-priority

</div>

<div class="table-wrapper" markdown="block">

| +--rw ip-address?

</div>

uint8

string

+--rw log-inter-sync-interval?

int8

+--rw log-inter-announce-interval? int8

+--rw ptp-status

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

+--rw reporting-period?

+--ro clock-class?

+--ro clock-identity?

uint8

uint8 string

+--ro sources\* [source-clock-identity]

+--ro sync-source-status?

+--ro clock-class?

+--ro clock-accuracy?

+--ro offset-scaled-log-variance?

+--ro priority1?

+--ro priority2?

+--ro grandmaster-clock-identity?

+--ro source-clock-identity

+--ro source-port-number?

+--ro steps-removed?

+--ro local-port-number?

enumeration

uint8 uint8 uint16 uint8 uint8 string string uint16 uint16

-> /if:interfaces/interface/o-ran-int:port-reference/port-

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

+--ro ptp-timescale?

+--ro time-source?

+--ro time-traceable?

+--ro frequency-traceable?

+--ro current-utc-offset?

+--ro current-utc-offset-valid?

+--ro leap61?

+--ro leap59?

+--ro two-step-flag?

boolean

uint8 boolean boolean int16 boolean boolean boolean boolean

21

22

23

24

25

26

27

28

29

30

31

32

33

34

35

36

37

38

39

40

41

42

43

44

45

46

47

48

49

50

51

52

53

54

55

56

57

58

59

60

61

62

63

64

65

66

67

68

69

70

71

72

<div class="table-wrapper" markdown="block">

1. | +--rw synce-config
2. | | +--rw acceptance-list-of-ssm\* enumeration
3. | | +--rw ssm-timeout? uint16
4. | +--rw synce-status
5. | | +--rw reporting-period? uint8
6. | | +--ro sources\* [source-clock-identity]
7. | | +--ro source-clock-identity string
8. | | +--ro sync-source-status? enumeration
9. | | +--ro quality-level? uint8
10. | +--rw gnss-config {GNSS}?
11. | | +--rw enable? boolean
12. | | +--rw satellite-constellation-list\* enumeration
13. | | +--rw polarity? enumeration
14. | | +--rw cable-delay? uint16
15. | | +--rw anti-jam-enable? boolean {ANTI-JAM}?
16. | +--rw gnss-status {GNSS}?
17. | +--rw reporting-period? uint8
18. | +--ro name? string
19. | +--rw sync-source-status? enumeration
20. | +--ro gnss-sync-status? enumeration
21. | +--ro gnss-data
22. | +--ro satellites-tracked? uint8
23. | +--ro location
24. | +--ro altitude? int64
25. | +--ro latitude? geographic-coordinate-degree
26. | +--ro longitude? geographic-coordinate-degree

</div>

27 +--rw sync-master-functions

28 +--ro sync-master-capabilities

<div class="table-wrapper" markdown="block">

1. | +--ro ptp-sync-master-capabilities
2. | | +--ro ptp-sync-master-supported? boolean
3. | +--ro synce-sync-master-capabilities
4. | +--ro synce-sync-master-supported? boolean

</div>

33 +--rw sync-master-configuration

34 +--rw ptp-master-configuration

<div class="table-wrapper" markdown="block">

1. | +--rw ptp-master-enabled-local-port-numbers\* -> /if:interfaces/interface/o-ran-int:port-

</div>
2. reference/port-number
<div class="table-wrapper" markdown="block">

3. | +--rw domain-number? uint8
4. | +--rw multicast-mac-address? enumeration
5. | +--ro clock-identity? string
6. | +--rw priority2? uint8

</div>

41 +--rw ptp-status

<div class="table-wrapper" markdown="block">

1. | +--rw reporting-period? uint8
2. | +--ro clock-class? uint8
3. | +--ro clock-identity? string
4. | +--ro sources\* [source-clock-identity]
5. | +--ro sync-source-status? enumeration
6. | +--ro clock-class? uint8
7. | +--ro clock-accuracy? uint8
8. | +--ro offset-scaled-log-variance? uint16
9. | +--ro priority1? uint8
10. | +--ro priority2? uint8
11. | +--ro grandmaster-clock-identity? string
12. | +--ro source-clock-identity string
13. | +--ro source-port-number? uint16
14. | +--ro steps-removed? uint16
15. | +--ro local-port-number? -> /if:interfaces/interface/o-ran-int:port-

</div>
16. reference/port-number
<div class="table-wrapper" markdown="block">

17. | +--ro ptp-timescale? boolean
18. | +--ro time-source? uint8
19. | +--ro time-traceable? boolean
20. | +--ro frequency-traceable? boolean
21. | +--ro current-utc-offset? int16
22. | +--ro current-utc-offset-valid? boolean
23. | +--ro leap61? boolean
24. | +--ro leap59? boolean
25. | +--ro two-step-flag? boolean

</div>

67 +--rw synce-master-configuration

68 +--rw synce-master-enabled-local-port-numbers\* -> /if:interfaces/interface/o-ran-int:port-

69 reference/port-number

70

### C.2.3 o-ran-wg5-delay-management Module

1. module: o-ran-wg5-delay-management

1

+--rw wg5-delay-management

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| 2 +--ro window-determine-capability enumeration  3 +--rw window-determine-method | | | | | |
| 4 | | | +--rw method | | | enumeration |
| 5 | | | +--rw configuration-status | | | -> /wg5-delay-management/window-determine-capability |
| 6 | +--rw pre-configured-transport-delay\* [ru-instance-id]  7 | +--rw ru-instance-id ru-ref | | | | | |
| 8 | | | +--rw t12-min | | | uint32 |
| 9 | | | +--rw t12-max | | | uint32 |
| 10 | | | +--rw t34-min | | | uint32 |
| 11 | | | +--rw t34-max | | | uint32 |
| 12 +--rw o-du-window\* [ru-instance-id bandwidth subcarrier-spacing]  13 | +--rw ru-instance-id ru-ref | | | | | |
| 14 | | | +--rw | bandwidth | | bandwidth |
| 15 | | | +--rw | subcarrier-spacing | | uint32 |
| 16 | | | +--rw | ta4-min | | uint32 |
| 17 | | | +--rw | ta4-max | | uint32 |
| 18 | | | +--rw | t1a-min-cp-dl | | uint32 |
| 19 | | | +--rw | t1a-min-cp-ul | | uint32 |
| 20 | | | +--rw | t1a-min-up | | uint32 |
| 21 | | | +--rw | t1a-max-cp-dl | | uint32 |
| 22 | | | +--rw | t1a-max-cp-ul | | uint32 |
| 23 | | | +--rw | t1a-max-up | | uint32 |
| 24 +--ro o-ru-window\* [ru-instance-id bandwidth subcarrier-spacing]  25 | +--ro ru-instance-id ru-ref | | | | | |
| 26 | | | +--ro | bandwidth | | bandwidth |
| 27 | | | +--ro | subcarrier-spacing | | uint32 |
| 28 | | | +--ro | t2a-min-up | | uint32 |
| 29 | | | +--ro | t2a-max-up | | uint32 |
| 30 | | | +--ro | t2a-min-cp-dl | | uint32 |
| 31 | | | +--ro | t2a-max-cp-dl | | uint32 |
| 32 | | | +--ro | tcp-adv-dl | | uint32 |
| 33 | | | +--ro | ta3-min | | uint32 |
| 34 | | | +--ro | ta3-max | | uint32 |
| 35 | | | +--ro | t2a-min-cp-ul | | uint32 |
| 36 | | | +--ro | t2a-max-cp-ul | | uint32 |
| 37  38 | +--ro measured-transport-delay\* [ru-instance-id]  +--ro ru-instance-id ru-ref | | | | |
| 39 | +--ro t12-min | | | uint32 | |
| 40 | +--ro t12-max | | | uint32 | |
| 41 | +--ro t34-min | | | uint32 | |
| 42 | +--ro t34-max | | | uint32 | |
| 43 |  | | |  | |

</div>

## C.3 DU Specific Models folder

### C.3.1 o-ran-aggregation-base.yang Module

46

module: o-ran-aggregation-base

+--rw aggregated-o-ru

+--ro recovered-ru-instance-ids\* [ru-instance-id]

<div class="table-wrapper" markdown="block">

| +--ro ru-instance-id ru-ref

</div>

+--rw aggregation\* [ru-instance]

+--rw ru-instance -> /aggregated-o-ru/recovered-ru-instance-ids/ru- instance-id

+--rw or-agg-ops:operations-model

+--rw or-agg-pm:performance-management-model

+--rw or-agg-swm:software-management-model

47

48

49

50

51

52

53

54

55

56

### 57 C.3.2 o-ran-o1-ctiOdu.yang Module

58

module: o-ran-o1-ctiOdu

augment /me3gpp:ManagedElement/gnbdu3gpp:GNBDUFunction:

+--rw CTIFunction\* [id] {or-features:CTI}?

+--rw id string

+--rw attributes

<div class="table-wrapper" markdown="block">

| +--rw ctiActivateOnOdu boolean

</div>

+--rw CTIClient\* [id]

59

60

61

62

63

64

65

<div class="table-wrapper" markdown="block">

1. | +--rw id string
2. | +--rw attributes
3. | | +--rw ctiClientMacAddr? yang:mac-address
4. | | +--rw ctiClientInfo? string
5. | | +--rw ctiClientServerStatus\* [ctiServerRef]
6. | | +--rw ctiServerRef ->

</div>
7. /me3gpp:ManagedElement/gnbdu3gpp:GNBDUFunction/CTIFunction/CTIServer/attributes/ctiServerId
<div class="table-wrapper" markdown="block">

8. | | +--rw ctiClientServerActivate boolean
9. | | +--ro ctiClientServerConnStatus boolean
10. | +--rw CTISessionGroup\* [id]
11. | | +--rw id string
12. | | +--rw attributes
13. | | | +--rw ctiServerRef ->

</div>
14. /me3gpp:ManagedElement/gnbdu3gpp:GNBDUFunction/CTIFunction/CTIServer/attributes/ctiServerId
<div class="table-wrapper" markdown="block">

15. | | | +--rw ctiConnProfileRef ->

</div>
16. /me3gpp:ManagedElement/gnbdu3gpp:GNBDUFunction/CTIFunction/CTIConnProfile/attributes/ctiConnProfileId
<div class="table-wrapper" markdown="block">

17. | | +--rw CTISession\* [id]
18. | | +--rw id string
19. | | +--rw attributes
20. | | | +--rw ctiSessionId string
21. | | | +--rw oruId? string
22. | | | +--rw oruInterfaceId? string
23. | | | +--rw ctiNominalReportMsgInterval uint8
24. | | | +--rw ctiReportMessagingUseOfType1Ext boolean
25. | | +--rw CTIFlowsInUse\* [id]
26. | | +--rw id string
27. | | +--rw attributes
28. | | +--rw timeIntervalPerReport uint8
29. | | +--rw maxT34Latency uint16
30. | | +--rw minLoad? uint8
31. | | +--rw extraLoadCplane? uint8
32. | | +--rw ctiFlowRef ->

</div>
33. /me3gpp:ManagedElement/gnbdu3gpp:GNBDUFunction/CTIFunction/CTIServer/CTIFlow/attributes/ctiFlowId
<div class="table-wrapper" markdown="block">

34. | +--rw CTIConfig\* [id]
35. | +--rw id string
36. | +--rw attributes
37. | +--ro ctiReportRateCategory uint8
38. | +--ro ctiMessageTimingPerformance uint8
39. | +--ro supportedCtiVersions\* or-ctic:ctiVersion
40. | +--ro minNotificationAdvanceTime? uint16
41. | +--rw ctiKa uint8
42. | +--rw ctiTo uint8
43. | +--rw protocolSubtype? uint16
44. | +--rw ctiListeningUdpPort inet:port-number

</div>

45 +--rw CTIServer\* [id]

<div class="table-wrapper" markdown="block">

1. | +--rw id string
2. | +--rw attributes
3. | | +--rw ctiServerId string
4. | | +--rw ctiServerInfo? string
5. | | +--rw connectivityType enumeration
6. | | +--rw ctiServerMacAddr yang:mac-address
7. | | +--rw ctiServerHost inet:host
8. | | +--rw ctiEnable boolean
9. | | +--rw supportedCtiVersions\* or-ctic:ctiVersion
10. | | +--rw ctiReportMessagingUseOfType2 boolean
11. | | +--rw ponServerInfoUseNotificationsFromThisServer? boolean
12. | | +--rw docsisServerInfo? string
13. | +--rw CTIFlow\* [id]
14. | +--rw id string
15. | +--rw attributes
16. | +--rw ctiFlowId uint8
17. | +--rw filterType enumeration
18. | +--rw layer2Filter\* [idx]
19. | | +--rw idx uint32
20. | | +--rw sourceMac? yang:mac-address
21. | | +--rw destinationMac? yang:mac-address
22. | | +--rw ethertype? ethertype
23. | | +--rw pcp? or-types:pcp
24. | | +--rw vlanId? or-types:vlan-id
25. | +--rw layer3and4Filter\* [idx]
26. | +--rw idx uint32
27. | +--rw sourceAddress? inet:ip-address
28. | +--rw sourcePrefix? inet:ip-prefix
29. | +--rw destinationAddress? inet:ip-address
30. | +--rw destinationPrefix? inet:ip-prefix

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| 1 | | | +--rw dscp? | | | inet:dscp |
| 2 | | | +--rw sourcePortStart? | | | inet:port-number |
| 3 | | | +--rw sourcePortEnd? | | | inet:port-number |
| 4 | | | +--rw destinationPortStart? | | | inet:port-number |
| 5 | | | +--rw destinationPortEnd? | | | inet:port-number |
| 6 | | | +--rw ipv4Protocol? | | | uint8 |
| 7 | | | +--rw ipv6TrafficClass? | | | uint8 |
| 8 | | | +--rw ipv6Flow? | | | inet:ipv6-flow-label |
| 9  10 | |  +-- | +--rw ipv6NextHeader? rw CTIConnProfile\* [id] | | | uint8 |
| 11 | | | +--rw id | string | | |
| 12 | | | +--rw attributes |  | | |
| 13  14  15  16  17  18  19  20  21 | | +--rw ctiConnProfileId string  | +--rw connectivityType enumeration  | +--rw vlanTagForL2? or-types:vlan-id  | +--rw vlanTagForL3and4? or-types:vlan-id  | +--rw ctiClientHost? inet:host  +--rw CTIPattern\* [id]  +--rw id string  +--rw attributes  +--rw patternId uint32 | | | | |
| 22 | +--rw patternDuration | | | uint8 | |
| 23 | +--rw patternEvents | | | uint8 | |
| 24 | +--rw patternEventMultiplier | | | uint8 | |
| 25 | +--rw patternEventBytes | | | uint16 | |
| 26 | +--rw patternNormalization | | | boolean | |
| 27 |  | | |  | |

</div>

### 28 C.3.2 o-ran-o-du-shared-o-ru.yang

29

module: o-ran-o-du-shared-o-ru

augment /me3gpp:ManagedElement/gnbdu3gpp:GNBDUFunction:

+--rw SharedOruConfiguration\* [id]

+--rw id string

+--rw attributes

+--rw oDuRoleOfSharedORu? enumeration

+--rw sharedResourceOperatorId? string

+--rw oDuIdForSharedORu? string

+--rw secondaryODuInfoList\* [oDuIdForSharedORu]

+--rw oDuIdForSharedORu string

+--rw sharedResourceOperatorId? string

+--rw accessCotrolGroup? string

+--rw supervisionPerODu? boolean

+--rw callHomeClientInfo\* [host portNumber]

<div class="table-wrapper" markdown="block">

| +--rw host inet:host

</div>

<div class="table-wrapper" markdown="block">

| +--rw portNumber inet:port-number

</div>

+--rw sharedORuList\* string

30

31

32

33

34

35

36

37

38

39

40

41

42

43

44

45

46

47

## C.4 Provisioning folder

1. Currently no module can be represented in tree view as all of modules in this folder are augmentations of o-ran-
2. aggregation-base module.

51

## C.5 CTI folder

1. Currently no module can be represented in tree view. 54

# 1 Annex D (informative):

2 WG4 instance categories in Hierarchical Model

1. In the spreadsheet attached to this specification you can find categories of WG4 YANG data model instances
2. Note: Yellow parts in above spreadsheet means that those parameters are not categorized yet.
3. All instances are categorized by the following Legend.

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Category** | **Legend** | **definition** |
| **rw** | **M** | Mapping from SA5 parameter |
| **I** | Creating by O-DU internal logic |
| **A** | Configuring by Aggregation model |
| **ro** | **M** | Mapping to SA5 parameter |
| **N** | No need to notify to SMO |
| **A** | Get by Aggregation model |

</div>

1. **Table 11: Categories for YANG parameters**

# 7 Annex E (informative):

8 Parameters definition for 3GPP conformance testing

9

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **TS38.141-1**  **Section #** | **Test** | **Configuration** | **Measurements** | **Measurements Reports** |
| 7.2 | Reference sensitivity level | 1. Test item 2. Type of FRC 3. Carrier frequency 4. PRB offset 5. Beam ID (if O-RU performs beamforming) | 1. Number of receptions 2. Number of CRC- OK | Throughput |
| 7.3 | Dynamic Range |
| 7.4.1 | Adjacent Channel Selectivity |
| 7.4.2 | In-band blocking |
| 7.5 | Out-of-band blocking |
| 7.7 | Receiver intermodulation |
| 7.8 | In-channel selectivity |
| 8.2.1 | Performance requirements for PUSCH with transform precoding disabled | 1. Test item 2. Type of FRC 3. Carrier frequency 4. PRB offset 5. PUCCH mapping type (A or B) 6. Beam ID (if O-RU   performs beamforming) | 1. Number of receptions 2. Number of CRC- OK | Throughput |
| 8.2.2 | Performance requirements for  PUSCH with transform precoding enabled | Same as 8.2.1 | Same as 8.2.1 | Same as 8.2.1 |
| 8.2.3 | Performance requirements for UCI multiplexed on PUSCH | 1. Test item 2. Type of FRC 3. Carrier frequency 4. PRB offset 5. PUCCH mapping type (A or B) 6. Number of UCI bits (7 bits or 40 bits) | 1. Number of USI on PUSCH reception slots 2. Number of HARQ NACK | BLER |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
|  |  | 7. Beam ID (if O-RU performs  beamforming) |  |  |
| 8.2.4 | Performance requirements for PUSCH for high speed  train | Same as 8.2.1 | Same as 8.2.1 | Same as 8.2.1 |
| 8.2.5 | Performance requirements for UL timing adjustment | Same as 8.2.1 | Same as 8.2.1 | Same as 8.2.1 |
| 8.2.6 | Performance requirements for PUSCH with 0.001% BLER | Same as 8.2.1 | Same as 8.2.3 | Same as 8.2.3 |
| 8.2.7 | Performance requirements for PUSCH repetition Type  A | Same as 8.2.1 | Same as 8.2.3 | Same as 8.2.3 |
| 8.2.8 | Performance requirements for PUSCH Mapping Type B with non-slot  transmission | Same as 8.2.1  Note: PUCCH mapping type is B | Same as 8.2.1 | Same as 8.2.1 |
| 8.2.9 | Performance requirements for PUSCH msgA for 2- step RA type | Same as 8.2.1 | Same as 8.2.3 | Same as 8.2.3 |
| 8.3.1 | Performance requirements for PUCCH format 0 | 1. Test item 2. Carrier frequency 3. PRB offset 4. PUCCH format (test case) 5. Beam ID (if O-RU   performs beamforming) | 1. Number of PUCCH reception slots 2. Number of HARQ ACK | 1. Probability of ACK detection 2. Probability of ACK missed detection |
| 8.3.2.1 | Performance requirements for PUCCH format 1: NACK to ACK | Same as 8.3.1 | 1. Number of PUCCH reception slots 2. Number of HARQ ACK in idle period 3. Number of HARQ ACK in NACK bits | 1. Probability of ACK false detection 2. Probability of NACK to ACK   detection |
| 8.3.2.2 | Performance requirements for PUCCH format 1: ACK missed detection | Same as 8.3.1 | 1. Number of PUCCH reception slots 2. Number of HARQ ACK in idle period 3. Number of HARQ ACK in ACK bits | 1. Probability of ACK false detection 2. Probability of ACK detection |
| 8.3.3.1 | Performance requirements for PUCCH format 2: ACK  missed detection | Same as 8.3.1 | Same as 8.3.2.2 | Same as 8.3.2.2 |
| 8.3.3.2 | Performance requirements for PUCCH format 2: UCI BLER performance  requirements | Same as 8.3.1 | 1. Number of PUCCH reception slots 2. Number of CRC NG (UCI decoring) | UCI block error |
| 8.3.4 | Performance requirements for PUCCH format 3 | 1. Test item 2. Carrier frequency 3. PRB offset 4. PUCCH format (test case) 5. Test 1 or Test 2 6. Beam ID (if O-RU performs   beamforming) | Same as 8.3.3.2 | Same as 8.3.3.2 |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| 8.3.5 | Performance requirements for  PUCCH format 4 | Same as 8.3.1 | Same as 8.3.3.2 | Same as 8.3.3.2 |
| 8.4.1 | PRACH false alarm probability and missed detection | 1. Test item 2. Carrier frequency 3. PRB offset 4. PRACH format (test case) 5. Beam ID (if O-RU performs beamforming) | 1. Total probability of false PRACH detection (Pfa)    1. Number of PRACH   reception slots   * 1. Number of preamble detection slots  1. Probability of PRACH detection (Pd)    1. Number of PRACH   reception slots   * 1. Number of preamble detection slots   2. Value of TA when detecting preamble in each slot   Note: TA is considered when calculating  Pd | 1. Pfa 2. Pd |

</div>

###### Table 12: Parameters for O-RU uplink evaluation

2

3

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **TS38.141-1**  **Section #** | **Test** | **Configuration** | **Measurements** | **Measurements Reports** |
| 6.2 | Base station output power | 1. Test item 2. Cell identifier 3. Carrier frequency 4. Type of test model 5. Tx bandwidth [RB] and SCS 6. Number of antenna ports 7. Beam ID (if O-RU performs beamforming) | None.  Measurement at O-DU is not required. | |
| 6.3.2 | RE power control dynamic range |
| 6.3.3 | Total power dynamic range |
| 6.4.1 | Transmitter OFF power |
| 6.4.2 | Transmitter transient period |
| 6.5.1 | Frequency error |
| 6.5.2 | Modulation quality |
| 6.5.3 | Time alignment error |
| 6.6.2 | Occupied bandwidth |
| 6.6.3 | Adjacent channel leakage power ratio |
| 6.6.4 | Operating band unwanted emissions |
| 6.6.5 | Transmitter spurious emissions |
| 6.7 | Transmitter intermodulation |

</div>

###### 4 Table 13: Parameters for O-RU downlink evaluation

1

# 2 Annex F (informative):

3 Network Energy Saving

## F.1 Introduction

1. This section describes the requirements and scope of the energy saving techniques relevant to O1 interface [i.11] and its
2. associated information. The following techniques are employed to attain the network energy saving.

## F.2 Cell and carrier deactivation / activation

### F.2.1 Flow description

1. 1. The O-DU using Fronthaul M-Plane interface collects capabilities related to support for Network Energy Saving
2. from the O-RU. The parameters that are exposed are out of scope of this specification.
3. 2. O-DU using O1 interface exposes to MnS Consumer its capabilities along with O-RU capabilities reported in
4. Step #1.
5. 3. Via O1 interface the O-DU receives from MnS Consumer configuration needed to enable services.
6. 4. O-DU internally applies received configuration (assumption: the configuration is valid - otherwise scenario stops
7. with O-DU rejecting received configuration).
8. 5. O-DU applies configuration to O-RU(s) using FH M-Plane interface where applicable.
9. <traffic starts on air interface>
10. 6. O-DU exposes available traffic and/or load performance and energy consumption measurements data as per its
11. current configuration to MnS Consumer via O1 interface.
12. 7. MnS Consumer analyses above collected data.
13. 8. Based on the analysis done in Step 7, MnS Consumer optionally prepares reconfiguration for the O-CU. The
14. way how MnS Consumer controls O-CU is out of scope of this document.
15. 9. O-DU receives F1 message containing list of cells to be deactivated / activated (the F1 message could also be
16. single cell).
17. 10. As an alternative to Step 8, MnS Consumer optionally creates Energy Saving Policies for O-CU. The way how
18. MnS Consumer controls O-CU is out of scope of this document.
19. 11. O-CU periodically checks the conditions specified in the policy are fulfilled. The way how O-CU checks the
20. conditions stated in the policy is out of scope of this document.
21. 12. If policy conditions are fulfilled, O-DU optionally receives the list of cells to be activated/deactivated, which is
22. out of scope of this document.
23. 13. O-DU translates between cells received in F1 message and associated carriers that serve for such cells.
24. 14. O-DU performs deactivation / activation of carriers in O-RU through Fronthaul (FH) interface, where those
25. carriers determined in steps 9 and 13.
26. 15. The flow loops to Step #6 as shown in Figure F.1.

![Generated by PlantUML]({{site.baseurl}}/assets/images/f03605f92f57.png)1

###### Figure F.1: Network Energy Saving - Cell and carrier deactivation / activation use case.

1. This method shall be used to achieve energy saving by deactivating a cell(s) and its associated carriers.
2. From O-DU perspective it does not matter if cell deactivation / activation request via F1 interface is received because of
3. direct command sent to O-CU by MnS Consumer or is result of processing of the policies in the list (conditionals formed
4. in any Energy Saving Policy in the list for cell deactivation or activation are determined as fulfilled by O-CU). In case of
5. policy processing assumed is, that O-CU knows at least one Energy Saving Policy (ESP) that may lead to cell disablement
6. / enablement.

3

1. At O-DU level the scenario is always initiated by F1 message containing list of cells to be deactivated or activated.
2. Content of such F1 message is processed by O-DU. Carriers related to cells requested in F1 message are determined.
3. Knowing translation between cells and carriers, the O-DU requests O-RU to deactivate / activate determined [tr]x-array-
4. carriers accordingly.

## F.3 RF Channel Reconfiguration

### F.3.1 Flow description

1. 1. The O-DU using Fronthaul M-Plane interface collects capabilities related to support for Network Energy Saving
2. from the O-RU. The parameters that are exposed are out of scope of this specification.
3. 2. O-DU using O1 interface exposes to MnS Consumer its capabilities along with O-RU capabilities reported in
4. Step #1.
5. 3. Via O1 interface the O-DU receives from MnS Consumer configuration needed to enable services.
6. 4. O-DU internally applies received configuration (assumption: the configuration is valid - otherwise scenario stops
7. with O-DU rejecting received configuration).
8. 5. O-DU applies configuration to O-RU(s) using FH M-Plane interface where applicable.
9. <traffic starts on air interface>
10. 6. O-DU exposes available traffic and/or load performance and energy consumption measurements as per its
11. current configuration to MnS Consumer via O1 interface.
12. 7. MnS Consumer analyses above collected data.
13. 8. Based on the analysis done in Step 7, MnS Consumer may optionally decide to provide O-DU with new Energy
14. Saving Policy (ESP) with rules/conditions for RF Channel Reconfiguration
15. 9. O-DU may optionally receive a request from MnS Consumer to remove existing Energy Saving Policy (ESP)
16. for RF Channel Reconfiguration.
17. 10. O-DU notifies the MnS Consumer to inform if request for policy addition / removal has been executed
18. successfully.
19. 11. The flow loops to Step #6 as shown in Figure F.2.

![Generated by PlantUML]({{site.baseurl}}/assets/images/e4037427907c.png)1

2 Figure F.2: Common flow for Network Energy Saving use cases for RF Channel Reconfiguration 3

1. In this method, RF channel(s) and associated antenna array elements may be turned off / on to control energy
2. consumption.

6

1. High level view of RF Channel Reconfiguration sub use case using TRx Control based on policies provided by MnS
2. Consumer to O-DU is shown in Figure F.3, which describes the following key steps. 9

10 Option 1) TRX Control Configuration activation by C-Plane

1. 1. When periodically processing known Energy Saving Policies, the O-DU detects those conditions for specific
2. TRX Control configuration activation is fulfilled.
3. 2. The O-DU using Fronthaul C-Plane Interface requests O-RU to activate specific TRX Control configuration. 4
4. Option 2) TRX Control Configuration deactivation by C-Plane
5. 1. When periodically processing known Energy Saving Policies, the O-DU detects those conditions for specific
6. TRX Control configuration deactivation is fulfilled, and the O-DU knows that C-Plane can be used for
7. deactivation.
8. 2. The O-DU using Fronthaul C-Plane requests O-RU to deactivate specific TRX Control configuration. 10

11 Option 3) TRX Control Configuration deactivation by M-Plane

12 1. When periodically processing known Energy Saving Policies, the O-DU detects those conditions for specific

13 TRX Control configuration deactivation is fulfilled, and the O-DU knows that M-Plane shall be used for TRX

14 Control deactivation.

15 2. The O-DU using Fronthaul M-Plane requests O-RU to deactivate specific TRX Control configuration.

![Generated by PlantUML]({{site.baseurl}}/assets/images/df733d70dd17.png)1

###### 2 Figure F.3: Network Energy Saving - RF Channel Reconfiguration use case based on policies known to O-DU

3

## 4 F.4 Advanced Sleep Modes

5

### F.4.1 Flow description

1. 1. The O-DU using Fronthaul M-Plane interface collects capabilities related to support for Network Energy Saving
2. from the O-RU. The parameters that are exposed are out of scope of this specification.
3. 2. O-DU using O1 interface exposes to MnS Consumer its capabilities along with O-RU capabilities reported in
4. Step #1.
5. 3. Via O1 interface the O-DU receives from MnS Consumer configuration needed to enable services.
6. 4. O-DU internally applies received configuration (assumption: the configuration is valid - otherwise scenario stops
7. with O-DU rejecting received configuration).
8. 5. O-DU applies configuration to O-RU(s) using FH M-Plane interface where applicable.
9. <traffic starts on air interface>.
10. 6. O-DU exposes available traffic and/or load performance and energy consumption measurements as per its
11. current configuration to MnS Consumer via O1 interface.
12. 7. MnS Consumer analyses above collected data.
13. 8. Based on the analysis done in Step 7, MnS Consumer may optionally decide to provide O-DU with new Energy
14. Saving Policy (ESP) with rules/conditions for Advanced Sleep Mode.
15. 9. O-DU may optionally receive a request from MnS Consumer to remove existing Energy Saving Policy (ESP)
16. for Advanced Sleep Mode.
17. 10. O-DU notifies the MnS Consumer to inform if request for policy addition / removal has been executed
18. successfully.
19. 11. The flow loops to Step #6 as shown in Figure F.4.

![Generated by PlantUML]({{site.baseurl}}/assets/images/35a73b20c472.png)1

###### Figure F.4: Network Energy Saving use cases for Advanced Sleep Modes

* 1. In this method, some of the O-RU components or the whole O-RU (except circuitry and SW components needed to
  2. process M-Plane) shall be put to sleep to save energy, where the sleep should be optionally implemented at array level
  3. and/or carrier level, or O-RU level.
  4. High level view of Advanced Sleep Mode use case based on policies provided by MnS Consumer to O-DU is shown in
  5. Figure F.5, which describes the following key steps. 8

1. Option 1) Advanced Sleep Mode activation by C-Plane
2. 1. When periodically processing known Energy Saving Policies, the O-DU detects that conditions for specific Sleep
3. Mode activation are fulfilled.
4. 2. The O-DU using Fronthaul C-Plane requests O-RU to activate specific Sleep Mode. 4
5. Option 2) Advanced Sleep Mode deactivation by C-Plane
6. 1. When periodically processing known Energy Saving Policies, the O-DU detects that conditions for specific Sleep
7. Mode deactivation are fulfilled and the O-DU knows that C-Plane must be used for Sleep Mode deactivation.
8. 2. The O-DU using Fronthaul C-Plane Interface requests O-RU to deactivate specific Sleep Mode. 9
9. Option 3) Advanced Sleep Mode deactivation by M-Plane
10. 1. When periodically processing known Energy Saving Policies, the O-DU detects that conditions for specific Sleep
11. Mode deactivation are fulfilled, and the O-DU knows that M-Plane must be used for Sleep Mode deactivation.
12. 2. The O-DU using Fronthaul M-Plane Interface requests O-RU to deactivate specific Sleep Mode.

![Generated by PlantUML]({{site.baseurl}}/assets/images/d5fff0ef6e36.png)1

2 Figure F.5: Network Energy Saving - Advanced Sleep Mode use case based on policies known to O-DU.

# 1 Revision History

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **Date** | **Revision** | **Author** | **Description** |
| 2020.09.25 | 01.00 | O-RAN-WG5 | First published version based on contributions and review by O-RAN members |
| 2021.07.08 | 02.00 | O-RAN-WG5 | Updates to v01.00   * Security requirements alignment with O-RAN Security Focus Group document * Addition of new parameeters for Network slicing * Addition of required measurements to support Slicing management and SLA assurance |
| 2021.11.12 | 03.00 | O-RAN-WG5 | Updates to v02.00   * Specification name update * Transport protocol chapter update - alignment with O1 interface specification * Interface description chapter update - alignment with O1 interface specification * Counters description update * Sync chapter update * PRB in RRMPolicy IOC alignment with 3GPP * Referenced documents versions update * Editorial modifications   Additions of new functionalities   * Addition of counters to support Slicing management and SLA assurance |
| 2022.03.24 | 04.00 | O-RAN-WG5 | Updates to v03.00:   * Counters description update * Fault events notification update * Fault operations update * Retrieval file list update * Startup and registration update * PNF Software Management clarification * PM File content update * Trace management update * Editorial modifications and updates |
| 2022.07.21 | 05.00 | O-RAN-WG5 | Updates to v04.00:   * Corrections and updates to Performance counters table * Addition of "PDCCH for BWP switching" and "Distribution of Activated BWP ID" counters * Change the words "SSB beam index" and "SSB beam" to "SSB index" and "SSB" in Annex A Counter definition, respectively. |
| 2022.11.10 | 06.00 | O-RAN-WG5 | Updated to v05.00:   * Typographical corrections in Performance counters tables * Updated WG5 M-Plane with related terminology according to context * Remove chapter 10.5 * Editorial updates * Filename change to show O-RAN release number |
| 2023.03.08 | 07.00 | O-RAN-WG5 | Updated to v.06.00:   * Shared O-RU introduction * Added mentions of 5QI to particular PM counters * Editorial fixes |

</div>

2

3

1

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| 2023.07.20 | 08.00 | O-RAN-WG5 | Updated to v.07.00:   * Updated PM Counters. * IMCS updated to max value 28 for some counters. * Clauses renumbered. * Updates to list available files clause. * Figures renumbered. * O-DU Architecture model text updated. * References section cleanup and split to normative and informative * Editorial corrections |
| 2023.11.07 | 09.00 | O-RAN-WG5 | Updated to v08.00:   * Addition of Attributes definitions table * Annex A. 11.30.1 Fixed UL to DL in Condition section * Added 3GPP Conformance testing clause and Annex E * Updates to counters defined in A.1.14, A.1.15, A.11.31, A.11.32, A.11.33, A.11.34, A.11.35, A.11.37, A.11.38, A.11.39 * Addition of counters in A.2.23, A.2.24, A.4.5, A.4.6, A.9.7, A.12.10 * Editorial updates according to comments * Added Information Models for NES |

</div>

2
---

- View in [GitHub Mode]({{site.github_page_url}}/O-RAN.WG5.O-DU-O1.0-R003-v09.00.docx.md).
- Go back to [Table of Contents]({{site.baseurl}}/).
- Download the [Original Document]({{site.download_url}}/O-RAN.WG5.O-DU-O1.0-R003-v09.00.docx).
