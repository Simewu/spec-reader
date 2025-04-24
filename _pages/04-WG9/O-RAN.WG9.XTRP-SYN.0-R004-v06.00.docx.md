---
title: O-RAN.WG9.XTRP-SYN.0-R004-v06.00.docx.md
author: O-RAN Alliance
layout: post
---

- View in [GitHub Mode]({{site.github_page_url}}/O-RAN.WG9.XTRP-SYN.0-R004-v06.00.docx.md).
- Go back to [Table of Contents]({{site.baseurl}}/).
- Download the [Original Document]({{site.download_url}}/O-RAN.WG9.XTRP-SYN.0-R004-v06.00.docx).

---

* toc
{:toc}

---

### ![webwxgetmsgimg (7).jpeg]({{site.baseurl}}/assets/images/9c69df009b87.jpg)O-RAN.WG9.XTRP-SYN.0-R004-v06.00

Technical Specification

.

**O-RAN Open Xhaul Transport Working Group 9 Synchronization Architecture and Solution Specification**

Copyright (C) 2024 by the O-RAN ALLIANCE e.V.

The copying or incorporation into any other work of part or all of the material available in this specification in any form without the prior written permission of O-RAN ALLIANCE e.V. is prohibited, save that you may print or download extracts of the material of this specification for your personal use, or copy the material of this specification for the purpose of sending to individual third parties for their information provided that you acknowledge O-RAN ALLIANCE as the source of the material and that you inform the third party that these conditions apply to them and that they must comply with them.

O-RAN ALLIANCE e.V., Buschkauler Weg 27, 53347 Alfter, Germany

1

# 1 Revision History

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **Date** | **Revision** | **Editor** | **Description** |
| 2021/03/01 | v01.00 | Kamatchi Gopalakrishnan | First revision of Timing and Synchronization Architecture and Solution document describing synchronization profiles, clock types, design consideration, time error budget calculation and network use cases. |
| 2021/11/12 | v02.00 | Kamatchi Gopalakrishnan | Second revision of this document covers additional timing solution use cases, resiliency, redundancy, and timing over PON systems. |
| 2022/07/20 | v03.00 | Kamatchi Gopalakrishnan | This revision of the document covers sync security considerations, LLS C2/C3 mixed topology models, some updates and clarifications added for some existing use cases. |
| 2023/07/06 | v4.00 | Kamatchi Gopalakrishnan | This revision of the document includes Shared O-RU uses cases for LLS-C3, Updated topology diagram and text for resiliency & failover uses cases and additional cases for security consideration and mitigation models |
| 2024/03/15 | v5.00 | Kamatchi Gopalakrishnan | This revision of the document includes End-to- end Sync monitoring framework using Telemetry streaming in Annex H. |
| 2024/11/21 | v6.00 | Kamatchi Gopalakrishnan | This revision of the document includes Yang data model for End-to-end Sync monitoring framework using Telemetry streaming in Annex H |

</div>

2

1

## 1.1 Contributors

1. Editor: Kamatchi Gopalakrishnan 4

5 Authors in alphabetical order: 6

7

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Author** | **Company** |
| Lujing Cai | AT&T |
| Francois Fredricx | Nokia |
| Kamatchi Gopalakrishnan | Juniper Networks |
| Aashima Raturi | Juniper Networks |
| Ramana Reddy | Altiostar Networks |
| Satheesh Kumar S | Juniper Networks |
| Sulabh Mohan Sharma | Juniper Networks |
| Krzysztof Szarkowicz | Juniper Networks |
| Karim Traore | Microchip |
| Reza Vaez-Ghaemi | Viavi Solution |
| Nader Zein | NEC |

</div>

8

# 2 Contents

1. 1 Revision History 2
2. 1.1 Contributors 3
3. 3 Scope 6
4. 4 References 7
5. 5 Definitions and abbreviations 9
6. 5.1 Definitions 9
7. 5.2 Abbreviations 9
8. 6 Network Timing and Synchronization Technology Overview 11
9. 6.1 Building blocks of network-based synchronization 11
10. 6.1.1 Synchronous Ethernet and Enhanced Synchronous Ethernet 11
11. 6.1.2 PRC and clocks 12
12. 6.1.3 PRTC and Grandmaster clocks 12
13. 6.1.4 APTS 15
14. 6.1.5 Boundary clocks, Ordinary clocks, and Transparent clocks 16
15. 6.2 Timing profiles 18
16. 6.2.1 Full Timing Support (ITU-T G.8275.1) 18
17. 6.2.2 Partial Timing Support (ITU-T G.8275.2) 19
18. 6.2.3 Assisted Partial Timing Support (ITU-T G.8275.2) 20
19. 6.2.4 Profile comparison table with important attributes 21
20. 6.2.5 Inter-working (IWF) function 22
21. 6.2.6 A-BTCA algorithm and PTP attributes to consider 23
22. 6.3 Synchronization time error budgeting model 24
23. 6.3.1 Factors to be considered for network synchronization budgeting 24
24. 6.3.2 Time Error budget calculation 29
25. 6.3.3 Different ORAN config models with Time Error budget 33
26. 7 Synchronization network models 40
27. 7.1 Factors to be considered for synchronization network design 40
28. 7.1.1 Source of clock and location of clock source 40
29. 7.1.2 GM/clock source resiliency 40
30. 7.1.3 Holdover requirements 40
31. 7.1.4 Usage of packet rates 41
32. 7.1.5 Network Topology model 42
33. 7.1.6 Number of hops 45
34. 7.1.7 Asymmetry 47
35. 7.1.8 PTP packet transport 49
36. 7.1.9 Selection of timing profile 50
37. 7.2 GM deployment models 51
38. 7.2.1 Centralized GM network model 51
39. 7.2.2 Distributed GM network model 52
40. 7.2.3 Fully distributed GM/PRTC network model 52
41. 7.2.4 Comparison of Centralized versus Distributed GM network model 53
42. 8 Timing Use cases and Solution Options 54
43. 8.1 Transport network topology 54
44. 8.1.1 C-RAN Architecture with non-collocated O-RU and O-DU 54
45. 8.1.2 C-RAN Architecture with O-RU and O-DU collocated at cell site 56
46. 8.1.3 Shared O-RU 56
47. 8.2 Timing Solution Options 59
48. 8.2.1 Timing Solutions for C-RAN Architecture with non-collocated O-RU and O-DU 59
49. 8.2.2 Timing Solutions for C-RAN Architecture with O-RU and O-DU collocated at cell site 67
50. 8.2.3 Timing Solutions for Shared O-RU 68
51. 8.2.4 Timing/Synchronization Redundancy & Resiliency 70
52. Annex A Microwave and mmWave radio transport 92
53. A.1 Conformance to IEEE1588 and PTP profiles 92
54. A.2 Impact of Radio channel bandwidth 92
55. A.3 Impact of interference 93
56. A.4 Impact of dynamic capacity variations 93
57. A.5 Impact of Band and Carrier Aggregation 93
58. A.6 Point to Multi Point (PMP) radio system 93
59. A.7 Radio Interface with asymmetry latency 94
60. A.8 Holdover Spec of BC function on the wireless transport node 94
61. A.9 Considering of characteristics in multiple hops 94
62. Annex B Radio operation when synchronization is lost 96
63. B.1 Potential impacts due to sync loss on O-RUs 96
64. B.1.1 TAE errors beyond the allowed range during sync loss 96
65. B.1.2 Impact on Handover/Handoff 96
66. B.2 Potential impacts due to sync loss on O-DU 97
67. B.2.1 O-DU Sync loss in LLS-C3 topology 97
68. B.2.2 O-DU Sync loss in LLS-C1/C2 topology 97
69. B.3 Best Practices 98
70. Annex C QoS Considerations for PTP packets 99
71. Annex D R-PHY (DOCSIS over Ethernet) 104
72. Annex E Synchronization over TDM PON 105
73. E.1 Short introduction to TDM PON 105
74. E.2 Specifics with TDM PON (compared to point-point links) for frequency synchronization 107
75. E.3 Specifics with TDM PON (compared to point-point links) for time synchronization 107
76. E.3.1 Different use cases and related requirements 107
77. E.3.2 TDM PON capabilities 113
78. E.3.3 Overview of TDM PON support use cases 115
79. Annex F Multi-TDD operator considerations 116
80. Annex G Security Considerations 117
81. G.1 Architectural Redundancy Models 117
82. G.1.1 Network model with no sync redundancy 117
83. G.1.2 Network model with sync redundancy 117
84. G.1.3 Architecture model where O-RUs with single network interface 118
85. G.1.4 Architecture Redundancy for PTP operation for various PTP Security Attacks 119
86. Annex H: End-to-end (e2e) Sync Monitoring using the Centralized Monitoring System 127
87. H.1 Introduction 127
88. H.2 Various elements of e2e sync monitoring 128
89. H.2.1 Nodes 128
90. H.2.2 The Centralized Monitoring System (CMS) 128
91. H.3 CMS Implementation 128
92. H.3.1 Datasets reference 129
93. H.3.2 Static Analysis 129
94. H.3.3 Dynamic Analysis 131
95. H.4 Telemetry Datasets 132
96. H.4.1 High Level Datasets 132
97. H.4.2 Detailed attributes/datasets 132
98. H.4.3 Yang Data Model reference 145
99. H.4.4 Yang Tree 146

49

1. 3 Scope
2. The document is intended to describe best practices for O-RAN Architecture and Solution for X-haul timing
3. & synchronization. Beyond the solutions described in this document, other Architectures and Solutions may
4. be adequate for X-haul timing & synchronization and can be considered in future versions of this document.
5. As far as possible it tries to make no assumptions, rather define overall Open X-haul synchronization solution
6. and architecture model, to enable the operators to understand different synchronization options and deployment
7. models and help them to come up with right network sync model that can support the different 5G services,
8. the different radio architectures. 9
9. The section 6 concentrates on a general description of timing and synchronization technology, different options
10. using different timing profiles with recommendations. The next section 7 describes the different network
11. models, synchronization budgeting, right use of class of devices for both boundary and grandmaster clocks,
12. solution guidelines for network operations including holdover, redundancy etc. The section 8 describes about
13. timing solution and use cases, redundancy and resiliency network models. The annex section describes other
14. technology aspects like, Microwave, QoS, security, PON etc. 16
15. This document makes explicit recommendations using keyword "Reco" to insist what is officially being
16. recommended by this specification. 19
17. This document uses information and requirements published by O-RAN, 3GPP, IEEE, ITU-T, IETF and many
18. other standard bodies and industry associations. 22
19. What is not covered in this document:
20. ? This document shall not change the actual technology and terminologies related synchronization used
21. on various standards - ITU-T, IEEE, IETF, 3GPP and other. 26
22. The major changes of this revision of the document listed below:
23. ? The Entire spec is updated for alternative inclusive terminologies for "master" and "slave". Used
24. "timeTransmitter" in place of "master" and "timeReceiver" in place of "slave" as per IEEE 1588g
25. [45] and ITU-T G.8275 [41] Appendix XII.
26. o In references section, these terminologies are not changed until the ITU-T specification
27. updates the title with inclusive terminologies.
28. ? Many use case topology figures updated for Master and Slave terminologies.
29. ? A-BMCA is changed to A-BTCA across this specification including pictures.
30. ? Annex H updates:
31. o Clear and detailed description added for each of the Static analysis requirements, including
32. implementation details with associated datasets usage.
33. o Updated Table H.4-1, Table H.4-2 & Table H.4-3 with updated attributes and details.
34. o Table H.4-2 is modified to capture the datasets from the IEEE and ITU-T standards. Earlier
35. version of the specification (5.0) documented with Yang Attributes.
36. o Added a section H.4.2.1 Datasets detailed description to describe all the new datasets
37. defined by this sync specification for End-to-end sync monitoring framework.
38. o New section H.4.3 Yang Data Model reference added to capture the Yang Data model
39. reference.
40. o New section H.4.4 Yang Tree added to capture entire Yang Tree is being published as part
41. of this specification.

47

48

49

50

51

# 4 References

* 1. The following documents contain provisions which, through reference in this text, constitute provisions of
  2. the present document.
  3. - References are either specific (identified by date of publication, edition number, version number, etc.)
  4. or non-specific.
  5. - For a specific reference, subsequent revisions do not apply.
  6. - For a non-specific reference, the latest version applies. In the case of a reference to a 3GPP document
  7. (including a GSM document), a non-specific reference implicitly refers to the latest version of that
  8. document in Release 15.

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| 10 | [1] | ITU-T G.8275.1: "Precision time protocol telecom profile for phase/time synchronization with |
| 11 |  | full timing support from the network (11/2022)" |
| 12 | [2] | ITU-T G.8273.2: Recommendation ITU-T G.8273.2 (10/20) Timing characteristics of telecom |
| 13 |  | boundary clocks and telecom time slave clocks for use with full timing support from the network |
| 14 | [3] | ITU-T G.8275.2: "Precision time Protocol Telecom Profile for time/phase synchronization with |
| 15 |  | partial timing support from the network" |
| 16 | [4] | ITU-T G.8273.3: "Timing characteristics of telecom transparent clocks" |
| 17 | [5] | ITU-T G.8272: "Timing characteristics of primary reference time clocks" |
| 18 | [6] | ITU-T G.8272.1: "Timing characteristics of enhance primary reference time clocks" |
| 19 | [7] | ITU-T G.8271: Recommendation ITU-T G.8271 (03/20) Time and phase synchronization |
| 20 |  | aspects of telecommunication networks |
| 21 | [8] | ITU-T G.8271.1: Recommendation ITU-T G.8271.1 (03/20) Network limits for time |
| 22 |  | synchronization in packet networks with full timing support from the network |
| 23 | [9] | ITU-T G.8271.2: "Network limits for time synchronization in packet networks with partial |
| 24 |  | timing support" |
| 25 | [10] | ITU-T G.8265.1: "Precision time protocol telecom profile for frequency synchronization" |
| 26 | [11] | ITU-T G.8265: "Architecture and requirements for packet-based frequency delivery" |
| 27 | [12] | ITU-T G.8264: "Distribution of timing information through packet networks" |
| 28 | [13] | ITU-T G.8263: "Timing characteristics of packet-based equipment clocks" |
| 29 | [14] | ITU-T G.8262: "Timing characteristics of a synchronous equipment slave clock" |
| 30 | [15] | ITU-T G.8262.1: "Timing characteristics of enhanced synchronous equipment slave clock" |
| 31 | [16] | ITU-T G.8261: "Timing and synchronization aspects in packet networks" |
| 32 | [17] | ITU-T G.8260: "Definitions and terminologies for synchronization in packet networks" |
| 33 | [18] | ITU-T G.8251: "The control of jitter and wander within the optical transport network (OTN)" |
| 34 | [19] | ITU-T G.781: "Synchronization layer functions" |
| 35 | [20] | IEEE 1588v2: "Precision Clock Synchronization Protocol for Networked Measurement and |
| 36 |  | Control Systems |
| 37 | [21] | IETF RFC 8200: "Internet Protocol, Version 6 (IPv6) Specification" |
| 38 | [22] | IETF RFC 4443: "Internet Control Message Protocol (ICMPv6) for the Internet Protocol |
| 39 |  | Version 6 (IPv6) Specification" |
| 40 | [23] | IEEE 802.1Q-2018: "IEEE Standard for Local and metropolitan area networks-- Bridges and |
| 41 |  | Bridged Networks" |
| 42 | [24] | IETF RFC 2474: "Definition of the Differentiated Services Field (DS Field) in the IPv4 and IPv6 |
| 43 |  | Headers" |
| 44 | [25] | IETF RFC768: "User Datagram Protocol" |
| 45 | [26] | 3GPP TS 33.117 V16.2.0: "Catalogue of general security assurance requirements (Release 16)" |
| 46 | [27] | IEEE 802.3-2018: "IEEE Standard for Ethernet" |
| 47 | [28] | IETF RFC 791: "INTERNET PROTOCOL" |
| 48 | [29] | IEEE 802.1CMde: Time-Sensitive Networking for Fronthaul Amendment: Enhancements to |
| 49 |  | Fronthaul Profiles to Synchronization, and Syntonization Standards Networking for Fronthaul, |
| 50 |  | --Support New Fronthaul Interface, July 26, 2019 |
| 51 | [30] | IEEE 1914.1TM D3.0, Draft Fronthaul Transport Networks, November 2018. |

</div>

1. [31] NGMN 5G RAN CU-DU network architecture, transport options and dimensioning, version 1.0

2 12 April 2019)

3 [32] O-RAN WG9 Technical Specifications: "X-Haul Packet switched architecture and solutions

4 v1.0"

5 [33] O-RAN, WG4, Open Fronthaul Interface, Control, User and Synchronization Plane Specification

6 v13.0

1. [34] ITU-T G.811: Recommendation ITU-T G.811 (09/97) Timing characteristics of primary
2. reference clocks
3. [35] ITU-T G.812: Recommendation ITU-T G.812 (06/04) Timing requirements of slave clocks
4. suitable for use as node clocks in synchronization networks
5. [36] RNTF: Resilient Navigation and Timing Foundation (RNTF), "Prioritizing Dangers to the
6. United States from Threats to GPS: Ranking Risks and Proposed Mitigations," 2016, White
7. Paper, 2, [https://rntfnd.org/wp-content/uploads/12-7-Prioritizing-Dangers-to-US-fm-Threats-to-](https://rntfnd.org/wp-content/uploads/12-7-Prioritizing-Dangers-to-US-fm-Threats-to-GPSRNTFoundation.pdf)
8. [GPSRNTFoundation.pdf.](https://rntfnd.org/wp-content/uploads/12-7-Prioritizing-Dangers-to-US-fm-Threats-to-GPSRNTFoundation.pdf)
9. [37] ITU-T G.8272.1: Recommendation ITU-T G.8272.1 (11/16) Timing characteristics of enhanced
10. primary reference clocks

17 [38] ITU-T G.8271.2 Amd2: Recommendation ITU-T G.8271.2 (08/17) Amendment 2 (11/18)

1. Network limits for time synchronization in packet networks with partial timing support from the
2. network
3. [39] ITU-T G.8273.4: Recommendation ITU-T G.8273 (03/20) Timing characteristics of telecom
4. boundary clocks and telecom time slave clocks for use with partial timing support from the
5. network
6. [40] ITU-T G.671: Recommendation ITU-T G.671 (08/19) Transmission characteristics of optical
7. components and subsystems
8. [41] ITU-T G.8275: Recommendation ITU-T G.8275 (01/24) Architecture and requirements for
9. packet-based time and phase distribution
10. [42] IEEE 1588-2019: Standard for a Precision Clock Synchronization Protocol for Networked
11. Measurement and Control Systems
12. [43] ITU-T G.7721.1: Recommendation G.7721.1 (2022) Amd.1: Data model of synchronization
13. management
14. [44] Yang modules for IEEE Std 1588e-2024
15. [https://github.com/YangModels/yang/blob/main/standard/ieee/published/1588/ieee1588-ptp-](https://github.com/YangModels/yang/blob/main/standard/ieee/published/1588/ieee1588-ptp-tt.yang)
16. [tt.yang](https://github.com/YangModels/yang/blob/main/standard/ieee/published/1588/ieee1588-ptp-tt.yang)
17. [45] IEEE 1588g-2022: IEEE Standard for a Precision Clock Synchronization Protocol for
18. Networked Measurement and Control Systems - Amendment 2: Master-Slave Optional
19. Alternative Terminology

37

1

# 5 Definitions and abbreviations

## 5.1 Definitions

1. The key words "**SHALL**", "**SHALL NOT**", "**SHOULD**", "**SHOULD NOT**", "**MAY**", and "**OPTIONAL**" in
2. this document are to be interpreted as described in IETF RFC 2119 [25]. All key words must be in upper case,
3. bold text.
4. Items that are **REQUIRED** (contain the words **SHALL** or **SHALL NOT**) will be labelled as **[Rx]** for required.
5. Items that are **RECOMMENDED** (contain the words **SHOULD** or **SHOULD NOT**) will be labelled as **[Dx]**
6. for desirable. Items that are **OPTIONAL** (contain the words **MAY** or **OPTIONAL**) will be labelled as **[Ox]**
7. for optional**.**
8. Items, if supported, are not meant to be active at all times, but should be available for use. Their state (active
9. or not active) should be based on configuration.

## 5.2 Abbreviations

1. Abbreviations defined in this document take precedence over the definition of 3GPP
2. AF Assured Forwarding
3. APTS Assisted Partial Timing Support
4. BGP Border Gateway Protocol
5. BTCA Best TimeTransmitter Clock Algorithm (BTCA referred as A-BTCA in this specification)
6. BNC Bayonet Neill-Concelman
7. CDC Central Data Center
8. cTE Constant Time Error
9. CU-P Control/User Plane
10. CPRI Common Public Radio Interface
11. C-RAN Cloud Radio Access Network
12. dTE Dynamic Time Error
13. DSCP Differentiated Services Codepoint
14. DL Downlink
15. D-RAN Distributed Radio Access Network
16. eCPRI enhanced Common Public Radio Interface
17. EEC Ethernet Equipment Clock
18. eEEC enhanced Ethernet Equipment Clock
19. EF Expedited Forwarding
20. ePRTC enhanced Primary Reference Time Clock
21. eSyncE enhanced Synchronous Ethernet
22. ESMC Ethernet Synchronization Message Channel
23. FFS For Further Study
24. FTS Full Timing Support
25. GC Global Core Network
26. GNSS Global Navigation Satellite System
27. IGP Interior Gateway Protocol
28. IMIX Internet Mix
29. IP Internet Protocol
30. ITU-T International Telecommunication Union Telecommunication Standardization Section
31. IWF Interworking Function
32. LDP Label Distribution Protocol
33. LAG Link Aggregation Group
34. LTE Long Term Evolution

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| 1 | MAC | Media Access Control |
| 2 | MDRR | Modified Deficit Round Robin |
| 3 | M-P | Management Plane |
| 4 | nsec | Nano seconds |
| 5 | OAM | Operation, Administration and Maintenance |
| 6 | O-CU | O-RAN Central Unit |
| 7 | OCXO | Oven Controlled Crystal Oscillator |
| 8 | ODN | Optical Distribution Network |
| 9 | O-DU | O-RAN Distributed Unit |
| 10 | OLT | Optical Line Termination |
| 11 | ONU | Optical Network Unit |
| 12 | O-RAN | Open Radio Access Network |
| 13 | OTN | Optical Transport Networking |
| 14 | PDV | Packet Delay Variation |
| 15 | PHB | Per-hop behaviour |
| 16 | PIR | Peak Information Rate |
| 17 | PON | Passive Optical Network |
| 18 | PRTC | Primary Reference Time Clock |
| 19 | PTP | Precision Time Protocol |
| 20 | PTPoE | Precision Time Protocol over Ethernet |
| 21 | PTPoIP | Precision Time Protocol over Internet Protocol |
| 22 | PTS | Partial Timing Support |
| 23 | QoS | Quality of Service |
| 24 | RoE | Radio over Ethernet |
| 25 | RSVP | Resource Reservation Protocol |
| 26 | SFN | Sub Frame Number |
| 27 | S-P | Synchronization Plane |
| 28 | SyncE | Synchronous Ethernet |
| 29 | TAE | Time Alignment Error |
| 30 | TBD | To Be Defined |
| 31 | TDMA | Time Division Multiple Access |
| 32 | TPS-TC | Transmission Protocol Specific - Transmission Convergence |
| 33 | TS | Time-Stamp |
| 34 | TTI | Transmission Time Interval |
| 35 | T-BC | Telecom Boundary Clock |
| 36 | T-BC-P | Partial Telecom Boundary Clock |
| 37 | T-BC-A | Assisted Telecom Boundary Clock |
| 38 | T-GM | Telecom Grand Master |
| 39 | T-TC | Telecom Transparent Clock |
| 40 | T-TSC | Telecom Time Synchronous Clock |
| 41 | T-TSC-A | Assisted Telecom Time Synchronous Clock |
| 42 | T-TSC-P | Partial Telecom Time Synchronous Clock |
| 43 | UDP | User Datagram Protocol |
| 44 | UL | Up link |
| 45 | UTC | Coordinated Universal Time |
| 46 | VLAN | Virtual Local Area Network |
| 47 | WDRR | Weighted Deficit Round Robin |
| 48 | WFQ | Weighted Fair Queueing |
| 49 | WRR | Weighted Round Robin |

</div>

1

# 6 Network Timing and Synchronization Technology Overview

## 6.1 Building blocks of network-based synchronization

1. This section covers different building blocks required for network-based synchronization. This includes
2. different physical layer and packet layer clocks.

### 6.1.1 Synchronous Ethernet and Enhanced Synchronous Ethernet

1. 6.1.1.1 Synchronous Ethernet Clock
2. Synchronous Ethernet Clock is also referred as Ethernet Equipment Clock (EEC). The ITU-T standard G.8262
3. [14] specification defines both synchronous Ethernet Equipment Clock (EEC) and OTN Equipment Clock
4. (OEC).

11

1. There are two options available for Synchronous Equipment Clocks. The first option, referred to as "Option
2. 1", applies to synchronous equipment designed to interwork with networks optimized for the 2048 kbits/s
3. hierarchy. The second option, referred to as "Option 2", applies to synchronous equipment designed to
4. interwork with networks optimized for the 1544 kbits/s hierarchy. 16

17 An EEC recovers the clock at physical layer level. The performance and recovery of clock at physical layer is

18 independent of packet layer. Synchronous is hop by hop clock recovery and drive model. Any one node in the

19 chain is not capable to support SyncE, it is considered to be the clock chain is broken. 20

21 Sync-E chain:

22

23

PRC

EEC

EEC

EEC

O-RU/ EEC

24

25

26

##### 27 Figure 6.1.1-1 : Sync-E chain

28

29 In Figure 6.1.1-1, every node is capable of supporting Synchronous Ethernet between PRC to O-RU. This is a

30 good example of synchronous Ethernet network chain deployment model. 31

32 Broken Sync-E chain:

33

PRC

EEC

EEC

No EEC

O-RU/ EEC

34

35

36

37

##### 38 Figure 6.1.1-2: Broken Sync-E chain

39

1. In Figure 6.1.1-2, the node after first EEC node does not support EEC. In this case SyncE clock chain is broken
2. at the "No EEC" capable box, though the next node is capable of SyncE. 42
3. Both for Option-1 and Option-2 compliant EEC clocks, under free-running conditions, the output frequency
4. accuracy of the different types of node clocks should not exceed 4.6 ppm with regard to a reference traceable
5. to a primary reference clock over a time period of T of one year. 46
6. The maximum phase transient at the output due to reference switching for option-1 EEC clock is 1000 nano
7. seconds of phase error. 3
8. In the chain of EEC network, the clock quality is advertised by one node to another node using ESMC
9. messages. Based on the option type, there are different clock qualities defined based on the stratum level of
10. the clocks in G.8264 [12] standard. Any given node selects a best clock source based on the Quality Level
11. (clock-quality) advertised in the ESMC message using clock selection algorithm. 8

##### Reco: This ORAN specification focuses only EEC. Usage of OEC is for future.

10

1. 6.1.1.2 Enhanced Synchronous Ethernet Clock eEEC
2. The ITU-T standard G.8262.1 [15] defines two types of enhanced synchronous equipment clocks. One is
3. enhanced synchronous ethernet equipment clock (eEEC) and the enhanced synchronous OTN equipment clock
4. (eOEC).

15

##### 16 Reco: This ORAN specification focuses only eEEC. Usage of eOEC is for future.

17

18 One of main performance attribute of eEEC that differs from EEC is the permissible short term phase transient

19 error during reference switching. In case of EEC 50 ns/s drift is accepted, whereas in eEEC clocks only 10 ns/s

20 is allowed.

21

22 eEEC support is required for any boundary clock that claims Class-C compliance. 23

24 There are additional TLVs defined to advertise the eEEC clocks as part of ITU-T G.8264 [12] standard 25

26 QL-PRTC, QL-ePRTC, QL-eEEC and QL-ePRC etc.

27

28 Note: Refer ITU-T G.8264 [12] standard for detailed information. 29

### 6.1.2 PRC and clocks

1. The main function of a Primary Reference Clock (PRC), as specified in ITU-T G.811, is to provide the
2. reference signal for the timing or synchronization of other clocks within a network or section of a network,
3. including the clock specified in Recommendation ITU-T G.812 within the network nodes where the PRC is
4. located. The long-term accuracy of the PRC is in the order of 1 part in 1011 or better with verification to
5. Coordinated Universal Time (UTC). PRCs are typically built using Caesium clocks. PRCs are at the top level
6. of the clock hierarchy with one of the highest accuracies [34][35]. 37

### 6.1.3 PRTC and Grandmaster clocks

1. The main function of a PRTC, as defined in ITU-T G8272.1 amd1, is to deliver a primary time reference to
2. be used in time and/or phase synchronization by other clocks of the network. 41
3. The PRTC takes its reference signal from a system connected to a recognized primary time standard (e.g., a
4. global navigation satellite system or from a national laboratory participating in time standards generation). It
5. can also optionally take a frequency input reference traceable to a PRC to maintain the local representation of
6. the timescale during outages of the input time reference (i.e., extend the phase/time holdover period of the
7. clock).

47

1. The performance of a GNSS-based PRTC can be impacted by several errors and one of the major sources of
2. error is the ionospheric delay. The ionosphere introduces a variable time delay in the propagation of signals
3. from the satellite to the receiver. The use of multi-constellation GNSS receivers is key to mitigate ionosphere
4. effects and improve time accuracy. There are currently 6 GNSS satellite constellations in orbit providing
5. geolocation and time distribution (GPS, GLONASS, BeiDou, Galileo, Indian Regional Navigation Satellite
6. System-IRNSS, Quasi-Zenith Satellite System-QZSS). A multi-constellation GNSS increases the number of
7. satellites in the view, which help mitigate issues linked to obstructions (e.g., foliage, buildings, etc) and provide
8. additional redundancy and robustness of the system. 6
9. The low GNSS signal power on Earth makes it very susceptible to interference from weather and other signals.
10. Over the past years, an increasing number of GNSS jamming, and spoofing have been reported. A small
11. jammer can disrupt a GNSS receiver for several kilometres. GNSS jamming is a relatively simple technique
12. that consists of producing an RF signal strong enough to interfere with the GNSS signal. GNSS jamming is a
13. continuing threat and GNSS jamming devices have proliferated on the Internet. 12
14. GNSS spoofing is another threat more insidious and harder to detect. It consists of sending a
15. false signal with a false position fix, a false clock offset, or both that the receiver interprets as the authentic
16. GNSS signal.

16

1. The U.S. Department of Homeland Security has declared the GPS "a single point of failure for critical
2. infrastructure." [36]

19

1. The performance of the PRTC is characterized by two noise generation aspects:
2. ? the constant time error (time offset) at its output compared to the applicable primary time standard

22 (e.g., UTC).

1. ? the amount of phase error (wander and jitter) produced at its output. The phase error is measured using
2. the calculation of the maximum time interval error (MTIE) and the time deviation (TDEV)
3. performance metrics.

26

1. ITU-T G.8272-2018 [5] specifies that under normal, locked operating conditions, the time output of the PRTC-
2. A, or the combined PRTC-A and T-GM function, should be accurate to within 100 ns or better when verified
3. against the applicable primary time standard (e.g., UTC). 30
4. ITU-T G.8272-2018 [5] specifies that under normal, locked operating conditions, the time output of the PRTC-
5. B, or the combined PRTC-B and T-GM function, should be accurate to within 40 ns or better when verified
6. against the applicable primary time standard (e.g., UTC). 34
7. There are two types of PRTCs, PRTC-A and PRTC-B, characterized by different performance specifications.
8. Note that the PRTC function can be combined with a Telecom Grand Master (T-GM) function in a single piece
9. of equipment (PRTC+T-GM). 38

39 It is becoming increasingly critical to protect the GNSS signal of the PRTC with an anti-jamming and anti-

40 spoofing system. This system should not only detect and isolate the GNSS jamming and spoofing incident but

41 also extend its holdover for several days in case a complete loss reception.

GNSS

42

Anti jamming/ spoofing

PRTC+T-GM

43

##### 44 Figure 6.1.3-1: Anti-jamming/spoofing function

1 The PRTC+T-GM typically implements three logical output interfaces to provide: 2

1. ? Frequency (e.g., 2 048 kHz interfaces, 1 544 kbit/s interfaces, 2 048 kbit/s interfaces, Synchronous
2. Ethernet interfaces, 1PPS single ended BNC - 50 ? phase-synchronization measurement interface, 10
3. MHz interfaces, etc).
4. ? Phase and time (e.g., Ethernet interface carrying PTP messages, etc). 7

GNSS

External frequ ency input ref. (optional)

8

9

Time reference

(e.g., 1PPS)

PRTC+T-GM

Phase reference (e.g., PTP)

Freq uency reference (e.g., 2 048 Khz)

##### Figure 6.1.3-2: PRTC functional model

11

1. When a PRTC+T-GM loses its input phase and time references, it enters the phase/time holdover state where
2. it relies on the holdover of a local oscillator, or on an optional external input frequency reference traceable to
3. a primary reference clock (PRC), or both. The quality of the local oscillator is an important feature. An OCXO
4. oscillator can for example drift 400 ns in 8 hours while it takes a 1.8 day for a Rubidium oscillator to drift 400
5. ns. Note that the NR-TDD time error requirement with respect to a common reference is 1.5 ?s. Rubidium
6. oscillator provides a 3-30x improvement over best aging XO spec (0.01ppd/day). Rubidium oscillators are
7. typically deployed to in PRTC+T-GM locations where there is a need to offer an additional level of protection
8. with a better holdover period when no other mechanism is available. 20
9. ![A picture containing sitting, blue  Description automatically generated]({{site.baseurl}}/assets/images/1e4f8d1c467e.png)The table below shows the performance of the main types of clock technologies. 22

23

##### 24 Table 6-1: Clock technologies table

25

1. Another difference between Rubidium and OCXO oscillators that when they are locked to a GNSS reference,
2. Rubidium oscillators have better ability to filter the noise of the GNSS reference. 28

##### Note that, as specified in ITU-T 8272-2018, the phase/time holdover requirements applicable to a PRTC

1. **are for further study.**

31

1. enhanced PRTC (ePRTC) is new class of clock, defined in ITU-T G.8272.1 [6] , with the purpose of providing
2. more stringent output performance requirements and a frequency input directly from an autonomous primary
3. reference clock.

External frequency input ref. (autonomous primary reference

clock: e.g. Cesium)

1

Time reference (e.g., 1PPS)

Phase reference (e.g., PTP)

ePRTC

Freq uency reference (e.g., 2 048 Khz)

##### 2 Figure 6.1.3-3: ePRTC functional model

3

1. ITU-T G.8272.1 [37] specifies that under normal, locked operating conditions, the time output of the ePRTC-
2. or the combined ePRTC and T-GM function, should be accurate to within 30 ns or better when verified against
3. the applicable primary time standard (e.g., UTC). 7
4. When an ePRTC loses all its input phase and time references and enters the phase/time holdover state, it relies
5. on an autonomous primary reference clock (PRC) frequency reference input. An ePRTC can also rely on
6. several input frequency references used to ensemble a very stable frequency reference. An ePRTC is an
7. autonomous source of time and independent timescale that is implemented with one or two co-located atomic
8. clocks.

13

1. The holdover requirements of an ePRTC-A when verified against the applicable primary time standard (e.g.,
2. UTC) is defined from the start of phase/time holdover, after 30 days of continuous normal operation, to within
3. a value increasing linearly from 30 ns to 100 ns over a 14-day period (see Table and Figure below). ePRTCs
4. are typically deployed in major timing centres in order to provide a long holdover capability. ePRTCs are
5. extremely reliable clock immune to jamming and spoofing given their high level of autonomy. 19

20 The holdover requirements of the ePRTC-B, a higher-performance ePRTC, are for further study. 21

### 6.1.4 APTS

1. Assisted partial timing support (APTS) offers a backup timing source to GNSS-based inter-working function
2. (IWF P-F) [38].

25

1. The latter serves as the primary synchronization source for the full timing support network in the access
2. network. APTS typically uses a secondary synchronization source from the partial timing support network in
3. the pre-aggregation/aggregation network as a backup mechanism provided that the full timing support time
4. error budget remains in relatively small (e.g., two or three hops). 30
5. In normal mode of operation, the time of the GNSS-based IWF time is sourced from GNSS, and in the event
6. of GNSS loss, it relies on the frequency derived from the incoming PTP flow of the partial timing support
7. network to provide or hold time. Note that alternatively, it is possible to use a traceable frequency input (e.g.,
8. SyncE, 2 048 kHz interfaces, 1 544 kbit/s interfaces, 2 048 kbit/s interfaces, etc) from a local frequency source.

35

36 ITU-T G.8273.4 [39] specifies the timing characteristics of telecom boundary clocks and telecom time

37 synchronous clocks for time and phase synchronization equipment used in synchronization networks that

38 operates in the assisted partial timing support (APTS). 39

GNSS GNSS

Packet network

IWF(GNSS

based PRTC)

PRTC/GM

RU

Packet network

RU

RU

Partial timing support Full timing support

40

1

### 2 6.1.5 Boundary clocks, Ordinary clocks, and Transparent clocks

3

4 As per IEEE-1588v2 [20] standard the definition of boundary clock and ordinary clocks: 5

1. Boundary clock:
2. A clock that has multiple Precision Time Protocol (PTP) ports in a domain and maintains the timescale used
3. in the domain. It may serve as the source of time, i.e., be a timeTransmitter clock, and may synchronize to
4. another clock, i.e., be a timeReceiver clock. 10
5. Ordinary clock:
6. A clock that has a single Precision Time Protocol port in a domain and maintains the timescale used in the
7. domain. It may serve as a source of time, i.e., be a timeTransmitter clock, or may synchronize to another clock,
8. i.e., be a timeReceiver clock. 15
9. Transparent clock:
10. A device that measures the time taken for a Precision Time Protocol (PTP) event message to transfer the device
11. and provides this information to clocks receiving this PTP event message. 19
12. The ITU-T standard defined additional sub-type of boundary, ordinary and transparent clocks with some
13. loaded functions, typically called Telecom Boundary clocks, Telecom Grandmaster clock and Telecom Time
14. Synchronous clock and Telecom Transparent Clock 23

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| Clock type/name | Clock specification | Description |
| T-BC | G.8273.2 [2] | Telecom Boundary Clock (T-BC) recovers time and phase using PTP packet exchange and frequency using physical layer clock (Sync-E) and delivers both time/phase and  frequency to downstream to nodes. Used in full timing support network as per G.8275.1 [1] profile. |
| T-TSC | G.8273.2 [2] | Telecom Time Synchronous Clock (T-TSC) recovers Time and Phase using PTP packet exchange and frequency using physical layer clock (ex: Sync-E). Used in full timing support  network as per G.8275.1 [1] profile. |
| T-BC-P | G.8273.4 [39] | Partial support Telecom Boundary Clock (T-BC-P) recovers time and phase using PTP packet exchange and usage of physical layer clock for frequency recovery is optional. Used  in partial timing support network as per G.8275.2 [3] profile. |
| T-BC-A | G.8273.4 [39] | Assisted Partial support Telecom Boundary Clock (T-BC-A)  recovers time/phase from GNSS (PRTC) as the primary source and network based PTP as backup. |
| T-TSC-P | G.8273.4 [39] | Partial support Telecom Time Synchronous Clock (T-TSC-P) recovers time/phase using PTP packet exchange and usage of  physical layer clock is optional. Used in partial timing support network as per G.8275.2 [3] profile. |
| T-TSC-A | G.8273.4 [39] | Assisted partial support Telecom Time Synchronous Clock  (T-TSC-A) recovers time/phase from GNSS (PRTC) as the primary source and network based PTP as backup. |
| T-TC | G.8273.3 [4] | Telecom Transparent Clock (T-TC) operates in syntonized mode using physical layer clock (ex: Sync-E) apart from measuring the time taken for a Precision Time Protocol (PTP)  event message to transit the device. |

</div>

24

1. **Reco: This specification recommends T-BC and T-TSC clocks in general for X-haul networks including**
2. **Fronthaul network. Also recommends using T-BC over T-TC wherever possible. Usage of other clocks**
3. **like T-BC-A/P, T-TSC-A/P are optional.**

## 6.2 Timing profiles

1. Timing profile specifies the IEEE 1588 functions that are necessary to ensure network element interoperability
2. for the delivery of accurate phase/time synchronization.

### 6.2.1 Full Timing Support (ITU-T G.8275.1)

1. ITU-T G.8275.1 [1] specifies a profile for telecommunication applications based on IEEE 1588 precision time
2. protocol (PTP). The profile specifies the IEEE 1588 functions that are necessary to ensure network element
3. interoperability for the delivery of accurate phase/time synchronization. The profile is based on the full timing
4. support from the network architecture as described in ITU-T G.8275 [41] and definitions described in ITU-T
5. G.8260 [17].
6. This version of the profile specifies the high-level design requirements, modes of operation for the exchange
7. of PTP messages, the PTP protocol mapping, the best timeTransmitter clock algorithm (BTCA) options, as
8. well as the PTP protocol configuration parameters.
9. Note-1 - The parameters defined in this version of the specification are chosen based on the case where
10. physical layer frequency support is provided, and the case without physical layer frequency support (i.e., PTP
11. only) is for further study

##### Reco - This specification restricts the usage of IEEE1588 version 2.0 [20] only. It does not include the

1. **IEEE1588 version 2.1, and this version will be considered in the future**.
2. As per this profile every network node between Grand Master device and end-application is PTP and Sync-E
3. aware devices. It is referred as Full path Timing Support (FTS) profile.
4. The common accepted devices are Telecom Boundary Clock (T-BC) and Telecom Transparent Clock (T-TC)
5. for the nodes between GM and End-application.

22

23

T-GM

T-BC/ T-TC

T-BC/ T-TC

T-BC/ T-TC

O-RU/ T-TSC

24

25

26

27

28

##### 29 Figure 6.2.1-1: Full Timing Support network model

30

1. **Reco: This ORAN specification recommends T-BC for this profile deployment. Usage of T-TC is**
2. **optional.**

### 6.2.2 Partial Timing Support (ITU-T G.8275.2)

1. This profile is for telecommunication applications based on [IEEE 1588] precision time protocol (PTP). The
2. profile specifies the IEEE 1588 functions that are necessary to ensure network element interoperability for the
3. delivery of accurate phase/time (and frequency) synchronization with partial timing support from network and
4. commonly referred as PTS profile.
5. This profile defines the PTP profile for unicast mode only. 7

PTP

unaware

T-BC-P

PTP

unaware

T-BC (IWF)

O-RU/

T-TSC

T-GM

8

9

10

11

##### 12 Figure 6.2.2-1: Partial Timing Support network model

13

1. The clock specifications for T-BC-P and T-TSC-P are defined in ITU-T G.8273.4 [39] standard. In a Partial
2. Timing Support (PTS) model, some or all nodes between the Grandmaster and End time-synchronous clock
3. (T-TSC) are not aware of PTP. As in Figure 6.2.2-1 above, the T-GM and T-BC-P is connected over a network
4. (that may contain one or multiple network nodes) that do not support PTP.
5. The term telecom boundary clock for partial timing support (T-BC-P) refers to a device consisting of a
6. boundary clock (BC) as defined in [IEEE 1588], with additional performance characteristics as defined in ITU-
7. T G.8273.4 [39].
8. The term telecom time synchronous clock for partial timing support (T-TSC-P) refers to a device consisting
9. of either an ordinary clock (OC), with one PTP port, or a boundary clock (BC), with multiple PTP ports, as
10. defined in [IEEE 1588] and with additional performance characteristics as defined in ITU-T G.8273.4 [39].
11. The IWF stands for Inter Working Function. In this network model the IWF boundary clock exercises G.8275.2
12. [3] (Partial timing support) profile towards the network Grand Master side and G.8275.1 [1] (Full timing
13. support) profile towards the O-RU/T-TSC.
14. The network operating in partial timing support may not be sufficient to meet all of the applicable timing
15. requirements. See Appendix II in G.8271.2 [9] on *Considerations for handling precision time protocol traffic*
16. *in networks with partial timing support*. One important aspect is that this methodology requires manual
17. compensation for asymmetries at installation and at any change in the network. This is particularly critical
18. when the transport technology can introduce variable asymmetries (e.g., at restart of an equipment).
19. The use of G.8275.2 [3] in partial timing support is for further study in the CUS [33] specification, in particular,
20. the following is stated in the CUS specification (ref.12): "Transport of PTP directly over L2 Ethernet (ITU-T
21. G.8275.1 [1] full timing on-path support) is assumed in this version of the specification, whilst transport of
22. PTP over UDP/IP (ITU-T G.8275.2 [3] partial timing support from the network) is also possible albeit with
23. unassured synchronization performance."
24. It should be noted that if the cluster of base stations is synchronized via a full timing support segment (i.e.,
25. after the IWF), the impact from the partial timing support segment of the network on timing requirements
26. related to coordination features such as carrier aggregation, is negligible.

##### Reco: ITU-T G.8275.2 [3] standard allows both PTPoIPv4 and PTPoIPv6 unicast transport

1. **mechanisms, this ORAN specification recommends using PTPoIPv4. Usage of PTPoIPv6 is FFS.**

42

43

#### Reco: This O-RAN specification does not recommend deployment as shown in figure 6.2.2 to

1. **synchronize O-RUs not connected to same IWFs.**

3

### 6.2.3 Assisted Partial Timing Support (ITU-T G.8275.2)

1. In APTS model, PTP is used as a backup timing source to a local time reference (e.g., primary reference time
2. clock (PRTC) based on the global navigation satellite system (GNSS)). It is not intended to use PTP as the
3. primary timing source.
4. Similar considerations as indicated above may apply for the periods during which the GNSS is lost and PTP
5. becomes the synchronization timeTransmitter for the O-RU. However, differently from the previous case,
6. APTS allows for automatic removal of static asymmetries when PTP is used.

11

Partial Timing Support Network

T-GM

T-TSC-A/ O-RU GNSS

Assisted

PRTC (GNSS)

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

##### Figure 6.2.3-1: APTS network model using T-TSC-A clock

23

1. In the model shown in Figure 6.2.3-1, the T-TSC-A (Telecom Time Synchronous Clock Assisted) would have
2. GNSS as primary source and backup can be PTP based on Phase or Frequency from T-GM. This model would
3. fall under LLS-C4 as per CUS specification [33]. 27
4. **Reco: This ORAN specification does not recommend deployment as shown in** Figure 6.2.3-1 **with T-TSC-**
5. **A with dedicated GNSS receivers installed and expect to support 130 ns between the co-located O-RUs.**
6. **It is optional to exercise this model in cases where relative time error is 260 ns or larger.**

31

32

PTS

network

FTS

Network

T-TSC/ O-RU

T-BC-A GNSS

Assisted

T-GM

PRTC (GNSS)

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

##### 44 Figure 6.2.3-2: APTS network model using T-BC-A clock

45

1. In the model shown in Figure 6.2.3-2 the T-BC-A (Telecom Boundary Clock Assisted) use GNSS as primary
2. source and network based PTP as backup over Partial timing support network. The T-BC-A to T-TSC will be
3. Full timing support network 49

##### Reco: This specification recommends deployment as shown in Figure 6.2.3-2 with T-BC-A in case relative

1. **time alignment error between two O-RU is less than 130nsec.**

3

### 4 6.2.4 Profile comparison table with important attributes

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **Attribute** | **G.8275.1 (FTS)** | **G.8275.2 (PTS)** | **G.8265.1** |
| Transport | PTP over Ethernet Multicast | PTP over IPv4 or IPv6 unicast | PTP over IPv4 unicast |
| Domain number | 24-43 | 44-63 | 4 to 23 |
| Hybrid mode of operation using Synchronous Ethernet (G.8262 [14] /  G.8262.1 [15]) | Must require (Note-1) | Optional | No |
| BTCA algorithm | A-BTCA | A-BTCA | A-BTCA (Note-2) |
| PTP packet rates (PPS) | Fixed packet rate. Sync/Delay-Req/Resp messages: 16 PPS and Announce: 8 PPS | Variable (Configurable up to 128PPS) | Variable (Configurable up to 128 PPS) |
| Every hop PTP aware | Yes (Full Time Support profile) | No (Partial Timing Support) | No |
| Phase/Freq sync | Both Phase and Frequency sync | Both Phase and Frequency sync | Only Frequency Sync |
| Unicast Negotiation | No | Yes (Must) | Yes |
| PTP over VLAN | No (Note-3) | Optional | Yes |
| Optional TLVs for Link speed | No | Yes | No |
| Local Priority | Yes | Yes | No |

</div>

5

##### Table 6-2: PTP attributes comparison across various timing profiles

7

##### Note-1/Reco: Sync-E is must for T-BC (Telecom Boundary Clock), and it is optional for T-TSC built

1. **into O-RU**
2. Note-2: G.8275.1 [1] and G.8275.2 [3] uses same A-BTCA whereas G.8265.1 [10] uses different A-BTCA
3. Note-3: PTP over VLAN is allowed for Transparent Clock compliance to G.8273.3 [4]. But not for G.8273.2
4. [2] based Ordinary or Boundary Clocks.
5. Note-4: G.8265.1 Profile shall not be applicable in O-RAN. It is specified in the above table for completeness. 14

1

### 6.2.5 Inter-working (IWF) function

1. An Interworking function (IWF), containing a clock among other functions, would be needed to translate from
2. one profile to the other profile. 5
3. ITU-T standard G.8271.2 [9] and G.8275 [41] defines two types of Interworking functions (IWF) namely:
4. IWF F-P and IWF P-F, Related performance aspects of a network with IWF is for further study in ITU-T
5. standards.

9

1. IWF F-P (Full timing support to Partial timing support)
2. An interworking function (IWF), containing a clock among other functions, would be needed to translate from
3. the FTS profile [1] to the PTS profile [3] going downstream from the T-GM towards the end application. 13

14

15

![]({{site.baseurl}}/assets/images/43ad2e203b98.png)

FTS

T-GM

PTS

O-RU/ T-TSC

IWF F-P

16

17

18

19

20

##### 21 Figure 6.2.5-1: IWF F-P network model

22

1. IWF P-F (Partial Timing support to Full timing support)
2. An inter-working function (IWF P-F), containing a clock among other functions, would be needed to translate
3. from the partial timing support profile [3] to the full timing support profile [1] going downstream from the T-
4. GM towards the End Application. 27

28

![]({{site.baseurl}}/assets/images/43ad2e203b98.png)

PTS

T-GM

FTS

O-RU/ T-TSC

IWF P-F

29

30

31

32

33

34

##### 35 Figure 6.2.5-2: IWF P-F network model

36

37

1. **Reco:**
2. ? **In order to support relative time error requirements in a cluster of base stations, this ORAN**
3. **specification recommends only IWF P-F for the X-haul transport under the assumption that the**
4. **cooperating O-RUs are connected with full timing support network.**
5. ? **Not recommended to use IWF P-F for the purpose of synchronizing geographically distributed**
6. **O-RUs within 260 ns (note: This is the most stringent requirement applicable to geographically**
7. **distributed O-RUs).**
8. ? **5G front-haul synchronization requirements like Category B applications need high precise time**
9. **alignment error (TAE) between radio units (i.e., 260 ns), only Full timing support network can**
10. **be used to achieve it.**

48

49 **Reco: Whenever partial timing support is exercised, the PTP packets must be prioritized [refer** [**0**]**].**

### 6.2.6 A-BTCA algorithm and PTP attributes to consider

1. Both G.8275.1 [1] and G.8275.2 [3] profiles use Alternate Best TimeTransmitter Clock Algorithm (A-BTCA).
2. Some of the key attributes of this A-BTCA algorithm against the standard 1588v2 defined BTCA algorithm
3. given below:

5

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **PTP Attributes** | **A-BTCA (G.8275.1 & G.8275.2)** | **BTCA (IEEE1588v2)** |
| **TimeTransmitter**  **only port** | Allowed and very useful to design the  synchronization network | Not applicable |
| **Multiple Active**  **GMs** | Allows to load balance the PTP timeReceivers  across the GMs | Does not allow multiple active  GMs |
| **Local priority** | Pert port attribute, very powerful parameter  to design the synchronization network flow | Not applicable |
| **Priority-1** | Not used for clock selection | Used for clock selection |

</div>

6

##### Table 6-3: PTP attributes to consider for A-BTCA algorithm.

8

## 6.3 Synchronization time error budgeting model

### 6.3.1 Factors to be considered for network synchronization budgeting

1. 6.3.1.1 SyncE/Physical layer clock switchover and phase transient
2. o A rearrangement of the PHY frequency (Sync-E) results in the phase/time error at each T-BC, the T-
3. TSC and the end application.
4. o The TE is generally larger in the congruent scenario than in the non-congruent scenario because in the
5. congruent scenario each T-BC has errors due to the re-arrangement transient in both time and frequency
6. planes.
7. o The frequency plane error is due to PHY frequency input and time/phase error due to PTP sync
8. messages input to a T-BC from the upstream T-BC.
9. o Refer Figure II.3 for congruent scenario and II.4 for non-congruent scenario in ITU-T G.8271.1 [8]
10. standard.
11. o Refer ITU-T G.8271.1 - Appendix-V1: Mitigation of time error due to synchronous ethernet transients.
12. o Refer ITU-T G.8273.2 [2] - Annex-B: Control of the phase transient due to rearrangements in the
13. synchronous ethernet network 16

17

T-BC

T-BC

T-BC

PTP

T-GM

O-RU/ T-TSC

Sync-E

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

##### 29 Figure 6.3.1-1: Congruent network model

30

31

T-GM

T-BC

T-BC

O-RU/ T-TSC

EEC

EEC

PTP

EEC

EEC

Sync-E

EEC

EEC

EEC

EEC

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

PRC

PRC

PRC

PRC

45

46

47

##### Figure 6.3.1-2: Non-congruent network model

49

50 Note: As per CUS specification [33] Sync-E phase transient is not considered for fronthaul networks

1. 6.3.1.2 End application synchronization requirements
2. Based on the O-RAN topology being referred end application can be either O-DU, O-RU or O-DU and O-RU.
3. 6.3.1.2.1 Sync requirements for O-RU in LLS-C1/C2/C3/C4 topology:
4. Frequency and time errors are measured on the Air interface at the O-RU output should be within specified
5. limits refer CUS specification [33].

6

1. The performance of the Air interface is usually impacted by below metrics:
2. 1. Maximum absolute time alignment error: This is the maximum time error at the output of Radio ports
3. off from the PTP Grandmaster.
4. 2. Maximum relative time alignment error: This is the maximum time error between two radio ports of
5. same or different O-RUs.
6. 3. Air interface Frequency error: The O-RAN fronthaul network shall ensure O-RU meeting +/-50ppb
7. air interface frequency error requirement as per 3GPP specification which is the short-term average
8. error in 1ms duration. Applicable to both LTE and 5G technologies. 15
9. Below are few of the recommendations or best practices to keep Absolute and Relative time error within the
10. defined limit.

18

##### A. O-RUs connected to same clock reference:

1. It is usually recommended to have O-RUs connected to the same clock source in order to avoid any
2. time error differences. If multiple switches are involved in the path from DU to RU, it is recommended
3. to use Class-C or better T-BCs to meet the time alignment errors between O-RUs 23

24

25

O-RU1

T-BC1

O-RU2

O-DU

O-RU3

T-BC2

O-RU4

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

##### 42 Figure 6.3.1-3: O-RU connected to O-DU through multiple T-BCs (LLS-C3 topology)

43

##### B. Holdover characteristics:

1. **U**sually O-RUs will not have good holdover characteristics and in such cases its recommended to have
2. O-RU tracking upstream PTP TimeTransmitter (O-DU or intermediate switches) which should be
3. equipped with oscillators having good holdover characteristics. 48

49

50

51

52

1

##### C. Shorter chain of clocks:

* 1. To keep the absolute time error less and frequency error (low noise) within the limits at the input of
  2. O-RU, it is recommended to have fewer number of hops on the path from T-GM towards O-RU in
  3. LLS-C3/C2 topologies. Refer to the guidelines proposed in CUS spec [33] 6

7

##### D. Mixed O-RAN topology:

1. Topologies with mixed modes (LLS-C1/LLS-C4) would attract time error differences at the output of
2. O-RUs and this impacting the Air interface intended target performance. Hence it is recommended to
3. avoid the mixed O-RAN topologies. 12

![]({{site.baseurl}}/assets/images/9cb53a16d8c0.png)

O-RU1(C1)

O-DU

O-RU4(C4)

C/U/M

C/U/S/M

13

14

15

1. GNSS

17

18

19

20

21

##### 22 Figure 6.3.1-4: O-RUs connected in mixed RAN topology in LLS-C1/C4 modes

23

24

##### E. PTP Hybrid (PTP + SyncE/eSyncE) network:

1. In order to have accurate and stable S-Plane on O-RUs, it is recommended to have PTP and
2. SyncE/eSyncE for Phase/Time and Frequency recovery on O-RU for achieving better time error
3. accuracy(absolute/relative) at the outputs of O-RUs. It is also recommended to have the O-RU
4. equipped with better jitter/wander filtering capabilities to keep the noise especially at lower
5. frequencies as low as possible. In otherwords, if SyncE is used, the O-RU must have appropriate low
6. pass filtering to reject SyncE jitter, and if not used then O-RU must implement a stable local oscillator. 32

33

C/U/S/M

O-RU1

O-DU

C/U/S/M

O-RU2

34

35

36

37

38

39

40

41

##### 42 Figure 6.3.1-5: O-DU/O-RUs connected in LLS-C1 topology with FH link carrying PTP + SyncE

43

1. 6.3.1.2.2 Sync requirements for O-DU in LLS-C1/C2/C3 topology:
2. Below are few of the recommendations or best practices to be taken care from O-RU side to keep Absolute
3. and Relative time error within the defined limit at the output of O-RUs. 47

##### A. Shorter chain of Clocks:

1. To keep the absolute time error less with budget for short term holdovers, it is recommended to have
2. O-DU as clock source acting as T-GM or O-DU acting as T-BC/IWF with smaller number of hops in
3. the path reaching to T-GM in LLS-C1/LLS-C2 topology. 52

##### 53 B. Clock source redundancy:

1. In order to avoid the disruptions to cells during the GNSS faults on O-DU acting as T-GM, its
2. recommended to have O-DU recovering the clock from remote T-GM on Midhaul / Fronthaul and thus
3. acting as T-BC with preferably with G.8275.1(FTS) [1] or alternatively G.8275.2(PTS) [3] or T-GM
4. with frequency assist. 5

##### C. Holdover characteristics:

1. In order to avoid the disruptions to cells during the GNSS faults on T-GM (O-DU or remote T-GM)
2. where there is no back-up, it is recommended to have O-DU equipped with longer Holdover durations
3. allowing time for operators to fix any GNSS failures. 10

##### D. M-Plane monitoring:

1. In the event of malfunctioning of any of the connecting O-RUs, it is recommended to report such
2. events from O-RU to O-DU, identify, isolate the faulty O-RU and continue to operate with the other
3. connected O-RUs. This can be done by using available M-plane sync status information. 15

O-RU1

O-DU

O-RU2

O-RU3

O-RU4

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

30 **Figure 6.3.1-6: Monitoring O-DU/O-RUs over M Plane**

1. 6.3.1.3 Class of devices and time errors
2. The noise generation of a T-GM/T-BC and a T-TSC represents the amount of noise produced at the output
3. of the T-GM/T-BC/T-TSC when there is an ideal input reference packet timing signal. Under normal, locked
4. operating conditions, the time output of the T-BC and the T-TSC should be accurate to within the maximum
<div class="table-wrapper" markdown="block">

5. absolute time error (TE) (max|TE|). This value includes all the noise components, i.e., the constant time error

</div>
6. (cTE) and the dynamic time error (dTE) noise generation.

7

1. In order to support different performance requirements at the end application specified in ITU-T G.8271 [7]
2. specification using different network topologies and network technologies, the maximum absolute time
3. error, the time error and dTE noise generation requirements for T-GM / T-BCs and T-TSCs are divided into
4. multiple classes.

12

13 At the precision time protocol (PTP) and 1 pulse per second (PPS) outputs, the maximum absolute time error

<div class="table-wrapper" markdown="block">

14 (max|TE|) for T-BC/T-TSC is shown in below table. This includes all time error components (unfiltered).

</div>

15

16 T-GM

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **No** | **Parameters** | **Conditions** | **Class A** | **Class B** |
| 1 | Max |TE| | 1pps: unfiltered, PTP: 100-sample  moving average low-pass filter | 100ns | 40ns |
| 2 | dTEL MTIE | 1pps: unfiltered, PTP: 100-sample moving average low-pass filter | 100ns max | 40ns max |
| 3 | dTE L  TDEV | 1pps: unfiltered, PTP: 100-sample moving average low-pass filter | 3ns, raising to 30ns @ 1000s. | 1ns, raising to 5ns @ 500s |

</div>

17

18

19 T-BC/T-TSC

##### Table 6-4: T-GM types and performance metrics

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- |
| **No** | **Parameters** | **Conditions** | **Class A** | **Class B** | **Class C** | **Class D** |
| 1 | Max |TE| | Unfiltered 1000s. | 100ns | 70ns | 30ns | FFS |
| 2 | Max |TE|L | 0.1Hz LPF 1000s measurement | - | - | - | 5ns |
| 3 | cTE | Averaged over 1000s | +/- 50ns | +/- 20ns | +/- 10ns | FFS |
| 4 | dTE L MTIE | 0.1Hz LPF const temp 1000s | 40ns | 40ns | 10ns | FFS |
| 5 | dTE L TDEV | 0.1Hz LPF const temp 1000s | 4ns | 4ns | 2ns | FFS |
| 6 | dTE H | 0.1Hz HPF const temp 1000s | 70ns | 70ns | 30ns | FFS |

</div>

20

##### 21 Table 6-5: T-BC/T-TSC clock types and performance metrics

22

### 6.3.2 Time Error budget calculation

1. 6.3.2.1 General Budgeting model
2. When time error budget is calculated there are three different aspects to that:
3. 1. Time Error from Time source (Ex. T-GM) to O-RU (Input to O-RU and up until Radio Interface)
4. 2. Time Error from Time source (Ex: T-GM) to O-DU
5. 3. Time Error between O-RU to O-RU radio interfaces - Also called as Relative Time Alignment Error
6. (TAE).

8

1. For each type described above one needs to start with overall time error budget as the end number to start with
2. and calculate back by subtracting the individual budgets for each of the following that are applicable:
3. 1. Half of asymmetry (caused by Network, Fiber, Wavelength used or Optics)
4. 2. Holdover budget (for Radio, Network nodes, GM or combination of these)
5. 3. Number of hops and cTE and dTEL of each of the network nodes based on clock types and time error
6. of T-GM/PRTC based on PRTC type.
7. 4. Sync-E/Physical layer clock switchover phase error 16

17

1. For example:
2. T : Target Time Error budget (Ex. 1.5 microseconds for TDD network)
3. T(g) : time error of PRTC+GM
4. T(n) : time error for all network nodes (boundary clocks)
5. T(r) : time error of Radio device
6. T(h) : holdover timer error budget
7. T(a) : time error budget for asymmetry
8. T(s) : time error budget for SyncE re-arrangement.
9. T(c) : Total calculated time error budget 27
10. Then, sum of all time errors allocated for GM, network nodes, asymmetry, holdover, SyncE re-arrangement
11. must be less than the Total Target budget (T) to successfully plan and deploy the network (as shown below). 30

31 T(c) = T(g) + T(n) + T(r) + T(h) + T(a) + T(s)

32

33 Then T(c) < T 34

1. Note1: If there are multiple PRTC/GMs in the network design the total budget T must not be exceeded
2. whichever path and whichever GM is selected. 37
3. Note2: Similarly, the time error must be calculated for the longest chain of network path/hops rather shortest
4. chain of nodes to meet the Target Total budget even during network rearrangement and failover conditions. 40

1

1. 6.3.2.2 Relative versus End-to-End network budgeting model
2. 6.3.2.2.1 End-to-End time error budgeting
3. End to End time error is calculated from PRTC/T-GM to O-RU and T-GM to O-DU 5

6

![]({{site.baseurl}}/assets/images/4e22ee40772f.jpg)

7

8

<div class="table-wrapper" markdown="block">

1. Max|TE| - Maximum Absolute Time Error

</div>
2. cTE - constant Time Error
3. dTEL - dynamic Time Error low frequency
4. dTEH - dynamic Time Error high frequency
5. linkTE - Time Error introduced by link asymmetry 14

15 Note: It is an approximation formula that does not include the holdover budget, asymmetry and network

16 rearrangement time error 17

18 Case-1 T-GM to Radio Interface (O-RU):

19

20

CSR-1

O-RU-1/ T-TSC-1

O-RU-2 /

T-TSC-2

CSR-2

T-GM

CAS

O-DU

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

##### 33 Figure 6.3.2-1: Time error budget model - T-GM to Radio interface

34

35

Assumptions:

o

o

o

T-GM is PRTC-B = +/- 40nsec

CAS, CSR are class-C devices (cTE= +/-10) and dTE = 10nsec

L

O-RU-1 and O-RU-2 are enhanced RU with max TE of 35nsec

36

37

38

39

40

41

o

2

2

<div class="table-wrapper" markdown="block">

E2E Max|TE| = maxTE(T-GM) + cTE(CAS) + cTE(CSR) + sqrt(max|dTE (CAS) + dTE (CSR) |) +

</div>

L L

maxTE(O-RU)

o

2

2

<div class="table-wrapper" markdown="block">

E2E max|TE| = 40 + 10 + 10 + sqrt(10 + 10 ) + 35 => 109.14nsec => 109.14 nsec

</div>

42

43

44

45

1 Case-2: T-GM to O-DU

2

3

![]({{site.baseurl}}/assets/images/085a3f4aff6e.png)

O-DU

T-GM

CAS

O-RU-1/ T-TSC-1

CSR-1

O-RU-2 / T-TSC-2

CSR-2

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

##### 17 Figure 6.3.2-2: Time error budget model - T-GM to O-DU

18

19

Assumptions:

o

o

o

o

T-GM is PRTC-B = +/- 40nsec

CAS and CSR are class-C devices (cTE= +/-10) and dTE = 10nsec

L

RU-1 and RU-2 are enhanced RU with max TE of 35nsec DU is class-A device with cTE = +/-50 nsec

20

21

22

23

24

25

26

27

28

2

<div class="table-wrapper" markdown="block">

* E2E Max|TE| = maxTE(T-GM) + cTE(CAS) + cTE(O-DU) + sqrt(max|dTE (CAS) |)

</div>

L

2

<div class="table-wrapper" markdown="block">

* E2E max|TE| = 40 + 10 + 50 + sqrt(10 ) => 110 nsec

</div>

29

30

31

32

2 6.3.2.2.2 Relative time error budgeting

3 Relative time error is calculated between O-RU to O-RU. Further this is typically calculated in the front-haul

4 network. This type of time-error can be very stringent based on the front-haul application is deployed. 5

6 Radio to Radio Interface:

7

8

CAS

O-RU-2 /

T-TSC-2

CSR-2

T-GM

O-RU-1/ T-TSC-1

CSR-1

O-DU

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

##### 21 Figure 6.3.2-3: Relative Time error budget model: Radio to Radio interface

22

1. In this model, the time error between the two O-RUs (radio-unit) air-interface through a common T-BC (CAS)
2. device calculated.

25

26

Assumptions:

o

o

o

o

T-GM is PRTC-B = +/- 40nsec

CAS, CSR are class-C devices (cTE= +/-10) and dTE = 10nsec

L

O-RU-1 and O-RU-2 are enhanced RU with max TE of 35nsec

cTE = 12 nsec and dTE = 14 nsec

R RL

27

28

29

30

31

32

33

34

<div class="table-wrapper" markdown="block">

* Relative Max|TE| = maxTE(O-RU1) + maxTE(O-RU2) + cTE(CSR1) + cTE (CAS) +

</div>

2 2 2

R

<div class="table-wrapper" markdown="block">

cTE(CSR2) + sqrt(max|dTE (CAS) + dTE (CSR1) + dTE (CSR2) |)

</div>

RL L L

o

2

2

2

<div class="table-wrapper" markdown="block">

Relative max|TE| = 35 + 35 + 10 + 12 + 10 + sqrt(14 + 10 + 10 ) => 121.89 nsec

</div>

35

36

37

38

39

40

### 6.3.3 Different ORAN config models with Time Error budget

1. This section describes different ORAN config models as per CUS specification and Time Error budget
2. allocation. All the options shown in here describes mainly FR1 and FR2 use cases as those two are the most
3. stringent Time error application models. 6
4. 6.3.3.1 Config LLS-C1 (Option A: T-GM Embedded in O-DU)
5. ![Diagram  Description automatically generated]({{site.baseurl}}/assets/images/c7890f6420c2.jpg)

9

##### 10 Figure 6.3.3-1: T-GM Embedded in O-DU

11

1. In this LLS-C1 config, Option-A model, O-DU is acting as timing source and directly connected to O-RU. O-
2. DU may have built-in PRTC or external PRTC to source the clock. 14
3. 6.3.3.2 Config LLS-C1 (Option B: T-GM directly connected to O-DU

A B nearest

![]({{site.baseurl}}/assets/images/2b419d28e90b.png)![]({{site.baseurl}}/assets/images/d50ab6e03a34.png)![]({{site.baseurl}}/assets/images/c8b6522d6d57.png)![]({{site.baseurl}}/assets/images/dbbba0fe5fc4.png)

Figure is for illustrative purpose and does not provide deployment guidance (for example the number of T-BCs/T-TCs\* in a clock chain and network topology).

common BC

TAE

**PTP/SyncE path**

(FR1)

(FR2)

nearest common BC

(FR1)

?1100 ns

?1420 ns

?1500 ns

integrated BC or IWF

distribution site

O-DU

<div class="table-wrapper" markdown="block">

|TE| <= 80 ns

</div>

T-TSC

<div class="table-wrapper" markdown="block">

|TE| <= 80 ns

</div>

O-RU (regular)

T-TSC

remote site

O-RU (regular)

integrated BC or IWF

distribution site

O-DU

<div class="table-wrapper" markdown="block">

|TE| <= 35 ns

</div>

T-TSC

<div class="table-wrapper" markdown="block">

|TE| <= 35 ns

</div>

O-RU (enhanced)

T-TSC

remote site

O-RU (enhanced)

130-260 ns

3000 ns

<div class="table-wrapper" markdown="block">

|  |
| --- |
|  |
| PRTC/ePRTC T-GM |
| PRTC A:  |TE| <= 100 ns  PRTC B  |TE| <= 40 ns  ePRTC  |TE| <= 30 ns  ?30...100 ns |
|  |

</div>

C E ITU-T G.8271

![]({{site.baseurl}}/assets/images/008516663306.png)

(FR1): NR intra-band continuous carrier aggregation in FR1

(FR2): NR intra-band continuous carrier aggregation in FR2 (co- located RUs only)

2

3

260 ns

##### 4 Figure 6.3.3-2: T-GM directly connected to O-DU

5

1. In this LLS-C1 config, Option-B model, O-DU is acting as integrated BC/IWF and sources the time/clock
2. from external T-GM and acts as the timing timeTransmitter to downstream O-RU. 8
3. 6.3.3.3 Config LLS-C1 (Option C: T-GM connected to O-DU via chain of network nodes)

10

A B nearest

![]({{site.baseurl}}/assets/images/c58d8e82909a.png)![]({{site.baseurl}}/assets/images/5b48259f509d.png)![]({{site.baseurl}}/assets/images/6e0cba195672.png)![]({{site.baseurl}}/assets/images/f09fcbcd39bf.png)![]({{site.baseurl}}/assets/images/1bdfaec4152b.png)![]({{site.baseurl}}/assets/images/008516663306.png)

Figure is for illustrative purpose and does not provide deployment guidance (for example the number of T-BCs/T-TCs\* in a clock chain and network topology).

common BC

TAE

**PTP/SyncE path**

(FR1)

(FR2)

1 or more T-BCs/ T-TCs\* in the clock

chain

nearest common BC

(FR1)

?30...100 ns

?1100 ns

?1420 ns

?1500 ns

integrated BC or IWF

distribution site

O-DU

<div class="table-wrapper" markdown="block">

|TE| <= 80 ns

</div>

T-TSC

<div class="table-wrapper" markdown="block">

|TE| <= 80 ns

</div>

O-RU (regular)

T-TSC

remote site

O-RU (regular)

PRTC/ePRTC T-GM

integrated BC or IWF

distribution site

O-DU

<div class="table-wrapper" markdown="block">

|TE| <= 35 ns

</div>

T-TSC

<div class="table-wrapper" markdown="block">

|TE| <= 35 ns

</div>

O-RU (enhanced)

T-TSC

remote site

O-RU (enhanced)

PRTC A:

<div class="table-wrapper" markdown="block">

|TE| <= 100 ns

</div>

PRTC B

<div class="table-wrapper" markdown="block">

|TE| <= 40 ns

</div>

ePRTC

<div class="table-wrapper" markdown="block">

|TE| <= 30 ns

</div>

T-BC T-TC\*

130-260 ns

3000 ns

C E ITU-T G.8271

260 ns

(FR1): NR intra-band continuous carrier aggregation in FR1

(FR2): NR intra-band continuous carrier aggregation in FR2 (co- located RUs only)

11

12

##### 13 Figure 6.3.3-3: T-GM connected to O-DU over chain of network nodes

1. In this LLS-C1 config, option-C model, there are chain of T-BCs in between T-GM and O-DU nodes. In this
2. case T-GM may present in Mid/Back-haul and multiple T-BCs chain of nodes deployed between T-GM and
3. O-DU nodes.

4

5 6.3.3.4 Config LLS-C2 (Option A: O-DU is the nearest common T-BC)

![]({{site.baseurl}}/assets/images/2b419d28e90b.png)![]({{site.baseurl}}/assets/images/d50ab6e03a34.png)![]({{site.baseurl}}/assets/images/6e0cba195672.png)![]({{site.baseurl}}/assets/images/dbbba0fe5fc4.png)![]({{site.baseurl}}/assets/images/a08a27dd6c6d.png)![]({{site.baseurl}}/assets/images/008516663306.png)

A

B

C

E ITU-T G.8271

Figure is for illustrative purpose and does not provide deployment guidance (for example the number of T-BCs/T-TCs\* in a clock chain and network topology).

nearest common BC

TAE

**PTP/SyncE path**

(FR1)

0 or more T-BCs/ T-TCs\* in the clock chain

(FR2)

(FR2) (FR1)

?30...95 ns

(FR2) (FR1)

?65...130 ns

nearest common BC

0 or more T-BCs/ T-TCs\* in the clock

chain

**The budgeting examples are based on the conservative**

**assumption of linear accumulation between the 2 branches relevant to the TAE requirement.**

(FR1)

?30...100 ns

0 or more T-BCs/ T-TCs\* in the clock chain

?1100 ns

(FR1)

?50 ns

(FR1)

?1325 ns ?130 ns

?1500 ns

integrated BC or IWF

distribution site

O-DU

<div class="table-wrapper" markdown="block">

|TE| <= 80 ns

</div>

T-TSC

<div class="table-wrapper" markdown="block">

|TE| <= 80 ns

</div>

O-RU (regular)

T-TSC

remote site

O-RU (regular)

PRTC/ePRTC T-GM

integrated BC or IWF

distribution site

O-DU

<div class="table-wrapper" markdown="block">

|TE| <= 35 ns

</div>

T-TSC

<div class="table-wrapper" markdown="block">

|TE| <= 35 ns

</div>

O-RU (enhanced)

T-TSC

remote site

O-RU (enhanced)

T-BC T-TC\*

PRTC A:

<div class="table-wrapper" markdown="block">

|TE| <= 100 ns

</div>

PRTC B

<div class="table-wrapper" markdown="block">

|TE| <= 40 ns

</div>

ePRTC

<div class="table-wrapper" markdown="block">

|TE| <= 30 ns

</div>

T-BC T-TC\*

T-BC T-TC\*

130-260 ns

3000 ns

(FR1): NR intra-band continuous carrier aggregation in FR1

(FR2): NR intra-band continuous carrier aggregation in FR2 (co- located RUs only)

6

7

260 ns

##### Figure 6.3.3-4: O-DU is the nearest common T-BC

9

1. In this LLS-C2 config, with option-A model, O-DU and O-RU are separated by one or more T-BCs in the
2. middle. Further O-DU continue to act as common BC for the O-RUs.
3. Note: the time error budget allocation to support FR1 and FR2 requirements shown in this diagram is not
4. according to the methodology presented in 6.3.2.2.2 but rather presents a conservative estimation. This is the
5. same approach currently followed in the CUS specification [33]
6. 6.3.3.5 Config LLS-C2 (Option B: nearest common T-BC not O-DU)
   1. B C E ITU-T G.8271

![]({{site.baseurl}}/assets/images/2b419d28e90b.png)![]({{site.baseurl}}/assets/images/d50ab6e03a34.png)![]({{site.baseurl}}/assets/images/c8b6522d6d57.png)![]({{site.baseurl}}/assets/images/dbbba0fe5fc4.png)![]({{site.baseurl}}/assets/images/a08a27dd6c6d.png)![]({{site.baseurl}}/assets/images/008516663306.png)

Figure is for illustrative purpose and does not provide deployment guidance (for example the number of T-BCs/T-TCs\* in a clock chain and network topology).

nearest common T-BC

TAE

**PTP/SyncE path**

(FR1)

0 or more T-BCs/ T-TCs\* in the clock chain

(FR2)

**The budgeting examples are based on the conservative assumption of linear accumulation between the 2 branches relevant to the TAE requirement.**

(FR2) (FR1)

?30...95 ns

(FR2) (FR1)

?65...130 ns

1 or more T-BCs/ T-TCs\* in the clock

chain

nearest common T-BC

(FR1)

?30...100 ns

0 or more T-BCs/ T-TCs\* in the clock chain

?1100 ns

(FR1)

?50 ns

(FR1)

?1325 ns ?130 ns

?1500 ns

T-BC

integrated BC or IWF

distribution site

O-DU

<div class="table-wrapper" markdown="block">

|TE| <= 80 ns

</div>

T-TSC

<div class="table-wrapper" markdown="block">

|TE| <= 80 ns

</div>

O-RU (regular)

T-TSC

remote site

O-RU (regular)

PRTC/ePRTC T-GM

T-BC

integrated BC or IWF

distribution site

O-DU

<div class="table-wrapper" markdown="block">

|TE| <= 35 ns

</div>

T-TSC

<div class="table-wrapper" markdown="block">

|TE| <= 35 ns

</div>

O-RU (enhanced)

T-TSC

remote site

O-RU (enhanced)

T-BC T-TC\*

PRTC A:

<div class="table-wrapper" markdown="block">

|TE| <= 100 ns

</div>

PRTC B

<div class="table-wrapper" markdown="block">

|TE| <= 40 ns

</div>

ePRTC

<div class="table-wrapper" markdown="block">

|TE| <= 30 ns

</div>

T-BC T-TC\*

T-BC T-TC\*

130-260 ns

3000 ns

(FR1): NR intra-band continuous carrier aggregation in FR1

(FR2): NR intra-band continuous carrier aggregation in FR2 (co- located RUs only)

2

3

260 ns

##### Figure 6.3.3-5: O-DU not the nearest common T-BC

5

1. In this LLS-C2 config, option-B model, the nearest common node is T-BC for the O-RUs rather O-DU.
2. Note: the time error budget allocation to support FR1 and FR2 requirements shown in this diagram is not
3. according to the methodology presented in 6.3.2.2.2, but rather presents a conservative estimation. This is the
4. same approach currently followed in the CUS specification [33] 10

11 6.3.3.6 Config LLS-C3 (Option A: T-GM is the nearest common timeTransmitter)

* 1. A B C E ITU-T G.8271

130-260 ns

3000 ns

12

![]({{site.baseurl}}/assets/images/6a29b084f9cc.png)![]({{site.baseurl}}/assets/images/54363d5259f6.png)![]({{site.baseurl}}/assets/images/3d80d662209e.png)![]({{site.baseurl}}/assets/images/99b53b58a7a8.png)![]({{site.baseurl}}/assets/images/d9e49e5c1c40.png)![]({{site.baseurl}}/assets/images/ec4f3b26a7f1.png)![]({{site.baseurl}}/assets/images/008516663306.png)

TAE

?30...100 ns ?30...100 ns

(FR1)

(FR2)

0 or more T-BCs/ T-TCs\* in the clock chain

0 or more T-BCs/ T-TCs\* in the clock chain

(FR1)

Figure is for illustrative purpose and does not provide deployment guidance (for example the number of T-BCs/T-TCs\* in a clock chain and network topology).

?1100 ns

?1500 ns (weak requirement)

?1100 ns

leaves more holdover margin to O-RU

?1500 ns

<div class="table-wrapper" markdown="block">

|TE| <= 80 ns

</div>

T-TSC

<div class="table-wrapper" markdown="block">

|TE| <= 80 ns

</div>

O-RU (regular)

T-TSC

remote site

O-RU (regular)

PRTC/ePRTC T-GM

T-TSC

distribution site

O-DU

**PTP/SyncE path**

T-TSC

distribution site

O-DU

<div class="table-wrapper" markdown="block">

|TE| <= 35 ns

</div>

T-TSC

<div class="table-wrapper" markdown="block">

|TE| <= 35 ns

</div>

O-RU (enhanced)

T-TSC

remote site

O-RU (enhanced)

(FR1): NR intra-band continuous carrier aggregation in FR1

(FR2): NR intra-band continuous carrier aggregation in FR2 (co- located RUs only)

T-BC T-TC\*

T-BC T-TC\*

PRTC A:

<div class="table-wrapper" markdown="block">

|TE| <= 100 ns

</div>

PRTC B

<div class="table-wrapper" markdown="block">

|TE| <= 40 ns

</div>

ePRTC

<div class="table-wrapper" markdown="block">

|TE| <= 30 ns

</div>

260 ns

13

##### 14 Figure 6.3.3-6: T-GM is the nearest common timeTransmitter

1

1. In this LLS-C3 config, Option-A model, O-DU is no more source of timing to O-RUs. Both O-DU and O-RU
2. sources the time/phase from the T-GM located in the front-haul network. Further, this T-GM is acting as
3. common timeTransmitter node to the O-RUs. 5
4. Note: the time error budget allocation to support FR1 and FR2 is described in 6.3.2.2.2. Details can be found
5. in G.8271.1 [8] Appendix XII, Examples of design options for fronthaul and clusters of base stations. 8

9

1. 6.3.3.7 Config LLS-C3 (Option B: nearest common timeTransmitter is not T-GM)

11

A B C E ITU-T G.8271

130-260 ns

3000 ns

12

![]({{site.baseurl}}/assets/images/32b866668b28.png)![]({{site.baseurl}}/assets/images/d84d9ae644aa.png)![]({{site.baseurl}}/assets/images/4db92ca03190.png)![]({{site.baseurl}}/assets/images/4c9f2c3a2c47.png)![]({{site.baseurl}}/assets/images/6f6ad8dda58a.png)![]({{site.baseurl}}/assets/images/048419b8c943.png)![]({{site.baseurl}}/assets/images/008516663306.png)

TAE

?30...100 ns

(FR1)

(FR2)

(FR2) (FR1)

?30...95 ns

(FR2) (FR1)

?65...130 ns

nearest common T-BC

0 or more T-BCs/ T-TCs\* in the clock chain

0 or more T-BCs/ T-TCs\* in the clock chain

(FR1)

**The budgeting examples are based on the conservative assumption of linear accumulation between the 2 branches relevant to the TAE requirement.**

Figure is for illustrative purpose and does not provide deployment guidance (for example the number of T-BCs/T-TCs\* in a clock chain and network topology).

(FR1)

?50 ns

(FR1)

?130 ns

?1100 ns

?1500 ns (weak requirement)

?1100 ns

leaves more holdover margin to O-RU

?1500 ns

T-BC

<div class="table-wrapper" markdown="block">

|TE| <= 80 ns

</div>

T-TSC

<div class="table-wrapper" markdown="block">

|TE| <= 80 ns

</div>

O-RU (regular)

T-TSC

remote site

O-RU (regular)

T-TC\*

T-BC

PRTC/ePRTC T-GM

T-TSC

distribution site

O-DU

**PTP/SyncE path**

T-TSC

distribution site

O-DU

<div class="table-wrapper" markdown="block">

|TE| <= 35 ns

</div>

T-TSC

<div class="table-wrapper" markdown="block">

|TE| <= 35 ns

</div>

O-RU (enhanced)

T-TSC

remote site

O-RU (enhanced)

(FR1): NR intra-band continuous carrier aggregation in FR1

(FR2): NR intra-band continuous carrier aggregation in FR2 (co- located RUs only)

T-BC T-TC\*

PRTC A:

<div class="table-wrapper" markdown="block">

|TE| <= 100 ns

</div>

PRTC B

<div class="table-wrapper" markdown="block">

|TE| <= 40 ns

</div>

ePRTC

<div class="table-wrapper" markdown="block">

|TE| <= 30 ns

</div>

260 ns

13

##### 14 Figure 6.3.3-7: Nearest common timeTransmitter is not T-GM

15

1. In this LLS-C3 config, option-B model, the nearest common timeTransmitter is not T-GM for the O-RUs.
2. Rather a T-BC is acting as common timeTransmitter to O-RUs in the front-haul network. 18
3. Note: the time error budget allocation to support FR1 and FR2 is described in 6.3.2.2.2. Details can be found
4. in G.8271.1 [8] Appendix XII, Examples of design options for fronthaul and clusters of base stations.

1 6.3.3.8 Config LLS-C3 (Option C: T-GM in Mid/Back-haul)

A B C E ITU-T G.8271

![]({{site.baseurl}}/assets/images/2b419d28e90b.png)![]({{site.baseurl}}/assets/images/d50ab6e03a34.png)![]({{site.baseurl}}/assets/images/c8b6522d6d57.png)![]({{site.baseurl}}/assets/images/dbbba0fe5fc4.png)![]({{site.baseurl}}/assets/images/008516663306.png)

Figure is for illustrative purpose and does not provide deployment guidance (for example the number of T-BCs/T-TCs\* in a clock chain and network topology).

TAE

**PTP/SyncE path**

(FR1)

0 or more T-BCs/ T-TCs\* in the clock chain

(FR2)

nearest common T-BC

(FR2) (FR1)

?30...95 ns

(FR2) (FR1)

?65...130 ns

(FR1)

?1100 ns

?1500 ns (weak requirement)

**The budgeting examples are based on the conservative assumption of linear accumulation between the 2 branches relevant to the TAE requirement.**

0 or more T-BCs/ T-TCs\* in the clock chain

(FR1)

?50 ns

(FR1)

?130 ns

?1100 ns

leaves more holdover margin to O-RU

?1500 ns

<div class="table-wrapper" markdown="block">

|TE| <= 80 ns

</div>

T-TSC

<div class="table-wrapper" markdown="block">

|TE| <= 80 ns

</div>

O-RU (regular)

T-TSC

remote site

O-RU (regular)

T-TSC

distribution site O-DU

T-BC

T-BC

T-TSC

distribution site

O-DU

<div class="table-wrapper" markdown="block">

|TE| <= 35 ns

</div>

T-TSC

<div class="table-wrapper" markdown="block">

|TE| <= 35 ns

</div>

O-RU (enhanced)

T-TSC

remote site

O-RU (enhanced)

T-BC T-TC\*

T-BC T-TC\*

130-260 ns

3000 ns

(FR1): NR intra-band continuous carrier aggregation in FR1

(FR2): NR intra-band continuous carrier aggregation in FR2 (co- located RUs only)

2

3

260 ns

<div class="table-wrapper" markdown="block">

|  |
| --- |
|  |
| PRTC/ePRTC T-GM |
| PRTC A:  |TE| <= 100 ns  PRTC B  |TE| <= 40 ns  ePRTC  |TE| <= 30 ns  ?30...100 ns |
|  |

</div>

##### Figure 6.3.3-8: T-GM in Mid/Backhaul

1. In this LLS-C3 config, option-C model, the T-GM is not located in Front-haul, rather it is in either mid-haul
2. or back-haul and drives timing towards front-haul via a T-BC. This T-BC acts as timing source for both O-
3. DUs and O-RUs.

8

1. Note: the time error budget allocation to support FR1 and FR2 is described in 6.3.2.2.2. Details can be found
2. in G.8271.1 [8] Appendix XII, Examples of design options for fronthaul and clusters of base stations. 11
3. 6.3.3.9 Config LLS-C3 (Option D: T-GM in Mid/Back-haul with T-BC chain)

A B C E ITU-T G.8271

![]({{site.baseurl}}/assets/images/2b419d28e90b.png)![]({{site.baseurl}}/assets/images/d50ab6e03a34.png)![]({{site.baseurl}}/assets/images/c8b6522d6d57.png)![]({{site.baseurl}}/assets/images/dbbba0fe5fc4.png)![]({{site.baseurl}}/assets/images/0eec52c5d8e0.png)![]({{site.baseurl}}/assets/images/008516663306.png)

Figure is for illustrative purpose and does not provide deployment guidance (for example the number of T-BCs/T-TCs\* in a clock chain and network topology).

TAE

**PTP/SyncE path**

(FR1)

0 or more T-BCs/ T-TCs\* in the clock chain

(FR2)

nearest common T-BC

(FR2) (FR1)

?30...95 ns

(FR2) (FR1)

?65...130 ns

PRTC A:

<div class="table-wrapper" markdown="block">

|TE| <= 100 ns

</div>

PRTC B

<div class="table-wrapper" markdown="block">

|TE| <= 40 ns

</div>

ePRTC

<div class="table-wrapper" markdown="block">

|TE| <= 30 ns

</div>

1 or more T-BCs/ T-TCs\* in the clock

chain

(FR1)

?30...100 ns

?1100 ns

?1500 ns (weak requirement)

**The budgeting examples are based on the conservative assumption of linear accumulation between the 2 branches relevant to the TAE requirement.**

0 or more T-BCs/ T-TCs\* in the clock chain

(FR1)

?50 ns

(FR1)

?130 ns

?1100 ns

leaves more holdover margin to O-RU

?1500 ns

<div class="table-wrapper" markdown="block">

|TE| <= 80 ns

</div>

T-TSC

<div class="table-wrapper" markdown="block">

|TE| <= 80 ns

</div>

O-RU (regular)

T-TSC

remote site

O-RU (regular)

T-TSC

distribution site O-DU

T-BC

PRTC/ePRTC T-GM

T-BC

T-TSC

distribution site

O-DU

<div class="table-wrapper" markdown="block">

|TE| <= 35 ns

</div>

T-TSC

<div class="table-wrapper" markdown="block">

|TE| <= 35 ns

</div>

O-RU (enhanced)

T-TSC

remote site

O-RU (enhanced)

T-BC T-TC\*

T-BC T-TC\*

T-BC T-TC\*

130-260 ns

3000 ns

(FR1): NR intra-band continuous carrier aggregation in FR1

(FR2): NR intra-band continuous carrier aggregation in FR2 (co- located RUs only)

2

3

260 ns

##### 4 Figure 6.3.3-9: T-GM in Mid/Backhaul with T-BC chain

5

1. In this LLS-C3 config, option-D model, the T-GM in mid/back-haul is separated by multiple hops T-BC from
2. front-haul network. Otherwise, front-haul network model is same for option-C and option-D 8
3. Note: the time error budget allocation to support FR1 and FR2 is described in 6.3.2.2.2. Details can be found
4. in G.8271.1 [8] Appendix XII, Examples of design options for fronthaul and clusters of base stations. 11

1

# 7 Synchronization network models

## 7.1 Factors to be considered for synchronization network design

### 7.1.1 Source of clock and location of clock source

1. The source of timing should be traceable to a recognized primary time standard such as the Coordinated
2. Universal Time (UTC) or a global navigation satellite system (GNSS). The GNSS time offset from UTC is
3. contained in the GNSS broadcast message. UTC is the international reference time that is computed by the
4. Bureau International des Poids et Mesures (BIPM) from hundreds of atomic clocks maintained in national
5. laboratories worldwide. Local representations of UTC, commonly called UTC(k) time scales, are maintained
6. by national measurement institutes and time laboratories. GNSS uses a constellation of low-orbit satellites
7. that covers the entire Earth's surface. 12
8. It should be noted that for the purpose of meeting the 3GPP synchronization requirements (e.g., CPS), there is
9. no need to recover UTC time even when UTC traceability is required. 15
10. ePRTCs are typically distributed in the 5G Core location to protect their timing networks against regional
11. GNSS and global GNSS outages. An ePRTC system provides in the core of the network an independent and
12. autonomous timescale aligned with GNSS to deliver both frequency, phase and time. 19
13. PRTCs are typically deployed in a CRAN Hub location where they distribute timing to the Boundary Clocks
14. and O-DUs. The PRTCs can also, in an APTS configuration, receive timing from other PRTCs further down
15. in the pre-aggregation/aggregation network. 23

### 7.1.2 GM/clock source resiliency

1. Timing is a mission critical service that needs to be protected by designing a highly available timing
2. infrastructure so that no failure will cause the timing service to become unavailable. The timing infrastructure
3. is typically dependent upon GNSS as the timing source. The latter is a single point of failure if the GNSS
4. signal is jammed or spoofed at the PRTC-B location (e.g., Central Office, Mobile Telephone Switching Office
5. -MTSO, etc). It is important to take appropriate measures to mitigate the risks against GNSS failure. 30
6. Several mechanisms of resiliency can be implemented to ensure the continuity of the timing service:
7. ? multi-constellation GNSS to protect against one constellation failure.
8. ? GNSS Anti-jamming/spoofing on the PRTC-B GNSS antenna (GNSS failure)
9. ? e-PRTC-A to provide up to 14-days of holdover while maintaining up to 100 ns of accuracy.
10. ? PRTC-B equipped with Rubidium oscillator to extend the holdover period.
11. ? Alternate BTCA (PRTC/T-GM failure) for the timing network to automatically select an alternate
12. PRTC-B in a different location.
13. ? High Availability PRTC/T-GM to automatically transfer the IP address of the PRTC-B to another one
14. in a different building. 40

### 7.1.3 Holdover requirements

1. The duration for which the radio should continue to operate in normal operating mode when the
2. synchronization clock source is down. This can happen when GNSS, T-GM or network node in the
3. synchronization path goes down. 45
4. Major criteria to consider in determining holdover budget requirements:
5. ? Regulatory requirement from the government: each country/government may have different
6. requirements as to how long the service should be up and running when there is a GNSS failure.
7. ? Operator requirement to meet nominal operation of the service when sync goes down.
8. ? How soon an operator can address the sync issue caused by network or GNSS failure.
9. ? Sync redundancy model put in place.
10. ? How often the GNSS failure may occur? This may be caused by jamming, spoofing or some
11. neighbouring countries planned/unplanned intervention. 9
12. One number does not fit for all. Each operator needs to carefully plan and determine the required holdover
13. budget. Once required holdover budget is determined, it must be used to calculate overall synchronization
14. budget from end to end (T-GM to base-station node).
15. Note: CUS specification [33] does not make any explicit recommendation for holdover at Radio/base station 14
16. Ways to mitigate the holdover condition:
17. ? Sync redundancy through the alternate network path in case of network node failure
18. ? APTS in case of GNSS used at every cell site.
19. ? Alternate flow for PTP and Sync-E in the network path
20. ? High stratum oscillator in the end base station
21. ? Extended holdover support at source of the sync (Ex. T-GM with extended holdover) 21

### 7.1.4 Usage of packet rates

1. Based on the network deployment and sync precision requirements of the clock, the PTP packet rates may
2. need to be exercised differently. 25
3. The factors to be considered in configuring higher packet rate:
4. ? High Jitter/PDV in the network
5. ? One or more PTP unaware nodes used in the sync network.
6. ? Network that is expected to have burst traffic. 30

31 Different Telecom profiles and packet rate usage:

32 ? ITU-T G.8275.1 [1]

1. o Packet rate is fixed for this profile.
2. o 16 Sync, Delay-request and Delay-response and 8 Announce packets per second.
3. o User cannot change the packet rate in this profile mode of operation. Both TimeTransmitter
4. and TimeReceiver clocks shall be able to support and function properly with this packet rate.

37 ? ITU-T G.8275.2 [3]

1. o Packet rate is configurable for this profile.
2. o Allows up to 128 packets per second for Sync, Delay-request, Delay-Response and 8 announce
3. packets per second.
4. o Packet rates plays critical role based on the clock recovery algorithm used in this profile mode
5. of operation.

43

1. Note-1: Packet rate can also affect the bandwidth utilization on the link hence the network. Selecting
2. appropriate packet rate without compromising Sync performance is critical for good network operation.

### 2 7.1.5 Network Topology model

3 This section describes three common network topology model and deployment of sync in that network model. 4

5 7.1.5.1 Ring topology

6

7

![]({{site.baseurl}}/assets/images/5661797c630c.png)8

![]({{site.baseurl}}/assets/images/5c227e57d72f.png)![]({{site.baseurl}}/assets/images/5c227e57d72f.png)![]({{site.baseurl}}/assets/images/5c227e57d72f.png)![]({{site.baseurl}}/assets/images/bdaad108748c.png)![]({{site.baseurl}}/assets/images/5c227e57d72f.png)![]({{site.baseurl}}/assets/images/5c227e57d72f.png)![]({{site.baseurl}}/assets/images/5c227e57d72f.png)![]({{site.baseurl}}/assets/images/5c227e57d72f.png)![]({{site.baseurl}}/assets/images/5c227e57d72f.png)![]({{site.baseurl}}/assets/images/bdaad108748c.png)![]({{site.baseurl}}/assets/images/5c227e57d72f.png)![]({{site.baseurl}}/assets/images/bdaad108748c.png)![]({{site.baseurl}}/assets/images/5c227e57d72f.png)![]({{site.baseurl}}/assets/images/bdaad108748c.png)![]({{site.baseurl}}/assets/images/bdaad108748c.png)![]({{site.baseurl}}/assets/images/5661797c630c.png)![]({{site.baseurl}}/assets/images/16cbea08da81.png)![]({{site.baseurl}}/assets/images/16cbea08da81.png)![]({{site.baseurl}}/assets/images/16cbea08da81.png)![]({{site.baseurl}}/assets/images/56fe8030ae2c.png)![]({{site.baseurl}}/assets/images/16cbea08da81.png)![]({{site.baseurl}}/assets/images/16cbea08da81.png)![]({{site.baseurl}}/assets/images/cf4ac55d3157.png)![]({{site.baseurl}}/assets/images/16cbea08da81.png)![]({{site.baseurl}}/assets/images/16cbea08da81.png)![]({{site.baseurl}}/assets/images/16cbea08da81.png)

**T-BC**

**T-BC-1**

**T-BC**

**T-BC-3**

**T-BC**

Access Network

**T-BC**

**T-BC-2**

**T-GM-2**

**T-BC**

**T-BC-4**

**T-BC**

Access Network

**T-BC**

**T-BC**

9

10

11

1. **T-GM-1**

13

14

Metro Network

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

##### 36 Figure 7.1.5-1: Sync in ring topology

37

1. Access and Metro networks deployed in Ring topology. Every node between T-GM to Base station supports
2. T-BC as per G.8273.2 [2]. Red line indicates sync flow from T-GM-1 and purple line indicates sync flow from
3. T-GM-2.

41

1. T-BC-1 and T-BC-2 in the metro network is driving the sync to access network's T-BC-3 and T-BC-4
2. respectively. Careful planning of sync flow within access network is critical. Sync flow can be planned two
3. different ways - one directional flow such that all nodes in the access network source their clock in clockwise
4. or anti-clockwise direction or balance the network nodes either side of the head node (T-BC-3 or T-BC-4).
5. The above figure shows balanced sync flow model from T-BC-3 and T-BC-4 towards other nodes in the access
6. network.

48

1. Sync flow and sync redundancy in ring topology needs special consideration for multiple reasons including to
2. avoid the timing loop, budget calculation in case of failure condition. Sync-E transient is another important
3. aspect that needs to be considered when switching from one network node to another
4. 7.1.5.2 Tree/Linear topology

3

![]({{site.baseurl}}/assets/images/16cbea08da81.png)![]({{site.baseurl}}/assets/images/bdaad108748c.png)![]({{site.baseurl}}/assets/images/16cbea08da81.png)![]({{site.baseurl}}/assets/images/16cbea08da81.png)![]({{site.baseurl}}/assets/images/5c227e57d72f.png)![]({{site.baseurl}}/assets/images/5c227e57d72f.png)![]({{site.baseurl}}/assets/images/5c227e57d72f.png)![]({{site.baseurl}}/assets/images/16cbea08da81.png)![]({{site.baseurl}}/assets/images/16cbea08da81.png)![]({{site.baseurl}}/assets/images/5c227e57d72f.png)![]({{site.baseurl}}/assets/images/5c227e57d72f.png)![]({{site.baseurl}}/assets/images/5c227e57d72f.png)![]({{site.baseurl}}/assets/images/bdaad108748c.png)![]({{site.baseurl}}/assets/images/bdaad108748c.png)![]({{site.baseurl}}/assets/images/bdaad108748c.png)![]({{site.baseurl}}/assets/images/5c227e57d72f.png)![]({{site.baseurl}}/assets/images/9f1a9eb63ec0.png)![]({{site.baseurl}}/assets/images/a53599801deb.png)![]({{site.baseurl}}/assets/images/3bc9d2b3f126.png)

Access Network

Edge Network

Core Network

**T-BC-M**

**T-BC**

**T-BC**

**T-BC-N**

**T-BC-X**

**T-BC**

**T-BC**

**T-BC**

**T-BC**

**T-BC**

**T-BC**

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

##### Figure 7.1.5-2: Sync in Tree/Linear topology

26

1. Sync flow is from core to edge to access network in the above network topology model. Typically sync flow
2. is unidirectional as indicated in red arrows above in case of tree/linear topology. Here G.8275.1 [1] profile-
3. based deployment model used. This model also falls under LLS-C3 as per CUS specification [33]. 30
4. Sync budget calculation is linear and straightforward. It is important to consider alternate paths and failure
5. conditions for the worst-case scenario network budget calculation. Basically, number of network hops and
6. asymmetry in the network plays a critical role in determining end-to-end sync budget calculation. 34
7. Achieving carrier aggregation across two different leaf networks (T-BC-X to T-BC-M is one leaf network and
8. T-BC-X to T-BC-N is another leaf network) need proper planning. O-RUs connected to T-BC-N and T-BC-
9. M though located adjacent to each other, but their sync paths are different. 38

39 Further, redundant sync path is critical for failover and extended sync outages. 40

41

42

43

![]({{site.baseurl}}/assets/images/5661797c630c.png)

**T-GM**

1. 7.1.5.3 Ladder topology

2

![]({{site.baseurl}}/assets/images/db4281a77cfc.png)3

![]({{site.baseurl}}/assets/images/bdaad108748c.png)![]({{site.baseurl}}/assets/images/bdaad108748c.png)![]({{site.baseurl}}/assets/images/bdaad108748c.png)![]({{site.baseurl}}/assets/images/bdaad108748c.png)![]({{site.baseurl}}/assets/images/bdaad108748c.png)![]({{site.baseurl}}/assets/images/bdaad108748c.png)![]({{site.baseurl}}/assets/images/bdaad108748c.png)![]({{site.baseurl}}/assets/images/05a2baba28e1.png)![]({{site.baseurl}}/assets/images/05a2baba28e1.png)![]({{site.baseurl}}/assets/images/05a2baba28e1.png)![]({{site.baseurl}}/assets/images/db4281a77cfc.png)

4

5 **T-GM-1**

6

7

8

9

10

11

12

13

1. **T-BC**

15

16

17

18

19

**T-GM-2**

**T-BC**

Core Network

Edge Network

20 **T-BC T-BC**

21

22 **T-BC-X**

23

24

25

26

27

28

29

30

##### 31 Figure 7.1.5-3: Sync in ladder topology

32

Access Network

1. Redundant sync flows from two different GMs (T-GM-1 and T-GM-2) from core to edge to access network.
2. Red arrow represents T-GM-1 sync flow and purple arrow represents T-GM-2 sync flow. Further, the sync
3. flow is unidirectional from core to access network. 36
4. Every node is aware of timing and support G.8273.2 [2] based T-BC clocks and exercises G.8275.1 [1] profile.
5. All core, edge and access nodes have interconnectivity. Selection and propagation of sync flow as shown in
6. the topology should be made carefully by configuring PTP local-priority attribute and priority attribute for
7. Sync-E.

41

1. In the above topology model, non-failure condition, both red sync flow and purple sync flow brought all the
2. way to T-BC-X using proper priority attributes configuration at every hop of the network nodes. 44
3. End to end sync budget from T-GM to O-RU radio interface must be less than 1.5usec or the required target
4. phase budget. It is important to consider the longest path (network hops) for the budget calculation assuming
5. failure condition.

48

1

### 7.1.6 Number of hops

1. Number of clock node hops determination depends on the following factors:
2. ? Target time error budget to meet (Refer section 6.3.2 for detailed description for Target time error
3. budget and calculation)
4. ? Longest network path of the sync network (Refer Figure 7.1.6-1)
5. ? Type and class of clocks (BC or TC) used A, B or C
6. ? Type of Grandmaster/PRTC used (A, B or ePRTC etc)
7. ? Asymmetry and holdover budget requirements to meet. 10

11

RU6

RU1

RU

5

RU2

RU4

RU3

R5

R4

R6

R7

R1

GM

R2

R3

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

##### 47 Figure 7.1.6-1: Sync flow and hops count

48

1. The topology shown in Figure 7.1.6-1, has boundary clocks R1 to R7 and each boundary clock is serving one
2. or more RUs or Base stations. In normal operation condition R1 recovers time from GM and drives to both R2
3. and R7 nodes in downstream. RU1 connected to R7 is two hops away from GM (R1 and R7) shown as green
4. dotted line above. In this normal operational condition, the end-to-end time error budget for RU1 is just two
5. hops away from GM.

1

1. If the link between R1 and R7 goes down, the same RU1 would have to recover the clock over longest chain
2. of nodes (R1, R2, R3, R4, R5, R6 and R7) as shown in red dotted line. It is important to plan and design the
3. network by calculating the time-error budget for the longest synchronization path rather than shortest or best
4. path possible. Otherwise, synchronization does not work in network failure condition. 6
5. Note1: To meet 1.5usec end to end, the longest sync chain/ number of hops determination is critical.
6. Note2: Refer to G.8271.1 [8] specification for some additional description for number of hops consideration.

### 7.1.7 Asymmetry

1. What is asymmetry?
2. ? Difference in propagation delay between the forward and reverse path of PTP timeReceiver node from
3. its upstream timeTransmitter node.
4. ? Half of uncorrected asymmetry would translate to time error offset in the packet timeReceiver clock
5. from its timeTransmitter clock. 7
6. Types of asymmetries:
7. ? Static asymmetry
8. The (propagation) delay is constant or remains same irrespective of reboot of the node/optics or
9. system.
10. ? Dynamic (or semi static) asymmetry
11. The delay is not constant, or it would vary from reboot or reset of the node or interface or optics
12. module.

15

1. Note: Refer Appendix-III, IV, V of ITU-T G.8271 [7] for general details about asymmetry and how it can
2. impact the time/sync recovery by a timeReceiver clock. 18

19 7.1.7.1 Static asymmetry types:

20 1. Link/Fiber asymmetry

21 2. Optics asymmetry

22 3. Wavelength asymmetry

23

24 7.1.7.1.1 Link/Fiber asymmetry

25

26

![]({{site.baseurl}}/assets/images/bdaad108748c.png)![]({{site.baseurl}}/assets/images/bdaad108748c.png)![]({{site.baseurl}}/assets/images/2c62f0d38561.png)

Tx Fiber Len: 100m

R1

R2

27

28

29

30

31

32

33

34

### 35 Rx Fiber Len: 150m

![]({{site.baseurl}}/assets/images/bdaad108748c.png)![]({{site.baseurl}}/assets/images/bdaad108748c.png)

Fig-A

Child-link1 : 100m

Child-link2 : 200m

AE/LAG bundle

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

47 R1

48

49

50

Fig-B R2

##### 1 Figure 7.1.7-1: Link/Fiber asymmetry

2

1. The link asymmetry is defined as : (dtttr - dtrtt)/2
2. ? dtttr - delay from the timeTransmitter clock to timeReceiver clock.
3. ? dtrtt - delay from the timeReceiver clock to timeTransmitter clock. 6
4. In figure-A of Figure 7.1.7-1, Tx and Rx fiber's length differ by 50 meters between R1 (timeTransmitter clock)
5. and R2 (timeReceiver clock) nodes. The propagation delay is 4.9 ns per meter. Effective asymmetry introduced
6. is 50 x 4.9 = 225 ns. Half of asymmetry would translate to time-error offset recovered at timeReceiver node,
7. 225/2 => 122.5 ns at timeReceiver clock (R2). The topology described here is the best example for fiber
8. asymmetry introduced by Tx and Rx fibers of the same interface. 12
9. In figure-B of Figure 7.1.7-1, R1 and R2 connected over two child links (1 and 2) using LAG/AE bundle. If
10. PTP packets from R1 to R2 exchanged over child-link1 and R2 to R1 exchanged over child-link2, the effective
11. asymmetry is (200 - 100) x 4.9 ns => 490 ns. Half of this asymmetry (490/2 => 245 ns) would translate into
12. time-error offset at timeReceiver clock. 17
13. Note: Here the fiber length of Rx and Tx fibers of the same link/interface is same. But the fiber length of two
14. different interfaces/links are not same and labelled as Link asymmetry. 20
15. 7.1.7.1.2 Asymmetry in optics (Grey optics)
16. The propagation delay inside the optics module is not zero. Especially the Tx and Rx may not be equal within
17. a given optics. This introduces static asymmetry within the optics. This is typically seen as small value unlike
18. the fiber asymmetry, but every nanosecond counts for high precision sync requirement. 25
19. 7.1.7.1.3 Wavelength Asymmetry
20. The asymmetry due to the use of different wavelength is obtained by calculating the group delay applicable to
21. wavelengths used in the forward and in the reverse direction. 29

30 Asymmetry A = df - dr = L \* (nr - nf)/c 31

1. ? L is the distance (fiber length)
2. ? c is the speed of light.
3. ? df and dr are the forward and reverse transmission delay.
4. ? nr and nf are the group refractive indexes applicable at the wavelength used in the forward and
5. reverse direction, respectively. 37
6. The evaluation of the refractive indexes can be done either using known chromatic dispersion data (e.g., from
7. the optical fiber data sheet) or, in the case that the dispersion is unknown, making a direct delay measurement
8. at three different wavelengths (the refractive index for an arbitrary wavelength can then be derived by quadratic
9. interpolation).

42

1. These data can then be used to derive the group delay of a generic wavelength. In particular, in the case of an
2. ITU-T G.652 compliant fiber, the group delay at the applicable wavelengths can be calculated making use of
3. the Sellmeier equations as described in ITU-T G.652 standard. 46
4. Note: For additional details refer Appendix-III in ITU-T G.8271 [7] standard and group delay specification
5. and measurement method are specified in G.671 [40], Clause 3.2.2.25. 49

50

1. 7.1.7.2 BiDi Optics
2. Usage of BiDi optics is one option to control the fiber asymmetry. Single strand (BiDi) fiber transmission with
3. different wavelength for Tx and Rx side - for example Tx uses 1310 nm wavelength and Rx uses 1550 nm
4. wavelength.

5

1. Based on the wavelength the propagation delay is different, but it can be calculated and compensated by
2. knowing the wavelength used in Tx and Rx directions. 8
3. Note: BiDi optics usage is not universal and not available for all possible different interface speeds.
4. 7.1.7.3 Dynamic (or semi-static) asymmetry
5. ? Delay inside optics module is not fixed.
6. ? It changes every time when the module is reset, powered down and up or sometimes when the link
7. flaps at either end of the connection.
8. ? Typically seen in Coherent, tuneable and OTN optics.
9. ? This is really a tough one to address. It is fundamentally difficult to measure and hence difficult to
10. compensate.
11. It is important to understand this dynamic nature of the delay variation inside the optics module whenever
12. these modules are used for the deployment and in turn calculating the sync budget. 19

### 7.1.8 PTP packet transport

1. PTP packet transport mechanisms are limited by which telecom profile used for the synchronization.
2. Transport mechanisms for two major telecom phase profiles considered in this specification are described
3. below:

24

25 ITU-T G.8275.1 [1]:

1. ? PTP over Ethernet Multicast
2. ? Two types of multicast frames used - Link local and forwardable multicast address.
3. ? Link local multicast is recommended if boundary clock used at every hop.
4. ? Mix of boundary clocks and transparent clocks deployment, forwardable multicast is recommended. 30

31 ITU-T G.8275.2 [3]:

1. ? PTP over IPv4 or PTP over IPv6 unicast model
2. ? Packet rates can be negotiated between TimeTransmitter and TimeReceiver clocks. 34
3. Note: Usage of PTP over IPv4/IPv6 transport for full path timing support deployment is something possible
4. but it is not covered by the ITU-T Telecom standards.

### 7.1.9 Selection of timing profile

1. In general profile selection is driven based on following criteria:
2. ? Target Synchronization Precision requirement
3. o The target precision requirement plays critical role in selection of timing profile.
4. o For high precise application (+/-130 nsec), ITU-T G.8275.1 [1] profile is recommended.
5. o For end to end 1.5usec target - it may be possible to achieve using ITU-T G.8275.2 [3] profile
6. with proper planning and budgeting.
7. o Additionally, FFO limits must be considered.
8. ? Transport mechanism used in the transport network.
9. o The usage of L3 versus L2 protocols in the transport nodes sometimes lead to selection of profile

11 as G.8275.1 [1] (L2) or G.8275.2 (L3) [3].

1. o The end nodes capability to support the specific timing profile will also play an important role in
2. selecting timing for profile for the transport network nodes.
3. ? The sync capability of the network nodes used in the transport.
4. o The capability of every node supporting synchronization in the transport network can be a factor
5. in deciding the right profile.
6. o In green field network it is possible to use full timing support profile (G.8275.1 [1]) but in brown
7. field network it might be possible with G.8275.2 [3] profile.
8. ? Access to GNSS at cell site and associated CapEx and OpEx leverage
9. o Sync can be delivered directly or close to the base-station nodes based on the accessibility and
10. availability of GNSS either at cell site or close to the cell-site.
11. o When associated cost is not a bigger concern for installation and maintenance of the high number
12. of GNSS/T-GMs in the network.
13. ? Network hops in the sync network
14. o In some cases, it may be practically limiting to achieve the targeted sync precision if too many
15. network hops between the T-GM and O-RU (base station nodes).
16. o This can lead to usage of LLS-C4 option with GNSS directly connected to base-station.
17. ? Asymmetry and control over asymmetry in the network
18. o If asymmetry (packet, path, link asymmetry) expected to be difficult to control, choosing right
19. profile would play a critical role.
20. o For example - full timing support profile gives better control to address the network asymmetry
21. than partial timing support profiles.
22. ? Administrator control of the synchronization network path
23. o Any network hops/cloud(s) in the middle of synchronization path that does not belong to mobile
24. operator administrative control can be risky to deploy sync.
25. o Example - if mobile operator selects full timing support profile, and intermediate cloud/network
26. provider does not support timing in their network, it will break the synchronization chain. 38
27. **Reco: This ORAN specification recommends G.8275.1** [**1]** **full timing support profile and hence plan for**
28. **the transport network to accommodate the transport mechanism described in this profile (PTP over**
29. **Ethernet Multicast).**

42

## 7.2 GM deployment models

### 7.2.1 Centralized GM network model

3

![]({{site.baseurl}}/assets/images/16cbea08da81.png)![]({{site.baseurl}}/assets/images/16cbea08da81.png)![]({{site.baseurl}}/assets/images/16cbea08da81.png)![]({{site.baseurl}}/assets/images/5c227e57d72f.png)![]({{site.baseurl}}/assets/images/5c227e57d72f.png)![]({{site.baseurl}}/assets/images/5c227e57d72f.png)![]({{site.baseurl}}/assets/images/4e5912fba4ef.png)![]({{site.baseurl}}/assets/images/16cbea08da81.png)![]({{site.baseurl}}/assets/images/4e5912fba4ef.png)![]({{site.baseurl}}/assets/images/4e5912fba4ef.png)![]({{site.baseurl}}/assets/images/4e5912fba4ef.png)![]({{site.baseurl}}/assets/images/5c227e57d72f.png)![]({{site.baseurl}}/assets/images/5c227e57d72f.png)![]({{site.baseurl}}/assets/images/5c227e57d72f.png)![]({{site.baseurl}}/assets/images/4e5912fba4ef.png)![]({{site.baseurl}}/assets/images/ed1c0efb86a0.png)![]({{site.baseurl}}/assets/images/f822a5039b86.png)![]({{site.baseurl}}/assets/images/d7947cddaff7.png)![]({{site.baseurl}}/assets/images/3047cc5ba929.png)![]({{site.baseurl}}/assets/images/e7891c6ef0cb.png)![]({{site.baseurl}}/assets/images/58b8dc7edbf0.png)![]({{site.baseurl}}/assets/images/9549c59df878.png)![]({{site.baseurl}}/assets/images/a3ddb76f47d5.png)![]({{site.baseurl}}/assets/images/84d4c00daba9.png)![]({{site.baseurl}}/assets/images/5c227e57d72f.png)![]({{site.baseurl}}/assets/images/4e5912fba4ef.png)![]({{site.baseurl}}/assets/images/16cbea08da81.png)![]({{site.baseurl}}/assets/images/5c227e57d72f.png)![]({{site.baseurl}}/assets/images/4e5912fba4ef.png)![]({{site.baseurl}}/assets/images/4e5912fba4ef.png)![]({{site.baseurl}}/assets/images/4e5912fba4ef.png)

Every node in Sync

distribution path supports

boundary (T-BC) clock

Centralized

Grandmaster

**T-BC**

**T-BC**

**T-BC**

**T-GM**

**T-BC**

No GNSS

required

**T-BC**

**T-BC**

**T-BC**

**PRTC**

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

![]({{site.baseurl}}/assets/images/db4281a77cfc.png)

o

### L2 Multicast (G.8275.1)

##### 26 Figure 7.2.1-1: Centralized T-GM network model

27

1. In this model, T-GM is located deep in the network (core or edge of the network). All nodes from GM to base
2. station nodes are aware of timing and capable of supporting T-BC clock as per G.8273.2 [2] standard using
3. full timing support profile (G.8275.1 [1]). 31
4. This model can be deployed in a green field network or when the network hops from T-GM to end base station
5. is not high. It is still important to consider sync redundancy for failure condition and asymmetry in the network
6. for the purpose of reliable operation and budget calculation. 35
7. Advantages of this deployment model:
8. ? Don't need to deploy and manage high number of PRTC/T-GM clocks in the network as the clock
9. sync flows from core of the network.
10. ? OpEx and CapEx will be low as fewer T-GMs are needed.
11. ? No constraints on GNSS line of sight access issue at cell-sites 41
12. Note: The cost of OpEx and CapEx comparison made with reasoning that, no need to install and manage T-
13. GM/GNSS at each cell-site when network-based synchronization model exercised. 44

45

### 1 7.2.2 Distributed GM network model

2

![]({{site.baseurl}}/assets/images/16cbea08da81.png)![]({{site.baseurl}}/assets/images/16cbea08da81.png)![]({{site.baseurl}}/assets/images/16cbea08da81.png)![]({{site.baseurl}}/assets/images/5c227e57d72f.png)![]({{site.baseurl}}/assets/images/5c227e57d72f.png)![]({{site.baseurl}}/assets/images/5c227e57d72f.png)![]({{site.baseurl}}/assets/images/16cbea08da81.png)![]({{site.baseurl}}/assets/images/5c227e57d72f.png)![]({{site.baseurl}}/assets/images/db4281a77cfc.png)![]({{site.baseurl}}/assets/images/5c227e57d72f.png)![]({{site.baseurl}}/assets/images/5c227e57d72f.png)![]({{site.baseurl}}/assets/images/4e5912fba4ef.png)![]({{site.baseurl}}/assets/images/5c227e57d72f.png)![]({{site.baseurl}}/assets/images/4e5912fba4ef.png)![]({{site.baseurl}}/assets/images/16cbea08da81.png)![]({{site.baseurl}}/assets/images/5c227e57d72f.png)

**T-BC**

**T-BC**

**PRTC**

**T-GM**

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

14 L2 Multicast (G.8275.1) No timing support

15

1. Figure 7.2.2-1: Distributed T-GM network model 17
2. Sync starts from Front-haul or Midhaul (not in the core or backhaul). One or more T-GMs in the
3. Fronthaul/Midhaul and delivering sync to base-stations (O-RUs) and O-DUs. From T-GM to base-station
4. nodes full timing support profile G.8275.1 [1] is used. 21

22 Advantages of this deployment model:

23 ? Fewer number of network hops

24 ? Asymmetry in the network is better manageable.

25 ? In a multi operator environment where Fronthaul/Midhaul, Backhaul and core networks are under

26 different operator's control, it is easier to manage and deploy the sync requirements by mobile

27 operator.

28

### 29 7.2.3 Fully distributed GM/PRTC network model

30

![]({{site.baseurl}}/assets/images/16cbea08da81.png)![]({{site.baseurl}}/assets/images/16cbea08da81.png)![]({{site.baseurl}}/assets/images/16cbea08da81.png)![]({{site.baseurl}}/assets/images/5c227e57d72f.png)![]({{site.baseurl}}/assets/images/5c227e57d72f.png)![]({{site.baseurl}}/assets/images/5c227e57d72f.png)![]({{site.baseurl}}/assets/images/16cbea08da81.png)![]({{site.baseurl}}/assets/images/5c227e57d72f.png)![]({{site.baseurl}}/assets/images/db4281a77cfc.png)![]({{site.baseurl}}/assets/images/5c227e57d72f.png)![]({{site.baseurl}}/assets/images/5c227e57d72f.png)![]({{site.baseurl}}/assets/images/5c227e57d72f.png)![]({{site.baseurl}}/assets/images/16cbea08da81.png)![]({{site.baseurl}}/assets/images/5c227e57d72f.png)![]({{site.baseurl}}/assets/images/db4281a77cfc.png)![]({{site.baseurl}}/assets/images/db4281a77cfc.png)![]({{site.baseurl}}/assets/images/db4281a77cfc.png)![]({{site.baseurl}}/assets/images/db4281a77cfc.png)![]({{site.baseurl}}/assets/images/2fc7866bd184.png)![]({{site.baseurl}}/assets/images/4e5912fba4ef.png)

**T-GM**

Distributed

GNNS at cell sites.

L3 unicast (G.8275.2)

31

32

33

![Icon  Description automatically generated]({{site.baseurl}}/assets/images/db4281a77cfc.png)34 **PRTC**

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

##### Figure 7.2.3-1: Fully distributed T-GM/PRTC network model

47

1. GNSS at base-station/radio unit is similar LLS-C4 configuration model. Using PTP over partial timing support
2. network as backup for GNSS failure at cell site is not recommended for high precision synchronization
3. requirements.
4. Usage of PTP as backup over PTS network can be considered only for non-category A and B front-haul
5. applications.

3

### 7.2.4 Comparison of Centralized versus Distributed GM network model

1. This section describes the disadvantages of distributed and network-based sync models: 6
2. Direct GNSS to Base station:
3. ? Single point of failure
4. ? Line of sight access to GNSS can be an issue if it is urban deployment.
5. ? Jamming and/or spoofing can bring down the entire cell site down.
6. ? No extended holdover possible as it depends on oscillator used in the base-station nodes.
7. ? High precision sync application that needs precision between the cluster of cell-sites to be precise with
8. less than or equal to +/-130 or +/-65 nanoseconds (ex: Carrier aggregation, NR MIMO, LTE MIMO)

14 may not be achievable with direct GNSS based sync.

1. Ex1: PRTC-A it is difficult to achieve even +/-130 nsec even with enhanced Radio.
2. Ex2: PRTC-B - it is difficult to achieve +/-65 nsec even with enhanced Radio.
3. ? OpEx and CapEx may be high as it depends on how many base stations deployed.
4. ? Cost of monitoring and downtime is high. 19
5. Network based synchronization using one or few GMs located at centralized location:
6. ? Every node in the network must support PTP/SyncE in case of full timing support profile deployment
7. (exception can be O-RU)
8. ? Asymmetry in the network can cause time/phase recovery error.
9. ? Any node behaves incorrectly in the chain of nodes from GM to base-station, can affect entire chain
10. of downstream nodes performance.
11. ? KPI can be complex in wholesale environment especially with G.8275.2 [3] profile deployment case. 27
12. 7.2.4.1 Different architecture choices for timing and synchronization:

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Architecture options** | **Pros and Cons** |
| GNSS deployed at every cell site | * Pro: No sync support required from network * Con: High cost, GNSS might not always be available (jamming or spoofing) |
| PTP Full Timing Support (FTS) using G.8275.1 [1] profile | * Pro: Low cost and complexity as only few GMs needed * Con: Timing support needed at every node in the network chain |
| Assisted Partial Timing Support (APTS) using G.8275.2 [3] profile | * Pro: Same as GNSS deployed at every cell site with added cost and complexity for the network-based sync backup. * Con: High cost and complexity |
| Partial Timing Support (PTS) using G.8275.2 [3] profile | * Pro: Less cost, useful for brownfield deployment as all network nodes need to not support sync * Con: Will be challenging to achieve synchronization precision as it is highly dependent on the behavior of the PTP unaware network nodes. |

</div>

1. **Table 7-1 : Different architecture choices for sync**

# 8 Timing Use cases and Solution Options

* 1. This section describes the timing and synchronization solution options when applied to actual deployment use
  2. cases provided by operators. The main synchronization objective is to synchronize the radios with their serving
  3. O-DUs and maintain required timing performance (absolute between O-RU and O-DU, and relative between
  4. O-RUs).

6

## 8.1 Transport network topology

1. Based on the operator use cases provided in [32], more detailed transport network topology, particularly related
2. to the Access Transport Network, is described in the following subsections. 10
3. The icons of network transport nodes used in the diagram are defined as follows:
4. ? CSR: Cell Site Router, collocated with O-RUs
5. ? HSR: Hub Site Router, aggregation router with large switching capacity
6. ? HSR-F: Hub Site Router that distribute fronthaul traffics to O-DUs
7. ? HSR-B/M: Hub Site Router that aggregate Backhaul or Midhaul traffics. 16

### 8.1.1 C-RAN Architecture with non-collocated O-RU and O-DU

1. Figure 8.1.1-1 presents a Hub-Spoke topology that is applied to the Access Transport Network for the operator
2. use case Scenario 1 in [32], where O-RUs are located at cell site and O-DUs and O-CUs are collocated at the
3. Hub site. The topology is described as follows:
4. ? The CSR aggregates the fronthaul traffics from multiple O-RUs in the same site and transports the
5. merged traffic via high-speed ports to the Hub.
6. ? The HSR aggregates the Fronthaul traffic from multiple sites.
7. ? The HSR-F distributes the Fronthaul traffic received from HSR to the serving O-DUs that are paired
8. to the corresponding O-RUs.
9. ? O-DU and O-CU are connected internally without going through transport network, or they are
10. implemented as an integrated unit.
11. ? The backhaul traffic from the multiple O-CUs are aggregated by HSR-H and are transported to the
12. aggregation Transport network.
13. ? Connection between HSR and HSR-B is established for management and/or synchronization purposes.
14. ? Optionally, the HSR-F may not be used and O-DUs are directly connected to HSR. 32

33 The requirements of the timing and synchronization for architecture shown in Figure 8.1.1-1: 34

1. ? Maintain the frequency and time/phase synchronization between O-RU and its serving O-DU, within
2. the specified Timing Alignment Error (TAE) allowance.
3. ? Maintain the frequency and time/phase synchronization between O-RUs that are connected to the same
4. CSR, within the specified Timing Alignment Error (TAE) allowance, per 3GPP Timing Precision
5. requirement for different wireless applications.
6. ? Maintain the frequency and time/phase synchronization between O-RUs that are not connected to the
7. same CSR, within the specified Timing Alignment Error (TAE) allowance, per 3GPP Timing Precision
8. requirement for different wireless applications. 43

![]({{site.baseurl}}/assets/images/ae8775c6ef05.jpg)1

2

##### Figure 8.1.1-1 C-RAN architecture with collocated O-DU and O-CU

4

1. Similarly, the Hub-Spoke architecture may apply to the operator use case Scenario 5 in [32], where O-CUs are
2. located at a further centralized Hub site. From Fronthaul transport point of view, both Figure 8.1.1-1 and
3. ![]({{site.baseurl}}/assets/images/396a8dd17a68.jpg)Figure 8.1.1-2 share the same architecture. Therefore, the timing solution for both is expected to be similar. 8

9

10

##### 11 Figure 8.1.1-2 C-RAN architecture with split O-DU and O-CU

12

### 8.1.2 C-RAN Architecture with O-RU and O-DU collocated at cell site

1. This use case applies to the Hub-spoke architecture to Operator use case scenario 2, as shown in Figure 8.1.2-1,
2. where O-DU and O-RU are collocated at the cell site, and O-CUs are centralized at the Hub site. The transport
3. traffics flow is summarized as follows:

5

1. ? The O-RUs are connected to O-DUs via the Fronthaul link going through the CSR in the same site.
2. ? The CSR also aggregates the Midhaul traffic from multiple O-DUs in the same site and transports the
3. merged traffic to the Hub.
4. ? There are two logical flows (Fronthaul, Midhaul) between O-DU and CSR as shown in the Figure

10 8.1.2-1.

11 ? The HSR aggregates the Midhaul traffics from multiple cells sites.

12 ? The backhaul traffics from the multiple O-CUs are aggregated by HSR-B and are transported to the

13 Aggregation Transport network.

14 ? Connection between HSR and HSR-B is established for management or synchronization purposes. 15

![]({{site.baseurl}}/assets/images/5509ba8bfb18.jpg)16 The timing and synchronization requirement shall remain the same as described in section 8.1.1. 17

18

19

##### 20 Figure 8.1.2-1 C-RAN architecture with collocated O-RU and O-DU

21

22

### 23 8.1.3 Shared O-RU

24

1. "Shared- O-RU" is defined by O-RAN WG4 as an O-RU that is shared between multiple O-DUs by a single
2. operator, and/or multiple O-DUs by multiple operators. O-DUs of same or different operators shall connect
3. to the Shared O-RU using existing CUS-Plane interface definitions and procedures, as reference to the
4. following figure from [33], where SRO stands for Shared Resource Operator. 29

![]({{site.baseurl}}/assets/images/9a506bd6c660.jpg)1

##### 2 Figure 8.1.3-1 Shared O-RU

3

1. The transport network needs to support the connectivity between a Shared O-RU to multiple O-DUs. The
2. transport architecture may vary depending on how the transport nodes (TNs) are shared among the SROs. 6
3. Figure 8.1.3-2 illustrates a shared transport architecture for Shared O-RU where common network nodes
4. (CSR, HSR, etc.) are shared by the O-DUs involved in the Shared O-RU operation. The O-DUs may belong
5. to the same SRO or different SROs. While the transport network is managed by only one SRO that is
6. referred as Shared O-RU Host. This transport architecture only supports the use case where the O-DUs under
7. Shared O-RU are all collocated. For simplicity, other RAN nodes not related to the Shared O-RU are not
8. shown in this figure.

![]({{site.baseurl}}/assets/images/cf67ef906bce.jpg)13

14

##### 15 Figure 8.1.3-2 Common transport for Shared O-RU

16

17

1. Figure 8.1.3-3 shows an alternative transport architecture where transport network is separated and allowed
2. to be managed by different SROs, for security reason or other factors. This transport architecture enables the
3. use case where O-DUs are not collocated. 21

![]({{site.baseurl}}/assets/images/fdea14f1b545.jpg)1 .

2

##### 3 Figure 8.1.3-3 Separated transport for Shared O-RU

4

1. Note that the CSR at cell site in the above figure is still shared by both SROs, this is because O-RUs with
2. two physical interfaces and each managed by different SROs not yet supported by M-plane specification.
3. Therefore, CSR separation by this use case is out of scope of the current specification. 8
4. The objective of timing/sync shall remain the same for Shared O-RU: maintain TAE performance between
5. O-RAN and O-DU and between O-RUs, as described in section 8.1.1.

## 8.2 Timing Solution Options

1. This section describes options for possible timing solutions based on the network topologies defined in section
2. 8.1. The focus is on getting O-RUs timing synchronized with their serving O-DUs and achieving required
3. timing accuracy performance. All solutions assume G.8275.1 [1] profile therefore it is required that all the
4. network nodes be PTP aware. 6

### 8.2.1 Timing Solutions for C-RAN Architecture with non-collocated O-RU and O-

1. DU
2. The timing solution options presented in this section refer to the Access Transport Network topology as shown
3. in Figure 8.1.1-1or Figure 8.1.1-2.

11

1. 8.2.1.1 Timing Solution by LLS-C3 configuration with GM from Fronthaul
2. This timing solution option is provided based on the timing model described in section 6.3.3.7 (LLS-C3,
3. Option B), where Telecom Grand Master (T-GM) is connected to the Fronthaul aggregator HSR and HSR
4. distributes the timing to multiple CSRs and HSR-Fs, which will further deliver the timing to O-RUs and O-
5. DUs.

17

1. This solution is suitable for green field deployment where there is always Ethernet based eCPRI connection
2. ![]({{site.baseurl}}/assets/images/94e3751e421c.jpg)between HSR-F and O-DUs. 20

21

22

##### 23 Figure 8.2.1-1 Timing solution by C3 configuration with GM from Fronthaul

24

1. As result, timing accuracy performance is characterized by following the hop counts:
2. ? Relative timing accuracy between intra site O-RUs:
3. *T-TSC (O-RU) + T-BC (CSR, Nearest Common BC) + T-TSC (O-RU)*

1

* 1. ? Relative timing accuracy between inter site O-RUs:
  2. *T-TSC (O-RU) + T-BC (CSR) + T-BC (HSR, Nearest Common BC) + T-BC (CSR) + T-TSC (O-RU)*

4

1. ? Timing accuracy between an O-RU and O-DU:
2. *T-TSC (O-RU) + T-BC (CSR) + T-BC (HSR, nearest common BC) + T-BC (HSR-F) + T-TSC (O-*
3. *DU)*

8

1. 8.2.1.2 Timing Solution by LLS-C3 configuration with T-GM from Backhaul
2. This timing solution option is provided based on the timing model described in section 6.3.3.8 (LLS-C3,
3. Option C), where the Telecom Grand Master (T-GM) is connected to the backhaul aggregator HSR-B. HSR-
4. B serves as a first hop timing gateway to distribute the PTP flows to multiple O-DUs and HSR, which will
5. further distribute the timing to CSR and HSR-F. 14
6. Number of clock hops for calculating the timing accuracy:
7. ? Relative timing accuracy between intra-site O-RUs:
8. *T-TSC(O-RU) + T-BC(CSR, Nearest Common BC) + T-TSC(O-RU)*

18

1. ? Relative timing accuracy between inter-site O-RUs:
2. *T-TSC(O-RU) + T-BC(CSR) + T-BC(HSR, Nearest Common BC) + T-BC(CSR) + T-TSC(O-RU)*

21

1. ? Timing accuracy between an O-RU and O-DU pair:
2. *T-TSC(O-RU) + T-BC(CSR) + T-BC(HSR) + T-BC (HSR-B, nearest common BC) + T-TSC(O-DU)*

![]({{site.baseurl}}/assets/images/5083e7cd8241.jpg)24

25

26

##### 27 Figure 8.2.1-2 Timing solution by LLS-C3 configuration with T-GM from Backhaul

28

1. The benefit of this solution is support for some non-O-RAN compliant use cases (such as Scenario 4 described
2. in [32], where there is no direct Ethernet link between HSR-F and O-DUs. For example, Figure 8.2.1-3
3. illustrates timing solution to support legacy RRH and BBU with RoE as Fronthaul transport. In this case, HSR-
4. F needs to receive sync from HSR in order to get synchronized with BBU for RoE transmission. The Timing
5. chain for RoE:

4

5 *T-TSC(CSR) + T-BC(HSR) + T-BC (HSR-B, nearest common BC) + T-TSC(BBU)*

![]({{site.baseurl}}/assets/images/892de62a8f82.jpg)

6

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| 7 | **Figure 8.2.1-3 Timing solution to support RoE** |  |
| 8 |  |
| 9 | 8.2.1.3 Timing solution - LLS-C3 configuration with Ring topology in Midhaul and Backhaul | - |
| 10 | O-DU connected to HSR and sync starts from Backhaul |  |

</div>

1. In reference to ring topology model given in section 7.1.5.1, the Figure 8.2.1-4 presents a case where both
2. Midhaul and Backhaul networks are ring and synchronization flows from T-GM located in the backhaul ring. 13
3. T-GM-A and T-GM-B are two GMs located in backhaul ring (R1) providing sync redundancy. The backhaul
4. boundary clock nodes - BH-1, BH-2 and BH-3 are configured to source the clock from T-GM-A whereas BH-
5. 4, BH-5 and BH-6 are configured using A-BTCA algorithm and PTP attributes described in section 6.2.6, to
6. source the clock from T-GM-B.
7. In midhaul ring (R2), the HSR-1 and HSR-2 sources sync from T-GM-A through BH-3 node whereas the
8. HSR-3 sources sync from T-GM-B through BH4 node. O-DUs are connected to HSR nodes. 20
9. In fronthaul, CSR-1 and CSR-2 sources sync from T-GM-A through HSR-1 and HSR-2 respectively whereas
10. CSR-3 sources sync from T-GM-B through HSR-3. 23
11. The Blue and Green arrows represent active sync path from T-GM-A and T-GM-B and the Grey arrow
12. represents the standby/redundant flow in case of sync failure. 26
13. Note: The number of hops in the synchronization chain is constrained by the type of clocks (class-A, Class-B
14. or Class-C) used, presence of Sync-E or enhanced Sync-E and the capability of O-RU (oscillator, filter
15. bandwidth - refer section Annex H of [33] and section 6.3 of this specification) 30

31

1

![]({{site.baseurl}}/assets/images/dc188055ffa2.jpg)2

3

4

##### 5 Figure 8.2.1-4 Ring topology with sync from Backhaul and O-DU connected to HSR

6

1. The timing error budget calculation described in section 6.3.2, including error introduced by Sync-E transient
2. shall be considered to meet the end-to-end synchronization requirements. 9
3. Note: Clock distribution in Xhaul networks is recommended (depending on the topology) to be uni-directional
4. from upstream to downstream (Backhaul to Midhaul and Midhaul to Fronthaul). When a clock flow changes
5. from downstream to upstream (also known as Clock backflow), caused by a failure in the network or node, it
6. is difficult to predict the failed over clock flow, and it may cause unexpected deterioration of clock accuracy. 14
7. In the topology described in Figure 8.2.1-4, the PTP flow between HSR-2 and CSR-2 may get reversed when
8. the link between HSR-1 and HSR-2 goes down and HSR-1, HSR-2 and CSR-2 PTP ports are configured with
9. default PTP attributes. This is basically a reverse flow of synchronization, and this can be prevented by
10. configuring the ports in HSR-1/2/3 connected to CSRs at cell sites as "TimeTransmitterOnly" PTP port as per
11. ITU-T G.8275.1 [1]

20

1. 8.2.1.4 Timing solution - LLS-C3 configuration with Ring topology in Midhaul and Backhaul -
2. O-DU connected to CSR and sync starts from Backhaul

23

24

![]({{site.baseurl}}/assets/images/dd36101402f4.jpg)1

2

3

##### Figure 8.2.1-5 Ring topology with sync from backhaul network and O-DU connected to CSR

5

1. The topology described in Figure 8.2.1-5 differs from Figure 8.2.1-4 by O-DU location. In the topology
2. described in Figure 8.2.1-5, the O-DU is connected directly to CSR node. This topology model guarantees
3. both O-DU and O-RU sources the sync from same upstream node, CSR in this case. 9
4. 8.2.1.5 Timing solution - LLS-C3 configuration with Ring topology in Midhaul and Backhaul -
5. O-DU connected to HSR and sync starts from midhaul network

12

13

![]({{site.baseurl}}/assets/images/364dc8598073.jpg)1

2

3

##### 4 Figure 8.2.1-6 Ring topology with sync from midhaul and O-DU connected to HSR node

5

1. In order to avoid longer synchronization network hops, the topology described in Figure 8.2.1-6 presents a
2. model where T-GM-A and B located in the midhaul. There are no synchronization requirements in the
3. backhaul for this topology model. 9
4. 8.2.1.6 Timing solution - LLS-C3 configuration with Ring topology in Midhaul and Backhaul -
5. O-DU connected to CSR and sync starts from midhaul network

12

13

![]({{site.baseurl}}/assets/images/5ce37977ffce.jpg)1

##### 2 Figure 8.2.1-7 Ring topology with sync from midhaul and O-DU connected to CSR node

3

1. In this topology presented in Figure 8.2.1-7, the O-DUs are connected to CSR node directly and
2. synchronization starts from midhaul network (R2). The backhaul network (R1) is not aware of synchronization
3. in this model. 7
4. 8.2.1.7 Timing Solution with LLS-C2 configuration with single O-DU
5. Following the LLS-C2 option B model given in section 6.3.3.5, Figure 8.2.1-8 presents a simple C2 timing
6. configuration where one O-DU has the capacity serving multiple O-RUs at multiples sites via a HSR that
7. aggregates the Fronthaul traffic and therefore serves as nearest common BC. A PRTC/T-GM directly feeds
8. the PTP timing to the O-DU, or optionally it can be integrated with the O-DU. 13
9. The benefit of this C2 timing solution is O-DU is in PTP path to all the O-RUs, which gives the O-DU better
10. control for optimizing the radio performance. 16
11. The timing accuracy is characterized by following the hop counts:
12. ? Relative timing accuracy between intra cell-site O-RUs:
13. *T-TSC (O-RU) + T-BC (CSR, Nearest Common BC) + T-TSC (O-RU)*

20

1. ? Relative timing accuracy between inter cell-site O-RUs:
2. *T-TSC (O-RU) + T-BC (CSR) + T-BC (HSR, Nearest Common BC) + T-BC (CSR) + T-TSC (O-RU)*

23

1. ? Timing accuracy between O-RU and O-DU:
2. *T-TSC (O-RU) + T-BC (CSR) + T-BC (HSR) + T-BC (O-DU)*

26

![]({{site.baseurl}}/assets/images/dbcd8e561aed.jpg)1

##### 2 Figure 8.2.1-8 Timing solution for LLS-C2 configuration: single O-DU

3

1. 8.2.1.8 Timing Solution for LLS-C2 configuration with multiple O-DUs
2. For the transport network with larger scale that need to facilitate multiple O-DUs, the LLS-C2 timing solution
3. is implemented as shown in Figure 8.2.1-9, where a single HSR router is used for traffic aggregation and
4. providing switching flexibility among O-DUs. The T-GM distributes the PTP timing to the O-DUs directly. 8
5. Since the HSR is only allowed to lock to a single timing source by the definition of the G8275.1 profile, only
6. one O-DU (denoted as the primary O-DU) is active in the PTP path. This primary O-DU may control the
7. timing of multiple cell sites that are directly connected to the HSR. The rest of O-DUs are effectively acts as
8. backup time source in this use case scenario. 13
9. It is evident that the Primary O-DU and HSR-F that provide the PTP path are single point of failure. To improve
10. the redundancy, the PTP functions in all O-DUs are enabled to deliver multiple PTP flows simultaneously to
11. next hop node, even though only one of them is used by HSR. In the event of any failure, the A-BTCA function
12. at next hop is responsible to detect the failover and automatically select and switch over to alternative PTP
13. flow.

19

1. The timing accuracy performance:
2. ? Relative timing accuracy between intra site O-RUs:
3. *T-TSC (O-RU) + T-BC (CSR, Nearest Common BC) + T-TSC (O-RU)*

23

24 ? Relative timing accuracy between inter site O-RUs:

25 *T-TSC (O-RU) + T-BC (CSR) + T-BC (HSR, Nearest Common BC) + T-BC (CSR) + T-TSC (O-RU)*

26

27 ? Timing accuracy between an O-RU and O-DU: 28

29 Primary O-DU

1

2 *T-TSC (O-RU) + T-BC (CSR) + T-BC (HSR) + T-BC(HSR-F) + T-BC (O-DU)*

3

4 Other O-DUs

5

6 *T-TSC (O-RU) + T-BC (CSR) + T-BC(HSR) + T-BC(HSR-F) + T-BC (O-DU) +T-BC (HSR-B) +T-*

7 *TSC(O-DU)*

8

9

![]({{site.baseurl}}/assets/images/530b028d14fd.jpg)

10

##### 11 Figure 8.2.1-9 Timing solution for LLS-C2 configuration: multiple O-DUs

12

13

### 8.2.2 Timing Solutions for C-RAN Architecture with O-RU and O-DU collocated at

1. cell site
2. The timing solution options presented in this section are based on the Access Transport Network topology as
3. shown in Figure 8.1.2-1.

18

1. 8.2.2.1 Timing Solution for LLS-C3 configuration with T-GM from Midhaul
2. As shown in Figure 8.2.2-1, the Telecom Grand Master is connected to HSR that distributes the timing to CSRs
3. of all connected sites. O-RUs and O-DUs then get their timing from CSR. 22
4. Hops for calculating the timing error budget:
5. ? Relative timing accuracy between intra-site O-RUs:
6. *T-TSC(O-RU) + T-BC (CSR, Nearest Common BC) + T-TSC(O-RU)*

26

1. ? Relative timing accuracy between inter-site O-RUs:
2. *T-TSC(O-RU) + T-BC(CSR) + T-BC (HSR, Nearest Common BC) + T-BC(CSR) + T-TSC(O-RU)*

1

* 1. ? Timing accuracy between a O-RU and O-DU pair:
  2. *T-TSC(O-RU) + T-BC(CSR, nearest common BC) + T-TSC(O-DU)*

![]({{site.baseurl}}/assets/images/7c1cbb1db315.jpg)4

5

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| 6 |  | |
| 7 |
| 8 |  | **Figure 8.2.2-1 Timing Solution by C3 configuration with GM from Midhaul** |
| 9 |  |  |
| 10 | 8.2.2.2 | Timing Solution for LLS-C3 configuration with GM from Fronthaul |

</div>

1. In this case, every cell site will have its own local T-GM and timing accuracy performance is the same as
2. ![]({{site.baseurl}}/assets/images/0731bd08a836.jpg)section 8.2.2.1.

13

14

1. **Figure 8.2.2-2 Timing Solution by C3 configuration with GM from Fronthaul**

### 8.2.3 Timing Solutions for Shared O-RU

17

1. This section focuses on the LLS-C3 model for Shared O-RU since O-DUs are not in the timing path towards
2. the O-RU (i.e., O-DUs operates as T-TSC) is considered more appropriate for multiple SRO operation. 3
3. Figure 8.2.3-1 describes the timing solution for commonly shared transport architecture (corresponding to
4. ![]({{site.baseurl}}/assets/images/0fdd53c47d21.jpg)Figure 8.1.3-2), which generally operates similar to a regular O-RU with LLS-C3 timing architecture. 6

7

8

##### Figure 8.2.3-1 Timing Solution for Shared O-RU with common transport

10

11

1. When the transport is separated (Figure 8.1.3-3), the timing solution for Shared O-RU takes the form of
2. Figure 8.2.3-2, where second timing source (T-GM 2) is introduced to support O-DU 2 for SRO 2, which

14 may be located at different hub site. This T-GM 2 is managed by SRO2 in its own transport network

15 therefore will serve as the primary timing source for O-DU 2. The requirement for the second T-GM is that it

![]({{site.baseurl}}/assets/images/d7b7893eae5e.jpg)16 has to source the same time source (such as the GNSS tracking to the same UTC as the T-GM 1 of SRO 1). 17

18

19

##### 20 Figure 8.2.3-2 Timing Solution for Shared O-RU with separated transport

21

22 It is optional to use the T-GM 2 is as backup timing source to the O-RU via HSR2 to CSR.

### 8.2.4 Timing/Synchronization Redundancy & Resiliency

1. A reliable timing/sync solution is specifically important for C-RAN deployment due to its high impact when
2. timing/sync of a hub site fails. Redundancy and Resiliency solutions will provide most efficient ways of
3. improving the timing/sync reliability by avoiding single point failure. 5
4. 8.2.4.1 Redundant Timing Solutions
5. In case of PRTC or T-GM failure, the Assisted Partial Timing Support described in section 6.2.3 can be used
6. as the solution to achieve geo-redundancy. 9
7. Figure 8.2.4-1 illustrates a redundant timing solution by following configurations
8. ? Provide backup timing for use case described in Figure 8.2.1-2
9. ? APTS functions (IWF and T-BC-P) are integrated in the external Grand Master
10. ? The backup timing source is received from the T-GM at central network side, via a Partial Timing
11. ![]({{site.baseurl}}/assets/images/8b90cff9f472.jpg)Supported Network

15

16

##### 17 Figure 8.2.4-1 Backup Timing Solution for backhaul based C3 configuration, IWF integrated in T-GM

18

![]({{site.baseurl}}/assets/images/8b2dd5d6c685.jpg)19 Optionally, the APTS support function can be integrated in HSR-B, as shown in Figure 8.2.4-2. 20

21

##### 22 Figure 8.2.4-2 Backup Timing Solution for backhaul, C3 configuration, IWF integrated in HSR-B

1

1. Similarly, for LLS-C3 timing configuration where T-GM is applied at Fronthaul network (as shown in Figure
2. 8.2.1-1), the backup timing solution is described in Figure 8.2.4-3. Optionally T-BC-P and IWF can be
3. ![]({{site.baseurl}}/assets/images/c04a8b862098.jpg)integrated into HSR. 5

6

7

##### Figure 8.2.4-3 Backup Timing Solution for Fronthaul based on C3 configuration, IWF integrated in T-

1. **GM**

10

1. 8.2.4.2 General Resiliency Solutions
2. The following resiliency implementation is recommended for a reliable timing/sync architecture:
3. ? Dual timing sources (T-GMs)
4. ? Duplicated TNEs that may have large scale of impact the (HSRs, HSR-Bs, etc.)
5. ? Dual connectivity/Dual homing (T-GM to TNE, TNE to TNE, TNE to O-DU)
6. ? Enable standby PTP in all resilience devices. 17
7. Note: During synchronization network failover condition, with certain combination of clock types (specifically
8. with large number of hops), Sync-E transient and/or PTP re-arrangement may cause short-term degradation in
9. performance and that might affect the operation of the radio interface (particularly, the frequency stability
10. requirement on the radio interface might be impacted). 22
11. 8.2.4.2.1 PTP Resiliency
12. As part of resiliency network model, there will be multiple PTP paths available. Only one of the paths for a
13. timeReceiver node will be selected for primary operation of the G8275.1 profile and rest are considered as the
14. standby that are used only if failure occurs. This is illustrated in the figure below, where the active PTP (blue
15. arrow) indicates the PTP that is sent to the node and it is used to synchronize its clock while the standby PTP
16. (grey arrow) indicates the PTP that is sent to the node but it is not taken as source of synchronization until a
17. failover occurs.

30

31

32

![]({{site.baseurl}}/assets/images/797a554cab95.png)1

##### 2 Figure 8.2.4-4 Resiliency solution

3

1. Selection of the primary (active) PTP path or switchover to alternate path when failure occurs is controlled by
2. A-BTCA algorithm that will be driven by the different PTP attributes configured on those nodes:
3. ? Local priority settings to facilitate pre-determined PTP path.
4. ? Timing performance (clock accuracy or clock variance) based switchover. 8
5. The goal of the resiliency design is to minimize the disruption whenever PTP path changes:
6. ? Maintain the same time source (T-GM) as much as possible.
7. ? Maintain same timing topology (number of nodes/clocks, number of hops) as much as possible.
8. ? Minimize changes in the PTP path.
9. ? Sync-E sourced from the same time source as the PTP source (T-GM) is recommended. 14
10. 8.2.4.2.2 Resiliency under LAG
11. In case of multiple links between two nodes configured, such as LAG bundle, PTP can be enabled on more
12. than one links. In the event when one link fails, A-BTCA can automatically switchover to another link under
13. the LAG bundle. Local priority can be configured such that the A-BTCA picks the link from the same LAG
14. bundle than the link connected to another node, as shown in Figure 8.2.4-5. (The circle indicates LAG bundle
15. in the figure) 21

22

23

24

![]({{site.baseurl}}/assets/images/0c0aa03dc4c7.png)1

##### 2 Figure 8.2.4-5 PTP resiliency configuration under LAG

3

1. 8.2.4.2.3 Sync-E Configuration
2. As part of G8275.1 profile, Sync-E shall also be enabled along the path from the timing source (T-GM) to the
3. end application node (T-TSC). The Sync-E is hop-by-hop service, therefore each node along the path shall be
4. configured.

8

1. Sync-E source selection or switching is not controlled by PTP A-BTCA, rather it can be achieved via
2. configuration, based on separate priority and clock quality level. Hence the Sync-E path may choose different
3. links from the PTP when failover occurs. Note that dual/redundancy timing source case model, it is preferred
4. that the Sync-E and PTP always driven from the same PRTC/T-GM, even though they may take different
5. network paths or optionally Sync-E can be on the same path as the PTP so that both can switch simultaneously. 14

15

16

![]({{site.baseurl}}/assets/images/1c1b346a6633.jpg)17

18

19

##### 20 Figure 8.2.4-6 SyncE at different path from PTP

21

1 8.2.4.3 Resiliency use cases

2 Some resiliency examples based on section 8.2 are described in the following subsections. 3

4 8.2.4.3.1 Resiliency Timing Solution by LLS-C3 configuration with GM from Fronthaul

5 Corresponding to the timing solution described in 8.2.1.1, the resiliency solution is illustrated in Figure

6 8.2.4-7.

7

8

9

10

![]({{site.baseurl}}/assets/images/b071128a475a.jpg)

11

12

##### 13 Figure 8.2.4-7 Resiliency Timing Solution for LLS-C3 configuration with GM from Fronthaul

14

15 The local priority at each TNE is configured in such a way that the active PTP path as follows: 16

1. O-RU timing: T-GM A ? HSR A ? CSRs ? O-RUs
2. O-DU timing: T-GM A ? HSR A ? HSR-Fs ? O-DUs

19

1. PTP flow change in failover cases (Figure 8.2.4-8):
2. - Failure case 1: Link from HSR A to one of the CSRs fails (e.g. HSR A ? CSR 1 fails)
3. CSR1 switches to Standby PTP from HSR B (HSR B ? CSR 1, PTP changes from Standby to
4. Active)

24

1. - Failure case 2: HSR A fails or link connecting HSR A and T-GM A fails
2. (HSR B ? CSRs) and (HSR B ? HSR-Fs) PTP changes from Standby to Active 27

28 - Failure case 3: T-GM A fails or link connecting T-GM A to HSR A and HSR B fails

29 (T-GM B ? HSR A) and (T-GM B ? HSR B) PTP changes from Standby to Active 30

31 - Failure case 4: link connecting HSR A to one of HSR-Fs (e.g. HSR A ? HSR-F 1 fails)

1 (HSR B ? HSR-F 1) PTP changes from Standby to Active 2

3 Figure 8.2.4-8 illustrates these PTP flow changes when failover occurs. 4

1. Note that whenever the PTP path changes, there is possible impact on the timing performance. For example,
2. the first case in the above when the link from HSR A to a CSR fails, the relative timing accuracy between inter
3. site O-RUs will degrade because the nearest common BC is extended to T-GM A. One option to maintain the
4. same timing performance is to choose to use HSR B for all cell sites. 9
5. Note: Clock distribution in the Xhaul networks is recommended (depending on the topology) to be uni-
6. directional from upstream to downstream (Backhaul to Midhaul and Midhaul to Fronthaul). When a clock flow
7. changes from downstream to upstream (also known as Clock backflow), caused by a failure in a link or node,
8. it is very difficult to predict the failed over clock flow, and it may cause unexpected deterioration of clock
9. accuracy.

15

1. In order to prevent PTP backflow from occurring, it is recommended to configure the PTP ports in HSR-A/B
2. connected to the CSRs in the cellsites as "TimeTransmitterOnly" ports as per ITU-T G.8275.1 [1] 18

19

20

![]({{site.baseurl}}/assets/images/d36c701bea31.jpg)

21

22

23

![]({{site.baseurl}}/assets/images/83cda75c301b.jpg)1

2

![A diagram of a diagram  Description automatically generated]({{site.baseurl}}/assets/images/da8fff8161ef.jpg)3

4

![]({{site.baseurl}}/assets/images/3f0aec644fa2.jpg)

1

2

##### 3 Figure 8.2.4-8 PTP Path Changes in Failover Cases

4

5

6

1

2 8.2.4.3.2 Resiliency Timing Solution for LLS-C3 configuration with T-GM from Backhaul

3 Figure 8.2.4-9 illustrates the primary and standby PTP design based on the use case defined in 8.2.1.2 4

5

![]({{site.baseurl}}/assets/images/62c61d2b8869.jpg)

6

7

##### 8 Figure 8.2.4-9 Resiliency for LLS-C3 configuration with GM from Backhaul

9

10 The local priority at each TNE is configured in such a way that the active PTP path is configured as follows: 11

1. Primary:
2. - O-RU timing: T-GM A ? HSR-B A ? HSR A ? CSRs ? O-RUs
3. O-DU timing: T-GM A ? HSR-B A ? O-DU+CUs
4. Failover cases:
5. - T-GM A or link from T-GM A to HSR-B A fail
6. (T-GM B ? HSR B A) PTP path changes from Standby to Active 18
7. - HSR-B A or link from HSR-B A to HSR A fail
8. (T-GM A ? HSR-B B ? HSR B) PTP paths change from Standby to Active
9. (HSR-B ? CSR 1) PTP path changes from Standby to Active
10. ...
11. (HSR-B ? CSR n) PTP path changes from Standby to Active 24
12. - HSR A fails
13. (HSR-B ? CSR 1) PTP path changes from Standby to Active
14. ...
15. (HSR-B ? CSR n) PTP path changes from Standby to Active 29

30 - link from HSR A to one of CSRs fails (e.g., HSR A ? CSR 1 fails)

31 (HSR B ? CSR 1) PTP path changes from Standby to Active

32 8.2.4.3.3 Resiliency Timing Solution for LLS-C2 configuration with multiple O-DUs

33

34 Figure 8.2.4-10 illustrates the primary and standby PTP design based on the use case defined in 8.2.1.8.

1

2

3

![]({{site.baseurl}}/assets/images/90fbac93cbd0.jpg)

4

5

##### 6 Figure 8.2.4-10 Resiliency for LLS-C2 configuration with Multiple O-DUs

7

8 The local priority at each TNE is configured in such a way that the active PTP path is configured as follows: 9

1. Primary case:
2. T-GM A ? HSR-B A ? O-DU+CUs 1 ? HSR-F A ? HSR A ? CSRs ? O-RUs

12

1. Failover cases:
2. - T-GM A or link from T-GM A to HSR-B A fail
3. (T-GM B ? HSR-B A) PTP path changes from Standby to Actvie 16
4. - O-DU+CU or link from O-DU to HSR-F fails (e.g., O-DU+CU ? HSR-F 1 fails)
5. (O-DU+CU 2 ? HSR-F 1) PTP path changes from Standby to Active 19
6. - HSR-F 1 or link from HSR-F 1 to HSR-A fails
7. (HSR-F 2 ? HSR A) PTP path changes from Standby to Active 22
8. - HSR A fails
9. (HSR B ? CSR 1) PTP path changes from Standby to Active
10. ...
11. (HSR B ? CSR n) PTP path changes from Standby to Active 27
12. - link from HSR A to one of CSR fails (e.g. HSR A ? CSR 1 fails)
13. (HSR B ? CSR 1) PTP path changes from Standby to Active 30

31

32

1 8.2.4.3.4 Resiliency Timing Solution for LLS-C4 configuration with frequency backup from T-GM.

2 Figure 8.2.4-11 illustrates primary (GNSS/PRTC) and backup (Frequency) synchronization path for LLS-C4

3 topology configuration.

4

![Diagram  Description automatically generated]({{site.baseurl}}/assets/images/4cac5bd33925.png)

5

6

##### 7 Figure 8.2.4-11 Resiliency for LLS-C4 configuration with Frequency backup from T-GM.

8

9 Primary sync source: O-RU/O-DU will be synced using the GNSS Receiver. 10

1. Backup sync source: T-GM sourcing the clock through PTP unaware node (CSR) towards O-DU and O-RU.
2. Upon any GPS fault in O-RU(s)/O-DU(s), unit(s) moves to holdover with the frequency recovered using PTP
3. and continues to be in holdover. 14
4. **8.2.4.3.5 Resiliency Timing Solution for LLS-C4 configuration with Time backup from T-GM.**
5. Figure 8.2.4-12 illustrates primary (GNSS/PRTC) and backup (PTP) synchronization path for LLS-
6. C4 based topologies.
7. Primary source: O-RU/O-DU will be synced using the GNSS Receiver. 19
8. Backup source: T-GM sourcing the clock through T-BC (CSR) towards O-DU and O-RU. Upon any GPS fault
9. O-RU(s)/O-DU(s), will switch over to PTP mode (T-TSC clock). 22

23

![]({{site.baseurl}}/assets/images/308b2c93448d.png)

1

2

##### 3 Figure 8.2.4-12 Resiliency for C4 configuration with Time/phase backup from T-GM.

4

##### 8.2.4.3.6 Resiliency Timing Solution for LLS-C4/C3(Mixed) configuration for co-located DU/RUs.

1. Figure 8.2.4-13 depicts the C4/C3 mixed topology where O-DUs shall be operating in LLS-C3 mode
2. synchronizing the clock from PTP network while O-RUs will use PRTC/GNSS sync as primary sync method.
3. Example deployment will be outdoor small cell deployments (co-located DU/RUs) where RUs will have GNSS
4. sync source while DUs might still rely on PTP synchronization. 10
5. Primary: O-RU uses GNSS(PRTC) as primary synchronization source. O-DU gets synchronized with T-GM-
6. A through CSR1/CSR2. T-GM-A shall be configured with higher priority (lower priority2 value) compared
7. to T-GM-B. Ports on CSR1/CSR2 connected towards T-GM-A are configured with high priority (local Priority
8. for PTP, SyncE priority/ESMC clock quality level) compared to those ports towards T-GM-B so that A-BTCA
9. choses T-GM-A as PTP and Sync-E clock source towards O-DUs when both GMs are active. 16

17 Failover path:

18

1. O-RUs: Any GNSS failure at O-RU(s), RU shall now operate in T-TSC clock mode and use PTP
2. synchronization from T-GM-A/T-GM-B through CSR1/CSR2 as a Time/frequency backup. 21
3. O-DUs: When T-GM-A GNSS fails, the backup synchronization path for O-DU shall be from T-GM-B
4. through CSR1/CSR2. T-GM-B shall be selected by O-DUs, as per A-BTCA due to superior clock values
5. advertised by T-GM-B compared to T-GM-A, which is in holdover. Further, O-DUs would switch over to the
6. Sync-E from T-GM-B as it is superior to T-GM-A in holdover. 26

27

28

![]({{site.baseurl}}/assets/images/46c8e90f2c31.jpg)

2

##### Figure 8.2.4-13 Resiliency for LLS-C4/C3(Mixed) configuration with backup from T-GM for co-

1. **located DU(s)/RU(s).**

5

##### 8.2.4.3.7 Resiliency Timing Solution for LLS-C4/C3(Mixed) configuration for DUs on CDC/GC/Hub

1. **site.**
2. Figure 8.2.4-14 depicts the C4/C3 mixed topology where O-DUs shall be operating in LLS-C3 mode
3. synchronizing the clock from PTP network while O-RUs will use PRTC/GNSS sync as primary time source.
4. An example deployment model would be an outdoor small cell deployments where RUs will have GNSS sync
5. source while DUs located in CDC/GC site might still rely on PTP synchronization. 12
6. Primary: O-RU uses GNSS (PRTC) as primary synchronization source. Sync path for O-DUs shall be T-GM-
7. A through HSR-A/HSR-B, and CSRs. O-DU is T-TSC Clock. T-GM-A shall be configured with higher
8. priority(lower priority2 value) compared to T-GM-B. Ports on HSR-A/HSR-B connected towards T-GM-A
9. are configured with high priority (localPriority for PTP, Sync-E priority/ESMC clock quality level) compared
10. to those ports towards T-GM-B so that A-BTCA choses T-GM-A as PTP clock source and for Sync-E the
11. ports with higher priority will be chosen as clock source towards O-DUs when both T-GMs are active. 19

20

![]({{site.baseurl}}/assets/images/538004c452fd.jpg)

2

##### Figure 8.2.4-14 : Resiliency for C4/C3(Mixed) configuration with backup from T-GM and DUs in

1. **CDC/GC.**

5

1. Failover path:
2. O-RUs: Any GNSS failure at O-RU(s), the O-RU shall transition to operate in T-TSC clock mode and use PTP
3. synchronization from T-GM-A/T-GM-B through HSRs, CSRs as time/frequency backup. 9
4. O-DUs: On T-GM-A failure, the backup synchronization path for O-DUs shall be from T-GM-B through HSRs
5. and O-DUs.

12

##### 13 8.2.4.3.8 Resiliency with LLS-C2/C3 hybrid topology with O-DUs co-located in Hub/Data Center

14

![]({{site.baseurl}}/assets/images/7e7b720094d2.jpg)

1

1. Figure 8.2.4-15 is an example for the LLS-C2/C3 mixed topology model, where O-DUs acting as GM are co-
2. located at Hub/DC while O-RUs at cell sites are connected to DUs in the fronthaul network. All O-DUs primary
3. mode of operation is GM, secondary mode of operation is T-TSC. In case of GNSS failure, the O-DU is
4. expected to transition from T-GM to T-TSC mode of operation. All O-DUs operating in GM mode are
5. provisioned with priority2 configuration that is prioritized over T-GM A. Priority2 values among the O-DUs
6. are in the order of decreasing priority from O-DU1 to O-DUn. 8

9 The Fronthaul ports on the O-DUs are operating in TimeTransmitter role as long as O-DUs operating as GM

10 (LLS-C2 mode). The O-DUs would transition to TimeReceiver role on GNSS failure (T-TSC mode - LLS-C3

11 config model).

12

13 Primary (Active PTP) Sync path: Under normal working condition all O-DUs operate as GM:

14 O-DU1 -> HSR-2 -> HSR-4 -> CSR-1 -> O-RU1, ORU2

15 O-DU1 -> HSR-2 -> HSR-4 -> CSR-2 -> O-RU3, ORUn

16

17

18

19

![]({{site.baseurl}}/assets/images/7e7b720094d2.jpg)

1

##### 2 Figure 8.2.4-15 : Resiliency for LLS-C2/C3 mixed topology with co-located DUs acting as GM.

3

1. The topology shown in Figure 8.2.4-16, when the O-DU1 GNSS fails, it would transition to T-TSC mode of
2. operation and synchronizes the clock from the neighbouring O-DU2 through the HSR-2 while the O-RU's
3. clock synchronization path would remain same from HSR-2. 7
4. Failover sync path:
5. O-DU2 -> HSR-2 -> O-DU1
6. O-DU2 -> HSR-2 -> HSR-4 -> CSR-1 -> O-RU1, O-RU2
7. O-DU2 -> HSR-2 -> HSR-4 -> CSR-2 -> O-RU3, O-RUn

12

13

14

15

![]({{site.baseurl}}/assets/images/9411b5ede2e3.jpg)16

17

##### Figure 8.2.4-16 : O-DU1 GNSS failure and clock path changes with LLS-C2/C3 mixed case

2

3

4

1. The topology shown in Figure 8.2.4-17, when all O-DUs connected GNSS fails (due to GPS/GNSS
2. geographical issues local to that Hub or datacenter), the O-DUs and O-RUs in the Fronthaul networks would
3. failover to and synchronize from external GM (T-GM A). The Fronthaul networks switches to the LLS-C3
4. config mode from the LLS-C2 config mode of operation. During this failover, all the O-DUs would transition
5. to T-TSC clock mode of operation from GM mode of operation. On HSR-2 and HSR-3, the clock received on
6. the port connected to HSR-4 is prioritized (marked in green) over the clock received on the port connected to
7. HSR-5 (marked in grey). 12
8. Failover sync path:
9. T-GM A -> HSR-4 -> HSR -2 -> O-DU1 & O-DU2
10. T-GM-A -> HSR-4 -> HSR-3 -> O-DU-3 & O-DUn
11. T-GM A -> HSR-4 -> CSR-1 -> O-RU1 & O-RU2
12. T-GM-A -> HSR-4 -> CSR-2 -> O-RU3 & O-RUn

18

19

20

21

![]({{site.baseurl}}/assets/images/733095de7ed2.jpg)22

23

24

##### 25 Figure 8.2.4-17 : All O-DUs GNSS failure and clock path changes with LLS-C2/C3 mixed case

26

27

1. 8.2.4.3.9 Resiliency Timing Solution by LLS-C3 configuration for Shared O-RU
2. For Shared O-RU using a common transport network managed by Shared O-RU host (i.e., SRO 1), the
3. resiliency solution will not differ from the non-Shared O-RU case. Therefore it is not discussed here. 31
4. For Shared O-RU supported by separated transport networks that are managed by different SROs, each of
5. SROs takes its own responsibility to the resiliency design to its transport network. Figure 8.2.4-18 shows an
6. example of full resiliency solution from both SROs with dual protection mechanism, with A-BTCA function
7. ![]({{site.baseurl}}/assets/images/ef6f502e0142.jpg)at each stage, when necessary the switching between Active and Standby PTP paths can be achieved. 3

4

5

##### 6 Figure 8.2.4-18 Resiliency Timing Solution for Shared O-RU with separated transport

7

1. The SRO that supplies the primary timing/sync to the shared O-RU may expect to provide a full resiliency
2. solution to ensure the overall Shared O-RU operation. While the secondary SRO can choose to have a
3. simple resiliency design upon its own reliability requirement for its O-DU. 11

12

13

1. 8.2.4.4 ePRTC Resiliency
2. High availability is one of the key requirements for 5G. It is important to design the 5G synchronization to be
3. highly available with redundancy integrated at all levels of the synchronization infrastructure starting from the
4. source of timing. The resiliency of the timing source is critical to achieve an overall goal of a survivable and
5. fault tolerant synchronization infrastructure. It is essential that the timing infrastructure continues to maintain
6. an acceptable level of service in the event of failures and faults affecting normal operations. 7
7. There is a growing number of intentional and unintentional GNSS incidents. During such extended GNSS
8. outages, ePRTC-A systems operating as an autonomous primary reference clocks can be deployed to maintain
9. time and frequency service in a geographical area. ePRTC-A delivers a high-level of service reliability to
10. ensure operators maintain an acceptable time and frequency service performance for a long period of GNSS
11. unavailability. The frequency stability of a Cesium atomic clock serves as a reference for the ePRTC-A Time
12. Scale.

14

1. ePRTC-A offers the following features:
2. ? Reliability: Immunity from local jamming or outages
3. ? Autonomy: Atomic clock sustained timescale with & without GNSS connection
4. ? Holdover: 14-day time holdover <= 100 ns 19
5. When an ePRTC-A loses all its input phase and time references, it enters the phase/time holdover state and
6. relies on an autonomous primary frequency reference input (e.g., 2MHz, 10MHz, etc.) to deliver time and
7. phase. This autonomous primary reference clock is typically a Cesium atomic clock. Refer Figure 8.2.4-19,
8. for an ePRTC-A, from the start of phase/time holdover, after 30 days of continuous normal operation, the time
9. output should be accurate, when verified against the applicable primary time standard (e.g., UTC), to within a
10. ![]({{site.baseurl}}/assets/images/72739227fca1.png)value increasing linearly from 30 ns to 100 ns over a 14-day period. 26

27

##### 28 Figure 8.2.4-19 : PRTC-A phase/time holdover requirements

29

30

1

1. The Figure 8.2.4-20 and Figure 8.2.4-21 below compares the performance of the ePRTC-A, PRTC-A and
2. PRTC-B clocks using the MTIE and TDEV metrics: 4

1 us

![]({{site.baseurl}}/assets/images/7af0ea1cd6c5.png)

PRTC-A

PRTC-B

ePRTC-A

100 ns

10 ns

1 ns

5 0.1 s 10 s 1 ks

6

100 ks 10 Ms

7

8

9

# 100 ns

**Figure 8.2.4-20 : MTIE for ePRTC-A, PRTC-A and PRTC-B clocks**

10 ns

![]({{site.baseurl}}/assets/images/2384179ff473.png)

PRTC-A

PRTC-B

ePRTC-A

1 ns

100 ps

10

11

# 1 s 100 s

10 ks 1 Ms

##### Figure 8.2.4-21 : TDEV for ePRTC-A, PRTC-A and PRTC-B clocks

13

1. In the event of GNSS outage the synchronization infrastructure will rely on the ePRTC-A systems to deliver
2. an acceptable frequency and time service to the network for an extended period. It is important to make sure
3. that these ePRTC-A systems are highly reliable.

1

1. The robustness of the ePRTC-A system resiliency can be optionally enhanced with an ensemble function
2. involving two Cesium atomic clocks as shown in Figure 8.2.4-22. The ensemble function continuously
3. measures and compares the stability of the individual Cesium atomic clocks and possibly gracefully de-weight
4. one of the Cesium from influencing the service if it ever degrades in performance. 6

7

GNSS

ePRTC-A

Cesium atomic clock

Cesium atomic clock

Ensembling

function

8

9

Time reference (e.g., 1PPS)

Phase reference (e.g., PTP)

Freq uency reference

(e.g., 2 048 Khz)

##### 10 Figure 8.2.4-22 : ePRTC system backed up with two Cesium atomic clocks

11

12 The robustness of the ePRTC-A system resiliency can be further enhanced using a backup ePRTC-A that is

13 connected to the two Cesium atomic clocks as shown in Figure 8.2.4-23. 14

15

GNSS

Time reference (e.g., 1PPS)

![]({{site.baseurl}}/assets/images/fc4cc2bed49f.png)

ePRTC-A

Cesium atomic clock

Cesium atomic clock

ePRTC-A

Phase reference (e.g., PTP)

Ensembling

function

Freq uency reference

(e.g., 2 048 Khz)

Time reference (e.g., 1PPS)

Phase reference (e.g., PTP)

Ensembling

function

Freq uency reference (e.g., 2 048 Khz)

16

17

18

##### 19 Figure 8.2.4-23 : Redundant ePRTC-A system backed up with two Cesium atomic clocks

1

1. The ePRTC-A systems are typically deployed in core and large hub sites to deliver a synchronization service
2. to the smaller Hub sites and cell sites located in a local geographical area as shown in Figure 8.2.4-24. In the
3. event of GNSS outage impacting that area, the ePRTC-A in a holdover state will be able to deliver an
4. acceptable frequency and phase to the Hub and cell sites for up to 14 days. 6

7

![]({{site.baseurl}}/assets/images/bb63fd7339ff.png)

8

9

##### 10 Figure 8.2.4-24 : ePRTC-A deployment in core site

11

1. A fully redundant ePRTC-A system as shown in Figure 8.2.4-25 allows to protect against most types of
2. failures. The back-up ePRTC-A unit equipped with its own antenna will provide protection against antenna
3. failures, and software/hardware failures. The A-BTCA protocol can be used to select the best ePRTC-A clock.
4. Alternatively, an IP failover mechanism between the two ePRTC-A units can constantly compare their health
5. metrics and switch-over automatically from the active to the back-up unit if the health of the active one
6. becomes degraded.

18

1. Diverse topology (link and node) design is essential to build a survivable network timing infrastructure that
2. distributes time and frequency from the core and hub sites to the cell sites. It is important to protect the
3. distribution of the timing information against link and node failures. The fully redundant ePRTC-A system is
4. connected to the network via two different network access points located on separate physical nodes. A failure
5. at one node or link should not disrupt the delivery of frequency and time/phase to the network. 24
6. The topology shown in Figure 8.2.4-25 illustrates the different types of failures that can be effectively handled
7. using the fully redundant ePRTC-A system.
8. ? Node failure (failure 1): The ePRTC-A is protected against a failure of the adjacent north side BC node,
9. port or link by switching over to the south side port by A-BTCA.
10. ? Node failure (failure 2): One ePRTC-A node port failure is protected by another ePRTC-A node
11. ? Antenna failure (failure 3): One ePRTC-A is protected against an antenna failure by the selection of the
12. standby ePRTC-A node.
13. ? ePRTC software/hardware failure (failure 4): The ePRTC-A node failure is protected by another ePRTC-
14. A node.

34

![]({{site.baseurl}}/assets/images/fd787f58c0f6.png)

1

2

##### 3 Figure 8.2.4-25 : Fully redundant ePRTC-A deployment in large Hub site

4

5

6

7

8

9

2

# Annex A Microwave and mmWave radio transport

## A.1 Conformance to IEEE1588 and PTP profiles

1. The Microwave system is capable of supporting PTP functions based on the IEEE1588-2008 or IEEE1588-
2. 2019 standards. It also complies with the PTP profile of ITU-T G.8275.1 [1], G.8275.2 [3] and the
3. recommendation for T-TC and T-BC characteristics of Ethernet nodes defined in G.8273.2 [2] and G.8273.3
4. [4] as a guarantee for specific interoperability and KPI. 9

10 For all practical purposes, microwave devices (and any other media) are outside the scope of the ITU-T

11 recommendations. However, each Microwave vendor can voluntarily declare their products to be equivalent

12 to the standards by guaranteeing KPIs equivalent to these standards. 13

1. In Figure A.1-1 we assume a simple Fronthaul network with LLS-C2 configuration with two possible
2. implementations in (a) and (b) resulting in different number of PTP nodes. 16

PTP/SynchE

path

![]({{site.baseurl}}/assets/images/32390226de07.png)![]({{site.baseurl}}/assets/images/b6b0512395fb.png)

Midhaul Transport

PRTC/ePRTC

T-GM

Network

T-BC/T-TC

**O-DU+T-BC**

Radio I/F

fronthaul Transport Network T-BC/T-TC realisation with

Multiple MW/mmWave links/hops

O-RU+TSC

1. Implementation of fronthaul network with cascaded 2 radio I/F path, i.e. 2 hops

Requiring 4 MW/mmWave devices with 1 Ethernet Node,

2 radio links requiring 1 media converter Node plus 1

![]({{site.baseurl}}/assets/images/a86f4a512705.png)Ethernet Node resulting in 3 PTP nodes in total.

1. Implementation of fronthaul network cascaded 2 radio I/F path, i.e. 2 hops

Requiring 4 MW/mmWave devices with 1 Ethernet Node,

2 radio links requiring 2 media converter nodes plus 1

![]({{site.baseurl}}/assets/images/811923478b75.png)Ethernet Node resulting in 4 PTP nodes in total.

**O-DU+T-BC**

O-RU+TSC

**O-DU+T-BC**

O-RU+TSC

17

18

##### Figure A.1-1 - Fronthaul transport network model with MW/mmWave radio illustrating two different

1. **implementations resulting in different number of PTP nodes.**

21

## A.2 Impact of Radio channel bandwidth

1. Narrowband radio links with small channel bandwidth can impact the packet transmission with large delay. In
2. a small channel bandwidth wireless link, the baseband clock granularity is degraded, which may affect the
3. timing of packet transmission and reception, resulting in degradation of Constant and Dynamic TE
4. characteristics. This may cause deterioration to end-to-end Time Error characteristics, which is further affected
5. by the increase in delay asymmetry. It is therefore necessary to select equipment to be used in the transport
6. network that can take into considering the Time Error (TE) characteristics in its radio channel. Section 10.2.4
7. on Microwave and mmWave radio Transport Technologies in [32] gives an overview of the bands available
8. for microwave and mmWave radio transport and their corresponding capacity and latency characteristics.

## A.3 Impact of interference

1. Like all radio communications systems, Point-to-Point (PP) and Point-to-Multiple-Point (PMP) microwave
2. and mmWave radio transport links are susceptible to radio interference from adjacent and parallel links as well
3. from other services, such as radar, Radio LAN and Short-Range devices, that could be sharing the band or
4. operating in adjacent band to the radio transport fixed service. Communication failure may occur due to the
5. influence of this interference, and the (TE) characteristics may deteriorate accordingly. The severity of TE
6. degradation depends on the equipment and the techniques used to mitigate the impact of interference. As such
7. the design and selection of the bands should take into considering TE degradation due to the external
8. environment. Examples of considerations to mitigate the effect of interference, include avoiding the use of
9. license exempt bands for time sensitive applications, use high quality antenna with very low side lobes (e.g.,
10. ETSI Class 4), and apply for high protection and availability link licenses, i.e., 99.99% or over.

## A.4 Impact of dynamic capacity variations

1. Microwave and mmWave Point to Point radio systems are designed to operate with high availability by
2. allowing adequate fade margin in their link budget. The fade margin is calculated to compensate the
3. propagation loss depending on the rain intensity in the area they intended to operate. Modern PP radio systems
4. apply Adaptive Coding and Modulation (ACM) technique to boost its link capacity during the clear sky period
5. taking advantage of the fade margin to apply higher order modulation scheme with higher capacity than the
6. one needed during the worst raining period. This allows the PP radio system to transmit at its maximum
7. transmission capacity allowed by the changing weather condition. This dynamic variations in the modulation
8. method can cause deterioration to the TE, because the data size that is processed by the Modem vary
9. significantly between the different ACM schemes. In general, in ACM technology, the packet delay varies
10. with the modulation level. This is caused by changes in the transmission bandwidth, which results by buffer
11. retention of packets and the mapping process to wireless frames. It is therefore necessary to ensure that
12. equipment selected in the network for time sensitive application does not deteriorate the TE characteristics as
13. a result of operation of the ACM technology.

## A.5 Impact of Band and Carrier Aggregation

1. Wireless transport systems operate in a variety of bands ranging from the lower microwave spectrum up to the
2. mmWave above 100 GHz. The characteristics of these bands are summarised in [x1], showing large bandwidth
3. availability in mmWave spectrum but with shorter link length, while the systems operating in the lower bands
4. of the microwave spectrum have longer links with narrower channel bandwidth is available. Band and Carrier
5. Aggregation (BCA) technique combines different channels that may be even in different bands, providing a
6. single big capacity pipe. In particular, BCA allows the combined benefits of the longer hop distance of
7. microwave systems with the high capacity in multiple Gigabits per second of the mmWave bands such as the
8. E-bands and above. However, this BCA pipe will have different propagations losses between the portion of
9. the links operating in the microwave band and the one operating in the mmWave band. Furthermore, these
10. links with multi-band operation would result in part of the links in one direction to disconnect resulting in
11. imbalance between the go and return of the wireless transport link. As such, it is necessary to consider the
12. effects of delay asymmetry and the impact of disconnection in part of the sub-channels over the BCA pipe. It
13. is therefore necessary to carefully verify the effect of the asymmetric effects and the imbalance in the
14. subchannels on the possible deterioration of TE characteristics.

## A.6 Point to Multi Point (PMP) radio system

1. There are three types of systems that are used for the wireless transport system: Point-to-Point (PP), Point-to-
2. Multi-Point (PMP), and Multi-Point-to-Multi-Point (MPMP) such as Mesh radio systems. PMP and MPMP
3. systems have asymmetric UL/DL latency. This limits, its capabilities in achieving good TE characteristics.
4. Equipment that are designed and able to achieve good TE characteristics should only be used for time sensitive
5. application with tight TE requirements.

## A.7 Radio Interface with asymmetry latency

1. The DL/UL delay in the Radio Interface of PP Radio systems are generally symmetric, and the degradation of
2. cTE is small. However, it should be noted that TE due to delay asymmetry of several ns to several tens of ns
3. is inevitable due to radio circuit configuration, filter group delay, and other factors in the radio processing part
4. of the PP system. This phenomenon varies depending on the system configuration such as its channel
5. bandwidth and the environment of the band in which they operate.
6. If the total TE of the NW has enough margin, these factors can be regarded as minor errors. However, when
7. designing for a tight total TE of the NW, it is desirable to use a MW node that has the ability to perform static
8. correction of the cTE.

11

## A.8 Holdover Spec of BC function on the wireless transport node

1. The holdover function of the microwave and mmWave node is required as TE tolerance for the temporary
2. unlock state of a few tens of seconds during timeTransmitter clock rearrangement. However, since the U-
3. plane and the S-plane go down at the same time when the line is down, the long-term holdover capability is
4. meaningless. A TE holdover characteristic of a few hundred ns per few tens of seconds is sufficient as shown
5. in G.8262 [14] or G.8262.1 [15], however, this depends on the assignment of the TE value of the
6. Rearrangement event in the Total TE Budget of the NW.

## A.9 Considering of characteristics in multiple hops

1. In a typical Ethernet node, TE characteristics are specified for a single node. On the other hand, since the input
2. and output ports of MW devices are a pair of Ethernet and Radio or Radio and Radio (Figure A.1-1), there are
3. cases where it is necessary to evaluate the TE characteristics of multiple nodes cumulatively.
4. Table A.9-1 and Table A.9-2 show the characteristics when multiple nodes are accumulated.
5. (Note: This value is not applicable in the case of NWs with mixed T-BC and T-TC). 25
6. The values shown in these tables are calculated values based on the formulae for cascading ITU-T G.8273.2
7. [2] and G.8273.3 [4] nodes. Although the values are based on the accumulation of Ethernet nodes, they can
8. also be applied to the accumulation of microwave nodes if the vendor guarantees the same KPIs as for Ethernet
9. nodes.
10. For example, at the intermediate site between hops, two MW/mmWave devices are used back-to-back. These
11. maybe connected by an Ethernet interface as illustrated in Figure A.1-1(b). In this case, we may count the
12. Ethernet Switch between the radios and Radio IF portions of the Microwave node as separate PTP Nodes. On
13. the other hand, there may be a case where the Microwave devices are connected seamlessly without an Ethernet
14. interface between them as illustrated in the model of Figure A.1-1 (a). In this case the radio interface is counted
15. as one PTP node. In the ITU-T definition, the Ethernet interface is the reference point, but in Microwave
16. devices, the vendor has to define the reference point for the interface.
17. The user should consider the NW TE budget based on these counting methods. 38

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

2

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| **ClassA** | **Single**  **Node** | **2nodes** | **3nodes** | **4nodes** | **5nodes** | **6nodes** | **7nodes** | **8nodes** | **9nodes** | **10nodes** |
| **Max|TE|** | **100** | **160** | **220** | **280** | **340** | **400** | **460** | **520** | **570** | **630** |
| cTE | 50 | 100 | 150 | 200 | 250 | 300 | 350 | 400 | 450 | 500 |
| dTEL  (MTIE) | 40 | 60 | 70 | 80 | 90 | 100 | 110 | 120 | 120 | 130 |
| dTEL  (TDEV) | 4 | 6 | 7 | 8 | 9 | 10 | 11 | 12 | 12 | 13 |
| dTEH | 70 | 70 | 70 | 70 | 70 | 70 | 70 | 70 | 70 | 70 |
| **ClassB** | **Single**  **Node** | **2nodes** | **3nodes** | **4nodes** | **5nodes** | **6nodes** | **7nodes** | **8nodes** | **9nodes** | **10nodes** |
| **Max|TE|** | **70** | **100** | **130** | **160** | **190** | **220** | **250** | **280** | **300** | **330** |
| cTE | 20 | 40 | 60 | 80 | 100 | 120 | 140 | 160 | 180 | 200 |
| dTEL  (MTIE) | 40 | 60 | 70 | 80 | 90 | 100 | 110 | 120 | 120 | 130 |
| dTEL  (TDEV) | 4 | 6 | 7 | 8 | 9 | 10 | 11 | 12 | 12 | 13 |
| dTEH | 70 | 70 | 70 | 70 | 70 | 70 | 70 | 70 | 70 | 70 |

</div>

3

4

5 *Note) Calculated based on the calculation policies of G.8273.2* [*2]* *Appendix-V.*

6

##### 7 Table A.9-1: Microwave T-TB Noise accumulation (Class-A and B)

8

9

10

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| **ClassA** | **Single**  **Node** | **2nodes** | **3nodes** | **4nodes** | **5nodes** | **6nodes** | **7nodes** | **8nodes** | **9nodes** | **10nodes** |
| **Max|TE|** | **100** | **180** | **250** | **315** | **375** | **440** | **505** | **565** | **620** | **680** |
| cTE | 50 | 100 | 150 | 200 | 250 | 300 | 350 | 400 | 450 | 500 |
| dTEL  (MTIE) | 40 | 60 | 70 | 80 | 90 | 100 | 110 | 120 | 120 | 130 |
| dTEL  (TDEV) | FFS | FFS | FFS | FFS | FFS | FFS | FFS | FFS | FFS | FFS |
| dTEH | 70 | 100 | 130 | 140 | 160 | 180 | 190 | 200 | 210 | 230 |
| **ClassB** | **Single**  **Node** | **2nodes** | **3nodes** | **4nodes** | **5nodes** | **6nodes** | **7nodes** | **8nodes** | **9nodes** | **10nodes** |
| **Max|TE|** | **70** | **120** | **160** | **195** | **225** | **260** | **295** | **325** | **350** | **380** |
| cTE | 20 | 40 | 60 | 80 | 100 | 120 | 140 | 160 | 180 | 200 |
| dTEL  (MTIE) | 40 | 60 | 70 | 80 | 90 | 100 | 110 | 120 | 120 | 130 |
| dTEL  (TDEV) | FFS | FFS | FFS | FFS | FFS | FFS | FFS | FFS | FFS | FFS |
| dTEH | 70 | 100 | 130 | 140 | 160 | 180 | 190 | 200 | 210 | 230 |

</div>

11

12

13 *Note) Calculated based on the calculation policies of G.8273.3* [*4]* *Appendix-III.*

14

##### 15 Table A.9-2: Microwave T-TC Noise accumulation (Class-A and B)

16

17

<div class="table-wrapper" markdown="block">

1. The tables above show a maximum of 10 nodes; however, this can be extended if the Max|TE| < 1.5 microsec

</div>
2. for the total budget of the network.

# Annex B Radio operation when synchronization is lost

1. This section describes the radio operational impacts during the sync loss and recommendations or best practices
2. for Sync plane for handling the Radio operation during the sync loss. All the data processing clocks in O-RU
3. are driven by the S-plane Reference. If S-plane is down, we might lose sync. If O-RU implements Holdover
4. O-RU moves to Holdover state if not O-RU moves to FREE-RUN state. The M-Plane/OAM (Operation and
5. Maintenance modules) detects this S-plane state changes and might initiate shutting down data processing
6. paths and cells will be brought down to inactive state. 8

## B.1 Potential impacts due to sync loss on O-RUs

1. Usually O-RUs upon losing the lock (due to PTP/Sync-E down) might move to HOLDOVER. At this state
2. cells are still active and continue to be operational as much as they can. The holdover duration needed to
3. maintain the cells to be intact is subject to the holdover characteristics of the Oscillator (ageing, holdover per
4. day etc..), sync accuracy. An oscillator with good holdover characteristics would lead to a slow drift such that
5. the frequency reference is still within tolerance and the clocks don't change too much then we can continue as
6. the cells are effectively still in sync even though they have lost the clock reference. If the frequency is out by
7. too much then the carrier starts drifting across the spectrum - potentially starting to encroach on adjacent
8. signals and causing signal corruption if it drifts beyond guard band. If there is a phase drift happening, then
9. the cell timing is out, and handsets will then exhibit jumps in range that they are not expecting and handover
10. from one cell to another may fail. Further static handsets may see ranging errors increase. During the sync loss
11. its essential to be able to meet 50ppb frequency limit and 3us of Time error (3GPP thresholds) for the cells to
12. be operational without any problems. 22

### B.1.1 TAE errors beyond the allowed range during sync loss

1. For the case of O-DU connected to multiple O-RUs, Sync loss on one of the connected O-RUs will lead to
2. TAE (Time Alignment errors) between the radio ports of O-RUs crossing the allowed thresholds based on the
3. chosen Air interface targets which will eventually impacts the connected cells and thus bringing down the UEs. 27

### B.1.2 Impact on Handover/Handoff

1. It is a very basic requirement of the system that as the mobile handset moves out of one cell to the next, it must
2. be possible to hand the call over from the base station of the first cell, to that of the next with no discernible
3. disruption to the call. This is termed as cell handover/handoff. It is necessary to ensure handoff can be
4. performed reliably and without disruption to any calls. handover or handoff is one of the key performance
5. indicators monitored so that a robust cellular handover / handoff regime is maintained on the cellular network.
6. Sync loss on O-RU will impact the cell handoff as the RU starts drifting in phase/frequency when the handset
7. moves from connected cell to the other and leading to call drops. 36

37

![Diagram, engineering drawing  Description automatically generated]({{site.baseurl}}/assets/images/15b19687b306.jpg)1

2

##### Figure B.1.2-1: Cell handoff / handover

4

## B.2 Potential impacts due to sync loss on O-DU

### B.2.1 O-DU Sync loss in LLS-C3 topology

1. If O-DU moves to holdover due to upstream timeTransmitter sync loss, then O-DU continue to serve the
2. connected O-RUs for the holdover duration and continues to generate the slot intervals (TTI/SFN numbers)
3. towards the connected O-RUs. The L1/BBU instances on O-DU need TOD to generate SFN/slot intervals. The
4. slot intervals are dependent on the LTE/5G TDD/FDD deployment and sub carrier spacing being used. For
5. example, 5G Sub6 with 30KHz sub carrier spacing will need 125us for slot interval/SFN generation. Sync is
6. needed to maintain the TOD to be able to generate these SFNs at 125us. Once the specified holdover duration
7. expires all the carriers corresponding to this O-DU will be brought down/detached/deleted. If O-DU holdover
8. duration is greater than O-RU in this case cells will be brought down by O-RU before the O-DU detaches the
9. carriers. Any state changes on O-DU will be propagated as an M-Plane events (Netconf/yang) towards O-RU
10. and that's how O-RU knew that O-DU is in Holdover. 17

18

19

![]({{site.baseurl}}/assets/images/1d349c4624ea.png)

T-GM

O-RU1

O-DU

T-BC

Switch

O-RU2

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

##### 35 Figure B.2.1-1: Sync loss due to GNSS failure at T-GM

36

### B.2.2 O-DU Sync loss in LLS-C1/C2 topology

1. If O-DU moves to holdover due to sync loss (either due to GNSS failure on O-DU acting as GM or due to
2. upstream GM failure with O-DU acting as BC), O-DU will move to holdover and continues to serve the
3. connected O-RUs, maintains the slot intervals and symbol intervals. During this holdover duration, all
4. connected O-RUs will eventually move to Holdover due to clock class change on O-DU and might bring down
5. the cells post holdover duration subject to holdover durations supported on O-RUs. O-DU should satisfy the

3 +/-1.5us absolute TE requirements as that of O-RU.

## B.3 Best Practices

1. **1.** In order to avoid or minimize the impact on the cell's operations, its recommended for O-RUs
2. equipped with Oscillators having good holdover characteristics (low drift) for any type of sync losses. 7
3. **2.** For LLS-C3 deployments with multiple FH links towards O-RU, its recommended to have SyncE and
4. PTP carried in different links so as to avoid Single point of failures for S-plane and allow to extend
5. the O-RU holdover for longer durations with SyncE back up If link carrying PTP is down and thus
6. minimizing the impact on cell operations, avoid cell disruptions. 12
7. **3.** For LLS-C4 deployments where O-RU uses GNSS based local PRTC as sync source, its recommended
8. to use GNSS Receiver with better holdover characteristics due to minimize the impact on cells during
9. the GNSS failures. It is also a good practice to have a packet-based sync source as a backup (G.8275.1
10. [1] full timing support or G.8275.2 [3] partial timing support) so that in case of any GNSS errors, the
11. O-RU can switchover to Packet based sync as usually the time to rectify or recover from the GNSS
12. faults needs a site inspection which can run into multiple days and during this time the O-RU PLL
13. might have drifted further which can affect the cells. 20

21

1. GNSS

![]({{site.baseurl}}/assets/images/522c9c22e2e4.png)

T-GM

O-RU1

GNSS

O-DU

O-RU2

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

##### 35 Figure B.3-1: Network based sync backup for O-RU

36

1. **4.** O-DU connected to multiple O-RUs, its recommended to identify and isolate the O-RU which has the
2. sync loss decouple this O-RU, detach the cells, and continue to operate with the other connected O-
3. RUs which are synced/locked
4. **5.** It is recommended to have better holdover characteristics for O-DU for higher holdover durations than
5. the connected O-RUs to serve all the connected O-RUs for the holdover durations. 42
6. Note: All the recommendations described above are at high level for reference. For detailed
7. recommendations, need refer CUS specification Chapter 9 [33].

# Annex C QoS Considerations for PTP packets

1. To achieve high degree of accuracy of the synchronization clock recovered from PTP, important aspect of the
2. overall solution is the precise time stamping of PTP packets. 4
3. To achieve Class C requirements, physical layer time stamping must be implemented, since other time
4. stamping methods, or PTP packets without timestamping at all, do not provide suitable accuracy. From the
5. QoS perspective, PTP packets with physical layer time stamping do not require strict priority queueing to
6. optimize packet's latency/jitter, since the queueing time is accounted by the physical layer time stamps. The
7. only requirement is some QoS queue with guaranteed bandwidth, to avoid PTP packet drop during congestion
8. events.

11

1. As already discussed in sections 6.2.2 and 6.2.3 might happen, especially in mixed 3G/4G/5G deployments,
2. that both ITU-T G.8275.1 [1] PTP profile (with hop-by-hop PTPoE sessions using physical layer timestamping
3. for PTPoE packets) and ITU-T G.8275.2 [3] PTP profile (with multi-hop PTPoIP sessions) are used across the
4. transport network. Depending on the transport network element capabilities, it can happen that the PTPoIP
5. packets are not time-stamped (i.e., T-BC/T-TC function to timestamp PTPoIP packets is missing) on transit
6. transport network elements. This is called PTP unaware node. In such case, PTP unaware nodes might
7. considerably increase the latency/jitter of PTPoIP packets. Examples of possible deployments of Partial
8. Timing Support and Assisted Partial Timing Support, with some transit routers being PTP unaware routers,
9. are presented in Figure C-1, Figure C-2 and Figure C-3. 21

22

![]({{site.baseurl}}/assets/images/c0bd7d88a3bd.png)![]({{site.baseurl}}/assets/images/706c87152850.png)![]({{site.baseurl}}/assets/images/69ba1610006e.png)![]({{site.baseurl}}/assets/images/8959aae10dc5.png)![]({{site.baseurl}}/assets/images/b15c5dab5467.png)![]({{site.baseurl}}/assets/images/861db2bf9abb.png)![]({{site.baseurl}}/assets/images/d6e207ab72c8.png)![]({{site.baseurl}}/assets/images/c594f79b36dc.png)![]({{site.baseurl}}/assets/images/e43186ab5f49.png)![]({{site.baseurl}}/assets/images/0b1e64ea6493.png)![]({{site.baseurl}}/assets/images/347bf6d191b6.png)![]({{site.baseurl}}/assets/images/020f4f13ef95.png)![]({{site.baseurl}}/assets/images/8f17027b0e19.png)![]({{site.baseurl}}/assets/images/41691646f40f.png)![]({{site.baseurl}}/assets/images/a351ef2bb2f5.png)![]({{site.baseurl}}/assets/images/0f72864d6c00.png)

PTPoIP

PTPoIP

PTPoE

PTPoE

TS

TS

TS

TS

TS

TS

TS

TS

TS

TS

**O-RU**

**T-GM**

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- |
| (G.8275.2) | PTP unaware | T-TC | T-BC-P | PTP unaware | T-BC with IWF | T-BC |
|  |  |  | (G.8275.2) |  | (G.8275.2?G.8275.1) |  |

</div>

23

##### 24 Figure C-1: Partial Timing Support deployment model

25

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- |
|  | | | | | **PRTC (GNSS)** |  |
| **T-GM** TS  (G.8275.2) | ![]({{site.baseurl}}/assets/images/ef8be6ca0f84.png)  PTP unaware | PTPoIP  ![]({{site.baseurl}}/assets/images/f97aefba1d6c.png)  PTP unaware | ![]({{site.baseurl}}/assets/images/366ae5a48592.png)  PTP unaware | TS **O-RU** | | |

</div>

26

![]({{site.baseurl}}/assets/images/dab81c88c2b2.png)![]({{site.baseurl}}/assets/images/72360f729c57.png)![]({{site.baseurl}}/assets/images/5ce79a06acc9.png)27

##### 28 Figure C-2: Example 1 of Assisted Partial Timing Support deployment

29

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
|  | **PRTC (GNSS)** |  |
| PTPoIP PTPoE PTPoE PTPoE  **T-GM** TS TS TS TS TS TS TS TS TS TS **O-RU**  (G.8275.2) PTP unaware T-TC PTP unaware T-BC-A T-BC T-BC  (GNSS Assisted) | | |

</div>

![]({{site.baseurl}}/assets/images/a64f15d388ee.png)![]({{site.baseurl}}/assets/images/1e7963d124f6.png)![]({{site.baseurl}}/assets/images/7a59ed6c0a28.png)![]({{site.baseurl}}/assets/images/1916d2b85b60.png)![]({{site.baseurl}}/assets/images/2730f6de4c06.png)![]({{site.baseurl}}/assets/images/dd783cfdccac.png)![]({{site.baseurl}}/assets/images/6478fff6f004.png)![]({{site.baseurl}}/assets/images/10ade6a1b6e6.png)![]({{site.baseurl}}/assets/images/2fcb4c94c8f0.png)![]({{site.baseurl}}/assets/images/3e738fc83398.png)![]({{site.baseurl}}/assets/images/26582a263aee.png)![]({{site.baseurl}}/assets/images/84450cd64e92.png)![]({{site.baseurl}}/assets/images/bdd2f94496cc.png)![]({{site.baseurl}}/assets/images/bc80831283a5.png)![]({{site.baseurl}}/assets/images/a781bfa5027e.png)![]({{site.baseurl}}/assets/images/3ef310a78887.png)

30

31

##### 32 Figure C-3: Example-2 of Assisted Partial Timing Support deployment

33

1. Therefore, if PTP unaware nodes are present in the transport network, two network design aspects must be
2. taken into consideration:

3

1. ? devices sourcing PTPoIP packets (i.e., T-GMs or T-BCs) MUST consistently mark these packets
2. network-wide agreed DSCP value
3. ? PTP unaware nodes MUST match PTPoIP packets (based on agreed DSCP value) and apply
4. appropriate QoS policies to minimize latency/PDV for PTPoIP packets not time stamped on transit
5. nodes.

9

10 Table C-1 contains a list of typical flows that can be observed in the multiclass transport network used to

11 transport 5G flows as well. When recommending appropriate QoS policies for PTP, overall QoS policies for

12 all flows must be taken into consideration. 13

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **Traffic type** | **Packet size**  **(order of magnitude)** | **Per-hop latency**  **(order of magnitude)1)** | **Per-hop PDV**  **(order of magnitude)1)** |
| PTP (unaware mode)2) | ~100 bytes | constant average  (equal to/from T-BC) | ~0.5 us3) |
| CPRI (RoE) | ~1500 bytes | ~1-5 us | ~1-5 us |
| eCPRI CU-P | ~1500 bytes | ~1-5 us | ~1-5 us |
| OAM with aggressive timers | ~100 bytes | ~1 ms | ~1 ms |
| latency sensitive U-plane  and business traffic | IMIX | ~1 ms | ~1 ms |
| Network Control: OAM with relaxed timers, IGP, BGP, LDP, RSVP, PTP  aware mode (T-TC/T-BC)4) | variable | ~5 ms | ~1-3 ms |
| Other traffic types | variable | ~10-50 ms | ~5-25 ms |

</div>

14

##### 15 Table C-1: Different flows per-hop latency/PDV (order of magnitude)

16

17 Note 1: Exact per-hop requirements depend on the overall network budget, number of hops, budget allocated

18 to fibers, etc. ... 19

20 Note 2: PTP unaware mode i.e., transiting router that do not support T-TC/T-BC function, strict-priority queue

21 is required to minimize jitter (actual latency value is not relevant, but its average should be constant).

22 Minimizing the latency via strict-priority queue minimizes jitter as well. 23

##### 24 Reco: This ORAN specification does not recommend PTP unaware mode of network deployment

25

<div class="table-wrapper" markdown="block">

26 Note 3: Max|TE| accumulated across the network must be <=1.1 us. 27

</div>

1. Note 4: T-BC/T-TC with physical layer time stamping, guaranteed bandwidth queue is good enough, strict-
2. priority queue is not required, since jitter/PDV will be accounted by physical layer timestamps in PTP packet.
3. Also, latency value is not relevant, but average latency should be constant. QoS should ensure that PTP packets
4. are not dropped during congestion, and guaranteed bandwidth queue is sufficient for that. 32
5. There are variety of hardware support for QoS, depending on the hardware. It is out of scope for this document
6. to discuss all the various QoS models supported by different hardware platforms of transport network elements.
7. More detailed discussion about QoS is provided in [32]. From the PTP point of view, however, two major QoS
8. models are worth to mention. 37

1

![]({{site.baseurl}}/assets/images/37f02d7410ce.png)![]({{site.baseurl}}/assets/images/720da0f61867.png)![]({{site.baseurl}}/assets/images/a7ee9fbf8885.png)![]({{site.baseurl}}/assets/images/2f5d71c7a07a.png)![]({{site.baseurl}}/assets/images/b1e3de361292.png)![]({{site.baseurl}}/assets/images/dc754e1a78e7.png)![]({{site.baseurl}}/assets/images/0fd8f116147c.png)![]({{site.baseurl}}/assets/images/a44c0cd39f26.png)![]({{site.baseurl}}/assets/images/0c302cf827bd.png)![]({{site.baseurl}}/assets/images/7162efbb46ea.png)![]({{site.baseurl}}/assets/images/800532208a53.png)![]({{site.baseurl}}/assets/images/609341ded075.png)![]({{site.baseurl}}/assets/images/e36f13d264fb.png)![]({{site.baseurl}}/assets/images/85509391f06b.png)![]({{site.baseurl}}/assets/images/301db14f5ca9.png)![]({{site.baseurl}}/assets/images/25edb2c3c3ab.png)

**WFQ/WRR/WDRR/MDRR Scheduling**

PIR optional

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
|  | Very high weight to ensure frequent enqueuing in order to avoid queue congestion, and thus to keep queue latency to minimum |  |
| Scheduler parameters PIR mandatory  CPRI (RoE), eCPRI CU-P, PTP (unaware mode) EF PIR  OAM with aggressive timers, AF Weight PIR  latency sensitive U-plane and business traffic  Network Control: OAM with relaxed timers, AF Weight PIR  IGP, BGP, LDP, RSVP, eCPRI S-P, PTP (T-TC/T-BC)  Guaranteed bandwidth U-plane AF Weight PIR  and business traffic  Port  Other guaranteed bandwidth traffic AF Weight PIR  (e.g. eCPRI M-P, other management)  spare AF Weight PIR  spare AF Weight PIR  Other best effort (may be guaranteed) AF Weight PIR  Queue buffer size aligned to maximum latency requirements | | |

</div>

2

##### Figure C-4: QoS model with single expedited forwarding (strict priority) queue

4

1. Figure C-4 outlines the QoS model with single expedited forwarding (strict priority) queue. In this hardware
2. model, all flows with ultra-high latency/PDV sensitivity (PTP unaware mode, CPRI/RoE, eCPRI CU-P) must
3. be placed in this EF queue, while other flows should be distributed among remaining AF (assured forwarding)
4. queues. AF queue used for flows with high (but not ultra-high) latency/PDV sensitivity (OAM with aggressive
5. timers, latency sensitive U-plane and business traffic) should be parametrized with relatively high weight used
6. in WFQ/WRR/WDRR/MDRR (Weighted Fair Queueing, Weighted Round Robin, Weighted Deficit Round
7. Robin. Modified Deficit Round Robin) scheduling algorithms, so that this queue is serviced very frequently,
8. to avoid queue congestion and to minimize latency/PDV. 13

**Priority Scheduling**

PIR mandatory

1

![]({{site.baseurl}}/assets/images/14c6c98de1c1.png)![]({{site.baseurl}}/assets/images/0c8be0d862f1.png)![]({{site.baseurl}}/assets/images/0c59865527d2.png)![]({{site.baseurl}}/assets/images/dae1699cdf43.png)![]({{site.baseurl}}/assets/images/9ccdfda26200.png)![]({{site.baseurl}}/assets/images/e78e780ab8f7.png)![]({{site.baseurl}}/assets/images/f2290c689924.png)![]({{site.baseurl}}/assets/images/b05d383a4402.png)![]({{site.baseurl}}/assets/images/e6fbdee9d61f.png)![]({{site.baseurl}}/assets/images/af14d6dd5a75.png)![]({{site.baseurl}}/assets/images/07254cd705ea.png)![]({{site.baseurl}}/assets/images/4bdbf4b059d2.png)![]({{site.baseurl}}/assets/images/b712673500b3.png)![]({{site.baseurl}}/assets/images/476b21cc64d6.png)![]({{site.baseurl}}/assets/images/17fc8cd10afe.png)![]({{site.baseurl}}/assets/images/ccea2d8966dd.png)

**WFQ/WRR/WDRR/MDRR Scheduling**

PIR optional

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
|  | Very high weight to ensure frequent enqueuing in order to avoid queue congestion, and thus to keep queue latency to minimum |  |
| Scheduler parameters  PTP (unaware mode) EF1 PIR  CPRI (RoE) EF2 PIR  eCPRI CU-P EF3 PIR  OAM with aggressive timers,  latency sensitive U-plane and business traffic AF Weight PIR  Port  Network Control: OAM with relaxed timers, AF Weight PIR  IGP, BGP, LDP, RSVP, eCPRI S-P, PTP (T-TC/T-BC)  Guaranteed bandwidth U-plane AF Weight PIR  and business traffic  Other guaranteed bandwidth traffic AF Weight PIR  (e.g. eCPRI M-P, other management)  Other best effort (may be guaranteed) AF Weight PIR  Queue buffer size aligned to maximum latency requirements | | |

</div>

##### Figure C-5: QoS model with multiple prioritized expedited forwarding queues, and CPRI/eCPRI

* 1. **separation**

4

**Priority Scheduling**

PIR mandatory

5

![]({{site.baseurl}}/assets/images/02cdc3fb4a34.png)![]({{site.baseurl}}/assets/images/355fe07bd94a.png)![]({{site.baseurl}}/assets/images/d07536b9396b.png)![]({{site.baseurl}}/assets/images/0fa11dafa051.png)![]({{site.baseurl}}/assets/images/97809f74f018.png)![]({{site.baseurl}}/assets/images/4f607ace7b75.png)![]({{site.baseurl}}/assets/images/7b22003d3194.png)![]({{site.baseurl}}/assets/images/acf6da1cdf95.png)![]({{site.baseurl}}/assets/images/58fe2464b0a7.png)![]({{site.baseurl}}/assets/images/e5c3289fe8c3.png)![]({{site.baseurl}}/assets/images/e559152b23d2.png)![]({{site.baseurl}}/assets/images/0f6b20a0456c.png)![]({{site.baseurl}}/assets/images/f7864d9b9917.png)![]({{site.baseurl}}/assets/images/25b2dbb445e8.png)![]({{site.baseurl}}/assets/images/f706dba15566.png)![]({{site.baseurl}}/assets/images/4767a8c499d7.png)

Scheduler parameters

PTP (unaware mode)

CPRI (RoE), eCPRI CU-P

OAM with aggressive timers, latency sensitive U-plane and business traffic

PIR

PIR PIR

Network Control: OAM with relaxed timers, IGP, BGP, LDP, RSVP, eCPRI S-P, PTP (T-TC/T-BC)

Guaranteed bandwidth U-plane

and business traffic

Other guaranteed bandwidth traffic (e.g. eCPRI M-P, other management)

Weight

PIR PIR PIR PIR

PIR

Port

Weight

Weight

spare

Weight

Other best effort (may be guaranteed)

Weight

Queue buffer size aligned to maximum latency requirements

**WFQ/WRR/WDRR/MDRR Scheduling**

PIR optional

##### Figure C-6: QoS model with multiple prioritized expedited forwarding queues, and CPRI/eCPRI

1. **sharing the queue**

8

9

1. Figure C-5 and Figure C-6 outline a recommended queue assignment on hardware platforms supporting
2. multiple expedited forwarding queues, dequeued in strict priority order. Difference between two options is
3. CPRI/eCPRI placement:

13

1. ? in separate queues, prioritizing CPRI queue over eCPRI queue (Figure C-5)
2. ? in common queue (Figure C-6)

1

* 1. In both cases, it is recommended to place PTP packets in unaware mode in the highest priority queue, to
  2. minimize the PDV of these packets to the highest possible degree. Putting these packets above CPRI(RoE) or
  3. eCPRI has only minimal influence on CPRI/eCPRI packets PDV, since PTP packets are very small (~100
  4. bytes). For example, serialization delay of such small packet on 10 GE interface is only 80 ns, so PDV factor
  5. contributing to CPRI/eCPRI PDV is very small as well and can be easily handled by the CPRI/eCPRI
  6. reassembly functions.

# Annex D R-PHY (DOCSIS over Ethernet)

1. Will be covered in the future version of this specification 3

# Annex E Synchronization over TDM PON

## E.1 Short introduction to TDM PON

1. A TDM PON system is composed of an Optical Liner Termination (OLT) with one or more network ports and
2. one or more PON ports, the point-to-multipoint optical distribution networks (ODNs) terminated by the OLT,
3. and a set of Optical Network Units (ONUs) on each ODN. Each ONU then provides network connectivity to
4. one or more "user" devices connected to it. In the case of Mobile X-haul such devices are gNBs, O-CUs, O-
5. DUs and/or O-RUs.

8

1. TDM PONs are characterized by the shared medium nature of the ODN connecting multiple ONUs to a single
2. OLT port. The common bandwidth is shared in TDM fashion in downstream (DS) and TDMA fashion in
3. upstream (US), with a WDM separation between downstream and upstream signals for full duplex operation.
4. For upstream the TDMA is performed by means of a Dynamic Bandwidth Assignment (DBA) algorithm in
5. the OLT that controls when each ONU can send a burst of data, so that bursts from different ONUs are
6. interleaved at the OLT receiver without overlaps. In downstream the TDM is done by each ONU only selecting
7. ![]({{site.baseurl}}/assets/images/658090d690b6.png)the packets that are destined to itself. 16

17

18

##### 19 Figure E-1: TDM PON system

20

1. The latency for data transport is inherently asymmetrical in TDM PON;
2. ? DS : latency by buffering in the OLT, FEC over PON, serialization of control words at line rate, fiber
3. propagation time, queuing & scheduling in ONU
4. ? US: latency by TDMA in ONU (scheduling done by DBA in OLT), FEC over PON, serialization of
5. control words at line rate, fiber propagation time, buffering in OLT 26
6. The delay discrepancy between US and DS can be large and this means that PTP cannot be used across a TDM
7. PON. The PON interface uses its own MAC encapsulation (over which Ethernet-based packets are transported
8. transparently), meaning that plain Sync-E as such is not readily available at the ONU PON interface. Therefore,
9. TDM PON systems have built in alternative methods for frequency and time synchronization. 31
10. According to [1], a medium-specific access section can still act as a link in the synchronization chain by means
11. of a pair of converters between PTP and the medium, also known as Inter-Working Functions IWF. When
12. mapping this on a TDM PON system, the ODN is the access medium, the Transport Protocol Specific
13. Transmission Convergence (TPS-TC) functionality is part of the IWF in the OLT and the ONU, and the PTP
14. timeTransmitter and timeReceiver (in respectively ONU and OLT) represent the other part of their IWF, see
15. Figure E-2.

![]({{site.baseurl}}/assets/images/b096f1c4bd95.jpg)4

5

6

##### 7 Figure E-2: G.8271 Hypothetical Reference Model (HRM)

8 **(OLT on left, ONU on right)**

9

![]({{site.baseurl}}/assets/images/61775ae739da.png)10

11

12

##### Figure E-3: PON as link in the sync chain (example for D-RAN from G.9807.1)

1. **(OLT on right, ONU on left)**

15

1. PTP is terminated in the OLT (timeReceiver clock). The time synchronization is carried over the PON medium
2. by TPS-TC (more details in section E3). PTP is regenerated in each ONU (timeTransmitter clock) on its UNIs
3. towards the end device (example is an O-RU).
4. The PON system functionally acts as one (distributed) T-BC in the sync chain. In terms of performance, it can
5. be modelled as pair of T-BCs of the same class. 21
6. Note that this TPS-TC approach is completely independent from latency that regular traffic experiences across
7. the PON system, so its accuracy is not linked to any QoS or traffic load dependency. The TDM PON system
8. supports the hybrid model (PTP + Sync-E/eSyncE). 4

## E.2 Specifics with TDM PON (compared to point-point links) for

1. frequency synchronization
2. In TDM PON systems there is a continuous downstream bitstream, whether it is real traffic or filling-in dummy
3. traffic. Hence there is a continuous availability of frame structures and bit transitions. 9

10 For ITU TDM PONs, frequency synchronization is done based on the precise framing structure (125 us) of

11 the physical medium. The OLT terminates Sync-E or eSyncE from the network, uses it for its internal clock

12 generating the frame structure. The ONU derives its clock frequency from the 8kHz frame repetition rate and

13 uses it to support Sync-E or eSyncE on its user interfaces. Basically, the ONU PLL is controlled by the OLT

14 clock which is synchronized by Sync-E. 15

## E.3 Specifics with TDM PON (compared to point-point links) for time

1. synchronization

### E.3.1 Different use cases and related requirements

1. This follows the use cases as described in the section 6.3.3 of this document and applies them to the use of
2. TDM PON as access technology. The relevant use cases are:
3. ? LLS-C2: The O-DUs are connected to the T-GM and the O-DUs relay synchronization towards the O-
4. RUs (across the PON access).
5. ? LLS-C3: The O-DUs are connected to the T-GM and the O-RUs are connected (across the PON access)
6. to the T-GM.
7. ? LLS-C4: This may be achieved with a TDM PON access system, but it is not dependent on the TDM
8. PON performance. Therefore, it is not further discussed in this document. 27

28 The following figures indicate the requirements that a use case would put on the TDM PON system. The

29 requirements from T-GM to O-RU for TDD are indicated in red squares, the requirements for coordination

30 between O-RUs are indicated in purple squares. 31

32 Section E.3.2 then reviews which of these requirements can be met by the capabilities of TDM PON systems. 33

1 Distributed RAN (D-RAN):

2

1. In D-RAN context only the end-end TDD requirement of +-1500ns is to be accounted for (equivalent to
2. +-1100ns up to O-DU input as per scenario (a) in [1] table V.1). Depending on the number of T-BCs or T-TCs
3. in the chain, a part of that budget is available to the TDM PON system. 6

![]({{site.baseurl}}/assets/images/0bd3a4de5ba6.jpg)7

8

##### Figure E-4: Sync requirements in D-RAN (backhaul) with TDM PON in access

10

11 Virtual RAN (V-RAN):

12

13 The requirements in V-RAN context are equivalent to the D-RAN context. 14

![]({{site.baseurl}}/assets/images/6eac0137dde9.jpg)15

16

##### 1 Figure E-5: Sync requirements in VRAN (F1 Midhaul) with TDM PON in access

1 Cloud RAN (C-RAN)

2

1. For LLS fronthaul (C-RAN) the requirements are based on 1) same TDD requirement between T-GM and O-
2. RU as V-RAN and D-RAN, and 2) coordination between the O-RUs mutually, resulting in meeting a given
3. TAE category:
4. ? Category C: max TAE between O-RUs = +-3000ns:
5. Applies to all O-RUs in the network
6. ? Category B: max TAE between O-RUs = +-260ns:
7. Applies to clusters of Regular O-RUs with FR1 or FR2, and to clusters of Enhanced O-RUs with
8. FR1 or FR2
9. ? Category A: TAE between O-RUs = +-130ns:
10. Applies only to cluster of co-located Enhanced O-RUs with FR2 13

14 The TAE must then be applied between the O-RUs connected to same T-BC in the network. There are

15 multiple possible positions of the common clock, depending on which PON ODN (or PON ODNs) are

16 subtending the different O-RUs. 17

18 Different config topologies:

19

20 ? **LLS-C2**

![]({{site.baseurl}}/assets/images/30d78a8207bf.jpg)21

22

23

##### 24 Figure E-6: Sync requirements in C-RAN (fronthaul) LLS-C2 with TDM PON in access

25

1. TDD requirements:
2. Table 9-3 in [33] states a budget of +-1325ns for the TE between T-GM and O-DU UNI. The remaining portion
3. for TE between O-DU UNI and air interface is +-175ns. Depending on the O-RU clock type (enhanced or
4. regular), this translates into respectively +-140ns or +-95ns between the O-DU UNI and the O-RU network port.
5. Depending on the amount of intermediate transport nodes between the O-DU and the OLT, a portion of that is
6. available for the TDM PON system.
7. Sync requirements for category A and B:
8. The options (as indicated in figure E-6) for the nearest common T-BC are:
9. ? Option-A: O-DU output: when O-RUs that are managed by the same O-DU are on different OLTs and
10. different intermediate nodes
11. ? Option-B1: T-BC output: when O-RUs are on different OLTs but share at least one intermediate transport
12. node (If the T-BC is the last in the chain, this point is equivalent to the OLT input).
13. ? Option-B2: Internal point in OLT: when O-RUs are on same OLT, but different PON cards
14. ? Option-B3: (closer) internal point in OLT: when O-RUs are on same PON port, or on different PON ports
15. on the same PON card 10

##### 11 LLS-C3 Option A:

12

13

14

15 ![]({{site.baseurl}}/assets/images/b615857f14a8.jpg)

16

##### 17 Figure E-7: Sync requirements in C-RAN (fronthaul) LLS-C3 Option A with TDM PON in access

18

1. TDD requirements:
2. The budget between T-GM and O-RU network port is +-1100ns. Depending on the number of T-BCs and/or T-
3. TCs in the chain, a part of that budget is available to the TDM PON system. 22
4. Sync requirements for category A and B:
5. The options as indicated in figure E-7 for the nearest common T-BC are:
6. ? Option-i (T-GM): when O-RUs are on different OLTs and different intermediate nodes
7. ? Option-ii (T-BC output): when O-RUs are on different OLTs but share at least one intermediate transport
8. node (If the T-BC is the last in the chain, this ref point is equivalent to the OLT input).
9. ? Option-iii (Internal point in OLT): when O-RUs are on same OLT, different PON cards
10. ? Option-iv (internal point in OLT): when O-RUs are on same PON port, or on different PON ports on
11. the same PON card

1

##### 2 ? LLS-C3 Option B:

3

4

![]({{site.baseurl}}/assets/images/9e3bb25944d6.jpg)5

6

7

##### Figure E-8: Sync requirements in C-RAN with LLS-C3 Option B and TDM PON in access

9

1. TDD requirements:
2. The budget between T-GM and O-RU network port is +-1100ns. Depending on the number of intermediate T-
3. BCs and/or T-TCs in the chain, a part of that budget is available to the TDM PON system. 13
4. Category A and B sync requirements:
5. The options as indicated in figure E-8 to the nearest common T-BC are:
6. ? Option-i (T-BC output): when O-RUs are on different OLTs but share at least one intermediate transport
7. node (If the T-BC is the last in the chain, this ref point is equivalent to the OLT input).
8. ? Option-ii (internal point in OLT): when O-RUs are on same OLT, but different PON cards
9. ? Option-iii (internal point in OLT): when O-RUs are on same PON port, or on different PON ports on
10. the same PON card 21

22

##### 23 ? LLS-C3 Option C and D:

24

1. TDD requirements:
2. The budget between T-GM and O-RU network port is +-1100ns. Depending on the number of T-BCs and/or T-
3. TCs in the chain, a part of that budget is available to the TDM PON system. 28
4. Category A and B Sync requirements:
5. The options as indicated in figure E-9 to the nearest common T-BC are:
6. ? Option-i (common T-BC output): when O-RUs are on different OLTs but share at least one intermediate
7. transport node
8. ? Option-ii (T-BC output): when O-RUs are on different OLTs but share at least one intermediate transport
9. node (If the T-BC is the last in the chain, this ref point is equivalent to the OLT input).
10. ? Option-iii (internal point in OLT): when O-RUs are on same OLT, different PON cards
11. ? Option-iv (internal point in OLT): when O-RUs are on same PON port, or on different PON ports on
12. the same PON card 38

1

2

3 ![A diagram of a computer network  Description automatically generated]({{site.baseurl}}/assets/images/0ffcc52e3be3.jpg)

4

##### 5 Figure E-9: Sync requirements in C-RAN with LLS-C3 Options C, D and TDM PON in access

6

### 7 E.3.2 TDM PON capabilities

8

##### Mechanisms

10

1. Synchronization over TDM PON is made possible by the fact that the system is inherently synchronized
2. between the OLT and its ONUs. 13
3. First, each ONU is detected and automatically "ranged", whereby the OLT measures its distance and sets time
4. equalization per ONU, to align on it on the US TDMA scheme. For this time alignment each ONU has access
5. to a common (arbitrary) time reference with the OLT (ITU PON: D/S 125us frame boundary). 17
6. Then the correlation to ToD (received at the OLT by PTP from the network) is added; each ONU retrieves the
7. absolute ToD for an association of a given event with a given timestamp. This association is communicated
8. by the OLT to the ONU in a management message. In ITU PON the ToD (at a hypothetical ONU, at start of
9. PON frame X) is communicated via OMCI to each ONU. 22

##### 23 Dependencies

24

1. There are several factors that impact the Time Error (TE) across TDM PON system (OLT SNI - ONU UNI):
2. ? RTT estimation depends on speed of light, which depends on n(?)
3. ? Variation on ?: the PON WDM bands in US and DS depend on the PON technology
4. ? Accuracy of PON time equalization of ONUs (correction measure to deal with ONU drifts)
5. ? Knowledge of internal delays in OLT
6. ? Knowledge of internal delays in ONU 31
7. The Time Alignment Error (TAE) between two O-RU air interfaces when subtended over TDM PON depends
8. on:
9. ? Location of the reference clock common to both O-RUs, which depends on the topology:
10. ? Common PON card (same PON port or different PON ports): local card clock
11. ? Common OLT node: local OLT clock
12. ? Different OLTs: first common node to which both OLTs are connected
13. ? Accuracies of the (relevant part of the) TDM PON system (the TE between the common clock
14. reference and ONU UNI) 4

##### 5 Capabilities of TDM PON systems

6

1. TDM PON standards do not provide system-wide requirements (OLT SNI - ONU UNI) on time
2. synchronization performance, but it is an active area of discussion. 9
3. The built-in mechanisms for ToD distribution across a TDM PON medium (TPS-TC) are very accurate, in the
4. order of 10ns for cTE:
5. ? ToD notifications in OAM messages have 1ns resolution
6. ? Ranging accuracy can be in the order of several ns (below 5ns)
7. ? Estimation of variations on n(?) over the known WDM bands and fiber type can bring precision of
8. factors depending on n(?) down to below 5ns at 20km
9. Ultimately, the full system performance (including dTE) is up to implementation of ONU and OLT. 17
10. There is no standardized way yet to test/characterize TAE between multiple output ports of a system for all T-
11. BC Class of clocks (ITU-T standards have defined only for Class-C T-BC, but TDM PON systems do not meet
12. this accuracy).

21

<div class="table-wrapper" markdown="block">

1. There are two ways to label a given performance of a system in function of its max|TE| between OLT SNI and

</div>
2. ONU UNI:
3. ? Either it is equivalent to a single T-BC of a given class (refer [2] Table 7-1),
4. ? or it is equivalent to what is expected from a pair of T-BCs of the same class (refer [2] Table V.1, or
<div class="table-wrapper" markdown="block">

5. formula IV-13 in [8] (which has two extreme cases depending on the symmetry of |dTEL(t)| around

</div>
6. cTE)).

28

<div class="table-wrapper" markdown="block">

29 For example, for a TDM PON system that would meet max|TE| of 100ns, it would mean:

</div>

<div class="table-wrapper" markdown="block">

30 ? Compliance of full system to pair of Class A T-BCs (max|TE| of 160ns as per [2] or 130 to 160ns as

</div>

31 per [8])

<div class="table-wrapper" markdown="block">

1. ? Compliance of full system to pair of Class B T-BCs (max|TE| of 100ns as per [2] or upper bound of

</div>
2. 100ns as per [8] or single Class A T-BC (100ns)
<div class="table-wrapper" markdown="block">

3. ? No compliance of full system to single Class B T-BC (interpreted as max|TE| of 70ns as per [2] or

</div>
4. upper bound of 70ns as per [8])
<div class="table-wrapper" markdown="block">

5. ? No compliance of full system to pair of Class C T-BCs (max|TE| of 45ns as per [2] , or upper bound of
6. 35ns as per [8]) or single Class C T-BC (max|TE| of 30ns) 38

</div>

### E.3.3 Overview of TDM PON support use cases

<div class="table-wrapper" markdown="block">

* 1. The "Required Budget" in Table E.3-1 represents the end-end |TE| allowed for a given Category and a given

</div>
  2. O-RU type:
<div class="table-wrapper" markdown="block">

  3. ? Cat C: 1500ns - |TE|O-RU

</div>
  4. ? Cat B with enhanced O-RUs: 95ns
  5. ? Cat B with regular O-RUs: 50ns
  6. ? Cat A with enhanced O-RUs: 30ns 8

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **Mobile X-haul use case with TDM**  **PON** | **Category C** | **Category B with enhanced O-RU** | **Category B with regular O-RU** | **Category A with enhanced O-RU** |
| **Pair of Class-A T- BC as per G.8273.2**  **(max|TE| = 160 ns)** | No for LLS-C2 (required <= 140ns)  Yes, for LLS-C3 (note-1) | No | No | No |
| **Pair of Class-A T- BCs as per ITU-T G.8271.1 with fully symmetrical case. (max|TE| = 130ns)** | Yes, for all LLS-C3 options.  Yes, for LLS-C2 if cluster of enhanced O-RUs and no intermediate node  (required <= 140ns) | No | No | No |
| **Pair of Class-B T- BC as per G.8273.2**  **(max|TE| = 100ns)** | Yes, for LLS-C2 (note-1)  Yes, for LLS-C3 (note-1) | Yes, for LLS-C2 if enhanced O- RUs connected to ports of same card of PON system  Yes, for LLS-C3 all options | No | No |

</div>

9

10

11

1. Note 1:

##### Table E.3-1: TDM PON use cases supported in fronthaul

1. The PON system will consume part of the end-to-end budget. The performance of the PON system and the
2. number of other intermediate nodes (if any and their class performance) between the T-GM and the O-RU
3. will determine the synchronization category that can be supported.

16

17

<div class="table-wrapper" markdown="block">

1. TDM PON systems that can meet max|TE| of 100ns are suitable for Backhaul, Midhaul and Fronthaul category

</div>
2. C deployments. TDM PON systems can be deployed in fronthaul category B application, provided the
3. enhanced O-RUs in a cluster are connected to the same OLT or same PON card. 21
<div class="table-wrapper" markdown="block">

4. TDM PON systems that can meet better than 100ns max|TE| performance needed to support the other use

</div>
5. cases.

24

# Annex F Multi-TDD operator considerations

1. Will be covered in the future version of this specification 3

# Annex G Security Considerations

1. Security in Xhaul networks and specifically in Fronthaul networks for sync plane is critical for the operation
2. of the wireless network. Encryption, Authentication and/or Architectural redundancy models are different
3. ways to secure and mitigate the security threats of the network. This chapter describes various models that can
4. be exercised to secure the sync plane in the Xhaul networks. 6

## G.1 Architectural Redundancy Models

1. The Authentication, Integrity protection and/or Encryption of the PTP control (events and general) packets do
2. not always address the performance degradation introduced by some rogue nodes in the middle. The
3. Architectural redundancy models in this section describes how to effectively detect and mitigate the
4. performance degradation and other attacks. 12

### 13 G.1.1 Network model with no sync redundancy

14

# 15 Attack

16

O-RU

CSR

HSR

GM

17

18

19

20

21

22

23 Figure G-1

24

25 o The topology shown in Figure G-1 does not have sync network redundancy for the transport network

26 elements (CSR and HSR nodes).

27 o Any attack on CSR, HSR or the points between GM to O-RU interconnects can impact the sync recovery

28 at O-RU.

29 o Sync network without redundancy is difficult to detect and mitigate the performance degradation attack. 30

### 31 G.1.2 Network model with sync redundancy

32 Attack

33

34

O-RU-1

CSR-1

HSR-1

GM-1

O-RU-2

CSR-2

HSR-2

GM-2

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

46 Figure G-2

47

1. o The topology shown in Figure G-2, redundant sync paths are exercised. Every node in the chain from GM
2. to O-RU has more than one (two) sync paths, green and blue color respectively.
3. o Attack on any node or insertion of a rogue node in blue path can be mitigated with green path.
4. o The HSR, CSR and O-RU can exercise the passive port monitoring feature described in Annex-G of ITU-
5. T G.8275.1 profile [1] -" Monitoring PTP timeTransmitter port using PTP passive port" to effectively
6. detect any change in performance between active timeReceiver port and alternate passive port.
7. o Monitoring of the active timeTransmitetr using passive port does not automatically trigger the A-BTCA
8. algorithm to switchover rather it helps to detect the time/phase change between these two ports. The
9. network operator can monitor the changes and take necessary action as needed to mitigate the attack. 10

11 Note: With 1+1 resiliency model (as shown in figure G-2), it is only possible to detect the difference of the

12 time between the passive and active PTP ports. It is not possible to predictably determine which clock/time

13 source is correct. It is critical to have more than 2 links/PTP ports to detect the bad or rogue time source. 14

### 15 G.1.3 Architecture model where O-RUs with single network interface

16

17

# 18 Attack

19

![]({{site.baseurl}}/assets/images/1c9bf6cac585.png)![]({{site.baseurl}}/assets/images/b23b53b78bda.png)

GNSS

O-RU-1

CSR-1

HSR-1

GM-1

GNSS

O-RU-2

CSR-2

HSR-2

GM-2

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

31 Figure G-3

32

1. ? The topology shown in Figure G-3, O-RUs do not have secondary network interface connectivity. In this
2. case the network-based sync performance of the O-RU can be monitored using directly connected GNSS
3. recovered phase/time.
4. ? In this model, GNSS port is treated as passive port and compared against the active timeReceiver port (the
5. network interface) as per G.8275.1 Annex G [1] -" Monitoring PTP timeTransmitter port using PTP
6. passive port"
7. ? Other than O-RUs, the transport network elements (HSR and CSR) may exercise redundant network-based
8. passive port monitoring feature for the sync performance monitoring. 41
9. Note: GNSS may have other issues (Jamming, spoofing etc), that can lead to false interpretation of network
10. based recovered time as bad. Therefore, it must be thoroughly analysed whether the issue is from passive port
11. (GNSS) or PTP port (timeReceiver port)

1

### G.1.4 Architecture Redundancy for PTP operation for various PTP Security Attacks.

1. Various types of attack possible in the PTP enabled network are listed below. 4
2. 1. PTP packet content manipulation attack
3. 2. PTP packet removal attack
4. 3. PTP packet Delay Manipulation attack
5. 4. PTP Time Source Degradation attack
6. 5. PTP TimeTransmitter/TimeReceiver Spoofing attack
7. 6. PTP packet Replay attack
8. 7. PTP A-BTCA attack

12

13 G.1.4.1 PTP Packet content manipulation attack

14

1. In a packet content manipulation attack, an attacker manipulates suitable fields of PTP packets in transit and
2. affecting the clock synchronization of some or all downstream nodes. The network architectural redundancy
3. ensures that the immediate downstream node(s) to switch to alternate clock path. 18

![A picture containing text, screenshot, line, diagram  Description automatically generated]({{site.baseurl}}/assets/images/bb838e9e172c.png)19

20

21

22 G.1.4.1.1 Threat scenarios 23

Figure G-4: PTP packet content manipulation attack

1. An attacker has access to one or more TNEs in the network and intercept and change some or all the
2. parameter's Sync/Follow-Up/Delay-Request/Delay-Response and Announce messages.
3. 1. Change the *versionPTP* value from (version) 2 to (version) 1 (Note-1).
4. 2. Change the domain-number (Note-1).
5. 3. Change one or more clock parameters such as clockClass, clockAccuracy, offsetScaledLogVariance,
6. priority2, and/or clockIdentity. 30

31 G.1.4.1.2 Threat resolution 32

1. In the diagram above, when the versionPTP value or domain number of the PTP attributes change from HSR-
2. 1 to CSR-1, the CSR-1 will discard the PTP messages. In such case CSR-1 will select the clock from HSR-2
3. timeTransmitter port 1.

36

1. When the attacker changes one or more of the clock parameters (clockClass, clockAccuracy, offsetScaledLog-
2. Variance, priority2, local priority and clockIdentity), CSR-1 will detect the changes and trigger the A-BTCA
3. to select the clock from HSR-2 timeTransmitter port 1 (Note-2). 40
4. When the attacker changes the *originTimestamp /preciseOriginTimestamp or correctionField* fields in the PTP
5. messages from HSR-1 and CSR-1, CSR-1 can get the time error based on PTP timestamps on its port 1. If the
6. port 2 of the CSR-1 is a passive monitor port and if the difference of the time error of Passive monitor port 2
7. and the time error of CSR-1 TimeReceiver port 1 exceeds a threshold, CSR-1 clock may generate an alarm
8. and notify the operator for any corrective action (Note-3). 6
9. G.1.4.2 PTP Packet removal attack
10. In this attack, an attacker intercepts and remove some or all the PTP packets which can again lead to clock
11. synchronization errors for all downstream nodes. 10

![A diagram of a packet removal attack  Description automatically generated with low confidence]({{site.baseurl}}/assets/images/d5ebeeb22d84.png)11

12

13

14 G.1.4.2.1 Threat scenarios 15

Figure G-5: PTP packet removal attack

1. An attacker selectively intercepts and remove PTP messages causing down-stream node to select an alternate
2. clock path.
3. 1. An attacker selectively intercepts and removes PTP Announce messages.
4. 2. Attacker selectively intercepts and removes PTP Delay Request messages.
5. 3. Attacker selectively intercepts and removes PTP Sync messages.
6. 4. Attacker intercept and remove all PTP messages. 22

23 G.1.4.2.2 Threat resolution 24

1. In the figure G-5 above, the attacker intercepts the network segment between CSR-1 & HSR-1 and HSR-1 &
2. GM-1. Let's say the attacker selectively drops only the Announce messages. Now both CSR-1 TimeReceiver
3. port 1 and HSR-1 TimeReceiver port 1 experiences the Announce-message receipt time-out and CSR-1 &
4. HSR-1 will select the alternate clock HSR-2 and GM-2 respectively based on the A-BTCA (Note-2). 29
5. Consider a case where the attacker selectively drops either sync message or delay-request message or both. In
6. this case CSR-1 TimeReceiver port 1 and HSR-1 TimeReceiver port 1 experiences lack of reception of PTP
7. timing messages from upstream timeTransmitter. Both devices may then report a 'PTSF-
8. lossOfTimingMessages' alarm and generate a state decision event which triggers A-BTCA such that CSR-1
9. & HSR-1 select the alternate clock HSR-2 and GM-2 respectively (Note-4

1

1. G.1.4.3 PTP Packet Delay Manipulation attack
2. PTP requires symmetric path delay between timeTransmitter and timeReceiver to have precise synchronization
3. performance. If propagation delays of a sync message and delay request message are not equal, the
4. timeReceiver clock will experience delay asymmetry or packet delay variation and that leads to
5. synchronization error.

7

1. In this attack, an attacker delays the transmission of PTP packets purposely. As a result, all, or some of the
2. downstream clocks from the attacked node would experience time error. This attack can be mitigated with
3. passive port monitoring feature to detect the possible time error offset change and report it as alarm. 11

![A picture containing text, screenshot, line, diagram  Description automatically generated]({{site.baseurl}}/assets/images/03164a279b83.jpg)12

13

14

15 G.1.4.3.1 Threat scenarios 16

Figure G-6 - PTP packet delay manipulation attack

1. 1. Delay all Sync or Delay Req messages (E.g., between CSR-1 & HSR-1), resulting in an asymmetric
2. path delay between the PTP timeTransmitter on HSR1 and PTP timeReceiver on CSR-1.
3. 2. Delaying all packets from/to the target (i.e., between CSR1 & HSR-1). 20

21 G.1.4.3.2 Threat resolution 22

1. Enable Passive Port monitoring feature on CSR-1. Configure Port 2 on CSR-1 as Passive Monitoring Port.
2. When the CSR-1 PTP Passive port receives the Sync and Delay Response messages from the HSR-2 PTP
3. TimeTransmitter port 1, the CSR-1 can compute the time error offset based on PTP timestamps. If difference
4. of the time error offset computed by the Passive port 1 exceeds the threshold, CSR-1 clock may generate an
5. alarm. Note that this alarm is used for PTP monitoring and will not trigger the A-BTCA switchover. An
6. operator can trigger a manual switchover as needed based on the reported alarms. Additionally, the threshold
7. used for this alarm should be properly configured by the operator to avoid false alarms. (Note-3)

1 G.1.4.4 PTP Time Source Degradation attack

2 Time source degradation attacks occur when an attacker compromises the precise time source of the

![A picture containing screenshot, diagram, line, font  Description automatically generated]({{site.baseurl}}/assets/images/bb9877e18e00.jpg)3 timeTransmitter clock, i.e., T-GM. 4

5

6 Figure G-7: Time source degradation attack

![A picture containing screenshot, diagram, line, font  Description automatically generated]({{site.baseurl}}/assets/images/814d28ec2aab.jpg)7

8

9 Figure G-8: Time source degradation attack with Cs/Rb as backup

10

![A picture containing screenshot, line, diagram, font  Description automatically generated]({{site.baseurl}}/assets/images/273fee39d19f.png)11

12

13

14 G.1.4.4.1 Threat scenarios 15

Figure G-9: Time source degradation attack at O-RU

1. 1. An attacker can jam or spoof the satellite signals, causing the grandmaster clock to become an
2. incorrect reference time. In this case the jamming signal amplitude value exceeds the configured anti-
3. jamming threshold, the T-GM may raise an alarm and can go into a holdover state. This causes the
4. downstream nodes to receive degraded clock-class value as per ITU-T G.8275.1(11/2022) and
5. triggers the clock selection to select the clock from alternate path.
6. 2. An attacker can jam or spoof the satellite signals at O-RU local GNSS. 4

5 G.1.4.4.2 Threat resolution 6

1. In the absence of the GPS jam or spoof signals, say both HSR-1 & HSR-2 select GM-1 as the Time source.
2. When the satellite signal of GM-1 is compromised as shown in Fig G-7, GM-1 may raise an alarm if the
3. jamming signal amplitude exceeds the Anti-jamming threshold configured on GM-1. This can cause GM-1 to
4. go into holdover and advertise Clock Class value of 7 to HSR-1 & HSR-2, which triggers A-BTCA on HSR-
5. 1 and HSR-2 to select GM-2 as alternate Time Source (Note-5). 12
6. As shown in Fig G-8, a redundant Rubidium or Caesium clocks is also another option to ensure long term
7. stability in case the GNSS is jammed. When GM-1 satellite signal is jammed, it can use the frequency from
8. the Cs/Rb clock to maintain the phase for several days. This would give the operator enough time to respond
9. to the jamming and neutralize the jamming source. 17
10. In Fig G-9, O-RU uses local GNSS for its synchronization in normal condition. When the satellite signal of
11. local GNSS is compromised, O-RU can switch-over to the backup PTP clock from the network, driven from
12. either GM-1 or GM-2. 21

22 G.1.4.5 PTP TimeTransmitter/TimeReceiver Spoofing attack

23 In PTP TimeTransmitter Spoofing attack, an attacker impersonates the timeTransmitter clock and distribute

24 false PTP messages causing all clocks downstream to be compromised. In a TimeReceiver spoofing attack, an

25 attacker masquerades as a legitimate intermediate or a timeReceiver clock and transmits compromised delay

![A picture containing text, screenshot, line, font  Description automatically generated]({{site.baseurl}}/assets/images/36115f6a327b.png)26 request messages to the timeTransmitter. 27

28

29 Figure G-9: PTP TimeTransmitter/TimeReceiver Spoofing Attack

30

31 G.1.4.5.1 Threat scenarios 32

1. 1. An attacker can masquerade as the timeTransmitter by using its MAC/IP address, continuously
2. generate manipulated Sync packets towards the down-stream nodes.
3. 2. An attacker can masquerade as an active GM-1 and send manipulated Sync packets to HSR-1. As a
4. result, HSR-1 & HSR-2 as well as all nodes downstream will be affected.
5. 3. An attacker can continuously create spoofed delay request packets using TimeReceiver MAC/IP
6. address and send them to BC. 39

40

41

1 G.1.4.5.2 Threat resolution 2

1. When the attacker spoofs the timeTransmitter BC, say HSR-1 port 3 PTP packets, CSR-1 continues to lock to
2. the spoofed clock. However, CSR-1 can get the time error based on PTP timestamps based on the spoofed
3. packets. If the passive port monitoring is enabled on CSR-1 and if the difference of the time error of Passive
4. port and the time error of CSR-1 TimeReceiver port 1 exceeds a threshold, CSR-1 clock may generate an alarm
5. and notify the operator for subsequent action. 8
6. It is also possible that spoofed PTP sync message with a sequence number that does not match its last sync
7. message recorded by the CSR-1. In such case, CSR-1 will discard the sync messages and CSR-1 can report
8. 'PTSF-lossOfTimingMessages' alarm and generate a state decision event which triggers A-BTCA so that
9. CSR-1 select the alternate clock from HSR-2. (Note-4) 13

14 Also, if the timeReceiver CSR-1 receives a spoofed delay response message with a sequence number that does

15 not match its last delay request message, the response message will be discarded, and CSR-1 can report 'PTSF-

16 lossOfTimingMessages' alarm and generate a state decision event which triggers A-BTCA. 17

18 G.1.4.6 PTP Packet Replay attack

19

20 In PTP Packet Replay attack, the attacker continuously records PTP packets and transmits them later without

21 modification.

22

![A diagram of a packet replay attack  Description automatically generated with medium confidence]({{site.baseurl}}/assets/images/0e34a6087dd9.png)23

24

25

26 G.1.4.6.1 Threat scenarios. 27

Figure G-10: PTP packet replay attack

1. 1. An attacker can record and replay multicast Sync messages from GM as a result, all nodes downstream
2. will be compromised.
3. 2. An attacker can replay multicast Sync messages from BC (HSR-1) and replay them later to a
4. timeReceiver node (CSR-1) as the result, the timeReceiver node will be affected. 32

33 G.1.4.6.2 Threat resolution 34

1. When HSR-1 receives the replayed packet from GM-1, since the messages are replayed without modification,
2. the HSR-1 can get the time error based on PTP timestamps from the replayed packets. If the passive port
3. monitoring is enabled on HSR-1 port 2 and if the time error computed at the Passive port of HSR-1 exceeds a
4. threshold, HSR-1 clock may generate an alarm and notify the operator for the follow-up action (Note-3). 39
5. Also, if the timeReceiver of CSR-1 receives a replayed PTP event message with a sequence number that does
6. not match its last message, the replayed message will be discarded, and CSR-1 can report 'PTSF-
7. lossOfTimingMessages' alarm and generate a state decision event which triggers A-BTCA so that HSR-1 can
8. lock to GM-2. 3

4 The above PTP switchover applies to the CSR-1 as BC receiving replayed PTP packet from HSR-1. 5

1. G.1.4.7 PTP A-BTCA attack
2. In a PTP A-BTCA attack, an attacker guides other network clocks to elect it as the best timeTransmitter by
3. tampering with the A-BTCA algorithm. Here the A-BTCA attacker does not fake its identity but tampers with
4. the timeTransmitter election process by advertising superior clock attributes, and once get elected -
5. manipulates the synchronization of the timeReceiver clocks. 11

![]({{site.baseurl}}/assets/images/8f39aab80743.png)

12

13

14

15 G.1.4.7.1 Threat scenarios 16

Figure G-11: PTP A-BTCA attack

1. 1. A rogue timeTransmitter sends continuously crafted announce messages that carry the best clock
2. attributes (i.e., clockClass, clockAccuracy, offsetScaledLogVariance, priority2, local priority and
3. clockIdentity) of the network to tamper with the ABTC algorithm. As a result, all nodes downstream
4. will rely on this compromised time reference. 21

22

23 G.1.4.7.2 Threat resolution 24

1. Before the attack let's assume that there is only one GM (GM-2) in the network and both HSR1 & HSR2 are
2. locked to GM-2. Assume the clock attributes advertised by GM-2 is given below. 27
3. Dataset : (clockClass, clockAccuracy, offsetScaledLog-Variance, priority2, local priority and clockIdentity)
4. of GM-2 = (6, 33, 20061, 2, ID2)

30

1. Now let's assume a rogue timeTransmitter GM-1 got added to the network which sends crafted announce
2. message with clock attributes better than that of GM-2 as below. 33
3. Dataset: (clockClass, clockAccuracy, offsetScaledLog-Variance, priority2, local priority and clockIdentity) of
4. GM-1 = (6, 33, 20061, 1, ID1)

36

1. HSR-1 and HSR-2 now run A-BTCA and select GM-1 as the best timeTransmitter. However, the GM-1 is a
2. rogue timeTransmitter it can generate incorrect timestamps in its generated event packets. If both HSR1 and
3. HSR2 have the passive port monitoring enabled, then both HSR1 and HSR2 can generate an alarm. Operator
4. can then initiate a manual switch to GM-2 by determining which source is a better source (Note-2).

1

1. Note-1: Refer section 6.3.8 of ITU-T G.8275.1[1]. It says a compliant clock must discard on reception of
2. ingress packets when these fields are outside of the allowed range for the profile.
3. Note-2: Refer section 6.3.1 & 6.3.7 of ITU-T G.8275.1[1] for A-BTCA and Dataset comparison algorithm.
4. Note-3: Annex G in ITU-T G.8275.1 [1] describes the optional Passive Port Monitoring support.
5. Note-4: Section 6.3.9 in ITU-T G.8275.1 [1] describes the optional support for Packet Timing Signal
6. Fail (PTSF) support. If this is implemented, and when a PTSF occurs, the clock may set the PTP
7. portDS.SF to TRUE and generate a state decision event, which would trigger the alternate BTCA.
8. Note-5: Refer Table 3 of ITU-T G.8275.1 [1] for applicable clockClass values. 10

# Annex H: End-to-end (e2e) Sync Monitoring using the

1. Centralized Monitoring System

## H.1 Introduction

1. The precision of a frequency/phase and time recovered at the end of the synchronization chain depends on any
2. single node or combination of multiple nodes in the sync network. The sum of the timing errors introduced at
3. all nodes along the synchronization path needs to be within the required timing budget for a given application.
4. If there is an issue with nodes synchronization in a sync network chain, it is very complex to identify which
5. node had introduced the issue. 9
6. End-to-end Sync monitoring feature can be used to identify synchronization issues in the network, correlation
7. of timing events and much more. It can be used to monitor the health of the nodes in synchronization network
8. and assess the timing performance of the node as well as complete synchronization network chain. 13
9. End-to-end Sync monitoring feature is exercised in the Centralized Monitoring System (CMS). Every node in
10. the network chain will be monitored for the synchronization events and their impact on the node as well as on
11. the network.

17

![A diagram of a computer system  Description automatically generated]({{site.baseurl}}/assets/images/5053fc6e8337.jpg)18

19

20

1. **Figure H-1: End-to-end Sync Monitoring Topology**

## H.2 Various elements of e2e sync monitoring

### H.2.1 Nodes

* 1. An element in the network chain referred as a Node. Node can act as a PTP boundary clock, grandmaster clock
  2. and/or end-time-receiver clock (shortly called as sync-nodes) in the synchronization chain. A Node can also
  3. extract clock information (Physical Layer Frequency) from physical interface. 6

1. Nodes are responsible for either generating, consuming or propagating frequency and time information over
2. the synchronization network. 9

### H.2.2 The Centralized Monitoring System (CMS)

1. This is a monitoring service running on a server or similar platform in a cloud or on-premise, to receive timing
2. telemetry data from the nodes in the synchronization network chain. It is critical for the CMS to get timing
3. telemetry data from all nodes in the synchronization Network. 14
4. The CMS shall analyse the telemetry data, do monitoring and reporting the health of the synchronization
5. network.

17

## H.3 CMS Implementation

1. Each Node in synchronization chain exports synchronization protocol (PTP) and state machine attributes. Most
2. of these attributes are referenced from IEEE1588 2019 [42] and ITU-T G.781 [19], G.7721.1 [43] standards.
3. Some of the attributes are newly defined for End-to-end Sync Monitoring feature to support monitoring and
4. reporting requirements. The ITU-T PTP profiles (G.8275.1 [1] and G.8275.2 [3]) include the Performance
5. Monitoring option defined in G.8275 [41] Annex F that is based on IEEE1588-2019 Annex J [42]. 24
6. Yang data model-based telemetry mechanism shall be used to receive synchronization attributes from the
7. nodes.

27

28 The CMS and nodes can use gNMI or NETCONF for streaming the data. 29

1. Each node in the synchronization chain has a secure telemetry session with the CMS. This session can be
2. initiated either by a node or the CMS based on the management model. If a session is terminated, the CMS
3. shall report and log accordingly. Session can be re-established as per node accessibility for secure session as
4. per the transport protocol used. 34
5. The telemetry interface shall use push subscription model to deliver data asynchronously. A request to "send
6. data" only once by the CMS to stream periodic updates by the nodes (Periodic subscriptions). 37
7. Periodic streaming is less useful for time-critical events, in such instances, the CMS shall be configured for
8. "On Change/Notification" to receive streaming information whenever operational state changes (On-Change
9. Subscriptions).

41

1. The CMS shall process these synchronization attributes and state change notifications from all the nodes in the
2. synchronization network chain and perform the static analysis as specified in section H.3.2. The protocol and
3. state attributes/data sets are shown in Table H.4-1, Table H.4-2 and Table H.4-3. 45
4. The computation logic shall report various events as described in section H.3.2. Event reporting can be
5. visualized on UI interface and it is out of scope of this ORAN specification. The CMS may also keep history
6. of attributes and various events reported by the nodes.

1

2 The Computation Logics at the CMS can be categorized as:

3

##### Static Analysis:

1. Static analysis is a computational model exercised by the CMS to gather, analyze, and report per node basis.
2. In this model the entire topology is not considered for detection, correlation and reporting. 7
3. This static analysis model would focus on reporting of synchronization operational, functional and protocol
4. states per node basis information/failures/issues using each node reported telemetry attributes and does not
5. address dynamic changes of the synchronization network (e.g, reconfigurations). 11

##### Dynamic Analysis:

1. Dynamic analysis is a computational model in which the entire synchronization network topology considered
2. for detection, correlation and reporting. 15
3. As part of Dynamic analysis, the correlation and analysis of attributes from various nodes in the
4. synchronization chain used to determine the overall synchronization network behavior. 18
5. Note-1: The End-to-end sync monitoring framework and datasets described in this specification focuses only
6. G.8275.1 profile. Other ITU-T profiles are for future study. 21

### H.3.1 Datasets reference

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| 23 | ? | This ORAN specification focuses on the static analysis model for this release. |
| 24 | ? | The datasets required for the static analysis model are documented in Table Table H.4-2 & Table H.4- |
| 25 | 3. |  |
| 26 | ? | For a node to participate in End-to-end sync Monitoring feature, it must support telemetry attributes |

</div>

1. listed in Table Table H.4-2 &Table H.4-3.
2. ? The YANG data model for the various datasets will be defined in the future release of this ORAN
3. specification.

30

### H.3.2 Static Analysis

1. Req-1: Node Role reporting
2. ? Node Role specifies about the node type. A node can be a T-BC, T-TC, T-GM, T-TSC, O-DU
3. TimeTransmitter/BC/TSC & O-RU TSC.
4. ? This reporting gives an insight to the operator about where the sync chain is starting (if the node is T-
5. GM), where it ends (if the node is T-TSC or O-RU) or a transit node in the chain (T-BC).
6. ? defaultDS.ptpTelecomProfile.deviceType and
7. defaultDS.oranE2eSyncMonitoring.extendedDeviceType datasets shall be used to identify the node
8. role.

40

1. Req-2: Node Class reporting
2. ? This provides Node's PTP Class of compliance information as per ITU-T and O-RAN standard clock

43 specification (G.8273.2 [2], G.8273.3 [4], G.8273.4 [39], G.8273.1, O-RAN.WG4.CUS [33], etc), and

* 1. with this attribute the CMS figure out sync node's expected timing performance capability as per
  2. maxTE, dTE and cTE metrics.
  3. ? defaultDS.ptpTelecomProfile.nodeClass attribute shall be used for this reporting. 4

5

1. Req-3: Node Clock mode (synchronization state of the node) reporting 7
2. ? The node synchronization state should be monitored (Freerun, Locked, Acquiring, Holdover-within-
3. specification and Holdover-out-of-specification). This would indicate whether a node is recovering the
4. clock/time information from the upstream timeTransmitter node or not.
5. ? The clockMode dataset defined in ITU-T G.8275 [41] appendix VIII provides information of node
6. synchronization state.
7. ? Monitoring logic in CMS shall report any change in Node's synchronization state.
8. ? Below attributes will be monitored to fulfil requirement under this section:
9. o currentDS.ptpTelecomProfile.clockMode

16

17 Req-4: Upstream TimeTransmitter or GM change reporting 18

1. ? Monitoring system shall report if there is a change in the upstream TimeTransmitter or Grandmaster
2. detected.
3. ? Report any parent attributes that is changed in parent-ds data set attributes.
4. ? Any change in upstream TimeTransmitter's attributes may impact downstream node's synchronization
5. state.
6. ? Below attributes will be monitored for any change by CMS to report this:
7. o parentDS.parentPortIdentity.clockIdentity
8. o parentDS.grandmasterIdentity
9. o parentDS.grandmasterClockQuality
10. o parentDS.grandmasterPriority2

29

30 Req-5: Time offset and delay reporting 31

1. ? The CMS shall compute time offset and path delays (using T1, T2, T3 & T4 time-stamps) based on the
2. received ptpTimestampRecordDS per node basis.
3. ? The CMS shall report path delay variation of the PTP packets.
4. ? The CMS shall identify and report the nodes/links contributing the change in path delays, clock drift in
5. relation to upstream nodes.
6. Note-2:The node shall either send all ptp timestamp data or no timestamp data (refer
7. ptpTimestampRecordDS in H.4.3.1 section)

39

40 Req-6: All available timeTransmitters reporting 41

1. ? Report all available upstream/foreign timeTransmitters seen by a node using allTimeTransmitterDS
2. defined as part of this specification in section H.4.3.2.
3. ? Order them from "the selected timeTransmitter" to the "least preferable timeTransmitter" by executing
4. the A-BTCA algorithm iteratively with allTimeTransmitterDS.
5. ? Detect and report if same timeTransmitter seen in more than one interface.

47

1. Req-7: Clock traceability information change detection and reporting
2. ? Detect and report all clock traceability information changes. This includes time-traceability, frequency
3. traceability attributes.
   1. ? Below attributes will be monitored to fulfil requirement under this section:
   2. o timePropertiesDS.timeTraceable
   3. o timePropertiesDS.frequencyTraceable
   4. o timePropertiesDS.timeSource

5

6

1. Req-8: Clock quality reporting
2. ? Detect and report the clock-class change irrespective of A-BTCA switchover triggered or not.
3. ? Report any difference in Tx and Rx clock-class value.
4. ? Report any change in Clock Accuracy information.
5. ? Below attributes will be monitored to fulfil this requirement:
6. o defaultDS.clockQuality

13

1. Req-9: Report A-BTCA switchover flapping
2. ? Detect and report if a node is keep flip-flapping between two upstream (timeTransmitter) nodes and
3. any associated reason for the flip-flap.
4. ? Report how often the node is going back and forth with the same set of upstream timeTransmitters.
5. ? One model to detect the flapping is to identify, if any given node switches back and forth more than
6. twice between the same two upstream timeTransmitters or GMs within 30 minutes window.
7. ? Below attributes will be monitored to implement this requirement:
8. o parentDS.grandmasterIdentity
9. o parentDS parentPortIdentity.clockIdentity 23

24

1. Req-10: Report the selected TimeTransmitter attributes
2. ? Report both parent and GM attributes of the selected timeTransmitter.
3. ? Below attributes will be monitored in this requirement:
4. o parentDS.parentPortIdentity
5. o parentDS.grandmasterIdentity
6. o parentDS.grandmasterClockQuality
7. o parentDS.grandmasterPriority1
8. o parentDS.grandmasterPriority2
9. o timePropertiesDS

34

### H.3.3 Dynamic Analysis

1. The dynamic analysis model is not covered in this specification. It is for further study.

## H.4 Telemetry Datasets

### H.4.1 High Level Datasets

1. The Table H.4-1 in this section describes list of high level data sets needed to implement the requirements
2. listed in the section H.3.2. 5

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Data set** | **Description** |
| **clockIdentity** | 8-byte PTP clock identity that uniquely identifies a particular node. |
| **clockMode** | State describing as Holdover-within-specification, Holdover-out-of- specification, Acquiring, Free run and locked. |
| **Tx clockClass** | PTP clock class transmitted to downstream timeReceivers. |
| **Rx clockClass** | PTP clock class received from upstream timeTransmitter. |
| **grandmasterIdentity**  **& data set** | Clock identity of the Grandmaster clock and its data set. |
| **Parent clockIdentity & Data set** | Clock identity of upstream timeTransmitter and its data set. |
| **frequencyTraceable** | True or False based Sync-E present or not. |
| **timeTraceable** | True or False based on PTP time source traceable or not. |
| **nodeClass** | CLASS-A, B, C, D, PRTC-A, PRTC-B, ePRTC-A, ePRTC-B, O- RU- REGULAR, O-RU-ENHANCED, O-DU-CLASS-A, O-DU-  CLASS-B, etc. |
| **Source portIdentity and portState** | For all configured ports/interfaces. |
| **All TimeTransmitter info** | All PTP timeTransmitters info including interface on which it is reachable |
| **deviceType** | T-GM, T-BC, T-TC, T-TSC, T-BC-A, T-BC-P, T-TSC-A. |
| **extendedDeviceType** | O-DU-TimeTransmitter, O-DU-BC, O-DU-TSC, O-RU-TSC |

</div>

#### 6 Table H.4-1: High Level Telemetry Datasets

7

1. The data set described in Table H.4-1 is the critical but not limited to protocol and state information which
2. will be shared by a PTP node to the CMS. 10
3. Note-3: O-DU and O-RU DeviceTypes are not defined in ITU-T specification, therefore an extended device
4. type is defined to identify the ORAN devices/clocks. The O-DU-BC type shall be used for an O-DU supporting
5. LLS-C1/C2 configuration models, while O-DU-TSC type shall be used for LLS-C3 configuration model.

### H.4.2 Detailed attributes/datasets

1. The Table H.4-2 defines the telemetry attributes which are required by the telemetry client (CMS) to fetch the
2. PTP monitoring information from a node. The End-to-end Sync Monitoring described in this specification
3. refers to a subset of attributes from IEEE1588 2019 [42] and ITU\_T [43], [41] standards. The "Comments"
4. column of Table specifies the attributes associated with the corresponding standard's reference. 19
5. There are some additional dataset attributes listed in Table H.4-3 that are defined as part of this specification
6. and needed to implement End-to-end sync monitoring features defined in section H.3. The "Comments"
7. column of the table specifies reference of the dataset member if referred from an external standard, or it is
8. newly defined under this ORAN specification.

1

2

3

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| Attributes | Definition | Data type | Comments |
| defaultDS data set members | | | Defined in IEEE1588 2019 spec:  8.2.1 defaultDS data set member specifications [42] |
| instanceType | Specifies the type of PTP Instance.  This instanceType is similar in purpose to the clockType of PTP management messages. | ENUM [ OC,  BC  p2pTC e2eTC,  ] | Defined in 1588 2019 spec:  Section 8.2.1.5.5 &  Table 8 instanceType enumeration[42] |
| currentTime | This member shall return the current value of the PTP Instance Time. | Timestamp | Defined in IEEE1588-2019 spec: Section 8.2.1.5.1 & Section 3.1.54 [42] In most cases, the actual precision is on the order of milliseconds or worse depending on the source of the information used in populating the data field and on the characteristics of the  network. |
| domainNumber | PTP Domain. | UInteger8 (0-  255) | Defined in IEEE1588-2019 spec: Section 8.2.1.4.3 & Section 7.1 [42] |
| clockIdentity | Each PTP Instance shall be associated with a single clockIdentity value. This value shall be unique within a PTP  Network. | ClockIdentity (OCTET [8]) | Defined in IEEE1588-2019 spec: Section 7.6.2.2 & Section 8.2.1.2.2 [42] |
| clockQuality.clockClass | The ClockQuality represents the quality of a clock. | Uinteger8 | Defined in IEEE1588-2019 spec: Section 8.2.1.3.1.2, Section 7.6.2.5 & Table 4 ? clockClass specifications  [42] |
| clockQuality.clockAccuracy | Enumeration8 | Defined in IEEE1588-2019 spec: Section 8.2.1.3.1.3, Section 7.6..2.6 & Table 5 ? clockAccuracy enumeration  [42] |
| clockQuality.offsetScaledLo gVariance | uint16 | Defined in IEEE1588-2019 spec:  Section 8.2.1.3.1.4, Section 7.6.2.7  & Section 7.6.3.5. [42] |
| priority1 | The attribute priority1 is used in the execution of the  best timeTransmitter clock algorithm. | Uinteger8 0 to 255 | Defined in IEEE1588-2019 spec: Section 8.2.1.4.1 & Section 7.6.2.3 [42] |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| priority2 | The attribute priority2 is used in the execution of the best timeTransmitter  clock algorithm. | Uinteger8 0 to 255 | Defined in IEEE1588-2019 spec: Section 8.2.1.4.2 & Section 7.6.2.4 [42] |
| maxStepsRemoved | If the value of stepsRemoved of an Announce message is greater than or equal to the value of defaultDS.maxSteps Removed, the Announce message is not considered in the  operation of the A- BTCA. | Uinteger8 | Defined in IEEE1588-2019 spec: Section 8.2.1.5.4 [42] |
| ptpTelecomProfile | | | PTP attributes for the PTP instance defined in ITU-T G.7721.1 [43], ITU-T  G.8275.1 [1] & ITU-T G.8275.2 [3]. |
| localPriority |  | uint8 | Defined in ITU-T 7721.1 spec [43] |
| deviceType | The clock type of a PTP Telecom Profile instance. | ENUM {  t-gm,  t-tsc,  t-bc,  t-tsc-a,  t-tsc-p,  t-bc-a,  t-bc-p,  } | Refer Table-1 in ITU-T G.8275.1 [1]& G.8275.2 [3]  O-DU & O-RU types shall be added as part of oran e2e sync monitoring Yang data model. |
| **nodeClass** | The nodeClass dataset represents the clock node's time error performance compliance | ENUM{ PRTC-A, PRTC-B, ePRTC-A, cnPRTC,  Class-A, Class-B, Class-C, Class-D,  O-RU- Regular, O-RU- Enhanced, O-DU-Class-A, O-DU-Class-B  } | Refer Table-4 in ITU-T G.8275.1 [1]& Table-6 in ITU-T G.8275.2 [3]  ITU-T Recommendation G.8273.2/Y.1368.2 [2]  ITU-T Recommendation G.8272.1/Y.1367.1 [6]  O-RAN Control, User and Synchronization Plane Specification [33]  O-RU- Regular (0x61), O-RU-  Enhanced(0x62),  O-DU-Class-A(0x63),, O-DU-Class-  B(0x64), are using reserved range 0x61 to 0xFF for SDOs. |
| clockMode | clockMode provides synchronization state of the PTP clock. | ENUM{  Free-Run, Acquiring, Locked, Holdover-  within- specification, | Refer Table-3 in ITU-T G.8275.1 [1]& Table-5 in ITU-T G.8275.2 [3]  Refer G.8275 Appendix VIII. [41] |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
|  |  | Holdover-out- of-specification,  } |  |
| currentDS data set members | | | Defined in IEEE1588 2019 spec:  8.2.2 currentDS data set member specifications [42] |
| offsetFromTimeTransmitter | The current value of the time difference between a TimeTransmitter PTP Instance and a TimeReceiver PTP Instance as computed by the TimeReceiver  PTP Instance. | TimeInterval | Defined in IEEE1588-2019 spec: currentDS.offsetFromMaster, Section  8.2.2.3 [42] |
| meanDelay | mean propagation time. | TimeInterval | Defined in IEEE1588-2019 spec: Section 8.2.2.4. [42]  Applicable when  portDS.delayMechanism (table 21 of Section 8.2.15.4.4) is implemented. |
| parentDS data set members | | | Defined in IEEE1588 2019 spec:  8.2.3 parentDS data set member specifications [42] |
| parentPortIdentity.clockIden tity | clockIdentity of the PTP Port on the  TimeTransmitter PTP Instance. | ClockIdentity | Defined in IEEE1588-2019 spec: Section 8.2.3.2 & Section 5.3.5 [42] |
| grandmasterIdentity | clockIdentity of the PTP Port on the GM  PTP Instance. | ClockIdentity | Defined in IEEE1588-2019 spec as Section 8.2.3.6 & 7.6.2.2 [42] |
| grandmasterClockQuality. clockClass  clockAccuracy offsetScaledlLogVariance | clockQuality attribute of the Grandmaster PTP Instance. | ClockQuality | Defined in IEEE1588-2019 spec: Section 8.2.3.7  Table 4 ? clockClass specifications [42] |
| grandmasterPriority1 | priority1 attribute of the GM PTP  Instance. | Uinteger8 | Defined in IEEE1588-2019 spec:  Section 8.2.3.8 [42] |
| grandmasterPriority2 | priority2 attribute of the GM PTP Instance. | Uinteger8 | Defined in IEEE1588-2019 spec:  Section 8.2.3.9 [42] |
| parentStats | If True, The PTP Instance has computed statistically valid estimates of the parentDS.observed ParentOffsetScaledL ogVariance and the parentDS.observed ParentClockPhaseCh  angeRate members. | Boolean | Defined in IEEE1588-2019 spec: Section 8.2.3.3 [42] |
| observedParentOffsetScaled LogVariance | Estimate of the variance of the phase | Uinteger16 | Defined in IEEE1588-2019 spec: Section 8.2.3.4 [42] |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
|  | offset of the Local PTP Clock of the Parent PTP Instance as measured with respect to the Local PTP Clock in the TimeReceiver PTP  Instance. |  |  |
| observedParentClockPhase- ChangeRate | Estimate of the phase change rate of the Local PTP Clock of the Parent PTP Instance as measured by the TimeReceiver  PTP Instance using its Local PTP Clock. | Integer32 | Defined in IEEE1588-2019 spec: Section 8.2.3.5 [42] |
| timePropertiesDS data set members | | | Defined in IEEE1588 2019 spec:  8.2.4 timePropertiesDS data set member specifications [42] |
| timeTraceable | To indicate  that timescale is traceable to a primary reference. Also indicates the node is in Phased locked  state. | Boolean | Defined in IEEE1588-2019 spec: Section 8.2.4.6 [42] |
| frequencyTraceable | To indicate that frequency determining the timescale is traceable to a primary reference; Also indicates the node is frequency locked  state. | Boolean | Defined in IEEE1588-2019 spec:  Section 8.2.4.7 [42] |
| timeSource | This attribute indicates the immediate source of time used by the Grandmaster PTP Instance. | ENUM IEEE1588-2019  Table 6 ?  timeSource | Defined in IEEE1588-2019 spec: Section 8.2.4.9 & Table 6 ? timeSource [42] |
| portDS data set members | | | Defined in IEEE1588 2019 spec:  8.2.15 portDS data set member specifications [42] |
| +-- ports  +-- port [] | List of portDS. |  | Records of portDS datasets defined in IEEE1588-2019 spec. [42]  Contains all PTP Ports in the PTP instance. |
| portIdentity.clockIdentity portIdentity.portNumber | portIdentity attribute of the local PTP Port | PortIdentity  (ClockIdentity, portNumber) | Defined in IEEE1588-2019 spec: Section 8.2.15.2.1 [42] |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| delayMechanism | The path delay measuring mechanism used by the PTP Port. | ENUM  (e2e, p2p, NO\_MECHANI SM, COMMON\_P2P  , SPECIAL) | Defined in IEEE1588-2019 spec: Section 8.2.15.4.4 & Table 21 ? Delay mechanism enumeration [42] |
| portState | current state of the protocol engine associated with the PTP port. | ENUM (INITIALIZING  , FAULTY, DISABLED, LISTENING, PRE\_TIME\_TR ANSMITTER, TIME\_TRANS MITTER, PASSIVE, UNCALIBRAT ED,  TIME\_RECEIV ER) | Defined in IEEE1588-2019 spec: Section 8.2.15.3.1 & Table 20 ? PTP state enumeration [42] |
| delayAsymmetry | Delay asymmetry applicable to the PTP Port. | TimeInterval | Defined in IEEE1588-2019 spec: Section 8.3.15.4.8 [42] |
| ptpTelecomProfile | | | ITU-T G.7721.1 [43], ITU-T G.8275.1  [1] & ITU-T G.8275.2 [3]. |
| localPriority |  | uint8 | Defined in ITU-T 7721.1 spec [43] |
| performanceMonitoringDS | | | PTP Telecom profiles enhanced the IEEE1588 Annex J Performance [42] Monitoring option as per ITU-T G.8275 Annex F [41]  The data provided by a node compliant with G.8275.1 [1] or G.8275.2 [3] is  expected to be compliant with G.8275  [41] Annex F rather than IEEE1588- 2019 Annex J [42]. |
| performanceMonitoringDS | Performance monitoring. |  |

</div>

#### 1 Table H.4-2: Detailed attributes/datasets

2

1. Note-4: For the newly defined dataset attributes (Table H.4-3), a separate End-to-end sync monitoring
2. attributes hierarchy is created.
3. This is done considering following points:
4. ? It provides a cleaner approach to implement End-to-end Sync Monitoring requirements.
5. ? Member under End-to-end sync monitoring dataset hierarchy would not collide with newly defined
6. attributes in other standard organization.
7. ? In future, if standard defined dataset member overlap with End-to-end sync monitoring dataset
8. member, attribute under End-to-end sync monitoring dataset hierarchy can be deprecated and
9. monitoring logic can use standard defined dataset member. This can be done without any complexity
10. involved.

13

14

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| Attributes | Definition | Data type | Comments |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| defaultDS.oranE2eSyncMonitoringDS | | | Added attributes for default data set under oranE2eSyncMonitoringDS node. |
| isSupported  (static) | If True, End to End monitoring feature is supported on the Sync Node. | Boolean |  |
| supportedVersion  (static) | Version of End-to- end sync monitoring feature. | Uinteger8 | This release of specification supported version is 1. The node must explicitly set this value when exporting the e2e-  sync monitoring attributes to the CMS |
| extendedDeviceType  (configurable) | Extended device type to cover ORAN specific clocks/devices | ENUM {  Not-Applicable, O-DU-  TimeTransmitter  ,  O-DU-BC,  O-DU-TSC, O-RU  } | ITU-T device types do not cover ORAN clock types. These extended device types shall be used to identify ORAN devices/clocks.  Non ORAN devices shall set this attribute as NOT-APPLICABLE.  CMS shall use this extendedDeviceType if it is set to other than NOT- APPLICABLE and ignore the ITU-T  defined DeviceType. |
| currentDS.oranE2eSyncMonitoringDS | | | Added attributes for current data set under oranE2eSyncMonitoringDS node. |
| timeSinceCurrentClockState  (dynamic) | Time elapsed in current clock-state | Uinteger32. | Time elapsed in current clock-state.  Identify clock stability (In seconds). |
| oranE2eSyncMonitoringDS | Below nodes are under  oranE2eSyncMonitor ingDS hierarchy. |  |  |
| ptpTimestampRecordsDS | List of PTP timestamp data set. (T1, T2, T3, T4 time  matrix.) |  | Record for PTP packets matrix. |
| updateFrequency  (configurable) | "PTP timestamp record" collection  frequency in secs. | Uinteger8 | In Secs. Recommended frequency to update is 10 seconds. |
| numberOfRecords  (configurable) | If non-zero, PTP  timestamp valid records are available. | Uinteger16 | Node shall set this field as zero if it does  not support streaming of the timestamps (T1, T2, T3 & T4). |
| timestampInfo | PTP timestamp data set  (T1, T2, T3, T4 time  matrix) | list | Monitoring rate: One sample/sec |
| timestampInfo.index  (dynamic) | Index/key for the timestamp-info list. | Uinteger16 | Newly defined attribute for list indexing. |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| timestampInfo.timestampRe cord | PTP Timestamp data record.  Sync/delay-request message  information. | Container |  |
| timestampRecord | | | Attributes in "ptpTimestampRecordsDS.timestampIn fo.timestampRecord" hirarchy |
| recordTime  (dynamic) | Record time - System time at which msg was recorded | Uinteger64 |  |
| t1sec  (dynamic) | t1 and t2 represent the Tx/Origin timestamp and Receiver Timestamp respectively for a given message type in a particular direction (sync or delay request message).  For sync message: timestamp-record t1 & timestamp-record t2 denote t1 and t2 timestamps as defined in PTP 1588v2.  For delay  request message: timestamp-record t1 & timestamp-record t2 denote t3 and t4 timestamps as defined in PTP 1588v2. | Uinteger64 | The seconds-field member is the integer portion of the timestamp in units of seconds. Since the IEEE 1588 type is Uinteger48, only 48 bits are represented  in YANG. |
| t1nsec  (dynamic) | Uinteger32 | The nanoseconds-field member is the fractional portion of the timestamp in  units of nanoseconds. |
| t2sec  (dynamic) | Uinteger64 | The seconds-field member is the integer portion of the timestamp in units of seconds. Since the IEEE 1588 type is Uinteger48, only 48 bits are represented  in YANG |
| t2nsec  (dynamic) | Uinteger32 | The nanoseconds-field member is the fractional portion of the timestamp in units of nanoseconds. |
| sequenceId  (dynamic) | Sequence-id: Sequence number  used in the packet (Sync/Delay-req). | Uinteger16 | Refer IEEE1588-2019: Section: 7.3.7 PTP message sequenceId [42]. |
| cf  (dynamic) | Cf: Correction field value of the  Message. | Integer64 |  |
| pathDelay  (dynamic) | Path-delay: Computed PTP Packet Path delay (TimeTransmitter-to- TimeReceiver and  TimeReceiver-to- | Integer64 |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
|  | TimeTransmitter based on the message type) |  |  |
| messageType  (dynamic) | Message-type: Sync or delay- request/response. | ~~Uinteger8~~ ENUM  { SYNC,  DELAY-REQ  } | Refer IEEE1588-2019 spec.  Table-36 - Values of message Type field [42].  Only Sync and DelayReq messageType are applicable here. |
| allDS | | | allTimeTransmitterDS data set members for End-to-end sync monitoring. |
| allTimeTransmitterDS.time Transmitter | Container for all remote timeTransmitters' records collected from different timeTransmitter via announce  message for A-BTCA selection. | list | Foreign master as defined in IEEE1588- 2019 spec. [42] |
| timeTransmitter |  |  | Attributes in "allTimeTransmitterDS.timeTransmitter " hirarchy |
| parentDS.parentPortIdentity  .clockIdentity  .portNumber  (dynamic) | timeTransmitter Port Identity. | portIdentity | parentDS is defined in IEEE1588-2019 spec. [42] |
| parentDS.grandmasterIdenti ty  (dynamic) | Clock Identity of the GM. | clockIdentity | parentDS is defined in IEEE1588-2019 spec. [42] |
| parentDS.grandmasterPriori ty1  (dynamic) | Priority1of the GM. | Uinteger8 | parentDS is defined in IEEE1588-2019 spec. [42] |
| parentDS.grandmasterPriori ty2  (dynamic) | Priority2 of the GM. | Uinteger8 | parentDS is defined in IEEE1588-2019 spec. [42] |
| parentDS.synchronizationU ncertain  (dynamic) | synchronization- uncertain field of the timeTrasmitter. | Boolean | parentDS is defined in IEEE1588-2019 spec. [42] |
| parentDS.grandmasterClock Quality  .clockClass  .clockAccuracy  .offsetScaledLogVariance  (dynamic) | Clock Quality attribute of the Grandmaster. | clockQuality | parentDS is defined in IEEE1588-2019 spec. Table 4 ? clockClass specifications [42] |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| timePropertiesDS.currentUt cOffset  (dynamic) | UTC offset. | Uinteger16 | timePropertiesDS is defined in IEEE1588-2019 spec. [42] |
| timePropertiesDS.currentUt cOffsetValid  (dynamic) | The value shall be TRUE if the value of the current-utc-offset and the values of the leap59 and leap61 are known to be correct otherwise it shall be  FALSE. | Boolean | timePropertiesDS is defined in IEEE1588-2019 spec. [42] |
| timePropertiesDS.leap59  (dynamic) | A TRUE value for timePropertiesDS.lea p59 shall indicate that the last minute of the current UTC day contains 59 seconds. | Boolean | timePropertiesDS is defined in IEEE1588-2019 spec. [42] |
| timePropertiesDS.leap61  (dynamic) | A TRUE value for timePropertiesDS.lea p61 shall indicate that the last minute of the current UTC day  contains 61 seconds. | Boolean | timePropertiesDS is defined in IEEE1588-2019 spec. [42] |
| timePropertiesDS.timeTrace able  (dynamic) | To indicate  that timescale is traceable to a primary reference | Boolean | timePropertiesDS is defined in IEEE1588-2019 spec. [42] |
| timePropertiesDS.frequency Traceable  (dynamic) | To indicate that frequency determining the timescale is traceable to a primary  reference; | Boolean | timePropertiesDS is defined in IEEE1588-2019 spec. [42] |
| timePropertiesDS.ptpTimes cale  (dynamic) | True, if the timescale of the Grandmaster PTP Instance is PTP  and FALSE otherwise. | Boolean | timePropertiesDS is defined in IEEE1588-2019 spec. [42] |
| timePropertiesDS.timeSourc e  (dynamic) | This attribute indicates the immediate source of time used by the upstream timeTransmitter. | ENUM IEEE1588-2019  Table 6 ?  timeSource [42] | timePropertiesDS is defined in IEEE1588-2019 spec. [42] |
| portDS.portIdentity  .clockIdentity  .portNumber  (static) | PortIdentity attribute of the local PTP Port on which upstream timeTransmitter has seen. | portIdentity (clockIdentity, portNumber) | portDS and portIdentity are defined in IEEE1588-2019 spec. [42] |

</div>

#### 1 Table H.4-3: ORAN defined E2e sync monitoring attributes/datasets

2

3

1. H.4.2.1 Datasets detailed description
2. H.4.2.1.1 ptpTimestampRecordDS
3. ptpTimestampRecordDS contains information of the raw PTP timestamps used in the node for calculating the
4. offset from the TimeTransmitter. End-to-end sync monitoring, the raw timestamps data can provide a crucial
5. insight into the performance and health of the synchronization network. 9
6. CMS can use the four PTP timestamps t1, t2, t3 & t4 derived from the event messages to derive the Packet
7. Delay Variation (PDV), upstream and downstream delays between the timeReceiver node and the
8. timeTransmitter node in the network. CMS may use the tools to plot a graph using the timestamp information
9. exported from the node and see how the PDV, forward and reverse delays are varying over time. 14
10. For example, in a synchronization chain of nodes, if a particular node is reporting a high correction field value,
11. it could indicate network congestion in that particular node or the node either lost the synchronization or
12. changed its time base. 18
13. Each record consists of the following members:
14. ? updateFrequency
15. ? numberOfRecords
16. ? timestampInfo (List)
17. ? index: index/key to the list.
18. ? timestampRecord :
19. o recordTime
20. o messageType
21. o t1Sec
22. o t1Nsec
23. o t2Sec
24. o t2Nsec
25. o sequenceId
26. o corrField
27. o pathDelay

34

##### ? updateFrequency

1. Sampling interval, in seconds, at which the timestamps are recorded. A low sampling interval can overload
2. the system, so discretion is advised in choosing this periodicity. Recommended value is 10 seconds which
3. means exporting the timestampRecords every 10 seconds. 39
4. For example in a ITU-T G.8275.1 [1] profile based deployment, there are 16 Sync and 16 Del-Req messages
5. per second.

42

##### ? numberOfRecords

1. Number of valid timestamp records exported at this interval. A value of zero means the node is not exporting
2. timestamp record information. A non-zero value represents the number of timestamp records exported in that
3. particular interval.

47

48 ? **timestampInfo**

49 This is the list of timestamp records. 50

51 ? **index**

1 This is the index or key to the list of timestamp records. 2

##### ? timestampRecord

1. Each timestamp record consists of the following members:

5

##### recordTime

1. System time at which the measurement was recorded. This is essential since CMS needs this data to corelate
2. the timestamp info across the nodes in a synchronization chain. 9

##### messageType

1. Used to distinguish between the Sync or Del-Req event messages. 12

##### t1Sec

1. Seconds portion of the PTP origin timestamp of the Sync/Del-Req messages. 15

##### t1Nsec

1. Nanoseconds portion of the PTP origin timestamp for Sync/Del-Req messages. 18

##### t2Sec

1. Seconds portion of the PTP receive timestamp for Sync/Del-Req messages. 21

##### t2Nsec

1. Nanoseconds portion of the PTP receive timestamp for Sync/Del-Req messages. 24

##### sequenceId

1. Sequence Id of the corresponding Sync/Del-Req message for which the timestamp is recorded. 27

##### corrField

1. Correction Field of the corresponding Sync/Del-Req message for which the timestamp is recorded. 30

31 **pathDelay**

32

1. This is the TimeTransmitter to TimeReceiver delay in case of Sync message and TimeReceiver to
2. TimeTrasmitter delay in case of Del-Req message. It is calculated as :
3. (ReceiveTimestamp - OriginTimestamp - corrField) 36

37

38

39

40

41

1. H.4.2.1.2: allTimeTransmitterDS
2. allTimeTransmitterDS contains all the remote TimeTransmitter's information as seen by a node. This includes
3. the selected timeTransmitter information as well. This dataset is primarily derived from the received announce
4. message from various timeTransmitters. 46
5. Additionally the localPriority attribute needs to be referenced from the portDS dataset using the PTP port-
6. number. A localPriority is configured to a PTP port of the clock and it is used in A-BTCA. 49
7. Each entry of the allTimeTransmitterDS contains below members:
8. ? parentDS as per IEEE 1588-2019 [42].
9. ? timePropertiesDS as per IEEE1588-2019 [42].
10. ? portDS.portIdentity as per IEEE 1588-2019 [42].

1

2

1. H.4.2.1.3: isSupported
2. isSupported attribute specifies whether the End-to-end sync monitoring feature is supported on a given node.
3. It's a static boolean attribute where a True value represents the node supports End-to-end sync monitoring
4. feature.

7

1. Once the connection between a sync node and CMS is authenticated, the CMS queries for this attribute and
2. considers the node for End-to-end sync monitoring only if a value of True is received. In case of False, CMS
3. will not process the End-to-end sync monitoring attributes from that node. 11

12

1. H.4.2.1.4: supportedVersion
2. This supportedVersion is to track the change in the End-to-end sync monitoring Dataset/Yang attributes as the
3. synchronization monitoring requirements continue to evolve. 16
4. Due to enhancements in PTP protocols/profiles, new dataset members might be added in End-to-end sync
5. monitoring hierarchy. Similarly, when new requirements being added for the static and dynamic analysis
6. models, this version number will be incremented accordingly. 20

21 The supportedVersion starts from 1. Refer the section H.4.3 Yang Data M for additional details. 22

23

1. H.4.2.1.5: extendedDeviceType
2. The defaultDS.deviceType defined in the ITU-T 8275.1 [1] and ITU-T 8275.2 [3], covers only ITU-T specific
3. PTP clock device types. It does not cover ORAN defined clocks. 27
4. The extendedDeviceType dataset member is added to represent the non ITU-T clock types. A default value of
5. 0 for this dataset member means that clock node is ITU-T clock type and not an ORAN defined clock-type. 30
6. The value of extendedDeviceType dataset member is a non zero, then the defaultDS.deviceType attribute will
7. be ignored by the CMS system and extendedDeviceType dataset member shall be used to identify clock type. 33

34

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **extendedDeviceType** | **Enumeration value (hex)** |
| Not-Applicable | 0x00 |
| O-DU-TimeTransmitter | 0x11 |
| O-DU-BC | 0x12 |
| O-DU-TSC | 0x13 |
| O-RU | 0x14 |

</div>

#### Table H.4-4: extendedDeviceType enumeration value

36

1. H.4.2.1.6: timeSinceCurrentClockState
2. Time elapsed in current clockState in seconds. This is used to get the clock stability of the node. This will
3. reset to zero whenever the node's defaultDS.clockMode changes.

1

2

### H.4.3 Yang Data Model reference

1. End-to-end sync Monitoring uses Yang Data model for telemetry attributes. 5
2. To ensure compatibility, both the CMS and synchronization nodes must adhere to the same specific version of
3. the YANG data model as outlined in section H.4.3.1. 8
4. H.4.3.1 End to End Sync Monitoring: Yang Data models:
5. For this revision of the specification, to support End-to-end sync monitoring every node in the synchronization
6. chain needs to support all yang data models from various standards listed below.

12 ? P1588e

1. ieee1588-ptp-tt.yang (Yang file revision 2023-08-14)[44]
2. <https://github.com/YangModels/yang/blob/main/standard/ieee/published/1588/ieee1588-ptp-tt.yang>

15

16 ? ITU-T telecom profile yang data model.

17 IT-REC-G.7721.1 (Amendment 1)[43]

1. Section 8.1.1 PTP telecom profile YANG data model
2. G.7721.1\_v1.0.08\_YANG.zip
3. itut-ptp-tt-telecom-profile.yang

21

1. ? End to End Sync Monitoring yang data model.
2. Refer the "Table H.4-5: Yang data model revision and supportedVersion mapping information" to
3. identify "End to End Sync Monitoring yang data model" file applicable to this version of the sync
4. specification.

26

1. The supportedVersion (section H.4.2.1.4) denotes the version of the ORAN End-to-End Sync Monitoring
2. YANG data model.
3. The End-to-end Sync Monitoring YANG data model is implemented by both the CMS and synchronization
4. nodes, each adhering to a specific version of supportedVersion.

31

1. The supportedVersion is linked to the attributes specified in Table H.4-2 and Table H.4-3. Any updates to
2. these tables that result in the addition or removal of an attribute/dataset member, or a change in a dataset
3. member's value field, must increment the supportedVersion by one. 35
4. The updates to the description field or typographical changes that do not affect the handling of YANG
5. dataset members in the CMS shall not necessitate a change in the supportedVersion for the published YANG
6. file. However, the revision date in the YANG file shall be updated accordingly. 39
7. The Table H.4-5: provides the mapping of published Yang data model revision with supportedVersion,
8. including the revision date. 42

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| Yang revision Date | SupportedVersion | Yang file name/Link | WG9 sync Spec  reference: | comment |
| NA | 0 | NA | NA | Streaming node does not support End-to- end sync monitoring feature/Yang data model |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| 21st Nov 2024 | 1 | o-ran-e2e-sync- monitoring@2024-11-  21.yang | v6.00 | Initial draft |

</div>

#### Table H.4-5: Yang data model revision and supportedVersion mapping information

2

3

### H.4.4 Yang Tree

1. module: o-ran-e2e-sync-monitoring

6

7 augment /ptp-tt:ptp/ptp-tt:instances/ptp-tt:instance/ptp-tt:default-ds:

8 +--ro o-ran-e2e-sync-monitoring-ds!

9 +--ro is-supported boolean

10 +--ro supported-version uint8

11 +--ro extended-device-type ptp-extended-device-type

1. augment /ptp-tt:ptp/ptp-tt:instances/ptp-tt:instance/ptp-tt:current-ds:

13 +--ro o-ran-e2e-sync-monitoring-ds!

14 +--ro time-since-current-clock-state uint32

1. augment /ptp-tt:ptp/ptp-tt:instances/ptp-tt:instance:

16 +--ro o-ran-e2e-sync-monitoring-ds!

17 +--ro ptp-timestamp-records-ds

<div class="table-wrapper" markdown="block">

1. | +--ro update-frequency uint8
2. | +--ro number-of-records uint16
3. | +--ro timestamp-info\* [index]
4. | +--ro index uint16
5. | +--ro timestamp-record
6. | +--ro record-time uint64
7. | +--ro t1-sec uint64
8. | +--ro t1-nsec uint32
9. | +--ro t2-sec uint64
10. | +--ro t2-nsec uint32
11. | +--ro sequence-id uint16
12. | +--ro cf uint64
13. | +--ro path-delay uint64
14. | +--ro message-type message-type

</div>

32 +--ro all-time-transmitter-ds

33 +--ro time-transmitter\* [index]

34 +--ro index uint16

35 +--ro parent-ds

<div class="table-wrapper" markdown="block">

1. | +--ro parent-port-identity
2. | | +--ro clock-identity ptp-tt:clock-identity
3. | | +--ro port-number uint16
4. | +--ro grandmaster-identity ptp-tt:clock-identity
5. | +--ro grandmaster-clock-quality
6. | | +--ro clock-class identityref
7. | | +--ro clock-accuracy identityref
8. | | +--ro offset-scaled-log-variance uint16
9. | +--ro grandmaster-priority1 uint8
10. | +--ro grandmaster-priority2 uint8
11. | +--ro synchronization-uncertain boolean

</div>

1 +--ro time-properties-ds

<div class="table-wrapper" markdown="block">

* 1. | +--ro current-utc-offset int16
  2. | +--ro current-utc-offset-valid boolean
  3. | +--ro leap59 boolean
  4. | +--ro leap61 boolean
  5. | +--ro time-traceable boolean
  6. | +--ro frequency-traceable boolean
  7. | +--ro ptp-timescale boolean
  8. | +--ro time-source identityref

</div>

10 +--ro port-ds

11 +--ro port-identity

<div class="table-wrapper" markdown="block">

1. | +--ro clock-identity clock-identity
2. | +--ro port-number uint16

</div>

14
---

- View in [GitHub Mode]({{site.github_page_url}}/O-RAN.WG9.XTRP-SYN.0-R004-v06.00.docx.md).
- Go back to [Table of Contents]({{site.baseurl}}/).
- Download the [Original Document]({{site.download_url}}/O-RAN.WG9.XTRP-SYN.0-R004-v06.00.docx).

---

* toc
{:toc}
