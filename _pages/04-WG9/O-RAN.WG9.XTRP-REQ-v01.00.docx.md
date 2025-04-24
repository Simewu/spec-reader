---
title: O-RAN.WG9.XTRP-REQ-v01.00.docx.md
author: O-RAN Alliance
layout: post
---

- View in [GitHub Mode]({{site.github_page_url}}/O-RAN.WG9.XTRP-REQ-v01.00.docx.md).
- Go back to [Table of Contents]({{site.baseurl}}/).
- Download the [Original Document]({{site.download_url}}/O-RAN.WG9.XTRP-REQ-v01.00.docx).

---

* toc
{:toc}

---

**O-RAN Open Xhaul Transport Working Group 9**

**Xhaul Transport Requirements**

**This is a re-published version of the attached final specification.**

For this re-published version, the prior versions of the IPR Policy will apply, except that the previous requirement for Adopters (as defined in the earlier IPR Policy) to agree to an O-RAN Adopter License Agreement to access and use Final Specifications shall no longer apply or be required for these Final Specifications after 1st July 2022.

The copying or incorporation into any other work of part or all of the material available in this specification in any form without the prior written permission of O-RAN ALLIANCE e.V. is prohibited, save that you may print or download extracts of the material on this site for your personal use, or copy the material on this site for the purpose of sending to individual third parties for their information provided that you acknowledge O-RAN ALLIANCE as the source of the material and that you inform the third party that these conditions apply to them and that they must comply with them.

**O-RAN Open Xhaul Transport Working Group 9**

**Xhaul Transport Requirements**

Copyright (C) 2021 by O-RAN ALLIANCE e.V.

By using, accessing or downloading any part of this O-RAN specification document, including by copying, saving, distributing, displaying or preparing derivatives of, you agree to be and are bound to the terms of the O-RAN Adopter License Agreement contained in Annex ZZZ of this specification. All other rights reserved.

O-RAN ALLIANCE e.V.

Buschkauler Weg 27, 53347 Alfter, Germany Register of Associations, Bonn VR 11238 VAT ID DE321720189

(C) 2021 O-RAN ALLIANCE e.V. All Rights Reserved 1

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| Author | Company | Chapters |
| Sumithra Bhojan | AT&T | 7 |
| Lujing Cai | AT&T | 7, 10, 13, Annex A |
| Philippe Chanclou | Orange | 11, Annex C |
| Kamatchi Gopalakrishnan | Juniper Networks | 12 |
| Liuyan Han | China Mobile | 12 |
| Derek Reese | AT&T | 12, 13 |
| Stefano Ruffini | Ericsson | 12 |
| Simon Spraggs | Cisco Systems | 1-6, 8-10, Annex B |
| Krzysztof Szarkowicz | Juniper Networks | 12 |
| Reza Vaez-Ghaemi | Viavi Solutions | 1-7, Coordination |

</div>

Copyright 2021 O-RAN ALLIANCE e.V.

Your use is subject to the terms of the O-RAN Adopter License Agreement in the Annex ZZZ 2

# 1 Revision History

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **Date** | **Revision** | **Author** | **Description** |
| 2020/11/11 | V01.00 | Reza Vaez-Ghaemi | Incorporated responses to comments from the WG9 review process ended on Nov 9, 2020 |

</div>

2

3

# 2 Contents

1. 1 Revision History 3
2. 3 Scope 6
3. 4 References 7
4. 5 Definitions and abbreviations 10
5. 5.1 Definitions 10
6. 5.2 Abbreviations 10
7. 6 Open Xhaul Transport infrastructure 12
8. 6.1 Xhaul transport network details 12
9. 6.1.1 5G services and vertical markets 12
10. 6.1.2 Network Scale and capacity 12
11. 6.1.3 5G RAN Architectures 12
12. 6.1.4 Network DCs, MEC and NFV 13
13. 6.1.5 Flexible Xhaul transport infrastructure 13
14. 6.1.6 Xhaul multi-service capability 15
15. 6.2 Xhaul Functional Split 15
16. 6.3 High-level Xhaul Transport requirements 16
17. 7 Fronthaul 17
18. 7.1 Fronthaul details 17
19. 7.2 Fronthaul specific requirements 18
20. 8 Midhaul 21
21. 8.1 Midhaul details 21
22. 8.1.1 O-DU to O-CU communications 22
23. 8.1.2 Inter O-CU communications 22
24. 8.2 Midhaul requirements 24
25. 9 Backhaul 26
26. 9.1 Backhaul details 26
27. 9.2 Backhaul transport evolution in 5G 27
28. 9.3 Backhaul and Midhaul transport requirements 29
29. 10 Transport network dimensioning for Midhaul and Backhaul 38
30. 10.1 Transport capacity and radio density with 5G 38
31. 10.2 Backhaul and Midhaul transport planning 38
32. 10.2.1 5G NR peak bandwidth 38
33. 10.2.2 Site peak data rates 39
34. 10.2.3 Estimating cell site loads 41
35. 10.2.4 Transport dimensioning and provisioning for Backhaul and Midhaul 41
36. 10.2.5 C-RAN Backhaul dimensioning 44
37. 10.2.6 Midhaul dimension 44
38. 10.3 Backhaul and Midhaul latency 45
39. 11 Transport operability 46
40. 11.1 Operational transport requirements 46
41. 11.1.1 Transport equipment at antenna site 46
42. 11.1.2 Dual manage transport equipment at antenna site 46
43. 11.1.3 Supervision 46
44. 11.1.4 Rogue behaviour and its mitigation in access transport segment 47
45. 11.1.5 Transport availability 47
46. 11.2 Transceiver and port monitoring and identification 48
47. 11.2.1 Transceiver digital diagnostic monitoring 48
48. 11.2.2 Transceiver class of operation for bidirectional transmission 48
49. 11.2.3 Transceiver class of operation for WDM transmission 48
50. 11.2.4 Port-ID to ease field operation 49
51. 11.2.5 Eye safety 49
52. 11.3 Power saving and energy efficiency 49
53. 11.4 Remote monitoring antenna site operation 50
54. 11.5 Operability requirements 50
55. 12 Synchronization 52
56. 12.1 Frequency, Phase and Time Accuracy Requirements 52
57. 12.2 Error Budget Allocation Requirements 53
58. 12.3 Synchronization solution requirements 55
59. 12.4 Summary 56
60. 13 Legacy Requirements 59
61. Annex A Fronthaul Bandwidth Calculation 61
62. Annex B: Slicing in Backhaul and Midhaul 63
63. Annex C: Delay Asymmetry 67
64. Annex ZZZ : O-RAN Adopter License Agreement 69
65. Section 1: DEFINITIONS 69
66. Section 2: COPYRIGHT LICENSE 69
67. Section 3: FRAND LICENSE 70
68. Section 4: TERM AND TERMINATION 70
69. Section 5: CONFIDENTIALITY 71
70. Section 6: INDEMNIFICATION 71
71. Section 7: LIMITATIONS ON LIABILITY; NO WARRANTY 71
72. Section 8: ASSIGNMENT 71
73. Section 9: THIRD-PARTY BENEFICIARY RIGHTS 72
74. Section 10: BINDING ON AFFILIATES 72
75. Section 11: GENERAL 72

25

26

27

1. 3 Scope
2. This document defines the requirements for an Open Xhaul transport infrastructure. As far as possible
3. it tries to make no assumptions about the underlying transport technology, rather define a set of
4. requirements about the overall capabilities of an Open Xhaul transport infrastructure that can support
5. different 5G services, different radio architectures and is multi-service in nature. This document refers
6. to 5G services, but the transport requirements also apply to O-RAN networks deploying 4G services. 7
7. Following introductory sections 1 through 5, section 6 concentrates on a general description of Open
8. Xhaul transport and high-level requirements. The next three sections concentrate on the transport
9. networking requirements needed to support the different radio architectures identified in 5G, namely,
10. Fronthaul, Midhaul and Backhaul. The aim is to provide the reader specific information about the
11. transport infrastructure in order to support different radio splits. Section 11 provides requirement for
12. ease of operability of transport networks. The last two main sections revolve around requirements for
13. synchronization and legacy services. 15
14. This document uses information published by O-RAN, 3GPP, IEEE, ITU-T, IETF, CableLabs,
15. NGMN and several other relevant standard bodies and industry associations. It contains educational,
16. informative, and normative content. 19
17. What is not covered in this document:
18. ? As stated above, the document makes no assumption about transport technologies to be used.
19. Technology specific architectural considerations shall be covered in other -possibly WG9-
20. documents and will be referenced in this document as soon as published. Examples include
21. DOCSIS, PON, WDM, Ethernet/IP based implementations, as well as, architectures that may
22. deploy Fronthaul gateways, Fronthaul muxes or other types of CPRI/eCPRI aggregation
23. technologies.
24. ? The document doesn't cover the synchronization architectural options. These aspects will be
25. covered in an upcoming WG9 Synchronization Solution document.
26. ? Finally, this document provides no requirements on synchronization requirements at an O-RU
27. output. They are stated in WG4 CUS Specification document [74]. 31

# 4 References

* 1. The following documents contain provisions which, through reference in this text, constitute
  2. provisions of the present document.
  3. - References are either specific (identified by date of publication, edition number, version
  4. number, etc.) or non-specific.
  5. - For a specific reference, subsequent revisions do not apply.
  6. - For a non-specific reference, the latest version applies. In the case of a reference to a 3GPP
  7. document (including a GSM document), a non-specific reference implicitly refers to the latest
  8. version of that document in Release 15. 10

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| 11 | [1] | 3GPP TS 38.472 V15.5.0: " F1 signalling transport (Release 15)". |
| 12 | [2] | IEEE 802.1Q-2018: "IEEE Standard for Local and metropolitan area networks-- |
| 13 |  | Bridges and Bridged Networks" |
| 14 | [3] | IETF RFC 2474: "Definition of the Differentiated Services Field (DS Field) in |
| 15 |  | the IPv4 and IPv6 Headers" |
| 16 | [4] | IETF RFC 2598: "An Expedited Forwarding PHB" |
| 17 | [5] | IETF RFC 2597: "Assured Forwarding PHB Group" |
| 18 | [6] | IETF RFC 4594: "Configuration Guidelines for DiffServ Service Classes" |
| 19 | [7] | IETF RFC 826: "An Ethernet Address Resolution Protocol -- or -- Converting |
| 20 |  | Network Protocol Addresses" |
| 21 | [8] | IETF RFC 792: "INTERNET CONTROL MESSAGE PROTOCOL" |
| 22 | [9] | IETF RFC 8200: "Internet Protocol, Version 6 (IPv6) Specification" |
| 23 | [10] | IETF RFC 4861: "Neighbor Discovery for IP version 6 (IPv6)" |
| 24 | [11] | IETF RFC 4443: "Internet Control Message Protocol (ICMPv6) for the Internet |
| 25 |  | Protocol Version 6 (IPv6) Specification" |
| 26 | [12] | IETF RFC 6890: "Special-Purpose IP Address Registries" |
| 27 | [13] | IETF RFC 8190: "Updates to the Special-Purpose IP Address Registries" |
| 28 | [14] | IETF RFC 2131: "Dynamic Host Configuration Protocol" |
| 29 | [15] | IETF RFC 4361: "Node-specific Client Identifiers for Dynamic Host |
| 30 |  | Configuration Protocol Version Four (DHCPv4)" |
| 31 | [16] | IETF RFC3315: "Dynamic Host Configuration Protocol for IPv6 (DHCPv6)" |
| 32 | [17] | IETF RFC4862: "IPv6 Stateless Address Autoconfiguration" |
| 33 | [18] | IETF RFC768: "User Datagram Protocol" |
| 34 | [19] | 3GPP TS 29.060 V15.0.0: "GPRS Tunnelling Protocol (GTP) across the Gn and |
| 35 |  | Gp interface (Release 15)" |
| 36 | [20] | 3GPP TS 29.274 V16.1.0: "GPRS Tunnelling Protocol (GTP) across the Gn and |
| 37 |  | Gp interface (Release 15)" |
| 38 | [21] | 3GPP TS 36.422 version 15.1.0: "X2 signalling transport (Release 15)" |
| 39 | [22] | 3GPP TS 36.424 version 15.0.0: "X2 data transport (Release 15)" |
| 40 | [23] | 3GPP TS 38.474 V15.3.0: " F1 data transport (Release 15)". |
| 41 | [24] | 3GPP TS 33.117 V16.2.0: "Catalogue of general security assurance requirements |
| 42 |  | (Release 16)" |
| 43 | [25] | IETF RFC 2119: "Key words for use in RFCs to Indicate Requirement Levels" |
| 44 | [26] | IEEE 802.3-2018: "IEEE Standard for Ethernet" |
| 45 | [27] | IETF RFC 791: "INTERNET PROTOCOL" |
| 46 | [28] | IETF RFC 1918: "Address Allocation for Private Internets" |
| 47 | [29] | IETF RFC 5357: "A Two-Way Active Measurement Protocol (TWAMP)" |
| 48 | [30] | IETF RFC 4656: "A One-way Active Measurement Protocol (OWAMP)" |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| 1 | [31] | ITU-T G.8013/Y.1731(08/2015): "Operation, administration and maintenance |
| 2 |  | (OAM) functions and mechanisms for Ethernet-based networks" |
| 3 | [32] | IETF RFC 4960. "Stream Control Transmission Protocol" |
| 4 | [33] | 3GPP TS 29.281 V15.6.0: "General Packet Radio System (GPRS) Tunnelling |
| 5 |  | Protocol User Plane (GTPv1-U) (Release 15)" |
| 6 | [34] | IETF RFC 1034: "DOMAIN NAMES - CONCEPTS AND FACILITIES" |
| 7 | [35] | IETF RFC 1035: "DOMAIN NAMES - IMPLEMENTATION AND |
| 8 |  | SPECIFICATION" |
| 9 | [36] | IETF RFC 4210: "Internet X.509 Public Key Infrastructure Certificate |
| 10 |  | Management Protocol (CMP)" |
| 11 | [37] | IETF RFC 6083: "Datagram Transport Layer Security (DTLS) for Stream Control |
| 12 |  | Transmission Protocol (SCTP)" |
| 13 | [38] | 3GPP TE 33.501 V15.6.0: "Security architecture and procedures for 5G system |
| 14 |  | (Release 15)" |
| 15 | [39] | IETF RFC 4301: "Security Architecture for the Internet Protocol" |
| 16 | [40] | 3GPP TS 33.210 V16.2.0: "Network Domain Security (NDS); IP network layer |
| 17 |  | security (Release 16)" |
| 18 | [41] | 3GPP TS 33.310 V16.2.0: "Network Domain Security (NDS); Authentication |
| 19 |  | Framework (AF) (Release 16)" |
| 20 | [42] | 3GPP TS 33.401 V16.0.0: "3GPP System Architecture Evolution (SAE); Security |
| 21 |  | architecture (Release 15)" |
| 22 | [43] | 3GPP TR 33.821 V9.0.0: "Rationale and track of security decisions in Long Term |
| 23 |  | Evolved (LTE) RAN / 3GPP System Architecture Evolution (SAE) (Release 9)" |
| 24 | [44] | IETF RFC 4303: "IP Encapsulating Security Payload (ESP)" |
| 25 | [45] | IETF RFC 8221: "Cryptographic Algorithm Implementation Requirements and |
| 26 |  | Usage Guidance for Encapsulating Security Payload (ESP) and Authentication |
| 27 |  | Header (AH)" |
| 28 | [46] | IETF RFC 7296: "Internet Key Exchange Protocol Version 2 (IKEv2)" |
| 29 | [47] | ETSI GS NFV-INF 005 V1.1.1 (2014-12): Network Functions Virtualisation |
| 30 |  | (NFV); Infrastructure; Network Domain |
| 31 | [48] | 3GPP TS 38.462 V15.5.0: "E1 signalling transport (Release 15)" |
| 32 | [49] | MEF 22.3: "Transport Services for Mobile Networks, January 2018" |
| 33 | [50] | 3GPP TS 29.303 V16.0.0: "Domain Name System Procedures; Stage 3 (Release |
| 34 |  | 16)" |
| 35 | [51] | eCPRI Transport Requirements V1.2, Common Public Radio Interface: |
| 36 |  | Requirements for the eCPRI Transport Network, June 25, 2018. |
| 37 | [52] | IEEE 802.1CMde: Time-Sensitive Networking for Fronthaul Amendment: |
| 38 |  | Enhancements to Fronthaul Profiles to Synchronization, and Syntonization |
| 39 |  | Standards Networking for Fronthaul, --Support New Fronthaul Interface, July |
| 40 |  | 26, 2019 |
| 41 | [53] | IEEE 1914.1TM D3.0, Draft Fronthaul Transport Networks, November 2018. |
| 42 | [54] | 3GPP TS 38.422 version 15.0.0 Release 15: Xn general aspects and principles |
| 43 | [55] | GSMA:"5G Implementation Guidelines: NSA Options" |
| 44 | [56] | NGMN: "NGMN Overview on 5G functional decomposition" |
| 45 | [57] | ITU-T GSTR-TN5G: "Transport Network support of IMT-2020-TG" |
| 46 | [58] | 3GPP 38.401: "NG-RAN; Architectural description" |
| 47 | [59] | O-RAN: "WG-4 Inter-Operability Testing" |
| 48 | [60] | O-RAN Open F1/W1/E1/X2/Xn Interfaces Working Group "Transport |
| 49 |  | Specification" |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| 1 | [61] | NGMN "5G RAN CU-DU network architecture, transport options and |
| 2 |  | dimensioning, version 1.0 12 April 2019)" |
| 3 | [62] | 5G Transport Slice Connectivity Interface - draft-rokui-5g-transport-slice-00 |
| 4 | [63] | 3GPP R3-162102 TSG-RAN Working Group 3 Meeting #93-bis CU-DU split: |
| 5 |  | Refinement for Annex A (Transport network and RAN internal functional |
| 6 |  | split) |
| 7 | [64] | 3GPP TS 38.101: "NR, User Equipment (UE) radio transmission and reception" |
| 8 | [65] | 3GPP TS 38.300: "NR Overall description" |
| 9 | [66] | GSMA: "5G Implementation Guidelines v2" |
| 10 | [67] | 3GPP TS 23.501 v6.4.0(2020-03): "System Architecture for 5G" |
| 11 | [68] | MEF 61.1: "IP Service attributes" |
| 12 | [69] | MEF 10.3: "Ethernet Service attributes" |
| 13 | [70] | MEF 6.2: "EVC service definition" |
| 14 | [71] | 3GPP TS38.306: "NR; User equipment (UE) radio access capabilities" |
| 15 | [72] | NGMN "Guidelines for LTE Backhaul estimations" |
| 16 | [73] | ITU-R M.2083: "IMT Vision - framework and overall objectives of the future |
| 17 |  | development of IMT for 2020 and beyond". |
| 18 | [74] | O-RAN Fronthaul Working Group, "Control, User and Synchronization Plane |
| 19 |  | Specification", v03.00 (04/2020) |
| 20 | [75] | 3GPP TS36.104, version 16.4.0, 01/2020, "Evolved Universal Terrestrial Radio |
| 21 |  | Access (E-UTRA) Base Station (BS) and radio transmission and reception". |
| 22 | [76] | 3GPP TS38.104, version 16.2.0, 01/2020, "NR Base Station (BS) and radio |
| 23 |  | transmission and reception". |
| 24 | [77] | ITU-T G.8271.1, 03/2020, "Network limits for time synchronization in packet |
| 25 |  | networks with full timing support from the network" |
| 26 | [78] | ITU-T G.8272 Amendment 1, 03/2020, "Timing characteristics of primary |
| 27 |  | reference time clocks" |
| 28 | [79] | ITU-T G.8272.1, Amendment 2, 08/2019, "Timing characteristics of enhanced |
| 29 |  | primary reference time clocks" |
| 30 | [80] | ITU-T G.8275.1, 03/2020, "Precision time protocol telecom profile for |
| 31 |  | phase/time synchronization with full timing support from the network " |
| 32 | [81] | ITU-T G.8273.2 Amendment, 03/2020, "Timing characteristics of telecom |
| 33 |  | boundary clocks and telecom time slave clocks" |
| 34 | [82] | ITU-T G.8272/Y.1367, 11/2018. "Timing characteristics of primary reference |
| 35 |  | time clocks" |
| 36 | [83] | 3GPP TS38.801, version 14.0.0, 03/2017, "Study on new radio access |
| 37 |  | technology: Radio access architecture and interfaces" |
| 38 | [84] | NGMN "Overview on 5G RAN function decomposition" |
| 39 | [85] | 3GPP TR22.804 v16.2.0 (2018-12), "Study on communications for automation in |
| 40 |  | vertical domains" |
| 41 |  |  |
| 42 |  |  |

</div>

# 5 Definitions and abbreviations

## 5.1 Definitions

1. The key words "**SHALL**", "**SHALL NOT**", "**SHOULD**", "**SHOULD NOT**", "**MAY**", and
2. "**OPTIONAL**" in this document are to be interpreted as described in IETF RFC 2119 [25]. All key
3. words must be in upper case, bold text.
4. Items that are **REQUIRED** (contain the words **SHALL** or **SHALL NOT**) will be labelled as **[Rx]**
5. for required. Items that are **RECOMMENDED** (contain the words **SHOULD** or **SHOULD NOT**)
6. will be labelled as **[Dx]** for desirable. Items that are **OPTIONAL** (contain the words **MAY** or
7. **OPTIONAL**) will be labelled as **[Ox]** for optional**.**
8. Items, if supported, are not meant to be active at all times, but should be available for use. Their state
9. (active or not active) should be based on configuration.

## 5.2 Abbreviations

1. Abbreviations defined in this document take precedence over the definition of 3GPP 14

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| AF | Application Function | ITU-T | International Telecom Union-Telecom |
| AMF | Access and Mobility Management Function | LAN | Local Area Network |
| AN | Access Node | LLS | Lower Layer Split |
| ARP | Address Resolution Protocol | LTE | Long Term Evolution |
| ABW | Antenna Bandwidth | MAC | Medium Access Layer |
| BBU | Baseband Unit | MBSFN | Multimedia Broadcast multicast service Single Frequency Network |
| BH | Backhaul | MPLS | Multi-Protocol Label Switching |
| BiDi | Bidirectional | MIMO | Multiple Inputs Multiple Outputs |
| BS | Base Station | MNO | Mobile Network Operator |
| BW | Bandwidth | MRTD | Maximum Receive Time Difference |
| CAPEX | Capital Expense | NGMN | Next Generation Mobile Network |
| CBS | Committed Burst Size | NR | New Radio |
| CFP | Common Form factor Pluggable | NSA | Non-Stand Alone |
| CIR | Committed Information Rate | NSSI | Subnet Networking Slices Instance |
| CN | Core Network | OAM | Operation Administration Maintenance |
| CoMP | Coordinated Multipoint | O-CU | O-RAN Central Unit |
| CP | Control Plane | O-DU | O-RAN Distributed Unit |
| CPRI | Common Public Radio Interface | OPEX | Operation Expense |
| CU | Central Unit | O-RU | O-RAN Radio Unit |
| DC | Data Center | PCF | Policy Control Function |
| DL | Downlink | PDCP | Packet Data Convergence Protocol |
| DN | Data Network | ppb | Parts per billion |
| DHCP | Dynamic Host Configuration Protocol | PRB | Physical Resource Block |
| DSCP | Differentiated Services Codepoint | PRTC | Primary Reference Telecom Clock |
| dTEH | Dynamic Time Error High | PTP | Precision Time Protocol |
| dTEL | Dynamic Time Error Low | OFDM | Orthogonal Frequency Division Multiplexing |
| DU | Distributed Unit | QAM | Quadrature Amplitude Modulation |
| eCPRI | evolved Common Public Radio Interface | QoS | Quality of Service |
| eMBB | enhanced Mobile Broadband | QSFP | Quad SFP |
| eNB | Evolved NodeB | RB | Resource Block |
| EP | Ethernet Private | RRH | Remote Radio Head |
| EPC | Evolved Packet Core | RU | Radio Unit |
| EPL | Ethernet Private Line | SCS | Sub Carrier Spacing |
| ePRC | Enhanced Primary Reference Clock | SCTP | Stream Control Transmission Protocol |
| ePRTC | Enhanced Primary Reference Telecom Clock | SFF | Small Form Factor |
| E-UTRA | evolved UMTS Terrestrial Radio Access | SFP | Small Form factor Pluggable |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| EVP | Ethernet Virtual Private | SLA | Service Level Agreement |
| EVPL | Ethernet Virtual Private Line | TAE | Time Alignment Error |
| FDD | Frequency Division Duplex | T-BC | Telecom Boundary Clock |
| FFO | Fractional Frequency Offset | TDD | Time Division Duplex |
| FFS | For Further Study | TE | Time Error (in the context of synchronization) |
| FH | Fronthaul | T-GM | Telecom Ground Master |
| FLR | Frame Loss Ratio | TN | Transport Node |
| FR1 | Frequency Range 1 | TNE | Transport Network Equipment |
| FR2 | Frequency Range 2 | T-TSC | Telecom Time Slave Clock |
| FTTH | Fiber To The Home | TX | Transmit |
| gNB | gNodeB | UDP | User Datagram Protocol |
| GNSS | Global Navigation Satellite System | UE | User equipment |
| GPRS | General Packet Radio Service | UL | Uplink |
| GTP | GPRS Tunnelling Protocol | UNI | Universal Network Interface |
| ICMP | Internet Control Message Protocol | UNI-C | UNI-Customer edge |
| IoT | Internet of Things | UPF | User Plane Function |
| IP | Internet Protocol | URLLC | Ultra Reliable Low Latency Communication |
| IQ | In phase Quadrature | VPN | Virtual Private Network |

</div>

1

2

3

# 6 Open Xhaul Transport infrastructure

1. This section provides a definition of Open Xhaul transport, some of the key characteristics and
2. high-level requirements associated with Open Xhaul transport.

## 6.1 Xhaul transport network details

1. At the highest-level the Open Xhaul transport network provides the connectivity from the Radio
2. Access Network (RAN) to the mobile packet core, which subsequently makes the connection to the
3. application function. These could reside in a public network infrastructure, such as the Internet, a
4. walled garden or a completely private network. For details of future developments envisaged in
5. services / spectrum and timelines please see the "International Mobile Telecommunications (IMT)
6. 2020 and beyond" [73].

11

1. Below are some of the key considerations

### 6.1.1 5G services and vertical markets

1. 5G networks are expected to enable a new range of services that can be categorized in three
2. classes:
3. - enhanced Mobile Broadband (eMBB)
4. - Ultra Reliable Low Latency Communications (URLLC)
5. - massive Machine Type Communications (mMTC) 19
6. These services will drive the need for new or enhanced classes of RAN and transport networks. 21

### 6.1.2 Network Scale and capacity

1. Whereas eMBB services demand more capacity in transport networks, URLLC applications will pose
2. new challenges for the design of Xhaul networks in terms of low latency and increased reliability.
3. Finally, mMTC necessitate a network that can efficiently manage huge number of devices such as
4. intelligent devices in utility meters or house appliances.

### 6.1.3 5G RAN Architectures

1. As illustrated in Figure 1, in a traditional D-RAN (distributed RAN) architecture, the O-DU and O-
2. CU are integrated as a BBU, collocated with the O-RU (Radio) at cell site. When evolving to the C-
3. RAN (centralized RAN) architecture, the O-CU, which contains the higher layer of the RAN
4. processing stacks, is centralized in a Hub. Depending on Operator's deployment needs, the O-DU
5. may remain at cell site, or be centralized. The Xhaul transport (Fronthaul, Midhaul, and Backhaul)
6. serve as connections among the 3GPP RAN and core components. Transport Network Equipment
7. (TNE) represents the transport functions necessary in Xhaul networks. Specifics of TE are outside of
8. the scope of this document and will be covered in WG9 solution documents: 36
9. D-RAN:
10. (O-RU+O-DU+O-CU)? Backhaul ? (5GC)

39

40 C-RAN:

41 (O-RU) ?Fronthaul? (O-DU+O-CU) ? Backhaul ? (5GC) 42

43 (O-RU) ?Fronthaul? (O-DU) ? Midhaul ? (O-CU) ? Backhaul ? (5GC)

1

2 (O-RU+O-DU) ?Midhaul? (O-CU) ? Backhaul ? (5GC) 3

4

5 The X2/Xn interfaces that provide logical connection between O-CUs (or to LTE eNBs) are also

6 depicted in Figure 1 to support the inter site coordination such as EN-DC. 7

![]({{site.baseurl}}/assets/images/506435663887.jpg)8

9

#### 10 Figure 1: RAN reference architecture

11

12

13

14

### 6.1.4 Network DCs, MEC and NFV

1. Beyond the abovementioned evolution of wireless access networks with D-RAN and C-RAN,
2. wireless operators started to take advantage of Network Function Virtualization NFV technologies to
3. scale and control the CAPEX. Introduction of 5G creates new opportunities to use these technologies
4. to scale functions and manage low latency in radio access networks. 20

### 6.1.5 Flexible Xhaul transport infrastructure

1. As outlined 5G defines different services and RAN architectures. Figure 2 is adapted from NGMN
2. [56] and illustrates how different RAN components may be placed in different locations within the
3. same Mobile Network Operator's (MNO) infrastructure to meet the delay and reliability requirements

![]({{site.baseurl}}/assets/images/dd2fe69c2d8e.jpg)![]({{site.baseurl}}/assets/images/2449229eeda9.jpg)

1. of a 5G service or vertical market. 3

4

5

6

#### 7 Figure 2: End to end Xhaul transport - adapted from text and diagrams in "NGMN:

8 **Overview on 5G RAN Function Decomposition"** [**84]**

9

1. These different RAN deployment models impact on where the Fronthaul, Midhaul and Backhaul
2. overlay the Xhaul transport infrastructure or even if they are all required. Beyond these deployment
3. models, the choice of radio technology/spectrum can impact the architectural split. Low-/mid-/high
4. band radios may require different choice of functional split or Fronthaul (CPRI/eCPRI) technology.
5. The number of antenna ports/layers (spatial multiplexing) is another factor to be considered. 6
6. Ideally the Xhaul transport infrastructure and its design need to be flexible enough to accommodate
7. Backhaul, Midhaul and Fronthaul and even the N6 portions of the 5G infrastructure running in the
8. same part of the physical infrastructure. There will be exceptions to this requirement, for example
9. some MNOs may wish to treat the transport infrastructure supporting the Fronthaul in isolation to the
10. Midhaul and Backhaul but given the similarities and potential overlap between Backhaul/Midhaul/N6
11. (GiLAN) the Xhaul transport infrastructure must be able to accommodate all these capabilities
12. running in the same portion of the physical transport infrastructure.

### 6.1.6 Xhaul multi-service capability

1. NGMN identifies the need for X-haul transport to be multi-service capable. Depending on the type
2. of service provider the following capabilities MAY need to be supported on the X-haul transport
3. infrastructure:
4. - Non-stand Alone (NSA) and Stand-Alone deployment of 5G wireless services including
5. eMBB, mMTC and URLLC defined by 3GPP
6. - Mobile vertical market solutions
7. - Legacy 2G/3G/4G wireless services
8. - Enterprise services
9. - Residential broadband services
10. - Data center interconnection
11. This paper focuses on mobile deployment cases as listed in the first three bullets above. 26

## 6.2 Xhaul Functional Split

1. The introduction of 5G services necessitates a new look at the distribution of functions between 4G
2. BBU and RRH (Figure 3). 4G BBU hosts the majority of functional elements with the exception of
3. RF functions. Also known as option 8, CPRI technology provides a simple synchronous interface that
4. allows for a low-cost design of the RRH. It also permits the introduction of advanced mobility
5. functions such as carrier aggregation and CoMP. This simplicity comes at a cost; the CPRI interface
6. transports time domain IQ data whose bandwidth is proportional to the bandwidth of the baseband
7. signal and the number of antennas or more generally the number of spatial streams. Higher bandwidth
8. and massive MIMO requirements of 5G cause an explosive growth of this interface option. 36
9. A review of the functional split options (Figure 3) led to several new options (Options 1 through 7)
10. that can be theoretically considered for solving the challenges raised by emerging 5G services. These
11. options were ultimately narrowed down to three prominent options 2, 6 and 7. 40

**Option 2**

High- MAC

Low- RLC

High- RLC

High- RLC

Low- MAC

PDCP

Data

Low- MAC

High- PHY

High- PHY

RRC

Low- RLC

Low-PHY

**Option 1**

Low-PHY

PDCP

Data

RF

RRC

High- MAC

RF

**Option 3**

**Option 4**

**Option 5**

**Option 6 Option 7**

**Option 8**

1

2

#### Figure 3: Functional Split Options [83]

4

1. Furthermore, the option 7 also presents different choices in terms of splitting the functions of the
2. PHY layer such as options 7-1, 7-2x, and 7-3 for the Fronthaul interface. This document only focuses
3. on option 7-2x (Figure 4) as the interface for open Fronthaul chosen by O-RAN. However, the
4. document also considers the option 8 for the definition of Fronthaul transport requirement as this
5. interface is widely used in 4G networks and will be presented in future networks not only for 4G
6. services, but also as an option for carrying low bandwidth 5G services. 11

## 6.3 High-level Xhaul Transport requirements

1. **[R1]: MUST** support the mandatory transport capabilities outlined by WG5 in the "O-RAN Open
2. F1/W1/E1/X2/Xn Interfaces working group transport specification". [60]
3. **[R2]: MUST** support the mandatory transport capabilities outlined by WG4 Open Fronthaul
4. Interfaces Workgroup [74].
5. **[R3]:** Mobile components reside in the WAN and the DC. It **MUST** be possible to build L2 and L3
6. services where mobile components reside in both domains
7. **[R4]: MAY** need to be multiservice in nature. Refer to 6.1.6 for examples of the type of services that

20 may need to be supported on the Xhaul transport network

1. **[R5]: SHOULD** support flexible placement of front / mid / Backhaul / N6 on Xhaul transport.
2. **[R6]: MUST** support flexible placement of Mid/Backhaul / N6 on Xhaul transport.
3. **[R7]: MUST** support L2 and L3 Virtual Private Networks (VPNs).
4. **[R8]: MUST** support multi-point VPNs.
5. **[R9]: MUST** support point to point VPNs.
6. **[R10]: MUST** support 5G network slicing. 27

# 7 Fronthaul

1. Fronthaul in O-RAN is defined as the connectivity in the RAN infrastructure between the Distributed
2. Unit (O-DU) and Radio Unit (O-RU). 4

## 7.1 Fronthaul details

1. As explained in section 6.2, the herein presented Fronthaul requirements focus on split options 7-2x,
2. as shown in Figure 4 [74]. Option 8 will be addressed in chapter 13.

![]({{site.baseurl}}/assets/images/dd75d82dfa26.jpg)8

9

10

#### Figure 4: O-RAN WG4 functional split 7-2x (Figure 2-2 in [74])

12

1. The use cases revolve around 4G/5G mobility services and URLLC. The presented requirements take
2. advantage of documents already available by other standard bodies such CPRI (eCPRI Transport
3. Requirements; [51]), IEEE 802.1CMde [52], and IEEE 1914.1 [53].

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

## 7.2 Fronthaul specific requirements

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Category | Comments |
| Interfaces | O-RAN 7.2x, 1914.3, eCPRI, CPRI, |
| Protocols | O-RAN 7.2x: Ethernet VLAN based or IP/UDP |
| Logical connectivity requirements |  |
| Bandwidth per O-RU and O-DU | Listed in this chapter below |
| Transport delay (one way) O-RU to O-DU | Listed in this chapter below |
| Transport delay asymmetry | Annex C (For Further Study) |
| Synchronization / timing requirements | Listed in synchronization chapter of this document |

</div>

#### Table 1: High level Fronthaul requirements

3

4

1. The primary reference for Frame Loss Ratio and Latency proposed in this document is the eCPRI
2. Transport Requirement V1.2 [51]. IEEE 802.1CMde [52] also refers to the eCPRI Transport
3. Requirements V1.2 for latency and frame loss ratio, and therefore is not referenced for the purpose
4. of latency and frame loss ratio requirements in this document. Further information on delay
5. parameters can be found in WG4 CUS specification, Annex B [74]. 10
6. IEEE 1914.1 [53] uses a different terminology for the identification of Fronthaul (NGFI-I) and
7. Midhaul (NGFI-II). It does not include any requirements on frame loss ratio. However, it provides a
8. table for latency requirements that distinguishes the requirements by different use cases. While there
9. is some overlap with the limits provided in eCPRI Transport Requirements document, there are also
10. some differences. To avoid any confusion, we are not presenting the IEEE 1914.1 requirements in
11. this document and are proposing that it only refers to eCPRI Transport Requirement V1.2 document
12. for latency.

18

1. The Frame Loss Ratio and Latency requirements are summarized in Table 2 and Table 3, respectively. 20

21

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| CoS Name | Example use | Maxim One-way Frame Loss Ratio Performance |
| High | User Plane (fast) | 10-7 |
| Medium | User Plane (slow), C&M Plane (fast) | 10-7 |
| Low | C&M Plane | 10-6 |

</div>

22

#### Table 2: Frame loss ratio requirements

24

25

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| Latency Class | Max. One-way Frame Delay Performance | Use case |
| High25 | 25 ?s | Ultra-low latency performance |
| High751 | 75 ?s | For full NR performance with fiber lengths in 10km range |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| High100 | 100 ?s | For standard NR performance with fiber lengths in 10km range |
| High200 | 200 ?s | For installations with fiber lengths in 30km range |
| High500 | 500 ?s | Large latency installations > 30 km |
| Medium | User Plane (slow) & C&M Plane (fast) | 1 ms |
| Low | C&M Plane | 100 ms |

</div>

1 1. New requirement category added based on deployment needs. 2

#### 3 Table 3: One-way Delay requirements

4

1. Fronthaul bandwidth is dimensioned per cell site, where a number of carriers are deployed at different
2. frequency bands (Low/mid bands in Sub 6 and mm wave in high band), and at different sectors. The
3. Fronthaul bandwidth for a cell site depends on following key parameters 8
4. ? Number of sectors
5. ? Radio channel bandwidth of each carrier
6. ? MIMO order of each carrier 12

13 Various sizes of site configuration may be considered for the eCPRI Fronthaul traffic: 14

1. ? Small: single sector, carriers in either mmWave or Sub 6 with low MIMO order
2. ? Medium: multiple sectors, carriers in both Sub 6 and mmWave with medium MIMO order
3. ? Large: multiple sectors, carriers in both mmWave and Sub 6 band with Massive MIMO 18

19

1. ![]({{site.baseurl}}/assets/images/8a3af8e786fa.png)Table 4 provides "typical" peak Fronthaul bandwidth "cases" in such site configurations: 21

22

23

#### Table 4: Fronthaul Bandwidth Reference for eCPRI traffic

25

26

1. The FH BW in Table 4 is calculated for functional split 7-2x and block floating point compression
2. specified in O-RAN WG 4 CUS plane specification [74]. The formula used for the calculation is
3. given as follows:

30

31

32

33 FH BW = 2 x 10-9(1 + c) vlayerNPRB(12Nmantissa+Nexponent) (Gbps)

T?

s

34

1. Where

2

3

4

5

6

7

* vlayer is the maximum number of supported layers
* NPRB is the maximum RB allocation for a given channel bandwidth and numerology

?.

* Nmantissa is the number of mantissa bits. Nmantissa= 9 used in Table 4.
* Nexponent is the number of the exponent bits. Nexponent= 4 used in Table 4.
* T?is the average OFDM symbol duration in a subframe for a given numerology, i.e.,

s

8 T? = 10-3

(second)

s 14 x2?

1. o c is the overhead from the control-plane. For downlink, c ? 10% and for uplink c ?
2. 0, as the control-plane is primarily the downlink traffic in O-RAN specification[74].
3. The overhead may also take different value depending on vender specific
4. implementation.

13

14

1. The relation of NPRB to the channel bandwidth and numerology is defined in 3GPP specification [64]
2. that applies to both FDD and TDD. There is no need for any additional scaling by downlink/uplink
3. ratio for TDD because full NPRB is always made available at the time of transmission in one direction
4. (downlink or uplink). 19
5. The Fronthaul bandwidth calculation equation does not include the protocol encapsulation overhead
6. (e.g., eCPRI header, Ethernet header, and IP header, etc.). At an assumption of average packet size
7. equal to 1000, an additional 3.6% overhead needs be added for L2 Ethernet Encapsulation, and 6.4%
8. for L3 IPv4 Encapsulation. 24
9. Note that the Fronthaul traffic from the 7-2x Lower Layer Split is user data dependent. The actual
10. real time Fronthaul bandwidth is expected lower than its peak depending on traffic payload in the
11. deployment. Hence certain level of over subscription to transport network with Fronthaul statistical
12. multiplexing is allowed at operator's decision on the cell site dimensioning, user traffic profiling, and
13. reliability requirement. More accurate calculation of such use of the Fronthaul transport is complex
14. and is for further study. 31
15. Examples of the site carrier configuration related to the Fronthaul bandwidth calculation are provided
16. in Annex A, together with some possible eCPRI or CPRI interface configurations associated with the
17. carriers.

35

# 8 Midhaul

1. There are many similarities between Midhaul and Backhaul components of a 5G RAN infrastructure
2. and the transport infrastructure needed to support it. In order to avoid duplication this document has
3. dedicated chapters covering Midhaul and Backhaul. These contain descriptions of the component and
4. a requirements table. For requirements that are common for both Midhaul and Backhaul they are held
5. in the Backhaul requirements section (see 9.3). There is also a common chapter (chapter [0]) dedicated
6. to dimensioning the transport network.

## 8.1 Midhaul details

1. The Midhaul network is a logical portion of the transport network that supports C-RAN architectures
2. where there is a "High level Split" (HLS) or split 2 in the 5G Radio architecture which implies the
3. O-DU and O-CU are split into independent components. It facilitates:
4. 1) O-DU and O-CUs communication and supports the transport of the 3GPP F1/W1/E1
5. interfaces. In scenarios where the O-DU and O-CU are a combined entity then these interfaces
6. are not exposed, and the transport network does not have a Midhaul component.
7. 2) Inter O-CU communication and supports the transport of the 3GPP Xn interface. In scenarios
8. where the MNO has not implemented a split O-DU and O-CU RAN architecture then these
9. interfaces need to be supported in the Backhaul network. 18

19 Figure 5 illustrates RAN architectures where a Midhaul or HLS is present. 20

![A screenshot of a cell phone  Description automatically generated]({{site.baseurl}}/assets/images/291478f58003.png)

21

22

#### Figure 5: RAN architectures where a Midhaul transport is required

1. **Source: Cisco**

25

1. From an interface and protocol perspective 3GPP and O-RAN WG5 are defining these
2. specifications.

28

1. Note: WG5 will shortly publish O-RAN Transport Specifications 1.0 on the transport requirements
2. for Midhaul . The requirements should be used in conjunction with this document. 31

### 8.1.1 O-DU to O-CU communications

1. 3GPP TS 38.401[.58] defines the de-aggregated RAN, it's characteristics and outlines the F1-U, F1-
2. C and E1 interfaces. Figure 6, taken from 3GPP TS 38.401 illustrates the components and interfaces.
3. The Midhaul transport infrastructure is responsible for supporting these interfaces. 5

6

![A picture containing clock  Description automatically generated]({{site.baseurl}}/assets/images/f9f150ba5378.jpg)

7

#### Figure 6: De-aggregated gNB [58]

9

1. The characteristics of a disaggregated gNB are:
2. ? A gNB may consist of a gNB-CU-CP, multiple gNB-CU-UPs and multiple gNB-DUs
3. ? DUs and CU-UPs are connected to one CU-CP via the E1 interface
4. ? DUs can connect to multiple CU-UPs
5. ? Multiple CU-UPs connect to one CU-CP
6. ? For resiliency reasons DUs and CU-UPs may connect to multiple CU-CPs 16
7. The 3GPP interfaces associated with O-DU and O-CU communication are:
8. ? **F1 interface** defines the inter-connection of a gNB-CU and a gNB-DU and has a control
9. (F1-C) and user (F1-U) plane component. 20
10. ? **E1 interface** defines the control plane inter-connection between the gNB-CU-CP and a gNB-
11. CU-UP. It allows these two components to run as separate entities and potentially in different
12. locations.

24

25

### 8.1.2 Inter O-CU communications

1. Xn is a 5G interface between the gNBs in 5G and X2 is the interface between eNBs in 4G. Figure 7
2. illustrates Xn interface in a D-RAN architecture. 29

30

![]({{site.baseurl}}/assets/images/8f7010d73f51.jpg)1

2

#### 3 Figure 7: Overall Architecture showing Xn interface [65]

4

1. In scenarios where a "high level split" radio architecture has been adopted these interfaces run
2. between the O-CUs and are considered to be part of the Midhaul transport architecture by O-RAN
3. WG5. In D-RAN and RAN architectures that do not employ an HLS, then these interfaces will
4. typically be considered part of the Backhaul network. 9
5. The Xn and X2 interfaces are used to exchange signalling information between RAN nodes, and the
6. forwarding of PDUs between RAN nodes during UE handover. The X2 interface also has an
7. important role in the migration from 4G to 5G as it is used in some Non-Standalone Architectures
8. (NSAs) migration solutions to convey signalling information, and in some cases user data from the
9. 5G New Radios to the 4G Evolved Packet Core.

![A screenshot of a cell phone  Description automatically generated]({{site.baseurl}}/assets/images/52d5e67784bd.jpg)

15

#### Figure 8: NSA Option 3/3a/3x networking mode [66]

1. **Source: GSMA 5G Implementation Guidelines v2: NSA Option 3**

18

1. Figure 8 shows the NSA option 3/3a/3x networking modes. In NSA option 3 (far left in figure) the
2. signalling and user plane traffic associated with 5G UEs is sent from gNBs to eNBs and then onto the
3. mobile core. In this mode, traffic levels between the gNB and the eNB and between the eNB and the
4. EPC are a function of the amount of 5G spectrum and the number of 5G UEs. It is anticipated traffic
5. levels will initially be low due to the scarcity of 5G UEs but could become very significant as the
6. user population transitions towards 5G UEs and gets the benefits of increased capacity from using 5G
7. NR. This mode impacts the transport infrastructure between the gNB and the eNB and also the
8. transport infrastructure between the eNB and the EPC. 27
9. In NSA option 3a (middle of Figure 8) only signalling traffic traverses the X2 interface.
10. NSA option 3x (far right in Figure 8) is roughly the opposite to NSA option 3. In this case signalling
11. and user plane traffic from 4G UEs goes from eNBs via gNBs to the mobile core. In this NSA mode,
12. the impact on the transport network is dependent on the level of 4G spectrum and the number of 4G
13. UEs. The likely impact on the transport network is that traffic levels will be significant on the X2
14. interface initially, but as 4G users migrate to 5G so user plane traffic will decrease. 7
15. X2 and Xn are logically a point to point connection between gNBs or eNBs. However, there are Xn
16. and X2 interfaces to all adjacent eNBs / gNBs so in reality there is a multi-point relationship between
17. entities.

11

12 The O-CU-O-CU interfaces are:

13

1. ? **X2 interface** is the LTE interface between RAN nodes. The interface is further split into a
2. user plane and control plane components (X2-U user plane and the X2-C).
3. ? **Xn interface** is the 5G interface between RAN nodes. The interface is further split into a user
4. plane and control plane components (Xn-U user plane and the Xn-C). 18

## 8.2 Midhaul requirements

1. There are many similarities between Midhaul and Backhaul transport requirements. The following
2. table highlights the items specific to Midhaul. For requirements that are consistent between Midhaul
3. and Backhaul please refer to Table 6 in the Backhaul section. 23

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| Capability | Requirements | Notes |
| 3GPP interfaces | Control Plane: F1-C, E1 User Plane: F1-U Control Plane: Xn-C User Plane: Xn-U |  |
| Network and transport protocols | All 3GPP interfaces are IP Control plane interfaces: IP/SCTP  User plane interfaces: IP/UDP/GTPv2 |  |
| Logical connectivity requirements | Multi-point at IP layer |  |
| Transport network scale for Midhaul | The size of the Midhaul infrastructure is highly dependent on how the C-RAN architecture is deployed.  In scenarios where an operator is running a Fronthaul infrastructure then the Midhaul will be between O-DU sites and the O-CU sites (1st topology shown in figure xx). In both cases there could be aggregation.   1. Multiple O-RUs consolidating onto a smaller number of O-DU sites. 2. Multiple O-DUs consolidating onto a smaller number of O-CU sites. |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
|  | In scenarios where the O-RU and the O- DU are co-located in the cell site (2nd topology shown in Figure 5) then the Midhaul will consist of every cell site plus sites where an O-CU component resides. |  |
| Midhaul transport provisioning | F1 and E1 interfaces dimensioning is covered in chapter 10.  Xn and X2 interfaces are between gNBs and eNBs and traffic levels are highly dependent on the migration path being  used by the MNO to move between 4G and 5G technology. |  |
| End to end Midhaul transport delay (one way) | Delay constraint for midhaul are derived mainly from the target service's latency requirements, rather than specific requirements of the Midhaul' s user or control planes. As service delay targets become tighter it may become necessary to:   1. Place Midhaul and Backhaul mobile components in close proximity to each other to reduce the delay impact of the transport network. 2. Combine mobile functions together so 3GPP interfaces run internally within a "Network Function" or within a data center to remove the delay impact associated with the WAN transport network. For example, combining O- RU, O-DU and O-CU or combining the O-DU and O-CU functions together.   <1.5ms-10ms [83] | See section 10.3 for more detail. |

</div>

#### Table 5: Midhaul transport requirements.

2

#### For generic Midhaul and Backhaul requirements please see

1. **Table 6: Common Midhaul / Backhaul Xhaul transport requirements****.**

5

6

7

8

# 9 Backhaul

1. There are many similarities between Midhaul and Backhaul components of a 5G RAN infrastructure
2. and the transport infrastructure needed to support it. In order to avoid duplication this document has
3. dedicated chapters covering Midhaul and Backhaul. These contain descriptions of the component and
4. a requirements table. For requirements that are common for both Midhaul and Backhaul they are held
5. in the Backhaul requirements section (see section 9.3). There is also a common chapter (chapter [0])
6. dedicated to dimensioning the transport network.

## 9.1 Backhaul details

1. From a 5G architectural perspective Fronthaul, Midhaul and Backhaul components and associated
2. interfaces are always present. However, the impact on the transport architecture depends on where
3. the different 3GPP components are placed and their proximity to each other. In a traditional D-RAN
4. architecture the O-RU, O-DU, O-CU (or equivalent 4G components) are either integrated together or
5. contained within a single cell site and the transport network for Backhaul run from the cell site to the
6. mobile core. In a C-RAN NR architecture or disaggregated RAN architecture the Backhaul network
7. connects the "Centralised Unit" (O-CU) to the mobile core components. 16
8. Figure 9 shows some examples of how the placement of the various 5G NR components determines
9. the size of the transport network associated with the Backhaul. The bottom architecture is a D-RAN
10. architecture while all the others are C-RAN derivatives. 20

![]({{site.baseurl}}/assets/images/556abeee6cff.jpg)21

22

23

24

#### Figure 9: Backhaul layout with various RAN splits

1. **source: Cisco**

27

* 1. Figure 10 shows components and the 3GPP interfaces in the mobile Backhaul. It has a control plane
  2. component and user plane component. It is not uncommon to see the control plane and the user plane
  3. divided into separate closed user groups at the transport layer to ensure a clear demarcation between
  4. ![A close up of a sign  Description automatically generated]({{site.baseurl}}/assets/images/dccc00d13829.jpg)customer user data and the 3GPP control plane. 5

6

7

1. **Figure 10: 5G Backhaul components and interfaces**
2. **Source: Adapted from 3GPP TS 23.501 v6.4.0(2020-03): System Architecture for 5G** [**67]** **with**
3. **control plane / user plane shading added by document authors.**

11

12 The 5G 3GPP interfaces associated with Backhaul are:

13

1. ? **N1 interface** is a logical control plane interface between the mobile core network and the UE.
2. From a physical perspective it flows via the RAN through the Backhaul infrastructure to the
3. AMF. It is a signalling interface between the UE and the AMF. 17
4. ? **N2 interface** supports control plane signalling between RAN and 5G core. It is primarily
5. concerned with connection management, UE context and PDU session management, and UE
6. mobility management. In addition, Non-Access Spectrum (NAS) signalling between the UE
7. and the AMF is transported over the N2 connection for that UE. This signalling includes
8. information regarding access control, authentication and authorization, and session
9. management procedures.

24

1. ? **N4 Interface** is the bridge between the control plane and the user plane of the 5GC. It runs
2. between the SMF and the UPF and is responsible for conveying policy rules regarding policy
3. handling, forwarding and usage reporting to the UPF. 28
4. ? **N3 interface** is the user plane interface between the O-CU component of the (gNB) and the
5. initial UPF.

31

1. ? **N9 interface** is a user plane interface than runs between two UPFs. (i.e. an intermediate UPF
2. and the UPF session anchor). 34

## 9.2 Backhaul transport evolution in 5G

1. The RAN Backhaul network has been a feature of every 3GPP generation, and many transport
2. network engineers are familiar with the transport requirements RAN Backhaul of previous 3GPP
3. generations. However, 5G introduces some significant changes that will alter the requirements and
4. nature of the Backhaul infrastructure. 3
5. In the past 3GPP interfaces across the Backhaul networks tended to be hub and spoke in nature, with
6. the radios at the edge and the mobile core control and user planes gateway components located in a
7. fairly centralised location. See Figure 11 for details.
8. ![A close up of a map  Description automatically generated]({{site.baseurl}}/assets/images/e657e6687bb7.jpg)

#### Figure 11: Transport organization of tradition Backhaul networks (Source Cisco)

9

1. With the advent of new 5G use cases, CUPS, MEC and slicing both the control and user plane
2. Backhaul interfaces will become more multi-point in nature, with IP end points needing to
3. communicate with other IP end points distributed around the whole transport network. This
4. connectivity can be provided using either L3 routing or E-LAN / E-Tree services or a combination of
5. both. In addition, with the advent of 5G slicing the transport network will need to support multiple
6. L2 and L3 closed user groups on the transport infrastructure and in some cases permit controlled
7. connectivity between and within closed user groups. See Figure 12 for details.
8. ![A close up of a map  Description automatically generated]({{site.baseurl}}/assets/images/1e635f1ba8f2.jpg)

18

#### 19 Figure 12: 5G Backhaul infrastructure overlaying the transport infrastructure (Source Cisco)

1

## 9.3 Backhaul and Midhaul transport requirements

* 1. The transport requirements for Midhaul and Backhaul are very similar. The table below captures
  2. Backhaul and common Midhaul / Backhaul transport requirements. For transport requirements
  3. specific only to Midhaul please refer to Table 6. 6

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| Capability | Requirements | Notes |
| 3GPP interfaces | Control Plane: N1, N2, N4 User Plane: N3, N9 |  |
| Network and transport protocols | All 3GPP interfaces are IPv4 or IPv6 Control plane: IP/SCTP  Data plane: IP/UDP/GTPv2 |  |
| Logical connectivity requirements | Control Plane: Multi-point connectivity at the IP interface level (IPv4 or IPv6) between mobile components.  User Plane: Multi-point at the IP interface level (IPv4 or IPv6) between mobile components | This requirement could be met by the use of an L3 or an L2 solution or a combination of the two.  Technology solution for the transport network to meet these requirements will be covered in technology specific O- RAN documents or by transport solutions specified by other organization. Later revisions of this document  will reference these documents. |
| Scope of the transport network for Midhaul and Backhaul | The transport network consists of WAN components, the networking (switching) infrastructure within the DCs and Network Functions (physical or virtual) in DCs.  **R1:** The WAN transport network and the DC transport networks **MUST** inter-operate together and allow end to end connectivity between transport components and creation of transport slices that have components in the WAN and the DC.  Midhaul and Backhaul have strong similarities. These include:   1. IP endpoints with common protocols used in the Midhaul and Backhaul networks. 2. The O-CU is part of the 3GPP Midhaul and the Backhaul network, so from a |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
|  | transport network perspective, Midhaul and Backhaul connectivity is presented by different physical or logical interfaces in the same "Network Function" (NF) and most likely same physical locations.  3) For deployment reasons, some radios in a cell site may be running a D-RAN architecture and other radios may be running a C-RAN architecture. Consequently, the same part of the transport network could be running both Midhaul and Backhaul services.  **R2:** With these commonalities and overlaps strong consideration **MUST** be given by operators to designing, building and operating a single packet orientated transport infrastructure that supports both Midhaul and Backhaul services.  **R3:** In scenarios where a common transport technology is used in Backhaul, Midhaul and Fronthaul then an operator **MAY** choose to build a common end-to-end transport  infrastructure supporting Backhaul, Midhaul and Fronthaul. |  |
| Transport network scale for Backhaul | **R4:** For national mobile infrastructures the Transport network architecture:  **MUST** support mobile networks up to 100,000 O-RU locations.  **MAY** support mobile networks up to 500,000 O-RU locations. | The size of a Backhaul infrastructure depend on the radio architecture. In D-RAN scenarios the transport network could potentially need to support these very large numbers of transport endpoints.  The number of endpoints in the Backhaul will be smaller if radio architectures based on Fronthaul, Midhaul or both are implemented.  The architectural solution needs to scale to very large number of transport endpoints without exhausting key transport resources or significantly  inflating the transport solution costs. |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| Transport infrastructure | **Physical interfaces**  Mobile equipment associated with Midhaul and Backhaul present Ethernet interfaces at the data link layer.  In Midhaul and Backhaul the mobile equipment runs IPv4 and/or IPv6 at the network layer.  **User Network Interface - Customer (UNI-C) R5:** The Midhaul and Backhaul transport network **MUST** support physical Ethernet interfaces at the UNI-C. See Figure to the right.  **R6:** The Midhaul and Backhaul transport network **MUST** support Ethernet services based on a full Ethernet port towards the end-user. For example, an EPL service as defined by MEF 6.2.  **R7:** The Midhaul and Backhaul transport network **MUST** support Ethernet virtual services based on VLANs within an Ethernet port towards the end user. For example, an EVPL services as defined by MEF 6.2  **R8:** The Midhaul and Backhaul transport network **MUST** support subscriber IP services. For example, as defined by MEF61.1.  **R9:** The transport network **MUST** support subscriber IP services on a full Ethernet port basis or over VLANs within an Ethernet port.  **R10:** Subscriber IP services **MUST** be supported over a single UNI Access link.  **R11:** Subscriber IP services **MAY** be supported over:   1. UNI access links terminating on different devices at the SP. 2. UNI Access links terminating on different devices at the SP and the subscriber. 3. UNI Access links terminating on different devices at the subscriber   **R12:** The transport network **MUST** support ingress bandwidth control mechanisms for Ethernet, IPv4 and IPv6. This is applied to traffic flowing across the UNI interface from the subscriber towards the transport network. | See ORAN-WG5 transport specification for Midhaul equipment. [60]  ![]({{site.baseurl}}/assets/images/fc6e6ec67414.png)  .  Refer to MEF 61.1 [68] section 7.3 for more details on IP service UNIs  See MEF 61.1 [68]  "Bandwidth Profiles" for  examples of typical |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
|  | 1. Ingress classification and packet marking 2. Ingress traffic conditioning bases on classes with an Ethernet port. 3. Hierarchical ingress traffic conditioning based on VLANs and classes within the VLAN.   **R13:** The transport network **MUST** support egress bandwidth control mechanisms for Ethernet, IPv4 and IPv6. This is applied to traffic flowing across the UNI interface towards the end-user.   1. Egress traffic conditioning and scheduling based on classes with an Ethernet port. 2. Hierarchical ingress traffic conditioning and scheduling based on VLANs and classes within the VLAN.   **Transport Services**  **R14:** The transport infrastructure **MUST**  support mechanisms to create:   * 1. Basic IPv4 and IPv6 routing infrastructure   2. IPv4 or IPv6 Virtual Private Networks -   any to any   * 1. IPv4 or IPv6 Virtual Private Networks -   controlled access   * 1. IPv4 or IPv6 Virtual Private Networks with extranet   2. EPL and EVPL   3. EP-LAN and EVP-LAN   4. EP-Tree and EVP-Tree   **Transport network QoS and availability R15:** Transport network **MUST** have mechanisms or utilise an architecture that implements Quality of Service based on QoS markings within the actual Midhaul / Backhaul packet.  QoS markings could be Ethernet class of service markings, MPLS class of service marking, IPv4 DSCP or IPv6 traffic class marking. The appropriate QoS scheme will be determined by the transport architecture employed. | actions applied on ingress and egress for IP services  See MEF 10.3  [69]"Bandwidth Profiles" for examples of typical actions applied on ingress and egress of Ethernet services  Refer to MEF 61.1 [68] for details of IP services  Ref to MEF 6.2 [70] for details of Ethernet services |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
|  | **R16:** Transport network **MUST** support QoS / availability mechanisms to enable SLAs to be offered to support 5G slices.  Transport network SLAs for slices cover IP network delay characteristics and IP network availability.  **R17:** Transport network **MUST** support mechanisms to ensure suitable behavioural isolation between transport slices on access and within the core of the transport network.  **R18:** Transport network **MUST** support mechanisms to control and map a transport slice to the transport network's physical topology.  **R19:** Transport network **MUST** implement transport slice protection / restorations schemes that allow 50ms protection of IP connectivity between slice endpoints.  **R20:** The transport network **MAY** support other mechanisms to improve Transport slice reliability between IP endpoints. These could be protection mechanisms or other schemes such as multi-path traffic delivery.  **Transport network OAM and management R21:** Transport equipment (DC and WAN) **MUST** support standard model-based approaches to support basic device and network configuration.  **R22:** If appropriate, transport equipment (DC and WAN) **MUST** support standard model- based approaches to configure transport slices.  **R23:** Transport equipment **MUST** support OAM tools to test link level capabilities.  **R24:** Transport equipment **MUST** support OAM tools to test end to end connectivity.  **R25:** Mechanisms **MUST** exist to determine the liveliness of transport network equipment.  **R26:** Mechanisms **MUST** exist to determine liveliness of services running on the transport network | Note: A transport NSSI is not necessarily a network wide phenomenon. It may only be running in a small section of the network. |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
|  | **R27:** Mechanisms **MUST** exist to determine delay and jitter of services running on the transport network |  |
| Transport slicing for 3GPP Backhaul | **R28:** Transport network **MUST** support network slicing for the 3GPP Backhaul network. | Please refer to Annex B: Slicing in Backhaul and Midhaul |
|  | **Transport slice scale**  **R29:** The transport network slicing architecture **MUST** support the key 5G services and within each service type support 1000s of different customers that require isolation from each other. |  |
|  | **R30:** The transport network slicing architecture **MUST** be capable of extending to every end site and also every DC locations. |  |
|  | **Transport Slice capabilities**  **R31:** The transport slicing solution **MUST** support the creation of slices that span from the WAN into the DC networking infrastructure. |  |
|  | **R32:** Midhaul / Backhaul transport slices  **MUST** allow: |  |
|  | 1. Multi-point connectivity model between IP endpoints. 2. Connectivity between 3GPP components residing solely in the WAN space. 3. Connectivity between 3GPP components residing in either the same data center or different data centers 4. Connectivity between 3GPP components residing in the WAN and 3GPP components residing in a data center. 5. For a NF (physical or virtual) to inject and learn slice connectivity information from either WAN or DC transport components. |  |
|  | **R33:** In situations where an operator builds a common transport infrastructure for Midhaul and Backhaul. Transport slices **MAY** be built so a common transport slice covers both the Midhaul and Backhaul interfaces or they **MAY** be built so there is a dedicated transport slice for |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
|  | Midhaul interfaces and another for Backhaul interfaces.  **Transport slice connectivity models**  **R34:** Transport network **MUST** enable the creation of discrete any-to-any VPNs for different transport slices. End points will be IP entities and may reside in the WAN or a DC.  **R35:** Transport network **MUST** support the ability to run the Midhaul/Backhaul control plane and user plane of a slice in different VPNs.  **R36:** The transport network **MUST** support complete connectivity isolation within a Transport slice so only those entities associated with that slice instance can communicate at the transport layer.  **R37:** The transport network **MUST** support controlled connectivity from within one transport slice to IP entities that are either common to multiple slices or reside in another Transport slice. This is often termed Extranet connectivity  **R38:** The transport network **MUST** support controlled connectivity between IP entities within the same Transport slice.  **Transport slice OAM**  **R39:** Transport network **MUST** support mechanisms to test and report transport slices edge-to-edge connectivity and response times to enable the performance of the transport slice to be monitored.  **R40:** Transport network **MUST** support mechanisms to export transport SLA measurement details to an external storage infrastructure. |  |
| Peak 5G DL data rates | Peak 5G data rates are highly dependent on overall cell site configuration and radio characteristics. This document uses four example site configurations to illustrate bandwidth requirements. Theoretical 5G NR peak data bandwidths for each site type are: Small Site (FR1): 1.8Gbps  Small Site (FR2): 3.3Gbps  Medium Site (FR1 + FR2): 25.8Gbps | See chapter 10 for more details on carrier and sector peak DL bandwidth. |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
|  | Large site (FR1 + FR2): 62.7Gbps |  |
| Peak site 5G DL rates with encapsulation (all carriers and sectors included). | An encapsulation overhead of 10% has been used to calculate the peak 5G DL traffic rates.  Small Site (FR1) (1 sector): 2.0Gbps Small Site (FR2) (1 sector): 3.7Gbps  Medium Site (FR1 + FR2) (3 sector): 28.4Gbps Large site (FR1 + FR2) (3 sector): 68.8Gbps | See chapter 10 for more details and considerations for selecting encapsulation overhead. |
| Transport provisioning | Midhaul and Backhaul traffic is primarily made up of user data and precise levels depend on usage. When provisioning a statistically multiplexed transport network it is normal to assume a statistic multiplexing gain as the network travels from the edge towards the core in such networks  **Access provisioning**  Backhaul traffic is only present on access circuits in D-RAN architectures.  Midhaul traffic is only present on access circuits when the RU/DU are co-located on the cell site.  Using the four example site configurations and the empirical dimensioning rule outlined in chapter 10 shows the following bandwidth would be required on the access circuit. These figures are similar for scenarios where the access circuit supports Backhaul or Midhaul.  Small Site (FR1 carrier only): ~2.0Gbps Small Site (FR2 carrier only): ~3.7Gbps  Medium Site (FR1 + FR2 carriers): ~15.2Gbps Large site (FR1 + FR2 carriers): ~36.8Gbps  **Pre-Aggregation and Aggregation**  Dependent on SPs specific transport dimensioning and capacity planning rules. The statistical gain will increase as the traffic moves from the access towards the mobile core if the traffic is traversing statistically multiplexing equipment. | See chapter 10 for more details on different provisioning rules.  It should be noted that even in single sector cell sites operators can choose to provision the access capacity below the peak radio rate of the site. |
| Transport Technology | Not part of the scope of this document. | Please refer to specific technology orientated documents coming from WG-9 for technology and  architectural details. |
| End to end Backhaul Transport delay (one way) | Delay constraint for Backhaul are derived mainly from the target service's latency requirements, rather than specific requirements of the Backhaul's user or control planes. As | Dependent on 5G service type. See 10.3 |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
|  | service delay targets become tighter it may become necessary to:   1. Place Midhaul and Backhaul mobile components in close proximity to each other to reduce the delay impact of the transport network. For example, O-DU, O-CU and UPF in the same data center. 2. Combine mobile functions together so 3GPP interfaces run internally within a "Network Function" or within a data center to remove the delay impact associated with the WAN transport network. For example, combining O-RU, O-DU and O-CU or combining the O-DU and O-CU functions together.   1ms - 50ms service dependent. |  |
| Synchronization / timing requirements | See chapter [11] for synchronization and timing requirements. |  |

</div>

#### Table 6: Common Midhaul / Backhaul Xhaul transport requirements plus specific Backhaul

1. **requirements**

3

1. NOTES:
2. 1) The above tables reference various documents from other standards organizations (for
3. example the MEF). It is important to note that the requirement does not imply that the
4. transport equipment, nor the transport network needs to be compliant with these particular
5. documents. Rather these documents provide a good explanation or definition of the capability.
6. 2) Technology solution for the transport network to meet these requirements will be covered in
7. technology specific O-RAN documents or by other organizations specify transport solutions. 11

12

13

# 10 Transport network dimensioning for Midhaul and

* 1. Backhaul
  2. The Backhaul and Midhaul segments of a 5G network have many similarities in terms of
  3. dimensioning and provisioning rules which feed through to the transport network as requirements.
  4. This chapter covers transport dimensioning for Midhaul and Backhaul. 6

## 10.1Transport capacity and radio density with 5G

1. 5G represents a significant increase in capacity and size of the transport network over previous 3GPP
2. generations. A common quote is 5G will bring a ten-fold increase in capacity, number of radios and
3. end-user devices when compared with LTE.

## 10.2Backhaul and Midhaul transport planning

1. Traffic rates in Midhaul and Backhaul traffic rates are highly dependent on end user usage and it is
2. possible to dimension and provision the transport network for Midhaul and Backhaul assuming a
3. statistic multiplexing gain. The precise gain will vary depending on the architecture of the transport
4. infrastructure and the RAN architecture. There are three steps in dimensioning the transport network
5. for Midhaul and Backhaul:

17

1. 1) Calculate the peak rate for sectors within a site
2. 2) Add Midhaul and Backhaul transport overheads
3. 3) Calculate peak and average site usage
4. 4) Apply a statistical multiplexing factor to determine the bandwidth to provision in various
5. parts of the Midhaul and Backhaul transport network.

### 10.2.15G NR peak bandwidth

1. 5G NR increases the data volumes seen in Backhaul, and if implemented in Midhaul, compared with
2. previous generations of 3GPP technology. The formula below calculates the peak 5G data bandwidth
3. for a single sector site.

![A screenshot of a cell phone  Description automatically generated]({{site.baseurl}}/assets/images/4d9b4354998e.jpg)

27

28 Where

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

* j is the sum of the carriers
* v(j) is the number of MIMO layers

layers

* Q(j) is the modulation order 2 - QPSK

m

4 - 16QAM

6 - 64QAM

8 - 256QAM

* f(j) is the scaling factor
* Rmax is 948/1024
* NBW(j),? is RB allocation. Determined by subcarrier spacing, which can be elucidated from numerology (?) and bandwidth.

PRB

1 o T? = 10-3

is the average OFDM symbol duration in a subframe for numerology

s 14 x2?

1. o ? is the numerology (0-15kHz SCS, 1-30kHz SCS, 2-60kHz SCS, 3 - 120kHz SCS)
2. o OH(j) is the overhead (0.14-FR1 DL, 0.18-FR2 DL, 0.08-FR1 UL, 0.10-FR2 UL)

4

1. For explanation of above formula see 3GPP TS 38.306 version 15.2.0 Release 15 [71] There are also
2. multiple b/w calculators on the worldwide web. For example: [https://5g-tools.com/5g-nr-throughput-](https://5g-tools.com/5g-nr-throughput-calculator/)
3. [calculator/](https://5g-tools.com/5g-nr-throughput-calculator/) which calculates both "Frequency Division Duplex" FDD and "Time Division Duplex"
4. (TDD) use cases.

9

#### Notes

1. 1) The calculated data rate is the theoretical maximum achievable by the radio/radios. Real data
2. rates depend on the radio placement, configuration of the cell site, the surrounding area,
3. number of active UEs, their capabilities and usage.
4. 2) This figure does not include Backhaul or Midhaul transport overhead; namely IP/UDP and
5. GTP and potentially IPSEC encapsulation. 16
6. Table 7 shows the peak downlink (DL) data rates for some of the radio profiles outlined in Annex A
7. of Fronthaul Interoperability Test Specification (IOT) document and the 5G NR radio components
8. used in the small, medium and large sites examples used throughout this document. 20

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| O-RAN IOT  Profile or site profiles | Frequency range | Mode | Carriers (j) | MIMO layers v(j) | DL  Modulation | B/W (MHz) | ? | TDD slot format | Peak DL b/w (Gbps) |
| Profile 1&2 | FR1 | TDD | 1 | 4 | 256QAM | 100 | 1 | Format 25 | 1.84 |
| Profile 3 (low) | FR2 | TDD | 1 | 2 | 256QAM | 100 | 3 | Format 25 | 0.85 |
| Profile 3 (high) | FR2 | TDD | 8 | 2 | 256QAM | 800 | 3 | Format 25 | 6.77 |
| Profile 1 | FR1 | FDD | 1 | 8 | 256QAM | 30 | 0 | NA | 1.37 |
| Profile 2 | FR1 | FDD | 1 | 8 | 256QAM | 20 | 1 | NA | 0.87 |
| Profile 3 | FR1 | FDD | 1 | 4 | 256QAM | 30 | 1 | NA | 0.67 |
| Profile 4 | FR1 | FDD | 1 | 4 | 256QAM | 20 | 0 | NA | 0.45 |
| Small site -FR1 | FR1 | TDD | 1 | 4 | 256QAM | 100 | 1 | Format 25 | 1.84 |
| Small site-FR2 | FR2 | TDD | 1 | 2 | 256QAM | 400 | 3 | Format 25 | 3.39 |
| Medium site | FR1 | TDD | 1 | 4 | 256QAM | 100 | 1 | Format 25 | 1.84 |
| Medium site | FR2 | TDD | 1 | 4 | 256QAM | 400 | 3 | Format 25 | 6.77 |
| Large site | FR1 | TDD | 1 | 16 | 256QAM | 100 | 1 | Format 25 | 7.34 |
| Large site | FR2 | TDD | 2 | 4 | 256QAM | 400 | 3 | Format 25 | 13.54 |
| Notes  Frequency Range (FR1) refers to frequencies below 7.225 GHz  Frequency Range (FR2) refers to frequency bands from 24.250 GHz to 52.6 GHz spectrum (also referred to as "millimeter wave range") FDD mode: both uplink and downlink can transmit at the same time at different spectrum frequencies.  TDD mode, both uplink and downlink use the same spectrum frequencies but at different times. Format 25 allocates 0.785714286 bandwidth to downlink  Calculation for a 1 sector cell site. | | | | | | | | | |

</div>

21

1. **Table 7: Peak Backhaul DL bandwidth for a selection of O-RAN IOT and 5G NR site**
2. **examples**

### 10.2.2Site peak data rates

1. To calculate the maximum downlink bandwidth, it is necessary to sum the bandwidths associated
2. with all radios in the site and add encapsulation overhead. The peak 5G NR DL data rates associated
3. with the three example site profiles; small, medium and large are shown below. 28
4. Note: Only the 5G radio components are considered. In the real-world, previous generations of 3GPP
5. technology will most likely be deployed alongside 5G NR, so these components also need to be added. 31

32

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Frequency range | Mode | sectors | Carriers (j) | MIMO layers v(j) | DL  Modulation | B/W (MHz) | ? | TDD slot format | Single sector DL b/w (Mbps) | Peak site DL b/w (Gbps) |
| FR1 | TDD | 1 | 1 | 4 | 256QAM | 100 | 1 | 25 | 1836 | 1.84 |
|  | | | | | | | | | |  |
| **Total (Gbps)** |
| 1.84 |

</div>

#### 1 Table 8: FR1 small site peak DL data bandwidth

2

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Frequency range | Mode | sectors | Carriers (j) | MIMO layers v(j) | DL  Modulation | B/W (MHz) | ? | TDD slot format | Single sector DL b/w (Mbps) | Peak site DL b/w (Gbps) |
| FR2 | TDD | 1 | 1 | 2 | 256QAM | 400 | 3 | 25 | 3386 | 3.39 |
|  | | | | | | | | | |  |
| **Total (Gbps)** |
| 3.39 |

</div>

#### 3 Table 9: FR2 small site peak DL data bandwidth

4

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Frequency range | Mode | sectors | Carriers (j) | MIMO layers v(j) | DL  Modulation | B/W (MHz) | ? | TDD  slot format | Single sector DL b/w  (Mbps) | Peak site DL b/w (Gbps) |
| FR1 | TDD | 3 | 1 | 4 | 256QAM | 100 | 1 | 25 | 1836 | 5.5 |
| FR2 | TDD | 3 | 1 | 4 | 256QAM | 400 | 3 | 25 | 6772 | 20.3 |
|  | | | | | | | | | |  |
| **Total (Gbps)** |
| 25.82Gbps |

</div>

#### 5 Table 10: Medium site peak DL data bandwidth

6

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Frequency range | Mode | sectors | Carriers (j) | MIMO layers v(j) | DL  Modulation | B/W (MHz) | ? | TDD  slot format | Single sector DL b/w  (Mbps) | Peak site DL b/w (Gbps) |
| FR1 | TDD | 3 | 1 | 16 | 256QAM | 100 | 1 | 25 | 7344 | 2.32 |
| FR2 | TDD | 3 | 2 | 4 | 256QAM | 400 | 3 | 25 | 13544 | 40.63 |
|  | | | | | | | | | |  |
| **Total (Gbps)** |
| 62.67 |

</div>

#### 7 Table 11: Large site peak DL data bandwidth

8

1. To calculate the peak Backhaul and Midhaul transport bandwidth, add the network encapsulation
2. overhead. This can be done by:
3. 1) Calculating the packet per second
4. 2) Adding the network encapsulation overhead
5. 3) Calculating the transport bandwidth

14

1. Network encapsulation overhead depends on a number of factors including:
2. ? L1/L2 technology
3. ? IPv4 or IPv6
4. ? Average packet size
5. ? Mobile encapsulations
6. ? Whether the Midhaul / Backhaul are running IPSEC or not. 21
7. The NGMN Backhaul group in "Guidelines for LTE Backhaul Traffic Estimation" [72] use an
8. overhead of 10% to represent a general case for Backhaul (it is also applicable to Midhaul). For an
9. Ethernet transport, IPv4, with no IPSEC encryption and an IMIX packet size (576 bytes) this is a
10. good approximation. If IPSEC is providing Midhaul or Backhaul encryption, then the packet size
11. increases due to the IPSEC overhead. In this scenario NGMN Backhaul group in "Guidelines for LTE
12. Backhaul Traffic Estimation" [72] use an overhead of 14%. 28

29

1

2

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Site Type | Peak Backhaul b/w (Gbps) |
| Small (FR1) | 2.0 |
| Small (FR2) | 3.7 |
| Medium | 28.4 |
| Large | 68.8 |

</div>

3

4

1. Notes:

#### Table 12: Peak Backhaul site bandwidth

1. 1) Midhaul and Backhaul traffic is IP and use GTP as an encapsulation for user traffic. One of
2. the main differences is Midhaul traffic carries the "Packet Data Convergence Protocol"
3. (PDCP), while Backhaul does not. This would suggest that Midhaul traffic volumes are
4. greater than Backhaul traffic volumes, however although PDCP adds overhead it can, through
5. Ethernet and IP header compression reduce the size of the user's packet size. For this reason,
6. this document treats Backhaul and Midhaul traffic requirements as the same.

### 10.2.3Estimating cell site loads

1. Backhaul and midhaul cell site throughput is the sum of all the traffic generated by all UEs using that
2. site. UE throughput varies depending on the quality of the radio link to the gNB and the amount of
3. spectrum assigned to it. 5G radios use adaptive modulation to adjust their data rates based on the
4. radio conditions. In good conditions, where the UE has good signal strength from the radio and there
5. is little interference, more information can be carried without errors for each unit of spectrum. This
6. is in contrast with scenarios where the UE has low signal strength from the radio and interference
7. levels are high. This is called spectrum efficiency and measured in bits per second, per Hz. 20
8. The highest radio throughput occurs when there is high spectral efficiency and largest spectrum
9. allocation for UEs. Typically, this occurs at quiet times when there are a small number of active UEs
10. that is in close proximity to the radio. This is known as the Quiet Time Peak rate. As the number of
11. UEs and distribution of UE's around the cell site increases, so the busy time mean rate is seen. This
12. is normally significantly lower than the quiet time peak rate and is impacted by interference between
13. radios, carriers and UEs, along with environmental factors that impact signal strength and interference
14. such as physical location of the cell site, its surroundings and other sources of interference. 28
15. In the provisioning examples shown in Table 13, busy time mean has been calculated as 30% of quiet
16. time peak. This is applicable to 4G implementations, however at this time it is not clear whether this
17. figure is appropriate to 5G NR. Transport engineers will need to liaise with the radio engineers to
18. ascertain this figure for 5G environments.

### 10.2.4Transport dimensioning and provisioning for Backhaul and Midhaul

1. Regardless of the RAN architecture employed, the transport network consists of various segments.
2. Figure 13 shows two of the most common splits of the transport network between the radio and the
3. 5G core. In the first, there are three layers of transport infrastructure; access, pre-aggregation and
4. aggregation. In the second, there are two layers of transport infrastructure; access and aggregations.
5. In both cases the transport network needs to be considered as a whole, however potentially different
6. technologies and provisioning rules apply in each segment. 40
7. Notes: Neither diagrams show the core of the transport network which tends to be behind the 5G core
8. components.

3

![A close up of a device  Description automatically generated]({{site.baseurl}}/assets/images/be99e37fec5f.jpg)

4

#### Figure 13: 5G Backhaul infrastructure overlays the transport infrastructure consisting of

1. **physical networks. Source: Cisco**

7

1. 10.2.4.1 D-RAN Backhaul dimension
2. In a D-RAN architecture the Backhaul component of the network goes from the cell site to mobile
3. core which tend to be positioned centrally.
4. 10.2.4.1.1 Access (last mile) provisioning
5. Access or last mile provisioning depends on the number of radios in each cell site location. 13
6. NGMA in "Guidelines for LTE Backhaul Traffic Estimation" [72] recommends for single cell last
7. mile provisioning should be based on quiet time peak rate of the cell. 16
8. For multi-sector / multi-carrier cell sites then a statistical gain can be achieved on the last mile because
9. it is unlikely that quiet peak time peaks will occur simultaneously on all radios. NGMA in "Guidelines
10. for LTE Backhaul Traffic Estimation" [72] outlines a number of potential provisioning approaches
11. for multi-sector, multi-carrier cell sites. 21
12. 1) Peak rate provisioning: In this case it is assumed that peak throughput occurs at the same time
13. on all cells. NGMN point out this is a worst-case scenario and is highly unlikely to occur in
14. practise and would be an expensive provisioning strategy. 25

26 2) Lower bound provisioning: This assumes peaks are uncorrelated but that the busy time mean

27 applies to all cells simultaneously. The provisioning for N off eNBs is therefore the larger of

28 the single cell peak or N x the busy time mean, thus: 29

30 *Lower Provisioning Bound for N cells = Max (peak, N x busy time mean)*

31

32 Applying this to a 3-sector D-RAN site then 33

34 *Access (last mile) dimensioning=Max (1 x peak, 3 x busy time mean)*

35

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| 1 |  | |
| 2 | 3) | A more conservative approach assumes that whilst one cell is peaking, the others are |
| 3 |  | generating traffic at the mean busy time rate, thus: |
| 4 |  |  |
| 5 |  | *Conservative Lower Bound for N cells = Max [peak+(N-1) x busy time mean, N x busy time mean]* |
| 6 |  |  |
| 7 |  | Applying this to a 3-sector D-RAN site then the general last mile provisioning rules is to use |
| 8 |  |  |
| 9 |  | *Access (last mile) dimensioning = peak +(2 x busy time mean)* |
| 10 |  |  |
| 11 |  |  |

</div>

1. In Table 13 the access bandwidth needed to cater for 5G example cell sites are shown using peak
2. quiet time provisioning for single carrier, single sector sites. For multi-carrier, multi-sector sites a
3. comparison is made between peak rate quiet time provisioning, lower bound provisioning and
4. conservative bound provisioning. 16

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Site Type | Carrier types | Sector s | Quiet Time Peak sector rate  (Mbps) | Busy time sector mean  (Mbps) |  | Lower provisioning bound (Gbps) | Conservative provisioning bound  (Gbps) | Peak rate provisioning (Gbps) |
| Small (FR1) | FR1  carriers | 1 | 2020 | 606 |  | N/A (single sector,  carrier) | N/A (single sector,  carrier) | 2.0Gbps |
|  |  |  | **Total site** |  | **N/A** | **N/A** | **2.0Gbps** |
|  | | | | | | | | |
| Small (FR2) | FR2  carriers | 1 | 3724 | 1117 |  | N/A (single sector) | N/A (single sector) | 3.7Gbps |
|  |  |  | **Total site** |  | **N/A** | **N/A** | **3.7Gbps** |
|  | | | | | | | | |
| Medium | FR1  carriers | 3 | 2020 | 606 |  | 2.0Gbps | 3.2Gbps | 6.1Gbps |
| FR2  carriers | 3 | 7449 | 2234 |  | 7.4Gbps | 11.9Gbps | 22.3Gbps |
|  |  | | **Total site** |  | **9.5Gbps** | **15.2Gbps** | **28.4Gbps** |
|  | | | | | | | | |
| Large | FR1  carriers | 3 | 8078 | 2424 |  | 8.1Gbps | 12.0Gbps | 24.2Gbps |
| FR2  carriers | 3 | 14898 | 4470 |  | 14.9Gbps | 23.8Gbps | 44.6Gbps |
|  |  | | **Total site** |  | **23.0Gbps** | **36.8Gbps** | **68.9Gbps** |

</div>

17

18

#### 19 Table 13: Last mile provisioning for 5G Backhaul (peak, lower and conservative bound)

20

21 Notes:

22

23 1) In this example small sites are single sector, single 5G carrier sites. With additional carriers

24 (4G or 5G) then a statistical gain can be achieved. 25

26 2) Medium and large sites are 3 sector, multi-carrier 5G sites.

1

1. 3) Access circuit dimensioning only accounts for 5G services. 2G, 3G, 4G also needs to be
2. considered as well. (discussed in more detail later). 4
3. 4) Busy time mean is taken as 30% of peak quiet time rate for a sector. This number has been
4. picked antidotally through discussions with an LTE MNO. There is on-going discussion
5. whether this ratio will apply to a 5G NR implementations as the ratio between quiet time peak
6. rate and busy time mean rate may change. 9
7. 5) There is on-going discussion in the industry about whether these formula for LTE
8. provisioning will apply in the 5G NR access circuits. 12
9. 6) In the case of point-point last mile access technologies, the values in the table can be taken
10. per cell. In the case of point-multipoint access technologies using a shared medium (e.g.; PON,
11. DOCSIS), the last mile itself already performs a level of aggregation between multiple cells,
12. and section 10.2.3.2 applies.

17

1. 10.2.4.2 Pre-aggregation and aggregation transport dimensioning
2. If the transport technology and the network design enable statistical multiplexing, then the initial
3. provisioning for Backhaul in the "pre-aggregation" and the "aggregation" segments of the transport
4. network is based on predicting the level of statistical multiplexing. This will be based on network
5. usage, network topology, levels of aggregation at different layers and usage / traffic correlation
6. between adjacent cell sites. 24
7. A similar initial provisioning approach could be taken as outlined by NGMA in "Guidelines for LTE
8. Backhaul Traffic Estimation" [72] as discussed in previous section. However, when looking at
9. aggregated Backhaul traffic then more emphasis needs to be placed on mean busy time rates than
10. peak rates and mean busy time rates need to be calculated across multiple cell sites not across a single
11. site (in most situations this will push the value down). 30
12. Longer term provisioning will be based on collecting accurate traffic matrixes at the transport layer,
13. demand level modelling and developing capacity plans rule. 33

### 10.2.5C-RAN Backhaul dimensioning

1. In C-RAN architectures the access or last mile segment of the transport is not part of the Backhaul
2. network. In these environments Backhaul dimensioning and capacity planning will be a function of
3. the number of DUs each CU aggregates and where the CUs and UPF/UPFs resides in relation to each
4. other and their overall position in the transport infrastructure. 39

### 10.2.6Midhaul dimension

1. The Midhaul RAN component is only present in C-RAN architectures Figure 5 shows two
2. deployments of Midhaul. In the top case the O-RU, O-DU and O-CU reside as discrete entities and
3. at different levels of the transport network. In this case the Midhaul does not span the access portion
4. of the network. Similar considerations as outlined in C-RAN Backhaul dimensioning can be used. 45
5. In the lower case the O-RU and O-DU are co-located in the cell site and the Midhaul runs from the
6. cell site, across the access infrastructure to the O-CU which is located higher up in the transport
7. network. Similar techniques as outlined in D-RAN Backhaul dimensioning can be used.

## 10.3Backhaul and Midhaul latency

1. Previous 3GPP generations aimed at voice and basic data services. In these scenarios' user plane one-
2. way delay between the UE and the application could be multiple 10s of milliseconds, even reaching
3. the low hundreds of milliseconds. These figures are the delay from the UE to the destination
4. "Application Function".
5. In a 5G RAN infrastructure this is made up of:

10

1. *Overall one-way delay = UE delay + Radio air interface delay + FH/MH/BH transport networking*
2. *delay + Radio component delays (DU, CU if used) + gateway delay + GiLAN transport network*
3. *delay*

14

1. 5G introduces support for different service types (eMBB, URLLC and mMTC) and aims to cover a
2. wide range of vertical markets, such IoT, industrial and automobile. Different services and verticals
3. have different latency requirements, some extremely tight such as industrial motion control
4. applications while others, such as some of IoT applications very relaxed. 19
5. As an example, in the latest TR 22.804[85] the lowest maximum latency requirement for deterministic
6. communication service is defined as 0.5ms for small industrial environments (50 m x 10 m x 10 m)
7. with small packet sizes for motion control. A higher maximum latency of 500ms is given for periodic
8. communication for standard mobile robot operation and communication services for CCTV
9. surveillance cameras in mass rail transit with defined speeds of movement for each UE (UE speed <
10. 50 km/h for mobile robots and <= 160 km/h in urban environments).

26

1. In scenarios where low one-way latency is required then the Midhaul and Backhaul networks will
2. need to be designed to accommodate these requirements. As the latency requirements become tighter
3. the following needs to be considered. 30
4. 1) Proximity and physical path between the UE and AF
5. 2) Siting of gateway and AFs in relation to each other
6. 3) Delay characteristics of the physical media
7. 4) Delay characteristics of the RAN components (radio, DU, CU)
8. 5) Number of physical hops and delay characteristics of the switching equipment
9. 6) Whether the network is a public 5G or private 5G infrastructure. 37
10. Figure 2 illustrates how adapting the RAN architecture and placement of RAN and "Application
11. Function" (AFs) components can change the end-to-end latency characteristics of overall 5G
12. infrastructure.

41

# 1 11 Transport operability

2

1. This section concerns transport requirements to ease operability of the transport. This section includes
2. a first sub-section about transport system requirements, a second about transceiver and port
3. monitoring and identification of the transport equipment, a third sub-section about power saving and
4. energy efficiency. A last sub-section concerns an optional additional interface dedicated to remote
5. monitoring of antenna site operation. 8

## 11.1Operational transport requirements

### 11.1.1Transport equipment at antenna site

1. It is highly desirable from the network operation perspective to manage a network transport system,
2. i.e., the equipment at the hub site together with the equipment at the antenna site, as a single entity.
3. In that sense, it is desirable that the equipment at the antenna site is managed via the equipment at
4. hub site whenever possible. Therefore, transport equipment shall support real-time management and
5. control functions of antenna site equipment by the hub site equipment. 16

### 11.1.2Dual manage transport equipment at antenna site

1. The transport equipment at the antenna site shall optionally support collaborative management
2. partition between the dedicated management by the transport equipment at hub site and also other
3. configuration mechanisms.

21

### 11.1.3Supervision

1. It is important to take care of operational expenditure dedicated to the medium of the transport and
2. related equipment. The goal of supervision is to reduce the operational expenditure of the transport
3. systems, without significantly increasing the capital expenditure by including as much test and
4. diagnostic capability as possible. Naturally, this should be achieved without compromising the
5. available bandwidth for services, i.e., test and diagnostics must be non-service affecting.
6. The ability to reliably differentiate between optical medium and electrical faults at the equipment and
7. establish if the faults are in the optical medium or in the electronics is a key operator requirement.
8. Error inference can usually be made from the presence (i.e., power or equipment failure), or absence
9. (i.e., fibre failure), of the Dying Gasp alarm. Several key points for the supervision can be summarized
10. as follows:
11. ? optical medium monitoring/checking: Monitoring and on-demand checking the condition of
12. optical medium independently from a transport system is important to differentiate optical
13. medium failures from transport system failures. It is desirable that such monitoring and
14. checking be available regardless of whether the transport equipment antenna site is in service
15. or even connected. Several implementations could be proposed. Optical monitoring solution
16. is proposed by ITU-T G.697 to detect anomalies, defects, degradation and fault affecting the
17. quality of the optical transport. Another solution is to use an optical time domain reflectometer
18. (OTDR) which is a powerful tool for diagnosing such faults in the optical medium. Power
19. meter and light source can also be used to aid in this monitoring process. Several demarcation
20. devices are under research for further improving the optical medium monitoring and checking.
    1. - transport system would benefit from an ability to automatically and autonomously detect and
    2. locate optical medium fault (optical medium segments : patch panel at the hub or antenna site,
    3. optical fiber cable in ducts or on the poles,..).
    4. - End-to-end performance monitoring up to the Ethernet layer: End-to-end performance
    5. monitoring enables operators to diagnose and register where traffic may have been dropped
    6. or throttled. Higher layer tools, such as Ethernet performance monitoring, need to support the
    7. capability monitoring and verification of ingress and egress traffic flows in transport network
    8. elements.
    9. - Proactive versus reactive repair: transport systems with their monitoring and control systems
    10. will allow operators to decide on the utilization of proactive or reactive fault repairs in most
    11. fault cases. It is of course up to the operators to decide on how to use transport status reports.
    12. - For instance, key-performance-indicators related to the optical transport supervision could be
    13. made available to an orchestrator, higher in the network, through an abstraction of the optical
    14. devices through software-defined networking. 15

### 11.1.4Rogue behaviour and its mitigation in access transport segment

1. This clause is largely concerned with rogue behaviour between FTTH (Fiber To The Home) based
2. on PON (Passive Optical Network) technologies and Xhaul access transport operations in last mile
3. optical fiber infrastructure. The transport equipment at the antenna site must be initially disabled in
4. order to avoid disturbing PON system in case of miss-connection in the optical fiber enclosure. The
5. antenna site transport equipment shall enable the transmitter to enter a handshaking process with hub
6. equipment only after confirming that the frame structure and/or the line coding of the received
7. downstream signal are matched with those the antenna site equipment complies with. This
8. confirmation shall be done with both hub and antenna site equipment. 25
9. The Xhaul transport equipment must support silent start operation to prevent bidirectional physical
10. layer interfering with FTTH based on point to multi-point. The silent start means that the upstream
11. physical layer doesn't transmit unless a valid downstream signal is received.

29

30

### 11.1.5Transport availability

1. Operators need to determine the most resilient transport architecture for their reliable mobile services.
2. Transport system should include a range of cost-effective resilience options to obtain the targeted
3. availability of mobile services. These resilience schemes should be options available on the transport
4. scenarios for passive and active equipment. Different types of service and specific offerings will
5. require different recovery speeds. These may range from a few microseconds, for critical services
6. like motion control for factories of the future, up to the order of seconds or minutes for monitoring or
7. remote control applications. Note that support for resilience options should not increase the cost of
8. such systems if deployed without resilience options. 40
9. The protection architecture should be considered as one of the means to enhance the reliability of the
10. Xhaul transport. However, protection shall be considered as an optional mechanism because its
11. implementation depends on the realization of economical systems. It is also likely that other methods
12. are used, such as cooperative technologies, e.g., fixed (optical fiber) and radio (micro-wave) for
13. backup for cost reasons. 46
14. Combining protection mechanisms related to Xhaul transport interfaces and the optical fiber
15. infrastructure should even be possible, provided that the switching time of the two mechanisms is
16. compatible or configurable. The goal should be to recover the Xhauling service in less than the
17. common 50 ms value used for protection. 5

6

## 7 11.2Transceiver and port monitoring and identification

8

### 9 11.2.1Transceiver digital diagnostic monitoring

10

1. A digital diagnostic monitoring interface for optical transceivers is used to allow access to device
2. operating parameters. As specified in SFF-8472 and SFF-8636, data is typically retrieved from the
3. transceiver module in a memory map of an EEPROM. Such data must be available by the data plane.
4. With QSFP and other advanced form factor transceivers, the optical links could be multi-wavelength
5. (4xTx & 4xRx) and/or multi-fibers (MPO - Multifiber Parallel Optic). The antenna site and hub
6. interface management must describe a management applicable to any kind and group of media lanes.
7. The QSFP digital diagnostic (SFF-8636) describes such media lanes. 18

### 11.2.2Transceiver class of operation for bidirectional transmission

1. A plurality of transceiver modules is used today and can define operational states for pluggable form
2. factors (like SFP, SFP+, SFP28, XFP and QSFP, QSFP+, QSFP14, QSFP28, CFP, CFP2...). Each
3. transceiver is associated with a unique interface name and port number value.
4. Concerning fiber connectivity, in the last mile network (fixed access network to reach antenna)BiDi
5. (BiDirectional - single singlemode fiber) transceiver is the preferred implementation to simplify
6. operation (risk of mismatch...), reduce the cost and the dimensioning of fiber cable and reduce
7. potential path delay asymmetry. 27
8. The interoperability between transceiver at antenna site and hub is a must. Operations at antenna site
9. and hub must support different timeline operation, refresh and other network operations requiring
10. different purchasers of transceivers. In order to achieve this interoperability, working classes have to
11. be clearly identified for the required transceivers. 32

### 11.2.3Transceiver class of operation for WDM transmission

1. In order to save optical fiber, wavelength division multiplexing (WDM) could be proposed. It is
2. already the case for high bit rate transceivers (ex. 100GBase interface) with multiple wavelength per
3. stream and per fiber. In case that Xhaul transport uses WDM transmission, a single fiber operation
4. (bidirectional multiple wavelength) will ease network operations. This single fiber operation concerns
5. the colorized transceiver plugged in transport equipment ports and thus sharing optical fiber
6. infrastructure. This single fiber operation is important for the last mile fiber infrastructure to reach
7. the antenna site. One optical fiber per stream could be also proposed. 41
8. The wavelength assignment per port could be static or tuneable. Auto-tuneable wavelength allocation
9. simplifies inventory management. Each wavelength channel is tuned thanks to an embedded control
10. channel. This control channel must be interoperable to ease network operations. Similar to previous
11. subsection, interoperability is a must for WDM operation and working classes (including optical
12. spectrum parameters) have to be clearly identified. 3

### 11.2.4Port-ID to ease field operation

1. In order to facilitate retrieval of the transport port identifier and other physical layer parameter
2. indicators (ex. Launched optical power) during field operation (installation, maintenance,...), a port-
3. ID could be tagged on the transport hub equipment. As an example, comparison of the locally
4. measured optical power and the launched optical power information inside the port-ID should give
5. operators a mean for measuring optical power budget. Optical monitoring and supervision parameters
6. could refer to ITU-T G.697 for WDM systems and ITU-T G.988 for access systems based on received
7. signal strength indicator of transceivers. 12

### 11.2.5Eye safety

1. Given the higher launched optical power that can be injected into the fibre by transport equipment,
2. both at the antenna and hub sites, all necessary mechanisms must be provided to insure that no eye
3. damage can be caused to the end users unaware of the risks, especially if fibre is terminated inside
4. public facilities (small cell). All transport equipment need to conform to eye safety classes. For access
5. transport segment, the equipment must conform to the class 1M at the hub and class 1 at the antenna
6. site defined in IEC 60825-2.

20

## 11.3Power saving and energy efficiency

1. Saving energy in telecommunications network systems has become an increasingly important concern
2. in the interest of reducing operators' operational expenses (OPEX) and the network's contribution to
3. greenhouse gases. The power saving mechanism could be applied to reduce power consumption either
4. continuously or during a time period. 26
5. Transport equipment need to achieve a power saving mechanism in coordination with CORE and
6. RAN equipment like O-CU, O-DU and O-RU. Coordination interface could be proposed to achieve
7. such mechanism. Antenna and hub equipment may provide the best network energy efficiency
8. experience combining both sleep periods approaches when the link is idle and line rate switching
9. according to the actual payload to be conveyed. For the latter case, it is essential to enable the
10. necessary logic to adapt the clock rate or number of active ports and wavelengths to the necessary
11. payload at border equipment. 34
12. In order to provide the most energy efficient transmission for variable traffic loads, antenna site and
13. hub equipment must have the ability to adapt to it. As an example, transport equipment must provide
14. a dynamic auto-negotiation of the Ethernet PHY line rate between antenna site and hub equipment
15. and this should be enabled among the plurality of Ethernet PHY line rates supported according to the
16. actual payload. For multi-wavelength transport (or transceiver), the number of active wavelength pair
17. could be adapted to support the required traffic. 41
18. Because of the high clock quality requirements, and long recovery time of clock recovery circuitry,
19. no phase drift will be permitted in the downstream direction when switching line rate. Also, such
20. switching will have to be hitless, i.e., without any Ethernet packet loss whatsoever.

## 11.4Remote monitoring antenna site operation

1. The antenna tower site requires also a remote monitoring of sensors and actuator (collection of alarm,
2. active action on site...) for environmental, power, tower light, building and facility. This remote
3. operation requires a logical link with a master unit at the hub site or other remote site. This link could
4. be based on Ethernet (Fast or GigaEthernet). This link should be considered by the transport system
5. between antenna site and hub site. 7

## 8 11.5Operability requirements

9 Table 14 captures operability transport requirements. 10

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| Capability | Requirements | Notes |
| Management | The transport equipment at the antenna site MAY be managed via the transport equipment at the hub site. |  |
| Supervision | The transport equipment supervision MUST differentiate equipment and infrastructure faults. |  |
| Rogue behaviour | For access network segment, the transport equipment at antenna site MUST support mechanism to avoid disturbing other network operations like silent start network function | This requirement allows to prevent jamming transmission on the FTTH networks in cases  of unintentional connection. |
| Availability | Operator MAY choose to use resilience mechanism for transport equipment and infrastructure. | Technology solution to meet this requirement will be covered based on coordination with CORE and RAN equipment. |
| Transceiver | The transport equipment MUST provide the digital diagnostic data of transceivers. The interoperability between transceivers at antenna site and hub is a MUST. Operator MAY choose to select bidirectional (single fiber) to ease operation. In case of WDM transport equipment, operator MAY choose auto- tunable wavelength transceivers. |  |
| Port ID | For antenna site operation, optical  monitoring and supervision parameters MUST be supported for remote operations. |  |
| Eye safety | The transport equipment for access segment MUST be conform to the class 1M at the hub and class 1 at the antenna site defined in IEC 60825-2 |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| Power saving energy efficiency | The transport equipment MUST be capable to support power saving mechanism. | Technology solution to meet this requirement will be covered based on coordination with CORE and RAN equipment. |

</div>

1

#### 2 Table 14: Operability transport requirements

3

4

# 12 Synchronization

1. This chapter spells out synchronization requirements for fronthaul networks in alignment with WG
2. CUS specification [74].

## 12.1 Frequency, Phase and Time Accuracy Requirements

1. The following set of synchronization requirements have been identified as relevant for O-RAN:
2. o Radio frame alignment (O-RU radio interface)
3. o Absolute sync to support TDD : relative 3us between antennas is transformed into +/-
4. 1.5us with regarding to a common reference(e.g. GNSS)
5. o Relative sync to support radio coordination functions. Most stringent requirement
6. between "non-collocated" O-RUs is 260 ns TAE. Other applicable requirements are
7. 3us (to support TDD networks). In case of co-located O-RUs 130 ns may also apply.
8. o Control of the latency between O-DU and O-RU (section 2.3 from O-RAN CUS
9. specification):
10. o The relative time error between the O-DU and O-RU shall be within a limit of 3us
11. (+-1.5us). This requirement applies whether the O-DU is on the synchronization path
12. towards O-RU or not.
13. o O-DU to O-DU synchronization for Radio Frames handling (e.g., SFN generation):
14. ? Expected in the ms range
15. o Frequency sync of the radio signal
16. ? Frequency accuracy/stability of the O-RU radio interface (50 / 100 ppb)
17. o O-CU to O-DU synchronization
18. ? No stringent requirement identified (alarm timestamping is one possible use
19. case)

24

1. Further details are provided below for some of these requirements.
2. The frequency synchronization requirements are summarized in Table 15. 27

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| Application/ Technology | Frequency Accuracy Requirements | Specification |
| LTE Wide Area BS | +-0.05 ppm | 3GPP TS 36.104  (01/2020) [75]  section 6.5.1 |
| LTE Medium Range BS | +-0.1 ppm | 3GPP TS 36.104 (01/2020)[75]  section 6.5.1 |
| LTE Local Area BS | +-0.1 ppm | 3GPP TS 36.104  (01/2020) [75]  section 6.5.1 |
| LTE Home BS | +-0.25 ppm | 3GPP TS 36.104  (01/2020 [75]  section 6.5.1 |
| NR Wide Area BS | +-0.05 ppm | 3GPP TS 38.104  (01/2020) [76]  section 6.5.1 |
| NR Medium Range BS | +-0.1 ppm | 3GPP TS 38.104  (01/2020) [76] |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
|  |  | section 6.5.1 |
| NR Local Area BS | +-0.1 ppm | 3GPP TS 38.104  (01/2020) [76]  section 6.5.1 |

</div>

1

#### 2 Table 15: Frequency Accuracy Requirements

3

4 **Time/Phase synchronization requirements:**

5

1. The requirements for Time/Phase synchronization for LTE features and 5G features covered in WG4
2. CUS specification [74] can be referenced as described below:
3. ? Table 9-1: LTE features with time alignment error requirement at the air interface
4. ? Table 9-2: 5G features with time alignment error requirement 10

## 12.2Error Budget Allocation Requirements

1. In case of LLS-C1 and LLS-C2 the frequency error budget allocation can be based on Table 9-3 of
2. ORAN-WG4.CUS.0-v03.00 (04/2020) [74].

14

1. In case of LLS-C3 the frequency error budget allocation is provided in Table 16 and is based on
2. Table 9-4 of ORAN-WG4.CUS.0-v03.00 (04/2020) [74].

17

18

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Timing  Reference | O-RAN transport network contribution limit (LLS-C3) |
| PRTC | MTIE per ITU-T G.8272/Y.1367 (11/2018) [82] clause 6.2 |
| ePRTC | MTIE per ITU-T G.8272.1/ Y.1367.1 (08/2019) [79] clause 6.2 |
| PRTC in holdover | FFS (Note 1) |
| ePRTC in holdover | <100ns for 14 days per G.8272.1 clause 8.2 |
| Note 1: PRTC holdover is for further study. As an example, G.8271.1 (08/2019) Annex  V.3 Failure scenarios, refers to a holdover failure scenario of 400 ns for a short interruption (e.g. 5 min) of GNSS. This could be extended to longer periods (e.g. several hours or longer) depending on choice of oscillator and system design. | |

</div>

19

20

#### 21 Table 16: Wander generation requirement for PRTC/ePRTC

22

1. ITU-T G.8272/Y.1367 (11/2018): **Timing characteristics of primary reference time clocks**
2. <https://www.itu.int/rec/T-REC-G.8272-201811-I/en>

25

1. ITU-T G.8272.1/Y.1367.1 (11/2016) Amendment 2 (08/2019): Timing characteristics of enhanced
2. primary reference time clocks
3. [https://www.itu.int/rec/T-REC-G.8272.1-201908-I!Amd2/en](https://www.itu.int/rec/T-REC-G.8272.1-201908-I%21Amd2/en)

1

#### ITU-T G.8271.1/Y.1366 (2017) Amendment 2 (08/2019) : Network limits for time synchronization

1. **in packet networks**
2. [https://www.itu.int/rec/T-REC-G.8271.1-201908-S!Amd2/en](https://www.itu.int/rec/T-REC-G.8271.1-201908-S%21Amd2/en)

5

6

1. For the case of LLS-C1 and LLS-C2 the time error budget allocation is summarized Table 17 and is
2. based on Table 9-3 of ORAN-WG4.CUS.0-v03.00 (04/2020) [74]. Two types of O-RU are
<div class="table-wrapper" markdown="block">

3. considered in the CUS specification: *Enhanced* O-RU with |TE| < 35 ns and *Regular* O-RU with |TE|

</div>
4. < 80 ns.

11

1. The below table considers a time error budget allocation model from Xhaul transport point of view
2. from end to end Grandmaster to O-RU. Here it is simplified to show the transport network budget
3. based on different PRTC/GM and type of O-RU selected for the entire Xhaul network. 15

16

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| Time error budget allocation (LLS-C1/C2) | | | |
| Timing Reference | O-RAN transport network contribution limit (NOTE2) | O-RU | Air interface target |
| No relative |TE| contribution by PRTC/T-GM  since PRTC/T- GM is common PTP and SyncE master to all co- operated O-RU | Relative |TEL| <=60ns Between 2 =-RUs UNI Note 1  Note 2 | *Enhanced* O-RU  *NOTE- regular O-RU can't meet this requirement* | 130ns |TAE| between antennas  For NR Intra- band contiguous carrier aggregation (FR2) |
| Relative |TEL| <=190ns Between 2 O-RUs UNI Note 1  Note 2 | *Enhanced* O-RU | 260ns TAE  between antennas  For NR Intra- band contiguous carrier aggregation (FR1) |
| Relative |TEL| <=100ns Between 2 O-RUs UNI Note 1  Note 2 | *Regular* O-RU (Note 4) |
| Absolute |TE| <=  100ns  PRTC-A/T-GM  spec per ITU-T | Network |TEL| <= 1365ns   * Between T-GM port and O-RU UNI | *Enhanced* O-RU | 3us TAE between antennas  (TDD, NR Inter- band carrier |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| G.8272 (03/2020) [78] | Network |TEL| <= 1320ns   * Between T-GM port and O-RU UNI | *Regular* O-RU | aggregation or NR Intra-band non-contiguous carrier aggregation) |
| Absolute |TE| <=  30ns ePRTC/T-GM  spec per ITU-T G.8272.1 (08/2019) [79] | Network |TEL| <= 1435ns   * Between T-GM port and O-RU UNI | *Enhanced* O-RU |
| Network |TEL| <= 1390ns   * Between T-GM port and O-RU UNI | *Regular* O-RU |
| Absolute |TE| <=  40ns  PRTC-B/T-GM  spec per ITU-T G.8272.1 (08/2019) [79] | Network |TEL| <= 1425ns   * Between T-GM port and O-RU UNI | *Enhanced* O-RU |
| Network |TEL| <= 1380ns   * Between T-GM port and O-RU UNI | *Regular* O-RU |

</div>

1

#### Table 17: Time Error Budget Allocation

3

1. Note 1 - Further details are being defined by ITU-T.
2. Note 2 - Examples for allocation of time error are provided in Section 12.4.
3. Note 3 - In general the table-16 describes the time error allocation break out for network versus end
4. device requirement. The simple breakout model can be described as
5. GM/GNSS + Network + End device (O-RU) = Total budget.
6. Note 4 - Regular O-RU refers to Class-B O-RU as per ORAN-WG4.CUS.0-v03.00 (04/2020) [74]. 10
7. The time error budget allocation for the case of LLS-C3 is specified by ITU-T G.8271.1 (03/2020)
8. [77].

## 12.3 Synchronization solution requirements

1. Successful synchronization deployment depends on many factors. A solution architecture document
2. for timing and synchronization will cover more in detail the following aspects: 16

17 ? Building blocks of network based synchronization

18 ? Timing profiles

1. ? Synchronization time error budgeting models
2. ? Synchronization network models - factors to be considered
3. ? Other applications and sync model
4. ? Synchronization network monitoring and management models
5. ? Best practices and network models

## 12.4 Summary

1. In summary, the use of Precision Timing Protocol (PTP) has been in use for many network iterations.
2. With the migration to NR and eCPRI, it will become more prevalent and have an extended reach in
3. mobility networks, all the way to the O-RU. This will require a PTP profile based on ITU-T G.8275.1
4. (03/2020) [80] with Synchronous Ethernet, in the Fronthaul, from O-DU to O-RU (note: for the O-
5. RU it is optional the use of SyncE). The Technical Solutions Document will further describe options
6. for the enhancing the network synchronization performance and reliability. 13
7. Finally, Figure 14 to Figure 16 provide some examples of absolute and relative time error
8. requirements as diagrams for LLS-C1 and LLS-C2. 16

![]({{site.baseurl}}/assets/images/a31bcca68e90.jpg)17 Config LLS-C3 is being studied in ITU-T (planned to be covered in ITU-T G.8271.1 (03/2020) [77] 18

19

20

#### Figure 14: Example of Absolute vs Relative Requirements (Config LLS-C1 Option A, where

1. **T-GM is embedded in O-DU)**

![]({{site.baseurl}}/assets/images/c8d9407cfd22.jpg)1

2

#### Figure 15: Example of Absolute vs Relative Requirements (Config LLS-C1 Option B, where

* 1. **T-GM is directly connected to O-DU)**

![]({{site.baseurl}}/assets/images/91fae9fd509b.jpg)5

6

#### Figure 16: Example of Absolute vs Relative Requirements (Config LLS-C2 Option A, where

1. **O-DU is nearest common T-BC)**

9

10

1. Note: All three figures (14, 15 and 16), the T-TSC embedded in remote site and T-BC embedded in
2. O-DU need not to be compliance to ITU-T G.8273.2, 03/2020 [81] specification. Refer the WG4
3. CUS spec [74] for additional details on this.

# 1 13 Legacy Requirements

2

1. Legacy radio equipment plays a role in the 5G network evolution and must be supported in the new
2. network implementations. This means support of the Common Public Radio Interface (CPRI) must
3. be taken into consideration as it is the interface between radios and BBU. As stated in the Scope
4. section, legacy transport will follow 3GPP split Option 8, the PHY-RF split. This option allows to
5. separate the RF and the PHY layer. In addition, it allows for centralization of processes at all protocol
6. layer levels, resulting in very tight coordination of the RAN and provides efficient support of
7. functions such as CoMP, MIMO, and load balancing. 10
8. CPRI is a digitized and serial interface that establishes a connection between BBU and an RRH. The
9. BBU contains the radio functions of the digital baseband domain and the radio contains the analog
10. radio frequency functions. CPRI supports three information flows:

14

1. 1. IQ Data - user plane information in the form of In-Phase and Quadrature modulation data
2. 2. C&M Data - Control and Management data which is exchanged between the "REC" and "RE"
3. 3. Synchronization Data - used for CPRI frame and time alignment 18

19 The three CPRI information flows are supported separately with a flow of frames supporting the IQ

20 data information flow and a flow supporting the C&M data. Synchronization is provided separately. 21

![A screenshot of a cell phone  Description automatically generated]({{site.baseurl}}/assets/images/e1228b17b66a.png)22 The Table 18 below breaks out the different requirements for each flow: 23

24

25

#### 26 Table 18: CPRI Flow Requirements

27

![]({{site.baseurl}}/assets/images/c7c13e3ae873.png)28 For legacy LTE radios, the Fronthaul bandwidth reference for CPRI traffic is classified in Table 19 29

30

31

#### 32 Table 19: Fronthaul Bandwidth Reference for LTE traffic in CPRI

33

34 For CPRI rate calculation associated with option 8 split, 35

36 FH BW = = 2 ? 10-9 ? 1.25 ? fs ? Nbit ? Nant (Gbps)

37

38 Where

1. ? fs is the sample frequency, and fs = 30.72 MHz for 20MHz LTE carriers
2. ? 1.25 is the increasing factor due to the overhead from 8b/10b line code. When 66b/64b line
3. code is used, this factor should be changed to 66/64=1.03125

4 ? 16

15

is the CPRI control word overhead

1. ? Nbit is the bitwidth of the radio I/Q sample
2. ? Nant is the number of antennas 7

8

1. Unlike eCPRI, the CPRI traffic will be constant regardless the user data payload. If CPRI interface
2. is not efficiently used (such as empty AxCs in the CPRI Basic Frame) the required Fronthaul
3. bandwidth will be expected higher. 12

13 For co-existence of the 5G NR and LTE radios in the same cell site, both eCPRI and CPRI traffic

14 should be considered. Combining the results given in section 7.2 for eCPRI traffic, Table 20 gives

15 the total Fronthaul bandwidth reference with both eCPRI and CPRI traffic included. 16

![]({{site.baseurl}}/assets/images/ea5fcd8ff2df.png)

17

18

#### 19 Table 20: Fronthaul Bandwidth Reference for eCPRI + CPRI

20

21 For specific RAN equipment implementation, the RAN split point may not be O-RAN option7-2x.

22 So, different RAN vendors have different results due to different implementation details and

23 parameter settings. Taking the following split choice as an example: 24

1. ? Downlink User Plane: option 7-3,
2. ? Uplink User Plane: Between "Resource Element De-Mapping" and "Channel estimation";

27

1. Table 21 provides the bandwidth calculation based on the split point shown above and with both
2. ![]({{site.baseurl}}/assets/images/356e8e834abe.jpg)eCPRI and CPRI traffic included. 30

31

32

#### 33 Table 21: Large site configuration, Sub 6 NR(massive MIMO)

34

# Annex A Fronthaul Bandwidth Calculation

1. This section provides more details for the bandwidth calculation in 7.2 with site carrier configuration
2. examples. Different types of deployments can occur in practice; single-RAT (e.g. 5G fronthaul)
3. versus multi-RAT (e.g. LTE CPRI + 5G fronthaul), pure front- or mid- or backhaul versus a mix of
4. different of X-haul cases. The examples in Table 22 to Table 26 illustrate different cases and different
5. combinations thereof.

7

1. Given below are the parameter settings in evaluating the Fronthaul bandwidth via the equation
2. provided in section 7.2 for 7-2x split based eCPRI:

10

11 ? NPRB = 264, ? = 3 for 400MHz mmWave carriers [3GPP 38.101]

12 ? NPRB = 273, ? = 1 for 100MHz Sub 6 carriers [3GPP 38.101]

13 ? Nmantissa = 9

14 ? Nexponent = 4

15

16 With about settings, a 400MHz mmWave carrier with 2 layer MIMO is found to have 14.96Gbps

17 FH BW and 100MHz Sub 6 carrier with 4 layer MIMO being 7.74Gbps. 18

19 According to the BW calculation equation provided in section 13 the parameters are set as 20

21 ? Nbit=15

22 ? fs = 30.72 MHz

23

24 Thus for a 20MHz LTE carrier with 2 antenna branches, the CPRI rate is found to be 2.46 Gbps,

25 which is the typical CPRI-3 line rate. 26

27 The carrier setting examples are illustrated in Table 22 to Table 26, for small, medium, and large

28 scenarios respectively. The Fronthaul BW for each carrier is aggregated over all sectors and is

29 reported in FH BW column. For the purpose of reference, the optical interfaces to the radios for all

30 sectors are provided at last Colum. Note that these FH interfaces are only exemplary. Actual interface

31 configuration may vary depending on the radio designs from different vendors. For example, if carrier

32 2 and 3 is cascaded, the resulting transport can be carried by a CPRI 7 link. 33

34 Small Examples:

35

36 ![]({{site.baseurl}}/assets/images/044dfc298de5.png)

#### 37 Table 22: Small site configuration, LTE + mmWave NR

38

39

40

![]({{site.baseurl}}/assets/images/5c7ef1b9c22b.png)1

2

3

4

5 Medium Examples:

6

#### Table 23: Small site configuration, LTE+Sub 6 NR:

![]({{site.baseurl}}/assets/images/da0feac67af8.png)7

8

#### 9 Table 24: Medium site configuration, LTE + Sub 6 NR + mmWave NR

![]({{site.baseurl}}/assets/images/f8e6394b1f44.png)10

11

12

#### 13 Table 25: Medium site configuration, LTE + Sub 6 NR (massive MIMO)

14

15

16 Large Example:

![]({{site.baseurl}}/assets/images/7747c9b0c264.png)17

18

19

#### 20 Table 26: Large site configuration, LTE + Sub 6 NR (massive MIMO) + mmWave NR

21

22

23 Note that the FH interfaces provided in last column are only exemplary. Actual interface

24 configuration may vary depending on the radio designs from different vendors. For example, if carrier

25 2 and 3 is cascaded, the resulting transport can be carried by a CPRI 7 link. 26

27

# Annex B: Slicing in Backhaul and Midhaul

1. Network slicing is a key component of the 5G architecture. It is an end to end capability and a
2. "Network Slice Instances" (NSIs) covers multiple "Network Subnet Slices Instances" (NSSIs)
3. including the "Access Network" or radio network, the mobile "Core Network" (CN) and the
4. "Transport Network". (TN)
5. Figure 17 shows the relationship between NSIs and NSSIs. These can be: 7

8 1) 1:1: Each NSI utilises has its own NSSIs which is not shared with other NSIs.

9 2) n:m: NSIs share NSSIs. For example, an NSI has a dedicated access NSSI but uses a shared

10 mobile core NSSI, or multiple NSIs have dedicated access and core NSSIs but use a common

11 transport NSSI.

12

![A close up of text on a white background  Description automatically generated]({{site.baseurl}}/assets/images/877beba5d5e4.jpg)

13

14

15

#### 16 Figure 17: NSI to NSSI relationships (Source: Cisco)

17

18 The transport infrastructure needs to be able to account for these different eventualities and allow: 19

1. 1) The transport NSSI to be completely closed. In this case only components connected to the
2. transport NSSI can communicate with each other at the IP level.
   1. 2) The transport NSSI is partially closed. In this case components connected to the transport
   2. NSSI can communicate with each other at the IP layer but also communicate with entities that
   3. are shared between NSIs. For example, a common AMF or other mobile core components
   4. used by multiple slices.
   5. 3) Controlled connectivity within a transport NSSI. In this case components connected to same
   6. transport NSSI have their IP communication controlled to other entities within the same
   7. transport NSSI. For example, radio access components within the slice can communicate with
   8. each other and with all UPFs, but UPFs owned by different customers cannot communicate
   9. with each other across the transport NSSI. 10
3. Transport slicing is a required capability within the Backhaul network. Figure 18 shows a high-level
4. example of a transport NSSI in a D-RAN architecture and Figure 19 shows a similar example of a
5. transport network NSSI in a C-RAN architecture. Figure 20 shows further detail of an NSSI
6. supporting purely Backhaul and how that an NSSI can have different VPNs for different functions. 15

16

![A close up of a logo  Description automatically generated]({{site.baseurl}}/assets/images/ca534b05fc62.jpg)

17

#### Figure 18: Transport Network NSSI in a D-RAN architecture. Transport NSSI is two discrete

1. **networks (Source: Cisco)**

![A close up of a map  Description automatically generated]({{site.baseurl}}/assets/images/e1a5e37e35d7.jpg)

1

#### Figure 19: Transport Network NSSI in a C-RAN architecture. Transport NSSI is 4 discrete

* 1. **networks**

![A close up of a map  Description automatically generated]({{site.baseurl}}/assets/images/a54eecc9ecdd.jpg)4

5

6

1. **Figure 20: More details on the Transport Network NSSI in a D-RAN architecture. D-RAN**
2. **component of transport NSSI consists two discrete networks, one for control plane interfaces**
3. **and the other for user plane interfaces (source: Cisco)**

10

11 General requirements of the TN have been identified as:

12

1. 1) Management and life cycle management of transport slice through automation
2. a. Creation
3. b. Change
4. c. Deletion

17

* 1. 2) Isolation between TN slices
  2. a. Performance
  3. b. Operation
  4. c. Reliability
  5. d. Security

6

1. 3) TN slice OAM
2. a. Dynamic discovery
3. b. Performance and SLA measurement 10
4. 4) Virtualization and abstraction
5. a. Use virtualization technology
6. b. Isolation between slices 14

15 5) Multi-domain

16 a. With other components of the slice

17 b. Between network domains 18

19 **Transport engineer's considerations**

20

21 With the introduction of network slicing transport network engineers need to consider: 22

1. 1) Concurrent connectivity between:
2. a. WAN to WAN components
3. b. WAN to DC based NFs
4. c. DC based NFs to DC based NFs (local and remote)
5. 2) L2 or L3 connectivity models
6. 3) Closed user groups / VPNs
7. 4) Multi-point connectivity (any to any)
8. 5) Point to point connectivity
9. 6) Point to multipoint.
10. 7) Flexible connectivity models with the NSSI
11. 8) Support consistent Quality of Service (QoS) on an end-to-end basis
12. 9) Management infrastructure on transport devices and DC components to enable device level
13. management
14. 10) Management infrastructure on transport devices and DC components to enable transport slice
15. definition and orchestration. 38

# 1 Annex C: Delay Asymmetry

2

1. This section is not intended to describe a requirement, but rather specify a problem that is important
2. for the design of transport networks, and yet can only be defined and solved in cooperation with
3. other organizations such as WG4. 6
4. Fronthaul transport networks could create a delay asymmetry between the downlink and uplink. This delay
5. asymmetry could be caused by
6. i) difference of optical fiber lengths when uplink and downlink use separate fiber (7 m of standard single
7. mode fiber approximatively corresponds to a 34 ns delay),
8. ii) the difference of wavelength propagation times when wavelengths are not similar for uplink and
9. downlink (typically 1.3 um and 1.55 um wavelength diplex causes a ~33 ns time difference over 20 km
10. of standard single mode fiber ITU-T G.652),
11. iii) the difference of processing time (including functions such as time multiplexing, encapsulation,
12. compression) at transport equipment. Other transport functions could contribute to this latency
13. asymmetry.

17

1. We propose to have specifications (Table 27) in function of two type of RU: legacy RU (e.g. option 8 without
2. PTP/SyncE) or O-RU (specified by WG4 based on split 7.2 and with PTP/SyncE).

20

1. We also propose to have separate specification for cases with or without end user geolocation RAN services
2. based on time measurement (OTDOA [observed time difference of arrival] or UTDOA [uplink time difference
3. of arrival]).

24

25 Another factor to be considered is the type of service and/or frequency range as listed in Table 27. 26

27

28

1

2

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| Latency asymmetry up & downlink  fronthaul | Without geolocation based on time measurement | With geolocation based on time measurement | | |
| 4G | 5G FR1 | 5G FR2 |
|  |  | OTDOA accuracy : +/- | Not yet specified by | Not yet specified |
| 130.2 ns | 3GPP. This | by 3GPP. This |
| OTDOA resolution : 32.5 | proposed value is | proposed value is |
| ns | based on replica of | based on replica |
| (higher-resolution mode | 4G mechanisms: | of 4G |
| based on 16.2 ns) | OTDOA accuracy: | mechanisms: |
|  | +/-32.5 ns | OTDOA accuracy |
|  | OTDOA resolution : | : +/-8.1 ns |
|  | 8.1 ns | OTDOA |
|  | Need to be updated | resolution : 2 ns |
|  | by 3GPP Rel. 16 & | Need to be |
|  | 17 | updated by 3GPP |
|  |  | Rel. 16 & 17 |
| Legacy RU | DU could compensate this asymmetry for known value in the margin of +/- 10 000 ns | DU could compensate this asymmetry for known value in the margin of +/- 10 000 ns.  Latency fiber asymmetry  < OTDOA resolution 32.5 ns (or 16.2 ns) Proposition of values by WG9   * For negligible impact on geolocation time measurement < 3 ns * For residual impact on geolocation time   measurement < 13 ns | N/A | Not concerned |
| O-RU | O-RAN WG4  proposes absolute and relative time error margin to fiber asymmetry in annex H  of WG4.CUS.0- v03.00 | Latency fiber asymmetry  < O-RU |TE| < OTDOA  resolution 32.5 ns (or 16.2 ns)  Need to be updated by O- RAN WG4 based on 3GPP TS 36.133v14.3.0 | Latency fiber asymmetry < O-RU  |TE| < OTDOA  resolution 8.1 ns  Need to be updated by O-RAN WG4  when 3GPP Rel. 16 & 17 will be available | Latency fiber asymmetry < O- RU |TE| < OTDOA  resolution 2 ns  Need to be updated by O- RAN WG4 when 3GPP Rel. 16 &  17 will be available |

</div>

3

#### Table 27: Delay Asymmetry

5

6

# Annex ZZZ : O-RAN Adopter License Agreement

1. BY DOWNLOADING, USING OR OTHERWISE ACCESSING ANY O-RAN SPECIFICATION,
2. ADOPTER AGREES TO THE TERMS OF THIS AGREEMENT.
3. This O-RAN Adopter License Agreement (the "Agreement") is made by and between the O-RAN
4. Alliance and the entity that downloads, uses or otherwise accesses any O-RAN Specification,
5. including its Affiliates (the "Adopter").
6. This is a license agreement for entities who wish to adopt any O-RAN Specification.

## Section 1: DEFINITIONS

1. 1.1 "Affiliate" means an entity that directly or indirectly controls, is controlled by, or is under
2. common control with another entity, so long as such control exists. For the purpose of this Section,
3. "Control" means beneficial ownership of fifty (50%) percent or more of the voting stock or equity in
4. an entity.
5. 1.2 "Compliant Implementation" means any system, device, method or operation (whether
6. implemented in hardware, software or combinations thereof) that fully conforms to a Final
7. Specification.
8. 1.3 "Adopter(s)" means all entities, who are not Members, Contributors or Academic Contributors,
9. including their Affiliates, who wish to download, use or otherwise access O-RAN Specifications.
10. 1.4 "Minor Update" means an update or revision to an O-RAN Specification published by O-RAN
11. Alliance that does not add any significant new features or functionality and remains interoperable
12. with the prior version of an O-RAN Specification. The term "O-RAN Specifications" includes Minor
13. Updates.
14. 1.5 "Necessary Claims" means those claims of all present and future patents and patent applications,
15. other than design patents and design registrations, throughout the world, which (i) are owned or
16. otherwise licensable by a Member, Contributor or Academic Contributor during the term of its
17. Member, Contributor or Academic Contributor ship; (ii) such Member, Contributor or Academic
18. Contributor has the right to grant a license without the payment of consideration to a third party; and
19. (iii) are necessarily infringed by a Compliant Implementation (without considering any Contributions
20. not included in the Final Specification). A claim is necessarily infringed only when it is not possible
21. on technical (but not commercial) grounds, taking into account normal technical practice and the state
22. of the art generally available at the date any Final Specification was published by the O-RAN Alliance
23. or the date the patent claim first came into existence, whichever last occurred, to make, sell, lease,
24. otherwise dispose of, repair, use or operate a Compliant Implementation without infringing that claim.
25. For the avoidance of doubt in exceptional cases where a Final Specification can only be implemented
26. by technical solutions, all of which infringe patent claims, all such patent claims shall be considered
27. Necessary Claims.
28. 1.6 "Defensive Suspension" means for the purposes of any license grant pursuant to Section 3,
29. Member, Contributor, Academic Contributor, Adopter, or any of their Affiliates, may have the
30. discretion to include in their license a term allowing the licensor to suspend the license against a
31. licensee who brings a patent infringement suit against the licensing Member, Contributor, Academic
32. Contributor, Adopter, or any of their Affiliates.

## Section 2: COPYRIGHT LICENSE

1. 2.1 Subject to the terms and conditions of this Agreement, O-RAN Alliance hereby grants to Adopter
2. a nonexclusive, non-transferable, irrevocable, non-sublicensable, worldwide copyright license to
3. obtain, use and modify O-RAN Specifications, but not to further distribute such O-RAN Specification
4. in any modified or unmodified way, solely in furtherance of implementations of an ORAN
5. Specification.
6. 2.2 Adopter shall not use O-RAN Specifications except as expressly set forth in this Agreement or in
7. a separate written agreement with O-RAN Alliance.

## Section 3: FRAND LICENSE

1. 3.1 Members, Contributors and Academic Contributors and their Affiliates are prepared to grant
2. based on a separate Patent License Agreement to each Adopter under Fair Reasonable And Non-
3. Discriminatory (FRAND) terms and conditions with or without compensation (royalties) a
4. nonexclusive, non-transferable, irrevocable (but subject to Defensive Suspension), non-
5. sublicensable, worldwide patent license under their Necessary Claims to make, have made, use,
6. import, offer to sell, lease, sell and otherwise distribute Compliant Implementations; provided,
7. however, that such license shall not extend: (a) to any part or function of a product in which a
8. Compliant Implementation is incorporated that is not itself part of the Compliant Implementation; or
9. (b) to any Adopter if that Adopter is not making a reciprocal grant to Members, Contributors and
10. Academic Contributors, as set forth in Section 3.3. For the avoidance of doubt, the foregoing licensing
11. commitment includes the distribution by the Adopter's distributors and the use by the Adopter's
12. customers of such licensed Compliant Implementations.
13. 3.2 Notwithstanding the above, if any Member, Contributor or Academic Contributor, Adopter or
14. their Affiliates has reserved the right to charge a FRAND royalty or other fee for its license of
15. Necessary Claims to Adopter, then Adopter is entitled to charge a FRAND royalty or other fee to
16. such Member, Contributor or Academic Contributor, Adopter and its Affiliates for its license of
17. Necessary Claims to its licensees.
18. 3.3 Adopter, on behalf of itself and its Affiliates, shall be prepared to grant based on a separate Patent
19. License Agreement to each Members, Contributors, Academic Contributors, Adopters and their
20. Affiliates under Fair Reasonable And Non-Discriminatory (FRAND) terms and conditions with or
21. without compensation (royalties) a nonexclusive, non-transferable, irrevocable (but subject to
22. Defensive Suspension), non-sublicensable, worldwide patent license under their Necessary Claims to
23. make, have made, use, import, offer to sell, lease, sell and otherwise distribute Compliant
24. Implementations; provided, however, that such license will not extend: (a) to any part or function of
25. a product in which a Compliant Implementation is incorporated that is not itself part of the Compliant
26. Implementation; or (b) to any Members, Contributors, Academic Contributors, Adopters and their
27. Affiliates that is not making a reciprocal grant to Adopter, as set forth in Section 3.1. For the
28. avoidance of doubt, the foregoing licensing commitment includes the distribution by the Members',
29. Contributors', Academic Contributors', Adopters' and their Affiliates' distributors and the use by the
30. Members', Contributors', Academic Contributors', Adopters' and their Affiliates' customers of such
31. licensed Compliant Implementations.

## Section 4: TERM AND TERMINATION

1. 4.1 This Agreement shall remain in force, unless early terminated according to this Section 4.
2. 4.2 O-RAN Alliance on behalf of its Members, Contributors and Academic Contributors may
3. terminate this Agreement if Adopter materially breaches this Agreement and does not cure or is not
4. capable of curing such breach within thirty (30) days after being given notice specifying the breach.
5. 4.3 Sections 1, 3, 5 - 11 of this Agreement shall survive any termination of this Agreement. Under
6. surviving Section 3, after termination of this Agreement, Adopter will continue to grant licenses (a)
7. to entities who become Adopters after the date of termination; and (b) for future versions of ORAN
8. Specifications that are backwards compatible with the version that was current as of the date of
9. termination.

## Section 5: CONFIDENTIALITY

1. Adopter will use the same care and discretion to avoid disclosure, publication, and dissemination of
2. O-RAN Specifications to third parties, as Adopter employs with its own confidential information, but
3. no less than reasonable care. Any disclosure by Adopter to its Affiliates, contractors and consultants
4. should be subject to an obligation of confidentiality at least as restrictive as those contained in this
5. Section. The foregoing obligation shall not apply to any information which is: (1) rightfully known
6. by Adopter without any limitation on use or disclosure prior to disclosure; (2) publicly available
7. through no fault of Adopter; (3) rightfully received without a duty of confidentiality; (4) disclosed by
8. O-RAN Alliance or a Member, Contributor or Academic Contributor to a third party without a duty
9. of confidentiality on such third party; (5) independently developed by Adopter; (6) disclosed pursuant
10. to the order of a court or other authorized governmental body, or as required by law, provided that
11. Adopter provides reasonable prior written notice to O-RAN Alliance, and cooperates with O-RAN
12. Alliance and/or the applicable Member, Contributor or Academic Contributor to have the opportunity
13. to oppose any such order; or (7) disclosed by Adopter with O-RAN Alliance's prior written approval.

## Section 6: INDEMNIFICATION

1. Adopter shall indemnify, defend, and hold harmless the O-RAN Alliance, its Members, Contributors
2. or Academic Contributors, and their employees, and agents and their respective successors, heirs and
3. assigns (the "Indemnitees"), against any liability, damage, loss, or expense (including reasonable
4. attorneys' fees and expenses) incurred by or imposed upon any of the Indemnitees in connection with
5. any claims, suits, investigations, actions, demands or judgments arising out of Adopter's use of the
6. licensed O-RAN Specifications or Adopter's commercialization of products that comply with O-RAN
7. Specifications.

## Section 7: LIMITATIONS ON LIABILITY; NO WARRANTY

1. EXCEPT FOR BREACH OF CONFIDENTIALITY, ADOPTER'S BREACH OF SECTION 3, AND
2. ADOPTER'S INDEMNIFICATION OBLIGATIONS, IN NO EVENT SHALL ANY PARTY BE
3. LIABLE TO ANY OTHER PARTY OR THIRD PARTY FOR ANY INDIRECT, SPECIAL,
4. INCIDENTAL, PUNITIVE OR CONSEQUENTIAL DAMAGES RESULTING FROM ITS
5. PERFORMANCE OR NON-PERFORMANCE UNDER THIS AGREEMENT, IN EACH CASE
6. WHETHER UNDER CONTRACT, TORT, WARRANTY, OR OTHERWISE, AND WHETHER
7. OR NOT SUCH PARTY HAD ADVANCE NOTICE OF THE POSSIBILITY OF SUCH
8. DAMAGES. O-RAN SPECIFICATIONS ARE PROVIDED "AS IS" WITH NO WARRANTIES
9. OR CONDITIONS WHATSOEVER, WHETHER EXPRESS, IMPLIED, STATUTORY, OR
10. OTHERWISE. THE O-RAN ALLIANCE AND THE MEMBERS, CONTRIBUTORS OR
11. ACADEMIC CONTRIBUTORS EXPRESSLY DISCLAIM ANY WARRANTY OR CONDITION
12. OF MERCHANTABILITY, SECURITY, SATISFACTORY QUALITY, NONINFRINGEMENT,
13. FITNESS FOR ANY PARTICULAR PURPOSE, ERROR-FREE OPERATION, OR ANY
14. WARRANTY OR CONDITION FOR O-RAN SPECIFICATIONS.

## Section 8: ASSIGNMENT

1. Adopter may not assign the Agreement or any of its rights or obligations under this Agreement or
2. make any grants or other sublicenses to this Agreement, except as expressly authorized hereunder,
3. without having first received the prior, written consent of the O-RAN Alliance, which consent may
4. be withheld in O-RAN Alliance's sole discretion. O-RAN Alliance may freely assign this Agreement.

## Section 9: THIRD-PARTY BENEFICIARY RIGHTS

1. Adopter acknowledges and agrees that Members, Contributors and Academic Contributors (including
2. future Members, Contributors and Academic Contributors) are entitled to rights as a third-party
3. beneficiary under this Agreement, including as licensees under Section 3.

## Section 10: BINDING ON AFFILIATES

1. Execution of this Agreement by Adopter in its capacity as a legal entity or association constitutes that
2. legal entity's or association's agreement that its Affiliates are likewise bound to the obligations that
3. are applicable to Adopter hereunder and are also entitled to the benefits of the rights of Adopter
4. hereunder.

## Section 11: GENERAL

1. This Agreement is governed by the laws of Germany without regard to its conflict or choice of law
2. provisions.
3. This Agreement constitutes the entire agreement between the parties as to its express subject matter
4. and expressly supersedes and replaces any prior or contemporaneous agreements between the parties,
5. whether written or oral, relating to the subject matter of this Agreement.
6. Adopter, on behalf of itself and its Affiliates, agrees to comply at all times with all applicable laws,
7. rules and regulations with respect to its and its Affiliates' performance under this Agreement,
8. including without limitation, export control and antitrust laws. Without limiting the generality of the
9. foregoing, Adopter acknowledges that this Agreement prohibits any communication that would
10. violate the antitrust laws.
11. By execution hereof, no form of any partnership, joint venture or other special relationship is created
12. between Adopter, or O-RAN Alliance or its Members, Contributors or Academic Contributors.
13. Except as expressly set forth in this Agreement, no party is authorized to make any commitment on
14. behalf of Adopter, or O-RAN Alliance or its Members, Contributors or Academic Contributors.
15. In the event that any provision of this Agreement conflicts with governing law or if any provision is
16. held to be null, void or otherwise ineffective or invalid by a court of competent jurisdiction, (i) such
17. provisions will be deemed stricken from the contract, and (ii) the remaining terms, provisions,
18. covenants and restrictions of this Agreement will remain in full force and effect.
19. Any failure by a party or third party beneficiary to insist upon or enforce performance by another
20. party of any of the provisions of this Agreement or to exercise any rights or remedies under this
21. Agreement or otherwise by law shall not be construed as a waiver or relinquishment to any extent of
22. the other parties' or third party beneficiary's right to assert or rely upon any such provision, right or
23. remedy in that or any other instance; rather the same shall be and remain in full force and effect.
---

- View in [GitHub Mode]({{site.github_page_url}}/O-RAN.WG9.XTRP-REQ-v01.00.docx.md).
- Go back to [Table of Contents]({{site.baseurl}}/).
- Download the [Original Document]({{site.download_url}}/O-RAN.WG9.XTRP-REQ-v01.00.docx).

---

* toc
{:toc}
