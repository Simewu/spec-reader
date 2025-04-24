---
title: O-RAN.WG5.O-CU-O1.0-R003-v07.00.docx.md
author: O-RAN Alliance
layout: post
---

- View in [GitHub Mode]({{site.github_page_url}}/O-RAN.WG5.O-CU-O1.0-R003-v07.00.docx.md).
- Go back to [Table of Contents]({{site.baseurl}}/).
- Download the [Original Document]({{site.download_url}}/O-RAN.WG5.O-CU-O1.0-R003-v07.00.docx).

---

* toc
{:toc}

---

![]({{site.baseurl}}/assets/images/4db4d6b959d3.png)O-RAN.WG5.O-CU-O1.0-R003-v07.00

*Technical Specification*

1

**O-RAN Work Group 5 (Open F1/W1/E1/X2/Xn interface Workgroup)**

**O1 Interface specification for O-CU-UP and O-CU-CP**

Copyright (C) 2024 by O-RAN ALLIANCE e.V.

The copying or incorporation into any other work of part or all of the material available in this specification in any form without the prior written permission of O-RAN ALLIANCE e.V. is prohibited, save that you may print or download extracts of the material of this specification for your personal use, or copy the material of this specification for the purpose of sending to individual third parties for their information provided that you acknowledge O-RAN ALLIANCE as the source of the material and that you inform the third party that these conditions apply to them and that they must comply with them.

O-RAN ALLIANCE e.V.

Buschkauler Weg 27, 53347 Alfter, Germany Register of Associations, Bonn VR 11238 VAT ID DE321720189.

2024 O-RAN ALLIANCE e.V. All Rights Reserved 1

# 1 Contents

##### Contents 2

##### List of Figures 6

##### List of Tables 7

##### Foreword 7

##### Modal verbs terminology 7

##### 1 Scope 8

##### 2 References 8

1. 2.1 Normative references 8
2. 2.2 Informative references 8

##### 3 Definitions of terms symbols and abbreviations 9

1. 3.1 Terms 9
2. 3.2 Symbols 9
3. 3.3 Abbreviations and acronyms 9
4. 3.4 Conventions 9
5. 3.5 Revision and compatibility handling 10

##### 4 High Level Description 10

1. 4.1 Top level functional description and terminology 10
2. 4.1.1 Architecture for O-RAN WG5 functional split 10
3. 4.1.2 O1 interface for O-CU architecture model 10
4. 4.1.3 Transport Network 10
5. 4.2 Interfaces 10

##### 5 PNF Startup and Registration Management 11

1. 5.1 PNF Plug-n-Play 11
2. 5.2 PNF Registration 11

##### 6 Heartbeat Management Services 11

1. 6.1 Heartbeat Notification 11
2. 6.2 Heartbeat Control 11

##### 7 PNF Software Management Services 12

1. 7.1 Software Package Naming and Content 12
2. 7.2 Software Inventory 12
3. 7.3 Software Download 12
4. 7.4 Software Activation Pre-Check 12
5. 7.5 Software Activate 12

##### 8 Performance Management 12

1. 8.1 Performance Data File Reporting 12
2. 8.2 Performance Data Streaming 12
3. 8.3 Measurement Job Control 12

##### 9 Fault Management 13

1. 9.1 Fault Notification 13
2. 9.2 Fault Supervision Control 13

##### 10 File Management 13

1. 10.1 File Structure 13
2. 10.2 Notification notifyFileReady 14
3. 10.3 File Management Operation: listAvailableFiles 15
4. 10.4 File Management Operation: transferFile 15
5. 10.5 File Management Operation: downloadFile 15
6. 11 Provisioning Management 16
7. 11.1 Configuration for O-CU 16
8. 11.2 Notification aspect 17
9. 11.2.1 Subscribing for O-CU notification from SMO 17
10. 11.3 Information model for O-CU-CP 17
11. 11.3.1 Imported and associated information entities 17
12. 11.3.2 Class diagram 17
13. 11.3.3 Class definition 20
14. 11.3.4 Attribute definitions 22
15. 12 Trace Management Services 24
16. 12.1 Call Trace 24
17. 12.2 Minimization of Drive Testing (MDT) 24
18. 12.3 Radio Link Failure (RLF) 24
19. 12.4 RRC Connection Establishment Failure (RCEF) 25
20. 12.5 Trace Control 25
21. 12.6 Streaming Trace 25
22. Annex A (informative) : Counter definition 26
23. A.1 NR PDCP performance counters (Type A): 26
24. A.1.1 Distribution of UE per UL received data volume 26
25. A.1.2 Distribution of DL UE throughput in O-CU 27
26. A.1.3 Total discarded UL PDCP SDU volume 28
27. A.1.4 UL PDCP SDU volume discarded due to bearer release 28
28. A.1.5 Total discarded DL PDCP SDU volume discarded 29
29. A.1.6 DL PDCP SDU volume discarded due to bearer release 29
30. A.1.7 DL PDCP SDU volume discarded due to out of memory 30
31. A.1.8 PDCP transmission stop 30
32. A.1.9 UL F1-U packet loss rate 31
33. A.1.10 UL PDCP SDU Loss Rate 31
34. A.1.11 DL PDCP SDU Loss Rate 32
35. A.1.12 DL F1-U packet loss rate 32
36. A.2 NR PDCP performance counters (Type B) 33
37. A.2.1 UL PDCP SDU Data Volume 33
38. A.2.2 UL PDCP SDU Data Volume on X2 Interface 33
39. A.2.3 UL PDCP SDU Data Volume on Xn Interface 34
40. A.2.4 DL PDCP SDU Data Volume 35
41. A.2.5 DL PDCP SDU Data Volume on X2 Interface 35
42. A.2.6 DL PDCP SDU Data Volume on Xn Interface 36
43. A.2.7 UL PDCP SDU Data Volume per cell 37
44. A.2.8 UL PDCP SDU Data Volume on X2 Interface per cell 37
45. A.2.9 UL PDCP SDU Data Volume on Xn Interface per cell 38
46. A.2.10 DL PDCP SDU Data Volume per cell 38
47. A.2.11 DL PDCP SDU Data Volume on X2 Interface per cell 39
48. A.2.12 DL PDCP SDU Data Volume on Xn Interface per cell 39
49. A.3 NR S1-U Interface Performance Counters 40
50. A.3.1 UL PDCP SDU volume transmitted via S1-U UL GTP-U tunnel 40
51. A.3.2 DL PDCP SDU volume received via S1-U DL GTP-U tunnel 40
52. A.3.3 UL PDCP SDUs transmitted via S1-U UL GTP-U tunnel 41
53. A.3.4 DL PDCP SDUs transmitted via S1-U DL GTP-U tunnel 41
54. A.4 NR NG-U Interface Performance Counters 42
55. A.4.1 UL PDCP SDU volume transmitted via NG-U UL GTP-U tunnel 42
56. A.4.2 DL PDCP SDU volume received via NG-U DL GTP-U tunnel 42
57. A.5 NR X2-U Interface performance counters (O-CU) 43
58. A.5.1 UL PDCP SDU volume received via X2-U UL GTP-U tunnel (X2-U UL data forwarding) 43
59. A.5.2 DL PDCP SDU volume received via X2-U DL GTP-U tunnel (X2-U DL data forwarding) 43
60. A.6 NR Xn-U Interface performance counters (O-CU) 44
61. A.6.1 UL PDCP SDU volume received via Xn-U UL GTP-U tunnel (Xn-U UL data forwarding) 44
62. A.6.2 DL PDCP SDU volume received via Xn-U DL GTP-U tunnel (Xn-U DL data forwarding) 44
63. A.7 NR X2-C Interface performance counters (O-CU) 45
64. A.7.1 Transmitted X2-C messages 45
65. A.7.2 Received X2-C messages 45
66. A.8 NR Xn-C Interface performance counters (O-CU) 46
67. A.8.1 Transmitted Xn-C messages 46
68. A.8.2 Received Xn-C messages 46
69. A.9 NR F1-C Interface performance counters (O-CU-CP) 47
70. A.9.1 Transmitted F1-C messages 47
71. A.9.2 Received F1-C messages 47
72. A.10 Number of UE Contexts for EN-DC 47
73. A.10.1 Max SN terminated split bearer UE Contexts 47
74. A.10.2 Max SN terminated MCG bearer UE Contexts 48
75. A.10.3 Average SN terminated split bearer UE Contexts 49
76. A.10.4 Average SN terminated MCG bearer UE Contexts 49
77. A.10.5 Total DL CA UE Contexts PSCell (100ms) 50
78. A.10.6 Total DL CA UE Contexts PSCell (10s) 51
79. A.10.7 Total DL CA UE Contexts SCell (100ms) 52
80. A.10.8 Total DL CA UE Contexts SCell (10s) 52
81. A.10.9 Max DL CA UE Contexts PSCell (100ms) 53
82. A.10.10 Max DL CA UE Contexts PSCell (10s) 54
83. A.10.11 Max DL CA UE Contexts SCell (100ms) 55
84. A.10.12 Max DL CA UE Contexts SCell (10s) 55
85. A.11 Number of UE Contexts for SA 56
86. A.11.1 Total RRC Connected UE Contexts 56
87. A.11.2 Total UE Contexts Per QoS 57
88. A.11.3 Total SCell Configuration UE Contexts 58
89. A.11.4 Total Measurement Gap UE Contexts 59
90. A.11.5 Max RRC Connected UE Contexts 59
91. A.11.6 Max UE Contexts Per QoS 60
92. A.11.7 Max SCell Configuration UE Contexts 61
93. A.11.8 Max Measurement Gap UE Contexts 62
94. A.11.9 Total emergency UE Contexts 62
95. A.11.10 Total high priority access UE Contexts 63
96. A.11.11 Max emergency UE Contexts 64
97. A.11.12 Max high priority access UE Contexts 65
98. A.11.13 Total SN terminated split bearer UE Contexts in NR-DC 66
99. A.11.14 Max SN terminated split bearer UE Contexts in NR-DC 67
100. A.11.15 Total UE Contexts during voice call 68
101. A.12 Monitoring of procedure for EN-DC 68
102. A.12.1 Number of SgNB Addition procedure attempted for each Cell 68
103. A.12.2 Number of SgNB Addition procedure successfully for each Cell 69
104. A.12.3 Number of SgNB Addition procedure attempted for each neighbour eNB 69
105. A.12.4 Number of SgNB Addition procedure successfully for each neighbour eNB 70
106. A.12.5 Number of SgNB modification procedure attempted for each neighbour eNB 70
107. A.12.6 Number of SgNB modification procedure successfully for each neighbour eNB 71
108. A.13 Monitoring of RRC Connection for EN-DC 71
109. A.13.1 Number of Measurement Gap Coordination for per FR2 gap via SRB3 attempted 71
110. A.13.2 Number of Measurement Gap Coordination for per FR2 gap via SRB3 successfully 72
111. A.13.3 Number of Inter gNB-DU PSCell Change via SRB3 attempted 72
112. A.13.4 Number of Inter gNB-DU PSCell Change via SRB3 successfully 73
113. A.13.5 Number of Intra gNB-DU PSCell Change via SRB3 attempted 73
114. A.13.6 Number of Intra gNB-DU PSCell Change via SRB3 successfully 74
115. A.14 Monitoring of RRC Connection for SA 74
116. A.14.1 Number of initial RRC Connection requests 74
117. A.14.2 Number of RRC connection completions for initial RRC Connection requests 74
118. A.14.3 Number of retransmission RRC Connections requests 75
119. A.14.4 Number of RRC Connections completions for retransmission RRC Connections requests 75
120. A.14.5 Number of incomplete RRC Connection by failed resource allocations 76
121. A.14.6 Number of incomplete RRC Connection by O-CU internal error 76
122. A.14.7 Number of initial RRC Connection requests each Establishment Cause 76
123. A.14.8 Number of RRC connection completions for initial RRC Connection requests each Establishment Cause 77
124. A.14.9 Number of retransmission RRC Connections requests each Establishment Cause 78
125. A.14.10 Number of RRC Connections completions for retransmission RRC Connections requests each
126. Establishment Cause 79
     1. A.14.11 Number of incomplete RRC Connection by failed resource allocations each Establishment Cause 80
     2. A.14.12 Number of incomplete RRC Connection by O-CU internal error each Establishment Cause 80
     3. A.15 Monitoring of Establishment calls for SA 81
     4. A.15.1 Number of attempted establishment calls for mo-Data 81
     5. A.15.2 Number of successful establishment calls for mo-Data 82
     6. A.15.3 Number of incomplete establishment calls for mo-Data by protocol error 82
     7. A.15.4 Number of incomplete establishment calls for mo-Data by O-CU internal error 83
     8. A.15.5 Number of incomplete establishment calls for mo-Data by O-DU error detection 83
     9. A.15.6 Number of attempted establishment calls for mt-Access 83
     10. A.15.7 Number of successful establishment calls for mt-Access 84
     11. A.15.8 Number of incomplete establishment calls for mt-Access by protocol error 84
     12. A.15.9 Number of incomplete establishment calls for mt-Access by O-CU internal error 85
     13. A.15.10 Number of incomplete establishment calls for mt-Access by O-DU error detection 85
     14. A.15.11 Number of attempted establishment calls for mo-Signalling 85
     15. A.15.12 Number of successful establishment calls for mo-Signalling 86
     16. A.15.13 Number of incomplete establishment calls for mo-Signalling by protocol error 86
     17. A.15.14 Number of incomplete establishment calls for mo-Signalling by O-CU internal error 87
     18. A.15.15 Number of incomplete establishment calls for mo-Signalling by O-DU error detection 87
     19. A.15.16 Number of attempted establishment calls for mo-SMS 88
     20. A.15.17 Number of successful establishment calls for mo-SMS 88
     21. A.15.18 Number of incomplete establishment calls for mo-SMS by protocol error 89
     22. A.15.19 Number of incomplete establishment calls for mo-SMS by O-CU internal error 89
     23. A.15.20 Number of incomplete establishment calls for mo-SMS by O-DU error detection 89
     24. A.15.21 Number of attempted establishment calls for high priority access 90
     25. A.15.22 Number of successful establishment calls for high priority access 90
     26. A.15.23 Number of incomplete establishment calls for high priority access by protocol error 91
     27. A.15.24 Number of incomplete establishment calls for high priority access by O-CU internal error 91
     28. A.15.25 Number of incomplete establishment calls for high priority access by O-DU error detection 92
     29. A.15.26 Number of attempted establishment calls for emergency 92
     30. A.15.27 Number of successful establishment calls for emergency 92
     31. A.15.28 Number of incomplete establishment calls for emergency by protocol error 93
     32. A.15.29 Number of incomplete establishment calls for emergency by O-CU internal error 93
     33. A.15.30 Number of incomplete establishment calls for emergency by O-DU error detection 94
     34. A.15.31 Discarded paging records 94
     35. A.16 Monitoring of PDU session connection for SA 95
     36. A.16.1 Accepted PDU Session Resource Configuration 95
     37. A.16.2 Completed PDU Session Resource Configuration 95
     38. A.16.3 Interrupted PDU Session Resource configuration by Protocol Error 96
     39. A.16.4 Interrupted PDU Session Resource configuration by O-DU Error Detection 96
     40. A.16.5 Interrupted PDU Session Resource configuration by O-CU internal error 97
     41. A.16.6 Accepted PDU Session Resource Configuration for emergency and high priority access 98
     42. A.16.7 Completed PDU Session Resource Configuration for emergency and high priority access 98
     43. A.16.8 Interrupted PDU Session Resource configuration for emergency and high priority access by Protocol Error 99
     44. A.16.9 Interrupted PDU Session Resource configuration for emergency and high priority access by O-DU Error
     45. Detection 100
     46. A.16.10 Interrupted PDU Session Resource configuration for emergency and high priority access by O-CU
     47. internal Error 100
     48. A.17 Monitoring of mobility for SA 101
     49. A.17.1 Accepted Handover 101
     50. A.17.2 Completed Handover 102
     51. A.17.3 Accepted Inter RAT Handover to LTE 102
     52. A.17.4 Completed Inter RAT Handover to LTE 102
     53. A.17.5 Accepted EPS Fallback 103
     54. A.17.6 Completed EPS Fallback 103
     55. A.17.7 Normal interrupted EPS Fallback 104
     56. A.17.8 Accepted Handover during Voice call 104
     57. A.17.9 Completed Handover during Voice call 104
     58. A.17.10 Accepted Inter RAT Handover to LTE during Voice call 105
     59. A.17.11 Completed Inter RAT Handover to LTE during Voice call 105
     60. A.18 Monitoring of RRC re-establishment for SA 106
     61. A.18.1 Number of initial RRC re-establishment requests when UE context can be retrieved 106
127. A.18.2 Number of RRC re-establishment request completions for initial RRC re-establishment requests when UE
128. context can be retrieved 106
129. A.18.3 Number of retransmission RRC re-establishment requests when UE context can be retrieved 107
130. A.18.4 Number of RRC re-establishment request completions for retransmission RRC re-establishment request
131. when UE context can be retrieved 107
132. A.18.5 Number of initial RRC re-establishment requests when UE context cannot be retrieved 107
133. A.18.6 Number of RRC re-establishment request completions for initial RRC re-establishment requests when UE
134. context cannot be retrieved 108
135. A.18.7 Number of retransmission RRC re-establishment requests when UE context cannot be retrieved 108
136. A.18.8 Number of RRC re-establishment request completions for retransmission RRC re-establishment requests
137. when UE context cannot be retrieved 109
138. A.18.9 Number of initial RRC re-establishment requests during Voice call when UE context can be retrieved 109
139. A.18.10 Number of RRC re-establishment request completions for initial RRC re-establishment requests during
140. Voice call when UE context can be retrieved 110
141. A.18.11 Number of retransmission RRC re-establishment requests during Voice call when UE context can be
142. retrieved 110
143. A.18.12 Number of RRC re-establishment request completions for retransmission RRC re-establishment request
144. during Voice call when UE context can be retrieved 111
145. A.19 Monitoring of connection status for SA 111
146. A.19.1 Normally Released Calls 111
147. A.19.2 Abnormally Released Calls 111
148. A.19.3 Another Cell HO UE Contexts 112
149. A.19.4 Normally Released Calls during voice call 112
150. A.19.5 Abnormally Released Calls during voice call 113
151. A.19.6 Another Cell HO UE Contexts during voice call 113
152. A.20 Monitoring of procedure for NR-DC 114
153. A.20.1 Number of S-NG-RAN Node Addition procedure attempted for each Cell 114
154. A.20.2 Number of S-NG-RAN Node Addition procedure successfully for each Cell 114
155. A.20.3 Number of S-NG-RAN Node Addition procedure attempted for each neighbour gNB 114
156. A.20.4 Number of S-NG-RAN Node Addition procedure successfully for each neighbour gNB 115
157. A.20.5 Number of S-NG-RAN Node modification procedure attempted for each Cell 116
158. A.20.6 Number of S-NG-RAN Node modification procedure successfully for each Cell 116
159. A.20.7 Number of S-NG-RAN Node modification procedure attempted for each neighbour gNB 117
160. A.20.8 Number of S-NG-RAN Node modification procedure successfully for each neighbour gNB 117
161. A.20.9 Number of S-NG-RAN Node Release procedure attempted for each Cell 118
162. A.20.10 Number of S-NG-RAN Node Release procedure successfully for each Cell 118
163. A.20.11 Number of S-NG-RAN Node Release procedure attempted for each neighbour gNB 119
164. A.20.12 Number of S-NG-RAN Node Release procedure successfully for each neighbour gNB 119
165. A.20.13 Number of SCGFailureInformation received 120
166. A.21 Monitoring of CA for SA 120
167. A.21.1 Number of SCell Addition procedure attempted 120
168. A.21.2 Number of SCell Addition procedure successfully 120
169. A.21.3 Number of SCell Change procedure attempted 121
170. A.21.4 Number of SCell Change procedure successfully 121
171. A.21.5 Number of SCell Deletion procedure attempted 122
172. A.21.6 Number of SCell Deletion procedure successfully 122
173. Revision History 123

48

# 49 List of Figures

1. Figure 6-1: Heartbeat Notification 11
2. Figure 10-1: File Ready Notification 15
3. Figure 11-1: Containment for SecurityHandling and CUCountGroup 18
4. Figure 11-2: Containment for PDCPConfig 19
5. Figure 11-3: Inheritance for CUCountGroup, SecurityHandling, PDCPConfig 20

55

56

# 1 List of Tables

2 Table 1: Parameters list for Notification notifyFileReady 14

3

# 4 Foreword

1. This Technical Specification (TS) has beed produced by WG5 of the O-RAN Allance.
2. The contents of the present document are subject to continuing work within O-RAN WG5 and may change following
3. formal O-RAN approval. Should the O-RAN.org modify the contents of the present document, it will be re-released by
4. O-RAN Alliance with an identifying change of release date and an increase in version number as follows:
5. Release x.y.z
6. where:
7. x the first digit is incremented for all changes of substance, i.e. technical enhancements, corrections, updates, etc.
8. (the initial approved document will have x=01).
9. y the second digit is incremented when editorial only changes have been incorporated in the document.
10. z the third digit included only in working versions of the document indicating incremental changes during the
11. editing process.

16

# 17 Modal verbs terminology

1. In the present document "**shall**", "**shall not**", "**should**", "**should not**", "**may**", "**need not**", "**will**", "**will not**", "**can**" and
2. "**cannot**" are to be interpreted as described in clause 3.2 of the O-RAN Drafting Rules (Verbal forms for the expression
3. of provisions).
4. "must" and "must not" are NOT allowed in O-RAN deliverables except when used in direct citation.

22

1 1 Scope

1. The present document specifies the O1 Interface specification for O-CU used over the interface linking the O-CU (O-
2. RAN Central Unit) with Service Management and Orchestration (SMO).

# 4 2 References

## 2.1 Normative references

1. References are either specific (identified by date of publication, edition number, version number, etc.) or non-specific.
2. For a specific reference, subsequent revisions do not apply. For a non-specific reference, the latest version applies. In the
3. case of a reference to a 3GPP document (including a GSM document), a non-specific reference implicitly refers to the
4. latest version of that document.
5. The following referenced documents are necessary for the application of the present document.

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| 11 | [1] | 3GPP TR 21.905: "Vocabulary for 3GPP Specifications", Release 17, v17.0.0, 2020-07 |
| 12 | [2] | O-RAN-WG10.OAM-Architecture-v09.00, O-RAN Alliance, Working Group 10 |
| 13 | [3] | O-RAN.WG10.O1-Interface.0-v10.00, "O-RAN Operations and Maintenance Interface Specification", O-RAN |
| 14 |  | Alliance, Working Group 10 |
| 15 | [4] | 3GPP TS 28.541, "Management and orchestration; 5G Network Resource Model (NRM); Stage 2 and stage 3", |
| 16 |  | Release 17, v17.2.1, 2021-04 |
| 17 | [5] | 3GPP TS 32.342, "File Transfer (FT); Integration Reference Point (IRP); Information Service (IS)", Release 16, |
| 18 |  | v16.0.0, 2020-07 |
| 19 | [6] | 3GPP TS 32.302, "Configuration Management (CM); Notification Integration Reference Point (IRP) ; |
| 20 |  | Information Service (IS)", Release 16, v16.0.0, 2020-07 |
| 21 | [7] | 3GPP TS 28.622, "Telecommunication management; Generic Network Resource Model (NRM) Integration |
| 22 |  | Reference Point (IRP); Information Service (IS)", Release 16, v16.7.1, 2021-04 |
| 23 | [8] | 3GPP TS 28.552: "Management and orchestration; 5G performance measurements", Release 17, v17.4.0, 2021- |
| 24 |  | 09 |
| 25 | [9] | 3GPP TS 32.156: "Telecommunication management; Fixed Mobile Convergence (FMC) Model repertoire", |
| 26 |  | 3GPP, Release 17, v17.1.0, 2022-06 |
| 27 | [10] | 3GPP TS 32.160: "Management and orchestration; Management service template", 3GPP, Release 17, v17.4.0, |
| 28 |  | 2022-06 |
| 29 | [11] | 3GPP TS 38.401: "NG-RAN; Architecture description", 3GPP, Release 17, v17.1.1, 2022-07 |
| 30 | [12] | 3GPP TS 38.331: "NR; Radio Resource Control (RRC); Protocol specification", 3GPP, Release 17 |
| 31 | [13] | 3GPP TS 38.463: "NG-RAN; E1 Application Protocol (E1AP)", 3GPP, Release 17 |

</div>

## 2.2 Informative references

1. References are either specific (identified by date of publication, edition number, version number, etc.) or non-specific.
2. For a specific reference, subsequent revisions do not apply. For a non-specific reference, the latest version applies. In the
3. case of a reference to a 3GPP document (including a GSM document), a non-specific reference implicitly refers to the
4. latest version of that document.
5. The following referenced documents are not necessary for the application of the present document, but they assist the
6. user with regard to a particular subject area. 39

# 1 3 Definitions of terms symbols and abbreviations

## 3.1 Terms

1. For the purposes of the present document, the terms and definitions given in 3GPP TR 21.905 [1] and the O1 interface
2. specification [3] apply.

## 3.2 Symbols

1. For the purposes of the present document, the symbols given in 3GPP TR 21.905 [1] and the following apply. A symbol
2. defined in the present document takes precedence over the definition of the same symbol, if any, in 3GPP TR 21.905
3. [1].

## 3.3 Abbreviations and acronyms

1. For the purposes of the present document, the abbreviations given in 3GPP TR 21.905 [1] and the following apply. An
2. abbreviation defined in the present document takes precedence over the definition of the same abbreviation, if any, in
3. 3GPP TR 21.905 [1].

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| 13 | 5QI | 5G QoS Identifier |
| 14 | MnS | Management Service |
| 15 | NETCONF | Network Configuration Protocol |
| 16 | NMS | Network Management System |
| 17 | O-CU | O-RAN Central Unit |
| 18 | O-CU-CP | O-RAN Central Unit Control Plane |
| 19 | O-CU-UP | O-RAN Central Unit User Plane |
| 20 | O-DU | O-RAN Distributed Unit |
| 21 | O-RU | O-RAN Radio Unit |
| 22 | OAM | Operations And Maintenance |
| 23 | PNF | Physical Network Function |
| 24 | QoS | Quality of Service |
| 25 | RPC | Remote Procedure Call |
| 26 | sFTP | Secure File Transfer Protocol or SSH File Transfer Protocol |
| 27 | SMO | Service Management and Orchestration |
| 28 | SSH | Secure Shell |
| 29 | VES | Virtual-function Event Streaming |
| 30 | VLAN | Virtual LAN |
| 31 | YANG | Yet Another Next Generation |
| 32 |  |  |

</div>

## 3.4 Conventions

1. This specification includes cross references to a set of associated YANG models. Text may reference particular YANG
2. leafs, notifications and remote procedure calls (RPCs). In order to assist in readability, all cross references to YANG
3. defined elements will keep the identical case format as defined in the corresponding YANG model, with the font-weight
4. set to **bold**. This convention applies only to text and not to YANG elements embedded into figures.
5. If there is any conflict between the YANG models and the accompanying text description in this specification, the
6. definition of the YANG models shall take precedence.

## 3.5 Revision and compatibility handling

1. The revision statement in the YANG models shall be used to describe future revisions to the models that are backwards
2. compatible. Backwards incompatible changes will be addressed by incrementing the number used as part of the model
3. name and namespace, effectively creating a new YANG model. The format of the namespace used in all O-RAN YANG
4. models is "urn:o-ran:"<model-name>":"<model-number>, where the initial <model-number> used in a newly defined
5. YANG model is "1.0". Where this document makes reference to models, irrespective of their backward compatibility, a
6. generic <model-number> of "x.y" is used to enable reference to all versions of the namespace for a particular <model-
7. name>.

11

1. The revision statement in all YANG models includes a reference statement used to cross-reference to the first version of
2. this document where the corresponding description was introduced. For example, the reference in all revision statements
3. for the initial O-RAN models should include cross-reference to "O-RAN.WG5.O-CU-O1.0-v01.00". 15
4. The revision statement of the YANG models also includes a description which is used to track the versioning of the
5. YANG model. All revision statement descriptions will begin with "version "<a>"."<b>"."<c>, where <a>, <b> and <c>
6. are used to reflect the version of the YANG model, where 19
7. <a> corresponds to the first digit of the O-RAN WG5 management plane specification version where the
8. corresponding description was first introduced, corresponding to <x> in clause 1
9. <b> is incremented when errors in the YANG model have been corrected
10. <c> is incremented only in working versions of the YANG model indicating incremental changes during the
11. editing process

25

26

# 27 4 High Level Description

## 4.1 Top level functional description and terminology

### 4.1.1 Architecture for O-RAN WG5 functional split

1. This O1 interface facilitates the initialization, configuration and management of the O-CU-CP and O-CU-UP. Please refer
2. to O-RAN OAM Architecture [2] for more details on the architecture.

### 4.1.2 O1 interface for O-CU architecture model

1. O1 interface for O-CU-CP and O-CU-UP is used for supporting the management features including "start up" installation,
2. PNF software management, provisioning management, performance management, fault management and file
3. management towards the O-CU.

### 4.1.3 Transport Network

1. Based on the transport topology, various modes of network connectivity are possible between O-CU-CP, O-CU-UP and
2. SMO, as defined in the O-RAN OAM Architecture document [2]. 39

## 4.2 Interfaces

1. The interface between the management system and the O-CU is as defined in the O1 specification [3]. 42

# 1 5 PNF Startup and Registration Management

2

1. O-CU (including O-CU-CP and O-CU-UP) may be deployed as PNF as described in O1 Interface Specification [3],
2. clause 6.7 PNF Startup and Registration Management Services.

## 5.1 PNF Plug-n-Play

1. PNF Plug-n-Play for O-CU is aligned with O1 Interface Specification [3], clause 6.7.1 PNF Plug-n-Connect.

## 5.2 PNF Registration

1. PNF Registration for O-CU is aligned with O1 Interface Specification [3], clause 6.7.2 PNF Registration. 9

# 10 6 Heartbeat Management Services

11

## 6.1 Heartbeat Notification

1. Heartbeat Notification for both O-CU-CP and O-CU-UP are aligned with O1 Interface Specification [3], clause 6.6.1
2. ![??????  ???????????]({{site.baseurl}}/assets/images/d45d74cdfab4.png)Heartbeat Notification. Figure 6-1 shows the example of notifyHeartbeat notification by using 'SDO O1 format'. 15

16

###### Figure 6-1: Heartbeat Notification

18

## 6.2 Heartbeat Control

1. Heartbeat Control for both O-CU-CP and O-CU-UP are aligned with O1 Interface Specification [3], clause 6.6.2
2. Heartbeat Control.

# 2 7 PNF Software Management Services

3

## 7.1 Software Package Naming and Content

1. Software Package Naming and Content for O-CU is aligned with O1 Interface Specification [3], clause 6.8.1 Software
2. Package Naming and Content.

## 7.2 Software Inventory

1. Software Inventory for O-CU is aligned with O1 Interface Specification [3], clause 6.8.2 Software Inventory.

## 7.3 Software Download

1. Software Download for O-CU is aligned with O1 Interface Specification [3], clause 6.8.3Software Download.

## 7.4 Software Activation Pre-Check

1. Software Activation Pre-Check for O-CU is aligned with O1 Interface Specification [3], clause 6.8.4 Software
2. Activation Pre-Check.

## 7.5 Software Activate

1. Software Activate for O-CU is aligned with O1 Interface Specification [3], clause 6.8.5 Software Activate. 16

# 17 8 Performance Management

## 8.1 Performance Data File Reporting

1. Performance Data File Reporting for O-CU is aligned with O1 Interface Specification [3], clause 6.3.1 Performance
2. Data File Reporting.
3. The Measurement Type and definitions for performance counters are described in both clause 6.3 of O1 interface
4. specification [3] and Annex A of this specification. All measurements are optional and can be selected based on service
5. deployment.

## 8.2 Performance Data Streaming

1. Performance Data Streaming for O-CU is aligned with O1 Interface Specification [3] , clause 6.3.2 Performance Data
2. Streaming.

## 8.3 Measurement Job Control

1. Measurement Job Control for O-CU is aligned with O1 Interface Specification [3] , clause 6.3.3 Measurement Job
2. Control.

# 2 9 Fault Management

1. Fault supervision management services allow a Fault Supervision MnS Provider to report errors and events to a Fault
2. Supervision MnS Consumer and allow a Fault Supervision MnS Consumer to perform fault supervision operations on the
3. Fault Supervision MnS Provider, such as get alarm list.
4. O-CU-UP and O-CU-CP Fault Supervision Management services are aligned with O1 Interface Specification [3], clause
5. 6.2 Fault Supervision Management Services.

## 9.1 Fault Notification

1. O-CU-UP and O-CU-CP Fault notification events are aligned with O1 Interface Specification [3], clause 6.2.1 Fault
2. Notification.

## 9.2 Fault Supervision Control

1. O-CU-UP and O-CU-CP Fault supervision control is aligned with O1 Interface Specification [3], clause 6.2.2 Fault
2. Supervision Control.

14

# 15 10 File Management

1. This clause illustrate File Management between the O-CU-CP and SMO and between the O-CU-UP and SMO. The File
2. Management Service is applied to manage file transfer for different types of data file such as Bulk CM file, Call and UE
3. trace file, Performance Measurement result file, etc. The following file management use cases are supported for the O-
4. CU-CP and O-CU-UP:
5. ? List available files
6. ? Transfer file
7. ? Download file
8. ? File ready notification
9. The detailed description of the use cases including file management operations and procedures as well as sequence
10. diagram can be found in the O-RAN O1 interface specification [3], clause 6.5.
11. This clause shall describe the handling of files that are stored in the O-CU-CP which are generated by the O-CU-CP
12. itself and O-CU-UP which are generated by the O-CU-UP itself.
13. The data files that are stored in the O-CU shall follow clause 10.1 of this specification. 29

## 10.1 File Structure

1. The file system structure for the O-CU-CP and O-CU-UP is defined as for file management procedures defined in the rest
2. of this clause. If the O-CU-CP and O-CU-UP's physical file structure differs from the logical file structure defined below,
3. the O-CU-CP and O-CU-UP shall perform the mapping related files into defined structure.
4. The O-CU-CP and O-CU-UP shall support the standardized folders for files generated by the O-CU-CP and O-CU-UP
5. itself. The following standardized folders are defined:
6. O-CU-CP
7. > O-RAN/O-CU-CP/PM/ for performance data files
8. > O-RAN/O-CU-CP/CM/ for configuration files (except inventory)
9. > O-RAN/O-CU-CP/NL/ for notification log file
10. > O-RAN/O-CU-CP/CT/ for call trace files
11. > O-RAN/O-CU-CP/OT/ for other files
12. O-CU-UP
13. > O-RAN/O-CU-UP/PM/ for performance data files
14. > O-RAN/O-CU-UP/CM/ for configuration files (except inventory)
15. > O-RAN/O-CU-UP/NL/ for notification log file
16. > O-RAN/O-CU-UP/CT/ for call trace files
17. > O-RAN/O-CU-UP/OT/ for other files 13

14 The O-CU-CP and O-CU-UP may additionally support vendor defined folders which are out of scope of this specification. 15

## 10.2 Notification notifyFileReady

1. The file ready notification is applied to when the management data files have been prepared ready in O-CU-CP and O-
2. CU-UP. The O-CU-CP and O-CU-UP will send notification using notifyFileReady VES event to subscribed SMO in
3. order to notify the availability of the file(s) as defined in O1 Interface Specification [3].
4. The following input parameters are provided by the file ready notification (see also 3GPP TS 32.342 [5]): 21

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| objectClass | Notification header - see 3GPP TS 32.302[6].  It shall carry the FTIRP class name. |
| objectInstance | Notification header - see 3GPP TS 32.302[6]. It shall carry the DN of the FTIRP. |
| notificationId | Notification header - see 3GPP TS 32.302[6] . |
| eventTime | Notification header - see 3GPP TS 32.302[6] . |
| systemDN | Notification header - see 3GPP TS 32.302[6] . |
| notificationType | Notification header - see 3GPP TS 32.302[6] . |
| fileInfoList | It specifies the information of the available file. |
| additionalText | It carries vendor-specific semantics not defined  in the present document. |

</div>

###### 22 Table 1: Parameters list for Notification notifyFileReady

23

1. When a file is available, the O-CU-CP and O-CU-UP sends a FileReady notification to the SMO using HTTP/TLS as
2. defined in O1 Interface Specification [3]. The FileReady notification for O-CU-CP and O-CU-UP is performed
3. independently.

27

@startuml

Title File Ready Notification

participant "SMO/OAM
(File Management Service Consumer)" as L participant "O-CU-CP
(File Management Service Provider)" as M participant "O-CU-UP
(File Management Service Provider)" as N

note over ME : New file is available

28

29

30

31

32

33

1

L <- M: HTTP/TLS<notifyFileReady> note over N: New file is available L <- N: HTTP/TLS<notifyFileReady> @enduml

2

3

4

5

6

![??????  ???????????]({{site.baseurl}}/assets/images/34a5a804973f.png)7

###### 8 Figure 10-1: File Ready Notification

9

## 10.3 File Management Operation: listAvailableFiles

1. This listAvailableFiles operation for the SMO is applied to obtain the available file list with files location and type from
2. the O-CU-CP and O-CU-UP by reading the AvailableFileList IOC as specified in O1 Interface Specification [3], clause
3. 6.5.2. The listAvailableFiles operation for O-CU-CP and O-CU-UP can be performed independently.

## 10.4 File Management Operation: transferFile

1. The Transfer File Service provides the capability for the SMO to transfer files from or to the O-CU-CP and O-CU-UP.
2. SMO/OAM may perform this action as a result of a FileReady notification from the O-CU-CP and O-CU-UP informing
3. SMO that a file is now available to transfer. In any case, the file transfer is performed using a secure file transfer
4. protocol (SFTP or FTPeS) from or to the location provided by O-CU-CP and O-CU-UP. The SMO triggers file transfer
5. operation to O-CU-CP and O-CU-UP. Detailed procedure can be found in clause 6.5.3 of O1 Interface Specification [3].
6. The transferFile operation for O-CU-CP and O-CU-UP is performed independently.

## 10.5 File Management Operation: downloadFile

1. The Download File Service provides the capability for the SMO to request the O-CU-CP and O-CU-UP to download
2. the file(s) when the SMO has a file that needs to be downloaded. In any case, the file download is performed using a
3. secure file transfer protocol (SFTP or FTPeS) from the location provided by the SMO. The O-CU-CP and O-CU-UP
4. replies to the SMO with the result of the download procedure. Detailed procedure can be found in clause 6.5.4 of O1
5. Interface Specification [3]. The downloadFile operation for O-CU-CP and O-CU-UP is performed independently. 27

28

# 1 11 Provisioning Management

2

3 This clause describes the Provisioning Management for O-CU specific aspects. 4

## 11.1 Configuration for O-CU

1. SMO configures the O-CU-CP and O-CU-UP. 7
2. Data Model configurations:

###### 1. SA5 data model

1. The following 3GPP SA5 YANG modules are imported in the O-CU YANG modules published along with this
2. specification. See TS 28.541 [4]
3. - \_3gpp-common-top.yang
4. - \_3gpp-common-yang-types.yang
5. - \_3gpp-common-managed-element.yang
6. - \_3gpp-nr-nrm-gnbcucpfunction.yang
7. - \_3gpp-nr-nrm-nrcellcu.yang
8. - \_3gpp-nr-nrm-nrfreqrelation.yang
9. - \_3gpp-nr-nrm-gnbcuupfunction.yang
10. - \_3gpp-nr-nrm-ep.yang

20

###### 2. O-RAN augmentation of SA5 data models

1. **O-CU-CP**
2. - o-ran-cu-security-handling.yang

24

###### O-CU-UP

1. **---**

27

1. The O-CU YANG modules listed above, are published along with this specification document, and augment SA5 data
2. models.
3. *SupportQualifier*(SQ) property for each attribute in the O-CU YANG modules, specifies whether it is mandatory for
4. vendor to support the attribute in the implementation and in the data model. Meaning of this property, follows the
5. definition in 3GPP TS 32.156 [9], clause 6. Values can be M, O, CM, CO.
6. If SQ=O, for an attribute, and if vendor does not support it, then this lack of support shall be indicated, as specified in
7. 3GPP TS 32.160 [10] clause 6.2.26.
8. If SQ is not specified, then a default value of 'O' is to be assumed. 36

37

## 11.2 Notification aspect

### 11.2.1 Subscribing for O-CU notification from SMO

1. The O-CU would represent the parameters in its YANG model.
2. The SMO is responsible of subscribing to the parameters of interest from the O-CU data model using subscription
3. mechanism described in O1 Interface specification [3] clause 6.1.7 Subscription Control.

## 11.3 Information model for O-CU-CP

### 11.3.1 Imported and associated information entities

#### 11.3.1.1 Imported information entities and local labels

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Label reference** | **Local label** |
| 3GPP TS 28.622 [7], IOC, Top | Top |

</div>

1. 11.3.1.2 Accociated information entities and local labels

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Label reference** | **Local label** |
| 3GPP TS 28.622 [7], IOC, ManagedElement | ManagedElement |

</div>

10

### 11 11.3.2 Class diagram

#### 12 11.3.2.1 Relationships

13

@startuml skin rose

Class ManagedElement <<InformationObjectClass >> << (A,CadetBlue) >> Class GNBCUCPFunction <<InformationObjectClass >> << (L, #FF7700) >>

class SecurityHandling <<InformationObjectClass >> << (L, #FF7700) >> SecurityHandling : <color:Blue> cipheringAlgoPrio </color> SecurityHandling : <color:Blue> integrityProtectAlgoPrio </color>

class CUCountGroup <<InformationObjectClass >> << (L, #FF7700) >> CUCountGroup : <color:Blue> cu-count-group-index </color> CUCountGroup : <color:Blue> drb-id </color>

CUCountGroup : <color:Blue> qci </color> CUCountGroup : <color:Blue> srb-id </color> CUCountGroup : <color:Blue> fiveQi </color> CUCountGroup : <color:Blue> sd </color> CUCountGroup : <color:Blue> sst </color> CUCountGroup : <color:Blue> plmn-id </color> CUCountGroup : <color:Blue> arp </color>

ManagedElement \*-- "0..\*" GNBCUCPFunction GNBCUCPFunction \*-- "0..1" SecurityHandling

GNBCUCPFunction \*-- "0..30" CUCountGroup @enduml

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

37

38

![Generated by PlantUML]({{site.baseurl}}/assets/images/224d8fd0667a.png)1

###### 2 Figure 11-1: Containment for SecurityHandling and CUCountGroup

3

4

@startuml skin rose

class GNBCUCPFunction <<InformationObjectClass>>

class "PDCPConfig" <<InformationObjectClass>> "PDCPConfig" : qci

"PDCPConfig" : fiveQI "PDCPConfig" : discard-timer "PDCPConfig" : pdcp-sn-size-ul "PDCPConfig" : pdcp-sn-size-dl "PDCPConfig" : t-reordering "PDCPConfig" : t-reordering-ul "PDCPConfig" : rlc-mode

"PDCPConfig" : header-compression-enabled "PDCPConfig" : ul-data-split-threshold

GNBCUCPFunction \*-- "0..32" "PDCPConfig" : <<names>> @enduml

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

![Generated by PlantUML]({{site.baseurl}}/assets/images/782b079cb4fa.png)1

###### 2 Figure 11-2: Containment for PDCPConfig

3

#### 4 11.3.2.2 Inheritance

5

@startuml skin rose

skinparam ClassStereotypeFontStyle normal skinparam style strictuml

hide empty members

abstract class Top <<InformationObjectClass>> class CUCountGroup <<InformationObjectClass>>

<div class="table-wrapper" markdown="block">

Top <|-d- CUCountGroup

</div>

class SecurityHandling <<InformationObjectClass>>

<div class="table-wrapper" markdown="block">

Top <|-d- SecurityHandling

</div>

<div class="table-wrapper" markdown="block">

class "PDCPConfig" <<InformationObjectClass>> Top <|-d- "PDCPConfig"

</div>

note right of Top defined in

3GPP TS 28.622

clause 4.3.29 end note

@enduml

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

![Generated by PlantUML]({{site.baseurl}}/assets/images/70bc728a4aba.png)1

###### 2 Figure 11-3: Inheritance for CUCountGroup, SecurityHandling, PDCPConfig

3

### 11.3.3 Class definition

#### 11.3.3.1 SecurityHandling <<InformationObjectClass>>

##### 11.3.3.1.1 Definition

1. This IOC represents the CU-CP security related handling function.

##### 11.3.3.1.2 Attributes

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **Attribute name** | **Support Qualifier** | **isReadable** | **isWritable** | **isInvariant** | **isNotifyable** |
| cipheringAlgoPrio | O | T | T | F | T |
| integrityProtectAlgoPrio | O | T | T | F | T |

</div>

1. 11.3.3.1.3 Attribute constraints
2. None

##### 11.3.3.1.4 Notifications

1. There are no notifications defined.

##### 11.3.3.1.5 State diagram

1. None

#### 11.3.3.2 CUCountGroup <<InformationObjectClass>>

##### 11.3.3.2.1 Definition

1. This IOC represents the cucountgroup function.

##### 11.3.3.2.2 Attributes

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **Attribute name** | **Support Qualifier** | **isReadable** | **isWritable** | **isInvariant** | **isNotifyable** |
| cu-count-group-index | O | T | T | F | T |
| drb-id | O | T | T | F | T |
| qci | O | T | T | F | T |
| srb-id | O | T | T | F | T |
| fiveQi | O | T | T | F | T |
| sd | O | T | T | F | T |
| sst | O | T | T | F | T |
| plmn-id | O | T | T | F | T |
| arp | O | T | T | F | T |

</div>

1. 11.3.3.2.3 Attribute constraints
2. None

##### 11.3.3.2.4 Notifications

1. There are no notifications defined.

##### 11.3.3.2.5 State diagram

1. None

#### 11.3.3.3 PDCPConfig <<InformationObjectClass>>

##### 11.3.3.3.1 Definition

1. This IOC represents PDCP configurations for O-CU-CP.

##### 11.3.3.3.2 Attributes

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **Attribute name** | **Support**  **Qualifier** | **isReadable** | **isWritable** | **isInvariant** | **isNotifyable** |
| qci | O | T | T | F | T |
| fiveQI | O | T | T | F | T |
| discard-timer | O | T | T | F | T |
| pdcp-sn-size-ul | O | T | T | F | T |
| pdcp-sn-size-dl | O | T | T | F | T |
| t-reordering | O | T | T | F | T |
| t-reordering-ul | O | T | T | F | T |
| rlc-mode | O | T | T | F | T |
| header-compression-  enabled | O | T | T | F | T |
| ul-data-split-threshold | O | T | T | F | T |

</div>

1. 11.3.3.3.3 Attribute constraints
2. None

##### 11.3.3.3.4 Notifications

1. There are no notifications defined.

##### 11.3.3.3.5 State diagram

1. None

3

### 11.3.4 Attribute definitions

#### 11.3.4.1 Attribute properties

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Attribute Name** | **Documentation and Allowed Values** | **Properties** |
| cipheringAlgoPrio | The attribute provides allowed ciphering algorithms with priority order.  Algorithm in index zero has highest priority. Each algorithm written only once in array.  AllowedValues:  NEA0, NEA1, NEA2, NEA3  Default value: NEA1,NEA2,NEA0 | Type: ENUM CipheringAlgorithmID multiplicity: 1..4 isOrdered: True isUnique: True  defaultValue: NEA1,NEA2,NEA0 isNullable: False |
| integrityProtectAl goPrio | The attribute provides allowed integrity algorithms with priority order.  Algorithm in index zero has highest priority. Each algorithm written only once in array.  AllowedValues: NIA1, NIA2, NIA3  DefaultValue: NIA2,NIA1 | Type: ENUM IntegrityAlgorithmID multiplicity: 1..3 isOrdered: True isUnique: True defaultValue: NIA2,NIA1 isNullable: False |
| cu-count-group- index | The attribute provides Cu Counter Group index.  AllowedValues: 0..30 | Type: uint8 multiplicity: 1 isOrdered: N/A isUnique: N/A defaultValue: -  isNullable: False |
| drb-id | The attribute provides DRB ID which is used for concerned CuCountGroup. Value 0 indicates that this DRB ID is not counted in this CuCountGroup  AllowedValues: 0..32 | Type: uint8 multiplicity: 1 isOrdered: N/A isUnique: N/A  defaultValue: - isNullable: False |
| CUCountGroup.qci | The attribute provides QoS Class Identifier defined in TS 23.401. Logical range and coding specified in TS  23.203. Value 0 indicates that this QCI shall NOT be counted in the CuCountGroup.  AllowedValues: 0..255 | Type: uint8 multiplicity: 1 isOrdered: N/A isUnique: N/A defaultValue: - isNullable: False |
| srb-id | The attribute provides SRB ID used for concerned CuCountGroup. Value 0 indicates that this SRB ID is not counted in this CuCountGroup.  AllowedValues; 0..3 | Type: uint8 multiplicity: 1 isOrdered: N/A isUnique: N/A defaultValue: -  isNullable: False |
| CUCountGroup.fiveQ i | The attribute provides 5QI identifier. Value 0 indicates that this 5QI shall NOT be counted in the CuCountGroup.  AllowedValues; 0..255 | Type: uint8 multiplicity: 1 isOrdered: N/A isUnique: N/A defaultValue: -  isNullable: False |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| sd | This parameter indicates the slice differentiator. Value 16777215 (0xFFFFFF) means no SD value associated with the SST.  AllowedValues; 0..16777215 | Type: uint8 multiplicity: 1 isOrdered: N/A isUnique: N/A  defaultValue: - isNullable: False |
| sst | This parameter indicates the slice service type.  AllowedValues; 0..255 | Type: uint8 multiplicity: 1 isOrdered: N/A isUnique: N/A defaultValue: -  isNullable: False |
| plmn-id | 3-octet string, representing PLMN ID. | Type: string multiplicity: 1 isOrdered: N/A isUnique: N/A  defaultValue: - isNullable: False |
| arp | This parameter indicates the allocation and retention priority. Value 0 indicates that this ARP is not counted in this CuCountGroup.  AllowedValues; 0..15 | Type: uint8 multiplicity: 1 isOrdered: N/A isUnique: N/A defaultValue: -  isNullable: False |
| PDCPConfig.qci | List of QCIs for which this PDCP configuration is applied.  allowedValues: 0..255 | Type: Integer multiplicity: 0..\* isOrdered: False isUnique: True defaultValue: - isNullable: False |
| PDCPConfig.fiveQI | List of 5QIs for which this PDCP configuration is applied.  allowedValues: 0..255 | Type: Integer multiplicity: 0..\* isOrdered: False isUnique: True defaultValue: - isNullable: False |
| discard-timer | Discard timer in milliseconds for this PDCP Configuration. See TS 38.331 [12].  If no value set, implies infinity.  allowedValues: 10, 20, 30, 40, 50, 60, 75, 100, 150,  200, 250, 300, 500, 750, 1500 | Type: Integer multiplicity: 0..1 isOrdered: N/A isUnique: N/A defaultValue: - isNullable: False |
| pdcp-sn-size-ul | PDCP SN size in Uplink for this PDCP Configuration. Not used when rlc-mode set to RLC-TM. See TS  38.331 [12].  allowedValues: LEN-12-BITS, LEN-18-BITS | Type: ENUM pdcpSNSize multiplicity: 1  isOrdered: N/A isUnique: N/A defaultValue: -  isNullable: False |
| pdcp-sn-size-dl | PDCP SN size in Downlink for this PDCP Configuration. Not used when rlc-mode set to RLC-TM. See TS  38.331 [12].  allowedValues: LEN-12-BITS, LEN-18-BITS | Type: ENUM pdcpSNSize multiplicity: 1  isOrdered: N/A isUnique: N/A defaultValue: -  isNullable: False |
| t-reordering | Reordering timer in milliseconds for this PDCP Configuration. This timer is used by the receiving side of PDCP entity to detect loss of RLC PDUs at lower layer. See TS 38.331 [12].  If no value set, implies infinity.  allowedValues: 0, 1, 2, 4, 5, 8, 10, 15, 20, 30, 40, 50,  60, 80, 100, 120, 140, 160, 180, 200, 220, 240, 260,  280, 300, 500, 750, 1000, 1250, 1500, 1750, 2000,  2250, 2500, 2750, 3000 | Type: Integer multiplicity: 0..1 isOrdered: N/A isUnique: N/A defaultValue: - isNullable: False |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| t-reordering-ul | Uplink Reordering Timer in milliseconds for this PDCP Configuration. Used by CU-UP for Uplink. See TS  38.463 [13].  If no value set, implies infinity.  allowedValues: 0, 1, 2, 4, 5, 8, 10, 15, 20, 30, 40, 50,  60, 80, 100, 120, 140, 160, 180, 200, 220, 240, 260,  280, 300, 500, 750, 1000, 1250, 1500, 1750, 2000,  2250, 2500, 2750, 3000 | Type: Integer multiplicity: 0..1 isOrdered: N/A isUnique: N/A defaultValue: - isNullable: False |
| rlc-mode | RLC mode for this PDCP Configuration. See TS 38.463 [13].  allowedValues: RLC-TM, RLC-AM, RLC-UM- BIDIRECTIONAL, RLC-UM-BIDIRECTIONAL-UL, RLC- UM-UNIDIRECTIONAL-DL | Type: ENUM rlcModeType multiplicity: 1  isOrdered: N/A isUnique: N/A  defaultValue: - isNullable: False |
| header- compression- enabled | Specifies whether ROHC should be enabled for this PDCP Configuration. See TS 38.331 [12]. | Type: Boolean multiplicity: 1 isOrdered: N/A isUnique: N/A defaultValue: - isNullable: False |
| ul-data-split- threshold | Uplink Data Split Threshold in bytes for this PDCP Configuration. See TS 38.331 [12].  If no value set, implies infinity.  allowedValues: 0, 100, 200, 400, 800, 1600, 3200,  6400, 12800, 25600, 51200, 102400, 204800, 409600,  819200, 1228800, 1638400, 2457600, 3276800,  4096000, 4915200, 5734400, 6553600 | Type: Integer multiplicity: 0..1 isOrdered: N/A isUnique: N/A defaultValue: - isNullable: False |

</div>

1

# 2 12 Trace Management Services

1. Trace Management Service for both O-CU-CP and O-CU-UP are aligned with O1 Interface Specification [3], clause 6.4.
2. The O-CU-CP and O-CU-UP can be Trance MnS Provider independently 5

## 12.1 Call Trace

1. Call Trace for both O-CU-CP and O-CU-UP are aligned with O1 Interface Specification [3], clause 6.4.1.

## 12.2 Minimization of Drive Testing (MDT)

1. Minimization of Drive Testing for both O-CU-CP and O-CU-UP are aligned with O1 Interface Specification [3], clause
2. 6.4.2.

11

## 12.3 Radio Link Failure (RLF)

1. Radio Link Failure for both O-CU-CP and O-CU-UP are aligned with O1 Interface Specification [3], clause 6.4.3. 14

## 12.4 RRC Connection Establishment Failure (RCEF)

1. RRC Connection Establishment Failure for both O-CU-CP and O-CU-UP are aligned with O1 Interface Specification
2. [3], clause 6.4.4.

4

## 12.5 Trace Control

1. Trace Control for both O-CU-CP and O-CU-UP are aligned with O1 Interface Specification [3], clause 6.4.5. 7

## 12.6 Streaming Trace

1. Streaming Trace for both O-CU-CP and O-CU-UP are aligned with O1 Interface Specification [3], clause 6.4.6.

# 1 Annex A (informative)

2 : Counter definition

## A.1 NR PDCP performance counters (Type A):

### A.1.1 Distribution of UE per UL received data volume

#### A.1.1.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.PDCPA.DistUeUlRxData |
| Description | This counter provides the distribution of the UE per received uplink data volume. When more than one RLCs are configured, the data volume refers to the all volume regardless through which RLC the data is transferred. The measurement is optionally split into subcounters per  QoS level (mapped 5QI or QCI in EN-DC) or per S-NSSAI. An instance of Cucountgroup IOC may be used to define subcounter configurations. |
| Collection Method | CC (Cumulative Counter) |
| Condition | If O-CU connects 5GC, measurement subcounter is the number of the QoS flow of which x is mapped to bin of subcounter.*binX*.  If O-CU connects EPC, measurement subcounter is the number of the bearer of which x is mapped to the bin of subcounter.*binX.*  The number, x is acquired and calculated at the end of measurement period (100ms).  x is incremented by the volume of the UL PDCP PDU volume whenever the UL PDCP PDU is received from lower layer when the UL PDCP PDU is mapped to group of subcounter.*QoS*, subcounter.*SNSSAI*, or subcounter.*Cucountgroup*. |
| Measurement Result | Integer (U16) |
| Measurement Type | OR.PDCPA.DistUeUlRxData.*binX,* or optionally OR.PDCPA.DistUeUlRxData.*binX.QoS*, where *QoS* identifies the target quality of service class, and OR.PDCPA.DistUeUlRxData.*binX*.*SNSSAI,* where *SNSSAI* identifies the S-NSSAI, and OR.PDCPA.PDCPA.DistUeUlRxData.*binX.Cucountgroup,* where *Cucountgroup* identifies an instance of CuCountGroup IOC, and where *binX* is the bin of the throughput, x:  bin 1: 0 Byte < x < 1 kByte  bin 2: 1 kByte <= x < 2 kByte  bin 3: 2 kByte <= x < 5 kByte  bin 4: 5 kByte <= x < 10 kByte  bin 5: 10 kByte <= x < 20 kByte  bin 6: 20 kByte <= x < 50 kByte  bin 7: 50 kByte <= x < 100 kByte  bin 8: 100 kByte <= x < 200 kByte  bin 9: 200 kByte <= x < 500 kByte  bin 10: 500 kByte <= x < 1 MByte  bin 11: 1 MByte <= x < 1.5 MByte  bin 12: 1.5 MByte <= x < 2 MByte  bin 13: 2 MByte <= x < 2.5 MByte  bin 14: 2.5 MByte <= x < 3 MByte  bin 15: 3 MByte <= x < 3.5 MByte  bin 16: 3.5 MByte <= x < 4 MByte  bin 17: 4 MByte <= x < 4.5 MByte  bin 18: 4.5 MByte <= x < 5 MByte  bin 19: 5 MByte <= x < 10 MByte  bin 20: 10 MByte <= x |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Object Class | GNBCUUPFunction |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

1

### A.1.2 Distribution of DL UE throughput in O-CU

#### A.1.2.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.PDCPA.DistDlUeThroughput |
| Description | This counter provides the distribution of the UE throughput in downlink. When more than one RLCs are configured, the data volume refers to the all volume regardless through which RLC the data is transferred. The measurement is optionally split into subcounters per QoS level (mapped 5QI or QCI in EN-DC) or per S-NSSAI. An instance of Cucountgroup IOC may be used to define subcounter configurations. |
| Collection Method | CC (Cumulative Counter) |
| Condition | If O-CU connects 5GC, measurement subcounter is the number of the QoS flow of which throughput, x/y is mapped to bin of subcounter.*binX*. If O-CU connects EPC, measurement subcounter is the number of the bearer of which throughput, x/y is mapped to bin of subcounter.*binX*. The number, x/y is acquired and calculated at the end of measurement period.  x is incremented by the volume of the DL PDCP PDU volume which is acknowledged by the DDDS whenever DDDS is received when PDCP PDU is mapped to group of subcounter.*QoS*, subcounter.*SNSSAI*, or subcounter.*Cucountgroup*.  y is the smaller value in the followings:  - y = ?(y1 - y2):  where y1 is the point in time after y2 when data up until the  second last piece of data in the transmitted data burst which emptied the PDCP SDU available for transmission for the group of subcounter.*Cucountgroup* was successfully transmitted, as acknowledged by the UE, and where y2 is the point in time when the first transmission begins after a PDCP SDU becomes available for transmission, where previously no PDCP SDUs were available for transmission for the particular subcounter.*QoS*, subcounter.*SNSSAI*, or  subcounter.*Cucountgroup*.  - The measurement report period is 60000 ms. |
| Measurement Result | Integer (U16) |
| Measurement Type | OR.PDCPA.DistDlUeThroughput.*binX,* or optionally OR.PDCPA.DistDlUeThroughput.*binX.QoS*, where *QoS* identifies the target quality of service class, and OR.PDCPA.DistDlUeThroughput.*binX*.*SNSSAI,* where *SNSSAI* identifies the S-NSSAI, and OR.PDCPA.DistDlUeThroughput.*binX.Cucountgroup,* where *Cucountgroup* identifies an instance of CuCountGroup IOC, and where *binX* is the bin of the throughput, x/y:  bin 1: 0 Mbps <= x/y < 1 Mbps  bin 2: 1 Mbps <= x/y < 2 Mbps  bin 3: 2 Mbps <= x/y < 5 Mbps  bin 4: 5 Mbps <= x/y < 10 Mbps  bin 5: 10 Mbps <= x/y < 20 Mbps  bin 6: 20 Mbps <= x/y < 50 Mbps |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
|  | bin 7: 50 Mbps <= x/y < 100 Mbps  bin 8: 100 Mbps <= x/y < 200 Mbps  bin 9: 200 Mbps <= x/y < 500 Mbps  bin 10: 500 Mbps <= x/y < 1 Gbps  bin 11: 1 Gbps <= x/y < 1.5 Gbps  bin 12: 1.5 Gbps <= x/y < 2 Gbps  bin 13: 2 Gbps <= x/y < 2.5 Gbps  bin 14: 2.5 Gbps <= x/y < 3 Gbps  bin 15: 3 Gbps <= x/y < 3.5 Gbps  bin 16: 3.5 Gbps <= x/y < 4 Gbps  bin 17: 4 Gbps <= x/y < 4.5 Gbps  bin 18: 4.5 Gbps <= x/y < 5 Gbps  bin 19: 5 Gbps <= x/y < 10 Gbps  bin 20: 10 Gbps <= x/y |
| Measurement Object Class | GNBCUUPFunction |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

1

### A.1.3 Total discarded UL PDCP SDU volume

#### A.1.3.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.PDCPA.TotalDiscardedUlPdcpSduVol |
| Description | This counter provides the UL PDCP SDU volume discarded at PDCP due to any cause. The measurement is optionally split into subcounters per QoS level  (mapped 5QI or QCI in EN-DC) or per S-NSSAI. An instance of Cucountgroup IOC may be used to define subcounter configurations. |
| Collection Method | CC (Cumulative Counter) |
| Condition | The measurement counter is incremented by the volume of the UL PDCP SDU whenever the UL PDCP SDU volume is discarded when the UL PDCP SDU is  mapped to group of subcounter.*Cucountgroup*. |
| Measurement Result | kilobyte (U32) |
| Measurement Type | OR.PDCPA.TotalDiscardedUlPdcpSduVol, or optionally OR.PDCPA.TotalDiscardedUlPdcpSduVol.*QoS*, where *QoS* identifies the target quality of service class, and OR.PDCPA.TotalDiscardedUlPdcpSduVol.*SNSSAI*, where *SNSSAI* identifies the S-NSSAI, and OR.PDCPA.TotalDiscardedUlPdcpSduVol.*Cucountgroup*, where *Cucountgroup* identifies an instance of CuCountGroup IOC. |
| Measurement Object Class | GNBCUUPFunction |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

4

### A.1.4 UL PDCP SDU volume discarded due to bearer release

#### A.1.4.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.PDCPA.UlPdcpSduVolDiscardBearerRel |
| Description | This counter provides the UL PDCP SDU volume discarded at PDCP due to bearer release. The measurement is optionally split into subcounters per QoS level (mapped 5QI or QCI in EN-DC) or per S-NSSAI. An instance of  Cucountgroup IOC may be used to define subcounter configurations. |
| Collection Method | CC (Cumulative Counter) |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Condition | The measurement counter is incremented by the volume of the UL PDCP SDU whenever the UL PDCP SDU volume is discarded due to bearer release when the UL PDCP SDU is mapped to group of subcounter. |
| Measurement Result | kilobyte (U32) |
| Measurement Type | OR.PDCPA.UlPdcpSduVolDiscardBearerRel, or optionally OR.PDCPA.UlPdcpSduVolDiscardBearerRel.*QoS*, where *QoS* identifies the target quality of service class, and OR.PDCPA.UlPdcpSduVolDiscardBearerRel.*SNSSAI*, where *SNSSAI* identifies the S-NSSAI, and OR.PDCPA.UlPdcpSduVolDiscardBearerRel.*Cucountgroup*, where *Cucountgroup* identifies an instance of CuCountGroup IOC. |
| Measurement Object Class | GNBCUUPFunction |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

1

### A.1.5 Total discarded DL PDCP SDU volume discarded

#### A.1.5.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.PDCPA.TotalDiscardedDlPdcpSduVol |
| Description | This counter provides the DL PDCP SDU volume discarded at PDCP due to any causes. The measurement is optionally split into subcounters per QoS level (mapped 5QI or QCI in EN-DC) or per S-NSSAI. An instance of Cucountgroup IOC may be used to define subcounter  configurations. |
| Collection Method | CC (Cumulative Counter) |
| Condition | The measurement counter is incremented by the volume of the DL PDCP SDU whenever the DL PDCP SDU volume is discarded when the DL PDCP SDU is mapped to group of subcounter. |
| Measurement Result | kilobyte (U32) |
| Measurement Type | OR.PDCPA.TotalDiscardedDlPdcpSduVol, or optionally OR.PDCPA.TotalDiscardedDlPdcpSduVol.*QoS*, where *QoS* identifies the target quality of service class, and OR.PDCPA.TotalDiscardedDlPdcpSduVol.*SNSSAI*, where *SNSSAI* identifies the S-NSSAI, and OR.PDCPA.TotalDiscardedDlPdcpSduVol.*Cucountgroup*, where *Cucountgroup* identifies an instance of CuCountGroup IOC. |
| Measurement Object Class | GNBCUUPFunction |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

4

### A.1.6 DL PDCP SDU volume discarded due to bearer release

#### A.1.6.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.PDCPA.DlPdcpSduVolDiscardLessBearerRel |
| Description | This counter provides the DL PDCP SDU volume discarded at PDCP due to bearer release. The measurement is optionally split into subcounters per QoS level (mapped 5QI or QCI in EN-DC) or per S-  NSSAI. An instance of Cucountgroup IOC may be used to define subcounter configurations. |
| Collection Method | CC (Cumulative Counter) |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Condition | The measurement counter is incremented by the volume of the DL PDCP SDU whenever the DL PDCP SDU volume is discarded due to bearer release when the DL PDCP SDU is mapped to group of subcounter. |
| Measurement Result | kilobyte (U32) |
| Measurement Type | OR.PDCPA.DlPdcpSduVolDiscardLessBearerRel, or optionally OR.PDCPA.DlPdcpSduVolDiscardLessBearerRel.*QoS*, where *QoS* is identifies the target quality of service class, and OR.PDCPA.DlPdcpSduVolDiscardLessBearerRel.*SNSSAI*, where *SNSSAI* identifies the S-NSSAI, and OR.PDCPA.DlPdcpSduVolDiscardLessBearerRel.*Cucountgroup*, where *Cucountgroup* identifies an instance of CuCountGroup IOC. |
| Measurement Object Class | GNBCUUPFunction |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

1

### A.1.7 DL PDCP SDU volume discarded due to out of memory

#### A.1.7.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.PDCPA.DlPdcpSduVolDiscardOutOfMemory |
| Description | This counter provides the DL PDCP SDU volume discarded at PDCP due to out of memory. The measurement is optionally split into subcounters per QoS level (mapped 5QI or QCI in EN-DC) or per S- NSSAI. An instance of Cucountgroup IOC may be used to define  subcounter configurations. |
| Collection Method | CC (Cumulative Counter) |
| Condition | The measurement counter is incremented by the volume of the DL PDCP SDU whenever the DL PDCP SDU volume is discarded due to out of memory when the DL PDCP SDU is mapped to group of subcounter. |
| Measurement Result | kilobyte (U32) |
| Measurement Type | OR.PDCPA.DlPdcpSduVolDiscardOthercauses, or optionally OR.PDCPA.DlPdcpSduVolDiscardOthercauses.*QoS*, where *QoS* identifies the target quality of service class, and OR.PDCPA.DlPdcpSduVolDiscardOthercauses.*SNSSAI*, where *SNSSAI* identifies the S-NSSAI, and OR.PDCPA.DlPdcpSduVolDiscardOthercauses.*Cucountgroup*, where *Cucountgroup* identifies an instance of CuCountGroup IOC. |
| Measurement Object Class | GNBCUUPFunction |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

4

### A.1.8 PDCP transmission stop

#### A.1.8.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.PDCPA.PdcpTxStop |
| Description | This counter the number of the detection of PDCP transmission stop. The measurement is optionally split into subcounters per QoS level  (mapped 5QI or QCI in EN-DC) or per S-NSSAI. An instance of Cucountgroup IOC may be used to define subcounter configurations. |
| Collection Method | CC (Cumulative Counter) |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Condition | The measurement counter is incremented by 1 whenever PDCP transmission stop is occurred when the PDCP SDU is mapped to group of subcounter. It is incremented by 1 at most in each CU count group for one radio bearer until the transmission stop is resolved. |
| Measurement Result | Integer (U16) |
| Measurement Type | OR.PdcpTxStop, or optionally OR.PdcpTxStop.*QoS*, where *QoS* identifies the target quality of service class, and OR.PdcpTxStop.*SNSSAI*, where *SNSSAI* identifies the S-NSSAI, and OR.PdcpTxStop.*Cucountgroup*, where *Cucountgroup* identifies an instance of CuCountGroup IOC. |
| Measurement Object Class | GNBCUUPFunction |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

1

### A.1.9 UL F1-U packet loss rate

#### A.1.9.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | DRB.F1UpacketLossRateUl |
| Description | Refer to 3GPP TS 28.552 [8] clause 5.1.3.1.2  O-RAN addition:  The split into subcounters per S-NSSAI is recommended when the Slicing feature is supported.  The split into subcounters per QoS is recommended where QoS identifies the target quality of service class. |
| Collection Method | Refer to 3GPP TS 28.552 [8] clause 5.1.3.1.2 |
| Condition | Refer to 3GPP TS 28.552 [8] clause 5.1.3.1.2  O-RAN addition:  The numbers are accumulated in the reference measurement period T (1000ms). |
| Measurement Result | Refer to 3GPP TS 28.552 [8] clause 5.1.3.1.2 |
| Measurement Type | Refer to 3GPP TS 28.552 [8] clause 5.1.3.1.2 |
| Measurement Object Class | Refer to 3GPP TS 28.552 [8] clause 5.1.3.1.2 |
| Switching Technology | Refer to 3GPP TS 28.552 [8] clause 5.1.3.1.2 |
| Generation | Refer to 3GPP TS 28.552 [8] clause 5.1.3.1.2 |
| Purpose | Refer to 3GPP TS 28.552 [8] clause 5.1.3.1.2 |

</div>

4

### A.1.10 UL PDCP SDU Loss Rate

#### A.1.10.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | DRB.PacketLossRateUl |
| Description | Refer to 3GPP TS 28.552 [8] clause 5.1.3.1.1  O-RAN addition:  The split into subcounters per S-NSSAI is recommended when the Slicing feature is supported.  The split into subcounters per QoS is recommended where QoS identifies the target quality of service class |
| Collection Method | Refer to 3GPP TS 28.552 [8] clause 5.1.3.1.1 |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Condition | Refer to 3GPP TS 28.552 [8] clause 5.1.3.1.1  O-RAN addition:  The numbers are accumulated in the reference measurement period T (1000ms). |
| Measurement Result | Refer to 3GPP TS 28.552 [8] clause 5.1.3.1.1 |
| Measurement Type | Refer to 3GPP TS 28.552 [8] clause 5.1.3.1.1 |
| Measurement Object Class | Refer to 3GPP TS 28.552 [8] clause 5.1.3.1.1 |
| Switching Technology | Refer to 3GPP TS 28.552 [8] clause 5.1.3.1.1 |
| Generation | Refer to 3GPP TS 28.552 [8] clause 5.1.3.1.1 |
| Purpose | Refer to 3GPP TS 28.552 [8] clause 5.1.3.1.1 |

</div>

1

### A.1.11 DL PDCP SDU Loss Rate

#### A.1.11.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | DRB.PacketLossRateDl |
| Description | Refer to 3GPP TS 28.552 [8] clause 5.1.3.2.1  O-RAN addition:  The split into subcounters per S-NSSAI is recommended when the Slicing feature is supported.  The split into subcounters per QoS is recommended where QoS identifies the target quality of service class |
| Collection Method | Refer to 3GPP TS 28.552 [8] clause 5.1.3.2.1 |
| Condition | Refer to 3GPP TS 28.552 [8] clause 5.1.3.2.1  O-RAN addition:  The numbers are accumulated in the reference measurement period T (1000ms). |
| Measurement Result | Refer to 3GPP TS 28.552 [8] clause 5.1.3.2.1 |
| Measurement Type | Refer to 3GPP TS 28.552 [8] clause 5.1.3.2.1 |
| Measurement Object Class | Refer to 3GPP TS 28.552 [8] clause 5.1.3.2.1 |
| Switching Technology | Refer to 3GPP TS 28.552 [8] clause 5.1.3.2.1 |
| Generation | Refer to 3GPP TS 28.552 [8] clause 5.1.3.2.1 |
| Purpose | Refer to 3GPP TS 28.552 [8] clause 5.1.3.2.1 |

</div>

4

### A.1.12 DL F1-U packet loss rate

#### A.1.12.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | DRB.F1UpacketLossRateDl |
| Description | Refer to 3GPP TS 28.552 [8] clause 5.1.3.1.3  O-RAN addition:  The split into subcounters per S-NSSAI is recommended when the Slicing feature is supported.  The split into subcounters per QoS is recommended where QoS identifies the target quality of service class. |
| Collection Method | Refer to 3GPP TS 28.552 [8] clause 5.1.3.1.3 |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Condition | Refer to 3GPP TS 28.552 [8] clause 5.1.3.1.3  O-RAN addition:  The numbers are accumulated in the reference measurement period T (1000ms). |
| Measurement Result | Refer to 3GPP TS 28.552 [8] clause 5.1.3.1.3 |
| Measurement Type | Refer to 3GPP TS 28.552 [8] clause 5.1.3.1.3 |
| Measurement Object Class | Refer to 3GPP TS 28.552 [8] clause 5.1.3.1.3 |
| Switching Technology | Refer to 3GPP TS 28.552 [8] clause 5.1.3.1.3 |
| Generation | Refer to 3GPP TS 28.552 [8] clause 5.1.3.1.3 |
| Purpose | Refer to 3GPP TS 28.552 [8] clause 5.1.3.1.3 |

</div>

1

## A.2 NR PDCP performance counters (Type B):

### A.2.1 UL PDCP SDU Data Volume

#### A.2.1.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.PDCPB.UlPdcpSduDataVol |
| Description | Refer to 3GPP TS 28.552 [8] clause 5.1.3.6.2.2  O-RAN addition:  The measurement is optionally split into subcounters per QoS level (mapped 5QI or QCI in EN-DC) or per S-NSSAI. An instance of Cucountgroup IOC may be used to define subcounter configurations. |
| Collection Method | Refer to 3GPP TS 28.552 [8] clause 5.1.3.6.2.2 |
| Condition | Refer to 3GPP TS 28.552 [8] clause 5.1.3.6.2.2  O-RAN addition:  The subcounter per QoS level should be regarded as subcounter QoS, SNSSAI or Cucountgroup.  Note: excludes UL PDCP SDU received as data forwarding. |
| Measurement Result | Refer to 3GPP TS 28.552 [8] clause 5.1.3.6.2.2 |
| Measurement Type | Refer to 3GPP TS 28.552 [8] clause 5.1.3.6.2.2  O-RAN addition: OR.PDCPB.UlPdcpSduDataVol, or optionally  OR.PDCPB.UlPdcpSduDataVol.*QoS*, where *QoS* identifies the target quality of service class, and OR.PDCPB.UlPdcpSduDataVol.*SNSSAI*, where *SNSSAI* identifies the S-NSSAI, and OR.PDCPB.UlPdcpSduDataVol.*Cucountgroup*, where *Cucountgroup* identifies an instance of CuCountGroup IOC. |
| Measurement Object Class | Refer to 3GPP TS 28.552 [8] clause 5.1.3.6.2.2 |
| Switching Technology | Refer to 3GPP TS 28.552 [8] clause 5.1.3.6.2.2 |
| Generation | Refer to 3GPP TS 28.552 [8] clause 5.1.3.6.2.2 |
| Purpose | Refer to 3GPP TS 28.552 [8] clause 5.1.3.6.2.2 |

</div>

5

### A.2.2 UL PDCP SDU Data Volume on X2 Interface

#### A.2.2.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.PDCPB.UlPdcpSduDataVolX2 |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Description | Refer to 3GPP TS 28.552 [8] clause 5.1.3.6.2.4  O-RAN addition:  The measurement is for X2 interface.  The measurement is optionally split into subcounters per QoS level (mapped 5QI or QCI in EN-DC) or per S-NSSAI. An instance of Cucountgroup IOC may be used to define subcounter configurations. |
| Collection Method | Refer to 3GPP TS 28.552 [8] clause 5.1.3.6.2.4 |
| Condition | Refer to 3GPP TS 28.552 [8] clause 5.1.3.6.2.4  O-RAN addition:  The measurement is for X2 interface.  The subcounter per QoS level should be regarded as subcounter QoS, SNSSAI or Cucountgroup.  Note: excludes UL PDCP SDU received as data forwarding. |
| Measurement Result | Refer to 3GPP TS 28.552 [8] clause 5.1.3.6.2.4 |
| Measurement Type | Refer to 3GPP TS 28.552 [8] clause 5.1.3.6.2.4  O-RAN addition: OR.PDCPB.UlPdcpSduDataVolX2, or optionally  OR.PDCPB.UlPdcpSduDataVolX2.*QoS*, where *QoS* identifies the target quality of service class, and OR.PDCPB.UlPdcpSduDataVolX2.*SNSSAI*, where *SNSSAI* identifies the S-NSSAI, and OR.PDCPB.UlPdcpSduDataVolX2.*Cucountgroup*, where *Cucountgroup* identifies an instance of CuCountGroup IOC. |
| Measurement Object Class | Refer to 3GPP TS 28.552 [8] clause 5.1.3.6.2.4 |
| Switching Technology | Refer to 3GPP TS 28.552 [8] clause 5.1.3.6.2.4 |
| Generation | Refer to 3GPP TS 28.552 [8] clause 5.1.3.6.2.4 |
| Purpose | Refer to 3GPP TS 28.552 [8] clause 5.1.3.6.2.4 |

</div>

1

### A.2.3 UL PDCP SDU Data Volume on Xn Interface

#### A.2.3.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.PDCPB.UlPdcpSduDataVolXn |
| Description | Refer to 3GPP TS 28.552 [8] clause 5.1.3.6.2.4  O-RAN addition:  The measurement is for Xn interface.  The measurement is optionally split into subcounters per QoS level  (mapped 5QI or QCI in EN-DC) or per S-NSSAI. An instance of Cucountgroup IOC may be used to define subcounter configurations. |
| Collection Method | Refer to 3GPP TS 28.552 [8] clause 5.1.3.6.2.4 |
| Condition | Refer to 3GPP TS 28.552 [8] clause 5.1.3.6.2.4  O-RAN addition:  The measurement is for Xn interface.  The subcounter per QoS level should be regarded as subcounter QoS, SNSSAI or Cucountgroup.  Note: excludes UL PDCP SDU received as data forwarding. |
| Measurement Result | Refer to 3GPP TS 28.552 [8] clause 5.1.3.6.2.4 |
| Measurement Type | OR.PDCPB.UlPdcpSduDataVolXn, or optionally OR.PDCPB.UlPdcpSduDataVolXn.*QoS*, where *QoS* identifies the target quality of service class, and OR.PDCPB.UlPdcpSduDataVolXn.*SNSSAI*, where *SNSSAI* identifies the S-NSSAI, and OR.PDCPB.UlPdcpSduDataVolXn.*Cucountgroup*, where *Cucountgroup*  identifies an instance of CuCountGroup IOC. |
| Measurement Object Class | Refer to 3GPP TS 28.552 [8] clause 5.1.3.6.2.4 |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Switching Technology | Refer to 3GPP TS 28.552 [8] clause 5.1.3.6.2.4 |
| Generation | Refer to 3GPP TS 28.552 [8] clause 5.1.3.6.2.4 |
| Purpose | Refer to 3GPP TS 28.552 [8] clause 5.1.3.6.2.4 |

</div>

1

### A.2.4 DL PDCP SDU Data Volume

#### A.2.4.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.PDCPB.DlPdcpSduDataVol |
| Description | Refer to 3GPP TS 28.552 [8] clause 5.1.3.6.2.1  O-RAN addition:  The measurement is optionally split into subcounters per QoS level (mapped 5QI or QCI in EN-DC) or per S-NSSAI. An instance of Cucountgroup IOC may be used to define subcounter configurations. |
| Collection Method | Refer to 3GPP TS 28.552 [8] clause 5.1.3.6.2.1 |
| Condition | Refer to 3GPP TS 28.552 [8] clause 5.1.3.6.2.1  O-RAN addition:  The subcounter per QoS level should be regarded as subcounter QoS, SNSSAI or Cucountgroup.  Note: excludes DL PDCP SDU transmitted as data forwarding. |
| Measurement Result | Refer to 3GPP TS 28.552 [8] clause 5.1.3.6.2.1 |
| Measurement Type | Refer to 3GPP TS 28.552 [8] clause 5.1.3.6.2.1  O-RAN addition: OR.PDCPB.DlPdcpSduDataVol, or optionally  OR.PDCPB.DlPdcpSduDataVol.*QoS*, where *QoS* identifies the target quality of service class, and OR.PDCPB.DlPdcpSduDataVol.*SNSSAI*, where *SNSSAI* identifies the S-NSSAI, and OR.PDCPB.DlPdcpSduDataVol.*Cucountgroup*, where *Cucountgroup* identifies an instance of CuCountGroup IOC. |
| Measurement Object Class | Refer to 3GPP TS 28.552 [8] clause 5.1.3.6.2.1 |
| Switching Technology | Refer to 3GPP TS 28.552 [8] clause 5.1.3.6.2.1 |
| Generation | Refer to 3GPP TS 28.552 [8] clause 5.1.3.6.2.1 |
| Purpose | Refer to 3GPP TS 28.552 [8] clause 5.1.3.6.2.1 |

</div>

4

### A.2.5 DL PDCP SDU Data Volume on X2 Interface

#### A.2.5.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.PDCPB.DlPdcpSduDataVolX2 |
| Description | Refer to 3GPP TS 28.552 [8] clause 5.1.3.6.2.3  O-RAN addition:  The measurement is for X2 interface.  The measurement is optionally split into subcounters per QoS level (mapped 5QI or QCI in NR option 3) or per S-NSSAI. An instance of Cucountgroup IOC may be used to define subcounter configurations. |
| Collection Method | Refer to 3GPP TS 28.552 [8] clause 5.1.3.6.2.3 |
| Condition | Refer to 3GPP TS 28.552 [8] clause 5.1.3.6.2.3  O-RAN addition:  The measurement is for X2 interface.  The subcounter per QoS level should be regarded as subcounter QoS, SNSSAI or Cucountgroup. |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
|  | Note: excludes DL PDCP SDU transmitted as data forwarding. |
| Measurement Result | Refer to 3GPP TS 28.552 [8] clause 5.1.3.6.2.3 |
| Measurement Type | Refer to 3GPP TS 28.552 [8] clause 5.1.3.6.2.3  O-RAN addition: OR.PDCPB.DlPdcpSduDataVolX2, or optionally  OR.PDCPB.DlPdcpSduDataVolX2.*QoS*, where *QoS* identifies the target quality of service class, and OR.PDCPB.DlPdcpSduDataVolX2.*SNSSAI*, where *SNSSAI* identifies the S-NSSAI, and OR.PDCPB.DlPdcpSduDataVolX2.*Cucountgroup*, where *Cucountgroup* identifies an instance of CuCountGroup IOC. |
| Measurement Object Class | Refer to 3GPP TS 28.552 [8] clause 5.1.3.6.2.3 |
| Switching Technology | Refer to 3GPP TS 28.552 [8] clause 5.1.3.6.2.3 |
| Generation | Refer to 3GPP TS 28.552 [8] clause 5.1.3.6.2.3 |
| Purpose | Refer to 3GPP TS 28.552 [8] clause 5.1.3.6.2.3 |

</div>

1

### A.2.6 DL PDCP SDU Data Volume on Xn Interface

#### A.2.6.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.PDCPB.DlPdcpSduDataVolXnCell |
| Description | Refer to 3GPP TS 28.552 [8] clause 5.1.3.6.2.3  O-RAN addition:  The measurement is for Xn interface.  The measurement is optionally split into subcounters per QoS level (mapped 5QI or QCI in NR option 3) or per S-NSSAI. An instance of Cucountgroup IOC may be used to define subcounter configurations. |
| Collection Method | Refer to 3GPP TS 28.552 [8] clause 5.1.3.6.2.3 |
| Condition | Refer to 3GPP TS 28.552 [8] clause 5.1.3.6.2.3  O-RAN addition:  The measurement is for Xn interface.  The subcounter per QoS level should be regarded as subcounter QoS, SNSSAI or Cucountgroup.  Note: excludes DL PDCP SDU transmitted as data forwarding. |
| Measurement Result | Refer to 3GPP TS 28.552 [8] clause 5.1.3.6.2.3 |
| Measurement Type | Refer to 3GPP TS 28.552 [8] clause 5.1.3.6.2.3  O-RAN addition: OR.PDCPB.DlPdcpSduDataVolXn, or optionally  OR.PDCPB.DlPdcpSduDataVolXn.*QoS*, where *QoS* identifies the target quality of service class, and OR.PDCPB.DlPdcpSduDataVolXn.*SNSSAI*, where *SNSSAI* identifies the S-NSSAI, and OR.PDCPB.DlPdcpSduDataVolXn.*Cucountgroup*, where *Cucountgroup*  identifies an instance of CuCountGroup IOC. |
| Measurement Object Class | Refer to 3GPP TS 28.552 [8] clause 5.1.3.6.2.3 |
| Switching Technology | Refer to 3GPP TS 28.552 [8] clause 5.1.3.6.2.3 |
| Generation | Refer to 3GPP TS 28.552 [8] clause 5.1.3.6.2.3 |
| Purpose | Refer to 3GPP TS 28.552 [8] clause 5.1.3.6.2.3 |

</div>

4

### A.2.7 UL PDCP SDU Data Volume per cell

#### A.2.7.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.PDCPB.UlPdcpSduDataVolCell |
| Description | This counter provides the UL PDCP SDU volume received via X2, Xn or F1. The measurement is optionally split into subcounters per QoS level (mapped 5QI or QCI in NR option 3) or per S-NSSAI. An instance of Cucountgroup IOC may be used to define subcounter configurations. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by the volume of UL PDCP SDU whenever the UL PDCP PDU is received via X2-U, Xn-U or F1-U UL GTP-u tunnel when the UL PDCP SDU is mapped to group of subcounter.  Note: excludes UL PDCP SDU received as data forwarding. |
| Measurement Result | Mbit (U32) |
| Measurement Type | OR.PDCPB.UlPdcpSduDataVolCell, or optionally OR.PDCPB.UlPdcpSduDataVolCell.*QoS*, where *QoS* identifies the target quality of service class, and OR.PDCPB.UlPdcpSduDataVolCell.*SNSSAI*, where *SNSSAI* identifies the S-NSSAI, and OR.PDCPB.UlPdcpSduDataVolCell.*Cucountgroup*, where *Cucountgroup* identifies an instance of CuCountGroup IOC. |
| Measurement Object Class | NRCellCU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

3

### A.2.8 UL PDCP SDU Data Volume on X2 Interface per cell

#### A.2.8.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.PDCPB.UlPdcpSduDataVolX2Cell |
| Description | This counter provides the UL PDCP SDU volume received via X2. The measurement is optionally split into subcounters per QoS level (mapped 5QI or QCI in NR option 3) or per S-NSSAI. An instance of Cucountgroup IOC may be used to define subcounter configurations. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by the volume of UL PDCP SDU whenever the UL PDCP PDU is received via X2-U UL GTP-u tunnel when the UL PDCP SDU is mapped to group of subcounter.  Note: excludes UL PDCP SDU received as data forwarding. |
| Measurement Result | Mbit (U32) |
| Measurement Type | OR.PDCPB.UlPdcpSduDataVolX2Cell, or optionally OR.PDCPB.UlPdcpSduDataVolX2Cell.*QoS*, where *QoS* identifies the target quality of service class, and OR.PDCPB.UlPdcpSduDataVolX2Cell.*SNSSAI*, where *SNSSAI* identifies the S-NSSAI, and OR.PDCPB.UlPdcpSduDataVolX2Cell.*Cucountgroup*, where  *Cucountgroup* identifies an instance of CuCountGroup IOC. |
| Measurement Object Class | NRCellCU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

6

### A.2.9 UL PDCP SDU Data Volume on Xn Interface per cell

#### A.2.9.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.PDCPB.UlPdcpSduDataVolXnCell |
| Description | This counter provides the UL PDCP SDU volume received via Xn. The measurement is optionally split into subcounters per QoS level (mapped 5QI or QCI in NR option 3) or per S-NSSAI. An instance of Cucountgroup IOC may be used to define subcounter configurations. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by the volume of UL PDCP SDU whenever the UL PDCP PDU is received via Xn-U UL GTP-u  tunnel when the UL PDCP SDU is mapped to group of subcounter. Note: excludes UL PDCP SDU received as data forwarding. |
| Measurement Result | Mbit (U32) |
| Measurement Type | OR.PDCPB.UlPdcpSduDataVolXnCell, or optionally OR.PDCPB.UlPdcpSduDataVolXnCell.*QoS*, where *QoS* identifies the target quality of service class, and OR.PDCPB.UlPdcpSduDataVolXnCell.*SNSSAI*, where *SNSSAI* identifies the S-NSSAI, and OR.PDCPB.UlPdcpSduDataVolXnCell.*Cucountgroup*, where *Cucountgroup* identifies an instance of CuCountGroup IOC. |
| Measurement Object Class | NRCellCU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

3

### A.2.10 DL PDCP SDU Data Volume per cell

#### A.2.10.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.PDCPB.DlPdcpSduDataVolCell |
| Description | This counter provides the DL PDCP SDU volume transmitted via X2, Xn or F1. The measurement is optionally split into subcounters per QoS  level (mapped 5QI or QCI in NR option 3) or per S-NSSAI. An instance of Cucountgroup IOC may be used to define subcounter configurations. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by the volume of DL PDCP SDU whenever the DL PDCP PDU is transmitted via X2-U, Xn-U or F1- U DL GTP-u tunnel when the DL PDCP SDU is mapped to group of subcounter.  Note: excludes DL PDCP SDU transmitted as data forwarding. |
| Measurement Result | Mbit (U32) |
| Measurement Type | OR.PDCPB.DlPdcpSduDataVolCell, or optionally OR.PDCPB.DlPdcpSduDataVolCell.*QoS*, where *QoS* identifies the target quality of service class, and OR.PDCPB.DlPdcpSduDataVolCell.*SNSSAI*, where *SNSSAI* identifies the S-NSSAI, and OR.PDCPB.DlPdcpSduDataVolCell.*Cucountgroup*, where *Cucountgroup* identifies an instance of CuCountGroup IOC. |
| Measurement Object Class | NRCellCU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

6

### A.2.11 DL PDCP SDU Data Volume on X2 Interface per cell

#### A.2.11.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.PDCPB.DlPdcpSduDataVolX2Cell |
| Description | This counter provides the DL PDCP SDU volume transmitted via X2. The measurement is optionally split into subcounters per QoS level (mapped 5QI or QCI in NR option 3) or per S-NSSAI. An instance of Cucountgroup IOC may be used to define subcounter configurations. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by the volume of DL PDCP SDU whenever the DL PDCP PDU is transmitted via X2-U DL GTP-u tunnel when the DL PDCP SDU is mapped to group of subcounter.  Note: excludes DL PDCP SDU transmitted as data forwarding. |
| Measurement Result | Mbit (U32) |
| Measurement Type | OR.PDCPB.DlPdcpSduDataVolX2Cell, or optionally OR.PDCPB.DlPdcpSduDataVolX2Cell.*QoS*, where *QoS* identifies the target quality of service class, and OR.PDCPB.DlPdcpSduDataVolX2Cell.*SNSSAI*, where *SNSSAI* identifies the S-NSSAI, and OR.PDCPB.DlPdcpSduDataVolX2Cell.*Cucountgroup*, where *Cucountgroup* identifies an instance of CuCountGroup IOC. |
| Measurement Object Class | NRCellCU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

3

### A.2.12 DL PDCP SDU Data Volume on Xn Interface per cell

#### A.2.12.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.PDCPB.DlPdcpSduDataVolXnCell |
| Description | This counter provides the DL PDCP SDU volume transmitted via Xn. The measurement is optionally split into subcounters per QoS level (mapped 5QI or QCI in NR option 3) or per S-NSSAI. An instance of Cucountgroup IOC may be used to define subcounter configurations. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by the volume of DL PDCP SDU whenever the DL PDCP PDU is transmitted via Xn-U DL GTP-u tunnel when the DL PDCP SDU is mapped to group of subcounter.  Note: excludes DL PDCP SDU transmitted as data forwarding. |
| Measurement Result | Mbit (U32) |
| Measurement Type | OR.PDCPB.DlPdcpSduDataVolXnCell, or optionally OR.PDCPB.DlPdcpSduDataVolXnCell.*QoS,* where *QoS* identifies the target quality of service class, and OR.PDCPB.DlPdcpSduDataVolXnCell.*SNSSAI*, where *SNSSAI* identifies the S-NSSAI, and OR.PDCPB.DlPdcpSduDataVolXnCell.*Cucountgroup*, where *Cucountgroup* identifies an instance of CuCountGroup IOC. |
| Measurement Object Class | NRCellCU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

6

## A.3 NR S1-U Interface Performance Counters

### A.3.1 UL PDCP SDU volume transmitted via S1-U UL GTP-U tunnel

#### A.3.1.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.S1.UlPdcpSduVolTxS1UUl |
| Description | This counter provides the UL PDCP SDU volume transmitted via S1-U UL GTP-U tunnel The measurement is optionally split into subcounters per QoS level (mapped 5QI or QCI in EN-DC) or per S-NSSAI. An instance of Cucountgroup IOC may be used to define subcounter  configurations. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by the volume of UL PDCP SDU whenever the UL PDCP SDU is transmitted via S1-U UL GTP-u tunnel when the UL PDCP SDU is group of subcounter. |
| Measurement Result | kilobyte (U32) |
| Measurement Type | OR.S1.UlPdcpSduVolTxS1UUl, or optionally OR.S1.UlPdcpSduVolTxS1UUl.*QoS*, where *QoS* identifies the target quality of service class, and OR.S1.UlPdcpSduVolTxS1UUl.*SNSSAI*, where *SNSSAI* identifies the S-NSSAI, and OR.S1.UlPdcpSduVolTxS1UUl.*Cucountgroup*, where *Cucountgroup* identifies ann instance of CuCountGroup IOC. |
| Measurement Object Class | GNBCUUPFunction |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

4

### A.3.2 DL PDCP SDU volume received via S1-U DL GTP-U tunnel

#### A.3.2.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.S1.DlPdcpSduVolRxS1UDl |
| Description | This counter provides the DL PDCP SDU volume received via S1-U DL GTP-U tunnel The measurement is optionally split into subcounters per QoS level (mapped 5QI or QCI in EN-DC) or per S-NSSAI. An instance of Cucountgroup IOC may be used to define subcounter configurations. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by the volume of DL PDCP SDU whenever the DL PDCP SDU is received via S1-U DL GTP-u tunnel when the DL PDCP SDU is mapped to group of subcounter. |
| Measurement Result | kilobyte (U32) |
| Measurement Type | OR.S1.DlPdcpSduVolRxS1UDl, or optionally OR.S1.DlPdcpSduVolRxS1UDl.*QoS*, where *QoS* identifies the target quality of service class, and OR.S1.DlPdcpSduVolRxS1UDl.*SNSSAI*, where *SNSSAI* identifies the S-NSSAI, and OR.S1.DlPdcpSduVolRxS1UDl.*Cucountgroup*, where *Cucountgroup*  identifies an instance of CuCountGroup IOC. |
| Measurement Object Class | GNBCUUPFunction |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

7

### A.3.3 UL PDCP SDUs transmitted via S1-U UL GTP-U tunnel

#### A.3.3.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.S1.UlPdcpSduTxS1UUl |
| Description | This counter provides the number of the UL PDCP SDUs transmitted via S1-U UL GTP-U tunnel.  The counter is split into subcounters per GTP Path.  The counter is split into subcounter of subcounter per CuCountGroup. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by 1 whenever the UL PDCP SDU is transmitted via S1 U UL GTP-u tunnel.  GTP Path subcounter is maintained, the number of measurements is accumulated per the number or supported GTP Path.  CuCountGroup subcounter of subcounter is maintained, the number of measurements is accumulated per the number of supported  CucountGroup. |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.S1.UlPdcpPduTxS1UUl.*GTPPath*.*Cugroup* where *GTPPath* is GTP Path.  *Cucountgroup* identifies an instance of CuCountGroup IOC. |
| Measurement Object Class | GNBCUUPFunction |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

3

### A.3.4 DL PDCP SDUs transmitted via S1-U DL GTP-U tunnel

#### A.3.4.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.S1.DlPdcpSduTxS1UDl |
| Description | This counter provides the number of the DL PDCP SDUs transmitted via S1-U DL GTP-U tunnel.  The counter is split into subcounters per GTP Path.  The counter is split into subcounter of subcounter per CuCountGroup. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by 1 whenever the DL PDCP SDU is transmitted via S1 U DL GTP-u tunnel.  GTP Path subcounter is maintained, the number of measurements is accumulated per the number or supported GTP Path.  CuCountGroup subcounter of subcounter is maintained, the number of  measurements is accumulated per the number of supported CucountGroup. |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.S1.DlPdcpPduTxS1UDl.*GTPPath*.*Cugroup* where *GTPPath* is GTP Path.  *Cucountgroup* identifies an instance of CuCountGroup IOC. |
| Measurement Object Class | GNBCUUPFunction |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

6

## A.4 NR NG-U Interface Performance Counters

### A.4.1 UL PDCP SDU volume transmitted via NG-U UL GTP-U tunnel

#### A.4.1.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.NG.UlPdcpSduVolTxNGUUl |
| Description | This counter provides the UL PDCP SDU volume transmitted via NG-U UL GTP-U tunnel. The measurement is optionally split into subcounters per QoS level (mapped 5QI or QCI in EN-DC) or per S-NSSAI. An instance of Cucountgroup IOC may be used to define subcounter  configurations. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by the volume of UL PDCP SDU whenever the UL PDCP SDU is transmitted via NG-U UL GTP-u tunnel when the UL PDCP SDU is mapped to group of subcounter. |
| Measurement Result | kilobyte (U32) |
| Measurement Type | OR.NG.UlPdcpSduVolTxNGUUl, or optionally OR.NG.UlPdcpSduVolTxNGUUl.*QoS*, where *QoS* identifies the target quality of service class, and OR.NG.UlPdcpSduVolTxNGUUl.*SNSSAI*, where *SNSSAI* identifies the S-NSSAI, and OR.NG.UlPdcpSduVolTxNGUUl.*Cucountgroup*, where *Cucountgroup*  identifies an instance of CuCountGroup IOC. |
| Measurement Object Class | GNBCUUPFunction |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

4

### A.4.2 DL PDCP SDU volume received via NG-U DL GTP-U tunnel

#### A.4.2.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.NG.DlPdcpSduVolRxNGUDl |
| Description | This counter provides the DL PDCP SDU volume received via NG-U DL GTP-U tunnel. The measurement is optionally split into subcounters per QoS level (mapped 5QI or QCI in EN-DC) or per S-NSSAI. An instance of Cucountgroup IOC may be used to define subcounter configurations. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by the volume of DL PDCP SDU whenever the DL PDCP SDU is received via NG-U DL GTP-u tunnel when the DL PDCP SDU is mapped to group of subcounter. |
| Measurement Result | kilobyte (U32) |
| Measurement Type | OR.NG.DlPdcpSduVolRxNGUDl, or optionally OR.NG.DlPdcpSduVolRxNGUDl.*QoS*, where *QoS* identifies the target quality of service class, and OR.NG.DlPdcpSduVolRxNGUDl.*SNSSAI*, where *SNSSAI* identifies the S-NSSAI, and OR.NG.DlPdcpSduVolRxNGUDl.*Cucountgroup*, where *Cucountgroup*  identifies an instance of CuCountGroup IOC. |
| Measurement Object Class | GNBCUUPFunction |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

7

## A.5 NR X2-U Interface performance counters (O-CU)

### A.5.1 UL PDCP SDU volume received via X2-U UL GTP-U tunnel (X2-U UL

1. data forwarding)

#### A.5.1.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.X2.UlPdcpSduVolRxX2UUlDataForward |
| Description | This counter provides the UL PDCP SDU volume received via X2-U UL GTP-U tunnel for data forwarding. The measurement is optionally split into subcounters per QoS level (mapped 5QI or QCI in EN-DC) or per S-  NSSAI. An instance of Cucountgroup IOC may be used to define subcounter configurations. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by the volume of UL PDCP SDU whenever the UL PDCP PDU is received via X2-U UL GTP-u tunnel for data forwarding when the UL PDCP SDU is mapped to group of subcounter. |
| Measurement Result | kilobyte (U32) |
| Measurement Type | OR.X2.UlPdcpSduVolRxX2UUlDataForward, or optionally OR.X2.UlPdcpSduVolRxX2UUlDataForward.*QoS*, where *QoS* is identifies the target quality of service class, and OR.X2.UlPdcpSduVolRxX2UUlDataForward.*SNSSAI*, where *SNSSAI* identifies the S-NSSAI, and OR.X2.UlPdcpSduVolRxX2UUlDataForward.*Cucountgroup*, where *Cucountgroup* identifies an instance of CuCountGroup IOC. |
| Measurement Object Class | GNBCUUPFunction |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

5

### A.5.2 DL PDCP SDU volume received via X2-U DL GTP-U tunnel (X2-U DL

1. data forwarding)

#### A.5.2.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.X2.DlPdcpSduVolTxX2UDlDataForward |
| Description | This counter provides the DL PDCP SDU volume received via X2-U DL GTP-U tunnel for data forwarding. The measurement is optionally split into subcounters per QoS level (mapped 5QI or QCI in EN-DC) or per S- NSSAI. An instance of Cucountgroup IOC may be used to define  subcounter configurations. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by the volume of DL PDCP SDU whenever the DL PDCP PDU is transmitted via X2-U DL GTP-u  tunnel for data forwarding when the DL PDCP SDU is mapped to group of subcounter. |
| Measurement Result | kilobyte (U32) |
| Measurement Type | OR.X2.DlPdcpSduVolRxX2UDlDataForward, or optionally OR.X2.DlPdcpSduVolRxX2UDlDataForward.*QoS*, where *QoS* identifies the target quality of service class, and OR.X2.DlPdcpSduVolRxX2UDlDataForward.*SNSSAI*, where *SNSSAI* identifies the S-NSSAI, and OR.X2.DlPdcpSduVolRxX2UDlDataForward.*Cucountgroup*, where  *Cucountgroup* identifies an instance of CuCountGroup IOC. |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Object Class | GNBCUUPFunction |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

1

## A.6 NR Xn-U Interface performance counters (O-CU)

### A.6.1 UL PDCP SDU volume received via Xn-U UL GTP-U tunnel (Xn-U UL

1. data forwarding)

#### A.6.1.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.Xn.UlPdcpSduVolRxXnUUlDataForward |
| Description | This counter provides the UL PDCP SDU volume received via Xn-U UL GTP-U tunnel for data forwarding. The measurement is optionally split into subcounters per QoS level (mapped 5QI or QCI in EN-DC) or per S-  NSSAI. An instance of Cucountgroup IOC may be used to define subcounter configurations. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by the volume of UL PDCP SDU whenever the UL PDCP PDU is received via Xn-U UL GTP-u  tunnel for data forwarding when the UL PDCP SDU is mapped to group of subcounter. |
| Measurement Result | kilobyte (U32) |
| Measurement Type | OR.Xn.UlPdcpSduVolRxXnUUlDataForward, or optionally OR.Xn.UlPdcpSduVolRxXnUUlDataForward.*QoS*, where *QoS* identifies the target quality of service class, and OR.Xn.UlPdcpSduVolRxXnUUlDataForward.*SNSSAI*, where *SNSSAI* identifies the S-NSSAI, and OR.Xn.UlPdcpSduVolRxXnUUlDataForward.*Cucountgroup*, where *Cucountgroup* identifies an instance of CuCountGroup IOC. |
| Measurement Object Class | GNBCUUPFunction |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

6

### A.6.2 DL PDCP SDU volume received via Xn-U DL GTP-U tunnel (Xn-U DL

1. data forwarding)

#### A.6.2.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.Xn.DlPdcpSduVolTxXnUDlDataForward |
| Description | This counter provides the DL PDCP SDU volume received via Xn-U DL GTP-U tunnel for data forwarding. The measurement is optionally split into subcounters per QoS level (mapped 5QI or QCI in EN-DC) or per S-  NSSAI. An instance of Cucountgroup IOC may be used to define subcounter configurations. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by the volume of DL PDCP SDU whenever the DL PDCP PDU is transmitted via Xn-U DL GTP-u tunnel for data forwarding when the DL PDCP SDU is mapped to group  of subcounter. |
| Measurement Result | kilobyte (U32) |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Type | OR.Xn.OR.Xn.DlPdcpSduVolTxXnUDlDataForward, or optionally OR.Xn.OR.Xn.DlPdcpSduVolTxXnUDlDataForward.*QoS*, where *QoS* identifies the target quality of service class, and OR.Xn.OR.Xn.DlPdcpSduVolTxXnUDlDataForward.*SNSSAI*, where *SNSSAI* identifies the S-NSSAI, and OR.Xn.OR.Xn.DlPdcpSduVolTxXnUDlDataForward.*Cucountgroup*, where *Cucountgroup* identifies an instance of CuCountGroup IOC. |
| Measurement Object Class | GNBCUUPFunction |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

1

## A.7 NR X2-C Interface performance counters (O-CU)

### A.7.1 Transmitted X2-C messages

#### A.7.1.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.X2.TxX2CMesg |
| Description | This counter provides the number of the transmitted X2-C messages per signal type that is non UE-associated or UE-associated signaling TS  38.401 [11]. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by 1 whenever X2 C-plane message is transmitted when the signal type of the X2 C-plane message is group of *Signaltype*. |
| Measurement Result | Integer (32) |
| Measurement Type | OR.X2.TxX2CMesg.*Signaltype* where *Signaltype* is signal type: 0: non UE-associated  1: UE associated |
| Measurement Object Class | GNBCUCPFunction |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

5

### A.7.2 Received X2-C messages

#### A.7.2.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.X2.RxX2CMesg |
| Description | This counter provides the number of the received X2-C messages per signal type that is non UE-associated or UE-associated signaling TS  38.401 [11]. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by 1 whenever X2 C-plane message is received when the signal type of the X2 C-plane message is group of *Signaltype*. |
| Measurement Result | Integer (32) |
| Measurement Type | OR.X2.RxX2CMesg.*Signaltype* where *Signaltype* is signal type: 0: non UE-associated  1: UE associated |
| Measurement Object Class | GNBCUCPFunction |
| Switching Technology | Packet Switched |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

1

## A.8 NR Xn-C Interface performance counters (O-CU)

### A.8.1 Transmitted Xn-C messages

#### A.8.1.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.Xn.TxXnCMesg |
| Description | This counter provides the number of the transmitted Xn-C messages per signal type that is non UE-associated or UE-associated signaling TS  38.401 [11]. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by 1 whenever Xn C-plane message is transmitted when the signal type of Xn C-plane message is  group of *Signaltype*. |
| Measurement Result | Integer (32) |
| Measurement Type | OR.Xn.TxXnCMesg.*Signaltype* where *Signaltype* is signal type: 0: non UE-associated  1: UE associated |
| Measurement Object Class | GNBCUCPFunction |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

5

### A.8.2 Received Xn-C messages

#### A.8.2.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.Xn.RxXnCMesg |
| Description | This counter provides the number of the received Xn-C messages per signal type that is non UE-associated or UE-associated signaling TS  38.401 [11]. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by 1 whenever Xn C-plane  message is received when the signal type of the Xn C-plane message is group of *Signaltype*. |
| Measurement Result | Integer (32) |
| Measurement Type | OR.Xn.RxXnCMesg.*Signaltype* where *Signaltype* is signal type: 0: non UE-associated  1: UE associated |
| Measurement Object Class | GNBCUCPFunction |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

8

## A.9 NR F1-C Interface performance counters (O-CU-CP)

### A.9.1 Transmitted F1-C messages

#### A.9.1.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.F1.TxF1CMesg |
| Description | This counter provides the number of the transmitted F1-C messages per signal type that is non UE-associated or UE-associated signaling TS  38.401 [11]. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by 1 whenever F1 C-plane message is transmitted when the signal type of the F1 C-plane message is group of *Signaltype*. |
| Measurement Result | Integer (32) |
| Measurement Type | OR.F1.TxF1CMesg.*Signaltype* where *Signaltype* is signal type: 0: non UE-associated  1: UE associated |
| Measurement Object Class | GNBCUCPFunction |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

4

### A.9.2 Received F1-C messages

#### A.9.2.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.F1.RxF1CMesg |
| Description | This counter provides the number of the received F1-C messages per signal type that is non UE-associated or UE-associated signaling TS  38.401 [11]. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by 1 whenever F1 C-plane message is received when the signal type of the F1 C-plane message is group of *Signaltype*. |
| Measurement Result | Integer (32) |
| Measurement Type | OR.F1.RxF1CMesg.*Signaltype* where *Signaltype* is signal type: 0: non UE-associated  1: UE associated |
| Measurement Object Class | GNBCUCPFunction |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

7

## A.10 Number of UE Contexts for EN-DC

### A.10.1 Max SN terminated split bearer UE Contexts

#### A.10.1.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.UEENDC.MaxSnSplitBearer |
| Description | This counter provides the maximum number of UE Contexts that are configured SN terminated split bearer. |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Collection Method | SI |
| Condition | Measurement subcounter is the maximum number of x. It is assigned with period of 100ms by the volume x, if x is bigger than previously counted volume.  x is the number of the UE Context that are configured as SN terminated split bearer.  x is acquired as an instantaneous value at every 100ms.   * the triggers of addition   + received X2-AP: SgNB Reconfiguration Complete (to SN terminated split bearer)   + received X2-AP: SgNB Modification Confirm (Intra/Inter DU PSCell change using SRB1 (for target cell))   + received RRC: RRC Reconfiguration Complete (Intra/Inter DU PSCell change using SRB3 (for target cell)) * the triggers of subtraction   + received X2-AP: SgNB Reconfiguration Complete (to SN terminated MCG bearer)   + received X2-AP: SgNB Modification Confirm (Intra/Inter DU PSCell change using SRB1 (for source cell))   + received F1-AP: UE Context Release Complete (Intra/Inter DU PSCell change using SRB3 (for source cell))   + received X2-AP: UE Context Release |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.UEENDC.MaxSnSplitBearer |
| Measurement Object Class | NRCellCU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

1

### A.10.2 Max SN terminated MCG bearer UE Contexts

#### A.10.2.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.UEENDC.MaxSnMcgBearer |
| Description | This counter provides the maximum number of UE Contexts that are configured SN terminated MCG bearer. |
| Collection Method | SI |
| Condition | Measurement subcounter is the maximum number of x. It is assigned with period of 100ms by the volume x, if x is bigger than previously counted volume.  x is the number of the UE Contexts that are configured as SN terminated MCG bearer.  x is acquired as an instantaneous value at every 100ms.   * the triggers of addition   + received X2-AP: SgNB Reconfiguration Complete (to SN terminated MCG bearer)   + received X2-AP: SgNB Reconfiguration Confirm (to SN terminated MCG bearer) * the triggers of subtraction   + received X2-AP: SgNB Reconfiguration Complete (to SN   terminated split bearer) |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
|  | - received X2-AP: UE Context Release |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.UEENDC.MaxSnMcgBearer |
| Measurement Object Class | NRCellCU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

1

### A.10.3 Average SN terminated split bearer UE Contexts

#### A.10.3.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.UEENDC.AveSnSplitBearer |
| Description | This counter provides the average number of UE Contexts that are configured SN terminated split bearer. |
| Collection Method | SI |
| Condition | Measurement subcounter is x/y.  x is incremented by the number of UE Contexts that are configured SN terminated split bearer. This counter obtains the number of the UE Contexts every 100ms.  y is calculated as measurement period divided by 100ms.   * the triggers of addition   + received X2-AP: SgNB Reconfiguration Complete (to SN terminated split bearer)   + received X2-AP: SgNB Modification Confirm (Intra/Inter DU PSCell change using SRB1 (for target cell))   + received RRC: RRC Reconfiguration Complete (Intra/Inter DU PSCell change using SRB3 (for target cell)) * the triggers of subtraction   + received X2-AP: SgNB Reconfiguration Complete (to SN terminated MCG bearer)   + received X2-AP: SgNB Modification Confirm (Intra/Inter DU PSCell change using SRB1 (for source cell))   + received F1-AP: UE Context Release Complete (Intra/Inter DU PSCell change using SRB3 (for source cell))   + received X2-AP: UE Context Release |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.UEENDC.AveSnSplitBearer |
| Measurement Object Class | NRCellCU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

4

### A.10.4 Average SN terminated MCG bearer UE Contexts

#### A.10.4.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.UEENDC.AveSnMcgBearer |
| Description | This counter provides the average number of UE Contexts that are configured SN terminated MCG bearer that are already setup. |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Collection Method | SI |
| Condition | Measurement subcounter is x/y.  x is incremented by the number of UE Contexts that are configured SN terminated MCG bearer. This counter obtains the number of the UE Contexts every 100ms.  y is calculated as measurement period divided by 100ms.   * the triggers of addition   + received X2-AP: SgNB Reconfiguration Complete (to SN terminated MCG bearer)   + received X2-AP: SgNB Reconfiguration Confirm (to SN terminated MCG bearer) * the triggers of subtraction   + received X2-AP: SgNB Reconfiguration Complete (to SN terminated split bearer)   + received X2-AP: UE Context Release |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.UEENDC.AveSnMcgBearer |
| Measurement Object Class | NRCellCU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

1

### A.10.5 Total DL CA UE Contexts PSCell (100ms)

#### A.10.5.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.UEENDC.TotalDlCaUePscell100ms |
| Description | This counter provides the total number of UE Contexts that are set of DL CA as PSCell in units of NR Cell. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is the total number of x by the measurement period.  x is the number of the UE Contexts using this cell as PSCell per the number of CC configured for DL CA in unit of NR Cell group as subcounter.*Ccnum* by every 100ms.   * the triggers of addition   + received X2-AP: SgNB Reconfiguration Complete (SCell addition)   + received RRC: RRC Reconfiguration Complete (SCell addition/change using SRB3)   + received X2-AP: SgNB Modification Confirm (SCell addition/change) * the triggers of subtraction   + received X2-AP: SgNB Reconfiguration Complete (SCell release)   + received RRC: RRC Reconfiguration Complete (SCell release/change using SRB3)   + received X2-AP: SgNB Modification Confirm (SCell release/change)   + received X2-AP: UE Context Release |
| Measurement Result | integer(U32) |
| Measurement Type | OR.UEENDC.TotalDlCaUePscell100ms.*Ccnum* where *Ccnum* is the number of CC: |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
|  | 0: #0CC (number of SCell excluding PSCell in the cell group) 1: #1CC (number of SCell excluding PSCell in the cell group)  ...  7: #7CC (number of SCell excluding PSCell in the cell group) |
| Measurement Object Class | NRCellCU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

1

### A.10.6 Total DL CA UE Contexts PSCell (10s)

#### A.10.6.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.UEENDC.TotalDlCaUePscell10s |
| Description | This counter provides the total number of UE Contexts that are set of DL CA as PSCell in units of NR Cell. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is the total number of x by the measurement period.  x is the number of the UE Contexts using this cell as PSCell per the number of CC configured for DL CA in unit of NR Cell group as subcounter.*Ccnum* by every 10s.   * the triggers of addition   + received X2-AP: SgNB Reconfiguration Complete (SCell addition)   + received RRC: RRC Reconfiguration Complete (SCell addition/change using SRB3)   + received X2-AP: SgNB Modification Confirm (SCell addition/change) * the triggers of subtraction   + received X2-AP: SgNB Reconfiguration Complete (SCell release)   + received F1-AP: UE Context Release Complete (SCell release/change using SRB3)   + received X2-AP: SgNB Modification Confirm (SCell release/change)   + received X2-AP: UE Context Release |
| Measurement Result | integer(U32) |
| Measurement Type | OR.UEENDC.TotalDlCaUePscell10s.*Ccnum* where *Ccnum* is the number of CC:  0: #0CC (number of SCell excluding PSCell in the cell group) 1: #1CC (number of SCell excluding PSCell in the cell group)  ...  7: #7CC (number of SCell excluding PSCell in the cell group) |
| Measurement Object Class | NRCellCU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

4

### A.10.7 Total DL CA UE Contexts SCell (100ms)

#### A.10.7.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.UEENDC.TotalDlCaUeScell100ms |
| Description | This counter provides the total number of UE Contexts that are set of DL CA as SCell in units of NR Cell. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is the total number of x by the measurement period.  x is the number of the UE Contexts using this cell as SCell per the number of CC configured for DL CA in unit of NR Cell group as subcounter*.Ccnum* by every 100ms.   * the triggers of addition   + received X2-AP: SgNB Reconfiguration Complete (SCell addition)   + received RRC: RRC Reconfiguration Complete (SCell addition/change using SRB3)   + received X2-AP: SgNB Modification Confirm (SCell addition/change) * the triggers of subtraction   + received X2-AP: SgNB Reconfiguration Complete (SCell release)   + received F1-AP: UE Context Release Complete (SCell release/change using SRB3)   + received X2-AP: SgNB Modification Confirm (SCell release/change)   + received X2-AP: UE Context Release |
| Measurement Result | integer(U32) |
| Measurement Type | OR.UEENDC.TotalDlCaUeScell100ms.*Ccnum* where *Ccnum* is the number of CC:  0: #1CC (number of SCell excluding PSCell in the cell group) 1: #2CC (number of SCell excluding PSCell in the cell group)  ...  6: #7CC (number of SCell excluding PSCell in the cell group) |
| Measurement Object Class | NRCellCU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

3

### A.10.8 Total DL CA UE Contexts SCell (10s)

#### A.10.8.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.UEENDC.TotalDlCaUeScell10s |
| Description | This counter provides the total number of UE Contexts that are set of DL CA as SCell in units of NR Cell. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is the total number of x by the measurement period.  x is the number of the UE Contexts using this cell as SCell per the number of CC configured for DL CA in unit of NR Cell group as subcounter.*Ccnum* by every 10s. |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
|  | * the triggers of addition   + received X2-AP: SgNB Reconfiguration Complete (SCell addition)   + received RRC: RRC Reconfiguration Complete (SCell addition/change using SRB3)   + received X2-AP: SgNB Modification Confirm (SCell addition/change) * the triggers of subtraction   + received X2-AP: SgNB Reconfiguration Complete (SCell release)   + received F1-AP: UE Context Release Complete (SCell release/change using SRB3)   + received X2-AP: SgNB Modification Confirm (SCell release/change)   + received X2-AP: UE Context Release |
| Measurement Result | integer(U32) |
| Measurement Type | OR.UEENDC.TotalDlCaUeScell10s.*Ccnum* where *Ccnum* is the number of CC:  0: #1CC (number of SCell excluding PSCell in the cell group) 1: #2CC (number of SCell excluding PSCell in the cell group)  ...  6: #7CC (number of SCell excluding PSCell in the cell group) |
| Measurement Object Class | NRCellCU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

1

### A.10.9 Max DL CA UE Contexts PSCell (100ms)

#### A.10.9.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.UEENDC.MaxDlCaUePscell100ms |
| Description | This counter provides the maximum number of UE Contexts that are set of DL CA as PSCell in units of NR Cell. |
| Collection Method | SI |
| Condition | Measurement subcounter is the maximum number of x. It is assigned with period of 100ms by the volume x, if x is bigger than previously counted volume.  x is the number of the UE Contexts using this cell as PSCell per the number of CC configured for DL CA in unit of NR Cell group as subcounter.*Ccnum*.  The number is acquired as an instance value at every 100ms.   * the triggers of addition   + received X2-AP: SgNB Reconfiguration Complete (SCell addition)   + received RRC: RRC Reconfiguration Complete (SCell addition/change using SRB3)   + received X2-AP: SgNB Modification Confirm (SCell addition/change) * the triggers of subtraction   + received X2-AP: SgNB Reconfiguration Complete (SCell release)   + received F1-AP: UE Context Release Complete (SCell release/change using SRB3) |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
|  | * received X2-AP: SgNB Modification Confirm (SCell release/change) * received X2-AP: UE Context Release |
| Measurement Result | Users (integer) |
| Measurement Type | OR.UEENDC.MaxDlCaUePscell100ms.*Ccnum* where *Ccnum* is the number of CC:  0: #0CC (number of SCell excluding PSCell in the cell group) 1: #1CC (number of SCell excluding PSCell in the cell group)  ...  7: #7CC (number of SCell excluding PSCell in the cell group) |
| Measurement Object Class | NRCellCU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

1

### A.10.10 Max DL CA UE Contexts PSCell (10s)

#### A.10.10.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.UEENDC.MaxDlCaUePscell10s |
| Description | This counter provides the maximum number of UE Contexts that are set of DL CA as PSCell in units of NR Cell. |
| Collection Method | SI |
| Condition | Measurement subcounter is the maximum number of x. It is assigned with period of 10s by the volume x, if x is bigger than previously counted volume.  x is the number of the UE Contexts using this cell as PSCell per the number of CC configured for DL CA in unit of NR Cell group as subcounter.*Ccnum*.  The number is acquired as an instance value at every 10s.   * the triggers of addition   + received X2-AP: SgNB Reconfiguration Complete (SCell addition)   + received RRC: RRC Reconfiguration Complete (SCell addition/change using SRB3)   + received X2-AP: SgNB Modification Confirm (SCell addition/change) * the triggers of subtraction   + received X2-AP: SgNB Reconfiguration Complete (SCell release)   + received F1-AP: UE Context Release Complete (SCell release/change using SRB3)   + received X2-AP: SgNB Modification Confirm (SCell release/change)   + received X2-AP: UE Context Release |
| Measurement Result | Users (integer) |
| Measurement Type | OR.UEENDC.MaxDlCaUePscell10s.*Ccnum* where *Ccnum* is the number of CC:  0: #0CC (number of SCell excluding PSCell in the cell group) 1: #1CC (number of SCell excluding PSCell in the cell group)  ...  7: #7CC (number of SCell excluding PSCell in the cell group) |
| Measurement Object Class | NRCellCU |
| Switching Technology | Packet Switched |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

1

### A.10.11 Max DL CA UE Contexts SCell (100ms)

#### A.10.11.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.UEENDC.MaxDlCaUeScell100ms |
| Description | This counter provides the maximum number of UE Contexts that are set of DL CA as SCell in units of NR Cell. |
| Collection Method | SI |
| Condition | Measurement subcounter is the maximum number of x. It is assigned with period of 100ms by the volume x, if x is bigger than previously counted volume.  x is the number of the UE Contexts using this cell as SCell per the number of CC configured for DL CA in unit of NR Cell group as subcounter.*Ccnum*.  The number is acquired as an instance value at every 100ms.   * the triggers of addition   + received X2-AP: SgNB Reconfiguration Complete (SCell addition)   + received RRC: RRC Reconfiguration Complete (SCell addition/change using SRB3)   + received X2-AP: SgNB Modification Confirm (SCell addition/change) * the triggers of subtraction   + received X2-AP: SgNB Reconfiguration Complete (SCell release)   + received F1-AP: UE Context Release Complete (SCell release/change using SRB3)   + received X2-AP: SgNB Modification Confirm (SCell release/change)   + received X2-AP: UE Context Release |
| Measurement Result | Users (integer) |
| Measurement Type | OR.UEENDC.MaxDlCaUeScell100ms.*Ccnum* where *Ccnum* is the number of CC:  0: #1CC (number of SCell excluding PSCell in the cell group) 1: #2CC (number of SCell excluding PSCell in the cell group)  ...  7: #6CC (number of SCell excluding PSCell in the cell group) |
| Measurement Object Class | NRCellCU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

4

### A.10.12 Max DL CA UE Contexts SCell (10s)

#### A.10.12.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.UEENDC.MaxDlCaUeScell10s |
| Description | This counter provides the maximum number of UE Contexts that are set of DL CA as SCell in units of NR Cell. |
| Collection Method | SI |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Condition | Measurement subcounter is the maximum number of x. It is assigned with period of 10s by the volume x, if x is bigger than previously counted volume.  x is the number of the UE Contexts using this cell as SCell per the number of CC configured for DL CA in unit of NR Cell group as subcounter.*Ccnum*.  The number is acquired as an instance value at every 10s.   * the triggers of addition   + received X2-AP: SgNB Reconfiguration Complete (SCell addition)   + received RRC: RRC Reconfiguration Complete (SCell addition/change using SRB3)   + received X2-AP: SgNB Modification Confirm (SCell addition/change) * the triggers of subtraction   + received X2-AP: SgNB Reconfiguration Complete (SCell release)   + received F1-AP: UE Context Release Complete (SCell release/change using SRB3)   + received X2-AP: SgNB Modification Confirm (SCell release/change)   + received X2-AP: UE Context Release |
| Measurement Result | Users (integer) |
| Measurement Type | OR.UEENDC.MaxDlCaUeScell10s.*Ccnum* where *Ccnum* is the number of CC:  0: #1CC (number of SCell excluding PSCell in the cell group) 1: #2CC (number of SCell excluding PSCell in the cell group)  ...  7: #6CC (number of SCell excluding PSCell in the cell group) |
| Measurement Object Class | NRCellCU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

1

## A.11 Number of UE Contexts for SA

### A.11.1 Total RRC Connected UE Contexts

#### A.11.1.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.UESA.TotalRrcConnectedUes |
| Description | This counter provides the total number of the RRC connected UE Contexts in PCell. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is the total number of x by the measurement period.  x is the number of the RRC connected UE Contexts by every 10s.   * the triggers of addition   + received RRC: RRC Setup Complete   + received RRC: RRC Reconfiguration Complete (Inter RAT HO to NR, Inter gNB-CU HO, Intra gNB-CU Inter gNB-DU HO,   Intra-DU Inter Cell HO, RRC Connection Re-establishment |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
|  | (Intra gNB-CU Inter gNB-DU), RRC Connection Re- establishment (Intra gNB-DU Inter Cell))  - received RRC: RRC Resume Complete (RRC inactive to RRC Connected)   * the triggers of subtraction   + received Xn-AP: UE Context Release (Inter gNB-CU HO, RRC Connection Re-establishment (Inter gNB-CU))   + received NG-AP: UE Context Release Command (Inter-RAT HO to LTE, Intra gNB-CU Inter gNB-DU HO, EPS fallback)   + received RRC: RRC Reconfiguration Complete (Intra gNB-DU Inter-Cell HO, RRC Connection Re-establishment (Intra gNB-   DU Inter Cell)) |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.UESA.TotalRrcConnectedUes |
| Measurement Object Class | NRCellCU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

1

### A.11.2 Total UE Contexts Per QoS

#### A.11.2.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.UESA.TotalUesCucountgroup |
| Description | This counter provides the total number of the UE Contexts per CU count group. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is the total number of x by the measurement period.  x is the number of the UE Contexts per CU count group for PCell and SCell as subcoutner.*Celltype* by every 10s.  Note: multiple 5QIs can be set per UE Context, each 5QI is counted per QoS flow.   * the triggers of addition for PCell   + received NG-AP: Initial Context Setup Response   + received RRC: RRC Reconfiguration Complete (Inter RAT HO to NR, Inter gNB-CU HO, Intra gNB-CU Inter gNB-DU HO, Intra-DU Inter Cell HO, RRC Connection Re-establishment (Intra gNB-CU Inter gNB-DU), RRC Connection Re- establishment (Intra gNB-DU Inter Cell))   + received RRC: RRC Resume Complete (RRC inactive to RRC Connected)   + send NG-AP: PDU Session Resource Setup Response (PDU Session Establishment)   + send NG-AP: PDU Session Resource Modify Response (PDU Session Modification) * the triggers of subtraction for PCell   + send RRC: RRC Release (UE Context Release, RRC Connected to RRC inactive, SN Release without keeping UE)   + received Xn-AP: UE Context Release (Inter gNB-CU HO, RRC Connection Re-establishment (Inter gNB-CU))   + received NG-AP: UE Context Release Command (Inter-RAT HO to LTE, Intra gNB-CU Inter gNB-DU HO, EPS fallback) |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
|  | * received RRC: RRC Reconfiguration Complete (Intra gNB-DU Inter-Cell HO, RRC Connection Re-establishment (Intra gNB- DU Inter Cell)) * received F1-AP: UE Context Release Command (RRC Connection Re-establishment (Intra gNB-CU Inter gNB-DU)) * send NG-AP: PDU Session Resource Release Response (PDU Session Release) * send NG-AP: PDU Session Resource Modify Response (PDU Session Modification) * the triggers of addition for SCell   + received RRC: RRC Reconfiguration Complete (SCell addition/change)   + received RRC: RRC Resume Complete (RRC inactive to RRC Connected with SCell addition) * the triggers of subtraction for SCell   + received RRC: RRC Reconfiguration Complete (SCell release/change)   + received Xn-AP: UE Context Release (Inter gNB-CU HO w/ Xn)   + received NG-AP: UE Context Release Command |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.UESA.TotalUesCucountgroup*.Cucountgroup.Celltype* where *Cucountgroup* identifies an instance of CuCountGroup IOC. *Celltype* is the cell type:  0: PCell  1: SCell |
| Measurement Object Class | NRCellCU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

1

### A.11.3 Total SCell Configuration UE Contexts

#### A.11.3.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.UESA.TotalScellConfigUes.SCell |
| Description | This counter provides the total number of each SCell configuration UE Contexts. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is the total number of x by the measurement period.  x is the number of each SCell configuration UE Contexts by every 10s.   * the triggers of addition   + received RRC: RRC Reconfiguration Complete (SCell addition/change)   + received RRC: RRC Resume Complete (RRC inactive to RRC Connected with SCell addition) * the triggers of subtraction   + received RRC: RRC Reconfiguration Complete (SCell release/change)   + received Xn-AP: UE Context Release (Inter gNB-CU HO w/ Xn)   + received NG-AP: UE Context Release Command |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.UESA.TotalScellConfigUes.SCell |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Object Class | NRCellCU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

1

### A.11.4 Total Measurement Gap UE Contexts

#### A.11.4.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.UESA.TotalMeasGapUes |
| Description | This counter provides the total number of UE Contexts which is configured with measurement gap. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is the total number of x by the measurement period.  x is the number of UE Contexts which is configured measurement gap by every 10s.   * the triggers of addition   + received RRC: RRC Reconfiguration Complete (setup measurement gap) * the triggers of subtraction   + received RRC: RRC Reconfiguration Complete (release measurement gap) |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.UESA.TotalMeasGapUes |
| Measurement Object Class | NRCellCU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

4

### A.11.5 Max RRC Connected UE Contexts

#### A.11.5.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.UESA.MaxRrcConnectedUes |
| Description | This counter provides the maximum number of the RRC connected UE Contexts in PCell. |
| Collection Method | SI |
| Condition | Measurement subcounter is the maximum number of x. It is assigned with period of 10s by the volume x, if x is bigger than previously counted volume.  x is the number of the RRC connected UE Contexts in PCell. The number is acquired as an instance value at every 10s.   * the triggers of addition   + received RRC: RRC Setup Complete   + received RRC: RRC Reconfiguration Complete (Inter RAT HO to NR, Inter gNB-CU HO, Intra gNB-CU Inter gNB-DU HO, Intra-DU Inter Cell HO, RRC Connection Re-establishment (Intra gNB-CU Inter gNB-DU), RRC Connection Re- establishment (Intra gNB-DU Inter Cell))   + received RRC: RRC Resume Complete (RRC inactive to RRC Connected) |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
|  | * the triggers of subtraction   + received Xn-AP: UE Context Release (Inter gNB-CU HO, RRC Connection Re-establishment (Inter gNB-CU))   + received NG-AP: UE Context Release Command (Inter-RAT HO to LTE, Intra gNB-CU Inter gNB-DU HO, EPS fallback)   + received RRC: RRC Reconfiguration Complete (Intra gNB-DU Inter-Cell HO, RRC Connection Re-establishment (Intra gNB- DU Inter Cell)) |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.UESA.MaxRrcConnectedUes |
| Measurement Object Class | NRCellCU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

1

### A.11.6 Max UE Contexts Per QoS

#### A.11.6.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.UESA.MaxUesPerCucountgroup |
| Description | This counter provides the maximum number of the UE Contexts per CU count group. |
| Collection Method | SI |
| Condition | Measurement subcounter is the maximum number of x. It is assigned with period of 10s by the volume x, if x is bigger than previously counted volume. x is the number of the UE Contexts per CU count group for PCell and SCell as subcounter.*Celltype*.  Note: multiple 5QIs can be set per UE Context, each 5QI is counted per QoS flow.   * the triggers of addition for PCell   + received NG-AP: Initial Context Setup Response   + received RRC: RRC Reconfiguration Complete (Inter RAT HO to NR, Inter gNB-CU HO, Intra gNB-CU Inter gNB-DU HO, Intra-DU Inter Cell HO, RRC Connection Re-establishment (Intra gNB-CU Inter gNB-DU), RRC Connection Re- establishment (Intra gNB-DU Inter Cell))   + received RRC: RRC Resume Complete (RRC inactive to RRC Connected)   + send NG-AP: PDU Session Resource Setup Response (PDU Session Establishment)   + send NG-AP: PDU Session Resource Modify Response (PDU Session Modification) * the triggers of subtraction for PCell   + send RRC: RRC Release (UE Context Release, RRC Connected to RRC inactive, SN Release without keeping UE)   + received Xn-AP: UE Context Release (Inter gNB-CU HO, RRC Connection Re-establishment (Inter gNB-CU))   + received NG-AP: UE Context Release Command (Inter-RAT HO to LTE, Intra gNB-CU Inter gNB-DU HO, EPS fallback)   + received RRC: RRC Reconfiguration Complete (Intra gNB-DU Inter-Cell HO, RRC Connection Re-establishment (Intra gNB- DU Inter Cell))   + received F1-AP: UE Context Release Command (RRC Connection Re-establishment (Intra gNB-CU Inter gNB-DU))   + send NG-AP: PDU Session Resource Release Response (PDU Session Release) |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
|  | - send NG-AP: PDU Session Resource Modify Response (PDU Session Modification)   * the triggers of addition for SCell   + received RRC: RRC Reconfiguration Complete (SCell addition/change)   + received RRC: RRC Resume Complete (RRC inactive to RRC Connected with SCell addition) * the triggers of subtraction for SCell   + received RRC: RRC Reconfiguration Complete (SCell release/change)   + received Xn-AP: UE Context Release (Inter gNB-CU HO w/ Xn)   + received NG-AP: UE Context Release Command |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.UESA.MaxUesPerCucountgroup*.Cucountgroup.Celltype* where *Cucountgroup* identifies an instance of CuCountGroup IOC. *Celltype* is the cell type:  0: PCell  1: SCell |
| Measurement Object Class | NRCellCU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

1

### A.11.7 Max SCell Configuration UE Contexts

1. A.11.7.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.UESA.MaxScellConfigUes.SCell |
| Description | This counter provides the maximum number of each SCell configuration UE Contexts. |
| Collection Method | SI |
| Condition | Measurement subcounter is the maximum number of x. It is assigned with period of 10s by the volume x, if x is bigger than previously counted volume.  x is the number of each SCell configuration UE Contexts. The number is acquired as an instance value at every 10s.   * the triggers of addition   + received RRC: RRC Reconfiguration Complete (SCell addition/change)   + received RRC: RRC Resume Complete (RRC inactive to RRC Connected with SCell addition) * the triggers of subtraction   + received RRC: RRC Reconfiguration Complete (SCell release/change)   + received Xn-AP: UE Context Release (Inter gNB-CU HO w/ Xn)   + received NG-AP: UE Context Release Command |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.UESA.MaxScellConfigUes.SCell |
| Measurement Object Class | NRCellCU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

### A.11.8 Max Measurement Gap UE Contexts

#### A.11.8.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.UESA.MaxMeasGapUes |
| Description | This counter provides the maximum number of UE Contexts which is configured with measurement gap. |
| Collection Method | SI |
| Condition | Measurement subcounter is the maximum number of x. It is assigned with period of 10s by the volume x, if x is bigger than previously counted volume.  x is the number of the UE Contexts which is configured with measurement gap.  The number is acquired as an instance value at every 10s.   * the triggers of addition   + received RRC: RRC Reconfiguration Complete (setup measurement gap) * the triggers of subtraction   + received RRC: RRC Reconfiguration Complete (release measurement gap) |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.UESA.MaxMeasGapUes |
| Measurement Object Class | NRCellCU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

3

### A.11.9 Total emergency UE Contexts

#### A.11.9.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.UESA.TotalEmergencyUes |
| Description | This counter provides the total number of the emergency UE Contexts in a Cell. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is the total number of x by the measurement period.  x is the number of the emergency UE Contexts per PCell or SCell as subcounter.*Celltype* by every 10s.  emergency UE Contexts: UE Contexts corresponding to ARP number assigned for emergency call or Establishment cause (or Resume cause): emergency is assigned.   * the triggers of addition for PCell   + send NG-AP: Initial Context Setup Response   + received RRC: RRC Reconfiguration Complete (Inter RAT HO to NR, Inter gNB-CU HO, Intra gNB-CU Inter gNB-DU HO, Intra-DU Inter Cell HO, RRC Connection Re-establishment (Intra gNB-CU Inter gNB-DU), RRC Connection Re- establishment (Intra gNB-DU Inter Cell))   + received RRC: RRC Resume Complete (RRC inactive to RRC Connected) * the triggers of subtraction for PCell |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
|  | * send RRC: RRC Release (UE Context Release, RRC Connected to RRC inactive, SN Release without keeping UE) * received Xn-AP: UE Context Release (Inter gNB-CU HO, RRC Connection Re-establishment (Inter gNB-CU)) * received NG-AP: UE Context Release Command (Inter-RAT HO to LTE, Intra gNB-CU Inter gNB-DU HO, EPS fallback) * received RRC: RRC Reconfiguration Complete (Intra gNB-DU Inter-Cell HO, RRC Connection Re-establishment (Intra gNB- DU Inter Cell)) * received F1-AP: UE Context Release Command (RRC Connection Re-establishment (Intra gNB-CU Inter gNB-DU)) * the triggers of addition for SCell   + received RRC: RRC Reconfiguration Complete (SCell addition/change)   + received RRC: RRC Resume Complete (RRC inactive to RRC Connected with SCell addition) * the triggers of subtraction for SCell   + received RRC: RRC Reconfiguration Complete (SCell release/change)   + received Xn-AP: UE Context Release (Inter gNB-CU HO w/ Xn)   + received NG-AP: UE Context Release Command |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.UESA.TotalEmergencyUes.*Celltype* where *Celltype* is the cell type: 0: PCell  1: SCell |
| Measurement Object Class | NRCellCU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

1

2

### A.11.10 Total high priority access UE Contexts

#### A.11.10.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.UESA.TotalHighPriAccessUes |
| Description | This counter provides the total number of the high priority access UE Contexts in a Cell. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is the total number of x by the measurement period.  x is the number of the high priority access UE Contexts per PCell or SCell as subcounter.*Celltype* by every 10s.  high priority access UE Contexts: UE Contexts corresponding to ARP number assigned for high priority access call or Establishment cause (or Resume cause): highPriorityAccess is assigned.   * the triggers of addition for PCell   + send NG-AP: Initial Context Setup Response   + received RRC: RRC Reconfiguration Complete (Inter RAT HO to NR, Inter gNB-CU HO, Intra gNB-CU Inter gNB-DU HO, Intra-DU Inter Cell HO, RRC Connection Re-establishment (Intra gNB-CU Inter gNB-DU), RRC Connection Re- establishment (Intra gNB-DU Inter Cell))   + received RRC: RRC Resume Complete (RRC inactive to RRC Connected) |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
|  | * the triggers of subtraction for PCell   + send RRC: RRC Release (UE Context Release, RRC Connected to RRC inactive, SN Release without keeping UE)   + received Xn-AP: UE Context Release (Inter gNB-CU HO, RRC Connection Re-establishment (Inter gNB-CU))   + received NG-AP: UE Context Release Command (Inter-RAT HO to LTE, Intra gNB-CU Inter gNB-DU HO, EPS fallback)   + received RRC: RRC Reconfiguration Complete (Intra gNB-DU Inter-Cell HO, RRC Connection Re-establishment (Intra gNB- DU Inter Cell))   + received F1-AP: UE Context Release Command (RRC Connection Re-establishment (Intra gNB-CU Inter gNB-DU)) * the triggers of addition for SCell   + received RRC: RRC Reconfiguration Complete (SCell addition/change)   + received RRC: RRC Resume Complete (RRC inactive to RRC Connected with SCell addition) * the triggers of subtraction for SCell   + received RRC: RRC Reconfiguration Complete (SCell release/change)   + received Xn-AP: UE Context Release (Inter gNB-CU HO w/ Xn)   + received NG-AP: UE Context Release Command |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.UESA.TotalHighPriAccessUes *Celltype* where *Celltype* is the cell type:  0: PCell  1: SCell |
| Measurement Object Class | NRCellCU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

1

### A.11.11 Max emergency UE Contexts

#### A.11.11.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.UESA.MaxEmergencyUes |
| Description | This counter provides the maximum number of the Emergency UE Contexts in a Cell. |
| Collection Method | SI |
| Condition | Measurement subcounter is the maximum number of x. It is assigned with period of 10s by the volume x, if x is bigger than previously counted volume.  X is the number of the emergency UE Contexts per PCell or SCell as subcounter.*Celltype*.  The number is acquired as an instance value at every 10s.  Emergency UE Contexts: UEs corresponding to ARP number assigned for emergency call or Establishment cause (or Resume cause): emergency is assigned.   * the triggers of addition for PCell   + send NG-AP: Initial Context Setup Response   + received RRC: RRC Reconfiguration Complete (Inter RAT HO   to NR, Inter gNB-CU HO, Intra gNB-CU Inter gNB-DU HO, Intra-DU Inter Cell HO, RRC Connection Re-establishment |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
|  | (Intra gNB-CU Inter gNB-DU), RRC Connection Re- establishment (Intra gNB-DU Inter Cell))  - received RRC: RRC Resume Complete (RRC inactive to RRC Connected)   * the triggers of subtraction for PCell   + send RRC: RRC Release (UE Context Release, RRC Connected to RRC inactive, SN Release without keeping UE)   + received Xn-AP: UE Context Release (Inter gNB-CU HO, RRC Connection Re-establishment (Inter gNB-CU))   + received NG-AP: UE Context Release Command (Inter-RAT HO to LTE, Intra gNB-CU Inter gNB-DU HO, EPS fallback)   + received RRC: RRC Reconfiguration Complete (Intra gNB-DU Inter-Cell HO, RRC Connection Re-establishment (Intra gNB- DU Inter Cell))   + received F1-AP: UE Context Release Command (RRC Connection Re-establishment (Intra gNB-CU Inter gNB-DU)) * the triggers of addition for SCell   + received RRC: RRC Reconfiguration Complete (SCell addition/change)   + received RRC: RRC Resume Complete (RRC inactive to RRC Connected with SCell addition) * the triggers of subtraction for SCell   + received RRC: RRC Reconfiguration Complete (SCell release/change)   + received Xn-AP: UE Context Release (Inter gNB-CU HO w/ Xn)   + received NG-AP: UE Context Release Command |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.UESA.MaxEmergencyUes *Celltype* where *Celltype* is the cell type: 0: PCell  1: SCell |
| Measurement Object Class | NRCellCU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

1

### A.11.12 Max high priority access UE Contexts

#### A.11.12.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.UESA.MaxHighPriAccessUes |
| Description | This counter provides the maximum number of the high priority access UE Contexts in a Cell. |
| Collection Method | SI |
| Condition | Measurement subcounter is the maximum number of x. It is assigned with period of 10s by the volume x, if x is bigger than previously counted volume.  x is the number of the high priority access UE Contexts per PCell or SCell as subcounter.*Celltype*.  The number is acquired as an instance value at every 10s.  high priority access UE Contexts: UE Contexts corresponding to ARP number assigned for high priority access call or Establishment cause (or Resume cause): highPriorityAccess is assigned.  - the triggers of addition for PCell  - send NG-AP: Initial Context Setup Response |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
|  | * received RRC: RRC Reconfiguration Complete (Inter RAT HO to NR, Inter gNB-CU HO, Intra gNB-CU Inter gNB-DU HO, Intra-DU Inter Cell HO, RRC Connection Re-establishment (Intra gNB-CU Inter gNB-DU), RRC Connection Re- establishment (Intra gNB-DU Inter Cell)) * received RRC: RRC Resume Complete (RRC inactive to RRC Connected) * the triggers of subtraction for PCell   + send RRC: RRC Release (UE Context Release, RRC Connected to RRC inactive, SN Release without keeping UE)   + received Xn-AP: UE Context Release (Inter gNB-CU HO, RRC Connection Re-establishment (Inter gNB-CU))   + received NG-AP: UE Context Release Command (Inter-RAT HO to LTE, Intra gNB-CU Inter gNB-DU HO, EPS fallback)   + received RRC: RRC Reconfiguration Complete (Intra gNB-DU Inter-Cell HO, RRC Connection Re-establishment (Intra gNB- DU Inter Cell))   + received F1-AP: UE Context Release Command (RRC Connection Re-establishment (Intra gNB-CU Inter gNB-DU)) * the triggers of addition for SCell   + received RRC: RRC Reconfiguration Complete (SCell addition/change)   + received RRC: RRC Resume Complete (RRC inactive to RRC Connected with SCell addition) * the triggers of subtraction for SCell   + received RRC: RRC Reconfiguration Complete (SCell release/change)   + received Xn-AP: UE Context Release (Inter gNB-CU HO w/ Xn)   + received NG-AP: UE Context Release Command |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.UESA.MaxHighPriAccessUes *Celltype* where *Celltype* is the cell type:  0: PCell  1: SCell |
| Measurement Object Class | NRCellCU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

1

### A.11.13 Total SN terminated split bearer UE Contexts in NR-DC

#### A.11.13.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.UENRDC.TotalSnSplitbearUes |
| Description | This counter provides the total number of UE Contexts configured as SN terminated split bearer in the NR-DC. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is the total number of x by the measurement period.  x is the number of the UE Contexts configured as SN terminated Split bearer in the NR-DC.  The number is acquired as an instance value at every 10s.  - the triggers of addition |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
|  | * received Xn-AP: SN Reconfiguration Complete (to SN terminated split bearer) * received Xn-AP: S-Node Modification Confirm (Intra/Inter DU PSCell change using SRB1 (for target cell)) * received RRC: RRC Reconfiguration Complete (Intra DU PSCell change using SRB3 (for target cell)) * the triggers of subtraction   + received Xn-AP: S-Node Modification Confirm (Intra/Inter DU PSCell change using SRB1 (for source cell))   + received RRC: RRC Reconfiguration Complete (Intra DU PSCell change using SRB3 (for source cell))   + received Xn-AP: UE Context Release |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.UENRDC.TotalSnSplitbearUes |
| Measurement Object Class | NRCellCU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

1

### A.11.14 Max SN terminated split bearer UE Contexts in NR-DC

#### A.11.14.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.UENRDC.MaxSnSplitbearUes |
| Description | This counter provides the maximum number of UE Contexts configured as SN terminated split bearer in the NR-DC. |
| Collection Method | SI |
| Condition | Measurement subcounter is the maximum number of x. It is assigned with period of 100ms by the volume x, if x is bigger than previously counted volume.  x is the number of the UE Contexts configured as SN terminated split bearer in the NR-DC.  x is acquired as an instantaneous value at every 100ms.   * the triggers of addition   + received Xn-AP: SN Reconfiguration Complete (to SN terminated split bearer)   + received Xn-AP: S-Node Modification Confirm (Intra/Inter DU PSCell change using SRB1 (for target cell))   + received RRC: RRC Reconfiguration Complete (Intra DU PSCell change using SRB3 (for target cell)) * the triggers of subtraction   + received Xn-AP: S-Node Modification Confirm (Intra/Inter DU PSCell change using SRB1 (for source cell))   + received RRC: RRC Reconfiguration Complete (Intra DU PSCell change using SRB3 (for source cell))   + received Xn-AP: UE Context Release |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.UENRDC.MaxSnSplitbearUes |
| Measurement Object Class | NRCellCU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

4

### A.11.15 Total UE Contexts during voice call

#### A.11.15.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.UESA.TotalUesVoice |
| Description | This counter provides the total number of the UE Contexts during voice call. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is the total number of x by the measurement period.  x is the number of the UE Contexts during voice call by every 10s.   * the triggers of addition   + send NG-AP: Initial Context Setup Response   + received RRC: RRC Reconfiguration Complete (Inter RAT HO to NR, Inter gNB-CU HO, Intra gNB-CU Inter gNB-DU HO, Intra-DU Inter Cell HO, RRC Connection Re-establishment (Intra gNB-CU Inter gNB-DU), RRC Connection Re- establishment (Intra gNB-DU Inter Cell))   + received RRC: RRC Resume Complete (RRC inactive to RRC Connected) * the triggers of subtraction   + send RRC: RRC Release (UE Context Release, RRC Connected to RRC inactive, SN Release without keeping UE)   + received Xn-AP: UE Context Release (Inter gNB-CU HO, RRC Connection Re-establishment (Inter gNB-CU))   + received NG-AP: UE Context Release Command (Inter-RAT HO to LTE, Intra gNB-CU Inter gNB-DU HO, EPS fallback)   + received RRC: RRC Reconfiguration Complete (Intra gNB-DU Inter-Cell HO, RRC Connection Re-establishment (Intra gNB- DU Inter Cell))   + received F1-AP: UE Context Release Command (RRC Connection Re-establishment (Intra gNB-CU Inter gNB-DU)) |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.UESA.TotalUesVoice |
| Measurement Object Class | NRCellCU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

3

## A.12 Monitoring of procedure for EN-DC

### A.12.1 Number of SgNB Addition procedure attempted for each Cell

#### A.12.1.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.ENDCPROCEDURE.SgnbAddAttemptCell |
| Description | This counter provides the number of the transmitted X2-AP:SGNB ADDITION REQUEST ACKNOWLEDGE messages. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement counter is incremented by 1 whenever X2-AP:SGNB ADDITION REQUEST ACKNOWLEDGE message is transmitted as PSCell. |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.ENDCPROCEDURE.SgnbAddAttemptCell |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Object Class | NRCellCU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

1

### A.12.2 Number of SgNB Addition procedure successfully for each Cell

#### A.12.2.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.ENDCPROCEDURE.SgnbAddSuccessCell |
| Description | This counter provides the number of the completed SgNB addition Procedure. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement counter is incremented by 1 whenever SgNB addition procedure is completed as PSCell (i.e. X2-AP:SGNB RECONFIGURATION COMPLETE message (SgNB addition complete) is received and RACH processing with UE is completed). |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.ENDCPROCEDURE.SgnbAddSuccessCell |
| Measurement Object Class | NRCellCU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

4

### A.12.3 Number of SgNB Addition procedure attempted for each neighbour

1. eNB

#### A.12.3.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.ENDCPROCEDURE.SgnbAddAttemptNeiEnb |
| Description | This counter provides the number of the transmitted X2-AP:SGNB ADDITION REQUEST ACKNOWLEDGE messages.  This counter is split into subcounters per neighbour eNB. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by 1 whenever X2-AP:SGNB ADDITION REQUEST ACKNOWLEDGE message is transmitted when the eNB configured by the message is group of  subcounter.*neighboureNB.* |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.ENDCPROCEDURE.SgnbAddAttemptNeiEnb.*neighboureNB* where *neighboureNB* is neighbour eNB index:  0: #0  1: #1  ...  63: #63 |
| Measurement Object Class | GNBCUCPFunction |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

8

### A.12.4 Number of SgNB Addition procedure successfully for each neighbour

1. eNB

#### A.12.4.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.ENDCPROCEDURE.SgnbAddSuccessNeiEnb |
| Description | This counter provides the number of the completed SgNB addition Procedure.  This counter is split into subcounters per neighbour eNB. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement counter is incremented by 1 whenever SgNB addition procedure is completed (i.e. X2-AP:SGNB RECONFIGURATION COMPLETE message (SgNB addition complete) is received and RACH  processing with UE is completed) when the eNB configured by the message is group of subcounter.*neighboureNB.* |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.ENDCPROCEDURE.SgnbAddSuccessNeiEnb.*neighboureNB* where *neighboureNB* is neighbour eNB index:  0: #0  1: #1  ...  63: #63 |
| Measurement Object Class | GNBCUCPFunction |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

4

### A.12.5 Number of SgNB modification procedure attempted for each

1. neighbour eNB

#### A.12.5.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.ENDCPROCEDURE.SgnbModAttemptNeiEnb |
| Description | This counter provides the number of the received X2-AP:SGNB MODIFICATION REQUEST messages or transmitted X2-AP:SGNB MODIFICATION REQUIRED messages.  This counter is split into subcounters per neighbour eNB. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by 1 whenever X2-AP:SGNB MODIFICATION REQUEST message is received or X2-AP:SGNB MODIFICATION REQUIRED message is transmitted , when the eNB configured by the message is group of subcounter.*neighboureNB.* Double counting is not performed if the procedure is changed to the MN initiated SN Modification procedure after transmitted X2-AP:SGNB MODIFICATION REQUIRED message (e.g. Measurement gap Coordination(SN initiated)).  This subcounter will not be incremented if received X2-AP:SGNB MODIFICATION REQUEST message which True is set for SCG Configuration Query IE. |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.ENDCPROCEDURE.SgnbModAttemptNeiEnb.*neighboureNB* where *neighboureNB* is neighbour eNB index: |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
|  | 0: #0  1: #1  ...  63: #63 |
| Measurement Object Class | GNBCUCPFunction |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

1

### A.12.6 Number of SgNB modification procedure successfully for each

1. neighbour eNB

#### A.12.6.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.ENDCPROCEDURE.SgnbModSuccessNeiEnb |
| Description | This counter provides the number of the completed SgNB modification Procedure.  This counter is split into subcounters per neighbour eNB. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by 1 whenever SgNB Modification procedure is completed (i.e. X2-AP:SGNB RECONFIGURATION COMPLETE message(SgNB modification complete) is received or X2-AP:SGNB MODIFICATION CONFIRM is received and RACH processing with UE is completed) when the eNB  configured by the message is group of subcounter.*neighboureNB.* |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.ENDCPROCEDURE.SgnbModSuccessNeiEnb.*neighboureNB* where *neighboureNB* is neighbour eNB index:  0: #0  1: #1  ...  63: #63 |
| Measurement Object Class | GNBCUCPFunction |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

5

## A.13 Monitoring of RRC Connection for EN-DC

### A.13.1 Number of Measurement Gap Coordination for per FR2 gap via SRB3

1. attempted

#### A.13.1.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.RRCCONENDC.ReconfSrb3AttemptGap |
| Description | This counter provides the number of the transmitted RRC:RRC Reconfiguration messages via SRB3 when the following procedure. |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
|  | - Measurement Gap Coordination for per FR2 gap (without MN  involvement) Procedure (SN initiated). |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by 1 whenever RRC:RRCReconfiguration message is transmitted via SRB3 when the following procedure.  - Measurement Gap Coordination for per FR2 gap (without MN  involvement) Procedure (SN initiated). |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.RRCCONENDC.ReconfSrb3AttemptGap |
| Measurement Object Class | NRCellCU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

1

### A.13.2 Number of Measurement Gap Coordination for per FR2 gap via SRB3

1. successfully

#### A.13.2.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.RRCCONENDC.ReconfSrb3SuccessGap |
| Description | This counter provides the number of the received RRC:RRC Reconfiguration Complete messages via SRB3 when the following procedure.  - Measurement Gap Coordination for per FR2 gap (without MN  involvement) Procedure (SN initiated). |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by 1 whenever RRC:RRCReconfiguration Complete message is received via SRB3 when the following procedure.  - Measurement Gap Coordination for per FR2 gap (without MN  involvement) Procedure (SN initiated). |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.RRCCONENDC.ReconfSrb3SuccessGap |
| Measurement Object Class | NRCellCU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

5

### A.13.3 Number of Inter gNB-DU PSCell Change via SRB3 attempted

#### A.13.3.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.RRCCONENDC.ReconfSrb3AttemptInterDuPscellch |
| Description | This counter provides the number of the transmitted RRC:RRC Reconfiguration messages via SRB3 when the following procedure.  - Inter gNB-DU PSCell Change using SRB3 for RRC  Reconfiguration |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by 1 whenever RRC:RRCReconfiguration message is transmitted via SRB3 when the  following procedure. |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
|  | - Inter gNB-DU PSCell Change using SRB3 for RRC Reconfiguration. |
| Measurement Result | Integer number (32) |
| Measurement Type | OR.RRCCONENDC.ReconfSrb3AttemptInterDuPscellch |
| Measurement Object Class | NRCellCU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

1

### A.13.4 Number of Inter gNB-DU PSCell Change via SRB3 successfully

#### A.13.4.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.RRCCONENDC.ReconfSrb3SuccessInterDuPscellch |
| Description | This counter provides the number of the received RRC:RRC Reconfiguration Complete messages via SRB3 when the following procedure.  - Inter gNB-DU PSCell Change using SRB3 for RRC Reconfiguration. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by 1 whenever RRC:RRCReconfiguration Complete message is received via SRB3 when the following procedure.  - Inter gNB-DU PSCell Change using SRB3 for RRC Reconfiguration. |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.RRCCONENDC.ReconfSrb3SuccessInterDuPscellch |
| Measurement Object Class | NRCellCU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

4

### A.13.5 Number of Intra gNB-DU PSCell Change via SRB3 attempted

#### A.13.5.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.RRCCONENDC.ReconfSrb3AttemptIntraDuPscellch |
| Description | This counter provides the number of the transmitted RRC:RRC Reconfiguration messages via SRB3 when the following procedure.  - Intra gNB-DU PSCell Change using SRB3 for RRC Reconfiguration. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by 1 whenever RRC:RRCReconfiguration message is transmitted via SRB3 when the following procedure.  - Intra gNB-DU PSCell Change using SRB3 for RRC  Reconfiguration. |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.RRCCONENDC.ReconfSrb3AttemptIntraDuPscellch |
| Measurement Object Class | NRCellCU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

7

### A.13.6 Number of Intra gNB-DU PSCell Change via SRB3 successfully

#### A.13.6.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.RRCCONENDC.ReconfSrb3SuccessIntraDuPscellch |
| Description | This counter provides the number of the received RRC:RRC Reconfiguration Complete messages via SRB3 when the following procedure.  - Intra gNB-DU PSCell Change using SRB3 for RRC Reconfiguration. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by 1 whenever RRC:RRCReconfiguration Complete message is received via SRB3 when the following procedure.  - Intra gNB-DU PSCell Change using SRB3 for RRC Reconfiguration. |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.RRCCONENDC.ReconfSrb3SuccessIntraDuPscellch |
| Measurement Object Class | NRCellCU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

3

## A.14 Monitoring of RRC Connection for SA

### A.14.1 Number of initial RRC Connection requests

#### A.14.1.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.RRCCONSA.IniConReq |
| Description | This counter provides the number of the received RRC: RRC Setup Request (or RRC: RRC Resume Request) messages via F1-C which is in the first time for each ue-Identity. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement counter is incremented by 1 whenever RRC: RRC Setup Request (or RRC: RRC Resume Request) message is received via F1-C, if RRC: RRC Setup Request (or RRC: RRC Resume Request) message of the same ue-Identity is not received for a certain period of time from  the reception timing. |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.RRCCONSA.IniConReq |
| Measurement Object Class | NRCellCU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

7

### A.14.2 Number of RRC connection completions for initial RRC Connection

1. requests

#### A.14.2.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.RRCCONSA.IniConComp |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Description | This counter provides the number of the received RRC: RRC Setup Complete (or RRC: RRC Resume Response) messages via F1-C which corresponds to the initial RRC: RRC Setup Request (or RRC: RRC Resume Request) except fall-back procedure. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement counter is incremented by 1 whenever RRC: RRC Setup Complete (or RRC: RRC Resume Response) message which corresponds to the initial RRC: RRC Setup Request (or RRC: RRC Resume Request) except fall-back procedure is received via F1-C. |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.RRCCONSA.IniConComp |
| Measurement Object Class | NRCellCU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

1

### A.14.3 Number of retransmission RRC Connections requests

#### A.14.3.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.RRCCONSA.RetConReq |
| Description | This counter provides the number of the received RRC: RRC Setup Request (or RRC: RRC Resume Request) messages via F1-C which is retransmission for each ue-Identity. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement counter is incremented by 1 whenever RRC: RRC Setup Request (or RRC: RRC Resume Request) message is received via F1-C, if RRC: RRC Setup Request (or RRC: RRC Resume Request) message of the same ue-Identity is received for a certain period of time from the reception timing. |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.RRCCONSA.RetConReq |
| Measurement Object Class | NRCellCU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

4

### A.14.4 Number of RRC Connections completions for retransmission RRC

1. Connections requests

#### A.14.4.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.RRCCONSA.RetransConComp |
| Description | This counter provides the number of the received RRC: RRC Setup Complete (or RRC: RRC Resume Response) messages via F1-C which corresponds to the retransmission RRC: RRC Setup Request (or RRC: RRC Resume Request) except fall-back procedure. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement counter is incremented by 1 whenever RRC: RRC Setup Complete (or RRC: RRC Resume Response) message which corresponds to the retransmission RRC: RRC Setup Request (or RRC: RRC Resume  Request) except fall-back procedure is received via F1-C. |
| Measurement Result | Integer number (U32) |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Type | OR.RRCCONSA.RetransConComp |
| Measurement Object Class | NRCellCU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

1

### A.14.5 Number of incomplete RRC Connection by failed resource allocations

#### A.14.5.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.RRCCONSA.IncompConResourAllo |
| Description | This counter provides the number of the RRC Connection configuration interrupted by failed resource allocations. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement counter is incremented by 1 whenever RRC Connection configuration is interrupted between RRC: RRC Setup Request (or RRC:  RRC Resume Request) to RRC: RRC Setup Complete (or RRC: RRC Resume Complete) by failed resource allocations. |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.RRCCONSA.IncompConResourAllo |
| Measurement Object Class | NRCellCU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

4

### A.14.6 Number of incomplete RRC Connection by O-CU internal error

#### A.14.6.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.RRCCONSA.IncompConOcuInterErr |
| Description | This counter provides the number of the RRC Connection configuration interrupted by O-CU internal error (e.g. L3 message sending NG). |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement counter is incremented by 1 whenever RRC Connection configuration is interrupted between RRC: RRC Setup Request (or RRC: RRC Resume Request) to RRC: RRC Setup Complete (or RRC: RRC  Resume Complete) by O-CU internal error. |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.RRCCONSA.IncompConOcuInterErr |
| Measurement Object Class | NRCellCU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

7

### A.14.7 Number of initial RRC Connection requests each Establishment

1. Cause

#### A.14.7.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.RRCCONSA.IniConReqEstaCause |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Description | This counter provides the number of the received RRC: RRC Setup Request (or RRC: RRC Resume Request) messages via F1-C which is in the first time for each ue-Identity.  This counter is split into subcounters per EstablishmentCause. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by 1 whenever RRC: RRC Setup Request (or RRC: RRC Resume Request) message is received via F1-C, if RRC: RRC Setup Request (or RRC: RRC Resume Response) message of the same ue-Identity is not received for a certain period of time from the reception timing when the cell configured by the message is group of subcounter*.EstablishmentCause.* |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.RRCCONSA.IniConReqEstaCause*.EstablishmentCause* where  *EstablishmentCause* is EstablishmentCause: 0: EstablishmentCause = emergency  1: EstablishmentCause = highPriorityAccess 2: EstablishmentCause = mt-Access  3: EstablishmentCause = mo-Signalling 4: EstablishmentCause = mo-Data  5: EstablishmentCause = mo-VoiceCall 6: EstablishmentCause = mo-VideoCall 7: EstablishmentCause = mo-SMS  8: EstablishmentCause = mps-PriorityAccess 9: EstablishmentCause = mcs-PriorityAccess |
| Measurement Object Class | NRCellCU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

1

### A.14.8 Number of RRC connection completions for initial RRC Connection

1. requests each Establishment Cause

#### A.14.8.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.RRCCONSA.IniConCompEstaCause |
| Description | This counter provides the number of the received RRC: RRC Setup Complete (or RRC: RRC Resume Response) messages via F1-C which corresponds to the initial RRC: RRC Setup Request (or RRC: RRC Resume Request) except fall-back procedure.  This counter is split into subcounters per EstablishmentCause. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by 1 whenever RRC:RRC Setup Complete (or RRC: RRC Resume Response) message which corresponds to the initial RRC: RRC Setup Request (or RRC: RRC Resume Request) except fall-back procedure is received via F1-C when the cell configured  by the message is group of subcounter*.EstablishmentCause.* |
| Measurement Result | Integer number (U32) |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Type | OR.RRCCONSA.IniConCompEstaCause*.EstablishmentCause* where  *EstablishmentCause* is EstablishmentCause: 0: EstablishmentCause = emergency  1: EstablishmentCause = highPriorityAccess 2: EstablishmentCause = mt-Access  3: EstablishmentCause = mo-Signalling 4: EstablishmentCause = mo-Data  5: EstablishmentCause = mo-VoiceCall 6: EstablishmentCause = mo-VideoCall 7: EstablishmentCause = mo-SMS  8: EstablishmentCause = mps-PriorityAccess 9: EstablishmentCause = mcs-PriorityAccess |
| Measurement Object Class | NRCellCU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

1

### A.14.9 Number of retransmission RRC Connections requests each

1. Establishment Cause

#### A.14.9.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.RRCCONSA.RetransConReqEstaCause |
| Description | This counter provides the number of the received RRC: RRC Setup Request (or RRC: RRC Resume Request) messages via F1-C which is retransmission for each ue-Identity.  This counter is split into subcounters per EstablishmentCause. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by 1 whenever RRC: RRC Setup Request (or RRC: RRC Resume Request) message is received via F1-C, if RRC: RRC Setup Request (or RRC: RRC Resume Request) message of the same ue-Identity is received for a certain period of time from the reception timing when the cell configured by the message is  group of subcounter*.EstablishmentCause.* |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.RRCCONSA.RetransConReqEstaCause*.EstablishmentCause* where  *EstablishmentCause* is EstablishmentCause: 0: EstablishmentCause = emergency  1: EstablishmentCause = highPriorityAccess 2: EstablishmentCause = mt-Access  3: EstablishmentCause = mo-Signalling 4: EstablishmentCause = mo-Data  5: EstablishmentCause = mo-VoiceCall |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
|  | 6: EstablishmentCause = mo-VideoCall 7: EstablishmentCause = mo-SMS  8: EstablishmentCause = mps-PriorityAccess 9: EstablishmentCause = mcs-PriorityAccess |
| Measurement Object Class | NRCellCU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

1

### A.14.10 Number of RRC Connections completions for retransmission RRC

1. Connections requests each Establishment Cause

#### A.14.10.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.RRCCONSA.RetransConCompEstaCause |
| Description | This counter provides the number of the received RRC: RRC Setup Complete (or RRC: RRC Resume Response) messages via F1-C which corresponds to the retransmission RRC: RRC Setup Request (or RRC: RRC Resume Request) except fall-back procedure.  This counter is split into subcounters per EstablishmentCause. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by 1 whenever RRC: RRC Setup Complete (or RRC: RRC Resume Response) message which corresponds to the retransmission RRC: RRC Setup Request (or RRC: RRC Resume Request) except fall-back procedure is received via F1-C when the cell configured by the message is group of subcounter.*EstablishmentCause.* |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.RRCCONSA.RetransConCompEstaCause*.EstablishmentCause* where *EstablishmentCause* is EstablishmentCause:  0: EstablishmentCause = emergency  1: EstablishmentCause = highPriorityAccess 2: EstablishmentCause = mt-Access  3: EstablishmentCause = mo-Signalling 4: EstablishmentCause = mo-Data  5: EstablishmentCause = mo-VoiceCall 6: EstablishmentCause = mo-VideoCall 7: EstablishmentCause = mo-SMS  8: EstablishmentCause = mps-PriorityAccess 9: EstablishmentCause = mcs-PriorityAccess |
| Measurement Object Class | NRCellCU |
| Switching Technology | Packet Switched |
| Generation | 5GS |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

1

### A.14.11 Number of incomplete RRC Connection by failed resource

1. allocations each Establishment Cause

#### A.14.11.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.RRCCONSA.IncompConResourAlloEstaCause |
| Description | This counter provides the number of the RRC Connection configuration interrupted by failed resource allocations.  This counter is split into subcounters per EstablishmentCause. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by 1 whenever RRC Connection configuration is interrupted between RRC: RRC Setup Request (or RRC: RRC Resume Request) to RRC: RRC Setup Complete (or RRC: RRC Resume Complete) by failed resource allocations when  the cell configured by the message is group of subcounter*.EstablishmentCause.* |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.RRCCONSA.IncompConResourAlloEstaCause*.EstablishmentCause* where *EstablishmentCause* is EstablishmentCause:  0: EstablishmentCause = emergency  1: EstablishmentCause = highPriorityAccess 2: EstablishmentCause = mt-Access  3: EstablishmentCause = mo-Signalling 4: EstablishmentCause = mo-Data  5: EstablishmentCause = mo-VoiceCall 6: EstablishmentCause = mo-VideoCall 7: EstablishmentCause = mo-SMS  8: EstablishmentCause = mps-PriorityAccess 9: EstablishmentCause = mcs-PriorityAccess |
| Measurement Object Class | NRCellCU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

5

### A.14.12 Number of incomplete RRC Connection by O-CU internal error each

1. Establishment Cause

#### A.14.12.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.RRCCONSA.IncompConOcuInterErrEstaCause |
| Description | This counter provides the number of the RRC Connection configuration interrupted by O-CU internal error (e.g. L3 message sending NG).  This counter is split into subcounters per EstablishmentCause. |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by 1 whenever RRC Connection configuration is interrupted between RRC: RRC Setup Request (or RRC: RRC Resume Request) to RRC: RRC Setup Complete (or RRC: RRC Resume Complete) by O-CU internal error when the cell  configured by the message is group of subcounter*.EstablishmentCause.* |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.RRCCONSA.IncompConOcuInterErrEstaCause*.EstablishmentCause* where *EstablishmentCause* is EstablishmentCause:  0: EstablishmentCause = emergency  1: EstablishmentCause = highPriorityAccess 2: EstablishmentCause = mt-Access  3: EstablishmentCause = mo-Signalling 4: EstablishmentCause = mo-Data  5: EstablishmentCause = mo-VoiceCall 6: EstablishmentCause = mo-VideoCall 7: EstablishmentCause = mo-SMS  8: EstablishmentCause = mps-PriorityAccess 9: EstablishmentCause = mcs-PriorityAccess |
| Measurement Object Class | NRCellCU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

1

## A.15 Monitoring of Establishment calls for SA

### A.15.1 Number of attempted establishment calls for mo-Data

#### A.15.1.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.ESTACALL.AttemptModata |
| Description | This counter provides the number of the received RRC: RRC Setup Complete (or RRC: RRC Resume Complete) messages via F1-C after received RRC: RRC Setup Request (or RRC: RRC Resume Request)  (Establishment Cause (Resume Cause):mo-Data). |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement counter is incremented by 1 whenever RRC: RRC Setup Complete (or RRC: RRC Resume Complete) message is received via F1- C after received RRC: RRC Setup Request (or RRC: RRC Resume Request) (Establishment Cause (or Resume Cause): mo-Data). |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.ESTACALL.AttemptModata |
| Measurement Object Class | NRCellCU |
| Switching Technology | Packet Switched |
| Generation | 5GS |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

1

### A.15.2 Number of successful establishment calls for mo-Data

#### A.15.2.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.ESTACALL.SuccessModata |
| Description | This counter provides the number of the following message after received RRC: RRC Setup Request (or RRC: RRC Resume Request) (Establishment Cause (or Resume Cause): mt-Data):   * send NG-AP: Initial Context Setup Response * received NG-AP: UE Context Release Command (for deregistration) before sending NG-AP: Initial Context Setup   Response |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement counter is incremented by 1 whenever the following event occurs after received RRC: RRC Setup Request (or RRC: RRC Resume Request) (Establishment Cause (or Resume Cause): mo-Data):   * send NG-AP: Initial Context Setup Response * received NG-AP: UE Context Release Command (for deregistration) before sending NG-AP: Initial Context Setup ResponseMeasurement counter is incremented by 1 whenever NG- AP:Initial Context Setup Response message is transmitted after received RRC: RRC Setup Request (Establishment Cause: mo-   Data). |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.ESTACALL.SuccessModata |
| Measurement Object Class | NRCellCU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

4

### A.15.3 Number of incomplete establishment calls for mo-Data by protocol

1. error

#### A.15.3.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.ESTACALL.IncompModataProtocolErr |
| Description | This counter provides the number of the Call establishment for mo-Data interrupted by protocol error. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement counter is incremented by 1 whenever Call establishment for mo-Data is interrupted between RRC: RRC Setup Request (or RRC:  RRC Resume Request) to NG-AP: Initial Context Setup Response (or RRC: RRC Resume Complete) by protocol error. |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.ESTACALL.IncompModataProtocolErr |
| Measurement Object Class | NRCellCU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

8

### A.15.4 Number of incomplete establishment calls for mo-Data by O-CU

1. internal error

#### A.15.4.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.ESTACALL.IncompModataOcuInterErr |
| Description | This counter provides the number of the call establishment for mo-Data interrupted by O-CU internal error. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement counter is incremented by 1 whenever call establishment for mo-Data is interrupted between RRC: RRC Setup Request (or RRC: RRC Resume Request) to NG-AP: Initial Context Setup Response (or  RRC: RRC Resume Complete) by O-CU internal error. |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.ESTACALL.IncompModataOcuInterErr |
| Measurement Object Class | NRCellCU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

4

### A.15.5 Number of incomplete establishment calls for mo-Data by O-DU error

1. detection

#### A.15.5.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.ESTACALL.IncompModataOduErrDetect |
| Description | This counter provides the number of the call establishment for mo-Data interrupted by O-DU Error Detection. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement counter is incremented by 1 whenever call establishment for mo-Data is interrupted between RRC: RRC Setup Request (or RRC:  RRC Resume Request) to NG-AP: Initial Context Setup Response (or RRC: RRC Resume Complete) by O-DU Error Detection*.* |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.ESTACALL.IncompModataOduErrDetect |
| Measurement Object Class | NRCellCU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

8

### A.15.6 Number of attempted establishment calls for mt-Access

#### A.15.6.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.ESTACALL.AttemptMtaccess |
| Description | This counter provides the number of the received RRC: RRC Setup Complete (or RRC: RRC Resume Complete) messages via F1-C after received RRC: RRC Setup Request (or RRC: RRC Resume Request) (Establishment Cause (or Resume Cause): mt-Access). |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement counter is incremented by 1 whenever RRC: RRC Setup Complete (or RRC: RRC Resume Complete) message is received via F1- |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
|  | C after received RRC: RRC Setup Request (or RRC: RRC Resume Request) (Establishment Cause (or Resume Cause): mt-Access)*.* |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.ESTACALL.AttemptMtaccess |
| Measurement Object Class | NRCellCU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

1

### A.15.7 Number of successful establishment calls for mt-Access

#### A.15.7.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.ESTACALL.SuccessMtaccess |
| Description | This counter provides the number of the following message after received RRC: RRC Setup Request (or RRC: RRC Resume Request) (Establishment Cause (or Resume Cause):mt-Access):   * send NG-AP: Initial Context Setup Response * received NG-AP: UE Context Release Command (for deregistration) before sending NG-AP: Initial Context Setup   Response |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement counter is incremented by 1 whenever the following event occurs after received RRC: RRC Setup Request (or RRC: RRC Resume Request) (Establishment Cause (or Resume Cause):mt-Access):   * send NG-AP: Initial Context Setup Response * received NG-AP: UE Context Release Command (for deregistration) before sending NG-AP: Initial Context Setup Response |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.ESTACALL.SuccessMtaccess |
| Measurement Object Class | NRCellCU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

4

### A.15.8 Number of incomplete establishment calls for mt-Access by protocol

1. error

#### A.15.8.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.ESTACALL.IncompMtaccessProtocolErr |
| Description | This counter provides the number of the call establishment for mt-Access interrupted by protocol error. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement counter is incremented by 1 whenever call establishment for mt-Access is interrupted between RRC: RRC Setup Request (or RRC: RRC Resume Request) to NG-AP: Initial Context Setup Response (or RRC: RRC Resume Complete) by protocol error. |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.ESTACALL.IncompMtaccessProtocolErr |
| Measurement Object Class | NRCellCU |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

1

### A.15.9 Number of incomplete establishment calls for mt-Access by O-CU

1. internal error

#### A.15.9.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.ESTACALL.IncompMtaccessOcuInterErr |
| Description | This counter provides the number of the call establishment for mt-Access interrupted by O-CU internal error. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement counter is incremented by 1 whenever call establishment for mt-Access is interrupted between RRC: RRC Setup Request (or RRC: RRC Resume Request) to NG-AP: Initial Context Setup Response (or RRC: RRC Resume Complete) by O-CU internal error*.* |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.ESTACALL.IncompMtaccessOcuInterErr |
| Measurement Object Class | NRCellCU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

5

### A.15.10 Number of incomplete establishment calls for mt-Access by O-DU

1. error detection

#### A.15.10.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.ESTACALL.IncompMtaccessOduErrDetect |
| Description | This counter provides the number of the call establishment for mt-Access is interrupted by O-DU Error Detection. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement counter is incremented by 1 whenever call establishment for mt-Access is interrupted between RRC: RRC Setup Request (or RRC: RRC Resume Request) to NG-AP: Initial Context Setup Response  (or RRC: RRC Resume Complete) by DU Error Detection. |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.ESTACALL.IncompMtaccessOduErrDetect |
| Measurement Object Class | NRCellCU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

9

### A.15.11 Number of attempted establishment calls for mo-Signalling

#### A.15.11.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.ESTACALL.AcceptMosignal |
| Description | This counter provides the number of the received RRC: RRC Setup Complete (or RRC: RRC Resume Complete) messages via F1-C after |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
|  | received RRC: RRC Setup Request (or RRC: RRC Resume Request) (Establishment Cause (or Resume Cause):mo-Signalling). |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement counter is incremented by 1 whenever RRC: RRC Setup Complete (or RRC: RRC Resume Complete) message is received via F1-  C after received RRC: RRC Setup Request (or RRC: RRC Resume Request) (Establishment Cause (or Resume Cause):mo-Signalling). |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.ESTACALL.AcceptMosignal |
| Measurement Object Class | NRCellCU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

1

### A.15.12 Number of successful establishment calls for mo-Signalling

#### A.15.12.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.ESTACALL.SuccessMosignal |
| Description | This counter provides the number of the following message after received RRC: RRC Setup Request (or RRC: RRC Resume Request) (Establishment Cause (or Resume Cause): mo-Signalling):   * send NG-AP: Initial Context Setup Response * received NG-AP: UE Context Release Command (for deregistration) before sending NG-AP: Initial Context Setup   Response |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement counter is incremented by 1 whenever the following event occurs after received RRC: RRC Setup Request (or RRC: RRC Resume Request) (Establishment Cause (or Resume Cause): mo-Signalling):   * send NG-AP: Initial Context Setup Response * received NG-AP: UE Context Release Command (for deregistration) before sending NG-AP: Initial Context Setup   Response |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.ESTACALL.SuccessMosignal |
| Measurement Object Class | NRCellCU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

4

### A.15.13 Number of incomplete establishment calls for mo-Signalling by

1. protocol error

#### A.15.13.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.ESTACALL.IncompMosignalProtocolErr |
| Description | This counter provides the number of the call establishment for mo- Signalling interrupted by protocol error. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement counter is incremented by 1 whenever call establishment for mo-Signalling is interrupted between RRC: RRC Setup Request (or |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
|  | RRC: RRC Resume Request) to NG-AP: Initial Context Setup Response (or RRC: RRC Resume Complete) by protocol error. |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.ESTACALL.IncompMosignalProtocolErr |
| Measurement Object Class | NRCellCU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

1

### A.15.14 Number of incomplete establishment calls for mo-Signalling by O-CU

1. internal error

#### A.15.14.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.ESTACALL.IncompMosignalOcuInterErr |
| Description | This counter provides the number of the call establishment for mo- Signalling interrupted by O-CU internal error. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement counter is incremented by 1 whenever mo-Signalling configuration is interrupted between RRC: RRC Setup Request (or RRC:  RRC Resume Request) to NG-AP: Initial Context Setup Response (or RRC: RRC Resume Complete) by O-CU internal error. |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.ESTACALL.IncompMosignalOcuInterErr |
| Measurement Object Class | NRCellCU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

5

### A.15.15 Number of incomplete establishment calls for mo-Signalling by O-DU

1. error detection

#### A.15.15.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.ESTACALL.IncompMosignalDuErrDetect |
| Description | This counter provides the number of the call establishment for mo- Signalling interrupted by O-DU error detection. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement counter is incremented by 1 whenever call establishment for mo-Signalling is interrupted between RRC: RRC Setup Request (or RRC: RRC Resume Request) to NG-AP: Initial Context Setup Response (or RRC: RRC Resume Complete) by O-DU error detection. |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.ESTACALL.IncompMosignalDuErrDetect |
| Measurement Object Class | NRCellCU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

9

### A.15.16 Number of attempted establishment calls for mo-SMS

#### A.15.16.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.ESTACALL.AttemptMossms |
| Description | This counter provides the number of the received RRC: RRC Setup Complete (or RRC: RRC Resume Complete) messages via F1-C after received RRC: RRC Setup Request (or RRC: RRC Resume Request) (Establishment Cause (or Resume Cause): mo-SMS). |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement counter is incremented by 1 whenever RRC: RRC Setup Complete (or RRC: RRC Resume Complete) message is received via F1-  C after received RRC: RRC Setup Request (or RRC: RRC Resume Request) (Establishment Cause (or Resume Cause): mo-SMS). |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.ESTACALL.AttemptMossms |
| Measurement Object Class | NRCellCU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

3

### A.15.17 Number of successful establishment calls for mo-SMS

#### A.15.17.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.ESTACALL.SuccessMossms |
| Description | This counter provides the number of the following message after received RRC: RRC Setup Request (or RRC: RRC Resume Request) (Establishment Cause (or Resume Cause): mo-SMS):   * send NG-AP: Initial Context Setup Response * received NG-AP: UE Context Release Command (for deregistration) before sending NG-AP: Initial Context Setup   Response |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement counter is incremented by 1 whenever the following event occurs after received RRC: RRC Setup Request (or RRC: RRC Resume Request) (Establishment Cause (or Resume Cause): mo-SMS):   * send NG-AP: Initial Context Setup Response * received NG-AP: UE Context Release Command (for deregistration) before sending NG-AP: Initial Context Setup   Response |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.ESTACALL.SuccessMossms |
| Measurement Object Class | NRCellCU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

6

### A.15.18 Number of incomplete establishment calls for mo-SMS by protocol

1. error

#### A.15.18.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.ESTACALL.IncompMossmsProtocolErr |
| Description | This counter provides the number of the call establishment for mo-SMS interrupted by protocol error. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement counter is incremented by 1 whenever call establishment for mo-SMS is interrupted between RRC: RRC Setup Request (or RRC: RRC Resume Request) to NG-AP: Initial Context Setup Response (or  RRC: RRC Resume Complete) by protocol error. |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.ESTACALL.IncompMossmsProtocolErr |
| Measurement Object Class | NRCellCU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

4

### A.15.19 Number of incomplete establishment calls for mo-SMS by O-CU

1. internal error

#### A.15.19.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.ESTACALL.IncompMossmsOcuInterErr |
| Description | This counter provides the number of the call establishment for mo-SMS interrupted by O-CU internal error. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement counter is incremented by 1 whenever call establishment for mo-SMS is interrupted between RRC: RRC Setup Request (or RRC:  RRC Resume Request) to NG-AP: Initial Context Setup Response (or RRC: RRC Resume Complete) by O-CU internal error. |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.ESTACALL.IncompMossmsOcuInterErr |
| Measurement Object Class | NRCellCU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

8

### A.15.20 Number of incomplete establishment calls for mo-SMS by O-DU error

1. detection

#### A.15.20.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.ESTACALL.IncompMossmsOduErrDetect |
| Description | This counter provides the number of the call establishment for mo-SMS interrupted by O-DU error detection. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement counter is incremented by 1 whenever call establishment for mo-SMS is interrupted between RRC: RRC Setup Request (or RRC: |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
|  | RRC Resume Request) to NG-AP: Initial Context Setup Response (or RRC: RRC Resume Complete) by O-DU error detection. |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.ESTACALL.IncompMossmsOduErrDetect |
| Measurement Object Class | NRCellCU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

1

### A.15.21 Number of attempted establishment calls for high priority access

#### A.15.21.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.ESTACALL.AttemptHighPriAccess |
| Description | This counter provides the number of the received RRC: RRC Setup Complete messages (or RRC: RRC Resume Complete) via F1-C after  received RRC: RRC Setup Request (or RRC: RRC Resume Request) (Establishment Cause (or Resume Cause): highPriorityAccess). |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement counter is incremented by 1 whenever RRC: RRC Setup Complete (or RRC: RRC Resume Complete) message is received via F1- C after received RRC: RRC Setup Request (or RRC: RRC Resume Request) (Establishment Cause (or Resume Cause): highPriorityAccess). |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.ESTACALL.AttemptHighPriAccess |
| Measurement Object Class | NRCellCU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

4

### A.15.22 Number of successful establishment calls for high priority access

#### A.15.22.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.ESTACALL.SuccessHighPriAccess |
| Description | This counter provides the number of the following message after received RRC: RRC Setup Request (or RRC: RRC Resume Request) (Establishment Cause (or Resume Cause): highPriorityAccess):   * NG-AP: Initial Context Setup Response is transmitted. * NG-AP: UE Context Release Command (for detach) is received   before NG-AP: Initial Context Setup Response is transmitted. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement counter is incremented by 1 whenever the following event occurs after received RRC: RRC Setup Request (or RRC: RRC Resume Request) (Establishment Cause (or Resume Cause): highPriorityAccess):   * send NG-AP: Initial Context Setup Response * NG-AP: UE Context Release Command (for detach) is received   before NG-AP: Initial Context Setup Response is transmitted. |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.ESTACALL.SuccessHighPriAccess |
| Measurement Object Class | NRCellCU |
| Switching Technology | Packet Switched |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

1

### A.15.23 Number of incomplete establishment calls for high priority access by

1. protocol error

#### A.15.23.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.ESTACALL.IncompHighPriAccessProtocolErr |
| Description | This counter provides the number of the call establishment for high priority access interrupted by protocol error. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement counter is incremented by 1 whenever call establishment for high priority access is interrupted between RRC: RRC Setup Request (or RRC: RRC Resume Request) to NG-AP: Initial Context Setup Response (or RRC: RRC Resume Complete) by protocol error (Call acceptance condition of CU/DU is not met). |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.ESTACALL.IncompHighPriAccessProtocolErr |
| Measurement Object Class | NRCellCU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

5

### A.15.24 Number of incomplete establishment calls for high priority access by

1. O-CU internal error

#### A.15.24.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.ESTACALL.IncompHighPriAccessOcuInterErr |
| Description | This counter provides the number of the call establishment for high priority access interrupted by O-CU internal error. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement counter is incremented by 1 whenever call establishment for high priority access is interrupted between RRC: RRC Setup Request (or RRC: RRC Resume Request) to NG-AP: Initial Context Setup Response (or RRC: RRC Resume Complete) by O-CU internal error  (Call acceptance condition of CU/DU is not met). |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.ESTACALL.IncompHighPriAccessOcuInterErr |
| Measurement Object Class | NRCellCU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

9

### A.15.25 Number of incomplete establishment calls for high priority access by

1. O-DU error detection

#### A.15.25.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.ESTACALL.IncompHighPriAccessOduErrDetect |
| Description | This counter provides the number of the call establishment for high priority access interrupted by O-DU error detection. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement counter is incremented by 1 whenever call establishment for high priority access is interrupted between RRC: RRC Setup Request (or RRC: RRC Resume Request) to NG-AP: Initial Context Setup Response (or RRC: RRC Resume Complete) by O-DU error detection  (Call acceptance condition of CU/DU is not met). |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.ESTACALL.IncompHighPriAccessOduErrDetect |
| Measurement Object Class | NRCellCU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

4

### A.15.26 Number of attempted establishment calls for emergency

#### A.15.26.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.ESTACALL.AttemptEmergency |
| Description | This counter provides the number of the received RRC: RRC Setup Complete (or RRC: RRC Resume Complete) messages via F1-C after received RRC: RRC Setup Request (or RRC: RRC Resume Request) (Establishment Cause (or Resume Cause): emergency). |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement counter is incremented by 1 whenever RRC: RRC Setup Complete (or RRC: RRC Resume Complete) message is received via F1-  C after received RRC: RRC Setup Request (or RRC: RRC Resume Request) (Establishment Cause (or Resume Cause): emergency). |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.ESTACALL.AttemptEmergency |
| Measurement Object Class | NRCellCU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

7

### A.15.27 Number of successful establishment calls for emergency

#### A.15.27.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.ESTACALL.SuccessEmergency |
| Description | This counter provides the number of the following message after received RRC: RRC Setup Request (or RRC: RRC Resume Request) (Establishment Cause (or Resume Cause): emergency):  - send NG-AP: Initial Context Setup Response |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
|  | - NG-AP: UE Context Release Command (for detach) is received  before NG-AP: Initial Context Setup Response is transmitted. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement counter is incremented by 1 whenever the following event occurs after received RRC: RRC Setup Request (or RRC: RRC Resume Request) (Establishment Cause (or Resume Cause): emergency):   * NG-AP: Initial Context Setup Response is transmitted. * NG-AP: UE Context Release Command (for detach) is received   before NG-AP: Initial Context Setup Response is transmitted. |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.ESTACALL.SuccessEmergency |
| Measurement Object Class | NRCellCU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

1

### A.15.28 Number of incomplete establishment calls for emergency by protocol

1. error

#### A.15.28.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.ESTACALL.IncompEmergencyProtocolErr |
| Description | This counter provides the number of the call establishment for emergency interrupted by protocol error. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement counter is incremented by 1 whenever call establishment for emergency is interrupted between RRC: RRC Setup Request (or RRC: RRC Resume Request) to NG-AP: Initial Context Setup Response (or RRC: RRC Resume Complete) by protocol error (Call acceptance condition of CU/DU is not met). |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.ESTACALL.IncompEmergencyProtocolErr |
| Measurement Object Class | NRCellCU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

5

### A.15.29 Number of incomplete establishment calls for emergency by O-CU

1. internal error

#### A.15.29.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.ESTACALL.IncompEmergencyOcuInterErr |
| Description | This counter provides the number of the call establishment for emergency interrupted by O-CU internal error. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement counter is incremented by 1 whenever call establishment for emergency is interrupted between RRC: RRC Setup Request (or RRC: RRC Resume Request) to NG-AP: Initial Context Setup Response (or RRC: RRC Resume Complete) by O-CU internal error (Call  acceptance condition of CU/DU is not met). |
| Measurement Result | Integer number (U32) |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Type | OR.ESTACALL.IncompEmergencyOcuInterErr |
| Measurement Object Class | NRCellCU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

1

### A.15.30 Number of incomplete establishment calls for emergency by O-DU

1. error detection

#### A.15.30.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.ESTACALL.IncompEmergencyOduErrDetect |
| Description | This counter provides the number of the call establishment for emergency interrupted by O-DU error detection. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement counter is incremented by 1 whenever call establishment for emergency is interrupted between RRC: RRC Setup Request (or RRC: RRC Resume Request) to NG-AP: Initial Context Setup Response  (or RRC: RRC Resume Complete) by O-DU error detection (Call acceptance condition of CU/DU is not met). |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.ESTACALL.IncompEmergencyOduErrDetect |
| Measurement Object Class | NRCellCU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

5

### A.15.31 Discarded paging records

#### A.15.31.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | PAG.DiscardedNbrCnInitiated |
| Description | Refer to 3GPP TS 28.552 [8] clause 5.1.1.27.4 |
| Collection Method | Refer to 3GPP TS 28.552 [8] clause 5.1.1.27.4 |
| Condition | Refer to 3GPP TS 28.552 [8] clause 5.1.1.27.4 |
| Measurement Result | Refer to 3GPP TS 28.552 [8] clause 5.1.1.27.4 |
| Measurement Type | Refer to 3GPP TS 28.552 [8] clause 5.1.1.27.4 |
| Measurement Object Class | Refer to 3GPP TS 28.552 [8] clause 5.1.1.27.4 |
| Switching Technology | Refer to 3GPP TS 28.552 [8] clause 5.1.1.27.4 |
| Generation | Refer to 3GPP TS 28.552 [8] clause 5.1.1.27.4 |
| Purpose | Refer to 3GPP TS 28.552 [8] clause 5.1.1.27.4 |

</div>

8

## A.16 Monitoring of PDU session connection for SA

### A.16.1 Accepted PDU Session Resource Configuration

#### A.16.1.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.PDUSESSION.AcceptConfig |
| Description | This counter provides the number of the accepted PDU session resource configuration per CU count group. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by 1 whenever gNB received the following message per CU count group.  Note: multiple 5QIs can be set per PDU session, each 5QI is counted per QoS flow.   * "NG-AP: Initial Context Setup Request" is received * "NG-AP: PDU Session Resource Setup Request" * "NG-AP: PDU Session Resource Modify Request" |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.PDUSESSION.AcceptConfig.*Cucountgroup* where *Cucountgroup*  identifies an instance of CuCountGroup IOC. |
| Measurement Object Class | NRCellCU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

4

### A.16.2 Completed PDU Session Resource Configuration

#### A.16.2.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.PDUSESSION.CompConfig |
| Description | This counter provides the number of the completed PDU session resource configuration per CU count group. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by 1 whenever gNB transmitted the following message per CU count group.  Note: multiple 5QIs can be set per PDU session, each 5QI is counted per QoS flow.   * "NG-AP: Initial Context Setup Response" * "NG-AP: PDU Session Resource Setup Response" * "NG-AP: PDU Session Resource Modify Response" |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.PDUSESSION.CompConfig.*Cucountgroup* where *Cucountgroup*  identifies an instance of CuCountGroup IOC. |
| Measurement Object Class | NRCellCU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

7

### A.16.3 Interrupted PDU Session Resource configuration by Protocol Error

#### A.16.3.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.PDUSESSION.InterruptConfigProcolErr |
| Description | This counter provides the number of the PDU session resource configuration interrupted by protocol error per CU count group. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by 1 whenever the PDU session resource configuration interrupted in the following interval by protocol error per CU count group.  Note: multiple 5QIs can be set per PDU session, each 5QI is counted per QoS flow.   * between RRC: RRC Setup Request (or RRC: RRC Resume Request) to NG-AP: Initial Context Setup Response (or RRC: RRC   Resume Complete)   * between Xn-AP: Handover Request to NG-AP: Path Switch Acknowledge (Inter gNB-CU HO w Xn) * between NG-AP: Handover Request to NG-AP: Path Switch Acknowledge (Inter gNB-CU HO w/o Xn) * between NG-AP: Handover Request to NG-AP: Handover Notify (Inter RAT HO to NR) * between NG-AP: PDU Session Resource Setup Request to NG-AP: PDU Session Resource Setup Response (PDU Session   Establishment)   * between NG-AP: PDU Session Resource Modify Request to NG- AP: PDU Session Resource Modify Response (PDU Session   Modification)   * between NG-AP: PDU Session Resource Release Request to NG- AP: PDU Session Resource Release Response (PDU Session   Release) |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.PDUSESSION.InterruptConfigProcolErr.*Cucountgroup* where  *Cucountgroup* identifies an instance of CuCountGroup IOC. |
| Measurement Object Class | NRCellCU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

3

### A.16.4 Interrupted PDU Session Resource configuration by O-DU Error

1. Detection

#### A.16.4.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.PDUSESSION.InterruptConfigOduErrDetect |
| Description | This counter provides the number of the PDU session resource configuration interrupted by O-DU error detection per CU count group. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by 1 whenever the PDU session resource configuration interrupted in the following interval by O-DU error detection per CU count group.  Note: multiple 5QIs can be set per PDU session, each 5QI is counted per QoS flow. |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
|  | * between RRC: RRC Setup Request (or RRC: RRC Resume Request) to NG-AP: Initial Context Setup Response (or RRC: RRC   Resume Complete)   * between Xn-AP: Handover Request to NG-AP: Path Switch Acknowledge (Inter gNB-CU HO w Xn) * between NG-AP: Handover Request to NG-AP: Path Switch Acknowledge (Inter gNB-CU HO w/o Xn) * between NG-AP: Handover Request to NG-AP: Handover Notify (Inter RAT HO to NR) * between NG-AP: PDU Session Resource Setup Request to NG-AP: PDU Session Resource Setup Response (PDU Session   Establishment)   * between NG-AP: PDU Session Resource Modify Request to NG- AP: PDU Session Resource Modify Response (PDU Session   Modification)   * between NG-AP: PDU Session Resource Release Request to NG- AP: PDU Session Resource Release Response (PDU Session   Release) |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.PDUSESSION.InterruptConfigOduErrDetect.*Cucountgroup* where  *Cucountgroup* identifies an instance of CuCountGroup IOC. |
| Measurement Object Class | NRCellCU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

1

### A.16.5 Interrupted PDU Session Resource configuration by O-CU internal

1. error

#### A.16.5.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.PDUSESSION.InterruptConfigOcuInterErr |
| Description | This counter provides the number of the PDU session resource configuration interrupted by O-CU internal error per CU count group. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by 1 whenever the PDU session resource configuration interrupted in the following interval by O-CU internal error per CU count group.  Note: multiple 5QIs can be set per PDU session, each 5QI is counted per QoS flow.   * between RRC: RRC Setup Request (or RRC: RRC Resume Request) to NG-AP: Initial Context Setup Response (or RRC: RRC   Resume Complete)   * between Xn-AP: Handover Request to NG-AP: Path Switch Acknowledge (Inter gNB-CU HO w Xn) * between NG-AP: Handover Request to NG-AP: Path Switch Acknowledge (Inter gNB-CU HO w/o Xn) * between NG-AP: Handover Request to NG-AP: Handover Notify (Inter RAT HO to NR) * between NG-AP: PDU Session Resource Setup Request to NG-AP: PDU Session Resource Setup Response (PDU Session   Establishment)   * between NG-AP: PDU Session Resource Modify Request to NG- AP: PDU Session Resource Modify Response (PDU Session   Modification) |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
|  | - between NG-AP: PDU Session Resource Release Request to NG- AP: PDU Session Resource Release Response (PDU Session  Release) |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.PDUSESSION.InterruptConfigOcuInterErr.*Cucountgroup* where  *Cucountgroup* identifies an instance of CuCountGroup IOC. |
| Measurement Object Class | NRCellCU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

1

### A.16.6 Accepted PDU Session Resource Configuration for emergency and

1. high priority access

#### A.16.6.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.PDUSESSION.AcceptConfigEmergencyHighPriAccess |
| Description | This counter provides the number of the accepted PDU session resource configuration for emergency and high priority access per CU count group. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by 1 whenever gNB received the following message after received RRC: RRC Setup Request (Establishment Cause: emergency or high priority access) per CU count group.  Note: multiple 5QIs can be set per PDU session, each 5QI is counted per QoS flow.   * received NG-AP: Initial Context Setup Request * received NG-AP: PDU Session Resource Setup Request * received NG-AP: PDU Session Resource Modify Request |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.PDUSESSION.AcceptConfigEmergencyHighPriAccess.*Cucountgro up* where *Cucountgroup* identifies an instance of CuCountGroup IOC. |
| Measurement Object Class | NRCellCU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

5

### A.16.7 Completed PDU Session Resource Configuration for emergency and

1. high priority access

#### A.16.7.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.PDUSESSION.CompConfigEmergencyHighPriAccess |
| Description | This counter provides the number of the completed PDU session resource configuration for emergency and high priority access per CU count group. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by 1 whenever gNB transmitted the following message after received RRC: RRC Setup Request (Establishment Cause: emergency or high priority access) per CU count  group. |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
|  | Note: multiple 5QIs can be set per PDU session, each 5QI is counted per QoS flow.   * send NG-AP: Initial Context Setup Response * send NG-AP: PDU Session Resource Setup Response * send NG-AP: PDU Session Resource Modify Response |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.PDUSESSION.CompConfigEmergencyHighPriAccess.*Cucountgroup* where *Cucountgroup* identifies an instance of CuCountGroup IOC. |
| Measurement Object Class | NRCellCU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

1

### A.16.8 Interrupted PDU Session Resource configuration for emergency and

1. high priority access by Protocol Error

#### A.16.8.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.PDUSESSION.InterruptConfigProcolErrEmergencyHighPriAccess |
| Description | This counter provides the number of the PDU session resource configuration for emergency and high priority access interrupted by protocol error per CU count group. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by 1 whenever the PDU session resource configuration for emergency and high priority access interrupted in the following interval by protocol error per CU count group.  Note: multiple 5QIs can be set per PDU session, each 5QI is counted per QoS flow.   * between RRC: RRC Setup Request (or RRC: RRC Resume Request) to NG-AP: Initial Context Setup Response (or RRC: RRC   Resume Complete)   * between Xn-AP: Handover Request to NG-AP: Path Switch Acknowledge (Inter gNB-CU HO w Xn) * between NG-AP: Handover Request to NG-AP: Path Switch Acknowledge (Inter gNB-CU HO w/o Xn) * between NG-AP: Handover Request to NG-AP: Handover Notify (Inter RAT HO to NR) * between NG-AP: PDU Session Resource Setup Request to NG-AP: PDU Session Resource Setup Response (PDU Session   Establishment)   * between NG-AP: PDU Session Resource Modify Request to NG- AP: PDU Session Resource Modify Response (PDU Session   Modification)   * between NG-AP: PDU Session Resource Release Request to NG- AP: PDU Session Resource Release Response (PDU Session   Release) |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.PDUSESSION.InterruptConfigProcolErrEmergencyHighPriAccess. *Cucountgroup* where *Cucountgroup* identifies an instance of CuCountGroup IOC. |
| Measurement Object Class | NRCellCU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

1

### A.16.9 Interrupted PDU Session Resource configuration for emergency and

1. high priority access by O-DU Error Detection

#### A.16.9.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.PDUSESSION.InterruptConfigOduErrDetectEmergencyHighPriAcc ess |
| Description | This counter provides the number of the PDU session resource configuration for emergency and high priority access interrupted by O- DU error detection per CU count group. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by 1 whenever the PDU session resource configuration for emergency and high priority access interrupted in the following interval by O-DU error detection per CU count group.  Note: multiple 5QIs can be set per PDU session, each 5QI is counted per QoS flow.   * between RRC: RRC Setup Request (or RRC: RRC Resume Request) to NG-AP: Initial Context Setup Response (or RRC: RRC   Resume Complete)   * between Xn-AP: Handover Request to NG-AP: Path Switch Acknowledge (Inter gNB-CU HO w Xn) * between NG-AP: Handover Request to NG-AP: Path Switch Acknowledge (Inter gNB-CU HO w/o Xn) * between NG-AP: Handover Request to NG-AP: Handover Notify (Inter RAT HO to NR) * between NG-AP: PDU Session Resource Setup Request to NG-AP: PDU Session Resource Setup Response (PDU Session   Establishment)   * between NG-AP: PDU Session Resource Modify Request to NG- AP: PDU Session Resource Modify Response (PDU Session   Modification)   * between NG-AP: PDU Session Resource Release Request to NG- AP: PDU Session Resource Release Response (PDU Session   Release) |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.PDUSESSION.InterruptConfigOduErrDetectEmergencyHighPriAcc ess.*Cucountgroup* where *Cucountgroup* identifies an instance of  CuCountGroup IOC. |
| Measurement Object Class | NRCellCU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

5

### A.16.10 Interrupted PDU Session Resource configuration for emergency and

1. high priority access by O-CU internal Error

#### A.16.10.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.PDUSESSION.InterruptConfigOcuInterErrEmergencyHighPriAcces s |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Description | This counter provides the number of the PDU session resource configuration for emergency and high priority access interrupted by O- CU internal error per CU count group. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by 1 whenever the PDU session resource configuration for emergency and high priority access interrupted in the following interval by O-CU internal error per CU count group.  Note: multiple 5QIs can be set per PDU session, each 5QI is counted per QoS flow.   * between RRC: RRC Setup Request (or RRC: RRC Resume Request) to NG-AP: Initial Context Setup Response (or RRC: RRC   Resume Complete)   * between Xn-AP: Handover Request to NG-AP: Path Switch Acknowledge (Inter gNB-CU HO w Xn) * between NG-AP: Handover Request to NG-AP: Path Switch Acknowledge (Inter gNB-CU HO w/o Xn) * between NG-AP: Handover Request to NG-AP: Handover Notify (Inter RAT HO to NR) * between NG-AP: PDU Session Resource Setup Request to NG-AP: PDU Session Resource Setup Response (PDU Session   Establishment)   * between NG-AP: PDU Session Resource Modify Request to NG- AP: PDU Session Resource Modify Response (PDU Session   Modification)   * between NG-AP: PDU Session Resource Release Request to NG- AP: PDU Session Resource Release Response (PDU Session   Release) |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.PDUSESSION.InterruptConfigOcuInterErrEmergencyHighPriAcces s.*Cucountgroup* where *Cucountgroup* identifies an instance of CuCountGroup IOC. |
| Measurement Object Class | NRCellCU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

1

## A.17 Monitoring of mobility for SA

### A.17.1 Accepted Handover

#### A.17.1.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.MOBILITY.AcceptHo |
| Description | This counter provides the number of the accepted Intra RAT handover. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by 1 whenever source gNB decides to perform Intra RAT HO procedure by the received (transmitted) following messages:   * Intra-Cell HO: transmitted "RRC: RRC Reconfiguration" * HO procedure other than those above: received "RRC:   Measurement report" |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.MOBILITY.AcceptHo |
| Measurement Object Class | NRCellCU |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

1

### A.17.2 Completed Handover

#### A.17.2.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.MOBILITY.CompHo |
| Description | This counter provides the number of the completed Intra RAT handover. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by 1 whenever source gNB detects successful Intra RAT handover procedure triggered by source gNB by the received following messages:   * Intra-gNB HO: received "RRC: RRC Reconfiguration Complete" * HO procedure other than those above: received "XnAP:UE CONTEXT RELEASE" from the target gNB at Xn HO or "NGAP:   UE CONTEXT RELEASE COMMAND" from AMF at NG HO |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.MOBILITY.CompHo |
| Measurement Object Class | NRCellCU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

4

### A.17.3 Accepted Inter RAT Handover to LTE

#### A.17.3.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.MOBILITY.AcceptHotoLte |
| Description | This counter provides the number of the accepted Inter RAT Handover to LTE. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by 1 whenever source gNB decides to perform Inter RAT HO to LTE procedure by the received following messages:  - received RRC: Measurement report (Inter RAT HO to LTE) |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.MOBILITY.AcceptHotoLte |
| Measurement Object Class | NRCellCU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

7

### A.17.4 Completed Inter RAT Handover to LTE

#### A.17.4.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.MOBILITY.CompHotoLte |
| Description | This counter provides the number of the completed Inter RAT Handover to LTE. |
| Collection Method | CC (Cumulative Counter) |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Condition | Measurement subcounter is incremented by 1 whenever source gNB detects successful handover procedure triggered by source gNB by the received following messages:  - received NG-AP: UE Context Release Command (Inter RAT HO to  LTE) |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.MOBILITY.CompHotoLte |
| Measurement Object Class | NRCellCU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

1

### A.17.5 Accepted EPS Fallback

#### A.17.5.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.MOBILITY.AcceptEpsFallback |
| Description | This counter provides the number of the accepted EPS Fallback. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by 1 whenever PCell decides to perform EPS Fallback procedure by the received following messages:  - received NG-AP: PDU Session Resource Modify Request (EPS  Fallback) |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.MOBILITY.AcceptEpsFallback |
| Measurement Object Class | NRCellCU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

4

### A.17.6 Completed EPS Fallback

#### A.17.6.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.MOBILITY.CompEpsFallback |
| Description | This counter provides the number of the completed EPS Fallback. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by 1 whenever PCell detects successful EPS Fallback procedure triggered by the received following messages:  - received NG-AP: UE Context Release Command (EPS Fallback) |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.MOBILITY.CompEpsFallback |
| Measurement Object Class | NRCellCU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

7

### A.17.7 Normal interrupted EPS Fallback

#### A.17.7.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.MOBILITY.NormalInterruptedEpsFallback |
| Description | This counter provides the number of the completed EPS Fallback. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by 1 whenever PCell detects interrupted EPS Fallback procedure triggered by the received following messages:  - received NG-AP: UE Context Release Command  (Cause:Deregister) during EPS Fallback procedure |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.MOBILITY.NormalInterruptedEpsFallback |
| Measurement Object Class | NRCellCU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

3

### A.17.8 Accepted Handover during Voice call

#### A.17.8.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.MOBILITY.AcceptHoVoice |
| Description | This counter provides the number of the accepted Intra RAT handover during voice call. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by 1 whenever source gNB decides to perform Intra RAT HO procedure by the received (transmitted) following messages during voice call:   * transmitted RRC: RRC Reconfiguration (Intra-cell HO) * HO procedure other than those above: received RRC: Measurement   report |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.MOBILITY.AcceptHoVoice |
| Measurement Object Class | NRCellCU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

6

### A.17.9 Completed Handover during Voice call

#### A.17.9.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.MOBILITY.CompHoVoice |
| Description | This counter provides the number of the completed Intra RAT handover during voice call. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by 1 whenever source gNB detects successful Intra RAT handover procedure triggered by source gNB by the received following messages during voice call:   * received RRC: RRC Reconfiguration Complete (Intra gNB-CU Inter gNB-DU HO, Intra gNB-DU Inter-cell HO) * HO procedure other than those above: received Xn-AP: UE |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
|  | CONTEXT RELEASE (Inter gNB-CU HO w/ Xn), NG-AP: UE CONTEXT RELEASE COMMAND (Inter gNB-CU HO w/o Xn) |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.MOBILITY.CompHoVoice |
| Measurement Object Class | NRCellCU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

1

### A.17.10 Accepted Inter RAT Handover to LTE during Voice call

#### A.17.10.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.MOBILITY.AcceptHotoLteVoice |
| Description | This counter provides the number of the accepted Inter RAT handover to LTE during voice call. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by 1 whenever source gNB decides to perform Inter RAT HO to LTE procedure by the received following messages during voice call:  - received RRC: Measurement report that triggers Inter RAT HO to  LTE |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.MOBILITY.AcceptHotoLteVoice |
| Measurement Object Class | NRCellCU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

4

### A.17.11 Completed Inter RAT Handover to LTE during Voice call

#### A.17.11.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.MOBILITY.CompHotoLteVoice |
| Description | This counter provides the number of the completed Inter RAT handover during voice call. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by 1 whenever source gNB detects successful Inter RAT handover procedure triggered by source gNB by the received following messages during voice call:  - received NG-AP: UE CONTEXT RELEASE COMMAND from  the AMF at Inter RAT HO to LTE |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.MOBILITY.CompHotoLteVoice |
| Measurement Object Class | NRCellCU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

7

## A.18 Monitoring of RRC re-establishment for SA

### A.18.1 Number of initial RRC re-establishment requests when UE context can

1. be retrieved

#### A.18.1.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.REEST.IniReqUecontext |
| Description | This counter provides the number of the received RRC: RRC Reestablishment Request messages via F1-C which is in the first time for each ReestabUE-Identity when UE context can be retrieved. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement counter is incremented by 1 whenever RRC: RRC Reestablishment Request message is received via F1-C when UE context can be retrieved, if RRC: RRC Reestablishment Request of the same ReestabUE-Identity is not received for a certain period of time from the reception timing. |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.REEST.IniReqUecontext |
| Measurement Object Class | NRCellCU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

5

### A.18.2 Number of RRC re-establishment request completions for initial RRC

1. re-establishment requests when UE context can be retrieved

#### A.18.2.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.REEST.IniReqCompUecontext |
| Description | This counter provides the number of the received RRC: RRC Reconfiguration Complete messages via F1-C which corresponds to the initial RRC: RRC Reestablishment Request when UE context can be retrieved. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement counter is incremented by 1 whenever RRC: RRC Reconfiguration Complete message which corresponds to the initial RRC: RRC Reestablishment Request is received via F1-C when UE  context can be retrieved. |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.REEST.IniReqCompUecontext |
| Measurement Object Class | NRCellCU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

9

### A.18.3 Number of retransmission RRC re-establishment requests when UE

1. context can be retrieved

#### A.18.3.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.REEST.RetaransReqUecontext |
| Description | This counter provides the number of the received RRC: RRC Reestablishment Request messages via F1-C which is the retransmission for each ReestabUE-Identity when UE context can be retrieved. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement counter is incremented by 1 whenever RRC: RRC Reestablishment Request message is received via F1-C when UE context can be retrieved, if RRC: RRC Reestablishment Request message of the  same ReestabUE-Identity is received for a certain period of time from the reception timing. |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.REEST.RetaransReqUecontext |
| Measurement Object Class | NRCellCU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

4

1. A.18.4 Number of RRC re-establishment request completions for
2. retransmission RRC re-establishment request when UE context can be
3. retrieved

#### A.18.4.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.REEST.RetaransReqCompUecontext |
| Description | This counter provides the number of the received RRC: RRC Reconfiguration Complete messages via F1-C which corresponds to the  retransmission RRC: RRC Reestablishment Request when UE context can be retrieved. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement counter is incremented by 1 whenever RRC: RRC Reconfiguration Complete message which corresponds to the retransmission RRC: RRC Reestablishment Request is received via F1-C  when UE context can be retrieved. |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.REEST.RetaransReqCompUecontext |
| Measurement Object Class | NRCellCUs |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

9

### A.18.5 Number of initial RRC re-establishment requests when UE context

1. cannot be retrieved

#### A.18.5.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.REEST.IniReqNotUecontext |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Description | This counter provides the number of the received RRC: RRC Reestablishment Request messages via F1-C which is in the first time for each ReestabUE-Identity when UE context cannot be retrieved. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement counter is incremented by 1 whenever RRC: RRC Reestablishment Request message is received via F1-C when UE context cannot be retrieved, if RRC: RRC Reestablishment Request of the same ReestabUE-Identity is not received for a certain period of time from the reception timing. |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.REEST.IniReqNotUecontext |
| Measurement Object Class | NRCellCU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

1

### A.18.6 Number of RRC re-establishment request completions for initial RRC

1. re-establishment requests when UE context cannot be retrieved

#### A.18.6.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.REEST.IniReqCompNotUecontext |
| Description | This counter provides the number of the received RRC: RRC Reconfiguration Complete messages via F1-C which corresponds to the initial RRC: RRC Reestablishment Request when UE context cannot be  retrieved. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement counter is incremented by 1 whenever RRC: RRC Setup Complete message which corresponds to the initial RRC: RRC Reestablishment Request is received via F1-C when UE context cannot be retrieved. |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.REEST.IniReqCompNotUecontext |
| Measurement Object Class | NRCellCU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

5

### A.18.7 Number of retransmission RRC re-establishment requests when UE

1. context cannot be retrieved

#### A.18.7.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.REEST.RetReqNotUecontext |
| Description | This counter provides the number of the received RRC: RRC Reestablishment Request messages via F1-C which is the retransmission for each ReestabUE-Identity when UE context cannot be retrieved. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement counter is incremented by 1 whenever RRC: RRC Reestablishment Request message is received via F1-C when UE context cannot be retrieved, if RRC: RRC Reestablishment Request message of  the same ReestabUE-Identity is received for a certain period of time from the reception timing. |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.REEST.RetransReqNotUecontext |
| Measurement Object Class | NRCellCU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

1

1. A.18.8 Number of RRC re-establishment request completions for
2. retransmission RRC re-establishment requests when UE context cannot be
3. retrieved

#### A.18.8.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.REEST.RetReqCompNotUecontext |
| Description | This counter provides the number of the received RRC: RRC Reconfiguration Complete messages via F1-C which corresponds to the retransmission RRC: RRC Reestablishment Request when UE context  cannot be retrieved. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement counter is incremented by 1 whenever RRC: RRC Reconfiguration Complete message which corresponds to the  retransmission RRC: RRC Reestablishment Request is received via F1-C when UE context cannot be retrieved. |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.REEST.RetransReqCompNotUecontext |
| Measurement Object Class | NRCellCUs |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

6

### A.18.9 Number of initial RRC re-establishment requests during Voice call

1. when UE context can be retrieved

#### A.18.9.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.REEST.IniReqUecontextVoice |
| Description | This counter provides the number of the received RRC: RRC Reestablishment Request messages via F1-C which is in the first time for each ReestabUE-Identity during voice call when UE context can be retrieved. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement counter is incremented by 1 whenever RRC: RRC Reestablishment Request message is received via F1-C during voice call when UE context can be retrieved, if RRC: RRC Reestablishment Request of the same ReestabUE-Identity is not received for a certain  period of time from the reception timing. |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.REEST.IniReqUecontextVoice |
| Measurement Object Class | NRCellCU |
| Switching Technology | Packet Switched |
| Generation | 5GS |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

1

### A.18.10 Number of RRC re-establishment request completions for initial RRC

1. re-establishment requests during Voice call when UE context can be retrieved

#### A.18.10.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.REEST.IniReqCompUecontextVoice |
| Description | This counter provides the number of the received RRC: RRC Reconfiguration Complete messages via F1-C which corresponds to the initial RRC: RRC Reestablishment Request during voice call when UE  context can be retrieved. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement counter is incremented by 1 whenever RRC: RRC Reconfiguration Complete message which corresponds to the initial RRC: RRC Reestablishment Request is received via F1-C during voice call when UE context can be retrieved. |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.REEST.IniReqCompUecontextVoice |
| Measurement Object Class | NRCellCU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

5

### A.18.11 Number of retransmission RRC re-establishment requests during

1. Voice call when UE context can be retrieved

#### A.18.11.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.REEST.RetaransReqUecontextVoice |
| Description | This counter provides the number of the received RRC: RRC Reestablishment Request messages via F1-C which is the retransmission for each ReestabUE-Identity during voice call when UE context can be  retrieved. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement counter is incremented by 1 whenever RRC: RRC Reestablishment Request message is received via F1-C during voice call when UE context can be retrieved, if RRC: RRC Reestablishment  Request message of the same ReestabUE-Identity is received for a certain period of time from the reception timing. |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.REEST.RetaransReqUecontextVoice |
| Measurement Object Class | NRCellCU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

9

1. A.18.12 Number of RRC re-establishment request completions for
2. retransmission RRC re-establishment request during Voice call when UE
3. context can be retrieved

#### A.18.12.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.REEST.RetransReqCompUecontextVoice |
| Description | This counter provides the number of the received RRC: RRC Reconfiguration Complete messages via F1-C which corresponds to the retransmission RRC: RRC Reestablishment Request during voice call when UE context can be retrieved. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement counter is incremented by 1 whenever RRC: RRC Reconfiguration Complete message which corresponds to the retransmission RRC: RRC Reestablishment Request is received via F1-C during voice call when UE context can be retrieved. |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.REEST.RetaransReqCompUecontextVoice |
| Measurement Object Class | NRCellCU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

5

## A.19 Monitoring of connection status for SA

### A.19.1 Normally Released Calls

1. A.19.1.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.CONNECTSTATUS.NormalRelCalls |
| Description | This counter provides the number of the normally released calls. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by the number of the normally released calls. Normal released calls is as follows:   * received NG-AP: UE Context Release Command (Cause: Normal release or Deregister) * the expiry of a UE inactivity timer, the gNB suspend the RRC   connection |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.CONNECTSTATUS.NormalRelCalls |
| Measurement Object Class | NRCellCU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

### A.19.2 Abnormally Released Calls

#### A.19.2.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.CONNECTSTATUS.AbnormallRelCalls |
| Description | This counter provides the number of the abnormally released calls. |
| Collection Method | CC (Cumulative Counter) |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Condition | Measurement subcounter is incremented by the number of the abnormally released calls.  - Trigger timing: when gNB release the UE Context except for the Normally Released calls (A.19.1) and Another Cell HO UE  Contexts (A.19.3). |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.CONNECTSTATUS.AbnormallRelCalls |
| Measurement Object Class | NRCellCU NRCellCU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

1

### A.19.3 Another Cell HO UE Contexts

#### A.19.3.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.CONNECTSTATUS.AnotherCellHoUes |
| Description | This counter provides the number of the UE Contexts which has transferred to another cell. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by the number of the UE Contexts which has transferred to another cell. Another Cell released call is as follows:   * received Xn-AP: UE Context Release (Inter gNB-CU HO w/ Xn, RRC Connection Re-establishment (Inter gNB-CU)) * received NG-AP: UE Context Release Command (Inter gNB-CU HO w/o Xn, Inter-RAT HO to LTE, EPS fallback) * received RRC: RRC Reconfiguration Complete (Intra gNB-DU Inter-cell HO, RRC Connection Re-establishment (Intra gNB-DU   Inter-cell))   * received F1-AP: UE Context Release Command (Intra gNB-CU Inter gNB-DU HO, RRC Connection Re-establishment (Intra gNB-   CU Inter gNB-DU)) |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.CONNECTSTATUS.AnotherCellHoUes |
| Measurement Object Class | NRCellCU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

4

### A.19.4 Normally Released Calls during voice call

#### A.19.4.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.CONNECTSTATUS.NormalRelCallsVoice |
| Description | This counter provides the number of the normally released calls during voice call. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by the number of the normally released calls during voice call. Normal released calls are as follows:  - received NG-AP: UE Context Release Command (Cause: Normal  release or Deregister) |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
|  | - the expiry of a UE inactivity timer, the gNB suspend the RRC  connection |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.CONNECTSTATUS.NormalRelCallsVoice |
| Measurement Object Class | NRCellCU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

1

### A.19.5 Abnormally Released Calls during voice call

#### A.19.5.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.CONNECTSTATUS.AbnormalRelCallsVoice |
| Description | This counter provides the number of the abnormally released calls during voice call. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by the number of the abnormally released calls during voice call.  - Trigger timing: when gNB release the UE Context except for the Normally Released calls (A.19.4) and Another Cell HO UE  contexts (A.19.6) during voice call. |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.CONNECTSTATUS.AbnormalRelCallsVoice |
| Measurement Object Class | NRCellCU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

4

### A.19.6 Another Cell HO UE Contexts during voice call

#### A.19.6.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.CONNECTSTATUS.AnotherCellHoUesVoice |
| Description | This counter provides the number of the UE Contexts which has transferred to another cell during voice call. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by the number of the UE Contexts which has transferred to another cell during voice call. Another Cell released calls are as follows:   * received Xn-AP: UE Context Release (Inter gNB-CU HO w/ Xn, RRC Connection Re-establishment (Inter gNB-CU)) * received NG-AP: UE Context Release Command (Inter gNB-CU HO w/o Xn, Inter-RAT HO to LTE, EPS fallback) * received RRC: RRC Reconfiguration Complete (Intra gNB-DU Inter-cell HO, RRC Connection Re-establishment (Intra gNB-DU   Inter-cell))   * received F1-AP: UE Context Release Command (Intra gNB-CU Inter gNB-DU HO, RRC Connection Re-establishment (Intra gNB-   CU Inter gNB-DU)) |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.CONNECTSTATUS.AnotherCellHoUesVoice |
| Measurement Object Class | NRCellCU |
| Switching Technology | Packet Switched |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

1

## A.20 Monitoring of procedure for NR-DC

### A.20.1 Number of S-NG-RAN Node Addition procedure attempted for each

1. Cell

#### A.20.1.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.NRDCPROCEDURE.SnAddAttemptCell |
| Description | This counter provides the number of the transmitted Xn-AP: S-NODE ADDITION REQUEST ACKNOWLEDGE message. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement counter is incremented by 1 whenever Xn-AP: S-NODE ADDITION REQUEST ACKNOWLEDGE message is transmitted as  PSCell. |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.NRDCPROCEDURE.SnAddAttemptCell |
| Measurement Object Class | NRCellCU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

6

### A.20.2 Number of S-NG-RAN Node Addition procedure successfully for each

1. Cell

#### A.20.2.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.NRDCPROCEDURE.SnAddSuccessCell |
| Description | This counter provides the number of the completed S-NG-RAN Node addition Procedure. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement counter is incremented by 1 whenever S-NG-RAN Node addition procedure is completed as PSCell (i.e. Xn-AP: S-NODE  RECONFIGURATION COMPLETE message (SN addition complete) is received and RACH processing with UE Context is completed). |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.NRDCPROCEDURE.SnAddSuccessCell |
| Measurement Object Class | NRCellCU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

10

### A.20.3 Number of S-NG-RAN Node Addition procedure attempted for each

1. neighbour gNB

#### A.20.3.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.NRDCPROCEDURE.SnAddAttemptNeiGnb |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Description | This counter provides the number of the transmitted Xn-AP: S-NODE ADDITION REQUEST ACKNOWLEDGE messages.  This counter is split into subcounters per neighbour gNB. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by 1 whenever Xn-AP: S- NODE ADDITION REQUEST ACKNOWLEDGE message is  transmitted when the gNB configured by the message is group of subcounter.*neighbourgNB.* |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.NRDCPROCEDURE.SnAddAttemptNeiGnb.*neighbourgNB* where  *neighbourgNB* is neighbour gNB index: 0: #0  1: #1  ...  63: #63 |
| Measurement Object Class | NRCellCU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

1

### A.20.4 Number of S-NG-RAN Node Addition procedure successfully for each

1. neighbour gNB

#### A.20.4.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.NRDCPROCEDURE.SnAddSuccessNeiGnb |
| Description | This counter provides the number of the completed S-NG-RAN Node addition Procedure.  This counter is split into subcounters per neighbour gNB. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement counter is incremented by 1 whenever S-NG-RAN Node addition procedure is completed (i.e. Xn-AP: S-NODE RECONFIGURATION COMPLETE message (SN addition complete) is  received and RACH processing with UE Context is completed) when the gNB configured by the message is group of subcounter.*neighbourgNB.* |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.NRDCPROCEDURE.SnAddSuccessNeiGnb.*neighbourgNB* where  *neighbourgNB* is neighbour gNB index: 0: #0  1: #1  ...  63: #63 |
| Measurement Object Class | NRCellCU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

5

### each Cell

#### A.20.5.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.NRDCPROCEDURE.SnModAttemptCell |
| Description | This counter provides the number of the received Xn-AP: S-NODE MODIFICATION REQUEST messages or transmitted Xn-AP: S-NODE MODIFICATION REQUIRED messages. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by 1 whenever Xn-AP: S- NODE MODIFICATION REQUEST message is received or Xn-AP: S- NODE MODIFICATION REQUIRED message is transmitted as PSCell. Double counting is not performed if the procedure is changed to the MN initiated SN Modification procedure after transmitted Xn-AP: S-NODE MODIFICATION REQUIRED message (e.g. Measurement gap Coordination (SN initiated)).  This subcounter will not be incremented if received Xn-AP: S-NODE MODIFICATION REQUEST message which True is set for SCG Configuration Query IE. |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.NRDCPROCEDURE.SnModAttemptCell |
| Measurement Object Class | NRCellCU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

4

### A.20.6 Number of S-NG-RAN Node modification procedure successfully for

1. each Cell

#### A.20.6.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.NRDCPROCEDURE.SnModSuccessCell |
| Description | This counter provides the number of the completed S-NG-RAN Node modification Procedure. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by 1 whenever SN Modification procedure is completed as PSCell (i.e. Xn-AP: S-NODE RECONFIGURATION COMPLETE message (SN modification complete) is received or Xn-AP: S-NODE MODIFICATION CONFIRM is received and RACH processing with UE Context is completed) |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.NRDCPROCEDURE.SnModSuccessCell |
| Measurement Object Class | NRCellCU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

8

### A.20.7 Number of S-NG-RAN Node modification procedure attempted for

1. each neighbour gNB

#### A.20.7.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.NRDCPROCEDURE.SnModAttemptNeiGnb |
| Description | This counter provides the number of the received Xn-AP: S-NODE MODIFICATION REQUEST messages or transmitted Xn-AP: S-NODE MODIFICATION REQUIRED messages.  This counter is split into subcounters per neighbour gNB. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by 1 whenever Xn-AP: S- NODE MODIFICATION REQUEST message is received or Xn-AP: S- NODE MODIFICATION REQUIRED message is transmitted, when the gNB configured by the message is group of subcounter.*neighbourgNB.* Double counting is not performed if the procedure is changed to the MN initiated SN Modification procedure after transmitted Xn-AP: S-NODE MODIFICATION REQUIRED message (e.g. Measurement gap Coordination (SN initiated)).  This subcounter will not be incremented if received Xn-AP: S-NODE MODIFICATION REQUEST message which True is set for SCG Configuration Query IE. |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.NRDCPROCEDURE.SnModAttemptNeiGnb.*neighbourgNB* where  *neighbourgNB* is neighbour gNB index: 0: #0  1: #1  ...  63: #63 |
| Measurement Object Class | NRCellCU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

4

### A.20.8 Number of S-NG-RAN Node modification procedure successfully for

1. each neighbour gNB

#### A.20.8.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.NRDCPROCEDURE.SnModSuccessNeiGnb |
| Description | This counter provides the number of the completed S-NG-RAN Node modification Procedure.  This counter is split into subcounters per neighbour gNB. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by 1 whenever SN Modification procedure is completed (i.e. Xn-AP: S-NODE RECONFIGURATION COMPLETE message (SN modification complete) is received or Xn-AP: S-NODE MODIFICATION CONFIRM is received and RACH processing with UE Context is completed) when the gNB configured by  the message is group of subcounter.*neighbourgNB.* |
| Measurement Result | Integer number (U32) |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Type | OR.NRDCPROCEDURE.SnModSuccessNeiGnb.*neighbourgNB* where  *neighbourgNB* is neighbour gNB index: 0: #0  1: #1  ...  63: #63 |
| Measurement Object Class | NRCellCU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

1

### A.20.9 Number of S-NG-RAN Node Release procedure attempted for each

1. Cell

#### A.20.9.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.NRDCPROCEDURE.SnRelAttemptCell |
| Description | This counter provides the number of the received Xn-AP: S-NODE RELEASE REQUIRED messages or transmitted Xn-AP: S-NODE RELEASE REQUEST messages. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by 1 whenever Xn-AP: S- NODE RELEASE REQUIRED message is received or Xn-AP: S-NODE RELEASE REQUEST message is transmitted as PSCell. |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.NRDCPROCEDURE.SnRelAttemptCell |
| Measurement Object Class | NRCellCU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

5

### A.20.10 Number of S-NG-RAN Node Release procedure successfully for

1. each Cell

#### A.20.10.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.NRDCPROCEDURE.SnRelSuccessCell |
| Description | This counter provides the number of the completed S-NG-RAN Node Release Procedure. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by 1 whenever SN Release procedure is completed as PSCell (i.e. Xn-AP: UE CONTEXT RELEASE message is transmitted |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.NRDCPROCEDURE.SnRelSuccessCell |
| Measurement Object Class | NRCellCU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

1

### A.20.11 Number of S-NG-RAN Node Release procedure attempted for each

1. neighbour gNB

#### A.20.11.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.NRDCPROCEDURE.SnRelAttemptNeiGnb |
| Description | This counter provides the number of the received Xn-AP: S-NODE RELEASE REQUIRED messages or transmitted Xn-AP: S-NODE RELEASE REQUEST messages.  This counter is split into subcounters per neighbour gNB. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by 1 whenever Xn-AP: S- NODE RELEASE REQUIRED message is received or Xn-AP: S-NODE RELEASE REQUEST message is transmitted, when the gNB configured by the message is group of subcounter.*neighbourgNB.* |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.NRDCPROCEDURE.SnRelAttemptNeiGnb.*neighbourgNB* where  *neighbourgNB* is neighbour gNB index: 0: #0  1: #1  ...  63: #63 |
| Measurement Object Class | NRCellCU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

5

### A.20.12 Number of S-NG-RAN Node Release procedure successfully for

1. each neighbour gNB

#### A.20.12.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.NRDCPROCEDURE.SnRelSuccessNeiGnb |
| Description | This counter provides the number of the completed S-NG-RAN Node Release Procedure.  This counter is split into subcounters per neighbour gNB. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by 1 whenever SN Release procedure is completed (i.e. Xn-AP: UE CONTEXT RELEASE message is transmitted) |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.NRDCPROCEDURE.SnRelSuccessNeiGnb.*neighbourgNB* where  *neighbourgNB* is neighbour gNB index: 0: #0  1: #1  ...  63: #63 |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Object Class | NRCellCU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

1

### A.20.13 Number of SCGFailureInformation received

#### A.20.13.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.NRDCPROCEDURE.NumSCGFailInfoRec |
| Description | This counter provides the number of SCGFailureInformation received. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by 1 whenever RRC: SCG Failure Information message is received. |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.NRDCPROCEDURE.NumFailInfoRec |
| Measurement Object Class | NRCellCU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

4

## A.21 Monitoring of CA for SA

### A.21.1 Number of SCell Addition procedure attempted

#### A.21.1.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.SACAPROCEDURE.ScellAddAttempt |
| Description | This counter provides the number of the attempted SCell addition procedure. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by 1 whenever Special Cell decides to perform SCell addition procedure by the following trigger.   * received RRC: Measurement report for SCell addition. * SCell addition triggered internal the gNB other than above trigger. |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.SACAPROCEDURE.ScellAddAttempt |
| Measurement Object Class | NRCellCU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

8

### A.21.2 Number of SCell Addition procedure successfully

#### A.21.2.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.SACAPROCEDURE.ScellAddSuccess |
| Description | This counter provides the number of the completed SCell addition |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
|  | procedure. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by 1 whenever Special Cell detects successful SCell addition procedure by the received following messages.  - received RRC: RRC Reconfiguration Complete for SCell addition. |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.SACAPROCEDURE.ScellAddSuccess |
| Measurement Object Class | NRCellCU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

1

### A.21.3 Number of SCell Change procedure attempted

#### A.21.3.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.SACAPROCEDURE.ScellChangeAttempt |
| Description | This counter provides the number of the attempted SCell change procedure. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by 1 whenever Special Cell decides to perform SCell change procedure by the following trigger.   * received RRC: Measurement report for SCell change. * SCell change triggered internal the gNB other than above trigger. |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.SACAPROCEDURE.ScellChangeAttempt |
| Measurement Object Class | NRCellCU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

4

### A.21.4 Number of SCell Change procedure successfully

#### A.21.4.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.SACAPROCEDURE.ScellChangeSuccess |
| Description | This counter provides the number of the completed SCell change procedure. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by 1 whenever Special Cell detects successful SCell change procedure by the received following messages.  - received RRC: RRC Reconfiguration Complete for SCell change. |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.SACAPROCEDURE.ScellChangeSuccess |
| Measurement Object Class | NRCellCU |
| Switching Technology | Packet Switched |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

1

### A.21.5 Number of SCell Deletion procedure attempted

#### A.21.5.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.SACAPROCEDURE.ScellDeletionAttempt |
| Description | This counter provides the number of the attempted SCell deletion procedure. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by 1 whenever Special Cell decides to perform SCell deletion procedure by the following trigger.   * received RRC: Measurement report for SCell deletion. * SCell deletion triggered internal the gNB other than above trigger. |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.SACAPROCEDURE.ScellDeletionAttempt |
| Measurement Object Class | NRCellCU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

4

### A.21.6 Number of SCell Deletion procedure successfully

#### A.21.6.1 Performance Counter Table

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Measurement Name | OR.SACAPROCEDURE.ScellDeletionSuccess |
| Description | This counter provides the number of the completed SCell deletion procedure. |
| Collection Method | CC (Cumulative Counter) |
| Condition | Measurement subcounter is incremented by 1 whenever Special Cell detects successful SCell deletion procedure by the received following messages.  - received RRC: RRC Reconfiguration Complete for SCell deletion. |
| Measurement Result | Integer number (U32) |
| Measurement Type | OR.SACAPROCEDURE.ScellDeletionSuccess |
| Measurement Object Class | NRCellCU |
| Switching Technology | Packet Switched |
| Generation | 5GS |
| Purpose | Network Operator's Traffic Engineering Community |

</div>

7

8

# 1 Revision History

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **Date** | **Revision** | **Author** | **Description** |
| 2022.03.25 | 03.00 | O-RAN-WG5 | Draft for voting |
| 2022.07.21 | 04.00 | O-RAN-WG5 | Updates to v03.00:   * Additional clarification on alignment with O-RAN O1 specification document * Editorial fixes |
| 2023.03.08 | 05.00 | O-RAN-WG5 | Updates to v04.00:   * Updates to Performance counters in Annex A * Addition of information model of CuCountGroup * Editorial fixes |
| 2023.07.06 | 06.00 | O-RAN-WG5 | Updates to v05.00:   * Editorial modification to align with ODR * Clarifications and corrections for PM counters in Annex A |
| 2023.11.01 | 07.00 | O-RAN-WG5 | Updated to v06.00:   * Removed description of rpc: list-available-files * Added O-CU-CP QoS IM * Clarification on counters defined in A.10,1 to A.10.12,   A.11.1 to A.11.8, A14.1 to A14.12, A.15.1 to A.15.20,  A.16.3 to A.16.5, A.19.2 to A.19.3  - Addition of new counters in A.1.11, A.1.12, A.3.3, A.3.4, A.11.9 to A.11.15, A.11.21 to A.11.31, A.16.6 to  A.16.10, A.17.3 to A.17.11, A.18.9 to A.18.12, A.19.4  to A.19.6, A.20.1 to A.20.13, A.21.1 to A.21.6  - Minor editorial changes |

</div>

2
---

- View in [GitHub Mode]({{site.github_page_url}}/O-RAN.WG5.O-CU-O1.0-R003-v07.00.docx.md).
- Go back to [Table of Contents]({{site.baseurl}}/).
- Download the [Original Document]({{site.download_url}}/O-RAN.WG5.O-CU-O1.0-R003-v07.00.docx).

---

* toc
{:toc}
