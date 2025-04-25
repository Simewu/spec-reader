---
title: O-RAN.WG9.XTRP-TST.0-R004-v05.00.docx.md
author: O-RAN Alliance, WG9
layout: post
---

- View in [GitHub Mode]({{site.github_page_url}}/O-RAN.WG9.XTRP-TST.0-R004-v05.00.docx.md).
- Go back to [Table of Contents]({{site.baseurl}}/).
- Download the [Original Document]({{site.download_url}}/O-RAN.WG9.XTRP-TST.0-R004-v05.00.docx).

---

* toc
{:toc}

---

## ![webwxgetmsgimg (7).jpeg]({{site.baseurl}}/assets/images/9c69df009b87.jpg)O-RAN.WG9.XTRP-TST.0-R004-v05.00

Technical Specification

**O-RAN Open Xhaul Transport Working Group 9 Xhaul Transport Testing**

Copyright (C) 2024 by the O-RAN ALLIANCE e.V.

The copying or incorporation into any other work of part or all of the material available in this specification in any form without the prior written permission of O-RAN ALLIANCE e.V. is prohibited, save that you may print or download extracts of the material of this specification for your personal use, or copy the material of this specification for the purpose of sending to individual third parties for their information provided that you acknowledge O-RAN ALLIANCE as the source of the material and that you inform the third party that these conditions apply to them and that they must comply with them.

O-RAN ALLIANCE e.V., Buschkauler Weg 27, 53347 Alfter, Germany

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| Author | Company | Chapters |
| Lujing Cai | AT&T | Packet, Sync |
| Philippe Chanclou | Orange | Packet |
| Luis Miguel Contreras Murillo | Telefonica | Packet |
| Po-Hsiang Huang | Chungwa Telecom | Packet |
| Satheesh Kumar S | Juniper | Synchronization |
| Sebastien Prieur | EXFO | WDM |
| Sayantan Pramanick | Keysight | Packet |
| Krzysztof Szarkowicz | Juniper | Packet |
| Reza Vaez-Ghaemi | VIAVI Solutions | Overall coordination, Synchronization |
| Jim Zou | Adva | Optical |
| Mingqing Zou | CMCC | WDM |

</div>

(C) 2024 by the O-RAN ALLIANCE e.V. Your use is subject to the copyright statement on the cover page of this specification. 2

# 1 Revision History

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **Date** | **Revision** | **Author** | **Description** |
| 07/09/2021 | V01.00 | R Vaez-Ghaemi | Version 01.00 |
| 07/22/2022 | V02.00 | Satheesh Kumar, S, Jiang, J Zou, R Vaez- Ghaemi | Addition of Synchronization, latency and OAM Test Cases |
| 07/06/2023 | V03.00 | Satheesh Kumar, M Zuo | Addition of WDM OAM (7.1.6), and Synchronization Test cases (9.3) |
| 01/20/2024 | V04.00 | Satheesh Kumar | Addition of Sync Test Cases in section 9.4 (9.4.1-9.4.7) |
| 10/03/2024 | V05.00 | Satheesh Kumar, Jiang Sun | Added WDM test cases, updated Inclusive Terminology in synchronization section |

</div>

2

3

# 2 Contents

1. 1 Revision History 3
2. 3 Scope 8
3. 4 References 9
4. 5 Definitions and abbreviations 12
5. 5.1 Definitions 12
6. 5.2 Abbreviations 12
7. 6 Test approach and methodology 14
8. 6.1 System under test 14
9. 6.2 Testing Parameters 15
10. 6.3 Testing Methodologies 15
11. 6.4 General (solution/technology agnostic) test use cases 16
12. 6.4.1 Equipment Testing 16
13. 6.4.2 PHY layer test 24
14. 6.4.3 Alarm and Monitoring Test Cases 36
15. 7 WDM-based Fronthaul Transport Testing 47
16. 7.1 Fronthaul Testing use cases. 47
17. 7.1.1 Transmit Power 47
18. 7.1.2 Receive Sensitivity 49
19. 7.1.3 Auto-tuning test 50
20. 7.1.4 Crosstalk testing 52
21. 7.1.5 Latency Test 55
22. 7.1.6 OAM Test 58
23. 7.1.7 Management Interface Test 66
24. 7.1.8 Performance of a pair of MUX/DEMUXs 68
25. 7.1.9 Protection function for WDM system 70
26. 8 Packet-Switched Architectures and Solutions Testing 72
27. 8.1 Generalized basic verification methods for Xhaul Transport packet switched Network 72
28. 8.1.1 Forwarding Verification 76
29. 8.1.2 Latency Measurement and Verification 77
30. 8.1.3 RFC 2544 Benchmarking test for frame loss rate, latency, throughput 77
31. 8.2 Service Level Test Cases 78
32. 8.2.1 Baseline 7-2x eCPRI transport over Packetized Fronthaul 79
33. 8.2.2 Constraints based 7-2x eCPRI transport over Packetized Fronthaul using Headend Path calculation 80
34. 8.2.3 Constraints based 7-2x eCPRI transport over Packetized Fronthaul using Controller based Path
35. calculation 81
36. 8.2.4 L3VPN based Services Verification for Xhaul network 83
37. 8.3 Network element testing 85
38. 8.3.1 Frame Pre-emption Testing 85
39. 8.3.1 Auto-negotiation 88
40. 8.4 Additional Network testing 89
41. 8.4.1 Latency TNE at 1, 10 and 20 km distance 90
42. 8.4.2 VLAN Manipulation Tests 92
43. 8.4.3 QoS testing 93
44. 8.4.4 Jitter Testing 95
45. 8.4.5 Test for frame fragmentation 97
46. 8.4.6 Test for encapsulations and protocols 99
47. 8.4.7 Addition of background traffic 101
48. 8.4.8 Support of native IPv6 connectivity 103
49. 8.4.9 Support of IPv6 connectivity in an IPv4 network (dual stack) 104
50. 8.4.10 Support of IPv4 connectivity in an IPv6 network (dual stack) 105
51. 8.4.11 Test for in-band / out-band management 106
52. 8.4.12 Transparency of eCPRI Ethertype 107
53. 8.4.13 Recovery times 108
54. 8.4.14 Test of Buffer Sizing 109
55. 8.5 Fronthaul Services Redundancy and High Availability 110
56. 8.5.1 Multi-Home Active/Active Fronthaul Redundancy 110
57. 8.5.2 Multi-Home Single-Active Bundle Fronthaul Redundancy 111
58. 8.5.3 Multi-Home Single-Active Standalone Fronthaul Redundancy 112
59. 8.5.4 Multi-Home Single-Active Standalone, Fronthaul Redundancy, no BD on O-DU 113
60. 8.5.5 Transport network Redundancy 115
61. 8.6 Legacy Fronthaul and C-RAN Coexistence Verification 116
62. 8.6.1 Legacy CPRI with RoE Type 0 Coexistence with 7-2x eCPRI 116
63. 8.6.2 Legacy CPRI with RoE Type 1 Coexistence with 7-2x eCPRI 118
64. 9 Xhaul Synchronization Testing 120
65. 9.1 Synchronization test use cases, parameters and methodologies. 120
66. 9.1.1 Network Time Synchronization-LLS-C1 (Option-A) configuration 121
67. 9.1.2 Network Time Synchronization-LLS-C1 (Option-B) configuration: Scenario-1 123
68. 9.1.3 Network Time Synchronization-LLS-C1 (Option-B) configuration: Scenario-2. 125
69. 9.1.4 Network Time Synchronization-LLS-C1 (Option-C) configuration 128
70. 9.1.5 Network Time Synchronization-LLS-C2 (Option-A) configuration 131
71. 9.1.6 Network Time Synchronization-LLS-C2 (Option-B) configuration: Scenario-1 133
72. 9.1.7 Network Time Synchronization-LLS-C2 (Option-B) configuration: Scenario-2 136
73. 9.1.8 Network Time Synchronization-LLS-C2 (Option-B) configuration (Fail-over: Scenario-1) 138
74. 9.1.9 Network Time Synchronization-LLS-C2 (Option-B) configuration (Fail-over: Scenario-2) 142
75. 9.1.10 Network Time Synchronization-LLS-C2 (Option-B) configuration (Fail-over: Scenario-3) 145
76. 9.1.11 Network Time Synchronization-LLS-C2 (Option-B) configuration (Time Error with Background
77. Traffic) 148
78. 9.1.12 Network Time Synchronization-LLS-C2 (Option-B) configuration (SyncE network wander limit for
79. chain of EEC and eEEC clock) 152
80. 9.1.13 Network Time Synchronization-LLS-C2 (Option-B) configuration (1PPS Time Error on O-RU) 153
81. 9.1.14 Network Time Synchronization-LLS-C3 (Option-A) configuration 155
82. 9.1.15 Network Time Synchronization-LLS-C3 (Option-B) configuration 158
83. 9.1.16 Network Time Synchronization-LLS-C3 (Option-B) configuration (Time Error with Background
84. Traffic) 160
85. 9.1.17 Network Time Synchronization-LLS-C3 (Option-B) configuration (PTP Holdover test) 164
86. 9.1.18 Network Time Synchronization-LLS-C3 (Option-B) configuration (PTP Fail-over/redundancy test) 168
87. 9.1.19 Network Time Synchronization-LLS-C3 (Option-C) configuration 171
88. 9.2 Timing Solution & Resiliency in Ring Topology (LLS-C3) 174
89. 9.2.1 Timing Resiliency in Ring Topology-O-DU connected to HSR and SYNC from Backhaul (LLS-
90. C3)-Normal State (Case-1: T-GM1 is the preferred GM) 175
91. 9.2.2 Timing Resiliency in Ring Topology-O-DU connected to HSR and SYNC from Backhaul (LLS-
92. C3)-T-GM1 to BR1 Link Down. (Case-1: T-GM1 is the preferred GM) 178
93. 9.2.3 Timing Resiliency in Ring Topology-O-DU connected to HSR and SYNC from Backhaul (LLS-
94. C3)-T-GM1 Fail-over. (Case-1: T-GM1 is the preferred GM) 180
    1. 9.2.4 Timing Resiliency in Ring Topology-O-DU connected to HSR and SYNC from Backhaul (LLS-
    2. C3)-Ring Fail-over in Backhaul. (Case-1: T-GM1 is the preferred GM) 183
    3. 9.2.5 Timing Resiliency in Ring Topology-O-DU connected to HSR and SYNC from Backhaul (LLS-
    4. C3)-Ring Fail-over in Midhaul. (Case-1: T-GM1 is the preferred GM) 185
    5. 9.2.6 Timing Resiliency in Ring Topology-O-DU connected to HSR and SYNC from Backhaul (LLS-
    6. C3)-Ring Fail-over in Fronthaul. (Case-1: T-GM1 is the preferred GM) 188
    7. 9.2.7 Timing Resiliency in Ring Topology-O-DU connected to HSR and SYNC from Backhaul (LLS-
    8. C3)-Asymmetry Test (Case-1: T-GM1 is the preferred GM) 191
    9. 9.2.8 Timing Resiliency in Ring Topology-O-DU connected to HSR and SYNC from Backhaul (LLS-
    10. C3)-Asymmetry Test with Link-Fail. (Case-1: T-GM1 is the preferred GM) 193
    11. 9.2.9 Timing Resiliency in Ring Topology-O-DU connected to HSR and SYNC from Backhaul (LLS-
    12. C3)-Aggregated Link (Case-1: T-GM1 is the preferred GM) 196
    13. 9.2.10 Timing Resiliency in Ring Topology-O-DU connected to HSR and SYNC from Backhaul (LLS-
    14. C3)-Aggregated Link-BR1 to BR3 primary member link down. (Case-1: T-GM1 is the preferred
    15. GM) 198
    16. 9.2.11 Timing Resiliency in Ring Topology-O-DU connected to HSR and SYNC from Backhaul (LLS-
    17. C3)-Normal State (Case-2: Both T-GMs are of equal preference) 201
    18. 9.2.12 Timing Resiliency in Ring Topology-O-DU connected to HSR and SYNC from Backhaul (LLS-
    19. C3)-T-GM1 to BR1 Link Down. (Case-2: Both T-GMs are of equal preference) 203
    20. 9.2.13 Timing Resiliency in Ring Topology-O-DU connected to HSR and SYNC from Backhaul (LLS-
    21. C3)-Normal State (Case-3: T-GM1 is preferred through explicit configuration via Local-Priority on
    22. TNEs) 206
    23. 9.2.14 Timing Resiliency in Ring Topology-O-DU connected to HSR and SYNC from Backhaul (LLS-
    24. C3)-T-GM1 to BR1 Link Down. (Case-3: T-GM1 is preferred through explicit configuration via
    25. Local-Priority on TNEs) 209
    26. 9.2.15 Timing Resiliency in Ring Topology-O-DU connected to HSR and SYNC from Backhaul (LLS-
    27. C3)-Normal State (Passive Port Monitoring) 211
    28. 9.2.16 Timing Resiliency in Ring Topology-O-DU connected to HSR and SYNC from Midhaul (LLS-C3)-
    29. Normal State (Case-1: T-GM1 is the preferred GM) 214
    30. 9.2.17 Timing Resiliency in Ring Topology-O-DU connected to HSR and SYNC from Midhaul (LLS-C3)-
    31. T-GM1 to HSR1 Link Down. (Case-1: T-GM1 is the preferred GM) 217
    32. 9.2.18 Timing Resiliency in Ring Topology-O-DU connected to HSR and SYNC from Midhaul (LLS-C3)-
    33. T-GM1 Fail-over. (Case-1: T-GM1 is the preferred GM) 220
    34. 9.2.19 Timing Resiliency in Ring Topology-O-DU connected to HSR and SYNC from Midhaul (LLS-C3)-
    35. Link Failure in Fronthaul. (Case-1: T-GM1 is the preferred GM) 222
    36. 9.2.20 Timing Resiliency in Ring Topology-O-DU connected to HSR and SYNC from Midhaul (LLS-C3)-
    37. Asymmetry Test. (Case-1: T-GM1 is the preferred GM) 225
    38. 9.3 Timing Solution Additional use cases in LLS-C3 and LLS-C4 config 228
    39. 9.3.1 Network Time Synchronization-LLS-C4 with PTP frequency backup from T-GM 229
    40. 9.3.2 Network Time Synchronization-LLS-C4 with PTP Time backup from T-GM 231
    41. 9.3.3 Network Time Synchronization-LLS-C4 and LLS-C3 mixed configurations for co-located DUs and
    42. RUs 233
    43. 9.3.4 Network Time Synchronization-LLS-C4 and LLS-C3 mixed configurations for co-located DUs and
    44. RUs-GNSS Failure at O-RU site. 235
    45. 9.3.5 Network Time Synchronization-LLS-C4 and LLS-C3 mixed configurations with backup from
    46. redundant T-GM for co-located DUs and RUs 237
    47. 9.3.6 Network Time Synchronization-LLS-C4 and LLS-C3 mixed configurations with backup from
    48. redundant T-GM for co-located DUs and RUs (GNSS Failure at O-RU site) 239
    49. 9.3.7 Network Time Synchronization-LLS-C4 and LLS-C3 mixed configurations with backup from
    50. redundant T-GM for co-located DUs and RUs (GNSS & T-GM-A Failure) 240
        1. 9.3.8 Network Time Synchronization-LLS-C3 configurations with GNSS assisted CSR for co-located
        2. DUs and RUs 242
        3. 9.3.9 Network Time Synchronization-LLS-C3 configurations with (GNSS+PRTC) assisted CSR for co-
        4. located DUs and RUs 244
        5. 9.3.10 Network Time Synchronization-LLS-C3 configurations with GNSS assisted CSR with backup from
        6. redundant T-GM for co-located DUs and RUs 247
        7. 9.3.11 Network Time Synchronization-LLS-C3 configurations with GNSS assisted CSR with backup from
        8. redundant T-GM for co-located DUs and RUs (GNSS Failure at CSR site) 249
        9. 9.3.12 Network Time Synchronization-LLS-C3 configurations with GNSS assisted CSR with backup from
        10. redundant T-GM for co-located DUs and RUs (GNSS Failure at CSR site and T-GM-A Failure) 251
        11. 9.4 Timing Solution use cases in LLS-C3 configuration for Shared O-RU 254
        12. 9.4.1 Timing Solution for Shared O-RU using common transport 255
        13. 9.4.2 Timing Solution for Shared O-RU with separate transport. 257
        14. 9.4.3 Timing Solution Resiliency for Shared O-RU with separate transport (Link Failure on T-GM1) 260
        15. 9.4.4 Timing Solution for Shared O-RU with separate transport (Redundant T-GM and HSR) 262
        16. 9.4.5 Timing Solution Resiliency for Shared O-RU with separate transport (Link Failure on HSR1) 264
        17. 9.4.6 Timing Solution for Shared O-RU with separate transport (Full Redundancy) 266
        18. 9.4.7 Timing Solution Resiliency for Shared O-RU with separate transport (GM1A and HSR1A Failure) 269
        19. Annex A: ITU G.8262/G.8262.1 Clock specification test cases for TNEs 272
        20. A.1 Pull-in/Hold-in/Pull-out Limits 272
        21. A.2 Wander Generation Limit for EEC/eEEC Clock 273
        22. A.3 Wander Tolerance/Transfer Test for EEC/eEEC Clock 273
        23. A.4 Frequency Holdover Limits for EEC/eEEC Clock 275
        24. A.5 Short-term phase-transients as per ITU-T G.8262/G.8262.1 276
        25. Annex B: ITU G.8273.2 Clock specification test cases for TNEs 277
        26. B.1 Time Noise Generation Performance 277
        27. B.2 Time Noise Tolerance Performance Test 278
        28. B.3 Time Holdover Performance Test 279

29

30

1

1. 3 Scope
2. This document defines the testing requirements for an Open Xhaul transport infrastructure. It is based on Xhaul
3. Transport Requirement document, Packet Switched Architectures and Solutions document, the WDM-based
4. Fronthaul Transport, and Synchronization Architecture and Solution documents. It defines test cases and
5. provides dedicated chapters for different solutions.

7

1. This document uses information published by O-RAN, 3GPP, IEEE, ITU-T, IETF, CableLabs, NGMN and
2. several other relevant standard bodies and industry associations. It contains educational, informative, and
3. normative content.

11

1. Version 02.00 of this document adds new test cases for synchronization (9.2) and WDM (7.1.5 & 7.1.6).
2. Version 3.0 adds new test cases for Synchronization (9.3) and WDM (7.1.6).

14

1. What is not covered in this document:
2. ? The document shall minimize any unnecessary overlap with content presented in other O-RAN testing
3. specifications such as WG4 Conformance Test (S-Plane) specification. Whereas the latter is about
4. testing an O-RU or O-DU, this document verifies the transport networks placed between those O-RAN
5. components. Some of the presented synchronization test cases may be moved from this document to
6. other documents such as the WG4 Conformance Test specification in agreement with respective
7. authors of the latter document.

22

# 4 References

* 1. The following documents contain provisions which, through reference in this text, constitute provisions of the
  2. present document.
  3. - References are either specific (identified by date of publication, edition number, version number, etc.)
  4. or non-specific.
  5. - For a specific reference, subsequent revisions do not apply.
  6. - For a non-specific reference, the latest version applies. In the case of a reference to a 3GPP
  7. document (including a GSM document), a non-specific reference implicitly refers to the latest version
  8. of that document in Release 15.

10

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| 11 | [1] | 3GPP TS 38.472 V15.5.0: " F1 signalling transport (Release 15)". |
| 12 | [2] | IEEE 802.1Q-2018: "IEEE Standard for Local and metropolitan area networks-- Bridges |
| 13 |  | and Bridged Networks" |
| 14 | [3] | IETF RFC 2474: "Definition of the Differentiated Services Field (DS Field) in the IPv4 and |
| 15 |  | IPv6 Headers" |
| 16 | [4] | IETF RFC 2598: "An Expedited Forwarding PHB" |
| 17 | [5] | IETF RFC 2597: "Assured Forwarding PHB Group" |
| 18 | [6] | IETF RFC 4594: "Configuration Guidelines for DiffServ Service Classes" |
| 19 | [7] | IETF RFC 826: "An Ethernet Address Resolution Protocol -- or -- Converting Network |
| 20 |  | Protocol Addresses" |
| 21 | [8] | IETF RFC 792: "INTERNET CONTROL MESSAGE PROTOCOL" |
| 22 | [9] | IETF RFC 8200: "Internet Protocol, Version 6 (IPv6) Specification" |
| 23 | [10] | IETF RFC 4861: "Neighbor Discovery for IP version 6 (IPv6)" |
| 24 | [11] | IETF RFC 4443: "Internet Control Message Protocol (ICMPv6) for the Internet Protocol |
| 25 |  | Version 6 (IPv6) Specification" |
| 26 | [12] | IETF RFC 6890: "Special-Purpose IP Address Registries" |
| 27 | [13] | IETF RFC 8190: "Updates to the Special-Purpose IP Address Registries" |
| 28 | [14] | IETF RFC 2131: "Dynamic Host Configuration Protocol" |
| 29 | [15] | IETF RFC 4361: "Node-specific Client Identifiers for Dynamic Host Configuration Protocol |
| 30 |  | Version Four (DHCPv4)" |
| 31 | [16] | IETF RFC3315: "Dynamic Host Configuration Protocol for IPv6 (DHCPv6)" |
| 32 | [17] | IETF RFC4862: "IPv6 Stateless Address Autoconfiguration" |
| 33 | [18] | IETF RFC768: "User Datagram Protocol" |
| 34 | [19] | 3GPP TS 29.060 V15.0.0: "GPRS Tunnelling Protocol (GTP) across the Gn and Gp |
| 35 |  | interface (Release 15)" |
| 36 | [20] | 3GPP TS 29.274 V16.1.0: "GPRS Tunnelling Protocol (GTP) across the Gn and Gp |
| 37 |  | interface (Release 15)" |
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
| 1 | [31] | ITU-T G.8013/Y.1731(08/2015): "Operation, administration and maintenance (OAM) |
| 2 |  | functions and mechanisms for Ethernet-based networks" |
| 3 | [32] | IETF RFC 4960. "Stream Control Transmission Protocol" |
| 4 | [33] | 3GPP TS 29.281 V15.6.0: "General Packet Radio System (GPRS) Tunnelling Protocol |
| 5 |  | User Plane (GTPv1-U) (Release 15)" |
| 6 | [34] | IETF RFC 1034: "DOMAIN NAMES - CONCEPTS AND FACILITIES" |
| 7 | [35] | IETF RFC 1035: "DOMAIN NAMES - IMPLEMENTATION AND SPECIFICATION" |
| 8 | [36] | IETF RFC 4210: "Internet X.509 Public Key Infrastructure Certificate Management |
| 9 |  | Protocol (CMP)" |
| 10 | [37] | IETF RFC 6083: "Datagram Transport Layer Security (DTLS) for Stream Control |
| 11 |  | Transmission Protocol (SCTP)" |
| 12 | [38] | 3GPP TE 33.501 V15.6.0: "Security architecture and procedures for 5G system (Release |
| 13 |  | 15)" |
| 14 | [39] | IETF RFC 4301: "Security Architecture for the Internet Protocol" |
| 15 | [40] | 3GPP TS 33.210 V16.2.0: "Network Domain Security (NDS); IP network layer security |
| 16 |  | (Release 16)" |
| 17 | [41] | 3GPP TS 33.310 V16.2.0: "Network Domain Security (NDS); Authentication Framework |
| 18 |  | (AF) (Release 16)" |
| 19 | [42] | 3GPP TS 33.401 V16.0.0: "3GPP System Architecture Evolution (SAE); Security |
| 20 |  | architecture (Release 15)" |
| 21 | [43] | 3GPP TR 33.821 V9.0.0: "Rationale and track of security decisions in Long Term Evolved |
| 22 |  | (LTE) RAN / 3GPP System Architecture Evolution (SAE) (Release 9)" |
| 23 | [44] | IETF RFC 4303: "IP Encapsulating Security Payload (ESP)" |
| 24 | [45] | IETF RFC 8221: "Cryptographic Algorithm Implementation Requirements and Usage |
| 25 |  | Guidance for Encapsulating Security Payload (ESP) and Authentication Header (AH)" |
| 26 | [46] | IETF RFC 7296: "Internet Key Exchange Protocol Version 2 (IKEv2)" |
| 27 | [47] | ETSI GS NFV-INF 005 V1.1.1 (2014-12): Network Functions Virtualisation (NFV); |
| 28 |  | Infrastructure; Network Domain |
| 29 | [48] | 3GPP TS 38.462 V15.5.0: "E1 signalling transport (Release 15)" |
| 30 | [49] | MEF 22.3: "Transport Services for Mobile Networks, January 2018" |
| 31 | [50] | 3GPP TS 29.303 V16.0.0: "Domain Name System Procedures; Stage 3 (Release 16)" |
| 32 | [51] | eCPRI Transport Requirements V1.2, Common Public Radio Interface: Requirements for |
| 33 |  | the eCPRI Transport Network, June 25, 2018. |
| 34 | [52] | IEEE 802.1CMde: Time-Sensitive Networking for Fronthaul Amendment: Enhancements |
| 35 |  | to Fronthaul Profiles to Synchronization, and Syntonization Standards Networking for |
| 36 |  | Fronthaul, --Support New Fronthaul Interface, July 26, 2019 |
| 37 | [53] | IEEE 1914.1TM D3.0, Draft Fronthaul Transport Networks, November 2018. |
| 38 | [54] | 3GPP TS 38.422 version 15.0.0 Release 15: Xn general aspects and principles |
| 39 | [55] | GSMA:"5G Implementation Guidelines: NSA Options" |
| 40 | [56] | NGMN: "NGMN Overview on 5G functional decomposition" |
| 41 | [57] | ITU-T GSTR-TN5G: "Transport Network support of IMT-2020-TG" |
| 42 | [58] | 3GPP 38.401: "NG-RAN; Architectural description" |
| 43 | [59] | O-RAN: "WG-4 Inter-Operability Testing" |
| 44 | [60] | O-RAN Open F1/W1/E1/X2/Xn Interfaces Working Group "Transport Specification" |
| 45 | [61] | O-RAN: "WDM-based Fronthaul Transport" |
| 46 | [62] | O-RAN: "Management interfaces for Transport Network Elements" |
| 47 | [63] | NGMN "5G RAN CU-DU network architecture, transport options and dimensioning, |
| 48 |  | version 1.0 12 April 2019)" |
| 49 | [64] | 5G Transport Slice Connectivity Interface - draft-rokui-5g-transport-slice-00 |
| 50 | [65] | 3GPP R3-162102 TSG-RAN Working Group 3 Meeting #93-bis CU-DU split: |
| 51 |  | Refinement for Annex A (Transport network and RAN internal functional split) |

</div>

1. [66] 3GPP TS 38.101: "NR, User Equipment (UE) radio transmission and reception"
2. [67] 3GPP TS 38.300: "NR Overall description"
3. [68] GSMA: "5G Implementation Guidelines v2"
4. [69] 3GPP TS 23.501 v6.4.0(2020-03): "System Architecture for 5G"
5. [70] MEF 61.1: "IP Service attributes"
6. [71] MEF 10.3: "Ethernet Service attributes"
7. [72] MEF 6.2: "EVC service definition"
8. [73] 3GPP TS38.306: "NR; User equipment (UE) radio access capabilities"
9. [74] NGMN "Guidelines for LTE Backhaul estimations"
10. [75] ITU-R M.2083: "IMT Vision - framework and overall objectives of the future development
11. of IMT for 2020 and beyond".
12. [76] O-RAN Fronthaul Working Group, "Control, User and Synchronization Plane

13 Specification", v08.00 (04/2022)

1. [77] 3GPP TS36.104, version 16.4.0, 01/2020, "Evolved Universal Terrestrial Radio Access
2. (E-UTRA) Base Station (BS) and radio transmission and reception".
3. [78] 3GPP TS38.104, version 16.2.0, 01/2020, "NR Base Station (BS) and radio transmission
4. and reception".
5. [79] ITU-T G.8271.1, 03/2020, "Network limits for time synchronization in packet networks
6. with full timing support from the network"
7. [80] ITU-T G.8272 Amendment 1, 03/2020, "Timing characteristics of primary reference time
8. clocks"
9. [81] ITU-T G.8272.1, Amendment 2, 08/2019, "Timing characteristics of enhanced primary
10. reference time clocks"
11. [82] ITU-T G.8275.1, 03/2020, "Precision time protocol telecom profile for phase/time
12. synchronization with full timing support from the network "
13. [83] ITU-T G.8273.2 Amendment, 03/2020, "Timing characteristics of telecom boundary
14. clocks and telecom timeReceiver clocks"
15. [84] ITU-T G.8272/Y.1367, 11/2018. "Timing characteristics of primary reference time clocks"
16. [85] 3GPP TS38.801, version 14.0.0, 03/2017, "Study on new radio access technology: Radio
17. access architecture and interfaces"
18. [86] NGMN "Overview on 5G RAN function decomposition".
19. [87] 3GPP TR22.804 v16.2.0 (2018-12), "Study on communications for automation in vertical
20. domains"

34

1. [88] ITU-T G.8271.1, 03/2020, "Network limits for time synchronization in packet networks
2. with full timing support from the network", Amendment 1, 10/2020.

37

38

# 5 Definitions and abbreviations

## 5.1 Definitions

* 1. The key words "**SHALL**", "**SHALL NOT**", "**SHOULD**", "**SHOULD NOT**", "**MAY**", and "**OPTIONAL**" in this
  2. document are to be interpreted as described in IETF RFC 2119 [25]. All key words must be in upper case, bold
  3. text.
  4. Items that are **REQUIRED** (contain the words **SHALL** or **SHALL NOT**) will be labelled as **[Rx]** for required.
  5. Items that are **RECOMMENDED** (contain the words **SHOULD** or **SHOULD NOT**) will be labelled as **[Dx]** for
  6. desirable. Items that are **OPTIONAL** (contain the words **MAY** or **OPTIONAL**) will be labelled as **[Ox]** for
  7. optional**.**
  8. Items, if supported, are not meant to be active at all times, but should be available for use. Their state (active
  9. or not active) should be based on configuration.

## 5.2 Abbreviations

* 1. Abbreviations defined in this document take precedence over the definition of 3GPP.

14

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| AF | Application Function | ITU-T | International Telecom Union-Telecom |
| AMF | Access and Mobility Management Function | LAN | Local Area Network |
| AN | Access Node | LLS | Lower Layer Split |
| ARP | Address Resolution Protocol | LTE | Long Term Evolution |
| ABW | Antenna Bandwidth | MAC | Medium Access Layer |
| BBU | Baseband Unit | MBSFN | Multimedia Broadcast multicast service Single Frequency Network |
| BER | Bit Error Ratio | MCU | Microprogrammed Control Unit |
| BERT | Bit Error Rate Tester | MPLS | Multi-Protocol Label Switching |
| BH | Backhaul | MIMO | Multiple Inputs Multiple Outputs |
| BiDi | Bidirectional | MNO | Mobile Network Operator |
| BTCA | Best TimeTransmitter Clock Algorithm |  |  |
| BS | Base Station | MRTD | Maximum Receive Time Difference |
| BW | Bandwidth | NGMN | Next Generation Mobile Network |
| CAPEX | Capital Expense | MUX/DEMUX | Multiplexer/Demultiplexer |
| CBS | Committed Burst Size | NR | New Radio |
| CFP | Common Form factor Pluggable | NSA | Non-Stand Alone |
| CIR | Committed Information Rate | NSSI | Subnet Networking Slices Instance |
| CN | Core Network | OAM | Operation Administration Maintenance |
| CoMP | Coordinated Multipoint | O-CU | O-RAN Central Unit |
| CP | Control Plane | O-DU | O-RAN Distributed Unit |
| CPRI | Common Public Radio Interface | OPEX | Operation Expense |
| CSR | Cell Site Router | O-RU | O-RAN Radio Unit |
| CU | Central Unit | PCF | Policy Control Function |
| DC | Data Center | PDCP | Packet Data Convergence Protocol |
| DL | Downlink | ppb | Parts per billion |
| DN | Data Network | PRB | Physical Resource Block |
| DHCP | Dynamic Host Configuration Protocol | PRTC | Primary Reference Telecom Clock |
| DSCP | Differentiated Services Codepoint | PTP | Precision Time Protocol |
| dTEH | Dynamic Time Error High | OFDM | Orthogonal Frequency Division Multiplexing |
| dTEL | Dynamic Time Error Low | QAM | Quadrature Amplitude Modulation |
| DU | Distributed Unit | QoS | Quality of Service |
| eCPRI | evolved Common Public Radio Interface | QSFP | Quad SFP |
| eMBB | enhanced Mobile Broadband | RB | Resource Block |
| eNB | Evolved NodeB | RRH | Remote Radio Head |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| EP | Ethernet Private | RU | Radio Unit |
| EPC | Evolved Packet Core | SCS | Sub Carrier Spacing |
| EPL | Ethernet Private Line | SCTP | Stream Control Transmission Protocol |
| ePRC | Enhanced Primary Reference Clock | SFF | Small Form Factor |
| ePRTC | Enhanced Primary Reference Telecom Clock | SFP | Small Form factor Pluggable |
| E-UTRA | evolved UMTS Terrestrial Radio Access | SLA | Service Level Agreement |
| EVP | Ethernet Virtual Private | SOH | Shared O-RU Host |
| EVPL | Ethernet Virtual Private Line | SRO | Shared Resource Operator |
| FDD | Frequency Division Duplex | TAE | Time Alignment Error |
| FFO | Fractional Frequency Offset | T-BC | Telecom Boundary Clock |
| FFS | For Further Study | TDD | Time Division Duplex |
| FH | Fronthaul | TE | Time Error (in the context of synchronization) |
| FLR | Frame Loss Ratio | T-GM | Telecom Grand Master |
|  |  | TT | TimeTransmitter |
|  |  | TR | TimeReceiver |
| FR1 | Frequency Range 1 | TN | Transport Node |
| FR2 | Frequency Range 2 | TNE | Transport Network Equipment |
| FTTH | Fiber To The Home | T-TSC | Telecom Time Synchronous Clock |
| gNB | gNodeB | TX | Transmit |
| GNSS | Global Navigation Satellite System | UDP | User Datagram Protocol |
| GPRS | General Packet Radio Service | UE | User equipment |
| GTP | GPRS Tunnelling Protocol | UL | Uplink |
| HSR | Hub Site Router | UNI | Universal Network Interface |
| ICMP | Internet Control Message Protocol | UNI-C | UNI-Customer edge |
| IoT | Internet of Things | UPF | User Plane Function |
| IP | Internet Protocol | URLLC | Ultra-Reliable Low Latency Communication |
| IQ | In phase Quadrature | VPN | Virtual Private Network |
|  |  | WDM | Wavelength Division Multiplexing |

</div>

1

2

3

# 6 Test approach and methodology

1. This section provides a definition of test use cases in Open Xhaul transport networks.

## 6.1 System under test

1. This specification covers cases that test:
2. 1. Xhaul networks from a UNI interface to another UNI interface
3. 2. Xhaul network segments that carry traffic for an overlay network.
4. 3. Individual TNEs or their components

![]({{site.baseurl}}/assets/images/f4c1efee80b7.png)8

9

### Figure 6-1: Xhaul Transport Networks

11

1. Figure 6-1 depicts a simplified overview of Xhaul transport networks that are composed of Fronthaul, Midhaul
2. and Backhaul. The first category of test cases covers the network segments between UNI interfaces of
3. Fronthaul, Midhaul or Backhaul. These test cases do not cross the O-DU or O-CU, and remain within the
4. same network (Fronthaul, Midhaul, or Backhaul).

16

1. Beyond these UNI interfaces, there may be other UNI interfaces within the individual Xhaul networks. Figure
2. 6-2 illustrates one use case that includes UNI interfaces within a Fronthaul Network. An example is the use
3. of a WDM physical interface (layer below) between packet-based solutions (layer above). Other use cases
4. include -but are not limited to- use of wireless, PON, or DOCSIS infrastructure in Backhaul, Midhaul, or
5. Fronthaul if the underlying technologies meet the necessary SLAs.

22

![]({{site.baseurl}}/assets/images/69f7d771c5ea.png)

1

### 2 Figure 6-2: UNI interfaces within Xhaul Networks

3

## 6.2 Testing Parameters

1. The test cases in this specification relate to the metrics listed in existing WG9 requirement and solution
2. documents. Examples include throughput, delay, time error or optical power level.

## 6.3 Testing Methodologies

1. Test methodologies can be categorized as follows:
2. - Equipment level vs. network level test
3. - Technology specific test methodologies

11

1. The equipment level tests verify the functionality or performance of an individual equipment or its
2. components and are covered in the next section. The network level tests perform tests from a network UNI to
3. another UNI across one or multiple equipment and are described in remaining chapters of this document.

15

1. There are technology specification test cases. Optical layer tests perform tests at optical layer, they include
2. power level or wavelength measurements. Packet layer tests use packet-based methods that generate and
3. analyse Ethernet/eCPRI packets. Synchronization tests include measurements of time or frequency error
4. that measure synchronizations signal or PTP timestamps against a reference signal that may be derived
5. from a GNSS receiver. They may need to emulate a PTP timeTransmitter or timeReceiver function to be able
6. to perform these measurements.

22

## 6.4 General (solution/technology agnostic) test use cases

* 1. 6.4.1 Equipment Testing
  2. 6.4.1.1 TNE board extraction - insertion 4

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | Equipment.01 | **Classification** | Functionality |
| **Test Title** | TNE board extraction - insertion | | |
| **Test Objective:** | The aim of the test is to check the system behavior in case of line board is physically removed from the TME shelf | | |
| **Pre-Req** | Running service will be interrupted | | |
| **Test Topology:** | ![]({{site.baseurl}}/assets/images/479d026c2817.png) | | |
| **Procedure:** | **Detailed Test procedure:**  **Test Procedure:**   1. TNE is connected to another TNE or O-RU/DU/CU & NGC/EPC, all services are running as defined in Traffic and services configuration. 2. Make a line board extraction. 3. Wait 2 minutes. 4. Make a line board insertion.   **Verifications needed:**   * 1. Verify that traffic and services emulation is running correctly after operation.   2. Check services recovery time after line board extraction and insertion.   3. Check generation and clearance of proper alarms. | | |
| **Test Configuration** | Xhaul traffic and RAN services configuration | | |
| **Pass/Fail Criteria:** | All services MUST recover after extraction and insertion of line board | | |
| **Results** | [ ] Pass [ ] Pass w/X [ ] Dropped [ ] Blocked [ ] Failed | | |
| **Test Output** | First service recovery time in seconds: Last service recovery time in seconds: | | |

</div>

1 6.4.1.2 Fiber network disconnection-connection

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | Equipment.02 | **Classification** | Functionality |
| **Test Title** | Fiber network disconnection-connection | | |
| **Test Objective:** | The aim of the test is to check the system behavior after xhaul link connection/connection | | |
| **Pre-Req** | Running service will be interrupted | | |
| **Test Topology:** | ![]({{site.baseurl}}/assets/images/479d026c2817.png) | | |
| **Procedure:** | **Detailed Test procedure:**  **Test Procedure:**   1. Make a network link disconnection/connection.   **Verifications needed:**   * 1. Verify that traffic is running correctly after operation.   2. Check services recovery time after the network link disconnection/connection.   3. Check generation and clearance of proper alarms | | |
| **Test Configuration** | Xhaul traffic and RAN services configuration | | |
| **Pass/Fail Criteria:** | 1. All services MUST recover after network link disconnection/connection 2. There is no impact for other links | | |
| **Results** | [ ] Pass [ ] Pass w/X [ ] Dropped [ ] Blocked [ ] Failed | | |
| **Test Output** | First service recovery time in seconds: Last service recovery time in seconds: | | |

</div>

2

1 6.4.1.3 Transceivers (SFP, QSFP, ...) extraction - insertion

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | Equipment.03 | **Classification** | Functionality |
| **Test Title** | Transceivers (SFP, QSFP,...) extraction - insertion | | |
| **Test Objective:** | The aim of the test is to check if transceivers can be easily extracted/inserted | | |
| **Pre-Req** | Running service will be interrupted | | |
| **Test Topology:** | ![]({{site.baseurl}}/assets/images/479d026c2817.png) | | |
| **Procedure:** | **Detailed Test procedure:**  **Test Procedure:**   1. Check if network side SFPs are easy-going to extracted/inserted. 2. Make tests for all SFPs types used with devices.   **Verifications needed:**   * 1. Verify that traffic is running correctly after operation.   2. Check if the fibres are not impacted by cabinet door close | | |
| **Test Configuration** | Xhaul traffic and RAN services configuration | | |
| **Pass/Fail Criteria:** | 1. Transceivers MUST be easy extracted and inserted 2. The closed door of the shelf/cabinet MUST NOT impact fibres by too much bending or other ways | | |
| **Results** | [ ] Pass [ ] Pass w/X [ ] Dropped [ ] Blocked [ ] Failed | | |
| **Test Output** |  | | |

</div>

2

1 6.4.1.4 TNE board swap

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | Equipment.04 | **Classification** | Functionality |
| **Test Title** | TNE board swap | | |
| **Test Objective:** | The aim of the test is to check TME behavior when Board is swapped | | |
| **Pre-Req** | Running service will be interrupted | | |
| **Test Topology:** | ![]({{site.baseurl}}/assets/images/479d026c2817.png) | | |
| **Procedure:** | **Detailed Test procedure:**  **Test Procedure:**   1. TNE is connected to another TNE or O-RU/DU/CU & NGC/EPC, start traffic over the services as defined in Traffic and services configuration 2. Disconnect customers fiber and extract the TNE board 3. Insert new TNE board in the same slot and connect the fiber to new TNE board (ex. Board 10GEth to 25GEth, 10GETh w/o sync. features to 10GEth with sync. feature...)   **Verifications needed:**   * 1. Check services impact and alarms | | |
| **Test Configuration** | Xhaul traffic and RAN services configuration | | |
| **Pass/Fail Criteria:** | 1. The services MUST recover on the new line board on step 3 2. 2- LT board is operational without alarm | | |
| **Results** | [ ] Pass [ ] Pass w/X [ ] Dropped [ ] Blocked [ ] Failed | | |
| **Test Output** |  | | |
| **Comment** | Swap could be done between   * two identical boards (same type and hardware version) * two boards with same type but with different hardware version * two boards with different type and hardware version (for example 1GETh board replaced by 10GETh board) | | |

</div>

1 6.4.1.5 Restarts - TNE electric power off-on 2

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | Equipment.05 | **Classification** | Functionality |
| **Test Title** | Restarts - TNE electric power off-on | | |
| **Test Objective:** | The aim of the test is to check if the system behavior after electrical power off/on | | |
| **Pre-Req** | Running service will be interrupted | | |
| **Test Topology:** | ![]({{site.baseurl}}/assets/images/479d026c2817.png) | | |
| **Procedure:** | **Detailed Test procedure:**  **Test Procedure:**   1. Connect TNE to another TNE or O-RU/DU/CU & NGC/EPC, start traffic over the services as defined in Traffic and services configuration chapter 2. Save the configuration 3. Make an TNE electrical off/on   **Verifications needed:**   * 1. Check the relevant table (MAC, vMAC, DHCP, ARP) persistency/recovery.   2. Verify that traffic is running correctly after operation.   3. Check services recovery time after operation.   4. Note time recover | | |
| **Test Configuration** | Xhaul traffic and RAN services configuration | | |
| **Pass/Fail Criteria:** | All services MUST recover after electrical TNE power off/on | | |
| **Results** | [ ] Pass [ ] Pass w/X [ ] Dropped [ ] Blocked [ ] Failed | | |
| **Test Output** | First service recovery time in seconds:  Last service recovery time in seconds: | | |

</div>

1 Restarts - TNE board software reset

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | Equipment.06 | **Classification** | Functionality |
| **Test Title** | Restarts - TNE board software reset | | |
| **Test Objective:** | The aim of the test is to check if the system behavior after board software reset | | |
| **Pre-Req** | Running service will be interrupted | | |
| **Test Topology:** | ![]({{site.baseurl}}/assets/images/479d026c2817.png) | | |
| **Procedure:** | **Detailed Test procedure:**  **Test Procedure:**   1. Connect TNE to another TNE or O-RU/DU/CU & NGC/EPC, start traffic over the services as defined in Traffic and services configuration chapter 2. Save the configuration 3. Make an TNE board software reset   **Verifications needed:**   * 1. Check the relevant table (MAC, vMAC, DHCP, ARP) persistency/recovery.   2. Verify that traffic is running correctly after operation.   3. Check services recovery time after operation.   4. Note time recover | | |
| **Test Configuration** | Xhaul traffic and RAN services configuration | | |
| **Pass/Fail Criteria:** | All services MUST recover after TNE board software reset | | |
| **Results** | [ ] Pass [ ] Pass w/X [ ] Dropped [ ] Blocked [ ] Failed | | |
| **Test Output** | First service recovery time in seconds:  Last service recovery time in seconds: | | |

</div>

2

1 6.4.1.6 Mirror port

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | Equipment.07 | **Classification** | Functionality |
| **Test Title** | Mirror port | | |
| **Test Objective:** | The aim of the test is to check if TNE supports port monitoring | | |
| **Pre-Req** | Running service will be interrupted | | |
| **Test Topology:** | ![]({{site.baseurl}}/assets/images/479d026c2817.png) | | |
| **Procedure:** | **Detailed Test procedure:**  **Test Procedure:**   1. Configure TNE port. 2. Configure TNE mirror port to other port. 3. Send bidirectional traffic through TNE. 4. Capture traffic on mirror port   **Verifications needed:**   * 1. Verify that the traffic was captured on mirror port. | | |
| **Test Configuration** | Xhaul traffic and RAN services configuration | | |
| **Pass/Fail Criteria:** | All traffic on source port MUST be visible on mirror port | | |
| **Results** | [ ] Pass [ ] Pass w/X [ ] Dropped [ ] Blocked [ ] Failed | | |
| **Test Output** |  | | |

</div>

2

1 6.4.1.7 Board provisioning

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | Equipment.08 | **Classification** | Functionality |
| **Test Title** | Board provisioning | | |
| **Test Objective:** | The aim of the test is to check no problem is observed when a new board is installed and configured in the TNE shelf | | |
| **Pre-Req** | Running service will be interrupted | | |
| **Test Topology:** | ![]({{site.baseurl}}/assets/images/479d026c2817.png) | | |
| **Procedure:** | **Detailed Test procedure:**  **Test Procedure:**   1. Insert board in an empty slot. 2. Make relevant action if necessary (Plan board, acknowledgment, etc.). 3. List alarm(s) reported during operation. 4. Connect and provision traffic. 5. Send traffic.   **Verifications needed:**   * 1. Board is detected in step 1.   2. Board is recognized in step 2.   3. Connection is created in step 4.   4. Traffic is running without error in step 5 | | |
| **Test Configuration** | Xhaul traffic and RAN services configuration | | |
| **Pass/Fail Criteria:** |  | | |
| **Results** | [ ] Pass [ ] Pass w/X [ ] Dropped [ ] Blocked [ ] Failed | | |
| **Test Output** |  | | |

</div>

2

3

4

1. 6.4.2 PHY layer test
2. 6.4.2.1 Transceiver operating wavelength

3

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | PHY.01 | **Classification** | Functionality |
| **Test Title** | Transceiver operating wavelength | | |
| **Test Objective:** | The aim of the test is to check the conformity of operating wavelength of the transceiver with adequate specification (IEEE, MSA, ITU,...) | | |
| **Pre-Req** | Running service will be interrupted | | |
| **Test Topology:** | ![]({{site.baseurl}}/assets/images/1f665a23ee2d.png) | | |
| **Procedure:** | **Detailed Test procedure:**  **Test Procedure:**   1. Insert an optical spectrum analyser and 1 to 2 splitter as described on relevant test setup    1. For bidirectional link (half duplex)    2. For full duplex link: insert splitter on the required transmission link and connect the other link directly. 2. Start traffic as defined in Ethernet tests case. 3. Measure the wavelength of generated signal with optical spectrum analyzer. 4. Check the wavelength value of the transceiver remotely based on digital diagnostic. 5. Note the result.   **Verifications needed:**   1. Traffic correctly forwarded on step 2 and step 3 2. TNE operational without alarms on step 2 and step 3 3. Wavelength of generated signal in accordance with the specification | | |
| **Test Configuration** | Xhaul traffic and RAN services configuration | | |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Pass/Fail Criteria:** | 1. Wavelength of generated signal MUST be in accordance with the specification. 2. Digital diagnostic wavelength value in accordance with measure value |
| **Results** | [ ] Pass [ ] Pass w/X [ ] Dropped [ ] Blocked [ ] Failed |
| **Test Output** | **Comments:**  The results are presented in the table below: |

</div>

1

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Transceiver** | **Recommendation** | **Measured values** |
| Vendor: Model:  SN: | xxxx +/- yy nm |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
|  |  |  |
|  |  |  |
|  |
|  |

</div>

1 6.4.2.2 Mean launched optical power of transceiver.

2

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | PHY.02 | **Classification** | Functionality |
| **Test Title** | Mean launched optical power of transceiver | | |
| **Test Objective:** | The aim of the test is to check the conformity of mean launched optical power of the transceiver with adequate specification (IEEE, MSA, ITU,...) | | |
| **Pre-Req** | Running service will be interrupted | | |
| **Test Topology:** | ![]({{site.baseurl}}/assets/images/762dc474b384.png) | | |
| **Procedure:** | **Detailed Test procedure:**  **Test Procedure:**   1. Insert an optical power meter and 1 to 2 splitter as described on relevant test setup    1. For bidirectional link (half duplex)    2. For full duplex link: insert splitter on the required transmission link and connect the other link directly. 2. Start traffic as defined in Ethernet tests case. 3. Measure and report the optical power by power meter at the adequate wavelength displayed by power meter (1 measurement) [calibration is required including optical splitter loss] 4. Check the received optical output power of the transceiver remotely based on digital diagnostic. 5. Note the result. 6. Measure and report the repeatability of the optical power by power meter and remotely by digital diagnostic after fiber disconnection / connection on the transceiver (3 additional measurements)   **Verifications needed:**   1. Traffic correctly forwarded on step 2, 3 and 4 2. TNE operational without alarms on step 2 and step 3 3. Optical power of generated signal in accordance with the specification | | |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
|  | **4.** Digital diagnostic received optical value in accordance with measure value |
| **Test Configuration** | Xhaul traffic and RAN services configuration |
| **Pass/Fail Criteria:** | 1. All optical power measurements of generated signal MUST be in accordance with the specification. 2. Digital diagnostic transmitter optical output power MUST be in accordance with measured values |
| **Results** | [ ] Pass [ ] Pass w/X [ ] Dropped [ ] Blocked [ ] Failed |
| **Test Output** | **Comments:**  The results are presented in the table below: |

</div>

1

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **Transceiver** | **Recommendation** | **Measured values (after fibre disconnection / connection) by power meter and by digital**  **diagnostic** | | | |
| **Vendor Model SN** | (xx, yy) dBm |  |  |  |  |

</div>

1 6.4.2.3 Optical sensitivity of transceiver

2

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | PHY.03 | **Classification** | Functionality |
| **Test Title** | Optical sensitivity of transceiver | | |
| **Test Objective:** | The aim of the test is to check the conformity of optical sensitivity of the transceiver with adequate specification (IEEE, MSA, ITU,...) | | |
| **Pre-Req** | Running service will be interrupted | | |
| **Test Topology:** | ![]({{site.baseurl}}/assets/images/105780267fcf.png) | | |
| **Procedure:** | **Detailed Test procedure:**  **Test Procedure:**   1. Insert an optical power meter with 1 to 2 splitter and a variable optical attenuator with optical multiplexor (or circulator) at adequate wavelength and link as described on relevant test setup.    1. For bidirectional link (half duplex) : top part of the set up    2. For full duplex link: bottom part of the set up. 2. Configure if possible FEC off or FEC on or type of FEC on 3. Start traffic as defined in Ethernet tests case. 4. Increase the optical attenuation gradually on attenuator [dB] till the moment when dropping of Ethernet frames / bit errors are observed. 5. Measure and report the optical power at the adequate wavelength displayed by optical power meter [calibration is required including optical splitter loss] 6. Check the received optical power of the transceiver remotely based on digital diagnostic. 7. Note the result.   **Verifications needed:**   1. Traffic correctly forwarded on step 3 and 4 (before drop frame) 2. TNE operational without alarms on step 3 and 4 (before drop frame) 3. Optical sensitivity of transceiver in accordance with the specification 4. Digital diagnostic received optical value in accordance with measure value | | |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Test Configuration** | Xhaul traffic and RAN services configuration |
| **Pass/Fail Criteria:** | 1. Optical sensitivity of transceiver MUST be in accordance with the specification. 2. Digital diagnostic received optical value MUST be in accordance with measured value |
| **Results** | [ ] Pass [ ] Pass w/X [ ] Dropped [ ] Blocked [ ] Failed |
| **Test Output** | **Comments:**  The results are presented in the table below: Forward Error Correction (FEC): state/type |

</div>

1

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Transceiver** | **Recommendation** | **Measured values (FEC state)** |
| **Vendor Model**  **SN** | xx dBm |  |

</div>

1 6.4.2.4 Minimum optical overload of transceiver

2

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | PHY.04 | **Classification** | Functionality |
| **Test Title** | Minimum optical overload of transceiver | | |
| **Test Objective:** | The aim of the test is to check the conformity of minimum optical overload of the transceiver with adequate specification (IEEE, MSA, ITU,...) | | |
| **Pre-Req** | Running service will be interrupted | | |
| **Test Topology:** | ![]({{site.baseurl}}/assets/images/105780267fcf.png) | | |
| **Procedure:** | **Detailed Test procedure:**  **Test Procedure:**   1. Insert an optical power meter with 1 to 2 splitter and a variable optical attenuator with optical multiplexor (or circulator) at adequate wavelength and link as described on relevant test setup.    1. For bidirectional link (half duplex): top part of the set up.    2. For full duplex link: bottom part of the set up. 2. Start traffic as defined in Ethernet tests case. 3. Decrease the optical attenuation gradually on attenuator [dB] till the moment when dropping of Ethernet frames / bit errors are observed. 4. Measure and report the optical power at the adequate wavelength displayed by optical power meter [calibration is required including optical splitter loss] 5. Check the received optical power of the transceiver remotely based on digital diagnostic. 6. Note the result.   **Verifications needed:**   1. Traffic correctly forwarded on step 2 and 3 (before drop frame) 2. TNE operational without alarms on step 2 and 3 (before drop frame) 3. Minimum optical overload of transceiver in accordance with the specification 4. Digital diagnostic received optical value in accordance with measure value | | |
| **Test Configuration** | Xhaul traffic and RAN services configuration | | |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Pass/Fail Criteria:** | 1. Minimum optical overload of transceiver MUST be in accordance with the specification. 2. Digital diagnostic received optical value MUST be in accordance with measured value |
| **Results** | [ ] Pass [ ] Pass w/X [ ] Dropped [ ] Blocked [ ] Failed |
| **Test Output** | **Comments:**  The results are presented in the table below: Forward Error Correction (FEC): state/type |

</div>

1

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **Transceiver** | **Recommendation** | **Measured value** | **Digital diagnostic value** |
| **Vendor Model**  **SN** | xx dBm |  |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
|  |  |  |  |
|  |  |  |  |

</div>

1 6.4.2.5 Transceiver at minimum and maximum distance (km)

2

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | PHY.05 | **Classification** | Functionality |
| **Test Title** | Transceiver at minimum and maximum distance (km) | | |
| **Test Objective:** | The aim of the test is to check the conformity to distance parameter with adequate specification (IEEE, MSA, ITU,...) | | |
| **Pre-Req** | Running service will be interrupted | | |
| **Test Topology:** | ![]({{site.baseurl}}/assets/images/28b7a29703c7.png) | | |
| **Procedure:** | **Detailed Test procedure:**  **Test Procedure:**   1. Insert an optical fiber loop of maximum km length, a variable optical attenuator, and an optical power meter connected to a 1 to 2 splitter as described on relevant test setup.    1. For bidirectional link (half duplex)    2. For full duplex link: insert test devices on the required transmission link and connect the other link directly. 2. Configure if possible FEC off or FEC on or type of FEC on 3. Set an attenuation of optical attenuator to the value relating to the optical sensitivity value. 4. Start traffic as defined in Ethernet tests case. 5. Fifteen minutes later, disconnect / connect the transceivers. 6. Control the traffic. 7. Insert minimum km of optical. 8. Set an attenuation of optical attenuator to the value relating to the optical sensitivity value. 9. Control the traffic. 10. Fifteen minutes later, disconnect / connect the transceivers. 11. Control the traffic. | | |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
|  | 1. Set an attenuation of optical attenuator to the value relating to the optical overload value. 2. Control the traffic. 3. Fifteen minutes later, disconnect / connect the transceivers. 4. Control the traffic. 5. Check the link length supported pf the transceiver remotely based on digital diagnostic. 6. Note the result.   **Verifications needed:**   * 1. Traffic correctly forwarded on step 4, 6, 9, 11, 13 and 15.   2. TNE operational without alarms on step 4, 6, 9, 11, 13 and 15.   3. Digital diagnostic link length supported in accordance with maximum km of fiber |
| **Test Configuration** | Xhaul traffic and RAN services configuration |
| **Pass/Fail Criteria:** | 1. Traffic is correctly forwarded without frame loss on step 4, 6, 9, 11, 13 and 15. 2. Maximum km of fiber must be equal or greater than the specified value. 3. Minimum km of fiber must be equal or less than the specified value. 4. Digital diagnostic link length supported must be in accordance with maximum km of fiber. |
| **Results** | [ ] Pass [ ] Pass w/X [ ] Dropped [ ] Blocked [ ] Failed |
| **Test Output** | **Comments:**  The results are presented in the table below: Forward Error Correction (FEC): state/type |

</div>

1

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Transceiver** | **Recommendation** | **Measured values** |
| **Vendor Model SN** | Minimum km |  |
| Maximum km |  |

</div>

1. 6.4.2.6 Transceiver extinction ratio and eye diagram
2. This test case is FFS.

3

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | PHY.06 | **Classification** | Functionality |
| **Test Title** | Transceiver extinction ratio and eye diagram | | |
| **Test Objective:** | The aim of the test is to check the conformity | | |
| **Pre-Req** | Running service will be interrupted | | |
| **Test Topology:** |  | | |
| **Procedure:** | **Detailed Test procedure: Test Procedure:**  18. x  **Verifications needed:**  1. x  **2.** | | |
| **Test Configuration** | Xhaul traffic and RAN services configuration | | |
| **Pass/Fail Criteria:** | 5. x | | |
| **Results** | [ ] Pass [ ] Pass w/X [ ] Dropped [ ] Blocked [ ] Failed | | |
| **Test Output** | **Comments:**  The results are presented in the table below: | | |

</div>

4

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Transceiver** | **Recommendation** | **Measured values** |
| **Vendor Model SN** |  |  |
|  |  |

</div>

1 6.4.2.7 Transceiver information display

2

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | PHY.07 | **Classification** | Functionality |
| **Test Title** | Transceiver information display | | |
| **Test Objective:** | The aim of the test is to check information of optical interface remotely | | |
| **Pre-Req** |  | | |
| **Test Topology:** |  | | |
| **Procedure:** | **Detailed Test procedure:**  **Test Procedure and Verification:**   1. Insert the transceiver. 2. Check the type of optical transceiver remotely and all available digital diagnostic values. 3. Note the result. | | |
| **Test Configuration** | Xhaul traffic and RAN services configuration | | |
| **Pass/Fail Criteria:** | The system MUST show:   * Type/class * SFP vendor * Part number * S/N * Manufacturing date * Link length supported. * Temperature * Supply voltage * Tx bias current * Tx output power * Rx optical power | | |
| **Results** | [ ] Pass [ ] Pass w/X [ ] Dropped [ ] Blocked [ ] Failed | | |
| **Test Output** | **Comments:** | | |

</div>

3

1 6.4.3 Alarm and Monitoring Test Cases

2

1. 6.4.3.1 Alarm on board reset and plug out.

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | Alarm & Monitoring.01 | **Classification** | Functionality |
| **Test Title** | Alarm on board reset and plug out | | |
| **Test Objective:** | The aim of the test is to check if TNE send and cleared alarm when board is rebooted or plugout/plugin | | |
| **Pre-Req** | Running service will be interrupted | | |
| **Test Topology:** | ![]({{site.baseurl}}/assets/images/3eed807db7a5.png) | | |
| **Procedure:** | **Detailed Test procedure:**  **Test Procedure & Verifications needed:**   1. Perform a board reset/reboot. 2. Measure and report the duration to raise the alarm from the line/interface disconnection. 3. After board recover 4. Measure and report the duration to clear the alarm from the line/interface disconnection. 5. Perform a board plug-out. 6. Measure and report the duration to raise the alarm from the line/interface disconnection. 7. Perform a board plugin. 8. Measure and report the duration to clear the alarm from the line/interface disconnection | | |
| **Test Configuration** | Xhaul traffic and RAN services configuration | | |
| **Pass/Fail Criteria:** | 1. Alarm reported within 1 minute on step 2 and 6 2. Alarm cleared within 1 minute on step 4 and 8 | | |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Results** | [ ] Pass [ ] Pass w/X [ ] Dropped [ ] Blocked [ ] Failed |
| **Test Output** | Alarms is reported xx second.  Alarms is cleared xx second |

</div>

1

1 6.4.3.2 Alarm time stamping

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | Alarm & Monitoring.02 | **Classification** | Functionality |
| **Test Title** | Alarm time stamping | | |
| **Test Objective:** | The aim of the test is to check if for TNE is possible to determine the exact time when the alarm was raised | | |
| **Pre-Req** | Running service will be interrupted | | |
| **Test Topology:** | ![]({{site.baseurl}}/assets/images/3eed807db7a5.png) | | |
| **Procedure:** | **Detailed Test procedure:**  **Test Procedure:**   1. Simulate few alarms. 2. Show alarms history.   **Verifications needed:**   * 1. Check if time stamping (Date and Time) is available for all alarms and events/warnings.   2. Check if is possible to retrieve the exact time when the alarm was raised from the   alarm timestamp | | |
| **Test Configuration** | Xhaul traffic and RAN services configuration | | |
| **Pass/Fail Criteria:** | 1. There MUST be possible to check time stamping on TNE 2. There MUST be possible to determine the exact time when the alarm was raised | | |
| **Results** | [ ] Pass [ ] Pass w/X [ ] Dropped [ ] Blocked [ ] Failed | | |
| **Test Output** |  | | |

</div>

2

1. 6.4.3.3 Ethernet link down alarm
2. This test is FFS.

3

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | Alarm & Monitoring.03 | **Classification** | Functionality |
| **Test Title** | Ethernet link down alarm | | |
| **Test Objective:** | The aim of the test is to generate and clear an Ethernet link down alarm xhaul link | | |
| **Pre-Req** | Running service will be interrupted | | |
| **Test Topology:** | ![]({{site.baseurl}}/assets/images/479d026c2817.png) | | |
| **Procedure:** | **Detailed Test procedure:**  **Test Procedure and Verifications needed:**   1. Perform optical Point to Point port fibre disconnection. 2. Measure and report the duration to raise the alarm. 3. Perform optical Point to Point port fibre connection. 4. Measure and report the duration to clear the alarm. | | |
| **Test Configuration** | Xhaul traffic and RAN services configuration | | |
| **Pass/Fail Criteria:** | 1. "Ethernet link down" for optical Point to Point reported within 1 minute on step. 2. "Ethernet link down" for optical Point to Point cleared within 1 minute on step 4 | | |
| **Results** | [ ] Pass [ ] Pass w/X [ ] Dropped [ ] Blocked [ ] Failed | | |
| **Test Output** | "Ethernet link down" alarm is reported xx minutes yy seconds.  "Ethernet link down" alarm is cleared yy seconds | | |

</div>

4

1. 6.4.3.4 Dying Gasp (DG)
2. This test is FFS.

3

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | Alarm & Monitoring.04 | **Classification** | Functionality |
| **Test Title** | Dying Gasp (DG) | | |
| **Test Objective:** | The aim of the test is to generate and clear a Dying Gasp (DG) of TNE alarm | | |
| **Pre-Req** | Running service will be interrupted | | |
| **Test Topology:** | ![]({{site.baseurl}}/assets/images/3b2291074ac7.png) | | |
| **Procedure:** | **Detailed Test procedure:**  **Test Procedure and Verifications needed:**   1. Perform the TNE1 or O-RU/DU/CU electrical power off. 2. Measure and report the duration to raise the alarm on the TNE2 when the second TNE1 electrical power off 3. Perform an TNE1 electrical power on 4. Measure and report the duration to clear the alarm on the TNE2 when the TNE1 electrical power on 5. Repeat the test few times. | | |
| **Test Configuration** | Xhaul traffic and RAN services configuration | | |
| **Pass/Fail Criteria:** | 1. DG alarm reported within 1 minute on step 2 2. DG alarm cleared within 2 minutes on step 4 | | |
| **Results** | [ ] Pass [ ] Pass w/X [ ] Dropped [ ] Blocked [ ] Failed | | |
| **Test Output** | DG alarm is reported xx minutes yy seconds.  DG alarm is cleared xx minutes yy seconds | | |

</div>

4

1. 6.4.3.5 No Loss Of Signal alarm for Dying Gasp (DG) alarm
2. This test is FFS.

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | Alarm & Monitoring.05 | **Classification** | Functionality |
| **Test Title** | No Loss Of Signal alarm for Dying Gasp (DG) alarm | | |
| **Test Objective:** | The aim of the test is to check alarms reported when all/many links on one TNE report DG (Dying Gasp) alarm | | |
| **Pre-Req** | Running service will be interrupted | | |
| **Test Topology:** | ![]({{site.baseurl}}/assets/images/3b2291074ac7.png) | | |
| **Procedure:** | **Detailed Test procedure:**  **Test Procedure:**   1. Perform all/many TNE1 or O-RU/DU/CU electrical power off.   **Verifications needed:**   * 1. Check if last link reports DG then no LOS alarm is reported (Check if this behaviour is enabled)   2. Wait and check if no LOS alarm was reported | | |
| **Test Configuration** | Xhaul traffic and RAN services configuration | | |
| **Pass/Fail Criteria:** | 1- No LOS alarm is reported | | |
| **Results** | [ ] Pass [ ] Pass w/X [ ] Dropped [ ] Blocked [ ] Failed | | |
| **Test Output** | DG alarm is reported xx minutes yy seconds  DG alarm is cleared xx minutes yy seconds | | |

</div>

3

4

1. 6.4.3.6 Transceiver (SFP, QSFP,...) Rx optical power alarm threshold

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | Alarm & Monitoring.06 | **Classification** | Functionality |
| **Test Title** | Transceiver (SFP, QSFP,...) Rx optical power alarm threshold | | |
| **Test Objective:** | The aim of the test is to check if the transceiver received optical power parameters exceed warning high and low threshold then alarm is reported. When Rx signal is lower and higher than threshold defined then alarm is cleared properly. | | |
| **Pre-Req** | Running service will be interrupted | | |
| **Test Topology:** | ![]({{site.baseurl}}/assets/images/0f085145e0d7.png) | | |
| **Procedure:** | **Detailed Test procedure:**  **Test Procedure and Verifications needed:**   1. Configure Rx power parameter threshold high and low. 2. Connect variable optical attenuator and change optical power. Rx signal must be higher than the threshold range. 3. Measure and report the duration to raise the alarm. 4. Check that alarm is cleared if Rx power is in the threshold range. 5. Measure and report the duration to clear the alarm. 6. Connect variable optical attenuator and change optical power. Rx signal must be lower than the threshold range. 7. Measure and report the duration to raise the alarm. 8. Check that alarm is cleared if Rx power is in the threshold range. 9. Measure and report the duration to clear the alarm. | | |
| **Test Configuration** | Xhaul traffic and RAN services configuration | | |
| **Pass/Fail Criteria:** | 1. Alarm "RX high power" reported within 1 minute on step 2 2. Alarm "RX high power" cleared within 1 minute on step 4 3. Alarm "RX low power" reported within 1 minute on step 6 4. Alarm "RX low power" cleared within 1 minute on step 8 | | |
| **Results** | [ ] Pass [ ] Pass w/X [ ] Dropped [ ] Blocked [ ] Failed | | |
| **Test Output** | Alarm "RX high power" is reported xx second.  Alarm "RX high power" is cleared xx second. | | |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
|  | Alarm "RX low power" is reported xx second.  Alarm "RX low power" is cleared xx second |

</div>

1

1. 6.4.3.7 Transceiver (SFP, QSFP,...) Tx optical power alarm threshold

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | Alarm & Monitoring.07 | **Classification** | Functionality |
| **Test Title** | Transceiver (SFP, QSFP,...) Tx optical power alarm threshold | | |
| **Test Objective:** | The aim of the test is to check if the Ethernet transceiver emitted optical power parameters exceed warning high and low threshold then alarm is reported. When Tx signal is lower and higher than threshold defined then alarm is cleared properly. | | |
| **Pre-Req** | Running service will be interrupted | | |
| **Test Topology:** | ![]({{site.baseurl}}/assets/images/479d026c2817.png) | | |
| **Procedure:** | **Detailed Test procedure:**  **Test Procedure and Verifications needed:**   1. Configure Tx power parameter threshold high, Tx signal must be higher than the threshold range. 2. Measure and report the duration to raise the alarm. 3. Configure Tx power parameter threshold high, Tx signal must be in the threshold range. 4. Check that alarm is cleared. 5. Measure and report the duration to clear the alarm. 6. Configure Tx power parameter threshold low, Tx signal must be lower than the threshold range. 7. Measure and report the duration to raise the alarm. 8. Configure Tx power parameter threshold low, Tx signal must be in the threshold range. 9. Check that alarm is cleared. 10. Measure and report the duration to clear the alarm. | | |
| **Test Configuration** | Xhaul traffic and RAN services configuration | | |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Pass/Fail Criteria:** | 1. Alarm "TX high power" reported within 1 minute on step 2 2. Alarm "TX high power" cleared within 1 minute on step 4 3. Alarm "TX low power" reported within 1 minute on step 7 4. Alarm "TX low power" cleared within 1 minute on step 9 |
| **Results** | [ ] Pass [ ] Pass w/X [ ] Dropped [ ] Blocked [ ] Failed |
| **Test Output** | Alarm "TX high power" is reported xx second. Alarm "TX high power" is cleared xx second. Alarm "TX low power" is reported xx second. Alarm "TX low power" is cleared xx second.  xx is to be defined by the vendor. |

</div>

1

1 6.4.3.8 Severity handling of alarms

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | Alarm & Monitoring.08 | **Classification** | Functionality |
| **Test Title** | Severity handling of alarms | | |
| **Test Objective:** | The aim of the test is to verify the severity handling of alarms | | |
| **Pre-Req** | Running service will be interrupted | | |
| **Test Topology:** | ![]({{site.baseurl}}/assets/images/479d026c2817.png) | | |
| **Procedure:** | **Detailed Test procedure:**  **Test Procedure and Verifications needed:**   1. Change the severity of an alarm. 2. Generate the alarm. 3. Check that the alarm is reported with the configured severity level. 4. Change the severity of the selected alarm with the default value. 5. Generate the alarm. 6. Check that the alarm is reported with the configured severity level. | | |
| **Test Configuration** | Xhaul traffic and RAN services configuration | | |
| **Pass/Fail Criteria:** | Alarm must be reported with the configured severity level on step 3 and step 6 | | |
| **Results** | [ ] Pass [ ] Pass w/X [ ] Dropped [ ] Blocked [ ] Failed | | |
| **Test Output** | " | | |

</div>

2

1 6.4.3.9 Port-ID (IDentification) maintenance

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | Alarm & Monitoring.08 | **Classification** | Functionality |
| **Test Title** | Port-ID (IDentifcation) maintenance | | |
| **Test Objective:** | The aim of the test is to check the ID feature | | |
| **Pre-Req** | Running service will be interrupted | | |
| **Test Topology:** | ![]({{site.baseurl}}/assets/images/479d026c2817.png) | | |
| **Procedure:** | **Detailed Test procedure:**  **Test Procedure and Verifications needed:**   1. Configure Port-ID at TNE 2. Check if Port-ID modification can be done with TNE in administrative state up. 3. Connect an Ethernet teste on the link. | | |
| **Test Configuration** | Xhaul traffic and RAN services configuration | | |
| **Pass/Fail Criteria:** | 1. Port-ID creation and modification should be possible without service impact for customer on step 2 2. Port-ID should be retrieved on step 3 | | |
| **Results** | [ ] Pass [ ] Pass w/X [ ] Dropped [ ] Blocked [ ] Failed | | |
| **Test Output** |  | | |

</div>

2

3

4

5

**...**

**...**

OM/OD

# 7 WDM-based Fronthaul Transport Testing

1. Fronthaul in O-RAN is defined as the connectivity in the RAN infrastructure between the Distributed Unit (O-
2. DU) and Radio Unit (O-RU).

4

## 7.1 Fronthaul Testing use cases.

1. 7.1.1 Transmit Power

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | DWDM.HEE.01 | **Classification** | Functionality |
| **Test Title** | Transmitting power at the DWDM head end equipment (HEE) | | |
| **Test Objective:** | To test transmitting power levels at the HEE | | |
| **Pre-Req** | Running service will be interrupted | | |
| **Test Topology:** | Refer to O-RAN.WG9.WDM-v01.00, Section 2.3 Semi-Active WDM system  OPM Client Network OPM Tx1 Tx1 ![]({{site.baseurl}}/assets/images/f0b83e306997.png) Rx1 Rx1  Ref. 1 Ref. 2  Tx2 Tx2 Ref. 3 O-DU ? O-RU  Rx2 Rx2  O-DU ? O-RU  Txn Txn OPM  Rxn Rxn  OSA  WDM HEE/O-DU | | |
| **Required tester** | Optical power meter (OPM), optical spectrum analyzer (OSA) | | |
| **Test Configuration** | 1. Disable all the other transmitters (e.g. Txn) which are NOT under test; | | |
| **Procedure:** | **Detailed Test procedure:**   1. Connect the OPM and OSA to the reference points shown in the above test configuration. 2. Read the power level of Ref. 1 (Client Tx). 3. Read the power level of Ref. 2 (Network Tx). 4. Read the power level of Ref. 3 (Network Port of OM/OD) 5. Measure the center frequency and the optical spectrum at Ref. 3 (Network Port of OM/OD) 6. To carry out the procedure for all the other transmitters. | | |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
|  | **Verifications needed:**   1. Record Tx power readings from the host network management. |
| **Pass/Fail Criteria:** | 1. Tx power at Ref. 1 should be -8 to 0 dBm. 2. Tx power at Ref. 2 complies with O-RAN.WG9.WDM-v01.00, Table 6-10, depending on the pluggable variants. 3. Tx power at Ref. 3 should be within the range of Ref. 2 deducting maximum insertion loss of 4.6 dB. 4. Optical spectrum complies with O-RAN.WG9.WDM-v01.00, Table 6-10, depending on the pluggable variants. |
| **Test Output** |  |
|  |  |

</div>

1

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| Interface | Network Mgmt.  Tx power (dBm) | OPM  Tx power (dBm) |
| Client |  |  |
| Network |  |  |
| OM/OD |  |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
|  |  |  |
|  |  |  |
|  |  |  |
|  |  |  |

</div>

2

1 7.1.2 Receive Sensitivity

2

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| **Test ID** | DWDM.HEE.02 | | | | **Classification** | | | Functionality | |
| **Test Title** | Receiving sensitivity at the DWDM head end equipment (HEE) | | | | | | | | |
| **Test Objective:** | To test received power level and receiving sensitivity at the HEE | | | | | | | | |
| **Pre-Req** | Running service will be interrupted | | | | | | | | |
| **Test Topology:** | Refer to O-RAN.WG9.WDM-v01.00, Section 2.3 Semi-Active WDM system ![]({{site.baseurl}}/assets/images/a1ae2630df4e.png) OPM OPM | | | | | | | | |
| Client | | | Network ![]({{site.baseurl}}/assets/images/89114273c3e7.png)![]({{site.baseurl}}/assets/images/b063489e9658.png)![]({{site.baseurl}}/assets/images/29d7c485bbbc.png) | | | | | O-DU ? O-RU  Ref. 3  O-DU ? O-RU |
| Traffic  Tester | Tx1  Rx1 |  |  | | Tx1  Rx1 |  | |
|  |  | |
| Ref. 1 |  |  |  | |  | Ref. 2 VOA | |
|  | Tx2  Rx2 |  |  | | Tx2  Rx2 | OD | |
|  |  | |
|  | **...** |  |  | | **...** | OM/ | |
|  | Txn Rxn |  |  | | Txn Rxn |  | |
|  |  | |
|  |  |  |  | | | | |
| WDM HEE/O-DU | | | | | | | | |
| **Required tester** | Optical power meter (OPM), variable optical attenuator (VOA), traffic tester (eCPRI) | | | | | | | | |
| **Test Configuration** |  | | | | | | | | |
| **Procedure:** | **Detailed Test procedure:**   1. Connect the OPM, VOA, and traffic tester to the reference points shown in the above test configuration. 2. Disable all the other transmitters (e.g. Txn) on both O-DU and O-RU ends which are NOT under test. 3. Configure the traffic tester accordingly to terminate the traffic flow from the O-RU. 4. Gradually increase the attenuation of VOA, until the BER is stable at the threshold of 1e-12 for 10 minutes. 5. Read the Tx/Rx power level of Ref. 1 (Client Tx/Rx); 6. Read the Rx power level of Ref. 2 (Network Rx).   **Verifications needed:**   * 1. Verify the Tx/Rx power levels between the traffic tester and the HEE Client are in the dynamic range of client transceivers.   2. Record Rx power readings from the host network management. | | | | | | | | |

</div>

**Pass/Fail Criteria: Test Output**

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| Interface | Network Mgmt.  Rx power (dBm) | OPM  Rx power (dBm) |
| Network |  |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
|  |  |  |
|  |  |  |

</div>

1. Rx power at Ref. 2 complies with O-RAN.WG9.WDM-v01.00, Table 6-10, depending on the pluggable variants.

OM/OD

**...**

**...**

OM/OD

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| Tx1 Rx1 |  | Tx1 Rx1 |
|  |

</div>

1 7.1.3 Auto-tuning test

2

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | WDM.auto-tuning.01 | **Classification** | Functionality |
| **Test Title** | Paired frequency tuning at tail end (TE) | | |
| **Test Objective:** | To verify if the tail-end transceiver can be auto-tuned to the connected filter port | | |
| **Pre-Req** | Optical transceivers supporting paired auto-tuning | | |
| **Test Topology:** | Applicable to O-RAN.WG9.WDM-v01.00, Passive, Semi-Active, and Active WDM fronthaul system  Client Network Network Clien  Ref. 4  Traffic Tx1 Tx1 ![]({{site.baseurl}}/assets/images/55412a3d3509.png) Tester Rx1 Rx1  Ref. 1 Ref. 2  Traffic Tx2 Tx2 Ref. 3 O-DU ? O-RU  Tester Rx2 Rx2  O-DU ? O-RU  Traffic Txn Txn  Tester Rxn Rxn  WDM HEE/O-DU WDM TEE/O-R | | |
| **Required tester** | Optional traffic tester (eCPRI) | | |
| **Test Configuration** |  | | |
| **Procedure:** | **Detailed Test procedure:**   1. Connect the client and network transceivers at the WDM HEE/O-DU according to the test topology above. 2. At the WDM HEE/O-DU, provision the frequency of all the populated HE Network transceiver (Tx1/Rx1 ... Txn/Rxn), as well as the paired frequency for the TE transceivers. | | |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
|  | 1. Enable the channel ports (laser on) and optionally testing traffic. 2. Plug and enable the TE transceiver under test into the O-RU (passive WDM) or remote WDM equipment. 3. Connect fibers between the TE transceiver and one of the provisioned OM/OD ports. 4. Monitor and read the Rx signal at the corresponding HE transceiver. 5. Repeat Step 5 and 6 for the other OM/OD ports.   **Verifications needed:**   * 1. Verify whether the TE transceiver can be automatically tuned to the correct uplink frequency.   2. Verify whether the channel status at the WDM HEE/O-DU is "link up" and read the received optical power.   3. Record the time duration from the moment connecting the OM/OD port to the TE transceiver being auto tuned.   4. Optionally verify whether the traffic is resumed. The traffic needs to be looped back from the WDM TEE/O-RU. |
| **Pass/Fail Criteria:** | 1. After power cycle or being reconnected to a new OM/OD port, the TE transceiver is automatically tuned to the correct uplink frequency. 2. Rx power at Ref. 2 complies with O-RAN.WG9.WDM-v01.00, Table 6-10, depending on the pluggable variants. 3. Optionally the traffic can be resumed. |
| **Test Output** |  |

</div>

1

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| TE Channel Frequency | Tuning Time | Link Status | Rx Power at HE |
|  |  |  |  |

</div>

2

1 7.1.4 Crosstalk testing

OD

OM

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | WDM.crosstalk.01 | **Classification** | Functionality |
| **Test Title** | WDM Xhaul transport inter-channel crosstalk | | |
| **Test Objective:** | To verify if the OM/OD meets the isolation specification of the WDM transport link | | |
| **Pre-Req** |  | | |
| **Test Topology:** | Applicable to O-RAN.WG9.WDM-v01.00, Passive, Semi-Active, and Active WDM fronthaul system  OSA ![]({{site.baseurl}}/assets/images/96d9e2634d81.png) TRx 1 Tx OSA  Rx  *IL*  *Ia I*  *P na*  WDM HEE/O-DU WDM TEE/O-RU | | |
| **Required tester** | Optical spectrum analyzer (OSA) | | |
| **Test Configuration** | 1. Definitions of *IL*, *Ia*, and *Ina* are referred to ITU-T G.671 2. OSA shall be capable of a sensitivity of at least -65 dBm | | |
| **Procedure:** | **Detailed Test procedure:**   1. Provision and enable a WDM transceiver for the respective WDM solution (e.g., DWDM, MWDM); 2. Use the OSA to measure the spectrum peak power at Tx (*P* in dBm); 3. Connect the transceiver to the OM, and only a short jumper cable is needed between the OM and the OD. 4. Connect to the OSA to the OD output port of the wanted channel, and measure the spectrum peak power to calculate the insertion loss (*IL* in dB); 5. Connect to the OSA to one of the adjacent channel ports of the wanted one, and measure the spectrum peak power to calculate the adjacent channel isolation (*Ia* in dB); 6. Connect to the OSA to any of the other OD output ports and measure the spectrum peak power to calculate the non-adjacent channel isolation (*Ina* in dB). | | |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
|  | **Verifications needed:**   1. OSA settings shall be always kept the same. 2. For the measurement of each wanted channel, at least one *Ia* and one *Ina*   shall be measured.   1. If more than one *Ia* or *Ina* are measured, always take the smallest (worst) value from the result set. |
| **Pass/Fail Criteria:** | 1. Depending on the type of WDM OM/OD, *IL*, *Ia*, and *Ina* shall be compliant with O-RAN.WG9.WDM-v01.00, Table 9-10. 2. The actual tolerable inter-channel crosstalk (*Cc* in dB) for 100GHz-spaced DWDM is specified in G.698.1, Tables 8-1 to 8-4. *Cc* can be calculated following:   -Ia -Ina  CC = d + 10 log [2 x 10 10 + (k - 3)10 10 ]  where *d* is the maximum allowable power difference of a particular transceiver type specified in O-RAN.WG9.WDM-v01.00 |
| **Test Output** |  |
|  |  |

</div>

1

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| WDM Type | Transceiver | Channel | *IL* | *Ia* | *Ina* |
| e.g. DWDM  or MWDM | e.g. 10G, 25G, BiDi |  |  |  |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
|  |  |  |  |  |  |
|  |  |  |  |  |  |

</div>

2

OM

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | WDM.crosstalk.02 | **Classification** | Functionality |
| **Test Title** | WDM Xhaul transport interferometric crosstalk | | |
| **Test Objective:** | To verify if the OM/OD meets the isolation specification of a WDM transport link with add/drop nodes | | |
| **Pre-Req** |  | | |
| **Test Topology:** | Applicable to O-RAN.WG9.WDM-v01.00, Passive, Semi-Active, and Active WDM fronthaul system  OSA *IL* ![]({{site.baseurl}}/assets/images/5a8b3acb773f.png) TRx 1 Tx *Ii*  Rx  *P*  OD *1* OD *n*  OSA OSA  WDM HEE/O-DU WDM TEE/O-RU | | |
| **Required tester** | Optical spectrum analyzer (OSA) | | |
| **Test Configuration** | OSA shall be capable of a sensitivity of at least -65 dBm | | |
| **Procedure:** | **Detailed Test procedure:**   1. Provision and enable a WDM transceiver for the respective WDM solution (e.g., DWDM, MWDM), of which the channel is dropped at the measured OD (i.e. OD 1 in the test example); 2. Follow the procedure specified in WDM.crosstalk.01 (Step 2 to 6). 3. Measure the spectrum peak power at the OD network port to calculate the insolation (*Ii*) for interferometric crosstalk.   **Note:** The signal from the first source will be extinguished by the OADMs where the channel is dropped, and the interferometric crosstalk will be dominated by the performance of the last OADM that dropped and added that channel. This interferometric crosstalk, therefore, does not constrain the number of OADMs in a link. [Ref to G.698.1]  **Verifications needed:**   * 1. OSA settings shall be always kept the same.   2. For the measurement of each wanted channel, at least one *Ia* and one *Ina*   shall be measured. | | |

</div>

**Pass/Fail Criteria:**

**Test Output**

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- |
|  |  |  |  |  |  |  |
|  |  |  |  |  |  |  |

</div>

3. If more than one *Ia* or *Ina* are measured, always take the smallest (worst) value from the result set.

1. Depending on the type of WDM OM/OD, *IL*, *Ia*, and *Ina* shall be compliant with O-RAN.WG9.WDM-v01.00, Table 9-10.
2. The actual tolerable interferometric crosstalk for 100GHz-spaced DWDM is specified in G.698.1, Tables 8-1 to 8-4.

OD

OM

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- |
| WDM Type | Transceiver | Dropped Channel | *IL* | *Ia* | *Ina* | *Ii* |
| e.g. DWDM  or MWDM | e.g. 10G, 25G, BiDi |  |  |  |  |  |

</div>

1. 7.1.5 Latency Test

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | WDM.latency.01 | **Classification** | Characterization |
| **Test Title** | WDM Xhaul transport latency measurement | | |
| **Test Objective:** | To measure the PHY latency from an optical transceiver to the other of the WDM transport link | | |
| **Pre-Req** |  | | |
| **Test Topology:** | Applicable to O-RAN.WG9.WDM-v01.00, Passive, Semi-Active, and Active WDM fronthaul system ![]({{site.baseurl}}/assets/images/6c0a70d401a4.png) Loopback calibration  BER Tester O Digital pe  Tx electrical scillosco Rx electrical  data pattern Tx pattern data pattern trigger  TRx 1 Tx Tx TRx 2  Rx Rx  WDM HEE/O-DU WDM TEE/O-RU | | |
| **Required tester** | General purpose bit error rate tester (BERT); highspeed digital oscilloscope (OSC) | | |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Test Configuration** | 1. The BERT is able to customize data pattern with a recurring period of preferably a magnitude order higher than the expected latency. 2. The OSC has adequate bandwidth to sample the data pattern. 3. For optical transceivers integrated with CDR, the transmitted data rate needs to be in the range of the CDR clock rate. |
| **Procedure:** | **Detailed Test procedure:**   1. Customize the transmitted data pattern with a recurring period of a magnitude order higher than the expected latency (e.g. PRBS pattern with a tail of consecutive "0" symbols or alternating "1" and "0" sequence); 2. Use one of the OSC channels to measure the transmitted pattern trigger output of the BERT as the reference signal, and another channel to measure the received data pattern. 3. Before the actual link measurement, connect Tx cable (from the BERT) and Rx cable (to the OSC) together for the loopback calibration, measuring the loopback offset between the Tx trigger and the unique pattern identified in the Rx data. 4. Connect the exact same Tx and Rx cable with the two optical transceivers under test, as well as the WDM link in between. 5. Measure again the offset between the Tx trigger and the identified Rx data, and subtract the loopback offset to obtain the actual link latency. 6. The same procedure can be also applied to the other transmission direction. |
| **Pass/Fail Criteria:** | 1. Informative result only |
| **Test Output** |  |
|  |  |

</div>

1

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| WDM Type | Filter Type | Transceiver | Channel | Latency |
| e.g. DWDM  or MWDM |  | e.g. 10G, 25G, BiDi |  |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | WDM.latency.02 | **Classification** | Characterization |
| **Test Title** | Fiber latency and asymmetry measurement | | |
| **Test Objective:** | To measure the fiber latency and asymmetry for a particular x-haul PHY link | | |
| **Pre-Req** |  | | |
| **Test Topology:** | Applicable to O-RAN.WG9.WDM-v01.00, Passive, Semi-Active, and Active WDM fronthaul system | | |

</div>

Reflectance

OTDR

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
|  | Round-trip time  Probe Response ![]({{site.baseurl}}/assets/images/841bbcd7af90.png)![]({{site.baseurl}}/assets/images/3000bd7f211a.png)![]({{site.baseurl}}/assets/images/bedb1c2d7bd5.png) | | | | | | | | | |
|  | CU |  | DU | | RU ![]({{site.baseurl}}/assets/images/3672fc138032.png) | | | | |
|  |
|  |  |  | | OTDR | | | | |
|  | | | | | | |  | Probe ![]({{site.baseurl}}/assets/images/4d46d2b69c77.png)![]({{site.baseurl}}/assets/images/490cb6ba808b.png) Response | |
|  | CU |  | | DU | |  |  |  | RU ![]({{site.baseurl}}/assets/images/3672fc138032.png) |
|  | |  | | |
| O-DU Side O-RU Side  Probe  Fibre 1 Physical fibre  Response termination  **OTDR** ![]({{site.baseurl}}/assets/images/797ce121038f.png)![]({{site.baseurl}}/assets/images/fed542e95e85.png) Fibre 2 Physical fibre  termination  Rayleigh Demarcation  scattering Lossy Reflector  splice  RT  Time | | | | | | | | | |
| **Required tester** | General purpose optical time-domain reflectometer (OTDR) | | | | | | | | | |
| **Test Configuration** | 1. The accuracy of the measurement depends on the length of the OTDR pulse, usually in a range of few nanoseconds. 2. To achieve a sufficient signal-to-noise ratio, longer probe pulses may be required for longer fiber links, because of a higher loss. 3. In case of using a correlated OTDR, a bit sequence at a rate of a few Gbit/s can be used as the probe signal. The reflected signals are then cross- correlated with the transmitted bit pattern, improving the resolution of this correlated OTDR to picoseconds. | | | | | | | | | |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
|  | 4. For measuring any wavelength asymmetry, CWDM, DWDM or tunable OTDR source is required.  Note 1: Link asymmetry compensation is elaborated in Appendix IV, ITU-T G.8271/Y.1366 (03/2020).  Note 2: OTDR is specified as a fiber link monitoring for WDM systems in ITU-T G.697. |
| **Procedure:** | **Detailed Test procedure:**   1. Insert the OTDR at the optical transmitter interface (e.g.O-DU/CSR output, WDM HEE Tx, etc.); 2. If possible, insert also a demarcation reflector in front of the actual fiber termination; 3. Configure the pulse length, wavelength, measurement duration etc. of the OTDR, according to the expected link range; 4. The round-trip latency can be calculated between the start event of pulse launch and the end/demarcation reflective event, and the one-way latency of the measured link is exactly half of it; 5. In case of measuring the latency of multiple wavelengths, change the OTDR wavelength accordingly and repeat Step 3-4; 6. In case of measuring the latency of multiple links from the same transmitter side, switch the OTDR connection to another link and repeat Step 3-5. |
| **Pass/Fail Criteria:** | 1. Informative result only |
| **Test Output** |  |
|  |  |

</div>

1

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| Link | Transceiver | Channel | RTL | Asymmetry |
|  | e.g. 10G, 25G, BiDi |  |  |  |

</div>

1. 7.1.6 OAM Test

3

1. Applicable to O-RAN.WG9.WDM-v01.00, in semi-active or active fronthaul WDM systems, active
2. WDM equipment on the O-DU side is configured to transmit management requests to O-RUs and
3. manage the colored optical modules within the O-RUs. The optical modules in O-RUs are
4. configured to send back management request responses to the active WDM equipment. The
5. management request responses carry the status information of the colored optical modules in the O-
6. RUs in the table of Key Performance Indicators in section 6.1 of O-RAN.WG9.WDM-v01.00,
7. including the wavelength, driving voltage, driving current, the launched optical power of the
8. transmitter, the received optical power of the receiver, etc. In this way, OAM tests are crucial for
9. the interoperability between optical modules and active WDM equipment from different vendors.

6

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | WDM.OAM.01 | **Classification** | Characterization |
| **Test Title** | OAM test for optical module OAM data link layer | | |
| **Test Objective:** | To test the OAM data link communication of the optical modules | | |
| **Pre-Req** |  | | |
| **Test Topology:** | Applicable to O-RAN.WG9.WDM-v01.00, optical modules.  ![]({{site.baseurl}}/assets/images/787060c8aed7.png)  An optical link consists of WDM components, like MUX/DEMUX and 10km optical fiber, which are used to connect optical modules at two ends to simulate the Fronthaul optical transport channel.  Each optical module is installed on a test board like a transponder, on which a management system installs. The information of optical modules can be configured and read by the test boards through the management system.  To test the active function specified in section 6.1 of O-RAN.WG9.WDM-v01.00, the optical module on one side can receive and verify the OAM information from the optical module configured by the corresponding management system on the other side, and send back the verification result to the optical module on the other side.  To test the configuration and inquiry functions specified in section 6.1 of O- RAN.WG9.WDM-v01.00, the optical module on one side can also be configured by the corresponding testing management system to send the testing OAM configuration or inquiry messages to the optical module on the other side. Then, the optical module on one side can receive and verify the corresponding OAM responses from the optical module on the other side. If the corresponding OAM responses are correct, the optical modules can send the results to the optical module on the other side. | | |
| **Required tester** | General purpose bit error rate tester (BERT); digital oscilloscope; Optical power meter (OPM); variable optical attenuator (VOA); test board; | | |
| **Test Configuration** | 1. Connect the OPM, VOA, splitters and BER tester to the reference points shown in the above test configuration. | | |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
|  | 1. Configure the BERT to simulate service information transmission. 2. Adjust the VOA to make the attenuation of the link meet the requirements of the power budget. 3. Configure OAM connections between the testing management systems and TRxs. |
| **Procedure:** | 1. Verify that the service channel is working properly through the BERT. 2. Start OAM frame statistics at the testing management system and test for 10 minutes to check the number of bits sent and received, and the number of error frames in the testing management systems. |
| **Pass/Fail Criteria:** | No alarms, no error frames, and the number of sent and received frames is the same. |
| **Test Output** | The OAM data link communication of the optical modules is OK. |
|  |  |

</div>

1

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | WDM.OAM.02 | **Classification** | Characterization |
| **Test Title** | OAM test for active WDM equipment OAM data link layer | | |
| **Test Objective:** | To test the OAM data link communication of active WDM equipment and optical modules. | | |
| **Pre-Req** |  | | |
| **Test Topology:** | Applicable to O-RAN.WG9.WDM-v01.00, active WDM equipment for semi-active WDM system and active WDM system.  ![C:\Users