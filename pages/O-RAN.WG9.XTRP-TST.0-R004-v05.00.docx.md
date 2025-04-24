## O-RAN.WG9.XTRP-TST.0-R004-v05.00.docx

- View in [Reader Mode](https://simewu.com/spec-reader/pages/04-WG9/O-RAN.WG9.XTRP-TST.0-R004-v05.00.docx).
- Go back to [Table of Contents](../README.md).
- Download the [Original Document](https://github.com/Simewu/spec-reader/raw/refs/heads/main/documents/O-RAN.WG9.XTRP-TST.0-R004-v05.00.docx).

---

## ![webwxgetmsgimg (7).jpeg](../assets/images/9c69df009b87.jpg)O-RAN.WG9.XTRP-TST.0-R004-v05.00

Technical Specification

**O-RAN Open Xhaul Transport Working Group 9 Xhaul Transport Testing**

Copyright (C) 2024 by the O-RAN ALLIANCE e.V.

The copying or incorporation into any other work of part or all of the material available in this specification in any form without the prior written permission of O-RAN ALLIANCE e.V. is prohibited, save that you may print or download extracts of the material of this specification for your personal use, or copy the material of this specification for the purpose of sending to individual third parties for their information provided that you acknowledge O-RAN ALLIANCE as the source of the material and that you inform the third party that these conditions apply to them and that they must comply with them.

O-RAN ALLIANCE e.V., Buschkauler Weg 27, 53347 Alfter, Germany

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

(C) 2024 by the O-RAN ALLIANCE e.V. Your use is subject to the copyright statement on the cover page of this specification. 2

# 1 Revision History

|  |  |  |  |
| --- | --- | --- | --- |
| **Date** | **Revision** | **Author** | **Description** |
| 07/09/2021 | V01.00 | R Vaez-Ghaemi | Version 01.00 |
| 07/22/2022 | V02.00 | Satheesh Kumar, S, Jiang, J Zou, R Vaez- Ghaemi | Addition of Synchronization, latency and OAM Test Cases |
| 07/06/2023 | V03.00 | Satheesh Kumar, M Zuo | Addition of WDM OAM (7.1.6), and Synchronization Test cases (9.3) |
| 01/20/2024 | V04.00 | Satheesh Kumar | Addition of Sync Test Cases in section 9.4 (9.4.1-9.4.7) |
| 10/03/2024 | V05.00 | Satheesh Kumar, Jiang Sun | Added WDM test cases, updated Inclusive Terminology in synchronization section |

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

![](../assets/images/f4c1efee80b7.png)8

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

![](../assets/images/69f7d771c5ea.png)

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

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | Equipment.01 | **Classification** | Functionality |
| **Test Title** | TNE board extraction - insertion | | |
| **Test Objective:** | The aim of the test is to check the system behavior in case of line board is physically removed from the TME shelf | | |
| **Pre-Req** | Running service will be interrupted | | |
| **Test Topology:** | ![](../assets/images/479d026c2817.png) | | |
| **Procedure:** | **Detailed Test procedure:**  **Test Procedure:**   1. TNE is connected to another TNE or O-RU/DU/CU & NGC/EPC, all services are running as defined in Traffic and services configuration. 2. Make a line board extraction. 3. Wait 2 minutes. 4. Make a line board insertion.   **Verifications needed:**   * 1. Verify that traffic and services emulation is running correctly after operation.   2. Check services recovery time after line board extraction and insertion.   3. Check generation and clearance of proper alarms. | | |
| **Test Configuration** | Xhaul traffic and RAN services configuration | | |
| **Pass/Fail Criteria:** | All services MUST recover after extraction and insertion of line board | | |
| **Results** | [ ] Pass [ ] Pass w/X [ ] Dropped [ ] Blocked [ ] Failed | | |
| **Test Output** | First service recovery time in seconds: Last service recovery time in seconds: | | |

1 6.4.1.2 Fiber network disconnection-connection

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | Equipment.02 | **Classification** | Functionality |
| **Test Title** | Fiber network disconnection-connection | | |
| **Test Objective:** | The aim of the test is to check the system behavior after xhaul link connection/connection | | |
| **Pre-Req** | Running service will be interrupted | | |
| **Test Topology:** | ![](../assets/images/479d026c2817.png) | | |
| **Procedure:** | **Detailed Test procedure:**  **Test Procedure:**   1. Make a network link disconnection/connection.   **Verifications needed:**   * 1. Verify that traffic is running correctly after operation.   2. Check services recovery time after the network link disconnection/connection.   3. Check generation and clearance of proper alarms | | |
| **Test Configuration** | Xhaul traffic and RAN services configuration | | |
| **Pass/Fail Criteria:** | 1. All services MUST recover after network link disconnection/connection 2. There is no impact for other links | | |
| **Results** | [ ] Pass [ ] Pass w/X [ ] Dropped [ ] Blocked [ ] Failed | | |
| **Test Output** | First service recovery time in seconds: Last service recovery time in seconds: | | |

2

1 6.4.1.3 Transceivers (SFP, QSFP, ...) extraction - insertion

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | Equipment.03 | **Classification** | Functionality |
| **Test Title** | Transceivers (SFP, QSFP,...) extraction - insertion | | |
| **Test Objective:** | The aim of the test is to check if transceivers can be easily extracted/inserted | | |
| **Pre-Req** | Running service will be interrupted | | |
| **Test Topology:** | ![](../assets/images/479d026c2817.png) | | |
| **Procedure:** | **Detailed Test procedure:**  **Test Procedure:**   1. Check if network side SFPs are easy-going to extracted/inserted. 2. Make tests for all SFPs types used with devices.   **Verifications needed:**   * 1. Verify that traffic is running correctly after operation.   2. Check if the fibres are not impacted by cabinet door close | | |
| **Test Configuration** | Xhaul traffic and RAN services configuration | | |
| **Pass/Fail Criteria:** | 1. Transceivers MUST be easy extracted and inserted 2. The closed door of the shelf/cabinet MUST NOT impact fibres by too much bending or other ways | | |
| **Results** | [ ] Pass [ ] Pass w/X [ ] Dropped [ ] Blocked [ ] Failed | | |
| **Test Output** |  | | |

2

1 6.4.1.4 TNE board swap

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | Equipment.04 | **Classification** | Functionality |
| **Test Title** | TNE board swap | | |
| **Test Objective:** | The aim of the test is to check TME behavior when Board is swapped | | |
| **Pre-Req** | Running service will be interrupted | | |
| **Test Topology:** | ![](../assets/images/479d026c2817.png) | | |
| **Procedure:** | **Detailed Test procedure:**  **Test Procedure:**   1. TNE is connected to another TNE or O-RU/DU/CU & NGC/EPC, start traffic over the services as defined in Traffic and services configuration 2. Disconnect customers fiber and extract the TNE board 3. Insert new TNE board in the same slot and connect the fiber to new TNE board (ex. Board 10GEth to 25GEth, 10GETh w/o sync. features to 10GEth with sync. feature...)   **Verifications needed:**   * 1. Check services impact and alarms | | |
| **Test Configuration** | Xhaul traffic and RAN services configuration | | |
| **Pass/Fail Criteria:** | 1. The services MUST recover on the new line board on step 3 2. 2- LT board is operational without alarm | | |
| **Results** | [ ] Pass [ ] Pass w/X [ ] Dropped [ ] Blocked [ ] Failed | | |
| **Test Output** |  | | |
| **Comment** | Swap could be done between   * two identical boards (same type and hardware version) * two boards with same type but with different hardware version * two boards with different type and hardware version (for example 1GETh board replaced by 10GETh board) | | |

1 6.4.1.5 Restarts - TNE electric power off-on 2

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | Equipment.05 | **Classification** | Functionality |
| **Test Title** | Restarts - TNE electric power off-on | | |
| **Test Objective:** | The aim of the test is to check if the system behavior after electrical power off/on | | |
| **Pre-Req** | Running service will be interrupted | | |
| **Test Topology:** | ![](../assets/images/479d026c2817.png) | | |
| **Procedure:** | **Detailed Test procedure:**  **Test Procedure:**   1. Connect TNE to another TNE or O-RU/DU/CU & NGC/EPC, start traffic over the services as defined in Traffic and services configuration chapter 2. Save the configuration 3. Make an TNE electrical off/on   **Verifications needed:**   * 1. Check the relevant table (MAC, vMAC, DHCP, ARP) persistency/recovery.   2. Verify that traffic is running correctly after operation.   3. Check services recovery time after operation.   4. Note time recover | | |
| **Test Configuration** | Xhaul traffic and RAN services configuration | | |
| **Pass/Fail Criteria:** | All services MUST recover after electrical TNE power off/on | | |
| **Results** | [ ] Pass [ ] Pass w/X [ ] Dropped [ ] Blocked [ ] Failed | | |
| **Test Output** | First service recovery time in seconds:  Last service recovery time in seconds: | | |

1 Restarts - TNE board software reset

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | Equipment.06 | **Classification** | Functionality |
| **Test Title** | Restarts - TNE board software reset | | |
| **Test Objective:** | The aim of the test is to check if the system behavior after board software reset | | |
| **Pre-Req** | Running service will be interrupted | | |
| **Test Topology:** | ![](../assets/images/479d026c2817.png) | | |
| **Procedure:** | **Detailed Test procedure:**  **Test Procedure:**   1. Connect TNE to another TNE or O-RU/DU/CU & NGC/EPC, start traffic over the services as defined in Traffic and services configuration chapter 2. Save the configuration 3. Make an TNE board software reset   **Verifications needed:**   * 1. Check the relevant table (MAC, vMAC, DHCP, ARP) persistency/recovery.   2. Verify that traffic is running correctly after operation.   3. Check services recovery time after operation.   4. Note time recover | | |
| **Test Configuration** | Xhaul traffic and RAN services configuration | | |
| **Pass/Fail Criteria:** | All services MUST recover after TNE board software reset | | |
| **Results** | [ ] Pass [ ] Pass w/X [ ] Dropped [ ] Blocked [ ] Failed | | |
| **Test Output** | First service recovery time in seconds:  Last service recovery time in seconds: | | |

2

1 6.4.1.6 Mirror port

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | Equipment.07 | **Classification** | Functionality |
| **Test Title** | Mirror port | | |
| **Test Objective:** | The aim of the test is to check if TNE supports port monitoring | | |
| **Pre-Req** | Running service will be interrupted | | |
| **Test Topology:** | ![](../assets/images/479d026c2817.png) | | |
| **Procedure:** | **Detailed Test procedure:**  **Test Procedure:**   1. Configure TNE port. 2. Configure TNE mirror port to other port. 3. Send bidirectional traffic through TNE. 4. Capture traffic on mirror port   **Verifications needed:**   * 1. Verify that the traffic was captured on mirror port. | | |
| **Test Configuration** | Xhaul traffic and RAN services configuration | | |
| **Pass/Fail Criteria:** | All traffic on source port MUST be visible on mirror port | | |
| **Results** | [ ] Pass [ ] Pass w/X [ ] Dropped [ ] Blocked [ ] Failed | | |
| **Test Output** |  | | |

2

1 6.4.1.7 Board provisioning

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | Equipment.08 | **Classification** | Functionality |
| **Test Title** | Board provisioning | | |
| **Test Objective:** | The aim of the test is to check no problem is observed when a new board is installed and configured in the TNE shelf | | |
| **Pre-Req** | Running service will be interrupted | | |
| **Test Topology:** | ![](../assets/images/479d026c2817.png) | | |
| **Procedure:** | **Detailed Test procedure:**  **Test Procedure:**   1. Insert board in an empty slot. 2. Make relevant action if necessary (Plan board, acknowledgment, etc.). 3. List alarm(s) reported during operation. 4. Connect and provision traffic. 5. Send traffic.   **Verifications needed:**   * 1. Board is detected in step 1.   2. Board is recognized in step 2.   3. Connection is created in step 4.   4. Traffic is running without error in step 5 | | |
| **Test Configuration** | Xhaul traffic and RAN services configuration | | |
| **Pass/Fail Criteria:** |  | | |
| **Results** | [ ] Pass [ ] Pass w/X [ ] Dropped [ ] Blocked [ ] Failed | | |
| **Test Output** |  | | |

2

3

4

1. 6.4.2 PHY layer test
2. 6.4.2.1 Transceiver operating wavelength

3

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | PHY.01 | **Classification** | Functionality |
| **Test Title** | Transceiver operating wavelength | | |
| **Test Objective:** | The aim of the test is to check the conformity of operating wavelength of the transceiver with adequate specification (IEEE, MSA, ITU,...) | | |
| **Pre-Req** | Running service will be interrupted | | |
| **Test Topology:** | ![](../assets/images/1f665a23ee2d.png) | | |
| **Procedure:** | **Detailed Test procedure:**  **Test Procedure:**   1. Insert an optical spectrum analyser and 1 to 2 splitter as described on relevant test setup    1. For bidirectional link (half duplex)    2. For full duplex link: insert splitter on the required transmission link and connect the other link directly. 2. Start traffic as defined in Ethernet tests case. 3. Measure the wavelength of generated signal with optical spectrum analyzer. 4. Check the wavelength value of the transceiver remotely based on digital diagnostic. 5. Note the result.   **Verifications needed:**   1. Traffic correctly forwarded on step 2 and step 3 2. TNE operational without alarms on step 2 and step 3 3. Wavelength of generated signal in accordance with the specification | | |
| **Test Configuration** | Xhaul traffic and RAN services configuration | | |

|  |  |
| --- | --- |
| **Pass/Fail Criteria:** | 1. Wavelength of generated signal MUST be in accordance with the specification. 2. Digital diagnostic wavelength value in accordance with measure value |
| **Results** | [ ] Pass [ ] Pass w/X [ ] Dropped [ ] Blocked [ ] Failed |
| **Test Output** | **Comments:**  The results are presented in the table below: |

1

|  |  |  |
| --- | --- | --- |
| **Transceiver** | **Recommendation** | **Measured values** |
| Vendor: Model:  SN: | xxxx +/- yy nm |  |

|  |  |  |
| --- | --- | --- |
|  |  |  |
|  |  |  |
|  |
|  |

1 6.4.2.2 Mean launched optical power of transceiver.

2

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | PHY.02 | **Classification** | Functionality |
| **Test Title** | Mean launched optical power of transceiver | | |
| **Test Objective:** | The aim of the test is to check the conformity of mean launched optical power of the transceiver with adequate specification (IEEE, MSA, ITU,...) | | |
| **Pre-Req** | Running service will be interrupted | | |
| **Test Topology:** | ![](../assets/images/762dc474b384.png) | | |
| **Procedure:** | **Detailed Test procedure:**  **Test Procedure:**   1. Insert an optical power meter and 1 to 2 splitter as described on relevant test setup    1. For bidirectional link (half duplex)    2. For full duplex link: insert splitter on the required transmission link and connect the other link directly. 2. Start traffic as defined in Ethernet tests case. 3. Measure and report the optical power by power meter at the adequate wavelength displayed by power meter (1 measurement) [calibration is required including optical splitter loss] 4. Check the received optical output power of the transceiver remotely based on digital diagnostic. 5. Note the result. 6. Measure and report the repeatability of the optical power by power meter and remotely by digital diagnostic after fiber disconnection / connection on the transceiver (3 additional measurements)   **Verifications needed:**   1. Traffic correctly forwarded on step 2, 3 and 4 2. TNE operational without alarms on step 2 and step 3 3. Optical power of generated signal in accordance with the specification | | |

|  |  |
| --- | --- |
|  | **4.** Digital diagnostic received optical value in accordance with measure value |
| **Test Configuration** | Xhaul traffic and RAN services configuration |
| **Pass/Fail Criteria:** | 1. All optical power measurements of generated signal MUST be in accordance with the specification. 2. Digital diagnostic transmitter optical output power MUST be in accordance with measured values |
| **Results** | [ ] Pass [ ] Pass w/X [ ] Dropped [ ] Blocked [ ] Failed |
| **Test Output** | **Comments:**  The results are presented in the table below: |

1

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **Transceiver** | **Recommendation** | **Measured values (after fibre disconnection / connection) by power meter and by digital**  **diagnostic** | | | |
| **Vendor Model SN** | (xx, yy) dBm |  |  |  |  |

1 6.4.2.3 Optical sensitivity of transceiver

2

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | PHY.03 | **Classification** | Functionality |
| **Test Title** | Optical sensitivity of transceiver | | |
| **Test Objective:** | The aim of the test is to check the conformity of optical sensitivity of the transceiver with adequate specification (IEEE, MSA, ITU,...) | | |
| **Pre-Req** | Running service will be interrupted | | |
| **Test Topology:** | ![](../assets/images/105780267fcf.png) | | |
| **Procedure:** | **Detailed Test procedure:**  **Test Procedure:**   1. Insert an optical power meter with 1 to 2 splitter and a variable optical attenuator with optical multiplexor (or circulator) at adequate wavelength and link as described on relevant test setup.    1. For bidirectional link (half duplex) : top part of the set up    2. For full duplex link: bottom part of the set up. 2. Configure if possible FEC off or FEC on or type of FEC on 3. Start traffic as defined in Ethernet tests case. 4. Increase the optical attenuation gradually on attenuator [dB] till the moment when dropping of Ethernet frames / bit errors are observed. 5. Measure and report the optical power at the adequate wavelength displayed by optical power meter [calibration is required including optical splitter loss] 6. Check the received optical power of the transceiver remotely based on digital diagnostic. 7. Note the result.   **Verifications needed:**   1. Traffic correctly forwarded on step 3 and 4 (before drop frame) 2. TNE operational without alarms on step 3 and 4 (before drop frame) 3. Optical sensitivity of transceiver in accordance with the specification 4. Digital diagnostic received optical value in accordance with measure value | | |

|  |  |
| --- | --- |
| **Test Configuration** | Xhaul traffic and RAN services configuration |
| **Pass/Fail Criteria:** | 1. Optical sensitivity of transceiver MUST be in accordance with the specification. 2. Digital diagnostic received optical value MUST be in accordance with measured value |
| **Results** | [ ] Pass [ ] Pass w/X [ ] Dropped [ ] Blocked [ ] Failed |
| **Test Output** | **Comments:**  The results are presented in the table below: Forward Error Correction (FEC): state/type |

1

|  |  |  |
| --- | --- | --- |
| **Transceiver** | **Recommendation** | **Measured values (FEC state)** |
| **Vendor Model**  **SN** | xx dBm |  |

1 6.4.2.4 Minimum optical overload of transceiver

2

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | PHY.04 | **Classification** | Functionality |
| **Test Title** | Minimum optical overload of transceiver | | |
| **Test Objective:** | The aim of the test is to check the conformity of minimum optical overload of the transceiver with adequate specification (IEEE, MSA, ITU,...) | | |
| **Pre-Req** | Running service will be interrupted | | |
| **Test Topology:** | ![](../assets/images/105780267fcf.png) | | |
| **Procedure:** | **Detailed Test procedure:**  **Test Procedure:**   1. Insert an optical power meter with 1 to 2 splitter and a variable optical attenuator with optical multiplexor (or circulator) at adequate wavelength and link as described on relevant test setup.    1. For bidirectional link (half duplex): top part of the set up.    2. For full duplex link: bottom part of the set up. 2. Start traffic as defined in Ethernet tests case. 3. Decrease the optical attenuation gradually on attenuator [dB] till the moment when dropping of Ethernet frames / bit errors are observed. 4. Measure and report the optical power at the adequate wavelength displayed by optical power meter [calibration is required including optical splitter loss] 5. Check the received optical power of the transceiver remotely based on digital diagnostic. 6. Note the result.   **Verifications needed:**   1. Traffic correctly forwarded on step 2 and 3 (before drop frame) 2. TNE operational without alarms on step 2 and 3 (before drop frame) 3. Minimum optical overload of transceiver in accordance with the specification 4. Digital diagnostic received optical value in accordance with measure value | | |
| **Test Configuration** | Xhaul traffic and RAN services configuration | | |

|  |  |
| --- | --- |
| **Pass/Fail Criteria:** | 1. Minimum optical overload of transceiver MUST be in accordance with the specification. 2. Digital diagnostic received optical value MUST be in accordance with measured value |
| **Results** | [ ] Pass [ ] Pass w/X [ ] Dropped [ ] Blocked [ ] Failed |
| **Test Output** | **Comments:**  The results are presented in the table below: Forward Error Correction (FEC): state/type |

1

|  |  |  |  |
| --- | --- | --- | --- |
| **Transceiver** | **Recommendation** | **Measured value** | **Digital diagnostic value** |
| **Vendor Model**  **SN** | xx dBm |  |  |

|  |  |  |  |
| --- | --- | --- | --- |
|  |  |  |  |
|  |  |  |  |

1 6.4.2.5 Transceiver at minimum and maximum distance (km)

2

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | PHY.05 | **Classification** | Functionality |
| **Test Title** | Transceiver at minimum and maximum distance (km) | | |
| **Test Objective:** | The aim of the test is to check the conformity to distance parameter with adequate specification (IEEE, MSA, ITU,...) | | |
| **Pre-Req** | Running service will be interrupted | | |
| **Test Topology:** | ![](../assets/images/28b7a29703c7.png) | | |
| **Procedure:** | **Detailed Test procedure:**  **Test Procedure:**   1. Insert an optical fiber loop of maximum km length, a variable optical attenuator, and an optical power meter connected to a 1 to 2 splitter as described on relevant test setup.    1. For bidirectional link (half duplex)    2. For full duplex link: insert test devices on the required transmission link and connect the other link directly. 2. Configure if possible FEC off or FEC on or type of FEC on 3. Set an attenuation of optical attenuator to the value relating to the optical sensitivity value. 4. Start traffic as defined in Ethernet tests case. 5. Fifteen minutes later, disconnect / connect the transceivers. 6. Control the traffic. 7. Insert minimum km of optical. 8. Set an attenuation of optical attenuator to the value relating to the optical sensitivity value. 9. Control the traffic. 10. Fifteen minutes later, disconnect / connect the transceivers. 11. Control the traffic. | | |

|  |  |
| --- | --- |
|  | 1. Set an attenuation of optical attenuator to the value relating to the optical overload value. 2. Control the traffic. 3. Fifteen minutes later, disconnect / connect the transceivers. 4. Control the traffic. 5. Check the link length supported pf the transceiver remotely based on digital diagnostic. 6. Note the result.   **Verifications needed:**   * 1. Traffic correctly forwarded on step 4, 6, 9, 11, 13 and 15.   2. TNE operational without alarms on step 4, 6, 9, 11, 13 and 15.   3. Digital diagnostic link length supported in accordance with maximum km of fiber |
| **Test Configuration** | Xhaul traffic and RAN services configuration |
| **Pass/Fail Criteria:** | 1. Traffic is correctly forwarded without frame loss on step 4, 6, 9, 11, 13 and 15. 2. Maximum km of fiber must be equal or greater than the specified value. 3. Minimum km of fiber must be equal or less than the specified value. 4. Digital diagnostic link length supported must be in accordance with maximum km of fiber. |
| **Results** | [ ] Pass [ ] Pass w/X [ ] Dropped [ ] Blocked [ ] Failed |
| **Test Output** | **Comments:**  The results are presented in the table below: Forward Error Correction (FEC): state/type |

1

|  |  |  |
| --- | --- | --- |
| **Transceiver** | **Recommendation** | **Measured values** |
| **Vendor Model SN** | Minimum km |  |
| Maximum km |  |

1. 6.4.2.6 Transceiver extinction ratio and eye diagram
2. This test case is FFS.

3

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

4

|  |  |  |
| --- | --- | --- |
| **Transceiver** | **Recommendation** | **Measured values** |
| **Vendor Model SN** |  |  |
|  |  |

1 6.4.2.7 Transceiver information display

2

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

3

1 6.4.3 Alarm and Monitoring Test Cases

2

1. 6.4.3.1 Alarm on board reset and plug out.

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | Alarm & Monitoring.01 | **Classification** | Functionality |
| **Test Title** | Alarm on board reset and plug out | | |
| **Test Objective:** | The aim of the test is to check if TNE send and cleared alarm when board is rebooted or plugout/plugin | | |
| **Pre-Req** | Running service will be interrupted | | |
| **Test Topology:** | ![](../assets/images/3eed807db7a5.png) | | |
| **Procedure:** | **Detailed Test procedure:**  **Test Procedure & Verifications needed:**   1. Perform a board reset/reboot. 2. Measure and report the duration to raise the alarm from the line/interface disconnection. 3. After board recover 4. Measure and report the duration to clear the alarm from the line/interface disconnection. 5. Perform a board plug-out. 6. Measure and report the duration to raise the alarm from the line/interface disconnection. 7. Perform a board plugin. 8. Measure and report the duration to clear the alarm from the line/interface disconnection | | |
| **Test Configuration** | Xhaul traffic and RAN services configuration | | |
| **Pass/Fail Criteria:** | 1. Alarm reported within 1 minute on step 2 and 6 2. Alarm cleared within 1 minute on step 4 and 8 | | |

|  |  |
| --- | --- |
| **Results** | [ ] Pass [ ] Pass w/X [ ] Dropped [ ] Blocked [ ] Failed |
| **Test Output** | Alarms is reported xx second.  Alarms is cleared xx second |

1

1 6.4.3.2 Alarm time stamping

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | Alarm & Monitoring.02 | **Classification** | Functionality |
| **Test Title** | Alarm time stamping | | |
| **Test Objective:** | The aim of the test is to check if for TNE is possible to determine the exact time when the alarm was raised | | |
| **Pre-Req** | Running service will be interrupted | | |
| **Test Topology:** | ![](../assets/images/3eed807db7a5.png) | | |
| **Procedure:** | **Detailed Test procedure:**  **Test Procedure:**   1. Simulate few alarms. 2. Show alarms history.   **Verifications needed:**   * 1. Check if time stamping (Date and Time) is available for all alarms and events/warnings.   2. Check if is possible to retrieve the exact time when the alarm was raised from the   alarm timestamp | | |
| **Test Configuration** | Xhaul traffic and RAN services configuration | | |
| **Pass/Fail Criteria:** | 1. There MUST be possible to check time stamping on TNE 2. There MUST be possible to determine the exact time when the alarm was raised | | |
| **Results** | [ ] Pass [ ] Pass w/X [ ] Dropped [ ] Blocked [ ] Failed | | |
| **Test Output** |  | | |

2

1. 6.4.3.3 Ethernet link down alarm
2. This test is FFS.

3

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | Alarm & Monitoring.03 | **Classification** | Functionality |
| **Test Title** | Ethernet link down alarm | | |
| **Test Objective:** | The aim of the test is to generate and clear an Ethernet link down alarm xhaul link | | |
| **Pre-Req** | Running service will be interrupted | | |
| **Test Topology:** | ![](../assets/images/479d026c2817.png) | | |
| **Procedure:** | **Detailed Test procedure:**  **Test Procedure and Verifications needed:**   1. Perform optical Point to Point port fibre disconnection. 2. Measure and report the duration to raise the alarm. 3. Perform optical Point to Point port fibre connection. 4. Measure and report the duration to clear the alarm. | | |
| **Test Configuration** | Xhaul traffic and RAN services configuration | | |
| **Pass/Fail Criteria:** | 1. "Ethernet link down" for optical Point to Point reported within 1 minute on step. 2. "Ethernet link down" for optical Point to Point cleared within 1 minute on step 4 | | |
| **Results** | [ ] Pass [ ] Pass w/X [ ] Dropped [ ] Blocked [ ] Failed | | |
| **Test Output** | "Ethernet link down" alarm is reported xx minutes yy seconds.  "Ethernet link down" alarm is cleared yy seconds | | |

4

1. 6.4.3.4 Dying Gasp (DG)
2. This test is FFS.

3

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | Alarm & Monitoring.04 | **Classification** | Functionality |
| **Test Title** | Dying Gasp (DG) | | |
| **Test Objective:** | The aim of the test is to generate and clear a Dying Gasp (DG) of TNE alarm | | |
| **Pre-Req** | Running service will be interrupted | | |
| **Test Topology:** | ![](../assets/images/3b2291074ac7.png) | | |
| **Procedure:** | **Detailed Test procedure:**  **Test Procedure and Verifications needed:**   1. Perform the TNE1 or O-RU/DU/CU electrical power off. 2. Measure and report the duration to raise the alarm on the TNE2 when the second TNE1 electrical power off 3. Perform an TNE1 electrical power on 4. Measure and report the duration to clear the alarm on the TNE2 when the TNE1 electrical power on 5. Repeat the test few times. | | |
| **Test Configuration** | Xhaul traffic and RAN services configuration | | |
| **Pass/Fail Criteria:** | 1. DG alarm reported within 1 minute on step 2 2. DG alarm cleared within 2 minutes on step 4 | | |
| **Results** | [ ] Pass [ ] Pass w/X [ ] Dropped [ ] Blocked [ ] Failed | | |
| **Test Output** | DG alarm is reported xx minutes yy seconds.  DG alarm is cleared xx minutes yy seconds | | |

4

1. 6.4.3.5 No Loss Of Signal alarm for Dying Gasp (DG) alarm
2. This test is FFS.

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | Alarm & Monitoring.05 | **Classification** | Functionality |
| **Test Title** | No Loss Of Signal alarm for Dying Gasp (DG) alarm | | |
| **Test Objective:** | The aim of the test is to check alarms reported when all/many links on one TNE report DG (Dying Gasp) alarm | | |
| **Pre-Req** | Running service will be interrupted | | |
| **Test Topology:** | ![](../assets/images/3b2291074ac7.png) | | |
| **Procedure:** | **Detailed Test procedure:**  **Test Procedure:**   1. Perform all/many TNE1 or O-RU/DU/CU electrical power off.   **Verifications needed:**   * 1. Check if last link reports DG then no LOS alarm is reported (Check if this behaviour is enabled)   2. Wait and check if no LOS alarm was reported | | |
| **Test Configuration** | Xhaul traffic and RAN services configuration | | |
| **Pass/Fail Criteria:** | 1- No LOS alarm is reported | | |
| **Results** | [ ] Pass [ ] Pass w/X [ ] Dropped [ ] Blocked [ ] Failed | | |
| **Test Output** | DG alarm is reported xx minutes yy seconds  DG alarm is cleared xx minutes yy seconds | | |

3

4

1. 6.4.3.6 Transceiver (SFP, QSFP,...) Rx optical power alarm threshold

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | Alarm & Monitoring.06 | **Classification** | Functionality |
| **Test Title** | Transceiver (SFP, QSFP,...) Rx optical power alarm threshold | | |
| **Test Objective:** | The aim of the test is to check if the transceiver received optical power parameters exceed warning high and low threshold then alarm is reported. When Rx signal is lower and higher than threshold defined then alarm is cleared properly. | | |
| **Pre-Req** | Running service will be interrupted | | |
| **Test Topology:** | ![](../assets/images/0f085145e0d7.png) | | |
| **Procedure:** | **Detailed Test procedure:**  **Test Procedure and Verifications needed:**   1. Configure Rx power parameter threshold high and low. 2. Connect variable optical attenuator and change optical power. Rx signal must be higher than the threshold range. 3. Measure and report the duration to raise the alarm. 4. Check that alarm is cleared if Rx power is in the threshold range. 5. Measure and report the duration to clear the alarm. 6. Connect variable optical attenuator and change optical power. Rx signal must be lower than the threshold range. 7. Measure and report the duration to raise the alarm. 8. Check that alarm is cleared if Rx power is in the threshold range. 9. Measure and report the duration to clear the alarm. | | |
| **Test Configuration** | Xhaul traffic and RAN services configuration | | |
| **Pass/Fail Criteria:** | 1. Alarm "RX high power" reported within 1 minute on step 2 2. Alarm "RX high power" cleared within 1 minute on step 4 3. Alarm "RX low power" reported within 1 minute on step 6 4. Alarm "RX low power" cleared within 1 minute on step 8 | | |
| **Results** | [ ] Pass [ ] Pass w/X [ ] Dropped [ ] Blocked [ ] Failed | | |
| **Test Output** | Alarm "RX high power" is reported xx second.  Alarm "RX high power" is cleared xx second. | | |

|  |  |
| --- | --- |
|  | Alarm "RX low power" is reported xx second.  Alarm "RX low power" is cleared xx second |

1

1. 6.4.3.7 Transceiver (SFP, QSFP,...) Tx optical power alarm threshold

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | Alarm & Monitoring.07 | **Classification** | Functionality |
| **Test Title** | Transceiver (SFP, QSFP,...) Tx optical power alarm threshold | | |
| **Test Objective:** | The aim of the test is to check if the Ethernet transceiver emitted optical power parameters exceed warning high and low threshold then alarm is reported. When Tx signal is lower and higher than threshold defined then alarm is cleared properly. | | |
| **Pre-Req** | Running service will be interrupted | | |
| **Test Topology:** | ![](../assets/images/479d026c2817.png) | | |
| **Procedure:** | **Detailed Test procedure:**  **Test Procedure and Verifications needed:**   1. Configure Tx power parameter threshold high, Tx signal must be higher than the threshold range. 2. Measure and report the duration to raise the alarm. 3. Configure Tx power parameter threshold high, Tx signal must be in the threshold range. 4. Check that alarm is cleared. 5. Measure and report the duration to clear the alarm. 6. Configure Tx power parameter threshold low, Tx signal must be lower than the threshold range. 7. Measure and report the duration to raise the alarm. 8. Configure Tx power parameter threshold low, Tx signal must be in the threshold range. 9. Check that alarm is cleared. 10. Measure and report the duration to clear the alarm. | | |
| **Test Configuration** | Xhaul traffic and RAN services configuration | | |

|  |  |
| --- | --- |
| **Pass/Fail Criteria:** | 1. Alarm "TX high power" reported within 1 minute on step 2 2. Alarm "TX high power" cleared within 1 minute on step 4 3. Alarm "TX low power" reported within 1 minute on step 7 4. Alarm "TX low power" cleared within 1 minute on step 9 |
| **Results** | [ ] Pass [ ] Pass w/X [ ] Dropped [ ] Blocked [ ] Failed |
| **Test Output** | Alarm "TX high power" is reported xx second. Alarm "TX high power" is cleared xx second. Alarm "TX low power" is reported xx second. Alarm "TX low power" is cleared xx second.  xx is to be defined by the vendor. |

1

1 6.4.3.8 Severity handling of alarms

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | Alarm & Monitoring.08 | **Classification** | Functionality |
| **Test Title** | Severity handling of alarms | | |
| **Test Objective:** | The aim of the test is to verify the severity handling of alarms | | |
| **Pre-Req** | Running service will be interrupted | | |
| **Test Topology:** | ![](../assets/images/479d026c2817.png) | | |
| **Procedure:** | **Detailed Test procedure:**  **Test Procedure and Verifications needed:**   1. Change the severity of an alarm. 2. Generate the alarm. 3. Check that the alarm is reported with the configured severity level. 4. Change the severity of the selected alarm with the default value. 5. Generate the alarm. 6. Check that the alarm is reported with the configured severity level. | | |
| **Test Configuration** | Xhaul traffic and RAN services configuration | | |
| **Pass/Fail Criteria:** | Alarm must be reported with the configured severity level on step 3 and step 6 | | |
| **Results** | [ ] Pass [ ] Pass w/X [ ] Dropped [ ] Blocked [ ] Failed | | |
| **Test Output** | " | | |

2

1 6.4.3.9 Port-ID (IDentification) maintenance

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | Alarm & Monitoring.08 | **Classification** | Functionality |
| **Test Title** | Port-ID (IDentifcation) maintenance | | |
| **Test Objective:** | The aim of the test is to check the ID feature | | |
| **Pre-Req** | Running service will be interrupted | | |
| **Test Topology:** | ![](../assets/images/479d026c2817.png) | | |
| **Procedure:** | **Detailed Test procedure:**  **Test Procedure and Verifications needed:**   1. Configure Port-ID at TNE 2. Check if Port-ID modification can be done with TNE in administrative state up. 3. Connect an Ethernet teste on the link. | | |
| **Test Configuration** | Xhaul traffic and RAN services configuration | | |
| **Pass/Fail Criteria:** | 1. Port-ID creation and modification should be possible without service impact for customer on step 2 2. Port-ID should be retrieved on step 3 | | |
| **Results** | [ ] Pass [ ] Pass w/X [ ] Dropped [ ] Blocked [ ] Failed | | |
| **Test Output** |  | | |

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

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | DWDM.HEE.01 | **Classification** | Functionality |
| **Test Title** | Transmitting power at the DWDM head end equipment (HEE) | | |
| **Test Objective:** | To test transmitting power levels at the HEE | | |
| **Pre-Req** | Running service will be interrupted | | |
| **Test Topology:** | Refer to O-RAN.WG9.WDM-v01.00, Section 2.3 Semi-Active WDM system  OPM Client Network OPM Tx1 Tx1 ![](../assets/images/f0b83e306997.png) Rx1 Rx1  Ref. 1 Ref. 2  Tx2 Tx2 Ref. 3 O-DU ? O-RU  Rx2 Rx2  O-DU ? O-RU  Txn Txn OPM  Rxn Rxn  OSA  WDM HEE/O-DU | | |
| **Required tester** | Optical power meter (OPM), optical spectrum analyzer (OSA) | | |
| **Test Configuration** | 1. Disable all the other transmitters (e.g. Txn) which are NOT under test; | | |
| **Procedure:** | **Detailed Test procedure:**   1. Connect the OPM and OSA to the reference points shown in the above test configuration. 2. Read the power level of Ref. 1 (Client Tx). 3. Read the power level of Ref. 2 (Network Tx). 4. Read the power level of Ref. 3 (Network Port of OM/OD) 5. Measure the center frequency and the optical spectrum at Ref. 3 (Network Port of OM/OD) 6. To carry out the procedure for all the other transmitters. | | |

|  |  |
| --- | --- |
|  | **Verifications needed:**   1. Record Tx power readings from the host network management. |
| **Pass/Fail Criteria:** | 1. Tx power at Ref. 1 should be -8 to 0 dBm. 2. Tx power at Ref. 2 complies with O-RAN.WG9.WDM-v01.00, Table 6-10, depending on the pluggable variants. 3. Tx power at Ref. 3 should be within the range of Ref. 2 deducting maximum insertion loss of 4.6 dB. 4. Optical spectrum complies with O-RAN.WG9.WDM-v01.00, Table 6-10, depending on the pluggable variants. |
| **Test Output** |  |
|  |  |

1

|  |  |  |
| --- | --- | --- |
| Interface | Network Mgmt.  Tx power (dBm) | OPM  Tx power (dBm) |
| Client |  |  |
| Network |  |  |
| OM/OD |  |  |

|  |  |  |
| --- | --- | --- |
|  |  |  |
|  |  |  |
|  |  |  |
|  |  |  |

2

1 7.1.2 Receive Sensitivity

2

|  |  |  |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| **Test ID** | DWDM.HEE.02 | | | | **Classification** | | | Functionality | |
| **Test Title** | Receiving sensitivity at the DWDM head end equipment (HEE) | | | | | | | | |
| **Test Objective:** | To test received power level and receiving sensitivity at the HEE | | | | | | | | |
| **Pre-Req** | Running service will be interrupted | | | | | | | | |
| **Test Topology:** | Refer to O-RAN.WG9.WDM-v01.00, Section 2.3 Semi-Active WDM system ![](../assets/images/a1ae2630df4e.png) OPM OPM | | | | | | | | |
| Client | | | Network ![](../assets/images/89114273c3e7.png)![](../assets/images/b063489e9658.png)![](../assets/images/29d7c485bbbc.png) | | | | | O-DU ? O-RU  Ref. 3  O-DU ? O-RU |
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

**Pass/Fail Criteria: Test Output**

|  |  |  |
| --- | --- | --- |
| Interface | Network Mgmt.  Rx power (dBm) | OPM  Rx power (dBm) |
| Network |  |  |

|  |  |  |
| --- | --- | --- |
|  |  |  |
|  |  |  |

1. Rx power at Ref. 2 complies with O-RAN.WG9.WDM-v01.00, Table 6-10, depending on the pluggable variants.

OM/OD

**...**

**...**

OM/OD

|  |  |  |
| --- | --- | --- |
| Tx1 Rx1 |  | Tx1 Rx1 |
|  |

1 7.1.3 Auto-tuning test

2

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | WDM.auto-tuning.01 | **Classification** | Functionality |
| **Test Title** | Paired frequency tuning at tail end (TE) | | |
| **Test Objective:** | To verify if the tail-end transceiver can be auto-tuned to the connected filter port | | |
| **Pre-Req** | Optical transceivers supporting paired auto-tuning | | |
| **Test Topology:** | Applicable to O-RAN.WG9.WDM-v01.00, Passive, Semi-Active, and Active WDM fronthaul system  Client Network Network Clien  Ref. 4  Traffic Tx1 Tx1 ![](../assets/images/55412a3d3509.png) Tester Rx1 Rx1  Ref. 1 Ref. 2  Traffic Tx2 Tx2 Ref. 3 O-DU ? O-RU  Tester Rx2 Rx2  O-DU ? O-RU  Traffic Txn Txn  Tester Rxn Rxn  WDM HEE/O-DU WDM TEE/O-R | | |
| **Required tester** | Optional traffic tester (eCPRI) | | |
| **Test Configuration** |  | | |
| **Procedure:** | **Detailed Test procedure:**   1. Connect the client and network transceivers at the WDM HEE/O-DU according to the test topology above. 2. At the WDM HEE/O-DU, provision the frequency of all the populated HE Network transceiver (Tx1/Rx1 ... Txn/Rxn), as well as the paired frequency for the TE transceivers. | | |

|  |  |
| --- | --- |
|  | 1. Enable the channel ports (laser on) and optionally testing traffic. 2. Plug and enable the TE transceiver under test into the O-RU (passive WDM) or remote WDM equipment. 3. Connect fibers between the TE transceiver and one of the provisioned OM/OD ports. 4. Monitor and read the Rx signal at the corresponding HE transceiver. 5. Repeat Step 5 and 6 for the other OM/OD ports.   **Verifications needed:**   * 1. Verify whether the TE transceiver can be automatically tuned to the correct uplink frequency.   2. Verify whether the channel status at the WDM HEE/O-DU is "link up" and read the received optical power.   3. Record the time duration from the moment connecting the OM/OD port to the TE transceiver being auto tuned.   4. Optionally verify whether the traffic is resumed. The traffic needs to be looped back from the WDM TEE/O-RU. |
| **Pass/Fail Criteria:** | 1. After power cycle or being reconnected to a new OM/OD port, the TE transceiver is automatically tuned to the correct uplink frequency. 2. Rx power at Ref. 2 complies with O-RAN.WG9.WDM-v01.00, Table 6-10, depending on the pluggable variants. 3. Optionally the traffic can be resumed. |
| **Test Output** |  |

1

|  |  |  |  |
| --- | --- | --- | --- |
| TE Channel Frequency | Tuning Time | Link Status | Rx Power at HE |
|  |  |  |  |

2

1 7.1.4 Crosstalk testing

OD

OM

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | WDM.crosstalk.01 | **Classification** | Functionality |
| **Test Title** | WDM Xhaul transport inter-channel crosstalk | | |
| **Test Objective:** | To verify if the OM/OD meets the isolation specification of the WDM transport link | | |
| **Pre-Req** |  | | |
| **Test Topology:** | Applicable to O-RAN.WG9.WDM-v01.00, Passive, Semi-Active, and Active WDM fronthaul system  OSA ![](../assets/images/96d9e2634d81.png) TRx 1 Tx OSA  Rx  *IL*  *Ia I*  *P na*  WDM HEE/O-DU WDM TEE/O-RU | | |
| **Required tester** | Optical spectrum analyzer (OSA) | | |
| **Test Configuration** | 1. Definitions of *IL*, *Ia*, and *Ina* are referred to ITU-T G.671 2. OSA shall be capable of a sensitivity of at least -65 dBm | | |
| **Procedure:** | **Detailed Test procedure:**   1. Provision and enable a WDM transceiver for the respective WDM solution (e.g., DWDM, MWDM); 2. Use the OSA to measure the spectrum peak power at Tx (*P* in dBm); 3. Connect the transceiver to the OM, and only a short jumper cable is needed between the OM and the OD. 4. Connect to the OSA to the OD output port of the wanted channel, and measure the spectrum peak power to calculate the insertion loss (*IL* in dB); 5. Connect to the OSA to one of the adjacent channel ports of the wanted one, and measure the spectrum peak power to calculate the adjacent channel isolation (*Ia* in dB); 6. Connect to the OSA to any of the other OD output ports and measure the spectrum peak power to calculate the non-adjacent channel isolation (*Ina* in dB). | | |

|  |  |
| --- | --- |
|  | **Verifications needed:**   1. OSA settings shall be always kept the same. 2. For the measurement of each wanted channel, at least one *Ia* and one *Ina*   shall be measured.   1. If more than one *Ia* or *Ina* are measured, always take the smallest (worst) value from the result set. |
| **Pass/Fail Criteria:** | 1. Depending on the type of WDM OM/OD, *IL*, *Ia*, and *Ina* shall be compliant with O-RAN.WG9.WDM-v01.00, Table 9-10. 2. The actual tolerable inter-channel crosstalk (*Cc* in dB) for 100GHz-spaced DWDM is specified in G.698.1, Tables 8-1 to 8-4. *Cc* can be calculated following:   -Ia -Ina  CC = d + 10 log [2 x 10 10 + (k - 3)10 10 ]  where *d* is the maximum allowable power difference of a particular transceiver type specified in O-RAN.WG9.WDM-v01.00 |
| **Test Output** |  |
|  |  |

1

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| WDM Type | Transceiver | Channel | *IL* | *Ia* | *Ina* |
| e.g. DWDM  or MWDM | e.g. 10G, 25G, BiDi |  |  |  |  |

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
|  |  |  |  |  |  |
|  |  |  |  |  |  |

2

OM

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | WDM.crosstalk.02 | **Classification** | Functionality |
| **Test Title** | WDM Xhaul transport interferometric crosstalk | | |
| **Test Objective:** | To verify if the OM/OD meets the isolation specification of a WDM transport link with add/drop nodes | | |
| **Pre-Req** |  | | |
| **Test Topology:** | Applicable to O-RAN.WG9.WDM-v01.00, Passive, Semi-Active, and Active WDM fronthaul system  OSA *IL* ![](../assets/images/5a8b3acb773f.png) TRx 1 Tx *Ii*  Rx  *P*  OD *1* OD *n*  OSA OSA  WDM HEE/O-DU WDM TEE/O-RU | | |
| **Required tester** | Optical spectrum analyzer (OSA) | | |
| **Test Configuration** | OSA shall be capable of a sensitivity of at least -65 dBm | | |
| **Procedure:** | **Detailed Test procedure:**   1. Provision and enable a WDM transceiver for the respective WDM solution (e.g., DWDM, MWDM), of which the channel is dropped at the measured OD (i.e. OD 1 in the test example); 2. Follow the procedure specified in WDM.crosstalk.01 (Step 2 to 6). 3. Measure the spectrum peak power at the OD network port to calculate the insolation (*Ii*) for interferometric crosstalk.   **Note:** The signal from the first source will be extinguished by the OADMs where the channel is dropped, and the interferometric crosstalk will be dominated by the performance of the last OADM that dropped and added that channel. This interferometric crosstalk, therefore, does not constrain the number of OADMs in a link. [Ref to G.698.1]  **Verifications needed:**   * 1. OSA settings shall be always kept the same.   2. For the measurement of each wanted channel, at least one *Ia* and one *Ina*   shall be measured. | | |

**Pass/Fail Criteria:**

**Test Output**

|  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- |
|  |  |  |  |  |  |  |
|  |  |  |  |  |  |  |

3. If more than one *Ia* or *Ina* are measured, always take the smallest (worst) value from the result set.

1. Depending on the type of WDM OM/OD, *IL*, *Ia*, and *Ina* shall be compliant with O-RAN.WG9.WDM-v01.00, Table 9-10.
2. The actual tolerable interferometric crosstalk for 100GHz-spaced DWDM is specified in G.698.1, Tables 8-1 to 8-4.

OD

OM

|  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- |
| WDM Type | Transceiver | Dropped Channel | *IL* | *Ia* | *Ina* | *Ii* |
| e.g. DWDM  or MWDM | e.g. 10G, 25G, BiDi |  |  |  |  |  |

1. 7.1.5 Latency Test

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | WDM.latency.01 | **Classification** | Characterization |
| **Test Title** | WDM Xhaul transport latency measurement | | |
| **Test Objective:** | To measure the PHY latency from an optical transceiver to the other of the WDM transport link | | |
| **Pre-Req** |  | | |
| **Test Topology:** | Applicable to O-RAN.WG9.WDM-v01.00, Passive, Semi-Active, and Active WDM fronthaul system ![](../assets/images/6c0a70d401a4.png) Loopback calibration  BER Tester O Digital pe  Tx electrical scillosco Rx electrical  data pattern Tx pattern data pattern trigger  TRx 1 Tx Tx TRx 2  Rx Rx  WDM HEE/O-DU WDM TEE/O-RU | | |
| **Required tester** | General purpose bit error rate tester (BERT); highspeed digital oscilloscope (OSC) | | |

|  |  |
| --- | --- |
| **Test Configuration** | 1. The BERT is able to customize data pattern with a recurring period of preferably a magnitude order higher than the expected latency. 2. The OSC has adequate bandwidth to sample the data pattern. 3. For optical transceivers integrated with CDR, the transmitted data rate needs to be in the range of the CDR clock rate. |
| **Procedure:** | **Detailed Test procedure:**   1. Customize the transmitted data pattern with a recurring period of a magnitude order higher than the expected latency (e.g. PRBS pattern with a tail of consecutive "0" symbols or alternating "1" and "0" sequence); 2. Use one of the OSC channels to measure the transmitted pattern trigger output of the BERT as the reference signal, and another channel to measure the received data pattern. 3. Before the actual link measurement, connect Tx cable (from the BERT) and Rx cable (to the OSC) together for the loopback calibration, measuring the loopback offset between the Tx trigger and the unique pattern identified in the Rx data. 4. Connect the exact same Tx and Rx cable with the two optical transceivers under test, as well as the WDM link in between. 5. Measure again the offset between the Tx trigger and the identified Rx data, and subtract the loopback offset to obtain the actual link latency. 6. The same procedure can be also applied to the other transmission direction. |
| **Pass/Fail Criteria:** | 1. Informative result only |
| **Test Output** |  |
|  |  |

1

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| WDM Type | Filter Type | Transceiver | Channel | Latency |
| e.g. DWDM  or MWDM |  | e.g. 10G, 25G, BiDi |  |  |

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | WDM.latency.02 | **Classification** | Characterization |
| **Test Title** | Fiber latency and asymmetry measurement | | |
| **Test Objective:** | To measure the fiber latency and asymmetry for a particular x-haul PHY link | | |
| **Pre-Req** |  | | |
| **Test Topology:** | Applicable to O-RAN.WG9.WDM-v01.00, Passive, Semi-Active, and Active WDM fronthaul system | | |

Reflectance

OTDR

|  |  |  |  |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
|  | Round-trip time  Probe Response ![](../assets/images/841bbcd7af90.png)![](../assets/images/3000bd7f211a.png)![](../assets/images/bedb1c2d7bd5.png) | | | | | | | | | |
|  | CU |  | DU | | RU ![](../assets/images/3672fc138032.png) | | | | |
|  |
|  |  |  | | OTDR | | | | |
|  | | | | | | |  | Probe ![](../assets/images/4d46d2b69c77.png)![](../assets/images/490cb6ba808b.png) Response | |
|  | CU |  | | DU | |  |  |  | RU ![](../assets/images/3672fc138032.png) |
|  | |  | | |
| O-DU Side O-RU Side  Probe  Fibre 1 Physical fibre  Response termination  **OTDR** ![](../assets/images/797ce121038f.png)![](../assets/images/fed542e95e85.png) Fibre 2 Physical fibre  termination  Rayleigh Demarcation  scattering Lossy Reflector  splice  RT  Time | | | | | | | | | |
| **Required tester** | General purpose optical time-domain reflectometer (OTDR) | | | | | | | | | |
| **Test Configuration** | 1. The accuracy of the measurement depends on the length of the OTDR pulse, usually in a range of few nanoseconds. 2. To achieve a sufficient signal-to-noise ratio, longer probe pulses may be required for longer fiber links, because of a higher loss. 3. In case of using a correlated OTDR, a bit sequence at a rate of a few Gbit/s can be used as the probe signal. The reflected signals are then cross- correlated with the transmitted bit pattern, improving the resolution of this correlated OTDR to picoseconds. | | | | | | | | | |

|  |  |
| --- | --- |
|  | 4. For measuring any wavelength asymmetry, CWDM, DWDM or tunable OTDR source is required.  Note 1: Link asymmetry compensation is elaborated in Appendix IV, ITU-T G.8271/Y.1366 (03/2020).  Note 2: OTDR is specified as a fiber link monitoring for WDM systems in ITU-T G.697. |
| **Procedure:** | **Detailed Test procedure:**   1. Insert the OTDR at the optical transmitter interface (e.g.O-DU/CSR output, WDM HEE Tx, etc.); 2. If possible, insert also a demarcation reflector in front of the actual fiber termination; 3. Configure the pulse length, wavelength, measurement duration etc. of the OTDR, according to the expected link range; 4. The round-trip latency can be calculated between the start event of pulse launch and the end/demarcation reflective event, and the one-way latency of the measured link is exactly half of it; 5. In case of measuring the latency of multiple wavelengths, change the OTDR wavelength accordingly and repeat Step 3-4; 6. In case of measuring the latency of multiple links from the same transmitter side, switch the OTDR connection to another link and repeat Step 3-5. |
| **Pass/Fail Criteria:** | 1. Informative result only |
| **Test Output** |  |
|  |  |

1

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| Link | Transceiver | Channel | RTL | Asymmetry |
|  | e.g. 10G, 25G, BiDi |  |  |  |

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

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | WDM.OAM.01 | **Classification** | Characterization |
| **Test Title** | OAM test for optical module OAM data link layer | | |
| **Test Objective:** | To test the OAM data link communication of the optical modules | | |
| **Pre-Req** |  | | |
| **Test Topology:** | Applicable to O-RAN.WG9.WDM-v01.00, optical modules.  ![](../assets/images/787060c8aed7.png)  An optical link consists of WDM components, like MUX/DEMUX and 10km optical fiber, which are used to connect optical modules at two ends to simulate the Fronthaul optical transport channel.  Each optical module is installed on a test board like a transponder, on which a management system installs. The information of optical modules can be configured and read by the test boards through the management system.  To test the active function specified in section 6.1 of O-RAN.WG9.WDM-v01.00, the optical module on one side can receive and verify the OAM information from the optical module configured by the corresponding management system on the other side, and send back the verification result to the optical module on the other side.  To test the configuration and inquiry functions specified in section 6.1 of O- RAN.WG9.WDM-v01.00, the optical module on one side can also be configured by the corresponding testing management system to send the testing OAM configuration or inquiry messages to the optical module on the other side. Then, the optical module on one side can receive and verify the corresponding OAM responses from the optical module on the other side. If the corresponding OAM responses are correct, the optical modules can send the results to the optical module on the other side. | | |
| **Required tester** | General purpose bit error rate tester (BERT); digital oscilloscope; Optical power meter (OPM); variable optical attenuator (VOA); test board; | | |
| **Test Configuration** | 1. Connect the OPM, VOA, splitters and BER tester to the reference points shown in the above test configuration. | | |

|  |  |
| --- | --- |
|  | 1. Configure the BERT to simulate service information transmission. 2. Adjust the VOA to make the attenuation of the link meet the requirements of the power budget. 3. Configure OAM connections between the testing management systems and TRxs. |
| **Procedure:** | 1. Verify that the service channel is working properly through the BERT. 2. Start OAM frame statistics at the testing management system and test for 10 minutes to check the number of bits sent and received, and the number of error frames in the testing management systems. |
| **Pass/Fail Criteria:** | No alarms, no error frames, and the number of sent and received frames is the same. |
| **Test Output** | The OAM data link communication of the optical modules is OK. |
|  |  |

1

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | WDM.OAM.02 | **Classification** | Characterization |
| **Test Title** | OAM test for active WDM equipment OAM data link layer | | |
| **Test Objective:** | To test the OAM data link communication of active WDM equipment and optical modules. | | |
| **Pre-Req** |  | | |
| **Test Topology:** | Applicable to O-RAN.WG9.WDM-v01.00, active WDM equipment for semi-active WDM system and active WDM system.  ![C:\Users\cmcc\Desktop\OAM test-active-wdm-eq.jpg](../assets/images/b8f165b86d5e.png) | | |
| **Required tester** | General purpose bit error rate tester (BERT); digital oscilloscope; Optical power meter (OPM); variable optical attenuator (VOA); test board; | | |
| **Test Configuration** | 1. Connect the OPM, VOA, splitters and BER tester to the reference points shown in the above test configuration. 2. Configure the BERT to simulate service information transmission. 3. Adjust the VOA to make the attenuation of the link meet the requirements of the power budget. 4. Configure OAM connections between testing management system and TRx. | | |
| **Procedure:** | 1. Verify that the service channel is working properly through the BERT. 2. Verify that the OAM data link communication of optical modules is OK through the testing management systems. | | |

|  |  |
| --- | --- |
|  | 3. Check through management systems whether the active WDM equipment can receive OAM messages from optical modules at O-RU side. |
| **Pass/Fail Criteria:** | The OAM messages from optical modules at O-RU side can be received correctly by active WDM equipment. |
| **Test Output** | The OAM data link communication of the active WDM equipment and optical modules is OK. |
|  |  |

1

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | WDM.OAM.03 | **Classification** | Characterization |
| **Test Title** | OAM test for functions of active WDM equipment service layer | | |
| **Test Objective:** | To test the OAM service layer functions of active WDM equipment. | | |
| **Pre-Req** |  | | |
| **Test Topology:** | Applicable to O-RAN.WG9.WDM-v01.00, active WDM equipment for semi-active WDM system and active WDM system.  ![C:\Users\cmcc\Desktop\OAM test-active-wdm-eq.jpg](../assets/images/b8f165b86d5e.png) | | |
| **Required tester** | General purpose bit error rate tester (BERT); digital oscilloscope; Optical power meter (OPM); variable optical attenuator (VOA); test board; | | |
| **Test Configuration** | 1. Connect the OPM, VOA, splitters and BER tester to the reference points shown in the above test configuration. 2. Configure the BERT to simulate service information transmission. 3. Adjust the VOA to make the attenuation of the link meet the requirements of the power budget. 4. Configure OAM connections between testing management systems and TRxs. | | |
| **Procedure:** | 1. Verify that the service channel is working properly through the BERT. 2. Verify that the OAM data link communication of optical modules is OK. 3. Verify that the OAM data link communication of the active WDM equipment and optical modules is OK. 4. Read the received OAM messages and check whether the optical module status information mentioned in the table of Key Performance Indicators in section 6.1 of O-RAN.WG9.WDM-v01.00 is received, such as the wavelength, vender, ID, driving voltage, driving current, the launched optical power of the transmitter, the optical received power of the receiver, etc. 5. For semi-active WDM type I systems and active WDM systems, configure the active WDM equipment at the O-DU side to send the optical module | | |

|  |  |
| --- | --- |
|  | status inquiry and configuration requests to optical modules at the O-RU side, and check whether the corresponding responses are received. |
| **Pass/Fail Criteria:** | 1. The active WDM equipment can get the correct information of optical module at O-RU side. 2. For semi-active WDM type I system and active WDM system, the active WDM equipment can send inquiry and configuration messages to optical modules at the O-RU side and receive the corresponding response messages. |
| **Test Output** | The OAM service layer function of active WDM equipment is OK, including inquery, configuration and active. |
|  |  |

1

2

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | WDM.OAM.04 | **Classification** | Characterization |
| **Test Title** | OAM test for technical characteristics of multi-carrier OAM modulation | | |
| **Test Objective:** | To test the technical characteristics of multi-carrier OAM modulation | | |
| **Pre-Req** |  | | |
| **Test Topology:** | Applicable to O-RAN.WG9.WDM-v01.00, active WDM equipment for semi-active WDM system.  ![A picture containing diagram, plan, technical drawing, schematic  Description automatically generated](../assets/images/bdf30fd9c9d9.png)  Test setup topology 1 | | |

|  |  |
| --- | --- |
|  | ![A picture containing diagram, plan, text, technical drawing  Description automatically generated](../assets/images/5bf058db7ee2.png)  Test setup topology 2  An optical link consists of WDM components, like MUX/DEMUX and 10km optical fiber, which are used to connect optical modules at two ends to simulate the fronthaul optical transport channel.  Colored optical modules are inserted on a test board like a transponder, on which a management system installs. The information of colored optical modules can be configured and read by the test boards through the management system.  The standardized colored optical modules (STRxs) and standardized OAM demodulation equipment based on multi-carrier OAM modulation are used for the verification of the interoperation of optical module and active WDM equipment of different vendors.  At the STRxs, the transmitting and receiving frequency of service signal is 10G or 25G, the carrier modulation frequencies of in-band OAM signals are unique for each WDM optical signals with different wavelengths (?2~?2n) and are between 1k to 100M.  At the standardized OAM demodulation equipment, the optical signal with different wavelengths (?2 ~ ?2n) is converted into the electrical signal with different carrier modulation frequencies (k1~k2n-1) by a photoelectric detector (PD), and all in-band OAM messages with different carrier modulation frequencies (k1~k2n-1) can be demodulated together correctly from the electrical signal by a demodulation. |
| **Required tester** | General purpose bit error rate tester (BERT); frequency spectrograph; Optical power meter (OPM); variable optical attenuator (VOA); test board; |
| **Test Configuration** | 1. Connect the OPM, VOA, splitters, frequency spectrograph and BER tester to the reference points shown in the test setup topology 1. 2. Configure the BERT to simulate service information transmission. 3. Adjust the VOA to make the attenuation of the link meet the requirements of the power budget. 4. Configure OAM connections between testing management systems and TRxs. |
| **Procedure:** | 1. Check whether the service signal link communication between optical modules at different wavelength (?1~?2n) are working correctly through the BERT. 2. Check that the OAM data link communication of optical modules is OK through the testing management systems. 3. Measure the carrier modulation frequencies (k1~k2n) of in-band OAM signals at different wavelength channels through the frequency spectrograph, check |

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
|  | whether they are unique for each WDM optical signals with different wavelengths ((?1~?2n).   1. Check whether the OAM messages from different OAM carriers are extracted correctly by the standardized OAM demodulation equipment. 2. Connect the test setup as the test setup topology 2. 3. Check whether the active WDM equipment could extract the OAM messages from different OAM carriers. | | | |
| **Pass/Fail Criteria:** | the OAM data link communication of optical modules based on multi-carrier OAM modulation is OK.  The carrier modulation frequencies (k1~k2n) of in-band OAM signals are unique for each WDM optical signals with different wavelengths ((?1~?2n).  The OAM messages from different OAM carriers are extracted correctly by the standardized OAM demodulation equipment.  The active WDM equipment can receive the OAM messages from optical modules at O-RU side. | | | |
| **Test Output** |  | optical module serial number | Optical transmission wavelength | low-speed carrier modulation frequency |
|  | 1 | ?1 | k1 |
|  | 2 | ?2 | k2 |
|  |  |  |  |
|  |  |  |  |
|  | 2n | ?2n | k2n |
|  | | | |
|  |  | | | |

1

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | WDM.OAM.05 | **Classification** | Characterization |
| **Test Title** | OAM test for the loopback configuration function of semi-active WDM system | | |
| **Test Objective:** | To test the loopback configuration function of semi-active WDM system | | |
| **Pre-Req** |  | | |
| **Test Topology:** | Applicable to O-RAN.WG9.WDM-v01.00, active WDM equipment for semi-active WDM system.  ![A picture containing diagram, text, screenshot, line  Description automatically generated](../assets/images/bf94c5342d51.png) | | |

|  |  |
| --- | --- |
|  | Test setup topology 1  ![A picture containing diagram, plan, technical drawing, text  Description automatically generated](../assets/images/90abca54e1e0.png)  Test setup topology 2  An optical link consists of WDM components, like MUX/DEMUX and 10km optical fiber, which are used to connect optical modules at two ends to simulate the fronthaul optical transport channel.  Optical modules are inserted on a test board like a transponder, on which a management system installs. The information of optical modules can be configured and read by the test boards through the management system.  The standardized colored optical modules (STRx) are used for the verification of the optical module interoperation of different vendors.  The STRxs can send the loopback configuration message and receive the response message of the loopback configuration success from the tested optical modules through the in-band OAM channel. The STRxs also can receive the loopback configuration message from the tested optical modules, configure itself on the loopback mode and send the response message of the loopback configuration success to the tested optical modules through the in-band OAM channel. If the response message of the loopback configuration success from the tested optical modules is received by STRxs, STRxs can send the 10G/25G PRBS test data stream and receive the 10G/25G data stream from the tested optical modules.  It can be estimated by STRx whether there is a fault of the tested optical module:  If the standardized response message of loopback configuration success isn't responded or the received 10G/25G data stream from the tested optical modules has error, the tested optical module is faulty.  If standardized response message of the loopback configuration success is responded and the received 10G/25G data stream from the tested optical modules is error-free, the tested optical module is normal. |
| **Required tester** | General purpose bit error rate tester (BERT); digital oscilloscope; Optical power meter (OPM); variable optical attenuator (VOA); test board; |
| **Test Configuration** | 1. Connect the OPM, VOA, splitters and BER tester to the reference points shown in the test setup topology 1. 2. Configure the BERT to simulate service information transmission. 3. Adjust the VOA to make the attenuation of the link meet the requirements of the power budget. 4. Configure OAM connections between testing management systems and TRxs. |
| **Procedure:** | 1. Verify that the service channel isn't working through the BERT. 2. Verify that the OAM data link communication of optical modules is OK. |

|  |  |
| --- | --- |
|  | 1. Configure the STRxs to send the loopback configuration OAM message to optical module at the O-RU by the test management system 2. 2. Check whether the service channel is working properly through the BERT. 3. Check whether the standardized response OAM message from optical module at the O-RU could be extracted by the STRxs. 4. Connect the test setup as the test setup topology 2. 5. Configure the STRxs to send the loopback configuration OAM message to optical module at the O-RU by the active WDM equipment. 6. Check whether the service channel is working properly through the BERT. 7. Check whether the standardized response OAM message from optical module at the O-RU could be extracted by active WDM equipment. |
| **Pass/Fail Criteria:** | If the service channel is working properly through the BERT and the standardized response OAM message could be extracted, the optical module satisfies the loopback configuration requirement.  If the service channel is working properly through the BERT and the standardized response OAM message could be extracted by the active WDM equipment, the active WDM equipment satisfies the loopback configuration requirement. |
| **Test Output** | The loopback configuration function of semi-active WDM system is OK. |
|  |  |

1. 7.1.7 Management Interface Test
2. Functional requirements for Semi-active Front-haul WDM systems have been defined in the current
3. version of Management Interfaces for Transport Network Elements (O-RAN.WG9.XTRP-MGT.0-
4. v04.0). The centralized management system could send management requests to the active WDM
5. equipment and control the semi-active WDM front-haul systems of multiple vendors through the
6. unified Netconf interface. To fully verify the functional requirements of the management system
7. and interface, typical test cases shall be included.

8

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | WDM.management.01 | **Classification** | Management System Functionality |
| **Test Title** | Network element information query | | |
| **Test Objective:** | To test if the WDM management southbound interface support network element information query function | | |
| **Test Topology:** | Refer to O-RAN.WG9.WDM-v01.00, Section 2.3 Semi-Active WDM system | | |

|  |  |
| --- | --- |
|  | ![](../assets/images/8d9c799be328.png) |
| **Required tester** | Southbound interface test tool |
| **Pre-Req** | 1. Connect the test topology according to the test configuration; |
| **Procedure:** | **Detailed Test procedure:**   1. Query the network element information through the '*get'* command on the management and control system. Verify that some typical network element information can be obtained. 2. Verify whether the queried information is consistent with the actual situation of the device.   **Verifications needed:**  2. Record the actual situation of the device. |
| **Pass/Fail Criteria:** | 1. Step 2 can query the device network element information, and the information is consistent with the actual situation of the device. |
| **Test Output** | Typical network element information:  a) Network element information list; b) Network element ID;  c) Network element name; d) The manufacturer name of the network element;  e) Product name; f) Software version;  g) Additional attributes; h) Network element classification: semi-active, etc.;  i) Hardware version; j) Network element IP;  k) Board list; l) Layer protocol;  m) Gateway. |

1

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | WDM.management.02 | **Classification** | Management System Functionality |
| **Test Title** | Loopback configuration and query | | |
| **Test Objective:** | To test if the WDM management southbound interface support loopback configuration and query function | | |
| **Test Topology:** | Refer to O-RAN.WG9.WDM-v01.00, Section 2.3 Semi-Active WDM system | | |

|  |  |
| --- | --- |
|  | ![](../assets/images/0c252b1d43bd.png) |
| **Required tester** | Southbound interface test tool |
| **Pre-Req** | 1. Connect the test topology according to the test configuration; |
| **Procedure:** | **Detailed Test procedure:**   1. Loopback setting and query:    1. Query the WDM device port information on the management and control system.    2. Use the *'edit-config'* command to configure several ports loopback into the following types respectively, and verify that the loopback setting is successful:   - FACILITY\_LOOPBACK  - TERMINAL\_LOOPBACK  - NON\_LOOPBACK   1. Use the *'get'* command on the management system to query the loopback types of all the network element ports and the loopback type of the specified port, and verify that the query is successful. |
| **Pass/Fail Criteria:** | 1. The loopback configuration should be able to return the operation result (success/failure). 2. The loopback query results in step 3 should be consistent with the actual configuration in step 2. 3. Supports two query granularities: network element and port. |
| **Test Output** | 1. The loopback query result must include the port loopback status; 2. The query result value without loopback type is empty. |

1 7.1.8 Performance of a pair of MUX/DEMUXs

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | WDM.MUX-DEMUX | **Classification** | Functionality |
| **Test Title** | Performance of a pair of MUX/DEMUXs | | |
| **Test Objective:** | The aim of the test is to measure the performance of a pair of MUX/DEMUXs, including the max shift of central wavelength, max 1 dB bandwidth and insertion loss of a pair of MUX/DeMUXs. | | |
| **Pre-Req** | Connect the test topology according to the test configuration | | |

|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| **Test Topology:** | Applicable to O-RAN.WG9.WDM-v01.00, Passive, Semi-Active, and Active WDM fronthaul system  ![](../assets/images/8d7ef43cca03.png) | | | | | | | | | | | | | | | |
| **Required tester** | Tunable Laser, Power meter | | | | | | | | | | | | | | | |
| **Test Configuration** | 1. Connect the tunable Laser and power meter directly, and measure and store the output power curves '*Pbtb(?)*'(dBm) as the reference while the tunable laser wavelength is swept within the wavelength range of WDM system requirement. 2. Connect the tunable Laser and power meter to the reference points shown in the above test configuration. | | | | | | | | | | | | | | | |
| **Procedure:** | 1. Detailed Test procedure: 2. The tunable laser is connected to the left port '*i*' (*i=1, n*), and the power meter is   connected to the right port '*i*' (*i=1, n*) of the paired device;   1. The wavelength of the tunable laser is swept within the working wavelength range and the power curve 'Pi(?)'(dBm) is measured and stored; 2. The Transmission power spectrum curve 'Ti(?)' of pair of MUX/DEMUXs is got by the formula: *Ti(?)*=*Pbtb(?)*-*Pi(?)*; 3. 1 dB bandwidth of wavelength channel '*i*': Find the wavelength bandwidth that the difference between '*Ti(?)*' and max value of '*Ti(?)*' is no more than 1dB; 4. Insertion loss of a pair of MUX/DeMUXs of wavelength channel '*i*': find the min value of '*Ti(?)*' at 1 dB wavelength bandwidth; 5. Shift of central wavelength of wavelength channel '*i*': the difference between the central wavelength of 1 dB bandwidth wavelength range and the standardized central wavelength. | | | | | | | | | | | | | | | |
| **Pass/Fail Criteria:** | If the value of performance is in the standardized range, pass; if not, fail. | | | | | | | | | | | | | | | |
|  | **Parameters** | Unit | **Proposed values** | | | | | | | | | | | |  |
| Central wavelength | nm | 1267.5 | 1274.5 | 1287.5 | 1294.5 | 1307.5 | 1314.5 | 1327.5 | 1334.5 | 1347.5 | 1354.5 | 1367.5 | 1374.5 |
| Max shift of central wavelength | nm | +- 1.2 | | | | | | | | | | | |
| 1 dB bandwidth | nm | >= 5.0 | | | | | | | | | | | |
| Max Insertion loss @ O-RU+O-  DU pairs, including the IL of an optical splitter | dB | 6.1 | 6.1 | 6.1 | 6.1 | 6.1 | 6.1 | 4.5 | 4.5 | 3.0 | 3.0 | 3.0 | 3.0 |

|  |  |
| --- | --- |
| **Test Output** |  |

1. 7.1.9 Protection function for WDM system

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | WDM.protection | **Classification** | Functionality |
| **Test Title** | protection function for WDM system | | |
| **Test Objective:** | The aim of the test is to check protection function for WDM system defined in "WDM-based Fronthaul Transport" | | |
| **Pre-Req** | Running service will be interrupted | | |
| **Test Topology:** | Applicable to O-RAN.WG9.WDM-v01.00, Semi-Active and Active WDM fronthaul system  ![??2](../assets/images/a0cdc4eca4b9.png) | | |
| **Required tester** | bit error rate tester (BERT) | | |
| **Test Configuration** | 1. Connect the BER tester to the reference points shown in the above test configuration. 2. Configure the BER tester to simulate service information transmission. | | |
| **Procedure:** | 1. On the management and control system, create or modify protection function through "edit-config" command. 2. On the management and control system, execute protection switching through RPC commands, and the commands include the following input content:    1. Protection ID    2. Switching command, such as manual switching, forced switching,    3. protection Direction, such as Host and Backup 3. Check the service connection status through the data network analyzer and record the service protection switching downtime. 4. On the management and control system, query the protection information through "get- config" command to verify whether the switching has been successful. 5. Create a link break fault and repeat step 3 and 4. | | |
| **Pass/Fail Criteria:** | Verify whether protection functions can be queried and configured through management system for active and semi-active WDM system.  Verify whether the performance of the protection function meets the requirements. | | |
| **Test Output** | Protection functions can be queried and configured through management system for active and semi-active WDM system.  The performance of the protection function meets the requirements. | | |

2

1

# 8 Packet-Switched Architectures and Solutions Testing

1. This chapter is composed of four sections:
2. - Generalized basic verification test.
3. - Service level tests
4. - Network element test
5. - Additional network tests

7

1. The first section covers the most common and basic packet tests of an Xhaul network (from a UNI interface
2. to another UNI interface). The second section delivers test cases for service level testing at UNI interfaces.

10

1. The third section is limited to testing the functions of a packet-switched Transport Network Element (TNE).
2. The last section provides other test cases outside of the above the three categories.

## 8.1 Generalized basic verification methods for Xhaul Transport packet

1. switched Network.
2. This section covers the most common and basic verification methods using Traffic Generator and Analyzer
3. tool.

17

1. Table 8.1-1summarizes the encapsulation of traffic streams combination of which shall be used in
2. generalized verification methods that must be executed to validate any transport network.

20

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **Trans port Netw ork**  **Type** | **Traffic stream** | **Packet Encapsulation** | **VLAN PCP**  **bits** | **DSCP bits** | **Frame Size (min, max)** |
| Fronth | Split option | Option 1 -Ethernet + eCPRI |  |  | As per |
| aul | 7-2x eCPRI |  | network |
|  | U-plane and | Option 2 - Ethernet + VLAN + | 7 (default) |  | As per |
|  | C-plane | eCPRI |  | network |
|  | traffic | Option 3 - Ethernet + IPv4 + UDP |  | EF | As per |
|  |  | + eCPRI |  | network |
|  |  | Option 4 - Ethernet + VLAN + IPv4 | 7 (default) | EF | As per |
|  |  | + UDP + eCPRI |  |  | network |
|  |  | Option 5 - Ethernet + IPv6 + UDP |  | EF | As per |
|  |  | + eCPRI |  | network |
|  |  | Option 6 - Ethernet + VLAN + IPv6 | 7 (default) | EF | As per |
|  |  | + UDP + eCPRI |  |  | network |
|  | M-plane | Option 1 -Ethernet + IPv4 + |  | AF2x | As per |
|  | Traffic | Netconf |  | network |
|  |  | Option 2 - Ethernet + VLAN + IPv4 | 2 (default) | AF2x | As per |
|  |  | + Netconf |  |  | network |
|  |  | Option 3 - Ethernet + IPv6 + |  | AF2x | As per |
|  |  | Netconf |  | network |
|  |  | Option 4 - Ethernet + VLAN + IPv6 | 2 (default) | AF2x | As per |
|  |  | + Netconf |  |  | network |
|  | RoE Traffic | Option 1 - Ethernet + RoE |  |  | As per |
|  |  |  | network |

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
|  |  |  |  |  |  |
| Option 2 - Ethernet + VLAN + RoE | 7 (default) |  | As per network |
| Midha ul | User plane and control plane traffic | Option 1 - Ethernet + IPv4 |  | As per QoS scheme of the network | As per network |
| Option 2 - Ethernet + VLAN + IPv4 | As per QoS scheme of  the network | As per QoS scheme of the  network | As per network |
| Option 3 - Ethernet + IPv6 |  | As per QoS scheme of the network | As per network |
| Option 4 - Ethernet + VLAN + IPv6 | As per QoS  scheme of the network | As per QoS  scheme of the network | As per network |
| M-plane traffic | Option 1 - Ethernet + IPv4 |  | As per QoS scheme of the network | As per network |
| Option 2 - Ethernet + VLAN + IPv4 | As per QoS scheme of the network | As per QoS scheme of the network | As per network |
| Option 3 - Ethernet + IPv6 |  | As per QoS  scheme of the network | As per network |
| Option 4 - Ethernet + VLAN + IPv6 | As per QoS scheme of the network | As per QoS scheme of the network | As per network |
| Backh aul | User plane and control plane traffic | Option 1 - Ethernet + IPv4 |  | As per QoS scheme of the network | As per network |
| Option 2 - Ethernet + VLAN + IPv4 | As per QoS scheme of  the network | As per QoS scheme of the  network | As per network |
| Option 3 - Ethernet + IPv6 |  | As per QoS scheme of the network | As per network |
| Option 4 - Ethernet + VLAN + IPv6 | As per QoS scheme of the network | As per QoS scheme of the network | As per network |
| M-plane traffic | Option 1 - Ethernet + IPv4 |  | As per QoS scheme of the  network | As per network |
| Option 2 - Ethernet + VLAN + IPv4 | As per QoS scheme of the network | As per QoS scheme of the network | As per network |
| Option 3 - Ethernet + IPv6 |  | As per QoS scheme of the network | As per network |
| Option 4 - Ethernet + VLAN + IPv6 | As per QoS scheme of  the network | As per QoS scheme of the  network | As per network |

1

### Table 8.1-1

3

1. Peak fronthaul bandwidth required for 7-2x split based eCPRI traffic can be estimated by the following
2. formula as specified in section 7.2 of Xhaul Transport Requirements doc.

3

4 FH BW = 2 x 10-9(1 + c) vlayerNPRB(12Nmantissa+Nexponent) (Gbps)

T?

s

1. vlayer is the maximum number of supported layers.
2. NPRB is the maximum RB allocation for a given channel bandwidth and numerology ?
3. Nmantissa is the number of mantissa bits.
4. Nexponent is the number of the exponent bits.
5. T? is the average OFDM symbol duration in a subframe for numerology, i.e., T? = 10-3

s

1. c is C-plane overhead. For downlink c ? 10% and for uplink c ? 0

s 14 x2?

1. Table 8.1-2 provides some examples for peak fronthaul bandwidth calculated for different scenarios
2. assuming Nmantissa = 9 and Nexponent = 4

13

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| Number of Sectors | CBW (MHz) | ? | MIMO Layers | ABW (MHz) | FH BW (Gbps) |
| 1 | 100 | 1 | 4 | 400 | 7.7 |
| 1 | 400 | 3 | 2 | 800 | 14.57 |

14

### Table 8.1-2

16

1. The above estimate does not include protocol encapsulation overhead which should be added based upon
2. encapsulation type and average packet size.

19

20 Table 8.1-3 provides traffic profiles to be used to simulate eCPRI traffic for Fronthaul network testing

21

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| Traffic Profile | Packet Encapsulation and QoS  marking | Stream Pattern | Stream Property | Traffic Load percentage |
| FH eCPRI  traffic profile 1 | As per Table 8.1-1 | Constant Bit Rate | Frame size = maximum allowed frame size  Frame rate = as calculated using the formula for peak fronthaul bandwidth \*  traffic load percentage | 20%,50%,100% |
| FH eCPRI  traffic profile 2 | As per Table 8.1-1 | Constant Bit Rate | Frame size = minimum allowed frame size Frame rate = as calculated using the formula for peak fronthaul bandwidth \* traffic load percentage | 20%,50%,100% |

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| FH eCPRI  traffic profile 3 | As per Table 8.1-1 | Constant Bit Rate | Frame size = Random or any other distribution such as custom, IMIX, Gaussian etc.  Frame rate = as calculated using the formula for peak fronthaul bandwidth \*  traffic load percentage | 20%,50%,100% |
| FH eCPRI  traffic profile 4 | As per Table 8.1-1 | Burst | Frame size = maximum allowed frame size  Gap between two consecutive bursts = 1 ms or less  Frame Count in burst is such that average frame rate ? calculated peak fronthaul bandwidth \* traffic load percentage | 20%,50%,100% |
| FH eCPRI  traffic profile 5 | As per Table 8.1-1 | Burst | Frame size = minimum allowed frame size Gap between two consecutive bursts = 1 ms or less  Frame Count in burst is such that average frame rate ? calculated peak fronthaul bandwidth \* traffic load percentage | 20%,50%,100% |

1

### Table 8.1-3

3

1. Table 8.1-4 provides traffic profiles to be used to simulate M-plane and background traffic for Fronthaul
2. network testing. It has been assumed that M-plane traffic would be bursty in nature and may occupy the rest
3. of the available bandwidth after bandwidth utilization by eCPRI traffic.

7

|  |  |  |  |
| --- | --- | --- | --- |
| Traffic Profile | Packet Encapsulation and  QoS marking | Stream Pattern | Stream Property |
| FH M-plane traffic profile 1 | As per Table 8.1-1 | Burst | Frame size = maximum allowed frame size  Gap between two consecutive bursts = 1 ms or less  Frame Count in burst is such that average frame rate ? interface rate  - calculated peak fronthaul bandwidth |
| FH M-plane traffic profile 2 | As per Table 8.1-1 | Burst | Frame size = minimum allowed frame size  Gap between two consecutive bursts = 1 ms or less  Frame Count in burst is such that average frame rate ? interface rate  - calculated peak fronthaul bandwidth |

8

### 9 Table 8.1-4

1

2

1. Figure 8.1-1 depicts a generic test set up for network under test with Traffic Generator and Analyzer tool.

4

5

![](../assets/images/313472638ebf.png)

6 Xhaul Transport

7 Network

8

9

Two or more Ethernet ports

10

connected to UNIs of

11

Traffic Generantoetrwork.

12

and Analyzer

13

14

15

### Figure 8.1-1

17

1. 8.1.1 Forwarding Verification
2. Once the required combination of traffic streams is set up in Traffic Generator and Analyzer Tool with desired
3. scale of source and destination endpoints in transport layer (for example thousands of Ethernet/IPv4/IPv6
4. endpoints), steps from table 8.1.1-1 shall be executed. Since this step is to just ensure basic forwarding
5. capability, the configured rate of the traffic streams could be low.

23

|  |  |
| --- | --- |
| **Test Steps** | **Expected result** |
| Send traffic streams with minimum and maximum frame size and verify that no frames are dropped  from the counters of Traffic Generator and Analyzer tool | No frames shall be dropped by network |

24

### 25 Table 8.1.1-1

26

* 1. 8.1.2 Latency Measurement and Verification
  2. Depending upon network type and application type, latency requirement could be different in network. For
  3. fronthaul network, maximum tolerable latency for different use cases is described in Table 3 of Xhaul
  4. Transport Requirements document. For midhaul and backhaul networks latency limits are described in Table
  5. 5 and Table 6 of the same document respectively.

6

1. Latency in packet switched network can be measured in four different ways -
2. 3. Store and Forward Latency (The time interval starting when the last bit of the frames leaves sending
3. port and ending when the first bit of the frame is seen on the receiving port or LIFO)
4. 4. Cut Through Latency (The time interval starting when the first bit of the frames leaves sending port
5. and ending when the first bit of the frame is seen on the receiving port or FIFO)
6. 5. MEF Frame Delay (The time interval starting when the first bit of the frames leaves sending port and
7. ending when the last bit of the frame is seen on the receiving port or as FILO)
8. 6. Forwarding Delay (The time interval starting when the last bit of the frames leaves sending port and
9. ending when the last bit of the frame is seen on the receiving port or as LILO)

16

1. Anyone of the four methods could be used. However, the last method is recommended as it captures the
2. delay caused by only the network under test.

19

1. Step from table 8.1.2-1 below shall be executed for measuring latency

21

|  |  |
| --- | --- |
| **Test Steps** | **Expected result** |
| While executing step from Table 8.1.1-1, measure the latency for both minimum and maximum sized frames | Measured latency of individual traffic streams shall not be more than applicable latency limit depending upon the targeted use cases and network type. |

22

### 23 Table 8.1.2-1

24

1. 8.1.3 RFC 2544 Benchmarking test for frame loss rate, latency, throughput
2. Once results from 8.1.1 and 8.1.2 are satisfactory, RFC 2544 benchmarking tests shall be executed for
3. frame loss, latency, and throughput as mentioned in table 8.1.3-1.

28

29

|  |  |
| --- | --- |
| **Test Steps** | **Expected result** |
| RFC 2544 frame loss test  Execute RFC 2544 frame loss test starting with 100% interface speed and different frame size (as an example 70, 100, 250, 300, 400, 500, 600, 700,  800, 900, 1000, 1100, 1200, 1300, 1400, 1500,  1522 bytes or up to size of jumbo frames if they are supported) for each class of traffic stream identified. Test duration for each iteration should be120 seconds minimum. Observe the maximum rate  achieved for each class of stream without any frame loss. | Maximum rate achieved for each class of traffic stream shall be equal to more than the demand of respective application. |

|  |  |
| --- | --- |
| RFC 2544 latency test  Execute RFC 2544 latency test with maximum rate achieved in previous step without any frame loss and different frame size (as an example 70, 100, 250, 300, 400, 500, 600, 700, 800, 900, 1000,  1100, 1200, 1300, 1400, 1500, 1522 bytes) for  each class of traffic stream identified. Test duration for each iteration should be120 seconds minimum. Observe the minimum, maximum, average latency, and delay variation for each class of stream without  any frame loss. | Maximum latency measured for each traffic stream shall be within tolerable latency limit of respective application. |
| RFC 2544 throughput test  While executing previous step also measure the throughput achieved without any loss | Throughput achieved without any loss and within tolerable latency limit shall meet the application demand. |

1

### 2 Table 8.1.3-1

3

## 8.2 Service Level Test Cases

1. This section covers the baseline test case scenarios to be validated for service and underlying transport
2. network setup. These scenarios utilize general basic verification mentioned in Section 8.1 and can also be
3. used in various other Network Testing use cases mentioned in section 8.4.

8

1. Although the test cases and their respective topologies shown in this section shows a single interface
2. simulating the O-RU and O-DU connecting to the CSR and HSR, it is recommended that basic functionality
3. for Fronthaul scenarios involving multiple O-RU's connected to the CSR should also be verified as part of
4. these test cases. This verification will help in ensuring real-life deployments, where a lot of time multiple O-
5. RU's (or its simulated interfaces) are connected to the same CSR are covered. Some of these "typical"
6. scenarios are covered in WG9 - Xhaul Transport Requirements specification, specifically Table 4. A sample
7. scenario with 1 and 3 O-RU's, each representing a sector, along with the bandwidth requirements for FH is
8. shown below. Please note that this is just an example and actual test and deployment scenario may vary,
9. some of which are documented in the Xhaul Transport Requirements specification

18

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| Cell Size | Sectors | Total CBW (MHz) | MIMO  Layers | ABW (MHz) | FH BW  (Gbps) |
| Small | 1 |  | - |  |  |
| Medium | 3 | 100 | 4 | 1200 | 23 |
| Large | 3 | 100 | 16 | 4800 | 90 |

### Table 8.2-1

20

1. It is also recommended to use "background traffic" alongside the Split 7-2x eCPRI traffic on the CSR and
2. HSR as well. Another interface for this background traffic will be used from test equipment to the O-RU and
3. O-DU. This ethernet interface will carry "other" traffic such as Wireline or Enterprise traffic, primarily in the
4. form on MPLS L3VPN. Each of the testcases in this section reflect the topology with additional interface for
5. background traffic.

3

1. In the following test cases a Traffic Gen (also referred to as an O-DU or O-RU simulator) is used to generate
2. and analyze test traffic towards O-RU or O-DU. It is connected directly to a CSR or an HSR port that usually
3. connects to an O-RU or an O-DU. For illustration purposes the O-RU or O-DU are left in the test setup
4. diagrams, although they are not needed for the test application.
5. 8.2.1 Baseline 7-2x eCPRI transport over Packetized Fronthaul

9

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | Ethernet.FH.01 | **Classification** | Fronthaul Services |
| **Test Title** | Baseline 7-2x eCPRI transport over Packetized Fronthaul | | |
| **Test Objective:** | 1. Verify O-RU - O-DU communication over packetized Fronthaul network using SR-MPLS and/or SRv6 based transport | | |
| **Pre-Req** | SR-MPLS and/or SRv6 baseline configuration on CSR, HSR and any other Fronthaul routers  Optional Timing and syn configuration through FH network for RAN Nodes if actual O-RU and O-DU are used instead of O-RU and O-DU simulators | | |
| **Test Topology:** | ![](../assets/images/41a3e9ee36d7.png) | | |
| **Test Configuration** | 1. Connect O-RU or O-RU simulator to the UNI of the CSR and O-DU or O-DU simulator to the HSR. 2. Although not required for this baseline test, 1 or more routers should be used in the Fronthaul test network for future test cases (SRTE, Redundancy, etc) 3. Configure L2 transport service between CSR and HSR from O-RU Uni to O-DU Uni using L2 VPN or EVPN VPWS or both 4. Connect a tester to O-RU and O-DU to send simulated UE traffic 5. If actual O-RU and O-DU are used, connect a tester to O-RU and O-DU to send simulated UE traffic. If not, send eCPRI 7-2x traffic directly from simulators. | | |
| **Procedure:** | **Detailed Test procedure:**   1. Verify O-RU and O-DU are up and communicating if actual O-RU and O-DU are used instead of simulators. 2. Start bi-directional eCPRI traffic through CSR and HSR between the RAN node, or their simulators, verify traffic is being received on either ends. 3. Simultaneously send background L3VPN traffic using the additional ethernet interface on CSR and HSR. Ensure that combined eCPRI and L3VPN traffic do not exceed CSR and HSR's uplink capacity. 4. Execute Test cases documented in Sections 8.1 and 8.4 using both SR-MPLS and/or SRv6 based transport | | |

|  |  |
| --- | --- |
| **Pass/Fail Criteria:** | 1. 100% successful 7-2x eCPRI traffic transport between O-RU and O-DU, or their simulators 2. 100% successful background L3VPN traffic transport through the packetized Fronthaul 3. Verify traffic stats on:    1. Test equipment    2. O-RU and O-DU, if possible    3. CSR and HSR interface and L2VPN/EVPN VPWS service counters 4. The test topology and setup could be used for more granular test cases and measurements (various traffic mix, Latency, etc) documented in Section 8.4 |
| **Test Output** | Capture configuration used for reference.  Capture verification commands (show commands) as appropriate. |

1

1. 8.2.2 Constraints based 7-2x eCPRI transport over Packetized Fronthaul
2. using Headend Path calculation

4

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | Ethernet.FH.02 | **Classification** | Fronthaul Services |
| **Test Title** | Constraints based 7-2x eCPRI transport over Packetized Fronthaul using Headend Path calculation | | |
| **Test Objective:** | 1. Verify O-RU - O-DU communication over packetized Fronthaul network using SR-MPLS and/or SRv6 based transport | | |
| **Pre-Req** | SR-MPLS and/or SRv6 baseline configuration on CSR, HSR and any other Fronthaul routers  Optional Timing and syn configuration through FH network for RAN Nodes, if actual O-RU and O-DU are used instead of O-RU and O-DU simulators | | |
| **Test Topology:** | Same as described in Ethernet.FH.01 | | |
| **Test Configuration** | 1. Connect O-RU or the O-RU simulator to the UNI of the CSR, and O-DU or O-DU simulator to the HSR. 2. 1 or more routers should be used in the Fronthaul test network to ensure constrains based path calculation. 3. Configure L2 transport service between CSR and HSR from O-RU Uni to O-DU Uni using L2 VPN or EVPN VPWS or both 4. Connect an additional interface from traffic generator to the CSR and the HSR to carry the background L3VPN traffic. The CSR and HSR should be pre- configured with L3VPN services to carry this background traffic. 5. If actual O-RU and O-DU are used, connect a tester to O-RU and O-DU to send simulated UE traffic. If not, send eCPRI 7-2x traffic directly from simulators. | | |
| **Procedure:** | **Detailed Test procedure:**   1. Verify O-RU and O-DU are up and communicating if actual O-RU and O-DU are used instead of simulators. | | |

|  |  |
| --- | --- |
|  | 1. Start bi-directional eCPRI traffic through CSR and HSR between the RAN nodes, or their simulators 2. Verify traffic is being received on either ends using shortest IGP path between CSR and HSR. 3. Simultaneously send background L3VPN traffic using the additional ethernet interface on CSR and HSR. Ensure that combined eCPRI and L3VPN traffic do not exceed CSR and HSR's uplink capacity. 4. Configure an SRTE policy defining a constrain based path, different than the IGP shortest path. SRTE policy should use Headend (CSR or HSR) based path calculation. 5. Constraints may include:    1. Include or exclude certain links.    2. Lowest latency path (latency may be increased on the IGP shortest path to force a longer IGP path but with lower latency    3. Use of Flex-Algo to enforce path selection. 6. Apply the policy to the L2VPN/EVPN VPWS service as well as L3VPN services using static configuration or route-coloring. 7. Execute Test cases documented in Sections 8.1 and 8.4 using both SR-MPLS and/or SRv6 based transport |
| **Pass/Fail Criteria:** | 1. Verify traffic used IGP best path before applying SRTE Policy. 2. Verify route coloring and the use of SRTE policy for EVPN VPWS and L3VPN service between HSR and CSR once SRTE is configured. 3. Verify traffic used updated path based on constraints defined by SRTE policy. 4. Verify SID path list accurately reflects the path used by EVPN VPWS and L3VPN background traffic. 5. Ensure 100% traffic send/received success. 6. The test topology and setup could be used for more granular test cases and measurements (various traffic mix, Latency, etc) documented in 8. and 8.4. |
| **Test Output** | Capture configuration used for reference.  Capture verification commands (show commands) as appropriate for:   1. Route coloring and SRTE policy use with EVPN VPWS and L3VPN. 2. SID list/SRTE Path calculation performed by headend |

1

1. 8.2.3 Constraints based 7-2x eCPRI transport over Packetized Fronthaul
2. using Controller based Path calculation.

4

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | Ethernet.FH.03 | **Classification** | Fronthaul Services |
| **Test Title** | Constraints based 7-2x eCPRI transport over Packetized Fronthaul using Controller based Path calculation | | |
| **Test Objective:** | 1. Verify O-RU - O-DU communication over packetized Fronthaul network using SR-MPLS and/or SRv6 based transport and controller-based Path Calculation | | |

|  |  |
| --- | --- |
| **Pre-Req** | SR-MPLS and/or SRv6 baseline configuration on CSR, HSR and any other Fronthaul routers  Optional Timing and syn configuration through FH network for RAN Nodes to sync if actual O-RU and O-DU are used instead of O-Ru and O-DU simulators  SR PCE controller setup and communication with CSR/HSR through PCEP as shown in topology |
| **Test Topology:** | ![](../assets/images/c453e0738f7c.png) |
| **Test Configuration** | 1. Connect O-RU or O-RU simulator to the UNI of the CSR and O-DU or O-DU simulator to the HSR. 2. 1 or more routers should be used in the Fronthaul test network to ensure constrains based path calculation. 3. Configure L2 transport service between CSR and HSR from O-RU Uni to O-DU Uni using L2 VPN or EVPN VPWS or both 4. Connect an additional interface from traffic generator to the CSR and the HSR to carry the background L3VPN traffic. The CSR and HSR should be pre- configured with L3VPN services to carry this background traffic 5. If actual O-RU and O-DU are used, connect a tester to O-RU and O-DU to send simulated UE traffic. If not, send eCPRI 7-2x traffic directly from simulators. |
| **Procedure:** | **Detailed Test procedure:**   1. Verify O-RU and O-DU are up and communicating, if actual O-RU and O-DU are used instead of simulators. 2. Start bi-directional traffic between the RAN nodes, verify traffic is being received on either ends using shortest IGP path between CSR and HSR. 3. Start bi-directional eCPRI traffic through CSR and HSR between the RAN nodes, or their simulators. 4. Verify traffic is being received on either ends using shortest IGP path between CSR and HSR. 5. Simultaneously send background L3VPN traffic using the additional ethernet interface on CSR and HSR. Ensure that combined eCPRI and L3VPN traffic do not exceed CSR and HSR's uplink capacity 6. Configure an SRTE policy defining a constrain based path, different than the IGP shortest path. 7. SRTE policy should use PCE controller-based path calculation. CSR and HSR should request this path calculation from PCE based on the constraints defined. 8. Constraints may include:    1. Include or exclude certain links.    2. Lowest latency path (latency may be increased on the IGP shortest path to force a longer IGP path but with lower latency    3. Use of Flex-Algo to enforce path selection. |

|  |  |
| --- | --- |
|  | 1. Apply the policy to the EVPN VPWS service as well as L3VPN services, using static configuration or route-coloring. 2. Execute Test cases documented in 8.1 and 8.4 using both SR-MPLS and/or SRv6 based transport |
| **Pass/Fail Criteria:** | 1. Verify traffic used IGP best path before applying SRTE Policy. 2. Verify route coloring and the use of SRTE policy for EVPN VPWS and L3VPN service between HSR and CSR once SRTE is configured. 3. Verify updated path is calculated on the PCE and sent to the HSR and CSR to use with SRTE policy. 4. Verify CSR and HSR install/use the path received from PCE for the SRTE policy 5. Verify traffic uses updated path based on constraints defined by SRTE policy and computed by PCE controller. 6. Verify SID path list accurately reflects the path used by EVPN VPWS and L3VPN traffic. 7. Ensure 100% success for traffic send and received. 8. The test topology and setup could be used for more granular test cases and measurements (various traffic mix, Latency, etc) documented in Sections 8.1 and 8.4. |
| **Test Output** | Capture configuration used for reference.  Capture verification commands (show commands) as appropriate for:   1. Route coloring and SRTE policy use with EVPN VPWS. 2. PCEP communication between CSR/HSR and PCE 3. SRTE Path calculation performed by PCE. 4. SRTE Path installation and use by CSR/HSR |

1

1. 8.2.4 L3VPN based Services Verification for Xhaul network
2. This section covers the test case scenarios to be validated for L3 Service across various domains.
3. L3VPN is a mature technology, hence this case should act only as a guidance and included for
4. completeness.

6

7

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | Ethernet.L3VPN.01 | **Classification** | L3VPN Services |
| **Test Title** | L3VPN Services verification | | |
| **Test Objective:** | 1. Verify L3VPN services for FH (M-Plane only), MH and BH over SR-MPLS and SRv6 2. Test could be repeated for constraints-based Path using SR-TE with Headend and/or controller-based path computation | | |
| **Pre-Req** | SR-MPLS and/or SRv6 baseline configuration on FH, MH and BH routers | | |

|  |  |
| --- | --- |
|  | Timing and syn configuration through FH network for RAN Nodes to sync if actual O- RU, O-DU and O-CU are used.  L3VPN services configuration as shown in the test topology |
| **Test Topology:** | Either of the two test topologies shown could be used.  First topology is for L3VPN Service across all the domains, second topology is for 1 domain if testing if cross domains is not preferred.  Topology Choice1:  ![](../assets/images/c4159fdedcac.png)  Topology Choice2:  ![](../assets/images/5c85a887f001.png) |
| **Test Configuration** | 1. As shown in the topology 2. Configure L3VPN services as desired |
| **Procedure:** | **Detailed Test procedure:**   1. Verify O-RU, O-DU and O-CU are up and communicating if actual devices are used. Else connect traffic simulator to appropriate RAN nodes. 2. Start bi-directional traffic between the RAN nodes, verify traffic is being received on all ends. 3. Execute Test cases documented in Section [0] and 8.4 using both SR-MPLS and/or SRv6 based transport. 4. Execute the test case with Constraints based path calculation for:    1. Headend based Path Computation    2. Controller based path computation.    3. Constraints may include, but not limited:       1. Include or exclude certain links.       2. Lowest latency path (latency may be increased on the IGP shortest path to force a longer IGP path but with lower latency       3. Use of Flex-Algo to enforce path selection. |
| **Pass/Fail Criteria:** | 1. 100% successful traffic transport between O-RU, O-DU and O-CU 2. Verify traffic stats on:    1. Test equipment |

|  |  |
| --- | --- |
|  | 1. O-RU, O-DU and O-CU, if used 2. TNE devices in the CSR and HSR interface and L2VPN/EVPN VPWS service counters |
| 3. The test topology and setup could be used for more granular test cases and measurements (various traffic mix, Latency, etc) documented in Section 8.4. |
| **Test Output** | Capture configuration used for reference.  Capture verification commands (show commands) as appropriate. For SRTE constraints based testcases verify:   1. Route coloring and SRTE policy use with L3VPN services. 2. L3VPN Path calculation at the headend (With headend based path calculation) 3. PCEP communication between various TNE and PCE (for controller-based Path computation) 4. SRTE Path calculation performed by PCE (for controller-based Path computation) 5. SRTE Path installation and use by TNE's (for controller-based Path computation) |

## 8.3 Network element testing

1. 8.3.1 Frame Pre-emption Testing

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | ETH.PREEMPT.01 | **Classification** | Ethernet, Frame Preemption |
| **Test Title** | Fragmentation of latency sensitive Fronthaul traffic by other background traffic by TNE supporting TSN profile B | | |
| **Test Objective:** | Verify fragmentation capability of TNE supporting TSN profile B while queuing delay for latency sensitive Fronthaul traffic is bounded by 155 bytes transmission time at egress port | | |
| **Pre-Req** | TNE supporting TSN profile B. This test needs to be done only at TNE interface speed of 1 Gbps/10 Gbps/25 Gbps. | | |
| **Test Topology:** | ![Graphical user interface, diagram  Description automatically generated](../assets/images/eb11577fe951.png)  Interface speed: 1Gbps/10Gbps/25Gbps | | |

**Test Configuration**

**Procedure:**

This section to be filled out when putting the test report (may include device and/or tester configuration)

#### Detailed Test procedure:

* 1. Enable TSN profile B and Frame Preemption with add FragSize = 0 in TNE.
  2. Configure TNE to classify ingress traffic as express traffic and preemptible traffic. The classification could be based on incoming port, VLAN in ingress traffic or VLAN priority of incoming traffic.
  3. Configure preemptible traffic in burst mode on traffic generator port 1 according to the table below.
  4. Configure express traffic in burst mode on traffic generator port 2 according to the table below.
  5. Send only express traffic stream from the traffic generator port 2 and measure latency port 3 of traffic generator. This latency consists of all four delay components such as frame transmission delay, self-queueing delay, queuing delay and store-and-forward delay. In absence of other traffic, queueing delay can be assumed zero.
  6. Start preemptible traffic stream and then express traffic stream. Observe some preemptible frames are fragmented. Measure latency of express frames.

|  |  |  |  |
| --- | --- | --- | --- |
| Express frame size (in bytes) | Express frame count in burst | Preemptible Frame Size (in bytes) | Preemptible frame count in burst |
| 64 | 1000 | 123 | 10000 |
| 64 | 1000 | 124 | 10000 |
| 64 | 1000 | 1000 | 10000 |
| 64 | 1000 | 4500 | 10000 |
| 64 | 1000 | 9000 | 10000 |
| 500 | 1000 | 4500 | 10000 |
| 500 | 1000 | 9000 | 10000 |
| 2000 | 1000 | 4500 | 10000 |
| 2000 | 1000 | 9000 | 10000 |

**Verifications needed:**

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
|  | 1. Verify that at least some preemptible frames are fragmented (except when preemptible frame size is 123 bytes) 2. Verify that difference between worst case latency of express frames and latency measured in step 5 is no more than 155 bytes transmission time. In the table below, 155 bytes transmission time on different line speed is mentioned. | | | |
|  | **Port speed** | **Transmission time of 155 bytes** |  |
| 1 Gbps | 1.24 us |
| 10 Gbps | 0.124 us |
| 25 Gbps | 0.05 us |
| **Pass/Fail Criteria:** | Test shall pass if some of preemptible traffic is fragmented and queuing delay of fronthaul traffic is bounded by 155 bytes transmission time on egress port. 155 bytes transmission time at individual line speed is mentioned in the table above. | | | |
| **Test Output** | This section is the placeholder that will capture the output/configurations after test is executed, typically done after test execution | | | |

1

2

3

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | ETH.PREEMPT.02 | **Classification** | Ethernet, Frame Preemption |
| **Test Title** | Reassembly of preemptible traffic by TNE supporting TSN profile B | | |
| **Test Objective:** | Verify reassembly capability of TNE supporting TSN profile B | | |
| **Pre-Req** | TNE supporting TSN profile B. This test needs to be done only at TNE interface speed of 1 Gbps/10 Gbps/25 Gbps. | | |
| **Test Topology:** | ![](../assets/images/737156b7df06.png)  Interface speed: 1Gbps/10Gbps/25Gbps | | |
| **Test Configuration** | This section to be filled out when putting the test report (may include device and/or tester configuration) | | |

|  |  |  |  |
| --- | --- | --- | --- |
|  |  |  |  |
|  |  |  |  |
|  |  |  |  |
|  |  |  |  |

|  |  |
| --- | --- |
| **Procedure:** | **Detailed Test procedure:**   1. Enable TSN profile B and Frame Preemption on TNE port 1 and disable frame preemption on TNE port 2 2. From a tester port send interspersed fragments from same preemptible frame and express frames of various size according to the table below. Measure latency of express frames in case.   Preemptible Fragment Fragment count Express Frame size Frame Size size (in interspersed with express interspersed with (in bytes) bytes) frame size fragments (in bytes)  256 64 4 64 to 2000  2048 128 8 64 to 2000  5000 256 8 64 to 2000   1. For each express frame size, also configure and send express traffic without any interspersed fragments or preemptible traffic. Measure latency of express traffic. 2. Observe latency experienced by reassembled frames by considering receive time of last bit of last fragment in the DUT and the last bit of reassembled frame in traffic generator port.   **Verifications needed:**   * 1. Verify that TNE reassembles all the fragments and sends out a preemptible frame successfully on egress port for each combination.   2. Verify that express frame experiences almost same latency in step 2 as in step 3 since reassembly must not affect express frame latency.   3. Recorded latency in step 4 is only for information since there is no limit imposed on latency of fragmented frames. |
| **Pass/Fail Criteria:** | Test shall pass if above verification steps are successful |
| **Test Output** | This section is the placeholder that will capture the output/configurations after test is executed, typically done after test execution |

1

2 8.3.1 Auto-negotiation

3

4

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | Ethernet.AUTONEG.01 | **Classification** | Functionality |
| **Test Title** | Auto-negotiation | | |
| **Test Objective:** | The aim of the test is to check the system behavior after fiber network link disconnection/connection | | |

|  |  |
| --- | --- |
| **Pre-Req** | Running service will be interrupted |
| **Test Topology:** | ![](../assets/images/d24844bd371c.png) |
| **Procedure:** | **Detailed Test procedure:**  **Test Procedure:**   1. Check the configuration, devices should support auto-negotiation mode. 2. Enable the auto-negotiation of the port. 3. Connect various link (port rate, duplex mode) of an Ethernet port.   **Verifications needed:**   * 1. Verify if the port automatically negotiates the force mode |
| **Test Configuration** | IEEE 802.3 |
| **Pass/Fail Criteria:** | 1. Devices must support auto-negotiation mode. 2. Port must automatically negotiate the force mode |
| **Results** | [ ] Pass [ ] Pass w/X [ ] Dropped [ ] Blocked [ ] Failed |
| **Test Output** |  |

1

## 8.4 Additional Network testing

1. ? Traffic configuration
2. o Backhaul and midhaul traffic profile.
3. o O-RAN fronthaul traffic profile
4. ? Jumbo frame
5. ? Auto-negotiation
6. ? Frame Loss
7. ? Latency TNE at minimum distance (0km)
8. ? Throughput
9. ? Latency TNE at 1, 10 and 20 km distance

12

13

1 8.4.1 Latency TNE at 1, 10 and 20 km distance

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | Ethernet.LAT.01 | **Classification** | Functionality |
| **Test Title** | Latency TNE with Xhaul link | | |
| **Test Objective:** | The aim of the test is to check the maximum latency at which the TNE receives and forwards frames with no frame loss per packet size with Xhaul link (fiber or Microwave link) | | |
| **Pre-Req** | Running service will be interrupted | | |
| **Test Topology:** | ![](../assets/images/dc09caecabad.png) | | |
| **Procedure:** | **Detailed Test procedure:**  **Test Procedure:**   1. TNE is connected to another TNE or O-RU/DU/CU & NGC/EPC by 1, 10 and 20 km using fibre loop or microwave link, all services are running as defined in Traffic and services configuration. 2. Send traffic for size of frames from 70 to 1522 bytes (70, 100, 250, 300, 400,   500, 600, 700, 800, 900, 1000, 1100, 1200, 1300, 1400, 1500, 1522) frame size.  Traffic should be bidirectional.   1. The test should be at least 120 seconds in duration.   **Verifications needed:**   * 1. Make measure and report Maximum Latency Rx and Tx rate for each size of frames in included table.   2. Make measure and report Minimum Latency Rx and Tx rate for each size of frames in included table.   3. Make measure and report Average Latency Rx and Tx rate for each size of frames in included table | | |
| **Test Configuration** | RFC2544 | | |
| **Pass/Fail Criteria:** | 1. Latency MUST be below 1ms 2. Latency SHOULD be in terms of tens of microseconds | | |
| **Results** | [ ] Pass [ ] Pass w/X [ ] Dropped [ ] Blocked [ ] Failed | | |

|  |  |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| **Test Output** |  | **frame size** | **Latency** | | | | | |
| **Upstream** | | | **Downstream** | | |
| **Average (us)** | **Minimum (us)** | **Maximum (us)** | **Average (us)** | **Minimum (us)** | **Maximum (us)** |
| 1522 |  |  |  |  |  |  |
|  | 1400 |  |  |  |  |  |  |
|  | 1300 |  |  |  |  |  |  |
|  | 1200 |  |  |  |  |  |  |
|  | 1100 |  |  |  |  |  |  |
|  | 1000 |  |  |  |  |  |  |
|  | 900 |  |  |  |  |  |  |
|  | 800 |  |  |  |  |  |  |
|  | 700 |  |  |  |  |  |  |
|  | 600 |  |  |  |  |  |  |
|  | 500 |  |  |  |  |  |  |
|  | 400 |  |  |  |  |  |  |
|  | 300 |  |  |  |  |  |  |
|  | 200 |  |  |  |  |  |  |
|  | 100 |  |  |  |  |  |  |
|  | 70 |  |  |  |  |  |  |

1

1. 8.4.2 VLAN Manipulation Tests

2

|  |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- |
| **Test ID** | Ethernet.VLAN.01 | | **Classification** | | Functional | | |
| **Test Title** | VLAN manipulation for eCPRI EVPN VPWS service | | | | | | |
| **Test Objective:** | Validate VLAN manipulation (pop 1, pop 2, push 1, push2, translate 1 to 1, 1 to 2, 2  to 1, 1 to 2) | | | | | | |
| **Pre-Req** | eCPRI EVPN VPWS service between CSR and HSR up and running ![](../assets/images/0a71efd99b1d.png) | | | | | | |
| **Test Topology:** | **O-RU** | eCPRI flow EVPN VPWS  Cell site  CSR  Untagged ![](../assets/images/143c5e6df421.png) 802.1Q  QinQ  VLAN  manipulation | Fronthaul | eCPRI | | HSR  ![](../assets/images/e41a8de2ae59.png) | Hub site  **O-DU** |
| **Procedure:** | **Detailed Test procedure:**  Please note the following test steps partially use commands that are specific to a particular vendor. They can certainly be replaced by the commands of equipment deployed by the users of this document.  Perform the following VLAN translations.   * pop 1 * pop 2 * push 1 (VLAN 1100) * push 2 (VLAN 1101.2101) * translate 1 to 1 (VLAN 1102) * translate 1 to 2 (VLAN 1103.2103) * translate 2 to 1 (VLAN 1104) * translate 2 to 2 (VLAN 1105)   This test shall be performed on the eCPRI EVPN VPWS service between CSR and HSR.  **Verifications needed:**  Confirm via traffic generator that there is connectivity (i.e. eCPRI traffic is flowing bidirectionally end-to-end across EVPN VPWS service between emulated O-RU and emulated O-DU). | | | | | | |
| **Test Configuration** | **pop 1**  kszarkowicz@AN17-re0# show interfaces ae1 unit 1600 | | | | | | |

|  |  |
| --- | --- |
|  | W50: Thu 2014-12-11T16:29:48 WET (UTC+0000)  encapsulation vlan-ccc;  vlan-tags outer 0x8100:1681 inner 0x8100:1600; input-vlan-map pop;  output-vlan-map { push;  tag-protocol-id 0x8100; inner-tag-protocol-id 0x8100;  }  **pop 2**  kszarkowicz@AN17-re0# show interfaces ae1.1603 W50: Thu 2014-12-11T16:22:36 WET (UTC+0000)  encapsulation vlan-ccc;  vlan-tags outer 0x8100:1681 inner 0x8100:1603; input-vlan-map pop-pop;  output-vlan-map { push-push;  tag-protocol-id 0x8100; inner-tag-protocol-id 0x8100;  } |
| **Pass/Fail Criteria:** | Traffic flows via EVPN VPWS service with all VLAN manipulation combinations. |
| **Results** | [ X ] Pass [ ] Pass w/X [ ] Dropped [ ] Blocked [ ] Failed |
| **Test Output** | ![](../assets/images/0f0f9af59829.jpg) |
|  |  |
|  |  |

1

1. 8.4.3 QoS testing

3

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | Ethernet.QOS.01 | **Classification** | QoS |
| **Test Title** | End to end latency, loss of classified traffic | | |
| **Test Objective:** | Verify end to end latency, loss of classified traffic | | |
| **Pre-Req** | Each TNE supporting QoS in Xhaul Transport Network | | |

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **Test Topology:** | ![](../assets/images/829148cd566c.png) | | | | |
| **Test Configuration** | This section to be filled out when putting the test report (may include device and/or tester configuration) | | | | |
| **Procedure:** | **Detailed Test procedure:**   1. Enable QoS in each TNE (core and edge devices) with operator specific scheme and connect traffic generator ports at the edge of the transport network. 2. Configure continuous traffic flows in traffic generator which would be mapped to strict priority queue(s) with a rate equal to the configured rate in policing/shaping at edge TNE(s). In case of Ethernet traffic, VLAN PCP bits/ VLAN ID/ingress port ID could be used for traffic classification in edge TNE. In case of IPv4 traffic. DSCP bits/ingress port could be used for traffic classification in edge TNE. Rate and size of these flows would be operator's choice based upon deployment scenario. 3. Configure continuous traffic flows in traffic generator which would be mapped to WRR/WFQ/MDRR queue(s) with rate more than configured rate of each of these queue(s) so that traffic congestion occurs in core. In case of Ethernet traffic, VLAN PCP bits/ VLAN ID/ingress port ID could be used for traffic classification in edge TNE. In case of IPv4 traffic. DSCP bits/ingress port could be used for traffic classification in edge TNE. Rate and size of these flows would be operator's choice based upon deployment scenario. 4. Create latency bins in traffic generator rx port for each traffic flows based on expected latency range and traffic marking such as PCP bits, IPv4 DSCP bits etc. Latency ranges are decided by operator based upon deployment scenario. For example, if latency class for fronthaul traffic is "High25", then a latency bin must be created with 0-25 us range. Other possible two bins could be 25 - 500 us and 500-max us for traffic flows other than latency sensitive ones. Table 3 of Xhaul Transport Requirement Doc is repeated here that helps in identifying latency bins in case of fronthaul traffic. | | | | |
|  | Latency Class | Max. One-way Frame Delay Performance | Use case |  |

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
|  |  | High25 | 25 us | Ultra-low latency performance |  |
|  | High75 | 75 us | For full NR performance with fiber lengths in 10km range |
|  | High100 | 100 us | For standard NR performance with fiber lengths in 10km range |
|  | High200 | 200 us | For installations with fiber lengths in 30km range |
|  | High500 | 500 us | Large latency installations > 30 km |
|  | Medium | User Plane (slow) & C&M  Plane (fast) | 1 ms |
|  | Low | C&M Plane | 100 ms |
| 1. Send all the traffic flows simultaneously. Observe packets/frames received in each latency bins. Also observe loss in each traffic flows   **Verifications needed:**   * 1. Latency sensitive traffics which are mapped to strict priority queue(s) must not suffer any frame loss.   2. All Latency sensitive traffic frames which are mapped to strict priority queue(s) must be received in respective configured latency bins in traffic generator.   3. Traffic frames mapped to WRR/WFQ/MDRR queue(s) must maintain a long term receive rate equal to the configured rate in those queues. Due to congestion excess traffic would be dropped and loss is reported in traffic generator for these traffic flows.   4. Latency reported for traffic flows mapped to WRR/WFQ/MDRR queues in general must be higher than that of traffic flows mapped to strict priority queue(s) | | | | |
| **Pass/Fail Criteria:** | Test shall pass if all verifications steps pass | | | | |
| **Test Output** | This section is the placeholder that will capture the output/configurations after test is executed, typically done after test execution | | | | |

1

1. 8.4.4 Jitter Testing
2. This test case is FFS as it needs inputs from WG4 CUS-Specification team on the maximum jitter (packet
3. delay variation) acceptable at an O-RU Fronthaul UNI. Future versions of this document may update this
4. section as inputs from WG4 become available,

|  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- |
| **Test ID** | Ethernet.JIT.01 | | **Classification** | | Functionality | |
| **Test Title** | Delay variation | | | | | |
| **Test Objective:** | The aim of the test is to check the delay variation at which the TNE receives frames with no frame loss per packet size | | | | | |
| **Pre-Req** | N/A | | | | | |
| **Test Topology:** | ![Diagram  Description automatically generated](../assets/images/479d026c2817.png) | | | | | |
| **Procedure:** | **Detailed Test procedure:**  **Test Procedure:**   1. TNE is connected to another TNE. Two services are defined, one representing the Xhaul traffic, the other one representing background traffic. 2. Xhaul and background traffic are marked with different QoS values, being the Xhaul traffic of higher priority vs the background traffic. 3. Send traffic for size of frames from 70 to 1522 bytes (70, 100, 250, 300, 400,   500, 600, 700, 800, 900, 1000, 1100, 1200, 1300, 1400, 1500, 1522) frame size.  Traffic should be bidirectional.   1. The test should be at least 120 seconds in duration.   **Verifications needed:**   * 1. Make measure and report Maximum Jitter Rx and Tx rate for each size of frames in included table | | | | | |
| **Test Configuration** | RFC3393 | | | | | |
| **Pass/Fail Criteria:** | 1- Jitter SHOULD be below TBD microseconds | | | | | |
| **Results** | [ X ] Pass [ ] Pass w/X [ ] Dropped [ ] Blocked [ ] Failed | | | | | |
| **Test Output** |  | | | | | |
|  | Frame size | | Observed Jitter (us) | |  |
| 1522 | |  | |

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
|  |  | 1400 |  |  |
| 1300 |  |
| 1200 |  |
| 1100 |  |
| 1000 |  |
| 900 |  |
| 800 |  |
| 700 |  |
| 600 |  |
| 500 |  |
| 400 |  |
| 300 |  |
| 200 |  |
| 100 |  |
| 70 |  |

1

2

1. 8.4.5 Test for frame fragmentation

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | Ethernet.FRAG.01 | **Classification** | Functionality |
| **Test Title** | Impact of fragmentation | | |
| **Test Objective:** | The aim of the test is to check the impacts of frame fragmentation in throughput, latency and delay variation with no frame loss per packet size (frame fragmentation occurs in the link between TNEs) | | |
| **Pre-Req** | N/A | | |

|  |  |
| --- | --- |
| **Test Topology:** | ![Diagram  Description automatically generated](../assets/images/479d026c2817.png) |
| **Procedure:** | **Detailed Test procedure:**  **Test Procedure:**   1. TNE is connected to another TNE, and the MTU among them is lowr than the MTU allow at client side (i.e., O-RU / O-DU / O-CU). 2. Two frame sizes are established, one for client side and another one between TNEs. 3. Send traffic for size higher MTU at sending client port and verify permitted MTU at receiver port. 4. The test should be at least 120 seconds in duration.   **Verifications needed:**   * 1. Make measure and report throughput, latency and jitter with and without fragmentation |
| **Test Configuration** |  |
| **Pass/Fail Criteria:** | 1- |
| **Results** | [ ] Pass [ ] Pass w/X [ ] Dropped [ ] Blocked [ ] Failed |
| **Test Output** |  |

1

2

1 8.4.6 Test for encapsulations and protocols

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | Ethernet.ENC.01 | **Classification** | Functionality |
| **Test Title** | Impacts of encapsulations and protocols used | | |
| **Test Objective:** | The aim of the test is to check the impacts due to the usage of different encapsulations and protocols for the establishing the communication between O-RU, O-DU and O-CU.  This test applies as pre-condition to the tests on latency, jitter and throughput. | | |
| **Pre-Req** | N/A | | |
| **Test Topology:** | ![Diagram  Description automatically generated](../assets/images/479d026c2817.png) | | |
| **Procedure:** | **Detailed Test procedure:**  **Test Procedure:**   1. Define a proper technology selection for both O-RU <-> O-DU and O-DU <-> O- CU communication. 2. Perform the tests for latency, jitter and throughput, collecting the information indicated for their respective tests. 3. The test should be at least 15 min in duration.   **Verifications needed:**   * 1. Validate the configured solution.   2. Make measure and report traffic passing rate for each size of frames in included table | | |
| **Test Configuration** | Potential protocols and encapsulations are listed here below.   * Ethernet traffic (e.g., eCPRI between O-RU and O-DU) * (UDP/) IP traffic (e.g., eCPRI between O-RU and O-DU) * TSN capabilities between TNEs * FlexE connectivity between TNEs * SR-MPLS encapsulation between TNEs * SRv6 encapsulation between TNEs * L2 VPN between TNEs (e.g., for midhaul connection) * L3 VPN between TNEs (e.g., for midhaul connection) | | |

|  |  |
| --- | --- |
|  | * EVPN between TNEs (e.g., for eCPRI connection) |
| **Pass/Fail Criteria:** | Compare the results obtained for latency, jitter and throughput for the different selected combinations. Particular criteria defined for latency, jitter and throughput apply. |
| **Results** | [ ] Pass [ ] Pass w/X [ ] Dropped [ ] Blocked [ ] Failed |
| **Test Output** | The output of the tests will be the set of tables defined for latency, jitter and throughput, for each of the selected combinations of protocols and encapsulations. |

1

2

1. 8.4.7 Addition of background traffic
2. To check if specific tests is needed or simply to amend existing ones.

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | Ethernet.BAC.01 | **Classification** | Functionality |
| **Test Title** | System behavior with the presence of background traffic | | |
| **Test Objective:** | The aim of the test is to check the impacts due to the introduction of background traffic in the system. This background traffic can represent other kinds of traffic present on the TNEs (e.g., LTE traffic, enterprise traffic, fixed service traffic, etc).  This test applies as complements the tests on latency, jitter and throughput. | | |
| **Pre-Req** | Identify the proportion and the marking of the background traffic under consideration. Each network can have different scopes, thus influencing on the kind of background traffic under consideration. | | |
| **Test Topology:** | ![Diagram  Description automatically generated](../assets/images/479d026c2817.png) | | |
| **Procedure:** | **Detailed Test procedure:**  **Test Procedure:**   1. Define the kind of background traffic under consideration (e.g., LTE, enterprise, fixed, etc). Identify peak/average traffic volumes as well as applicable marking. 2. Perform the tests for latency, jitter and throughput adding this background traffic collecting the information indicated for their respective tests. 3. The test should be at least 15 min in duration.   Alternative test - to fill the link between TNEs.  **Verifications needed:**   * 1. Validate the kind of background traffic introduced in the test.   2. Make measure and report traffic passing rate for each size of frames in included table, comparing with the scenario where no background traffic is considered. | | |
| **Test Configuration** |  | | |
| **Pass/Fail Criteria:** | Compare the results obtained for latency, jitter and throughput for the scenarios with and without background traffic. | | |
| **Results** | [ ] Pass [ ] Pass w/X [ ] Dropped [ ] Blocked [ ] Failed | | |

|  |  |
| --- | --- |
| **Test Output** | The output of the tests will be the set of tables defined for latency, jitter and throughput, not repeated here for simplicity. |

1

2

1. 8.4.8 Support of native IPv6 connectivity

2

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | Ethernet.IPv6.01 | **Classification** | Functionality |
| **Test Title** | Native support of IPv6 connectivity | | |
| **Test Objective:** | The aim of the test is to check the impacts due to the usage of IPv6 in O-RU, O-DU and O-CU. IPv6 support is optional in ORAN-WG4.CUS.  This is a functional test but can also have performance implications to be validated by collecting statistics of latency, jitter and throughput. | | |
| **Pre-Req** | Support of native IPv6 in TNEs | | |
| **Test Topology:** | ![Diagram  Description automatically generated](../assets/images/479d026c2817.png) | | |
| **Procedure:** | **Detailed Test procedure:**  **Test Procedure:**   1. Define a native IPv6 connectivity in TNEs. 2. Perform connectivity between O-RU, O-DU and O-CU natively in IPv6 (if eCPRI is directly encapsulated in Eth, then this would apply solely to midhaul traffic). 3. The test should be at least 120 secs in duration.   **Verifications needed:**   * 1. Validate IPv6 connectivity   2. Make measure and report traffic passing rate for each size of frames in included table, comparing with the scenario of native IPv4 connectivity. | | |
| **Test Configuration** |  | | |
| **Pass/Fail Criteria:** | Compare the results obtained for latency, jitter and throughput for the scenarios with and without background traffic. | | |
| **Results** | [ ] Pass [ ] Pass w/X [ ] Dropped [ ] Blocked [ ] Failed | | |
| **Test Output** | The output of the tests will be the set of tables defined for latency, jitter and throughput, not repeated here for simplicity. | | |

3

4

1. To discuss if tunneling or translation methods should be detailed as separated tests or included here

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | Ethernet.DUAL.01 | **Classification** | Functionality |
| **Test Title** | Support of IPv6 connectivity in an IPv4 network | | |
| **Test Objective:** | The aim of the test is to check the impacts due to the usage of IPv6 in O-RU, O-DU and O-CU when the underlying network is IPv4-based. IPv6 support is optional in ORAN-WG4.CUS.  This is a functional test but can also have performance implications to be validates by collecting statistics of latency, jitter and throughput. | | |
| **Pre-Req** | Proper dual stack support (IPv4 and IPv6) by the TNEs | | |
| **Test Topology:** | ![Diagram  Description automatically generated](../assets/images/479d026c2817.png) | | |
| **Procedure:** | **Detailed Test procedure:**  **Test Procedure:**   1. Define a native IPv4 connectivity in TNEs. 2. Perform connectivity between O-RU, O-DU and O-CU natively in IPv6 (if eCPRI is directly encapsulated in Eth, then this would apply solely to midhaul traffic). 3. The test should be at least 120 secs in duration.   **Verifications needed:**   * 1. Validate IPv6 connectivity with dual stack capabilities in the TNEs.   2. Make measure and report traffic passing rate for each size of frames in included table, comparing with the scenario of native IPv4 connectivity. | | |
| **Test Configuration** | To be defined the mechanisms for IPv6 to IPv4 consideration | | |
| **Pass/Fail Criteria:** | Compare the results obtained for latency, jitter and throughput for the scenarios with and without background traffic. | | |
| **Results** | [ X ] Pass [ ] Pass w/X [ ] Dropped [ ] Blocked [ ] Failed | | |
| **Test Output** | The output of the tests will be the set of tables defined for latency, jitter and throughput, not repeated here for simplicity. | | |

3

1. To discuss if tunneling or translation methods should be detailed as separated tests or included here.

3

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | Ethernet.DUAL.02 | **Classification** | Functionality |
| **Test Title** | Support of IPv4 connectivity in an IPv6 network | | |
| **Test Objective:** | The aim of the test is to check the impacts due to the usage of IPv4 in O-RU, O-DU and O-CU when the underlying network is IPv6-based.  This is a functional test but can have also performance implications to be validates by collecting statistics of latency, jitter and throughput. | | |
| **Pre-Req** | Proper dual stack support (IPv4 and IPv6) by the TNEs | | |
| **Test Topology:** | ![Diagram  Description automatically generated](../assets/images/479d026c2817.png) | | |
| **Procedure:** | **Detailed Test procedure:**  **Test Procedure:**   1. Define a native IPv4 connectivity in TNEs. 2. Perform connectivity between O-RU, O-DU and O-CU natively in IPv6 (if eCPRI is directly encapsulated in Eth, then this would apply solely to midhaul traffic). 3. The test should be at least 120 secs in duration.   **Verifications needed:**   * 1. Validate IPv6 connectivity with dual stack capabilities in the TNEs.   2. Make measure and report traffic passing rate for each size of frames in included table, comparing with the scenario of native IPv4 connectivity. | | |
| **Test Configuration** | To be defined the mechanisms for IPv6 to IPv4 consideration | | |
| **Pass/Fail Criteria:** | Compare the results obtained for latency, jitter and throughput for the scenarios with and without background traffic. | | |
| **Results** | [ ] Pass [ ] Pass w/X [ ] Dropped [ ] Blocked [ ] Failed | | |
| **Test Output** | The output of the tests will be the set of tables defined for latency, jitter and throughput, not repeated here for simplicity. | | |

1. 8.4.11Test for in-band / out-band management

2

3

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | Ethernet.IOUT.01 | **Classification** | Functionality |
| **Test Title** | Validation of in-band /out-band management of TNEs | | |
| **Test Objective:** | The aim of the test is to validate the in-band management of the device. TNEs addressing fronthaul / midhaul connectivity will usually lack of dedicated out-band management network. | | |
| **Pre-Req** | Configure in-band management plane connection. According to O-RAN.WG4.CUS specification, the management plane Cos is 2, and the DSCP code is AF2x.  Introduce background traffic of higher and lower priority and validate management actions on the device. | | |
| **Test Topology:** | ![Diagram  Description automatically generated](../assets/images/479d026c2817.png) | | |
| **Procedure:** | **Detailed Test procedure:**  **Test Procedure:**   1. Defined a proper reachability of management IP address in-band, in such a way that the management address of one TNE can be accessed through the other TNE. 2. Configure background traffic (with higher and lower priorities) to compete for the network resources. Proper dimensioning can follow the scenarios described in O-RAN-WG9.Transport requirement document. 3. The test should be at least 5 min in duration.   **Verifications needed:**   * 1. Validate the possibility of managing the device in-band.   2. Compare the responses to configuration actions between out-band and in-band management of the device. | | |
| **Test Configuration** |  | | |
| **Pass/Fail Criteria:** | Compare the results obtained with out-band management. | | |
| **Results** | [ ] Pass [ ] Pass w/X [ ] Dropped [ ] Blocked [ ] Failed | | |

|  |  |
| --- | --- |
| **Test Output** | The output of the tests will be the set of tables defined for latency, jitter and throughput, for each of the selected combinations of protocols and encapsulations. |

1

2

1. 8.4.12Transparency of eCPRI Ethertype

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | Ethernet.ETHTYPE.01 | **Classification** | Functionality |
| **Test Title** | Transparency of eCPRI ethertype | | |
| **Test Objective:** | The aim of the test is to validate that eCPRI Ethertype is passed transparently and frames with such Ethertype are not discarded | | |
| **Pre-Req** |  | | |
| **Test Topology:** | ![Graphical user interface, application  Description automatically generated](../assets/images/c39042b23400.png) | | |
| **Procedure:** | **Detailed Test procedure:**  To check if different encapsulations can have any impact.  To check if the support of IEEE 1914 ethertype is also required.  **Test Procedure:**   1. The tester will inject eCPRI frames with the corresponding eCPRI Ethertype. 2. The test should be at least 120 secs in duration.   **Verifications needed:**   * 1. Validate that eCPRI Ethertype is transparently supported | | |
| **Test Configuration** |  | | |
| **Pass/Fail Criteria:** | No loss frame | | |
| **Results** | [ ] Pass [ ] Pass w/X [ ] Dropped [ ] Blocked [ ] Failed | | |
| **Test Output** | No losses. | | |

4

1. 8.4.13Recovery times

3

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | Ethernet.REC.01 | **Classification** | Functionality |
| **Test Title** | Service restoration | | |
| **Test Objective:** | The aim of the test is to measure the time for service restoration in the event of link failure | | |
| **Pre-Req** | Configure to links between TNEs.  Configure the proper encapsulations / protocol support for the service. | | |
| **Test Topology:** |  | | |
| **Procedure:** | **Detailed Test procedure:**  **Test Procedure:**   1. Configure the service emulating fronthaul / midhaul / backhaul connection. 2. Inject traffic. 3. Shut down the link from where the traffic is passing. 4. Measure the frame losses and the time to recover.   **Verifications needed:**   * 1. Validate the time for service recovery | | |
| **Test Configuration** | ![Graphical user interface, application  Description automatically generated](../assets/images/31e052a767db.png) | | |
| **Pass/Fail Criteria:** | Recovery time | | |
| **Results** | [ ] Pass [ ] Pass w/X [ ] Dropped [ ] Blocked [ ] Failed | | |
| **Test Output** | Recovery time | | |

4

5

2

1. 8.4.14Test of Buffer Sizing

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | Ethernet.BUF.01 | **Classification** | Functionality |
| **Test Title** | Buffer Sizing | | |
| **Test Objective:** | This test is For Further Study.  It is meant for midhaul and backhaul cases.  The aim of the test is to check the buffering capacity at which the TNE receives and forwards the traffic which the amount of the ingress traffic is greater than the throughput of the egress interface with no frame loss with Xhaul (Midhaul/ Backhaul) link. | | |
| **Pre-Req** | N/A | | |
| **Test Topology:** | ![Diagram  Description automatically generated](../assets/images/db772ce32e58.jpg) | | |
| **Test Configuration** | 1. There could be one TNE or two or more TNEs. Service is configured in one TNE   /among TNEs to make traffic be switched.   1. The buffer size parameter of shaping function is not defined but no frame loss is desired. | | |
| **Pass/Fail Criteria:** |  | | |
| **Results** | [ X ] Pass [ ] Pass w/X [ ] Dropped [ ] Blocked [ ] Failed | | |

4

5

## 8.5 Fronthaul Services Redundancy and High Availability

1. This section covers the Fronthaul redundancy scenarios where the CSR (on the O-RU side) is connected to
2. 2 (or more) HSR's that provide connectivity to the O-DU. EVPN VPWS is used between the two sites in a
3. redundant configuration as defined in the O-RAN Xhaul Packet switched Network Architecture. All test cases
4. in this section correspond to section 13 of the Packet Switched Specification.

6

1. In the following test cases a Traffic Gen (also referred to as an O-DU or O-RU simulator) is used to generate
2. and analyze test traffic towards O-RU or O-DU. It is connected directly to a CSR or an HSR port that usually
3. connects to an O-RU or an O-DU. For illustration purposes the O-RU or O-DU are left in the test setup
4. diagrams, although they are not needed for the test application.
5. 8.5.1 Multi-Home Active/Active Fronthaul Redundancy

12

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | Ethernet.HA.01 | **Classification** | Redundancy & High Availability |
| **Test Title** | Active-active Fronthaul service redundancy | | |
| **Test Objective:** | Verify O-RU - O-DU redundancy using Active-Active EVPN VPWS services | | |
| **Pre-Req** | SR-MPLS and/or SRv6 baseline configuration on CSR, HSR and any other Fronthaul routers  Timing and syn configuration through FH network for RAN Nodes to sync | | |
| **Test Topology:** | ![](../assets/images/b572d4dbe8f4.png) | | |
| **Test Configuration** | 1. Connect O-RU to the UNI of the CSR and dual-home O-DU to multiple HSRs. 2. Configure EVPN VPWS Active -Active between CSR and HSR as shown in test topology. 3. O-DU should support terminating both port from HSRs on a single logical BD | | |
| **Procedure:** | **Detailed Test procedure:**   1. Verify O-RU and O-DU are up and communicating. 2. Start bi-directional traffic between the RAN nodes, verify traffic is being received on either ends. 3. Fail 1 of the two Active-Active EVPN VPWS services by either:    1. Powering off HSR-1, or    2. Disconnect the UNI from HSR-1 to O-DU 4. Verify all traffic is converged on the other EVPN VPWS circuit. 5. Wait for traffic to regain pre-failure rates, then recover the failure, by powering on the HSR-1 or reconnecting UNI on HSR-1. | | |

|  |  |
| --- | --- |
|  | 6. Wait for EVPN services to recover to pre-failure state with Active-Active configuration |
| **Pass/Fail Criteria:** | **During Failure:**   1. No application layer connectivity loss between O-RU and O-DU (O-RU should not reboot) 2. Document Failure convergence time. Ensure the convergence time is within Operator defined upper limits. 3. All traffic converges on the Active VPWS link with 0 Packet loss post convergence.   **During Recovery**   1. No application layer connectivity loss between O-RU and O-DU (O-RU should not reboot) 2. Document recovery convergence time. Ensure the convergence time is within Operator defined upper limits. 3. All traffic reverts to using Active-Active VPWS configuration with 0 Packet loss post convergence. |
| **Test Output** | Capture syslogs and any error messages received during failure and recovery.  Document failure and recovery convergence times |

1

2

3 8.5.2 Multi-Home Single-Active Bundle Fronthaul Redundancy

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | Ethernet.HA.02 | **Classification** | Redundancy & High Availability |
| **Test Title** | Active-active Fronthaul service redundancy | | |
| **Test Objective:** | 1. Verify O-RU - O-DU redundancy using Single-Active EVPN VPWS services | | |
| **Pre-Req** | SR-MPLS and/or SRv6 baseline configuration on CSR, HSR and any other Fronthaul routers  Timing and syn configuration through FH network for RAN Nodes to sync | | |
| **Test Topology:** | ![](../assets/images/14fd476674b7.png) | | |
| **Test Configuration** | 1. Connect O-RU to the UNI of the CSR and dual-home O-DU to multiple HSRs. 2. Configure EVPN VPWS Single-Active between CSR and HSR as shown in test topology. 3. O-DU should support terminating both port from HSRs on a single logical BD | | |
| **Procedure:** | **Detailed Test procedure:**   1. Verify O-RU and O-DU are up and communicating. | | |

|  |  |
| --- | --- |
|  | 1. Start bi-directional traffic between the RAN nodes, verify traffic is being received on either ends using active EVPN VPWS only, in this case through HSR1. 2. Fail the Active EVPN VPWS services by either:    1. Powering off HSR-1, or    2. Disconnect the UNI from HSR-1 to O-DU 3. Verify all traffic is converged on the other EVPN VPWS circuit through HSR2. 4. After full traffic convergence, recover the failure, by powering on the HSR-1 or reconnecting UNI on HSR-1. 5. Wait for EVPN services to recover to pre-failure state with Single-Active configuration |
| **Pass/Fail Criteria:** | **During Failure:**   1. No application layer connectivity loss between O-RU and O-DU (O-RU should not reboot) 2. Document Failure convergence time. Ensure the convergence time is within Operator defined upper limits. 3. All traffic converges on the backup VPWS link, that now becomes active, with 0 Packet loss post convergence.   **During Recovery**   1. No application layer connectivity loss between O-RU and O-DU (O-RU should not reboot) 2. Document recovery convergence time, if any. Ensure the convergence time is within Operator defined upper limits. 3. All traffic revert to pre-failure state, Single-Active VPWS configuration with 0 Packet loss post convergence. |
| **Test Output** | Capture syslogs and any error messages received during failure and recover.  Document failure and recovery convergence times |

1

1. 8.5.3 Multi-Home Single-Active Standalone Fronthaul Redundancy

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | Ethernet.HA.03 | **Classification** | Redundancy & High Availability |
| **Test Title** | Active-active Fronthaul service redundancy | | |
| **Test Objective:** | 2. Verify O-RU - O-DU redundancy using Single-Active EVPN VPWS services | | |
| **Pre-Req** | SR-MPLS and/or SRv6 baseline configuration on CSR, HSR and any other Fronthaul routers  Timing and syn configuration through FH network for RAN Nodes to sync | | |
| **Test Topology:** | ![](../assets/images/d93d5281d5c8.png) | | |

|  |  |
| --- | --- |
| **Test Configuration** | 1. Connect O-RU to the UNI of the CSR and dual-home O-DU to multiple HSRs. 2. Configure EVPN VPWS Single-Active between CSR and HSR as shown in test topology. 3. O-DU should support terminating both port from HSRs on a single logical BD. 4. UNI's from HSR pair are not part of the port channel in this scenario |
| **Procedure:** | **Detailed Test procedure:**   1. Verify O-RU and O-DU are up and communicating. 2. Start bi-directional traffic between the RAN nodes, verify traffic is being received on either ends using active EVPN VPWS only, in this case through HSR1. 3. Fail the Active EVPN VPWS services by either:    1. Powering off HSR-1, or    2. Disconnect the UNI from HSR-1 to O-DU 4. Verify all traffic is converged on the other EVPN VPWS circuit through HSR2. 5. After full traffic convergence, recover the failure, by powering on the HSR-1 or reconnecting UNI on HSR-1. 6. Wait for EVPN services to recover to pre-failure state with Single-Active configuration |
| **Pass/Fail Criteria:** | **During Failure:**   1. No application layer connectivity loss between O-RU and O-DU (O-RU should not reboot) 2. Document Failure convergence time. Ensure the convergence time is within Operator defined upper limits. 3. All traffic converges on the backup VPWS link, that now becomes active, with 0 Packet loss post convergence.   **During Recovery**   1. No application layer connectivity loss between O-RU and O-DU (O-RU should not reboot) 2. Document recovery convergence time, if any. Ensure the convergence time is within Operator defined upper limits. 3. All traffic revert to pre-failure state, Single-Active VPWS configuration with 0 Packet loss post convergence. |
| **Test Output** | Capture syslogs and any error messages received during failure and recover.  Document failure and recovery convergence times |

1

2

1. 8.5.4 Multi-Home Single-Active Standalone, Fronthaul Redundancy, no BD
2. on O-DU

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | Ethernet.HA.04 | **Classification** | Redundancy & High Availability |
| **Test Title** | Active-active Fronthaul service redundancy | | |
| **Test Objective:** | 1. Verify O-RU - O-DU redundancy using Single-Active EVPN VPWS services | | |

|  |  |
| --- | --- |
| **Pre-Req** | SR-MPLS and/or SRv6 baseline configuration on CSR, HSR and any other Fronthaul routers  Timing and syn configuration through FH network for RAN Nodes to sync |
| **Test Topology:** | ![](../assets/images/010b8416e977.png) |
| **Test Configuration** | 1. Connect O-RU to the UNI of the CSR and dual-home O-DU to multiple HSRs. 2. Configure EVPN VPWS Single-Active between CSR and HSR as shown in test topology. 3. In this case, O-DU terminates both port from HSRs on separate interface each with its own MAC address, instead of a single MAC address using logical BD. 4. UNI's from HSR pair are not part of the port channel in this scenario |
| **Procedure:** | **Detailed Test procedure:**   1. Verify O-RU and O-DU are up and communicating. 2. Start bi-directional traffic between the RAN nodes, verify traffic is being received on either end using active EVPN VPWS only, in this case through HSR1. 3. Fail the Active EVPN VPWS service by either:    1. Powering off HSR-1, or    2. Disconnect the UNI from HSR-1 to O-DU 4. Upon detection of failure, the orchestration system should change the O-RU configuration to reflect the new MAC address to allow O-RU to communicate with the DU using new MAC. 5. Verify all traffic is converged on the other EVPN VPWS circuit through HSR2. 6. After full traffic convergence, recover the failure, by powering on the HSR-1 or reconnecting UNI on HSR-1. 7. Wait for EVPN services to recover to pre-failure state with Single-Active configuration |
| **Pass/Fail Criteria:** | **During Failure:**   1. Successful O-RU re-configuration. O-RU behavior on reconfiguration will depend upon RU vendor implementation. 2. Document Failure convergence time. Evaluate whether the convergence time is in-line with Operator expectations. The convergence will be higher as O-RU reconfiguration will have to take place. 3. All traffic converges on the backup VPWS link, that now becomes active, with 0 Packet loss post convergence.   **During Recovery**   1. No application layer connectivity loss between O-RU and O-DU (O-RU should not reboot) 2. Document recovery convergence time, if any |

|  |  |
| --- | --- |
|  | 6. All traffic reverts to pre-failure state, Single-Active VPWS configuration with 0 Packet loss post convergence. |
| **Test Output** | Capture syslogs and any error messages received during failure and recover.  Document failure and recovery convergence times |

1

2

3

4

1. 8.5.5 Transport network Redundancy

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | Ethernet.HA.05 | **Classification** | Redundancy & High Availability |
| **Test Title** | Transport network path redundancy | | |
| **Test Objective:** | 1. Verify traffic convergence following a link/node failure in FH Network comprising redundant paths(s) | | |
| **Pre-Req** | SR-MPLS and/or SRv6 baseline configuration on CSR, HSR and any other Fronthaul routers  Optional Timing and sync configuration through FH network for RAN Nodes if actual O-RU and O-DU are used instead of O-RU and O-DU simulators  Configure Topology Independent Loop Free Alternate (TI-LFA) in the FH network | | |
| **Test Topology:** | ![](../assets/images/ce09367a2c5f.png) | | |
| **Test Configuration** | 1. Connect O-RU or O-RU simulator to the UNI of the CSR and O-DU or O-DU simulator to the HSR. 2. Configure L2VPN or EVPN VPWS Service between CSR and HSR as shown in test topology. 3. Configure L3VPN services between CSR and HSR for M-Plane 4. Verify TI-LFA backup path is programmed in the forwarding table for all services | | |
| **Procedure:** | 1. Verify O-RU and O-DU are up and communicating. If actual O-RU and O-DU are used 2. Start bi-directional traffic between the RAN nodes for both L2VPN/EVPN and L3VPN services, verify traffic is being received on either end . 3. Fail the IGP best path link from CSR to HSR, through which the traffic is being forwarded. Types of failure may include, but not limited:    1. Physical link failure on the CSR or HSR' directly connected interface,    2. A link failure on intermediary nodes along the traffic path, or    3. A node failure on intermediary node along the traffic path | | |

|  |  |
| --- | --- |
|  | 1. Verify Upon detection of failure, traffic convergences over the backup path for all services. 2. After full traffic convergence, gather data and recover the failure, by reconnecting the failed link. 3. Ensure all services recover to pre-failure state with Single-Active configuration |
| **Pass/Fail Criteria:** | **During Failure:**   1. Document the failure impact on O-RU and O-DU, including whether there is any application layer connectivity loss between O-RU and O-DU or if O-RU reboots during the process. 2. Successful traffic convergence over backup path for all services. 3. Document Failure convergence time. Evaluate whether the convergence time is in-line with Operator expectations. 4. No packet loss for any service once all traffic is converged.   **During Recovery**   1. Document the recovery impact on O-RU and O-DU, including whether there is any application layer connectivity loss between O-RU and O-DU or if O-RU reboots during the process. 2. Document recovery convergence time if any 3. All traffic reverts to pre-failure state with 0 Packet loss post convergence. |
| **Test Output** | Capture syslogs and any error messages received during failure and recover.  Document failure and recovery convergence times |

1

2

3

4

5

## 8.6 Legacy Fronthaul and C-RAN Coexistence Verification

1. This section covers the scenarios where an operator may have both 4G and 5G Fronthaul networks using C-
2. RAN. In those cases operator may need to have traditional CPRI and 7-2x traffic coexisting on the same
3. Packetized fronthaul requiring the CPRI traffic converted to packet using IEEE 1914-3 ROE specification as
4. described in O-RAN Xhaul Packet Switched network architecture. Following test cases could be used to
5. support and validate this scenario.

12

13 8.6.1 Legacy CPRI with RoE Type 0 Coexistence with 7-2x eCPRI

14

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | Ethernet.CPRI.01 | **Classification** | Functionality |
| **Test Title** | Coexistence and transport of Legacy CPRI over Packetized Fronthaul using IEEE 1914.3 ROE Structure agnostic Type 0 encapsulation | | |
| **Test Objective:** | 1. Verify that Legacy CPRI and O-RAN 7-2x traffic can coexist on Packet Fronthaul. 2. Verify that CSR and HSR can use ROE mapper/demapper functions to convert CPRI into Packet and vice versa | | |
| **Pre-Req** | SR-MPLS and/or SRv6 baseline configuration on CSR, HSR and any other Fronthaul routers  Timing and syn configuration through FH network if RAN Nodes are used, not required if test equipment or CPRI/7-2x simulator is used | | |
| **Test Topology:** | ![](../assets/images/be6ff0cd7088.png) | | |
| **Test Configuration** | 1. O-RU and O-DU receives CPRI and 7-2x traffic on its UNI through tester or actual RAN Nodes. 2. Interface speed on the uplink must be capable of transporting combine CPRI and 7-2X traffic. 3. IEEE 1914.3 ROE Structure Agnostic Type 0 configuration on UNI at CSR and HSR | | |
| **Procedure:** | **Detailed Test procedure:**   1. Connect 5G O-RU and O-DU to appropriate ethernet ports on CSR and HSR. 2. Simultaneously, connect 4G RU and corresponding BBU to CPRI port on CSR and HSR. 3. Configure EVPN VPWS circuits for each of the two connections between CSR and HSR. 4. Bi-directional traffic should be sent on both the Ethernet (7-2x connected) port and ROE-enabled (CPRI facing) ports. 5. Test should be repeated with SR-MPLS and/or SRv6 control planes depending on FH transport technology used, in accordance with the O-RAN Xhaul packet switched document. 6. Test could be repeated for various CPRI rate options (typical are option 3 - 8, but others could be tested as well) | | |
| **Pass/Fail Criteria:** | Successful Transport of both traffic types with 0 packet loss, within FH latency budget:  Correlation of counters on both CSR and HSR for:  7-2x Traffic: Interface counters, EVPN VPWS counters, Bridge-domain or others as implemented by the TNE vendor  CPRI Traffic: Two set of measurements/correlation should be used for CPRI traffic:   1. Hyperframe counters on Test equipment should match on both sides. 2. ROE Mapper/Demapper Counters on CSR/HSR and CPRI controller should match on both side. | | |

|  |  |
| --- | --- |
|  | 3. EVPN VPWS services counters, others as implemented by the TNE vendor |
| **Test Output** | Capture any data w.r.t:  Transport underlay: SRv6 or SR-MPLS control plane, routing (ISIS/OSPF) adjacencies, EVPN VPWS service verification (PW is up on both sides),  CPRI Transport: CPRI controller information, ROE Mapper/Demapper function verification,  Traffic Forwarding: Interface forwarding on CPRI and 7-2x UNI, EVPN service and CPRI controller.  Document data rates comparing CPRI with packet data after ROE Structure agnostic Type 0 mapping for legacy traffic. |

1

2

3 8.6.2 Legacy CPRI with RoE Type 1 Coexistence with 7-2x eCPRI

4

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | Ethernet.CPRI.02 | **Classification** | Functionality |
| **Test Title** | Coexistence and transport of Legacy CPRI over Packetized Fronthaul using IEEE 1914.3 ROE Structure agnostic ***Type 1*** encapsulation | | |
| **Test Objective:** | 1. Verify that Legacy CPRI and O-RAN 7-2x traffic can coexist on Packet Fronthaul. 2. Verify that CSR and HSR can use ROE Mapper/Demapper functions to convert CPRI into Packet using Structure agnostic Type 1 function and vice versa | | |
| **Pre-Req** | SR-MPLS and/or SRv6 baseline configuration on CSR, HSR and any other Fronthaul routers  Timing and syn configuration through FH network if RAN Nodes are used, not required if test equipment or CPRI/7-2x simulator is used | | |
| **Test Topology:** | ![](../assets/images/be6ff0cd7088.png) | | |
| **Test Configuration** | 1. O-RU and O-DU receives CPRI and 7-2x traffic on its UNI through tester or actual RAN Nodes. 2. Interface speed on the uplink must be capable of transporting combine CPRI and 7-2X traffic. 3. IEEE 1914.3 ROE Structure Agnostic ***Type 1*** configuration on UNI at CSR and HSR | | |
| **Procedure:** | **Detailed Test procedure:**   1. Connect 5G O-RU and O-DU to appropriate ethernet ports on CSR and HSR. 2. Simultaneously, connect 4G RU and corresponding BBU to CPRI port on CSR and HSR. | | |

|  |  |
| --- | --- |
|  | 1. Configure EVPN VPWS circuits for each of the two connections between CSR and HSR. 2. Bi-directional traffic should be sent on both the Ethernet (7-2x connected) port and ROE-enabled (CPRI facing) ports. 3. Test should be repeated with SR-MPLS and/or SRv6 control planes depending on FH transport technology used, in accordance with the O-RAN Xhaul packet switched document. 4. Test could be repeated for various CPRI rate options (typical are option 3 - 7, but others could be tested as well) |
| **Pass/Fail Criteria:** | Successful Transport of both traffic types with 0 packet loss Correlation of counters on both CSR and HSR for:  7-2x Traffic: Interface counters, EVPN VPWS counters, Bridge-domain or others as implemented by the TNE vendor  CPRI Traffic: ROE Mapper/Demapper Counters, CPRI controller counters, Interface, EVPN VPWS services counters, others as implemented by the TNE vendor.  Expected ~20% bandwidth savings from CPRI and ROE based Packet transport for CPRI Rate Options 3-7 due to 8B10B line coding removal |
| **Test Output** | Capture any data w.r.t:  Transport underlay: SRv6 or SR-MPLS control plane, routing (ISIS/OSPF) adjacencies, EVPN VPWS service verification (PW is up on both sides),  CPRI Transport: CPRI controller information, ROE Mapper/Demapper function verification,  Traffic Forwarding: Interface forwarding on CPRI and 7-2x UNI, EVPN service and CPRI controller.  Document data rates comparing CPRI with packet data after ROE Structure agnostic  ***Type 1*** mapping for legacy traffic. |

1

2

3

4

# 9 Xhaul Synchronization Testing

## 9.1 Synchronization test use cases, parameters and methodologies.

1. This chapter delivers the testing methodologies, parameters and limits for PTP-based network technologies.
2. The chapter is organized in different sections each representing a typical synchronization configuration
3. mode. For each mode, all related metrics are identified, and limits are provided to deliver pass/fail verdicts.

6

1. Various synchronization options have been defined in the O-RAN WG4 CUS-Plane Specification [2] (LLS-
2. C1, LLS-C2, LLS-C3 and LLS-C4). Depending on the specific O-RAN deployment being considered, not all
3. of them might be relevant. When testing the S-Plane, the System Integrator shall identify which of the test
4. cases are relevant depending on the specific deployment scenarios addressed. As a general guideline the
5. following applies:
6. 1. Direct connection between O-DU and O-RU:
7. LLS-C1 is generally the main sync option to be validated.
8. LLS-C4 may be considered as an alternative or as a complement to LLS-C1.
9. 2. Bridged network between O-DU and O-RU
10. LLS-C2 for cases where the synchronization is delivered to the O-RU via the O-DU and over the
11. bridged network. In this case the PRTC/PRC may be embedded in the O-DU or may be located
12. anywhere in the network (connected via backhaul or FH transport).
13. LLS-C3 for cases when the synchronization is distributed to the O-RU without involving the O-DU In
14. this case the PRTC/PRC may be located anywhere in the network (connected via backhaul or FH
15. transport) and may also be co-located with the O-DU.
16. LLS-C4 may be considered as alternative or as a complement to LLS-C2/LLS-C3. LLS-C4 is
17. considered for future versions of the specification.

24

1. The Fronthaul focused tests for S-Plane for the current version of this specification covers LLS-C1, LLS-C2
2. and LLS-C3 using the ITU-T G.8275.1 [5] profile (Full Timing Support). Fronthaul focused tests for S-Plane
3. for LLS-C1, LLS-C2 and LLS-C3 using the ITU-T G.8275.2 [6] profile (Partial Timing Support), and LLS-C4
4. are for future study.

29

1. The test cases apply to both lab and field deployment cases. For lab cases, the type and number of inserted
2. Transport Node Elements (TNE) will be determined by operators (or any other applicable end customer). The
3. tests are performed at Xhaul UNI interfaces, and not between individual TNEs. The Xhaul UNI interfaces
4. include O-RU Fronthaul UNI, O-DU Fronthaul or Midhaul UNI.

34

1. The Test Topologies in all the test cases uses GNSS simulator to generate the GNSS signal to the network
2. PRTC/T-GM. This high-quality reference from the simulator is used as the external reference for clock
3. testers as well. The resultant accuracy of this method is a few nanoseconds. However, one can also use a
4. GNSS signal feeding both the initial PRTC/T-GM in the network and the reference clock generating a
5. 1pps/10MHz used to synchronize the clock testers for the measurements. Operator can make an allowance in
6. this case, for all of the measurements for the accuracy of the reference. The magnitude of this allowance will
7. depend on the specific GNSS reference in use.

1

1. For relative time error measurements at UNI (e.g., O-RU Fronthaul UNI) this document uses the metric
2. max|TERL | (1,2) as defined in [88], Appendix XI. Please note this metric represents an estimation and the
3. worst-case scenario. Tests that meet (are below) the limits are seen as PASS. Tests not meeting this metric

5 may still be acceptable. The decision is for operators to make. However, if the measurement equipment

1. support relative time error measurement, operator can use such equipment. Refer ITU-T G.8271.1 Appendix
2. XI for more details.

8

1. For Frequency Limit at UNI (e.g., O-RU Fronthaul UNI) this document uses the metric defined as per WG4
2. section H.2 based on O-DU class for LLS-C1 and LLS-C2 configuration and based on PRTC class for LLS-
3. C3 configuration. Applicable MTIE limit shall apply for Frequency as per WG4 specification.

12

1. ITU-T G.8273 Annex B mentions the Phase/time clock equipment specification related measurement
2. methods. One can refer to this section for any additional information and guideline for such measurements.

15

1. The acceptable limits in all the below tests shall meet CUS specification worst case limits based on the
2. maximum network size, but operator "should" apply the limits more aligned with the real tested configuration
3. based on the network size.
4. 9.1.1 Network Time Synchronization-LLS-C1 (Option-A) configuration

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | SYNC.TE.01 | **Classification** | Synchronization, Performance, Absolute Time Error, Relative Time Error |
| **Test Title** | Measurement of Frequency Error, Time Error, Relative Time Error at O-RU UNI. Configuration-LLS-C1(Option-A) (T-GM embedded in O-DU) | | |
| **Test Objective:** | 1. Verify the Maximum Absolute Packet Time Error (Max|TEL |) at O-RU UNI. 2. Verify the Maximum Relative Packet Time Error (Max|TERL |) between two O-RU UNI ports. 3. Verify the Maximum Absolute 1PPS Time Error (Max|TEL|) at O-RU UNI. 4. Verify the Time Wander at the O-RU UNI. | | |
| **Pre-Req** | ODU (Integrated T-GM) connected to PRTC/GNSS and locked to PRTC.  O-RU UNI is the measurement Plane | | |
| **Test Topology:** | ![Diagram  Description automatically generated](../assets/images/2025ee021611.jpg) | | |

|  |  |
| --- | --- |
|  | The test topology above illustrates the placement of clock tester at the measurement plane with 1PPS and 10MHz reference from GNSS simulator connected to clock tester. The tester measurement ports at O-RU UNI connected to O-DU. |
| **Test Configuration** | 1. Clock Tester at O-RU UNI receives timing input on its measurement port. 2. Provide 1PPS and 10MHz reference to Clock Tester from GNSS simulator. 3. G.8275.1 Full Timing Support profile. |
| **Procedure:** | **Detailed Test procedure:**   1. Connect T-GM (O-DU) to GNSS Simulator. 2. Configure O-DU as T-GM with G.8275.1 profile. 3. Configure SyncE on O-DU with ESMC/eESMC as applicable. 4. Connect Clock Tester measurement ports to O-DU TimeTransmitter ports to monitor PTP at the O-RU UNI. 5. Establish a PTP and SyncE session to the fronthaul network.   **Verifications for Maximum Absolute Packet Time Error**   1. Verify that PTP and SyncE session is up and running. 2. Perform time error measurements on Clock Tester at O-RU1 and O-RU2 UNI independently.    1. max|TEL | measured on Clock Tester at the O-RU UNI should be <= 1420ns   (For Regular RU)   * 1. max|TEL | measured on Clock Tester at the O-RU UNI should be <= 1465ns   (For Enhanced RU)  **Verifications for Maximum Relative Packet Time Error (NOTE1)**   1. Perform the time error measurements on Clock Tester at O-RU1 and O-RU2 UNI independently. Collect the data (maxTE1, minTE1) and (maxTE2, minTE2) for O-RU1 UNI and O-RU2 UNI respectively at least for a period of 1000sec. 2. Estimate the Maximum Relative Time Error measurements between the two O- RU UNI ports.    1. max|TERL | (1,2) <= 60 (FR2) (For Enhanced RU)    2. max|TERL | (1,2) <= 190ns (FR1) (For Enhanced RU)    3. max|TERL | (1,2) <= 100ns (FR1) (For Regular RU)   As per ITU-T G.8271.1 Appendix-V1, the requirement is not to measure the continuous relative time error, TERL (t), but to measure the maximum possible value it can take.  max|TE | (1,2)the greatest of maxTEL (1) - minTEL(2)  RL {  maxTEL (2) - minTEL(1)  **Verifications for Maximum Absolute 1PPS Time Error**   1. Verify that PTP and SyncE session is up and running. 2. Perform 1PPS time error measurements on Clock Tester at O-RU1 and O-RU2 UNI independently.    1. max|TEL | measured on Clock Tester at the O-RU UNI <= 1420ns (For Regular RU)    2. max|TEL | measured on Clock Tester at the O-RU UNI <= 1465ns (For Enhanced RU)   **Verifications for Time Wander** |

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
|  | 1. Verify the Time Wander using Clock tester at the O-RU UNI.    1. Frequency Limit is <= 15ppb (For O-DU Class-A)    2. Frequency Limit is <= 5ppb (For O-DU Class-B)    3. MTIE mask as per the limit specified. NOTE1 (As per G.8271.1):   To measure the relative time error, measure the time error from each point with  respect to the internal time reference of measurement equipment, and then subtracting time error of one point from the other. | | | | |
| **Pass/Fail Criteria:** | Test shall pass if the Maximum Absolute TE, Relative TE and Time Wander Limit result is within the specified limits. | | | | |
| **Test Output** |  | End-to-End  Network Limit at O- RU UNI | Expected Value | | Observed Value |
| (For enhanced RU) | (For regular RU) |
|  | Packet max|TEL| | <= 1465ns | <= 1420ns |  |
|  | Packet max|TERL| | <= 60ns(FR2) | <= 100ns(FR1) |  |
| <= 190ns(FR1) |
|  | 1PPS max|TEL| | <= 1465ns | <= 1420ns |  |
|  | Frequency Limit (For O-DU Class- A) | <= 15ppb | <= 15ppb |  |
|  | Frequency Limit (For O-DU Class- B) | <= 5ppb | <= 5ppb |  |

1. 9.1.2 Network Time Synchronization-LLS-C1 (Option-B) configuration:
2. Scenario-1

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | SYNC.TE.02 | **Classification** | Synchronization, Performance, Absolute Time Error, Relative Time Error |
| **Test Title** | Measurement of Frequency Error, Absolute Time Error, Relative Time Error at O-RU UNI. Configuration-LLS-C1(Option-B) | | |
| **Test Objective:** | 1. Verify the Maximum Absolute Packet Time Error (Max|TEL |) at O-RU UNI. 2. Verify the Maximum Relative Packet Time Error (Max|TERL |) between two O-RU UNI ports. 3. Verify the Maximum Absolute 1PPS Time Error (Max|TEL|) at O-RU UNI. 4. Verify the Time Wander at the O-RU UNI. | | |
| **Pre-Req** | T-GM is directly connected to O-DU.  O-RU UNI is the measurement plane. | | |

|  |  |
| --- | --- |
| **Test Topology:** | ![Diagram  Description automatically generated](../assets/images/6f60185717be.jpg)  The test topology above illustrates the placement of clock tester at measurement plane with 1PPS and 10MHz reference connected to clock tester. The tester measurement ports at O-RU UNI connected to O-DU. |
| **Test Configuration** | 1. Clock Tester at O-RU UNI receives timing input on its measurement port. 2. Provide 1PPS and 10MHz reference to Clock Tester from GNSS simulator. 3. G.8275.1 Full Timing Support profile. |
| **Procedure:** | **Detailed Test procedure:**   1. Connect T-GM/PRTC directly to O-DU. 2. Configure O-DU as T-BC. 3. Configure G.8275.1 profile on O-DU and T-GM. 4. Configure End-to-End SyncE with ESMC/eESMC as applicable. 5. Connect tester measurement ports to O-DU TimeTransmitter ports to monitor the PTP at the O-RU1 and O-RU2 UNI. 6. Establish a PTP and SyncE session to the fronthaul network.   **Verifications for Maximum Absolute Packet Time Error**   1. Verify that PTP session is up and running. 2. Perform time error measurements on Clock Tester at O-RU1 and O-RU2 plane independently.    1. max|TEL | measured on Clock Tester at the O-RU UNI <= 1420ns (For Regular RU)    2. max|TEL | measured on Clock Tester at the O-RU UNI <= 1465ns (For Enhanced RU)   **Verifications for Maximum Relative Packet Time Error (NOTE1)**   1. Perform the time error measurements on Clock Tester at O-RU1 and O-RU2 UNI independently. Collect the data (maxTE1, minTE1) and (maxTE2, minTE2) for O-RU1 UNI and O-RU2 UNI respectively at least for a period of 1000sec. 2. Estimate the Maximum Relative Time Error measurements between the two O- RU UNI ports.   .   * 1. max|TERL | (1,2) <= 60 (FR2) (For Enhanced RU)   2. max|TERL | (1,2) <= 190ns (FR1) (For Enhanced RU) |

c. max|TERL | (1,2) <= 100ns (FR1) (For Regular RU)

As per ITU-T G.8271.1 Appendix-V1, the requirement is not to measure the continuous relative time error, TERL (t), but to measure the maximum possible value it can take.

max|TE | ( )

maxTEL (1) - minTEL(2)

RL

1,2 the greatest of {

maxTEL (2) - minTEL(1)

#### Verifications for Maximum Absolute 1PPS Time Error

* 1. Verify that PTP and SyncE session is up and running.
  2. Perform 1PPS time error measurements on Clock Tester at O-RU1 and O-RU2 UNI independently.
     1. max|TEL | measured on Clock Tester at the O-RU UNI <= 1420ns (For Regular RU)
     2. max|TEL | measured on Clock Tester at the O-RU UNI <= 1465ns (For Enhanced RU)

#### Verifications for Time Wander

* 1. Verify the Time Wander using Clock tester at the O-RU UNI.
     1. Frequency Limit is <= 36ppb (For O-DU Class-A)
     2. Frequency Limit is <= 32ppb (For O-DU Class-B)
     3. MTIE mask as per the limit specified.

NOTE1 (As per G.8271.1):

To measure the relative time error, measure the time error from each point with respect to the internal time reference of measurement equipment, and then subtracting time error of one point from the other.

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **Pass/Fail Criteria:** | Test shall pass if the Maximum Absolute TE, Relative TE and Time Wander Limit result is within the specified limits. | | | | |
| **Test Output** |  | End-to-End Network Limit at O- RU UNI | Expected Value | | Observed Value |
| (For Enhanced RU) | (For Regular RU) |
|  | Packet max|TEL| | <= 1465ns | <= 1420ns |  |
|  | Packet max|TERL| | <= 60ns(FR2) | <= 100ns(FR1) |  |
| <= 190ns(FR1) |
|  | 1PPS max|TEL| | <= 1465ns | <= 1420ns |  |
|  | Frequency Limit (For O-DU Class- A) | <= 15ppb | <= 15ppb |  |
|  | Frequency Limit (For O-DU Class-  B) | <= 5ppb | <= 5ppb |  |

1

1. 9.1.3 Network Time Synchronization-LLS-C1 (Option-B) configuration:
2. Scenario-2.

4

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | SYNC.TE.03 | **Classification** | Synchronization, Performance, Absolute Time Error, Relative Time Error |
| **Test Title** | Measurement of Frequency Error, Absolute Time Error, Relative Time Error at O-RU UNI. LLS-C1(Option-B) | | |
| **Test Objective:** | 1. Verify the Maximum Absolute Packet Time Error (Max|TEL |) at O-RU UNI. 2. Verify the Maximum Relative Packet Time Error (Max|TERL |) between two O-RU UNI ports. 3. Verify the Maximum Absolute 1PPS Time Error (Max|TEL|) at O-RU UNI. 4. Verify the Maximum Relative 1PPS Time Error (Max|TERL |) at O-RU UNI. 5. Verify the Time Wander at the O-RU UNI. | | |
| **Pre-Req** | T-GM is dual-homed to ODUs.  O-RU UNI is the measurement plane. | | |
| **Test Topology:** | ![Diagram  Description automatically generated](../assets/images/35b7c28a5688.jpg)  The test topology above illustrates the placement of clock tester at the measurement plane with 1PPS and 10MHz reference connected to clock tester. The tester measurement ports at O-RU UNI connected to O-DU. | | |
| **Test Configuration** | 1. Clock Tester at O-RU UNI receives timing input on its measurement port. 2. Provide 1PPS and 10MHz reference to Clock Tester from GNSS simulator. 3. G.8275.1 Full Timing Support profile as applicable. | | |
| **Procedure:** | **Detailed Test procedure:**   1. Connect T-GM/PRTC to both O-DUs directly. 2. Configure O-DU as T-BC. 3. Configure G.8275.1 profile on O-DU and T-GM. 4. Configure End-to-End SyncE with ESMC/eESMC as applicable. 5. Connect tester measurement ports to O-DU TimeTransmitter ports to monitor PTP at the O-RU1 and O-RU2 UNI. 6. Establish a PTP and SyncE session to the fronthaul network.   **Verifications for Maximum Absolute Packet Time Error**   1. Verify that PTP and SyncE session is up and running. 2. Verify time error measurements using Clock Tester at O-RU UNI. | | |

* 1. max|TEL| measured on Clock Tester at the O-RU UNI<= 1420ns (For Regular RU)
  2. max|TEL| measured on Clock Tester at the O-RU UNI<= 1465ns (For Enhanced RU)

#### Verifications for Maximum Relative Packet Time Error (NOTE1)

1. Perform time error measurements on Clock Tester at O-RU1 and O-RU2 plane independently. Collect the data (maxTE1, minTE1) and (maxTE2, minTE2) for O-RU UNI at least for a period of 1000sec.
2. Estimate the Maximum Relative Time Error measurements between the two O- RU UNI ports connected to O-DU1.
   1. max|TERL | (1,2) <= 60ns (FR2) (For Enhanced RU)
   2. max|TERL | (1,2) <= 190ns (FR1) (For Enhanced RU)
   3. max|TERL | (1,2) <= 100ns (FR1) (For Regular RU)
3. Estimate the Maximum Relative Time Error measurements between the two O- RU UNI ports connected to O-DU2.
   1. max|TERL | (1,2) <= 60ns (FR2) (For Enhanced RU)
   2. max|TERL | (1,2) <= 190ns (FR1) (For Enhanced RU)
   3. max|TERL | (1,2) <= 100ns (FR1) (For Regular RU)
4. Estimate the Maximum Relative Time Error measurements between the O-RU UNI ports connected to O-DU1 and O-DU2.
   1. max|TERL| (1,2) <= 2930ns (For Enhanced RU)
   2. max|TERL| (1,2) <= 2840ns (For Regular RU)

As per ITU-T G.8271.1 Appendix-V1, the requirement is not to measure the continuous relative time error, *TERL*(t), but to measure the maximum possible value it can take.

max|TE | ( )

maxTEL (1) - minTEL(2)

RL

1,2 the greatest of {

maxTEL (2) - minTEL(1)

#### Verifications for Maximum Absolute 1PPS Time Error

1. Verify that PTP and SyncE session is up and running.
2. Perform 1PPS time error measurements on Clock Tester at O-RU1 and O-RU2 UNI independently.
   1. max|TEL | measured on Clock Tester at the O-RU UNI <= 1420ns (For Regular RU)
   2. max|TEL | measured on Clock Tester at the O-RU UNI <= 1465ns (For Enhanced RU)

#### Verifications for Maximum Relative 1PPS Time Error

1. Verify that PTP and SyncE session is up and running.
2. Estimate the Maximum Relative 1PPS Time Error measurements between the TimeTransmitter ports of O-DU1 and O-DU2 at O-RU UNI.
   1. max|TERL| (1,2) <= 2930ns (For Enhanced RU)
   2. max|TERL| (1,2) <= 2840ns (For Regular RU)

#### Verifications for Time Wander

1. Verify the Time Wander using Clock tester at the O-RU UNI.

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
|  | 1. Frequency Limit is <= 15ppb (For O-DU Class-A) 2. Frequency Limit is <= 5ppb (For O-DU Class-B) 3. MTIE mask as per the limit specified.   NOTE1 (As per G.8271.1):  To measure the relative time error, measure the time error from each point with respect to the internal time reference of measurement equipment, and then subtracting time error of one point from the other. | | | | |
| **Pass/Fail Criteria:** | Test shall pass if the Max Absolute TE, Maximum Relative TE and Time Wander Limit measurement result is below the specified limits. | | | | |
| **Test Output** |  | End-to-End Network Limit at O-  RU UNI | Expected Value | | Observed Value |
| (For Enhanced RU) | (For Regular RU) |
|  | Packet max|TEL| | <= 1465ns | <= 1420ns |  |
|  | Packet max|TERL| | <= 60ns(FR2) | <= 100ns(FR1) |  |
| <= 190ns(FR1) |
|  | 1PPS max|TEL| | <= 1465ns | <= 1420ns |  |
|  | Frequency Limit (For O-DU Class- A) | <= 15ppb | <= 15ppb |  |
|  | Frequency Limit  (For O-DU Class- B) | <= 5ppb | <= 5ppb |  |
|  | Relative Time Error between the O-RU UNI ports connected to O-DU1 and O-DU2 | | | |
|  | Packet max|TERL| | <= 2930ns | <= 2840ns |  |
|  | 1PPS max|TERL| | <= 2930ns | <= 2840ns |  |

1. 9.1.4 Network Time Synchronization-LLS-C1 (Option-C) configuration

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | SYNC.TE.04 | **Classification** | Synchronization, Performance, Absolute Time Error, Relative Time Error |
| **Test Title** | Measurement of Frequency Error, Maximum Absolute Time Error, Maximum Relative Time Error at O-RU UNI. LLS-C1 (Option-C) | | |
| **Test Objective:** | 1. Verify the Maximum Absolute Packet Time Error (Max|TEL |) at O-RU UNI. 2. Verify the Maximum Relative Packet Time Error (Max|TERL |) between two O-RU UNI ports. 3. Verify the Maximum Absolute 1PPS Time Error (Max|TEL|) at O-RU UNI. 4. Verify the Maximum Relative 1PPS Time Error (Max|TERL |) at O-RU UNI. 5. Verify the Time Wander at O-RU UNI. | | |
| **Pre-Req** | T-GM connected to O-DU via T-BC/T-TC chain.  O-RU UNI is the measurement plane. | | |

|  |  |
| --- | --- |
| **Test Topology:** | ![Diagram  Description automatically generated](../assets/images/f727cd4d6f46.jpg)  The test topology above illustrates the placement of clock tester at measurement plane with 1PPS and 10MHz reference connected to clock tester. The tester measurement ports at O-RU UNI connected to the O-DUs. |
| **Test Configuration** | 1. Clock Tester at O-RU UNI receives timing input on its measurement port. 2. Provide 1PPS and 10MHz reference to Clock Tester from GNSS simulator. 3. G.8275.1 Full Timing Support profile as applicable. |
| **Procedure:** | **Detailed Test procedure:**   1. Connect T-GM/PRTC to O-DU via a chain of 1 or more T-BC/T-TCs. 2. Configure O-DU as T-BC. 3. Configure G.8275.1 profile on T-GM and O-DU. 4. Configure End-to-End SyncE with ESMC/eESMC as applicable.   7. Connect tester measurement ports to O-DU TimeTransmitter ports to monitor PTP at the O-RU1 and O-RU2 UNI.  5. Establish a PTP and SyncE session to the fronthaul network.  **Verifications for Maximum Absolute Packet Time Error**   1. Verify that PTP and SyncE session is up and running. 2. Verify time error measurements using Clock Tester at O-RU UNI.    1. max|TEL| measured on Clock Tester at the O-RU UNI<= 1420ns (For Regular RU)    2. max|TEL| measured on Clock Tester at the O-RU UNI<= 1465ns (For Enhanced RU)   **Verifications for Maximum Relative Packet Time Error (NOTE1)**   1. Perform time error measurements on Clock Tester at O-RU1 and O-RU2 plane independently. Collect the data (maxTE1, minTE1) and (maxTE2, minTE2) for O-RU UNI at least for a period of 1000sec. 2. Estimate the Maximum Relative Time Error measurements between the O-RU UNI ports connected to O-DU1.    1. max|TERL | (1,2) <= 60ns (FR2) (For Enhanced RU)    2. max|TERL | (1,2) <= 190ns (FR1) (For Enhanced RU)    3. max|TERL | (1,2) <= 100ns (FR1) (For Regular RU) |

1. Estimate the Maximum Relative Time Error measurements between the O-RU UNI ports connected to O-DU2.
   1. max|TERL | (1,2) <= 60ns (FR2) (For Enhanced RU)
   2. max|TERL | (1,2) <= 190ns (FR1) (For Enhanced RU)
   3. max|TERL | (1,2) <= 100ns (FR1) (For Regular RU)
2. Estimate the Maximum Relative Time Error measurements between the O-RU UNI ports connected to O-DU1 and O-DU2.
   1. max|TERL| (1,2) <= 2930ns (For Enhanced RU)
   2. max|TERL| (1,2) <= 2840ns (For Regular RU)

As per ITU-T G.8271.1 Appendix-V1, the requirement is not to measure the continuous relative time error, *TErl*(t), but to measure the maximum possible value it can take.

max|TE | ( )

maxTEL (1) - minTEL(2)

RL

1,2 the greatest of {

maxTEL (2) - minTEL(1)

#### Verifications for Maximum Absolute 1PPS Time Error

1. Verify that PTP and SyncE session is up and running.
2. Perform 1PPS time error measurements on Clock Tester at O-RU1 and O-RU2 UNI independently.
   1. max|TEL | measured on Clock Tester at the O-RU UNI <= 1420ns (For Regular RU)
   2. max|TEL | measured on Clock Tester at the O-RU UNI <= 1465ns (For Enhanced RU)

#### Verifications for Maximum Relative 1PPS Time Error

1. Verify that PTP and SyncE session is up and running.
2. Estimate the Maximum Relative 1PPS Time Error measurements between the O-RU UNI ports connected to O-DU1 and O-DU2.
   1. max|TERL| (1,2) <= 2930ns (For Enhanced RU)
   2. max|TERL| (1,2) <= 2840ns (For Regular RU)

#### Verifications for Time Wander

1. Verify the Time Wander using Clock tester at the O-RU UNI.
   1. Frequency Limit is <= 15ppb (For O-DU Class-A)
   2. Frequency Limit is <= 5ppb (For O-DU Class-B)
   3. MTIE mask as per the limit specified. NOTE1 (As per G.8271.1):

To measure the maximum relative time error, measure the time error from each point

with respect to the internal time reference of measurement equipment, and then subtracting time error of one point from the other.

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **Pass/Fail Criteria:** | Test shall pass if the Max Absolute TE, Maximum Relative TE and Time Wander Limit measurement result is below the specified limits. | | | | |
| **Test Output** |  | End-to-End  Network Limit at O-RU UNI | Expected Value | | Observed Value |
| (For Enhanced RU) | (For Regular RU) |

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
|  |  | Packet max|TEL| | <= 1465ns | <= 1420ns |  |
|  | Packet max|TERL| | <= 60ns(FR2) | <= 100ns(FR1) |  |
| <= 190ns(FR1) |
|  | 1PPS max|TEL| | <= 1465ns | <= 1420ns |  |
|  | Frequency Limit (For O-DU Class- A) | <= 15ppb | <= 15ppb |  |
|  | Frequency Limit (For O-DU Class- B) | <= 5ppb | <= 5ppb |  |
|  | Relative Time Error between the O-RU UNI ports connected to O-DU1 and O-DU2 | | | |
|  | Packet max|TERL| | <= 2930ns | <= 2840ns |  |
|  | 1PPS max|TERL| | <= 2930ns | <= 2840ns |  |

1

1. 9.1.5 Network Time Synchronization-LLS-C2 (Option-A) configuration

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | SYNC.TE.05 | **Classification** | Synchronization, Performance, Absolute Time Error, Relative Time Error |
| **Test Title** | Measurement of Frequency Error, Maximum Absolute Time Error, Maximum Relative Time Error at O-RU UNI.  LLS-C2 (Option-A) configuration | | |
| **Test Objective:** | 1. Verify the Maximum Absolute Packet Time Error (Max|TEL |) at O-RU UNI. 2. Verify the Maximum Relative Packet Time Error (Max|TERL |) between two O- RU UNI ports. 3. Verify the Maximum Absolute 1PPS Time Error (Max|TEL |) at O-RU UNI. 4. Verify the Maximum Relative 1PPS Time Error (Max|TERL |) at O-RU UNI. 5. Verify the Time Wander at O-RU UNI. | | |
| **Pre-Req** | T-GM/PRTC connected to O-DU via a chain of T-BC and O-DU locked.  O-RU UNI is the measurement plane. | | |
| **Test Topology:** | ![Diagram  Description automatically generated](../assets/images/662cc2e10659.jpg)  The test topology above illustrates the placement of clock tester at measurement plane with 1PPS and 10MHz reference connected to clock tester. The tester measurement ports at O-RU UNI connected to the CSRs. | | |

|  |  |
| --- | --- |
| **Test Configuration** | 1. Clock Tester at O-RU UNI receives timing input on its measurement port. 2. Provide 1PPS and 10MHz reference to Clock Tester from GNSS simulator. 3. G.8275.1 Full Timing Support profile as applicable. |
| **Procedure:** | **Detailed Test procedure:**   1. Connect T-GM to O-DU via a chain of T-BC. 2. Configure O-DU as T-BC and HSR as either T-BC/T-TC. 3. Enable G.8275.1 profile on HSR and T-GM. 4. Connect Clock tester measurement ports to CSR1 and CSR2 TimeTransmitter ports to monitor the PTP at O-RU UNI. 5. Establish a PTP and SyncE session to the fronthaul network.   **Verifications for Maximum Absolute Packet Time Error**   1. Verify that PTP and SyncE session is up and running. 2. Verify time error measurements using Clock Tester at O-RU UNI.    1. max|TEL | measured on Clock Tester at the O-RU UNI<= 1465ns (For Enhanced RU)    2. max|TEL | measured on Clock Tester at the O-RU UNI<= 1420ns (For Regular RU)   **Verifications for Maximum Relative Packet Time Error (NOTE1)**   1. Perform time error measurements on Clock Tester at O-RU1 and O-RU2 UNI. Collect the data (maxTE1, minTE1) and (maxTE2, minTE2) for both the O-RU UNI at least for a period of 1000sec. 2. Estimate the Maximum Relative Time Error measurements between the O-RU UNI ports.    1. max|TERL | (1,2) <= 60ns (FR2) (For Enhanced RU)    2. max|TERL | (1,2) <= 190ns (FR1) (For Enhanced RU)    3. max|TERL | (1,2) <= 100ns (FR1) (For Regular RU)   As per ITU-T G.8271.1 Appendix-V1, the requirement is not to measure the continuous relative time error, *TErl*(t), but to measure the maximum possible value it can take.  max|TE | (1,2)the greatest of maxTEL (1) - minTEL(2)  RL {  maxTEL (2) - minTEL(1)  **Verifications for Maximum 1PPS Absolute Time Error**   1. Verify that PTP and SyncE session is up and running. 2. Verify 1PPS time error measurements using Clock Tester at O-RU UNI.    1. max|TEL | measured on Clock Tester at the O-RU UNI<= 1465ns (For Enhanced RU)    2. max|TEL | measured on Clock Tester at the O-RU UNI<= 1420ns (For Regular RU)   **Verifications for Maximum Relative 1PPS Time Error**   1. Verify that PTP and SyncE session is up and running. 2. Estimate the Maximum Relative 1PPS Time Error measurements between the O-RU UNI ports.    1. max|TERL | (1,2) <= 60ns (FR2) (For Enhanced RU) |

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
|  | 1. max|TERL | (1,2) <= 190ns (FR1) (For Enhanced RU) 2. max|TERL | (1,2) <= 100ns (FR1) (For Regular RU)   **Verifications for Time Wander**   1. Verify the Time Wander using Clock tester at the O-RU UNI.    1. Frequency Limit is <= 36ppb (For O-DU Class-A)    2. Frequency Limit is <= 32ppb (For O-DU Class-B)    3. MTIE mask as per the limit specified.   NOTE1 (As per G.8271.1):  To measure the maximum relative time error, measure the time error from each point with respect to the internal time reference of measurement equipment, and then subtracting time error of one point from the other. | | | | |
| **Pass/Fail Criteria:** | Test shall pass if the Maximum absolute TE, Maximum Relative TE and Time Wander Limit measurement result is below the limit specified. | | | | |
| **Test Output** |  | End-to-End Network Limit at O- RU UNI | Expected Value | | Observed Value |
| (For Enhanced RU) | (For Regular RU) |
|  | Packet max|TEL| | <= 1465ns | <= 1420ns |  |
|  | Packet max|TERL| | <= 60ns(FR2) | <= 100ns(FR1) |  |
| <= 190ns(FR1) |
|  | 1PPS max|TEL| | <= 1465ns | <= 1420ns |  |
|  | 1PPS max|TERL| | <= 60ns(FR2) | <= 100ns(FR1) |  |
| <= 190ns(FR1) |
|  | Frequency Limit (For O-DU Class- A) | <= 36ppb | <= 36ppb |  |
|  | Frequency Limit (For O-DU Class- B) | <= 32ppb | <= 32ppb |  |

1. 9.1.6 Network Time Synchronization-LLS-C2 (Option-B) configuration:
2. Scenario-1

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | SYNC.TE.06 | **Classification** | Synchronization, Performance, Absolute Time Error, Relative Time Error |
| **Test Title** | Measurement of Frequency Error, Maximum Absolute Time Error, Maximum Relative Error at O-RU UNI. LLS-C2 (Option-B) | | |
| **Test Objective:** | 1. Verify the Maximum Absolute Packet Time Error (Max|TEL |) at O-RU UNI. 2. Verify the Maximum Relative Packet Time Error (Max|TERL |) between two O-RU UNI ports. 3. Verify the Maximum Absolute 1PPS Time Error (Max|TEL|) at O-RU UNI. 4. Verify the Maximum Relative 1PPS Time Error (Max|TERL |) at O-RU UNI. 5. Verify the Time Wander at O-RU UNI. | | |
| **Pre-Req** | Nearest common node for O-RU UNI is T-BC and not O-DU.  T-GM or PRTC connected to O-DU via chain of T-BC/T-TCs. | | |

|  |  |
| --- | --- |
|  | O-RU UNI is the measurement plane. |
| **Test Topology:** | ![Diagram  Description automatically generated](../assets/images/81225dc12848.jpg)  The test topology above illustrates the placement of clock tester at measurement plane with 1PPS and 10MHz reference connected to clock tester. The tester measurement ports at O-RU UNI connected to the CSRs. |
| **Test Configuration** | 1. Clock Tester at O-RU UNI receives timing input on its measurement port. 2. Provide 1PPS and 10MHz reference to Clock Tester from GNSS simulator. 3. G.8275.1 Full Timing Support profile as applicable. |
| **Procedure:** | **Detailed Test procedure:**   1. Connect T-GM to ODU via a chain of T-BC/T-TCs. 2. Configure O-DU and CSR as T-BCs and HSR is configured as either T-BC or T- TC. 3. Enable G.8275.1 profile on T-GM, O-DU, HSR (when acting as T-BC) and CSR. 4. Connect Clock tester measurement ports to CSR1 and CSR2 TimeTransmitter ports to monitor the PTP at O-RU UNI. 5. Establish PTP and SyncE session to the fronthaul network.   **Verifications for Maximum Absolute Packet Time Error**   1. Verify that PTP and SyncE session is up and running. 2. Verify time error measurements using Clock Tester at O-RU UNI.    1. max|TEL | measured on Clock Tester at the O-RU UNI<= 1465ns (For Enhanced RU)    2. max|TEL | measured on Clock Tester at the O-RU UNI<= 1420ns (For Regular RU)   **Verifications for Maximum Relative Packet Time Error (NOTE1)**   1. Perform time error measurements on Clock Tester at O-RU1 and O-RU2 UNI. Collect the data (maxTE1, minTE1) and (maxTE2, minTE2) for both the O-RU UNI at least for a period of 1000sec. 2. Estimate the Maximum Relative Time Error measurements between the O-RU UNI ports.    1. max|TERL | (1,2) <= 60ns (FR2) (For Enhanced RU)    2. max|TERL | (1,2) <= 190ns (FR1) (For Enhanced RU)    3. max|TERL | (1,2) <= 100ns (FR1) (For Regular RU) |

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
|  | As per ITU-T G.8271.1 Appendix-V1, the requirement is not to measure the continuous relative time error, *TErl*(t), but to measure the maximum possible value it can take.  max|TE | (1,2)the greatest of maxTEL (1) - minTEL(2)  RL {  maxTEL (2) - minTEL(1)  **Verifications for Maximum 1PPS Absolute Time Error**   1. Verify that PTP and SyncE session is up and running. 2. Verify 1PPS time error measurements using Clock Tester at O-RU UNI.    1. max|TEL | measured on Clock Tester at the O-RU UNI<= 1465ns (For Enhanced RU)    2. max|TEL | measured on Clock Tester at the O-RU UNI<= 1420ns (For Regular RU)   **Verifications for Maximum Relative 1PPS Time Error**   1. Verify that PTP and SyncE session is up and running. 2. Estimate the Maximum Relative 1PPS Time Error measurements between the O-RU UNI ports.    1. max|TERL | (1,2) <= 60ns (FR2) (For Enhanced RU)    2. max|TERL | (1,2) <= 190ns (FR1) (For Enhanced RU)    3. max|TERL | (1,2) <= 100ns (FR1) (For Regular RU)   **Verifications for Time Wander**   1. Verify the Time Wander using Clock tester at the O-RU UNI.    1. Frequency Limit is <= 36ppb (For O-DU Class-A)    2. Frequency Limit is <= 32ppb (For O-DU Class-B)    3. MTIE mask as per the limit specified.   NOTE1:  To measure the maximum relative time error, measure the time error from each point with respect to the internal time reference of measurement equipment, and then subtracting time error of one point from the other. | | | | |
| **Pass/Fail Criteria:** | Test shall pass if the Maximum absolute TE, Maximum Relative TE and Time Wander Limit measurement result is below the limit specified. | | | | |
| **Test Output** |  | End-to-End Network Limit at O- RU UNI | Expected Value | | Observed Value |
| (For Enhanced RU) | (For Regular RU) |
|  | Packet max|TEL| | <= 1465ns | <= 1420ns |  |
|  | Packet max|TERL| | <= 60ns(FR2) | <= 100ns(FR1) |  |
| <= 190ns(FR1) |
|  | 1PPS max|TEL| | <= 1465ns | <= 1420ns |  |
|  | 1PPS max|TERL| | <= 60ns(FR2) | <= 100ns(FR1) |  |
| <= 190ns(FR1) |
|  | Frequency Limit (For O-DU Class- A) | <= 36ppb | <= 36ppb |  |
|  | Frequency Limit  (For O-DU Class- B) | <= 32ppb | <= 32ppb |  |

1

1. 9.1.7 Network Time Synchronization-LLS-C2 (Option-B) configuration:
2. Scenario-2

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | SYNC.TE.07 | **Classification** | Synchronization, Performance, Absolute Time Error, Relative Time Error |
| **Test Title** | Measurement of Frequency Error, Maximum Absolute Time Error, Maximum Relative Time Error at O-RU UNI.  LLS-C2 (Option-B) configuration | | |
| **Test Objective:** | 1. Verify the Maximum Absolute Packet Time Error (Max|TEL |) at O-RU UNI. 2. Verify the Maximum Relative Packet Time Error (Max|TERL |) between two O-RU UNI ports. 3. Verify the Maximum Absolute 1PPS Time Error (Max|TEL|) at O-RU UNI. 4. Verify the Maximum Relative 1PPS Time Error (Max|TERL |) at O-RU UNI. 5. Verify the Time Wander at O-RU UNI. | | |
| **Pre-Req** | Nearest Common node for O-RU UNI is T-BC and not O-DU.  T-GM/PRTC connected to O-DU via chain of T-BC/T-TCs. O-DU is locked. O-RU UNI is the measurement plane. | | |
| **Test Topology:** | ![Diagram  Description automatically generated](../assets/images/385135661126.jpg)  The test topology above illustrates the placement of clock tester at the measurement plane with 1PPS and 10MHz reference connected to clock tester. The tester measurement ports at O-RU UNI connected to the CSRs. | | |
| **Test Configuration** | 1. Clock Tester at O-RU UNI receives timing input on its measurement port. 2. Provide 1PPS and 10MHz reference to Clock Tester from GNSS simulator. 3. G.8275.1 Full Timing Support profile as applicable. | | |
| **Procedure:** | **Detailed Test procedure:**   1. Connect T-GM to O-DU via chain of T-BC/T-TCs. 2. Configure O-DU and CSR as T-BC and HSR as either T-BC or T-TC. 3. Enable G.8275.1 profile on HSR (when acting as T-BC), O-DU, CSR and T-GM. | | |

1. Connect Clock tester measurement ports to CSR1 and CSR2 TimeTransmitter ports to monitor the PTP at O-RU UNI.
2. Establish a PTP and SyncE session to the fronthaul network.

#### Verifications for Maximum Absolute Packet Time Error

1. Verify that PTP and SyncE session is up and running.
2. Perform time error measurements on Clock tester at O-RU UNI.
3. Verify time error measurements using Clock Tester at O-RU UNI.
   1. Max |TEL | measured on Clock Tester at the O-RU UNI<= 1465ns (For Enhanced RU)
   2. Max |TEL | measured on Clock Tester at the O-RU UNI<= 1420ns (For Regular RU)

#### Verifications for Maximum Relative Packet Time Error (NOTE1)

1. Perform time error measurements on Clock Tester at O-RU1 and O-RU2 UNI. Collect the data (maxTE1, minTE1) and (maxTE2, minTE2) for both the O-RU UNI at least for a period of 1000sec.
2. Estimate the Maximum Relative Time Error measurements between the O-RU UNI ports.
   1. max|TERL | (1,2) <= 60ns (FR2) (For Enhanced RU)
   2. max|TERL | (1,2) <= 190ns (FR1) (For Enhanced RU)
   3. max|TERL | (1,2) <= 100ns (FR1) (For Regular RU)

As per ITU-T G.8271.1 Appendix-V1, the requirement is not to measure the continuous relative time error, *TErl*(t), but to measure the maximum possible value it can take.

max|TE | ( )

maxTEL (1) - minTEL(2)

RL

1,2 the greatest of {

maxTEL (2) - minTEL(1)

#### Verifications for Maximum 1PPS Absolute Time Error

1. Verify that PTP and SyncE session is up and running.
2. Verify 1PPS time error measurements using Clock Tester at O-RU UNI.
   1. max|TEL | measured on Clock Tester at the O-RU UNI<= 1465ns (For Enhanced RU)
   2. max|TEL | measured on Clock Tester at the O-RU UNI<= 1420ns (For Regular RU)

#### Verifications for Maximum Relative 1PPS Time Error

1. Verify that PTP and SyncE session is up and running.
2. Estimate the Maximum Relative 1PPS Time Error measurements between the O-RU UNI ports.
   1. max|TERL | (1,2) <= 60ns (FR2) (For Enhanced RU)
   2. max|TERL | (1,2) <= 190ns (FR1) (For Enhanced RU)
   3. max|TERL | (1,2) <= 100ns (FR1) (For Regular RU)

#### Verifications for Time Wander

1. Verify the Time Wander using Clock tester at the O-RU UNI.
   1. Frequency Limit is <= 36ppb (For O-DU Class-A)
   2. Frequency Limit is <= 32ppb (For O-DU Class-B)

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
|  | c. MTIE mask as per the limit specified.  NOTE1:  To measure the maximum relative time error, measure the time error from each point with respect to the internal time reference of measurement equipment, and then subtracting time error of one point from the other. | | | | |
| **Pass/Fail Criteria:** | Test shall pass if the Maximum absolute TE, Maximum Relative TE and Time Wander Limit measurement result is below the limit specified. | | | | |
| **Test Output** |  | End-to-End Network Limit at O- RU UNI. | Expected Value | | Observed Value |
| (For Enhanced RU) | (For Regular RU) |
|  | Packet max|TEL| | <= 1465ns | <= 1420ns |  |
|  | Packet max|TERL| | <= 60ns(FR2) | <= 100ns(FR1) |  |
| <= 190ns(FR1) |
|  | 1PPS max|TEL| | <= 1465ns | <= 1420ns |  |
|  | 1PPS max|TERL| | <= 60ns(FR2) | <= 100ns(FR1) |  |
| <= 190ns(FR1) |
|  | Frequency Limit (For O-DU Class- A) | <= 36ppb | <= 36ppb |  |
|  | Frequency Limit  (For O-DU Class- B) | <= 32ppb | <= 32ppb |  |

1

1. 9.1.8 Network Time Synchronization-LLS-C2 (Option-B) configuration
2. (Fail-over: Scenario-1)

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | SYNC.TE.08 | **Classification** | Synchronization, Performance, Absolute Time Error |
| **Test Title** | Measurement of Frequency Error, Maximum Absolute Time Error at O-RU UNI  LLS-C2 (Option-B): Dual-Homing with LAG at O-DU side | | |
| **Test Objective:** | 1. Verify the Maximum Absolute Packet Time Error (Max|TEL |) at O-RU UNI. 2. Verify the Maximum Absolute 1PPS Time Error (Max|TEL|) at O-RU UNI. 3. Verify the Time Wander at O-RU UNI. | | |
| **Pre-Req** | O-DU is the nearest common T-BC to O-RU UNI.  T-GM or PRTC connected to ODU via a chain of T-BC/T-TCs.  A pair of HSR nodes as T-TCs, with CSR dual-homed to the HSR's on one side and a pair of O-DU uplinks are bundled to LAG and connected to HSR node on the other side.  O-RU UNI is the measurement plane. | | |
| **Test Topology:** | **Normal Scenario** | | |

|  |  |
| --- | --- |
|  | ![Diagram  Description automatically generated](../assets/images/f8dcdc152a2d.jpg)  **Link Failure between O-DU and HSR1**  ![Diagram  Description automatically generated](../assets/images/06784c6715f0.jpg)  **HSR Node Failure**  ![Diagram  Description automatically generated](../assets/images/170bfbf5a4b2.jpg)  The test topology above illustrates the placement of clock tester at the measurement plane with 1PPS and 10MHz reference connected to clock tester. The tester measurement ports at O-RU UNI connected to the CSR. |
| **Test Configuration** | 1. Clock Tester at O-RU UNI receives timing input on its measurement port. 2. Provide 1PPS and 10MHz reference to Clock Tester from GNSS simulator. 3. G.8275.1 Full Timing Support profile as applicable. |
| **Procedure:** | **Case-1: Normal Scenario** |

#### Detailed Test procedure

* 1. Connect T-GM to O-DU via a chain of T-BC/T-TCs.
  2. Configure O-DU and CSR as T-BC and HSR as T-TC.
  3. Enable G.8275.1 profile on CSR and T-GM.
  4. Connect Clock tester measurement ports to CSR TimeTransmitter port to monitor the PTP at O-RU UNI.
  5. Establish PTP and SyncE session to the fronthaul network.

#### Verifications for Maximum Absolute Packet Time Error

1. Verify that PTP and SyncE session is up and running.
2. Verify time error measurements using Clock Tester at O-RU UNI.
   1. max|TEL | measured on Clock Tester at the O-RU UNI<= 1465ns (For Enhanced RU)
   2. max|TEL | measured on Clock Tester at the O-RU UNI<= 1420ns (For Regular RU)

#### Verifications for Maximum 1PPS Absolute Time Error

1. Verify that PTP and SyncE session is up and running.
2. Verify 1PPS time error measurements using Clock Tester at O-RU UNI.
   1. max|TEL | measured on Clock Tester at the O-RU UNI<= 1465ns (For Enhanced RU)
   2. max|TEL | measured on Clock Tester at the O-RU UNI<= 1420ns (For Regular RU)

#### Verifications for Time Wander

1. Verify the Time Wander using Clock tester at the O-RU UNI.
   1. Frequency Limit is <= 36ppb (For O-DU Class-A)
   2. Frequency Limit is <= 32ppb (For O-DU Class-B)
   3. MTIE mask as per the limit specified. **Case-2: Link Fail between O-DU and HSR1 Detailed Test procedure**
2. Fail the link between O-DU and HSR1.

#### Verifications for Maximum Absolute Packet Time Error

1. Verify that PTP session is established via the path O-DU-HSR2-CSR1 and CSR1 lock to O-DU via HSR-2.
2. Verify time error measurements using Clock tester on O-RU UNI.
   1. max|TEL | measured on Clock Tester at the O-RU UNI<= 1465ns (For Enhanced RU)
   2. max|TEL | measured on Clock Tester at the O-RU UNI<= 1420ns (For Regular RU)

#### Verifications for Maximum 1PPS Absolute Time Error

1. Verify that PTP and SyncE session is up and running.
2. Verify 1PPS time error measurements using Clock Tester at O-RU UNI.
   1. max|TEL | measured on Clock Tester at the O-RU UNI<= 1465ns (For Enhanced RU)
   2. max|TEL | measured on Clock Tester at the O-RU UNI<= 1420ns (For Regular RU)

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
|  | **Verifications for Time Wander**   1. Verify the Time Wander using Clock tester at the O-RU UNI.    1. Frequency Limit is <= 36ppb (For O-DU Class-A)    2. Frequency Limit is <= 32ppb (For O-DU Class-B)    3. MTIE mask as per the limit specified.   **Case-3: HSR1 Node Fail Detailed Test procedure**   1. Fail the node HSR1 by power off.   **Verifications for Maximum Absolute Packet Time Error**   1. Verify that PTP session is established via the path O-DU-HSR2-CSR1 and CSR1 lock to O-DU via HSR2. 2. Verify the time error measurements using Clock Tester on O-RU UNI.    1. max|TEL | measured on Clock Tester at the O-RU UNI<= 1465ns (For Enhanced RU)    2. max|TEL | measured on Clock Tester at the O-RU UNI<= 1420ns (For Regular RU)   **Verifications for Maximum 1PPS Absolute Time Error**   1. Verify that PTP and SyncE session is up and running. 2. Verify 1PPS time error measurements using Clock Tester at O-RU UNI.    1. max|TEL | measured on Clock Tester at the O-RU UNI<= 1465ns (For Enhanced RU)    2. max|TEL | measured on Clock Tester at the O-RU UNI<= 1420ns (For Regular RU)   **Verifications for Time Wander**   1. Verify the Time Wander using Clock tester at the O-RU UNI.    1. Frequency Limit is <= 36ppb (For O-DU Class-A)    2. Frequency Limit is <= 32ppb (For O-DU Class-B)    3. MTIE mask as per the limit specified. | | | | |
| **Pass/Fail Criteria:** | Test shall pass if the Maximum absolute TE and Time Wander Limit measurement result is below the limit specified. | | | | |
| **Test Output** |  | End-to-End Network Limit at O- RU UNI | Expected Value | | Observed Value |
| (For Enhanced RU) | (For Regular RU) |
|  | Packet max|TEL| | <= 1465ns | <= 1420ns |  |
|  | 1PPS max|TEL| | <= 1465ns | <= 1420ns |  |
|  | Frequency Limit (For O-DU Class- A) | <= 36ppb | <= 36ppb |  |
|  | Frequency Limit  (For O-DU Class- B) | <= 32ppb | <= 32ppb |  |

1

1. 9.1.9 Network Time Synchronization-LLS-C2 (Option-B) configuration
2. (Fail-over: Scenario-2)

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | SYNC.TE.09 | **Classification** | Synchronization, Performance, Absolute Time Error |
| **Test Title** | Measurement of Frequency Error, Maximum Absolute Time Error at O-RU UNI  LLS-C2 (Option-B): Dual-Homing with AE at O-DU side | | |
| **Test Objective:** | 1. Verify the Maximum Absolute Packet Time Error (Max|TEL |) at O-RU UNI. 2. Verify the Maximum Absolute 1PPS Time Error (Max|TEL|) at O-RU UNI. 3. Verify the Time Wander at O-RU UNI. | | |
| **Pre-Req** | Nearest common node to O-RU UNI is O-DU.  T-GM or PRTC connected to ODU via a chain of T-BC/T-TCs.  A pair of HSR nodes as T-TCs, with CSR dual-homed to the HSR's on one side and a pair of O-DU uplinks are bundled to AE and connected to HSR node on the other side.  O-RU UNI is the measurement plane. | | |
| **Test Topology:** | **Normal Scenario**  ![Diagram  Description automatically generated](../assets/images/6897424697c8.jpg)  **Link Fail between HSR1 and CSR1**  ![Diagram  Description automatically generated](../assets/images/2a709ad15e80.jpg)  **HSR Node Failure** | | |

|  |  |
| --- | --- |
| ![Diagram  Description automatically generated](../assets/images/9746707731af.jpg)  The test topology above illustrates the placement of clock tester at measurement plane with 1PPS and 10MHz reference connected to clock tester. The tester measurement ports at O-RU UNI connected to CSR. | |
| **Test Configuration** | 1. Clock Tester at O-RU UNI receives timing input on its measurement port. 2. Provide 1PPS and 10MHz reference to Clock Tester from GNSS simulator. 3. G.8275.1 Full Timing Support profile as applicable. |
| **Procedure:** | **Case-1: Normal Scenario Detailed Test procedure**   1. Connect T-GM to O-DU via a chain of T-BC/T-TCs. 2. Configure O-DU and CSR as T-BC and HSR as T-TC. 3. Enable G.8275.1 profile on CSR and T-GM. 4. Connect Clock tester measurement ports to CSR TimeTransmitter port to monitor the PTP at O-RU UNI. 5. Establish PTP and SyncE session to the fronthaul network.   **Verifications for Maximum Absolute Packet Time Error**   1. Verify that PTP and SyncE session is up and running. 2. Configure PTP on the primary path and SyncE on the standby path. 3. Verify time error measurements using Clock Tester at O-RU UNI.    1. max|TEL | measured on Clock Tester at the O-RU UNI<= 1465ns (For Enhanced RU)    2. max|TEL | measured on Clock Tester at the O-RU UNI<= 1420ns (For Regular RU)   **Verifications for Maximum 1PPS Absolute Time Error**   1. Verify that PTP and SyncE session is up and running. 2. Verify 1PPS time error measurements using Clock Tester at O-RU UNI.    1. max|TEL | measured on Clock Tester at the O-RU UNI<= 1465ns (For Enhanced RU)    2. max|TEL | measured on Clock Tester at the O-RU UNI<= 1420ns (For Regular RU)   **Verifications for Time Wander**   1. Verify the Time Wander using Clock tester at the O-RU UNI.    1. Frequency Limit is <= 36ppb (For O-DU Class-A) |

* 1. Frequency Limit is <= 32ppb (For O-DU Class-B)
  2. MTIE mask as per the limit specified. **Case-2: Link Fail between HSR1 and CSR Detailed Test procedure**

1. Fail the link between HSR1 and CSR.

#### Verifications for Maximum Absolute Packet Time Error

1. Verify that the PTP session on CSR moves to Assisted Holdover with Physical layer SyncE via the standby path.
2. Perform time error measurements on Clock tester on O-RU UNI.
   1. max|TEL | measured on Clock Tester at the O-RU UNI<= 1465ns (For Enhanced RU)
   2. max|TEL | measured on Clock Tester at the O-RU UNI<= 1420ns (For Regular RU)

#### Verifications for Maximum 1PPS Absolute Time Error

1. Verify that PTP and SyncE session is up and running.
2. Verify 1PPS time error measurements using Clock Tester at O-RU UNI.
   1. max|TEL | measured on Clock Tester at the O-RU UNI<= 1465ns (For Enhanced RU)
   2. max|TEL | measured on Clock Tester at the O-RU UNI<= 1420ns (For Regular RU)

#### Verifications for Time Wander

1. Verify the Time Wander using Clock tester at the O-RU UNI.
   1. Frequency Limit is <= 36ppb (For O-DU Class-A)
   2. Frequency Limit is <= 32ppb (For O-DU Class-B)
   3. MTIE mask as per the limit specified.

#### Case-3: HSR1 Node Fail Detailed Test procedure

1. Fail the node HSR1 by power off.

#### Verifications for Maximum Absolute Packet Time Error

1. Verify that PTP session on CSR moves to Assisted Holdover with SyncE via the standby path.
2. Perform time error measurements on Tester on O-RU UNI.
   1. max|TEL | measured on Clock Tester at the O-RU UNI<= 1465ns (For Enhanced RU)
   2. max|TEL | measured on Clock Tester at the O-RU UNI<= 1420ns (For Regular RU)

#### Verifications for Maximum 1PPS Absolute Time Error

1. Verify that PTP and SyncE session is up and running.
2. Verify 1PPS time error measurements using Clock Tester at O-RU UNI.
   1. max|TEL | measured on Clock Tester at the O-RU UNI<= 1465ns (For Enhanced RU)
   2. max|TEL | measured on Clock Tester at the O-RU UNI<= 1420ns (For Regular RU)

**Verifications for Time Wander**

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
|  | 1. Verify the Time Wander using Clock tester at the O-RU UNI.    1. Frequency Limit is <= 36ppb (For O-DU Class-A)    2. Frequency Limit is <= 32ppb (For O-DU Class-B)    3. MTIE mask as per the limit specified. | | | | |
| **Pass/Fail Criteria:** | Test shall pass if the Maximum absolute TE and Time Wander Limit measurement result is below the limit specified. | | | | |
| **Test Output** |  | End-to-End Network Limit at O-  RU UNI | Expected Value | | Observed Value |
| (For Enhanced RU) | (For Regular RU) |
|  | Packet max|TEL| | <= 1465ns | <= 1420ns |  |
|  | 1PPS max|TEL| | <= 1465ns | <= 1420ns |  |
|  | Frequency Limit (For O-DU Class- A) | <= 36ppb | <= 36ppb |  |
|  | Frequency Limit (For O-DU Class- B) | <= 32ppb | <= 32ppb |  |

1

1. 9.1.10Network Time Synchronization-LLS-C2 (Option-B) configuration
2. (Fail-over: Scenario-3)

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | SYNC.TE.10 | **Classification** | Synchronization, Performance, Absolute Time Error |
| **Test Title** | Measurement of Frequency Error, Maximum Absolute Time Error at O-RU UNI  LLS-C2 (Option-B): Dual-Homing with dual/redundant O-DU | | |
| **Test Objective:** | 1. Verify the Maximum Absolute Packet Time Error (Max|TEL |) at O-RU UNI. 2. Verify the Maximum Absolute 1PPS Time Error (Max|TEL|) at O-RU UNI. 3. Verify the Time Wander at O-RU UNI. | | |
| **Pre-Req** | T-GM or PRTC connected to O-DUs via T-BC chain.  A pair of HSR nodes, with CSR dual-homed to the HSR's on one side and a pair of O-DU uplinks are bundled to AE and connected to HSR node on the other side.  O-RU UNI is the measurement plane. | | |
| **Test Topology:** | **Normal Scenario** | | |

|  |  |
| --- | --- |
|  | ![Diagram  Description automatically generated](../assets/images/6198baf9dcd6.jpg)  **O-DU Failure Scenario**  ![Diagram  Description automatically generated](../assets/images/b11d84182356.jpg)  The test topology above illustrates the placement of clock tester at the measurement plane with 1PPS and 10MHz reference connected to clock tester. The tester measurement ports at O-RU UNI connected to the CSR. |
| **Test Configuration** | 1. Clock Tester at O-RU UNI receives timing input on its measurement port. 2. Provide 1PPS and 10MHz reference to Clock Tester from GNSS simulator. 3. G.8275.1 Full Timing Support profile as applicable. |
| **Procedure:** | **Case-1: Normal Scenario Detailed Test procedure:**   1. Connect T-GM to O-DU via a chain of T-BC/T-TCs. 2. Configure O-DU1, O-DU2 and CSR as T-BC. HSR1 and HSR2 as T-TC. 3. Enable G.8275.1 profile on CSR and T-GM. 4. Connect Clock tester measurement ports to CSR TimeTransmitter port to monitor the PTP at O-RU UNI. 5. Establish PTP and SyncE session to the fronthaul network.   **Verifications for Maximum Absolute Packet Time Error**   1. Verify that PTP session is up and running. 2. Verify that PTP session is established on the Primary path T-GM-O-DU1-HSR1- CSR and CSR lock to O-DU1 via HSR1. 3. Perform time error measurements on Tester on O-RU UNI. |

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
|  | 1. max|TEL | measured on Clock Tester at the O-RU UNI<= 1465ns (For Enhanced RU) 2. max|TEL | measured on Clock Tester at the O-RU UNI<= 1420ns (For Regular RU)   **Verifications for Maximum 1PPS Absolute Time Error**   1. Verify that PTP and SyncE session is up and running. 2. Verify the 1PPS time error measurements using Clock Tester at O-RU UNI.    1. max|TEL | measured on Clock Tester at the O-RU UNI<= 1465ns (For Enhanced RU)    2. max|TEL | measured on Clock Tester at the O-RU UNI<= 1420ns (For Regular RU)   **Verifications for Time Wander**   1. Verify the Time Wander using Clock tester at the O-RU UNI.    1. Frequency Limit is <= 36ppb (For O-DU Class-A)    2. Frequency Limit is <= 32ppb (For O-DU Class-B)    3. MTIE mask as per the limit specified.   **Case-2: O-DU1 Fail Detailed Test procedure**   1. Fail the node O-DU1 by power off.   **Verifications for Maximum Absolute Time Error**   1. Verify that PTP session is established via the path O-DU2-HSR1-CSR and CSR lock to HSR1. 2. Perform time error measurements on Clock Tester at the O-RU UNI.    1. max|TEL | measured on Clock Tester at the O-RU UNI<= 1465ns (For Enhanced RU)    2. max|TEL | measured on Clock Tester at the O-RU UNI<= 1420ns (For Regular RU)   **Verifications for Maximum 1PPS Absolute Time Error**   1. Verify that PTP and SyncE session is up and running. 2. Verify 1PPS time error measurements using Clock Tester at O-RU UNI.    1. max|TEL | measured on Clock Tester at the O-RU UNI<= 1465ns (For Enhanced RU)    2. max|TEL | measured on Clock Tester at the O-RU UNI<= 1420ns (For Regular RU)   **Verifications for Time Wander**   1. Verify the Time Wander using Clock tester at the O-RU UNI.    1. Frequency Limit is <= 36ppb (For O-DU Class-A)    2. Frequency Limit is <= 32ppb (For O-DU Class-B)    3. MTIE mask as per the limit specified. | | | | |
| **Pass/Fail Criteria:** | Test shall pass if the Maximum absolute TE and Time Wander Limit measurement result is below the limit specified. | | | | |
| **Test Output** |  | End-to-End Network Limit at O-  RU UNI | Expected Value | | Observed Value |
| (For Enhanced RU) | (For Regular RU) |
|  | Packet max|TEL| | <= 1465ns | <= 1420ns |  |

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
|  |  | 1PPS max|TEL| | <= 1465ns | <= 1420ns |  |
|  | Frequency Limit  (For O-DU Class- A) | <= 36ppb | <= 36ppb |  |
|  | Frequency Limit (For O-DU Class- B) | <= 32ppb | <= 32ppb |  |

1. 9.1.11Network Time Synchronization-LLS-C2 (Option-B) configuration
2. (Time Error with Background Traffic)

3

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | SYNC.TE.11 | **Classification** | Synchronization, Performance, Absolute Time Error, Relative Time Error |
| **Test Title** | Measurement of Frequency Error, Maximum Absolute Time Error, Maximum Relative Time Error at O-RU UNI with and without Background Traffic.  LLS-C2 (Option-B) configuration | | |
| **Test Objective:** | 1. Verify the Maximum Absolute Packet Time Error (Max|TEL |) at O-RU UNI with and without background traffic. 2. Verify the Maximum Relative Packet Time Error (Max|TERL |) between two O-RU UNI ports with and without background traffic. 3. Verify the Maximum Absolute 1PPS Time Error (Max|TEL|) at O-RU UNI with and without background traffic. 4. Verify the Maximum Relative 1PPS Time Error (Max|TERL |) between two O-RU UNI ports with and without background traffic. 5. Verify the Time Wander at O-RU UNI. | | |
| **Pre-Req** | Nearest common node to O-RU UNI is O-DU. O-RU UNI is the measurement plane.  Establish Background Traffic in the Fronthaul. | | |
| **Test Topology:** | -  ![Diagram  Description automatically generated](../assets/images/b0f27bc6f42c.jpg) | | |

|  |  |
| --- | --- |
|  | The test topology above illustrates the placement of clock tester at the measurement plane with 1PPS and 10MHz reference connected to clock tester. The tester measurement ports at O-RU UNI connected to the CSRs. |
| **Test Configuration** | 1. Multiple Transport TNEs (HSR1, HSR2, CSR1 and CSR2) connected and configured as shown in the Test Topology. 2. Clock Tester at O-RU UNI receives timing input on its measurement port. 3. Provide 1PPS and 10MHz reference to Clock Tester from GNSS simulator. 4. Traffic Tester for emulating Background Traffic for the desired packet sizes and rate. 5. Proper QoS configuration on TNEs to make sure PTP packets not congested in the network. 6. G.8275.1 Full Timing Support profile. |
| **Procedure:** | **Case-1: Normal Scenario (with no background traffic) Detailed Test procedure:**   1. Connect T-GM to GNSS simulator and ensure that T-GM is locked. 2. Connect O-DU directly to T-GM. 3. Configure O-DU, CSR1 and CSR2 as T-BCs. HSR1 and HSR2 as either T-BCs or T-TCs. 4. Enable G.8275.1 profile on all transport TNEs (HSR and CSR). 5. Connect Clock tester measurement ports to CSRs TimeTransmitter port to monitor the PTP at O-RU UNI. 6. Establish PTP and SyncE session to the fronthaul network.   **Verifications for Maximum Absolute Packet Time Error**   1. Verify that PTP session is up and running between T-GM and CSR. 2. Verify time error measurements using the Clock Tester for the PTP flows from CSR at the O-RU UNI.    1. Max |TE| measured on Clock Tester at the O-RU UNI<= 1465ns (For Enhanced RU)    2. Max |TE| measured on Clock Tester at the O-RU UNI<= 1420ns (For Regular RU)   **Verifications for Maximum Relative Packet Time Error (NOTE1)**   1. Perform time error measurements on Clock Tester at O-RU1 and O-RU2 plane independently. Collect the data (maxTE1, minTE1) and (maxTE2, minTE2) for both O-RU UNI at least for a period of 1000sec. 2. Estimate the Maximum Relative Time Error measurements between the O-RU UNI ports.    1. max|TERL | (1,2) <= 60ns (FR2) (For Enhanced RU)    2. max|TERL | (1,2) <= 190ns (FR1) (For Enhanced RU)    3. max|TERL | (1,2) <= 100ns (FR1) (For Regular RU)   As per ITU-T G.8271.1 Appendix-V1, the requirement is not to measure the continuous relative time error, *TERL*(t), but to measure the maximum possible value it can take. |

|  |  |
| --- | --- |
|  | max|TE | (1,2)the greatest of {maxTEL(1) - minTEL(2)  RL maxTEL(2) - minTEL(1)  **Verifications for Maximum 1PPS Absolute Time Error**   1. Verify that PTP and SyncE session is up and running. 2. Verify 1PPS time error measurements using Clock Tester at O-RU UNI.    1. max|TEL | measured on Clock Tester at the O-RU UNI<= 1465ns (For Enhanced RU)    2. max|TEL | measured on Clock Tester at the O-RU UNI<= 1420ns (For Regular RU)   **Verifications for Maximum Relative 1PPS Time Error**   1. Verify that PTP and SyncE session is up and running. 2. Estimate the Maximum Relative 1PPS Time Error measurements between the O-RU UNI ports.    1. max|TERL | (1,2) <= 60ns (FR2) (For Enhanced RU)    2. max|TERL | (1,2) <= 190ns (FR1) (For Enhanced RU)    3. max|TERL | (1,2) <= 100ns (FR1) (For Regular RU)   **Verifications for Time Wander**   1. Verify the Time Wander using Clock tester at O-RU UNI.    1. Frequency Limit is <= 36ppb (For O-DU Class-A)    2. Frequency Limit is <= 32ppb (For O-DU Class-B)    3. MTIE mask as per the limit specified.   **Case-2: With background traffic Detailed Test procedure:**   1. Configure proper QoS on each of the TNEs so that PTP packets are not congested in the network. 2. Create traffic flows, especially the traffic types, rate and packet sizes should be as per FH requirements. (Refer the Section 7.2 in Xhaul Transport Requirements documents for details). 3. Start traffic flows on all the Traffic Tester ports and make sure that no traffic loss observed.   **Verifications for Maximum Absolute Packet Time Error**   1. Verify that the PTP traffic is not dropped with background traffic. 2. Verify time error measurements using the Clock Tester for the PTP flows from CSR at the O-RU UNI in presence of the Background traffic.    1. Max |TE| measured on Clock Tester at the O-RU UNI<= 1465ns (For Enhanced RU)    2. Max |TE| measured on Clock Tester at the O-RU UNI<= 1420ns (For Regular RU)   **Verifications for Maximum Relative Packet Time Error (NOTE1)**   1. Perform time error measurements on Clock Tester at O-RU1 and O-RU2 plane independently. Collect the data (maxTE1, minTE1) and (maxTE2, minTE2) for both O-RU UNI at least for a period of 1000sec. 2. Estimate the Maximum Relative Time Error measurements between the O-RU UNI ports in presence of the Background traffic.    1. max|TERL | (1,2) <= 60ns (FR2) (For Enhanced RU) |

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
|  | 1. max|TERL | (1,2) <= 190ns (FR1) (For Enhanced RU) 2. max|TERL | (1,2) <= 100ns (FR1) (For Regular RU)   As per ITU-T G.8271.1 Appendix-V1, the requirement is not to measure the continuous relative time error, *TERL*(t), but to measure the maximum possible value it can take.  max|TE | (1,2)the greatest of maxTEL (1) - minTEL(2)  RL {  maxTEL (2) - minTEL(1)  **Verifications for Maximum Absolute 1PPS Time Error**   1. Verify that PTP session is up and running between T-GM and CSR. 2. Verify 1PPS time error measurements on Clock Tester at the O-RU UNI.    1. max|TEL | measured on Clock Tester at the O-RU UNI<= 1465ns (For Enhanced RU)    2. max|TEL | measured on Clock Tester at the O-RU UNI<= 1420ns (For Regular RU)   **Verifications for Maximum Relative 1PPS Time Error**   1. Verify that PTP and SyncE session is up and running. 2. Estimate the Maximum Relative 1PPS Time Error measurements between the O-RU UNI ports.    1. max|TERL | (1,2) <= 60ns (FR2) (For Enhanced RU)    2. max|TERL | (1,2) <= 190ns (FR1) (For Enhanced RU)    3. max|TERL | (1,2) <= 100ns (FR1) (For Regular RU)   **Verifications for Time Wander**   1. Verify the Time Wander using Clock tester at the O-RU UNI.    1. Frequency Limit is <= 36ppb (For O-DU Class-A)    2. Frequency Limit is <= 32ppb (For O-DU Class-B)    3. MTIE mask as per the limit specified.   NOTE1 (As per G.8271.1):  To measure the relative time error, measure the time error from each point with respect to the internal time reference of measurement equipment, and then subtracting time error of one point from the other. | | | | |
| **Pass/Fail Criteria:** | Test shall pass if the Maximum absolute TE, Maximum Relative TE and Time Wander Limit measurement result is below the limit specified with and without background traffic. | | | | |
| **Test Output** |  | End-to-End Network Limit at R- RU UNI | Expected Value | | Observed Value |
| (For Enhanced RU) | (For Regular RU) |
|  | Packet max|TEL| | <= 1465ns | <= 1420ns |  |
|  | Packet max|TERL| | <= 60ns(FR2) | <= 100ns(FR1) |  |
| <= 190ns(FR1) |
|  | 1PPS max|TEL| | <= 1465ns | <= 1420ns |  |
|  | 1PPS max|TERL| | <= 60ns(FR2) | <= 100ns(FR1) |  |
| <= 190ns(FR1) |

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
|  |  | Frequency Limit (For O-DU Class- A) | <= 36ppb | <= 36ppb |  |
|  | Frequency Limit  (For O-DU Class- B) | <= 32ppb | <= 32ppb |  |

1. 9.1.12Network Time Synchronization-LLS-C2 (Option-B) configuration
2. (SyncE network wander limit for chain of EEC and eEEC clock)

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | SYNC.TE.12 | **Classification** | Synchronization, Performance, Frequency Error |
| **Test Title** | Measurement of Time Wander at O-RU UNI. LLS-C2 (Option-B) | | |
| **Test Objective:** | Verify the Time Wander at O-RU UNI. | | |
| **Pre-Req** | TNEs in the network chain should support either ITU-T G.8262 EEC clock or ITU-T G.8262.1 eEEC clock.  O-RU UNI is the measurement plane. | | |
| **Test Topology:** | ![Diagram  Description automatically generated](../assets/images/dbf984e2457a.jpg)  The test topology above illustrates the placement of clock tester at measurement location with 10MHz reference connected to clock tester. The tester measurement ports at O-RU UNI connected to the CSRs. | | |
| **Test Configuration** | 1. Clock Tester at O-RU UNI receives timing input on its measurement port. 2. Provide 10MHz reference to Clock Tester from GNSS simulator. | | |
| **Procedure:** | **Case1: Synchronous chain of ITU-T G.8262 EEC clock Detailed Test procedure:**   1. Configure Synchronous Ethernet with ESMC on all the nodes. 2. Connect Clock tester measurement ports to CSRs to monitor the output wander at the O-RU UNI.   **Verifications needed:**   * 1. Verify that SyncE is up and ESMC-QL is traceable to that of T-GM.   2. Perform the Time Interval Error measurements on Clock Tester at the O-RU UNI. | | |

1. Verify the Time Wander at O-RU UNI.
   1. Frequency Limit is <= 36ppb (For O-DU Class-A)
   2. Frequency Limit is <= 32ppb (For O-DU Class-B)
   3. MTIE mask as per the limit specified.

**Case2: Synchronous chain of ITU-T G.8262.1 eEEC clock Detailed Test procedure:**

1. Configure Synchronous Ethernet with eESMC on all the nodes.
2. Connect Clock tester measurement ports to CSRs to monitor the output wander at the O-RU UNI.

**Verifications needed:**

* 1. Verify that SyncE is up and eESMC-QL is traceable to that of T-GM.
  2. Perform the Time Interval Error measurements on Clock Tester at the O-RU UNI.
  3. Verify the Time Wander at O-RU UNI.
     1. Frequency Limit is <= 36ppb (For O-DU Class-A)
     2. Frequency Limit is <= 32ppb (For O-DU Class-B)
     3. MTIE mask as per the limit specified.

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **Pass/Fail Criteria:** | Test shall pass if the measurement of Time Wander limits are below the specified limits. | | | | |
| **Test Output** |  | End-to-End Network Limit at O-  RU UNI | Expected Value | | Observed Value |
| (Enhanced RU) | (Regular RU) |
|  | Frequency Limit (For O-DU Class- A) | <= 36ppb | <= 36ppb |  |
|  | Frequency Limit  (For O-DU Class- B) | <= 32ppb | <= 32ppb |  |

1. 9.1.13Network Time Synchronization-LLS-C2 (Option-B) configuration
2. (1PPS Time Error on O-RU)

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | SYNC.TE.13 | **Classification** | Synchronization, Performance, Absolute Time Error, Relative Time Error |
| **Test Title** | Measurement of 1PPS Absolute Time Error, 1PPS Relative Time Error at O-RU. LLS-C2 (Option-B) | | |
| **Test Objective:** | 1. Verify the 1PPS Maximum Absolute Time Error at O-RU. 2. Verify the 1PPS Maximum Relative Time Error between the O-RU UNI ports. | | |
| **Pre-Req** | O-RU must support 1PPS out interface.  T-GM/PRTC connected to O-DU via chain of T-BC/T-TCs. O-DU is locked. | | |
| **Test Topology:** | 1PPS Absolute Time Error | | |

|  |  |
| --- | --- |
|  | ![Diagram  Description automatically generated](../assets/images/803e364dacf4.jpg)  1PPS Relative Time Error  ![Diagram  Description automatically generated](../assets/images/a61d7f3f8dfc.jpg) |
| **Test Configuration** | 1. Clock Tester at O-RU UNI receives timing input on its measurement port. 2. Provide 1PPS reference to Clock Tester from GNSS simulator. |
| **Procedure:** | **Case-1: 1PPS Absolute Time Error Measurement. Detailed Test procedure:**   1. Connect T-GM to O-DUs via chain of T-BC/T-TCs. 2. Configure O-DU and CSR as T-BC and HSR as either T-BC or T-TC. 3. Enable G.8275.1 profile on HSR (when acting as T-BC), CSR and T-GM. 4. Connect Clock tester 1PPS measurement ports to O-RU 1PPS output ports. 5. Establish PTP and SyncE session to the fronthaul network.   **Verifications needed:**   * 1. Verify that PTP session is up and running.   2. Verify 1PPS time error measurements using the Clock Tester at O-RU UNI.      1. 1PPS max|TEL| measured on Tester at the O-RU (Enhanced) output <= 1480ns      2. 1PPS max|TEL | measured on Tester at the O-RU (Regular) output <= 1480ns   **Case-1: 1PPS Relative Time Error Measurement.** |

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
|  | **Detailed Test procedure:**   1. Connect 1PPS output ports from both O-RU to tester 1PPS measurement Input ports simultaneously.   **Verifications needed:**   * 1. Verify the 1PPS relative time error between O-RU1 and O-RU2 <= 2960ns | | | | |
| **Pass/Fail Criteria:** | Test shall pass if the 1PPS Maximum absolute TE and 1PPS Maximum Relative TE measurement result is below the limit specified. | | | | |
| **Test Output** |  | End-to-End Network Limit | Expected Value | | Observed Value |
| (Enhanced RU) | (Regular RU) |
|  | 1PPS max|TEL| | <= 1480ns | <= 1480ns |  |
|  | 1PPS max|TERL| | <= 2960ns | <= 2960ns |  |

1 9.1.14Network Time Synchronization-LLS-C3 (Option-A) configuration

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | SYNC.TE.14 | **Classification** | Synchronization, Performance, Absolute Time Error, Relative Time Error |
| **Test Title** | Measurement of Frequency Error, Absolute Time Error, Relative Time Error at O-RU UNI. LLS-C3 (Option-A) | | |
| **Test Objective:** | 1. Verify the Maximum Absolute Packet Time Error (Max|TEL |) at O-RU UNI. 2. Verify the Maximum Relative Packet Time Error (Max|TERL |) between the O-RU UNI ports. 3. Verify the Maximum Absolute 1PPS Time Error (Max|TEL|) at O-RU UNI. 4. Verify the Maximum Relative 1PPS Time Error (Max|TERL |) between the O-RU UNI ports. 5. Verify the Time Wander at O-RU UNI. | | |
| **Pre-Req** | T-GM/PRTC connected to GNSS simulator and ensure T-GM is locked.  O-RU UNI is the measurement plane. | | |

|  |  |
| --- | --- |
| **Test Topology:** | ![Diagram  Description automatically generated](../assets/images/a48bd0e015fa.jpg)  The test topology above illustrates the placement of clock tester at measurement plane with 1PPS and 10MHz reference connected to clock tester. The tester measurement ports at O-RU UNI connected to the CSR. |
| **Test Configuration** | 1. Multiple Transport TNEs (HSR1, HSR2, CSR1 and CSR2) connected and configured as shown in the Test Topology. 2. Clock Tester at O-RU UNI receives timing input on its measurement port. 3. Provide 1PPS and 10MHz reference to Clock Tester from GNSS simulator. 4. G.8275.1 Full Timing Support profile. |
| **Procedure:** | **Detailed Test procedure:**   1. Connect T-GM to GNSS simulator and ensure that T-GM is locked. 2. Configure O-DU as T-TSC, CSR1 and CSR2 as T-BCs. HSR1 and HSR2 as either T-BCs or T-TCs. 3. Enable G.8275.1 profile on all transport TNEs (HSR and CSR). 4. Connect Clock tester measurement ports to CSRs TimeTransmitter port to monitor the PTP at O-RU UNI. 5. Establish PTP and SyncE session to the fronthaul network.   **Verifications for Maximum Absolute Packet Time Error**   1. Verify that PTP session is up and running between T-GM and CSR. 2. Verify time error measurements using the Clock Tester for the PTP flows from CSR at the O-RU UNI.    1. max|TEL | measured on Clock Tester at the O-RU UNI <= 1100ns (For Enhanced RU)    2. max|TEL | measured on Clock Tester at the O-RU UNI <= 1100ns (For Regular RU)   **Verifications for Maximum Relative Packet Time Error (NOTE1)** |

1. Perform time error measurements on Clock Tester at O-RU1 and O-RU2 plane independently. Collect the data (maxTE1, minTE1) and (maxTE2, minTE2) for both O-RU UNI at least for a period of 1000sec.
2. Estimate the Maximum Relative Time Error measurements between the TimeTransmitter ports on CSR1 and CSR2 at O-RU UNI.
   1. max|TERL | (1,2) <= 2200ns

As per ITU-T G.8271.1 Appendix-V1, the requirement is not to measure the continuous relative time error, *TERL*(t), but to measure the maximum possible value it can take.

max|TE | ( )

maxTEL (1) - minTEL(2)

RL

1,2 the greatest of {

maxTEL (2) - minTEL(1)

#### Verifications for Maximum Absolute 1PPS Time Error

1. Verify that PTP and SyncE session is up and running between T-GM and CSR.
2. Verify the 1PPS time error measurements on Clock Tester at the O-RU UNI.
   1. max|TEL | measured on Clock Tester at the O-RU UNI<= 1100ns (For Enhanced RU)
   2. max|TEL | measured on Clock Tester at the O-RU UNI<= 1100ns (For Regular RU)

#### Verifications for Maximum Relative 1PPS Time Error

1. Verify that PTP and SyncE session is up and running.
2. Estimate the Maximum Relative 1PPS Time Error measurements between the O-RU UNI ports.
   1. max|TERL | (1,2) <= 2200ns

#### Verifications for Time Wander

1. Verify the Time Wander using Clock tester at the O-RU UNI.
   1. Frequency Limit is <= 32ppb (For PRTC Class-A)
   2. MTIE mask as per the limit specified. NOTE1 (As per G.8271.1):

To measure the relative time error, measure the time error from each point with

respect to the internal time reference of measurement equipment, and then subtracting time error of one point from the other.

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **Pass/Fail Criteria:** | Test shall pass if the Maximum absolute TE, Maximum Relative TE and Time Wander Limit measurement result is below the limit specified with and without background traffic. | | | | |
| **Test Output** |  | End-to-End  Network Limit at O- RU UNI | Expected Value | | Observed Value |
| (For Enhanced RU) | (For Regular RU) |
|  | Packet max|TEL| | <= 1100ns | <= 1100ns |  |
|  | Packet max|TERL| | <= 2200ns | <= 2200ns |  |
|  | 1PPS max|TEL| | <= 1100ns | <= 1100ns |  |
|  | 1PPS max|TERL| | <= 2200ns | <= 2200ns |  |
|  | Frequency Limit (For PRTC Class-  A) | <= 32ppb | <= 32ppb |  |

1

1 9.1.15Network Time Synchronization-LLS-C3 (Option-B) configuration

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | SYNC.TE.15 | **Classification** | Synchronization, Performance, Absolute Time Error, Relative Time Error |
| **Test Title** | Measurement of Frequency Error, Absolute Time Error, Relative Time Error at O-RU UNI. LLS-C3 (Option-B) | | |
| **Test Objective:** | 1. Verify the Maximum Absolute Packet Time Error (Max|TEL |) at O-RU UNI. 2. Verify the Maximum Relative Packet Time Error (Max|TERL |) between the O-RU UNI ports. 3. Verify the Maximum Absolute 1PPS Time Error (Max|TEL|) at O-RU UNI. 4. Verify the Maximum Relative 1PPS Time Error (Max|TERL |) at O-RU UN. 5. Verify the Time Wander at O-RU UNI. | | |
| **Pre-Req** | T-GM/PRTC connected to GNSS simulator and ensure T-GM is locked.  O-RU UNI is the measurement plane. | | |
| **Test Topology:** | ![Diagram  Description automatically generated](../assets/images/4e25a42fe46a.jpg)  The test topology above illustrates the placement of clock tester at the measurement plane with 1PPS and 10MHz reference connected to clock tester. The tester measurement ports at O-RU UNI connected to the CSR. | | |
| **Test Configuration** | 1. Multiple Transport TNEs (HSR1, HSR2, CSR1 and CSR2) connected and configured as shown in the Test Topology. 2. Clock Tester at O-RU UNI receives timing input on its measurement port. 3. Provide 1PPS and 10MHz reference to Clock Tester from GNSS simulator. 4. G.8275.1 Full Timing Support profile. | | |
| **Procedure:** | **Detailed Test procedure:**   1. Connect T-GM to GNSS Simulator and ensure that T-GM is locked. | | |

1. Configure O-DU as T-TSC, CSR1 and CSR2 as T-BCs. HSR1 and HSR2 as either T-BCs or T-TCs.
2. Enable G.8275.1 profile on all transport TNEs (HSR, CSR and T-BC).
3. Connect Clock tester measurement ports to CSRs TimeTransmitter port to monitor the PTP at O-RU UNI.
4. Establish PTP and SyncE session to the fronthaul network.

#### Verifications for Maximum Absolute Packet Time Error

1. Verify that PTP session is up and running between T-GM and CSR.
2. Verify time error measurements using Clock Tester for the PTP flows from CSR at the O-RU UNI.
   1. max|TEL | measured on Clock Tester at the O-RU UNI <= 1100ns (For Enhanced RU)
   2. max|TEL | measured on Clock Tester at the O-RU UNI <= 1100ns (For Regular RU)

#### Verifications for Maximum Relative Packet Time Error (NOTE1)

1. Perform time error measurements on Clock Tester at O-RU1 and O-RU2 plane independently. Collect the data (maxTE1, minTE1) and (maxTE2, minTE2) for both O-RU UNI at least for a period of 1000sec.
2. Estimate the Maximum Relative Time Error measurements between the O-RU UNI ports.
   1. max|TERL | (1,2) <= 60ns (FR2) (For Enhanced RU)
   2. max|TERL | (1,2) <= 190ns (FR1) (For Enhanced RU)
   3. max|TERL | (1,2) <= 100ns (FR1) (For Regular RU)

As per ITU-T G.8271.1 Appendix-V1, the requirement is not to measure the continuous relative time error, *TErl*(t), but to measure the maximum possible value it can take.

max|TE | ( )

maxTEL (1) - minTEL(2)

RL

1,2 the greatest of {

maxTEL (2) - minTEL(1)

#### Verifications for Maximum Absolute 1PPS Time Error

1. Verify that PTP session is up and running between T-GM and CSR.
2. Verify the 1PPS time error measurements on Clock Tester at the O-RU UNI.
   1. Max 1PPS |TE| measured on Clock Tester at the O-RU UNI<= 1100ns (For Enhanced RU)
   2. max|TEL | measured on Clock Tester at the O-RU (Regular) UNI <= 1100ns

(For Regular RU)

#### Verifications for Maximum Relative 1PPS Time Error

1. Verify that PTP and SyncE session is up and running.
2. Estimate the Maximum Relative 1PPS Time Error measurements between the O-RU UNI ports.
   1. max|TERL | (1,2) <= 60ns (FR2) (For Enhanced RU)
   2. max|TERL | (1,2) <= 190ns (FR1) (For Enhanced RU)
   3. max|TERL | (1,2) <= 100ns (FR1) (For Regular RU)

#### Verifications for Time Wander

1. Verify the Time Wander using Clock tester at the O-RU UNI.

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
|  | 1. Frequency Limit is <= 32ppb (For PRTC Class-A) 2. MTIE mask as per the limit specified.   NOTE1:  To measure the relative time error, measure the time error from each point with respect to the internal time reference of measurement equipment, and then subtracting time error of one point from the other. | | | | |
| **Pass/Fail Criteria:** | Test shall pass if the Maximum absolute TE, Maximum Relative TE and Time Wander Limit measurement result is below the limit specified. | | | | |
| **Test Output** |  | End-to-End Network Limit at O- RU UNI | Expected Value | | Observed Value |
| (For Enhanced RU) | (For Regular RU) |
|  | Packet max|TEL| | <= 1100ns | <= 1100ns |  |
|  | Packet max|TERL| | <= 60ns(FR2) | <= 100ns(FR1) |  |
| <= 190ns(FR1) |
|  | 1PPS max|TEL| | <= 1100ns | <= 1100ns |  |
|  | 1PPS max|TERL| | <= 60ns(FR2) | <= 100ns(FR1) |  |
| <= 190ns(FR1) |
|  | Frequency Limit (For PRTC Class- A) | <= 32ppb | <= 32ppb |  |

1. 9.1.16 Network Time Synchronization-LLS-C3 (Option-B) configuration
2. (Time Error with Background Traffic)

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | SYNC.TE.16 | **Classification** | Synchronization, Performance, Absolute Time Error, Relative Time Error |
| **Test Title** | Measurement of Frequency Error, Absolute Time Error, Relative Time Error at O-RU UNI with and without background traffic. LLS-C3 (Option-B) | | |
| **Test Objective:** | 1. Verify the Maximum Absolute Packet Time Error (Max|TEL |) at O-RU UNI with and without background traffic. 2. Verify the Maximum Relative Packet Time Error (Max|TERL |) between the O-RU UNI ports. 3. Verify the Maximum Absolute 1PPS Time Error (Max|TEL|) at O-RU UNI with and without background traffic. 4. Verify the Maximum Relative 1PPS Time Error (Max|TERL |) at O-RU UNI with and without background traffic. 5. Verify the Time Wander at O-RU UNI. | | |
| **Pre-Req** | PRTC/T-GM connected to GNSS simulator and ensure that T-GM is locked.  O-RU UNI is the measurement plane. | | |

|  |  |
| --- | --- |
| **Test Topology:** | ![Diagram  Description automatically generated](../assets/images/7ad5d3dc627d.jpg)  The test topology above illustrates the placement of clock tester at the measurement plane with 1PPS and 10MHz reference connected to clock tester. The tester measurement ports at O-RU UNI connected to the CSR. |
| **Test Configuration** | 1. Multiple Transport TNEs (HSR1, HSR2, CSR1, CSR2 and T-BC) connected and configured as shown in the Test Topology. 2. Clock Tester at O-RU UNI receives timing input on its measurement port. 3. Provide 1PPS and 10MHz reference to Clock Tester from GNSS simulator. 4. Traffic Tester for emulating Background Traffic for the desired packet sizes and rate. 5. Proper QoS configuration on TNEs to make sure PTP packets not congested in the network. 6. G.8275.1 Full Timing Support profile. |
| **Procedure:** | **Case-1: Normal Scenario (with no background traffic) Detailed Test procedure:**   1. Connect T-GM to GNSS Simulator and ensure that T-GM is locked. 2. Configure O-DU as T-TSC, CSR1 and CSR2 as T-BCs. HSR1 and HSR2 as either T-BCs or T-TCs. 3. Enable G.8275.1 profile on all transport TNEs (HSR, CSR and T-BC). 4. Connect Clock tester measurement ports to CSRs TimeTransmitter port to monitor the PTP at O-RU UNI. 5. Establish PTP and SyncE session to the fronthaul network.   **Verifications for Maximum Absolute Packet Time Error**   1. Verify that PTP session is up and running between T-GM and CSR. 2. Verify time error measurements using the Clock Tester for the PTP flows from CSR at the O-RU UNI. |

|  |  |
| --- | --- |
|  | 1. max|TEL | measured on Clock Tester at the O-RU UNI <= 1100ns (For Enhanced RU) 2. max|TEL | measured on Clock Tester at the O-RU UNI <= 1100ns (For Regular RU)   **Verifications for Maximum Relative Packet Time Error (NOTE1)**   1. Perform time error measurements on Clock Tester at O-RU1 and O-RU2 plane independently. Collect the data (maxTE1, minTE1) and (maxTE2, minTE2) for both O-RU UNI at least for a period of 1000sec. 2. Estimate the Maximum Relative Time Error measurements between the O-RU UNI ports.    1. max|TERL | (1,2) <= 60ns (FR2) (For Enhanced RU)    2. max|TERL | (1,2) <= 190ns (FR1) (For Enhanced RU)    3. max|TERL | (1,2) <= 100ns (FR1) (For Regular RU)   As per ITU-T G.8271.1 Appendix-V1, the requirement is not to measure the continuous relative time error, *TErl*(t), but to measure the maximum possible value it can take.  max|TE | (1,2)the greatest of maxTEL (1) - minTEL(2)  RL {  maxTEL (2) - minTEL(1)  **Verifications for Maximum Absolute 1PPS Time Error**   1. Verify that PTP session is up and running between T-GM and CSR. 2. Verify the 1PPS time error measurements on Clock Tester at the O-RU UNI.    1. max|TEL | measured on Clock Tester at the O-RU UNI <= 1100ns (For Enhanced RU)    2. max|TEL | measured on Clock Tester at the O-RU UNI <= 1100ns (For Regular RU)   **Verifications for Maximum Relative 1PPS Time Error**   1. Verify that PTP and SyncE session is up and running. 2. Estimate the Maximum Relative 1PPS Time Error measurements between the O-RU UNI ports.    1. max|TERL | (1,2) <= 60ns (FR2) (For Enhanced RU)    2. max|TERL | (1,2) <= 190ns (FR1) (For Enhanced RU)    3. max|TERL | (1,2) <= 100ns (FR1) (For Regular RU)   **Verifications for Time Wander**   1. Verify the Time Wander using Clock tester at the O-RU UNI.    1. Frequency Limit is <= 32ppb (For PRTC Class-A)    2. MTIE mask as per the limit specified.   **Case-2: With background traffic Detailed Test procedure:**   1. Configure proper QoS on each of the TNEs so that PTP packets are not congested in the network. 2. Create traffic flows, especially the traffic types, rate and packet sizes should be as per FH requirements. (Refer the Section 7.2 in Xhaul Transport Requirements documents for details). |

|  |  |
| --- | --- |
|  | 3. Start traffic flows on all the Traffic Tester ports and make sure that no traffic loss observed.  **Verifications for Maximum Absolute Packet Time Error**   1. Verify that the PTP traffic is not dropped with background traffic. 2. Verify time error measurements using Clock Tester for the PTP flows from CSR at the O-RU UNI in presence of the Background traffic.    1. max|TEL | measured on Clock Tester at the O-RU UNI <= 1100ns (For enhanced RU)    2. max|TEL | measured on Clock Tester at the O-RU UNI <= 1100ns (For Regular RU)   **Verifications for Maximum Relative Packet Time Error (NOTE1)**   1. Perform time error measurements on Clock Tester at O-RU1 and O-RU2 plane independently. Collect the data (maxTE1, minTE1) and (maxTE2, minTE2) for both O-RU UNI at least for a period of 1000sec. 2. Estimate the Maximum Relative Time Error measurements between the O-RU UNI ports in presence of the Background traffic.    1. max|TERL | (1,2) <= 60ns (FR2) (For Enhanced RU)    2. max|TERL | (1,2) <= 190ns (FR1) (For Enhanced RU)    3. max|TERL | (1,2) <= 100ns (FR1) (For Regular RU)   As per ITU-T G.8271.1 Appendix-V1, the requirement is not to measure the continuous relative time error, *TERL*(t), but to measure the maximum possible value it can take.  max|TE | (1,2)the greatest of maxTEL (1) - minTEL(2)  RL {  maxTEL (2) - minTEL(1)  **Verifications for Maximum Absolute 1PPS Time Error**   1. Verify that PTP session is up and running between T-GM and CSR. 2. Verify 1PPS time error measurements on Clock Tester at the O-RU UNI in presence of the Background traffic.    1. max|TEL | measured on Clock Tester at the O-RU UNI <= 1100ns (For Enhanced RU)    2. max|TEL | measured on Clock Tester at the O-RU UNI <= 1100ns (For Regular RU)   **Verifications for Maximum Relative 1PPS Time Error**   1. Verify that PTP and SyncE session is up and running. 2. Estimate the Maximum Relative 1PPS Time Error measurements between the TimeTransmitter ports of CSR1 and CSR2 at O-RU UNI in presence of Background Traffic.    1. max|TERL | (1,2) <= 60ns (FR2) (For Enhanced RU)    2. max|TERL | (1,2) <= 190ns (FR1) (For Enhanced RU)    3. max|TERL | (1,2) <= 100ns (FR1) (For Regular RU)   **Verifications for Time Wander**   1. Verify the Time Wander using Clock tester at the O-RU UNI.    1. Frequency Limit is <= 32ppb (For PRTC Class-A)    2. MTIE mask as per the limit specified. |

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
|  | NOTE1 (As per G.8271.1):  To measure the relative time error, measure the time error from each point with respect to the internal time reference of measurement equipment, and then subtracting time error of one point from the other. | | | | |
| **Pass/Fail Criteria:** | Test shall pass if the Maximum absolute TE, Maximum Relative TE and Time Wander Limit measurement result is below the limit specified with and without background traffic. | | | | |
| **Test Output** |  | End-to-End Network Limit at O-  RU UNI | Expected Value | | Observed Value |
| (For Enhanced RU) | (For Regular RU) |
|  | Packet max|TEL| | <= 1100ns | <= 1100ns |  |
|  | Packet max|TERL| | <= 60ns(FR2) | <= 100ns(FR1) |  |
| <= 190ns(FR1) |
|  | 1PPS max|TEL| | <= 1100ns | <= 1100ns |  |
|  | 1PPS max|TERL| | <= 60ns(FR2) | <= 100ns(FR1) |  |
| <= 190ns(FR1) |
|  | Frequency Limit (For PRTC Class-  A) | <= 32ppb | <= 32ppb |  |

1. 9.1.17Network Time Synchronization-LLS-C3 (Option-B) configuration
2. (PTP Holdover test)

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | SYNC.TE.17 | **Classification** | Synchronization, Performance, Absolute Time Error, Relative Time Error |
| **Test Title** | Holdover performance test over LLS-C3 configuration | | |
| **Test Objective:** | 1. Verify the Maximum Absolute Packet Time Error (Max|TEL |) at O-RU UNI. 2. Verify the Maximum Relative Packet Time Error (Max|TERL |) between the O-RU UNI ports. 3. Verify the Maximum Absolute 1PPS Time Error (Max|TEL|) at O-RU UNI. 4. Verify the Maximum Relative 1PPS Time Error (Max|TERL |) at O-RU UNI. 5. Verify the Time Wander at O-RU UNI. | | |
| **Pre-Req** | PRTC/T-GM connected to GNSS Simulator and locked.  O-RU UNI is the measurement plane. | | |

|  |  |
| --- | --- |
| **Test Topology:** | ![Diagram  Description automatically generated](../assets/images/b135a2ab8554.jpg)  The test topology above illustrates the placement of clock tester at the measurement plane with 1PPS and 10MHz reference connected to clock tester. The tester measurement ports at O-RU UNI connected to the CSR. |
| **Test Configuration** | 1. Multiple Transport TNEs (HSR, HSR and CSRs) connected and configured as shown in the Test Topology. 2. Clock Tester at O-RU UNI receives timing input on its measurement port. 3. Provide 1PPS and 10MHz reference to Clock Tester from GNSS simulator. 4. G8275.1 Full Timing Support profile |
| **Procedure:** | **Case-1: Normal Scenario (GNSS connectivity to T-GM is Up) Detailed Test procedure:**   1. Connect T-GM to GNSS Simulator and ensure that T-GM is locked. 2. Configure O-DU as T-TSC, CSR1 and CSR2 as T-BCs. HSR1 and HSR2 as either T-BCs or T-TCs. 3. Enable G.8275.1 profile on all transport TNEs (HSR, CSR and T-BC). 4. Connect Clock tester measurement ports to CSRs TimeTransmitter port to monitor PTP at the O-RU UNI. 5. Establish PTP and SyncE session to the fronthaul network.   **Verifications for Maximum Absolute Packet Time Error**   1. Verify that PTP session is up and running between T-GM and CSR. 2. Verify time error measurements using Clock Tester for the PTP flows from CSR at the O-RU UNI.    1. max|TEL | measured on Clock Tester at the O-RU UNI <= 1100ns (For Enhanced RU)    2. max|TEL | measured on Clock Tester at the O-RU UNI <= 1100ns (For Regular RU)   **Verifications for Maximum Relative Packet Time Error (NOTE1)** |

|  |  |
| --- | --- |
|  | 1. Perform time error measurements on Clock Tester at O-RU1 and O-RU2 plane independently. Collect the data (maxTE1, minTE1) and (maxTE2, minTE2) for both O-RU UNI at least for a period of 1000sec. 2. Estimate the Maximum Relative Time Error measurements between the O-RU UNI ports.    1. max|TERL | (1,2) <= 60ns (FR2) (For Enhanced RU)    2. max|TERL | (1,2) <= 190ns (FR1) (For Enhanced RU)    3. max|TERL | (1,2) <= 100ns (FR1) (For Regular RU)   As per ITU-T G.8271.1 Appendix-V1, the requirement is not to measure the continuous relative time error, *TERL*(t), but to measure the maximum possible value it can take.  max|TE | (1,2)the greatest of maxTEL (1) - minTEL(2)  RL {  maxTEL (2) - minTEL(1)  **Verifications for Maximum Absolute 1PPS Time Error**   1. Verify that PTP session is up and running between T-GM and CSR. 2. Verify the 1PPS time error measurements using Clock Tester at the O-RU UNI.    1. max|TEL | measured on Clock Tester at the O-RU UNI <= 1100ns (For Enhanced RU)    2. max|TEL | measured on Clock Tester at the O-RU UNI <= 1100ns (For Regular RU)   **Verifications for Maximum Relative 1PPS Time Error**   1. Verify that PTP and SyncE session is up and running. 2. Estimate the Maximum Relative 1PPS Time Error measurements between the O-RU UNI ports.    1. max|TERL | (1,2) <= 60ns (FR2) (For Enhanced RU)    2. max|TERL | (1,2) <= 190ns (FR1) (For Enhanced RU)    3. max|TERL | (1,2) <= 100ns (FR1) (For Regular RU)   **Verifications for Time Wander**   1. Verify the Time Wander using Clock tester at the O-RU UNI.    1. Frequency Limit is <= 32ppb (For PRTC Class-A)    2. MTIE mask as per the limit specified.   **Case-2: GNSS Connectivity to T-GM Fails (Short-interruption for 5 min) Detailed Test procedure:**   1. Simulate a Fault (Link down) between GNSS and T-GM for a short duration of 5 min.   **Verifications for Maximum Absolute Packet Time Error**   1. Verify that the T-GM moves to Phase Holdover and start advertising Clock Class=7. 2. Verify time error measurements on Clock Tester for the PTP flows from CSR at the O-RU UNI in while the T-GM is holdover.    1. max|TEL | measured on Clock Tester at the O-RU (Enhanced) UNI <= 1350ns    2. max|TEL | measured on Clock Tester at the O-RU (Regular) UNI <= 1350ns |

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
|  | **Verifications for Maximum Relative Packet Time Error (NOTE1)**   1. Perform time error measurements on Clock Tester at O-RU1 and O-RU2 plane independently. Collect the data (maxTE1, minTE1) and (maxTE2, minTE2) for both O-RU UNI at least for a period of 1000sec. 2. Estimate the Maximum Relative Time Error measurements between the O-RU UNI ports.    1. max|TERL | (1,2) <= 60ns (FR2) (For Enhanced RU)    2. max|TERL | (1,2) <= 190ns (FR1) (For Enhanced RU)    3. max|TERL | (1,2) <= 100ns (FR1) (For Regular RU)   As per ITU-T G.8271.1 Appendix-V1, the requirement is not to measure the continuous relative time error, *TERL*(t), but to measure the maximum possible value it can take.  max|TE | (1,2)the greatest of maxTEL (1) - minTEL(2)  RL {  maxTEL (2) - minTEL(1)  **Verifications for Maximum Absolute 1PPS Time Error**   1. Verify that PTP session is up and running between T-GM and CSR. 2. Verify 1PPS time error measurements on Clock Tester at the O-RU UNI.    1. max|TEL | measured on Clock Tester at the O-RU UNI <= 1350ns (For Enhanced RU)    2. max|TEL | measured on Clock Tester at the O-RU UNI <= 1350ns (For Regular RU)   **Verifications for Maximum Relative 1PPS Time Error**   1. Verify that PTP and SyncE session is up and running. 2. Estimate the Maximum Relative 1PPS Time Error measurements between the TimeTransmitter ports of CSR1 and CSR2 at O-RU UNI.    1. max|TERL | (1,2) <= 60ns (FR2) (For Enhanced RU)    2. max|TERL | (1,2) <= 190ns (FR1) (For Enhanced RU)    3. max|TERL | (1,2) <= 100ns (FR1) (For Regular RU)   **Verifications for Time Wander**   1. Verify the Time Wander using Clock tester at the O-RU UNI.    1. Frequency Limit is <= 32ppb (For PRTC Class-A)    2. MTIE mask as per the limit specified. | | | | |
| **Pass/Fail Criteria:** | Test shall pass if the Maximum absolute TE, Maximum Relative TE and Wander Limit measurement result remains under the limits for the entire holdover event,  including the restoration. | | | | |
| **Test Output** |  | End-to-End Network Limit at O- RU UNI | Expected Value (Normal Case) | | Observed Value |
| (For Enhanced RU) | (For Regular RU) |
|  | Packet max|TEL| | <= 1100ns | <= 1100ns |  |
|  | Packet max|TERL| | <= 60ns(FR2) | <= 100ns(FR1) |  |
| <= 190ns(FR1) |
|  | 1PPS max|TEL| | <= 1100ns | <= 1100ns |  |
|  | 1PPS max|TERL| | <= 60ns(FR2) | <= 100ns(FR1) |  |
| <= 190ns(FR1) |

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
|  |  | Frequency Limit (For PRTC Class- A) | <= 32ppb | <= 32ppb |  |

1

1. 9.1.18Network Time Synchronization-LLS-C3 (Option-B) configuration
2. (PTP Fail-over/redundancy test)

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | SYNC.TE.18 | **Classification** | Synchronization, Performance, Time Error |
| **Test Title** | Failover performance test over LLS-C3 configuration | | |
| **Test Objective:** | Perform the below test at the O-RU UNI when GNSS to the Edge PRTC/T-GM is disconnected and backup timing from Network T-GM is switched over to maintain the synchronization:   1. Verify the Maximum Absolute Packet Time Error (Max|TEL |) at O-RU UNI. 2. Verify the Maximum Relative Packet Time Error (Max|TERL |) between the O-RU UNI ports. 3. Verify the Maximum Absolute 1PPS Time Error (Max|TEL|) at O-RU UNI. 4. Verify the Maximum Relative 1PPS Time Error (Max|TERL |) at O-RU UNI. 5. Verify the Time Wander at O-RU UNI. | | |
| **Pre-Req** | Edge PRTC/T-GM connected to GNSS Simulator, and T-GM is locked. Network T-GM connected to GNSS Simulator and locked.  O-RU UNI is the measurement plane. | | |
| **Test Topology:** | ![Diagram  Description automatically generated](../assets/images/ba5422832c43.jpg)  The test topology above illustrates the placement of clock tester at the measurement plane with 1PPS and 10MHz reference connected to clock tester. The tester measurement ports at O-RU UNI connected to the CSR. | | |
| **Test Configuration** | 1. Multiple Transport TNEs (HSR1, HSR2, CSR1 and CSR2) connected and configured as shown in the Test Topology. | | |

|  |  |
| --- | --- |
|  | 1. Clock Tester at O-RU UNI receives timing input on its measurement port. 2. Provide 1PPS and 10MHz reference to Clock Tester from GNSS simulator. 3. G8275.1 profile configured for primary and backup path providing Full Timing Support (FTS) |
| **Procedure:** | **Case-1: Normal Scenario (GNSS connectivity to both GM is Up) Detailed Test procedure:**   1. Connect Edge PRTC/T-GM and Network T-GM to the GNSS Simulator and ensure both T-GMs locked. 2. Enable network connectivity among T-GMs, CSRs and HSRs. 3. Enable both Edge T-GM and Network T-GM with G.8275.1 profile. 4. Establish PTP connection (G.8275.1) sessions at each of the TNEs. 5. Configure Clock Tester for measurement profiles. 6. Perform the Time error measurement.   **Verifications for Maximum Absolute Packet Time Error**   1. Verify that PTP session is up and running between Edge T-GM and CSR. 2. Verify time error measurements using Clock Tester for the PTP flows from CSR at the O-RU UNI.    1. max|TEL | measured on Clock Tester at the O-RU UNI <= 1100ns (For Enhanced RU)    2. max|TEL | measured on Clock Tester at the O-RU UNI <= 1100ns (For Regular RU)   **Verifications for Maximum Relative Packet Time Error (NOTE1)**   1. Perform time error measurements on Clock Tester at O-RU1 and O-RU2 plane independently. Collect the data (maxTE1, minTE1) and (maxTE2, minTE2) for both O-RU UNI at least for a period of 1000sec. 2. Estimate the Maximum Relative Time Error measurements between the O-RU UNI ports.    1. max|TERL | (1,2) <= 60ns (FR2) (For Enhanced RU)    2. max|TERL | (1,2) <= 190ns (FR1) (For Enhanced RU)    3. max|TERL | (1,2) <= 100ns (FR1) (For Regular RU)   As per ITU-T G.8271.1 Appendix-V1, the requirement is not to measure the continuous relative time error, *TERL*(t), but to measure the maximum possible value it can take.  max|TE | (1,2)the greatest of maxTEL (1) - minTEL(2)  RL {  maxTEL (2) - minTEL(1)  **Verifications for Maximum Absolute 1PPS Time Error**   1. Verify that PTP session is up and running between T-GM and CSR. 2. Verify the 1PPS time error measurements on Clock Tester at the O-RU UNI.    1. max|TEL | measured on Clock Tester at the O-RU UNI <= 1100ns (For Enhanced RU)    2. max|TEL | measured on Clock Tester at the O-RU UNI <= 1100ns (For Regular RU)   **Verifications for Maximum Relative 1PPS Time Error** |

|  |  |
| --- | --- |
|  | 1. Verify that PTP and SyncE session is up and running. 2. Estimate the Maximum Relative 1PPS Time Error measurements between the O-RU UNI ports.    1. max|TERL | (1,2) <= 60ns (FR2) (For Enhanced RU)    2. max|TERL | (1,2) <= 190ns (FR1) (For Enhanced RU)    3. max|TERL | (1,2) <= 100ns (FR1) (For Regular RU)   **Verifications for Time Wander**   1. Verify the Time Wander using Clock tester at the O-RU UNI.    1. Frequency Limit is <= 32ppb (For PRTC Class-A)    2. MTIE mask as per the limit specified. **Case-2: GNSS Connectivity to Edge T-GM Fails Detailed Test procedure:** 2. Disconnect GNSS Simulator connection to Edge PRTC/T-GM and switch the Timing source to Network T-GM. 3. Monitor and log the Time Error at specified time interval.   **Verifications for Maximum Absolute Packet Time Error**   1. Verify that the Edge T-GM moves to Phase Holdover and start advertising Clock Class=7 and CSR recover clock from Network T-GM via FTS network based on A-BTCA.   Verify time error measurements using Clock Tester for the PTP flows from CSR at the O-RU UNI in while the Edge T-GM is in holdover.   * 1. max|TEL | measured on Clock Tester at the O-RU UNI <= 1100ns (For Enhanced RU)   2. max|TEL | measured on Clock Tester at the O-RU UNI <= 1100ns (For Regular RU)   **Verifications for Maximum Relative Packet Time Error (NOTE1)**   1. Perform time error measurements on Clock Tester at O-RU1 and O-RU2 plane independently. Collect the data (maxTE1, minTE1) and (maxTE2, minTE2) for both O-RU UNI at least for a period of 1000sec. 2. Estimate the Maximum Relative Time Error measurements between the O-RU UNI ports.    1. max|TERL | (1,2) <= 60ns (FR2) (For Enhanced RU)    2. max|TERL | (1,2) <= 190ns (FR1) (For Enhanced RU)    3. max|TERL | (1,2) <= 100ns (FR1) (For Regular RU)   As per ITU-T G.8271.1 Appendix-V1, the requirement is not to measure the continuous relative time error, *TERL*(t), but to measure the maximum possible value it can take.  max|TE | (1,2)the greatest of maxTEL (1) - minTEL(2)  RL {  maxTEL (2) - minTEL(1)  **Verifications for Maximum Absolute 1PPS Time Error**   1. Verify that PTP session is up and running between T-GM and CSR. 2. Verify 1PPS time error measurements on Clock Tester at the O-RU UNI.    1. max|TEL | measured on Clock Tester at the O-RU UNI <= 1100ns (For Enhanced RU) |

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
|  | b. max|TEL | measured on Clock Tester at the O-RU UNI <= 1100ns (For Regular RU)  **Verifications for Maximum Relative 1PPS Time Error**   1. Verify that PTP and SyncE session is up and running. 2. Estimate the Maximum Relative 1PPS Time Error measurements between the O-RU UNI ports.    1. max|TERL | (1,2) <= 60ns (FR2) (For Enhanced RU)    2. max|TERL | (1,2) <= 190ns (FR1) (For Enhanced RU)    3. max|TERL | (1,2) <= 100ns (FR1) (For Regular RU)   **Verifications for Time Wander**   1. Verify the Time Wander using Clock tester at the O-RU UNI.    1. Frequency Limit is <= 32ppb (For PRTC Class-A)    2. MTIE mask as per the limit specified. | | | | |
| **Pass/Fail Criteria:** | Test shall pass if the Maximum absolute TE, Maximum Relative TE and Wander Limit measurement result is below the limit specified. | | | | |
| **Test Output** |  | End-to-End Network Limit at O- RU UNI | Expected Value | | Observed Value |
| (For Enhanced RU) | (For Regular RU) |
|  | Packet max|TEL| | <= 1100ns | <= 1100ns |  |
|  | Packet max|TERL| | <= 60ns(FR2) | <= 100ns(FR1) |  |
| <= 190ns(FR1) |
|  | 1PPS max|TEL| | <= 1100ns | <= 1100ns |  |
|  | 1PPS max|TERL| | <= 60ns(FR2) | <= 100ns(FR1) |  |
| <= 190ns(FR1) |
|  | Frequency Limit (PRTC Class-A) | <= 32ppb | <= 32ppb |  |

1

2 9.1.19Network Time Synchronization-LLS-C3 (Option-C) configuration

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | SYNC.TE.19 | **Classification** | Synchronization, Performance, Absolute Time Error, Relative Time Error |
| **Test Title** | Measurement of Frequency Error, Absolute Time Error, Relative Time Error at O-RU UNI. LLS-C3 (Option-C) | | |
| **Test Objective:** | 1. Verify the Maximum Absolute Packet Time Error (Max|TEL |) at O-RU UNI. 2. Verify the Maximum Relative Packet Time Error (Max|TERL |) between the O-RU UNI ports. 3. Verify the Maximum Absolute 1PPS Time Error (Max|TEL|) at O-RU UNI. 4. Verify the Maximum Relative 1PPS Time Error (Max|TERL |) at O-RU UNI. 5. Verify the Time Wander at O-RU UNI. | | |
| **Pre-Req** | T-GM is placed either in the Midhaul or Backhaul.  T-GM/PRTC connected to GNSS Simulator, and T-GM is locked. O-RU UNI is the measurement plane. | | |

|  |  |
| --- | --- |
| **Test Topology:** | ![Diagram  Description automatically generated](../assets/images/266110680018.jpg)  The test topology above illustrates the placement of clock tester at the measurement plane with 1PPS and 10MHz reference connected to clock tester. The tester measurement ports at O-RU UNI connected to the CSR. |
| **Test Configuration** | 1. Multiple Transport TNEs (HSR, HSR-B and CSRs) connected and configured as shown in the Test Topology. 2. Clock Tester at O-RU UNI receives timing input on its measurement port. 3. Provide 1PPS and 10MHz reference to Clock Tester from GNSS simulator. 4. G8275.1 profile for primary and G8275.2 profile for backup and provides partial timing support. |
| **Procedure:** | **Detailed Test procedure:**   1. Connect T-GM to GNSS Simulator and ensure that T-GM is locked. 2. Configure O-DU as T-TSC, CSR1 and CSR2 as T-BCs. HSR1 and HSR2 as either T-BCs or T-TCs. 3. Enable G.8275.1 profile on all transport TNEs (HSR, CSR and T-BC). 4. Connect Clock tester measurement ports to CSRs TimeTransmitter port to monitor PTP at the O-RU UNI. 5. Establish PTP and SyncE session to the fronthaul network.   **Verifications for Maximum Absolute Packet Time Error**   1. Verify that PTP session is up and running between T-GM and CSR. 2. Verify time error measurements using Clock Tester for the PTP flows from CSR at the O-RU UNI.    1. max|TEL | measured on Clock Tester at the O-RU UNI <= 1100ns (For Enhanced RU)    2. max|TEL | measured on Clock Tester at the O-RU UNI <= 1100ns (For Regular RU)   **Verifications for Maximum Relative Packet Time Error (NOTE1)**   1. Perform time error measurements on Clock Tester at O-RU1 and O-RU2 plane independently. Collect the data (maxTE1, minTE1) and (maxTE2, minTE2) for both O-RU UNI at least for a period of 1000sec. 2. Estimate the Maximum Relative Time Error measurements between the O-RU UNI ports.    1. max|TERL | (1,2) <= 60ns (FR2) (For Enhanced RU) |

1. max|TERL | (1,2) <= 190ns (FR1) (For Enhanced RU)
2. max|TERL | (1,2) <= 100ns (FR1) (For Regular RU)

As per ITU-T G.8271.1 Appendix-V1, the requirement is not to measure the continuous relative time error, *TERL*(t), but to measure the maximum possible value it can take.

max|TE | ( )

maxTEL (1) - minTEL(2)

RL

1,2 the greatest of {

maxTEL (2) - minTEL(1)

#### Verifications for Maximum Absolute 1PPS Time Error

1. Verify that PTP session is up and running between T-GM and CSR.
2. Verify the 1PPS time error measurements on Clock Tester at the O-RU UNI.
   1. max|TEL | measured on Clock Tester at the O-RU UNI <= 1100ns (For Enhanced RU)
   2. max|TEL | measured on Clock Tester at the O-RU UNI <= 1100ns (For Regular RU)

#### Verifications for Maximum Relative 1PPS Time Error

1. Verify that PTP and SyncE session is up and running.
2. Estimate the Maximum Relative 1PPS Time Error measurements between the O-RU UNI ports.
   1. max|TERL | (1,2) <= 60ns (FR2) (For Enhanced RU)
   2. max|TERL | (1,2) <= 190ns (FR1) (For Enhanced RU)
   3. max|TERL | (1,2) <= 100ns (FR1) (For Regular RU)

#### Verifications for Time Wander

1. Verify the Time Wander using Clock tester at the O-RU UNI.
   1. Frequency Limit is <= 32ppb (For PRTC Class-A)
   2. MTIE mask as per the limit specified.

NOTE1:

To measure the relative time error, measure the time error from each point with respect to the internal time reference of measurement equipment, and then subtracting time error of one point from the other.

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **Pass/Fail Criteria:** | Test shall pass if the Maximum absolute TE, Maximum Relative TE and Wander Limit measurement result is below the limit specified. | | | | |
| **Test Output** |  | End-to-End Network Limit at O-  RU UNI | Expected Value | | Observed Value |
| (For Enhanced RU) | (For Regular RU) |
|  | Packet max|TEL| | <= 1100ns | <= 1100ns |  |
|  | Packet max|TERL| | <= 60ns(FR2) | <= 100ns(FR1) |  |
| <= 190ns(FR1) |
|  | 1PPS max|TEL| | <= 1100ns | <= 1100ns |  |
|  | 1PPS max|TERL| | <= 60ns(FR2) | <= 100ns(FR1) |  |
| <= 190ns(FR1) |
|  | Frequency Limit (If PRTC is Class-A  device) | <= 32ppb | <= 32ppb |  |

## 9.2 Timing Solution & Resiliency in Ring Topology (LLS-C3)

1. This chapter delivers the testing methodologies, parameters and performance limits for PTP-based network
2. technologies in normal and fail-over or rearrangement scenarios of T-GM and TNEs across various network
3. segments in the LLS-C3 configurations. The chapter is organized in different sections each representing a
4. typical synchronization configuration mode. For each mode, all related metrics are identified, and limits are
5. provided to deliver pass/fail verdicts.

7

1. Various synchronization resiliency options have been defined in the O-RAN WG9 Synchronization
2. Architecture and Solution Specification. Depending on the specific O-RAN deployment being considered, not
3. all of them might be relevant. When testing the S-Plane, the System Integrator shall identify which of the test
4. cases are relevant depending on the specific deployment scenarios addressed.

12

1. Following high level options have been covered in this chapter and each of these options, clock
2. advertisements and performance limits are discussed for normal and failover scenarios for T-GMs and TNEs
3. in Backhaul, Midhaul and Fronthaul network segments in LLS-C3 configuration. Also scenarios like
4. Asymmetry and Passive Port Monitoring are covered.

17

1. 1. Ring topology in Midhaul and Backhaul (LLS-C3 Configuration)
2. a. O-DU connected to HSR and SYNC from Backhaul.
3. b. O-DU connected to HSR and SYNC from Backhaul. (Aggregated Link)
4. c. O-DU connected to CSR and SYNC from Backhaul.

22

1. 2. Ring topology in Midhaul and Backhaul (LLS-C3 Configuration)
2. a. O-DU connected to HSR and SYNC from Midhaul.
3. b. O-DU connected to HSR and SYNC from Midhaul. (Aggregated Link)
4. c. O-DU connected to CSR and SYNC from Midhaul.

27

1. It is important to note that, though Passive Port Monitoring is an OPTIONAL feature in ITU-T G.8275.1
2. ANNEX-G, if implemented, it is necessary for the equipment to conform to the requirement as per the
3. specifications.

31

1. For PTP rearrangement scenarios like member-link failover in Aggregated Ethernet Bundle and for other
2. failover scenarios, operator can make choice based on the vendor TNE capability to estimate the end-to-end
3. clock performance limit. However, the performance limits specified in this chapter applicable for both normal
4. and rearrangement scenarios.

36

1. The test cases apply to both lab and field deployment cases. For lab cases, the type and number of inserted
2. Transport Node Elements (TNE) will be determined by operators (or any other applicable end customer). The
3. tests are performed at Xhaul UNI interfaces, and not between individual TNEs. The Xhaul UNI interfaces
4. include O-RU Fronthaul UNI, O-DU Fronthaul or Midhaul UNI.

41

1. 1PPS test at O-RU UNI is typically used for debugging and monitoring the packet layer performance of the
2. nearest TNE in the fronthaul. The intention of such test is that if the TNE vendor implemented the 1PPS
3. interface, the 1PPS error measured on such interface at the O-RU UNI should be a reflection of the output
4. time error of TNE. Operator shall pay attention to an unacceptably large deviation of 1PPS error, beyond the
5. limits specified, which may indicate an incorrect behaviour of TNEs.

47

1

1. The Test Topologies in all the test cases uses GNSS simulator to generate the GNSS signal to the network
2. PRTC/T-GM. This high-quality reference from the simulator is used as the external reference for clock
3. testers as well. The resultant accuracy of this method is a few nanoseconds. However, one can also use a
4. GNSS signal feeding both the initial PRTC/T-GM in the network and the reference clock generating a
5. 1pps/10MHz used to synchronize the clock testers for the measurements. Operator can make an allowance in
6. this case, for all of the measurements for the accuracy of the reference. The magnitude of this allowance will
7. depend on the specific GNSS reference in use.

9

1. For relative time error measurements at UNI (e.g., O-RU Fronthaul UNI) this document uses the metric
2. max|TERL | (1,2) as defined in [88], Appendix XI. Please note this metric represents an estimation and the
3. worst-case scenario. Tests that meet (are below) the limits are seen as PASS. Tests not meeting this metric

13 may still be acceptable. The decision is for operators to make. However, if the measurement equipment

1. support relative time error measurement, operator can use such equipment. Refer ITU-T G.8271.1 Appendix
2. XI for more details.

16

1. For Frequency Limit at UNI (e.g., O-RU Fronthaul UNI) this document uses the metric defined as per WG4
2. section H.2 based on PRTC class for LLS-C3 configuration. Applicable MTIE limit shall apply for Frequency
3. as per WG4 specification.

20

1. The acceptable limits in all the below tests shall meet CUS specification worst case limits based on the
2. maximum network size, but operator "should" apply the limits more aligned with the real tested configuration
3. based on the network size.

24

1. 9.2.1 Timing Resiliency in Ring Topology-O-DU connected to HSR and
2. SYNC from Backhaul (LLS-C3)-Normal State (Case-1: T-GM1 is the
3. preferred GM)

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | SYNC.RE.01 | **Classification** | Resiliency, Synchronization, Performance, Absolute Time Error, Relative Time Error |
| **Test Title** | Timing Resiliency in Ring Topology-O-DU connected to HSR and SYNC from Backhaul-Normal State without any Fail-over conditions exist (Case-1: T-GM1 is the preferred GM) | | |
| **Test Objective:** | 1. Verify the Clock Lock states on BRs, HSRs and CSRs. 2. Verify the steady-state clock advertisements on BRs, HSRs and CSRs. 3. Verify the Maximum Absolute Packet Time Error (Max|TEL |) at O-RU UNI. 4. Verify the Maximum Relative Packet Time Error (Max|TERL |) between two O-RU UNI ports. 5. Verify the Maximum Absolute 1PPS Time Error (Max|TEL|) at O-RU UNI. 6. Verify the Time Wander at the O-RU UNI. | | |
| **Pre-Req** | * T-GM1 is the Primary GM and T-GM2 is the Secondary GM. * Clock parameters of both T-GM1 and T-GM2 are same except Priority-2 & GMCID. | | |

|  |  |
| --- | --- |
|  | * Priority-2 on T-GM1=1 and T-GM2=2. |
| **Test Topology:** | ![A diagram of a network  Description automatically generated](../assets/images/3c8e998e917e.jpg)  The test topology above illustrates the placement of clock tester at the measurement plane with 1PPS and 10MHz reference from GNSS simulator connected to clock tester. The tester measurement ports at O-RU UNI connected to CSR. |
| **Test Configuration** | 1. Clock Tester at O-RU UNI receives timing input on its measurement port. 2. Provide 1PPS and 10MHz reference to Clock Tester from GNSS simulator. 3. G.8275.1 Full Timing Support profile. |
| **Procedure:** | **Detailed Test procedure:**   1. Connect both T-GMs to GNSS Simulator. 2. Configure T-GMs, BRs, HSRs and CSRs with G.8275.1 profile. 3. Connect Clock Tester measurement ports to CSRs TimeTransmitter ports to monitor PTP at the O-RU UNI.   **Verifications for Clock Advertisements**   1. Verify the clock lock state on BRs, HSRs, CSRs. The lock state should be Phase-aligned. 2. Verify the steady-state clock advertisements on BRs, HSRs and CSRs as per ITU-T G.8275.1 Standard-Appendix V, Table V.3.   **Verifications for Maximum Absolute Packet Time Error**   1. Verify that PTP session is up and running between T-GM and CSR. 2. Verify time error measurements using Clock Tester for the PTP flows from CSR at the O-RU UNI.    1. max|TEL | measured on Clock Tester at the O-RU UNI <= 1100ns (For Enhanced RU)    2. max|TEL | measured on Clock Tester at the O-RU UNI <= 1100ns (For Regular RU)   **Verifications for Maximum Relative Packet Time Error (NOTE1)**   1. Perform time error measurements on Clock Tester at O-RU1 and O-RU2 plane independently. Collect the data (maxTE1, minTE1) and (maxTE2, minTE2) for both O-RU UNI at least for a period of 1000sec. 2. Estimate the Maximum Relative Time Error measurements between the O-RU UNI ports.    1. max|TERL | (1,2) <= 60ns (FR2) (For Enhanced RU) |

* 1. max|TERL | (1,2) <= 190ns (FR1) (For Enhanced RU)
  2. max|TERL | (1,2) <= 100ns (FR1) (For Regular RU)

As per ITU-T G.8271.1 Appendix-V1, the requirement is not to measure the continuous relative time error, *TERL*(t), but to measure the maximum possible value it can take.

max|TE | ( )

maxTEL (1) - minTEL(2)

RL

1,2 the greatest of {

maxTEL (2) - minTEL(1)

#### Verifications for Maximum Absolute 1PPS Time Error

1. Verify that PTP session is up and running between T-GM and CSR.
2. Verify the 1PPS time error measurements using Clock Tester at the O-RU UNI.
   1. max|TEL | measured on Clock Tester at the O-RU UNI <= 1100ns (For Enhanced RU)
   2. max|TEL | measured on Clock Tester at the O-RU UNI <= 1100ns (For Regular RU)

#### Verifications for Maximum Relative 1PPS Time Error

1. Verify that PTP and SyncE session is up and running.
2. Estimate the Maximum Relative 1PPS Time Error measurements between the O-RU UNI ports.
   1. max|TERL | (1,2) <= 60ns (FR2) (For Enhanced RU)
   2. max|TERL | (1,2) <= 190ns (FR1) (For Enhanced RU)
   3. max|TERL | (1,2) <= 100ns (FR1) (For Regular RU)

#### Verifications for Time Wander

1. Verify the Time Wander using Clock tester at the O-RU UNI.
   1. Frequency Limit is <= 32ppb (For PRTC Class-A)
   2. MTIE mask as per the limit specified. NOTE1 (As per G.8271.1):

To measure the relative time error, measure the time error from each point with

respect to the internal time reference of measurement equipment, and then subtracting time error of one point from the other.

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **Pass/Fail Criteria:** | Test shall pass if the Maximum Absolute TE, Relative TE and Time Wander Limit result is within the specified limits. | | | | |
| **Test Output** |  | End-to-End  Network Limit at O- RU UNI | Expected Value | | Observed Value |
| (For Enhanced RU) | (For Regular RU) |
|  | Packet max|TEL| | <= 1100ns | <= 1100ns |  |
|  | Packet max|TERL| | <= 60ns(FR2) | <= 100ns(FR1) |  |
| <= 190ns(FR1) |
|  | 1PPS max|TEL| | <= 1100ns | <= 1100ns |  |
|  | 1PPS max|TERL| | <= 60ns(FR2) | <= 100ns(FR1) |  |
| <= 190ns(FR1) |
|  | Frequency Limit (PRTC Class-A) | <= 32ppb | <= 32ppb |  |
| The above limits applicable for both Normal and Re-arrangement scenarios. | | | | |

1

1. 9.2.2 Timing Resiliency in Ring Topology-O-DU connected to HSR and
2. SYNC from Backhaul (LLS-C3)-T-GM1 to BR1 Link Down. (Case-1:
3. T-GM1 is the preferred GM)

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | SYNC.RE.02 | **Classification** | Resiliency, Synchronization, Performance, Absolute Time Error, Relative Time Error |
| **Test Title** | Timing Resiliency in Ring Topology-O-DU connected to HSR and SYNC from Backhaul-T-GM1 to BR1 Link Down. (Case-1: T-GM1 is the preferred GM) | | |
| **Test Objective:** | 1. Verify the Clock Lock states on BRs, HSRs and CSRs. 2. Verify the clock advertisements on BRs, HSRs and CSRs. 3. Verify the Maximum Absolute Packet Time Error (Max|TEL |) at O-RU UNI. 4. Verify the Maximum Relative Packet Time Error (Max|TERL |) between two O-RU UNI ports. 5. Verify the Maximum Absolute 1PPS Time Error (Max|TEL|) at O-RU UNI. 6. Verify the Time Wander at the O-RU UNI. | | |
| **Pre-Req** | * T-GM1 is the Primary GM and T-GM2 is the Secondary GM. * Clock parameters of both T-GM1 and T-GM2 are same except Priority-2 & GMCID. * Priority-2 on T-GM1=1 and T-GM2=2. * Test 9.2.1 MUST PASS. | | |
| **Test Topology:** | ![A diagram of a network  Description automatically generated](../assets/images/ed3912e8a423.jpg)  The test topology above illustrates the placement of clock tester at the measurement plane with 1PPS and 10MHz reference from GNSS simulator connected to clock tester. The tester measurement ports at O-RU UNI connected to CSR.  Stateful (ST) refers to the port configuration of neither explicit timeTransmitter nor explicit timeReceiver. When configured, it refers to the dynamic state of the port based on the received Announce message. | | |
| **Test Configuration** | 1. As per Test 9.2.1. 2. Fail the link between T-GM1 and BR1. | | |

|  |  |
| --- | --- |
| **Procedure:** | **Detailed Test procedure:**   1. Connect both T-GMs to GNSS Simulator. 2. Configure T-GMs, BRs, HSRs and CSRs with G.8275.1 profile. 3. Connect Clock Tester measurement ports to CSRs TimeTransmitter ports to monitor PTP at the O-RU UNI.   **Verifications for Clock Advertisements**   1. Verify the clock lock state on BRs, HSRs, CSRs. The lock state should be Phase-aligned. 2. Verify the steady-state clock advertisements on BRs, HSRs and CSRs as per ITU-T G.8275.1 Standard-Appendix V, Table V.3.   **Verifications for Maximum Absolute Packet Time Error**   1. Verify that PTP session is up and running between T-GM and CSR. 2. Verify time error measurements using Clock Tester for the PTP flows from CSR at the O-RU UNI.    1. max|TEL | measured on Clock Tester at the O-RU UNI <= 1100ns (For Enhanced RU)    2. max|TEL | measured on Clock Tester at the O-RU UNI <= 1100ns (For Regular RU)   **Verifications for Maximum Relative Packet Time Error (NOTE1)**   1. Perform time error measurements on Clock Tester at O-RU1 and O-RU2 plane independently. Collect the data (maxTE1, minTE1) and (maxTE2, minTE2) for both O-RU UNI at least for a period of 1000sec. 2. Estimate the Maximum Relative Time Error measurements between the O-RU UNI ports.    1. max|TERL | (1,2) <= 60ns (FR2) (For Enhanced RU)    2. max|TERL | (1,2) <= 190ns (FR1) (For Enhanced RU)    3. max|TERL | (1,2) <= 100ns (FR1) (For Regular RU)   As per ITU-T G.8271.1 Appendix-V1, the requirement is not to measure the continuous relative time error, *TERL*(t), but to measure the maximum possible value it can take.  max|TE | (1,2)the greatest of maxTEL (1) - minTEL(2)  RL {  maxTEL (2) - minTEL(1)  **Verifications for Maximum Absolute 1PPS Time Error**   1. Verify that PTP session is up and running between T-GM and CSR. 2. Verify the 1PPS time error measurements using Clock Tester at the O-RU UNI.    1. max|TEL | measured on Clock Tester at the O-RU UNI <= 1100ns (For Enhanced RU)    2. max|TEL | measured on Clock Tester at the O-RU UNI <= 1100ns (For Regular RU)   **Verifications for Maximum Relative 1PPS Time Error**   1. Verify that PTP and SyncE session is up and running. 2. Estimate the Maximum Relative 1PPS Time Error measurements between the O-RU UNI ports.    1. max|TERL | (1,2) <= 60ns (FR2) (For Enhanced RU) |

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
|  | 1. max|TERL | (1,2) <= 190ns (FR1) (For Enhanced RU) 2. max|TERL | (1,2) <= 100ns (FR1) (For Regular RU)   **Verifications for Time Wander**   1. Verify the Time Wander using Clock tester at the O-RU UNI.    1. Frequency Limit is<= 32ppb (For PRTC Class-A)    2. MTIE mask as per the limit specified. NOTE1 (As per G.8271.1):   To measure the relative time error, measure the time error from each point with  respect to the internal time reference of measurement equipment, and then subtracting time error of one point from the other. | | | | |
| **Pass/Fail Criteria:** | Test shall pass if the Maximum Absolute TE, Relative TE and Time Wander Limit result is within the specified limits. | | | | |
| **Test Output** |  | End-to-End Network Limit at O-  RU UNI | Expected Value | | Observed Value |
| (For Enhanced RU) | (For Regular RU) |
|  | Packet max|TEL| | <= 1100ns | <= 1100ns |  |
|  | Packet max|TERL| | <= 60ns(FR2) | <= 100ns(FR1) |  |
| <= 190ns(FR1) |
|  | 1PPS max|TEL| | <= 1100ns | <= 1100ns |  |
|  | 1PPS max|TERL| | <= 60ns(FR2) | <= 100ns(FR1) |  |
| <= 190ns(FR1) |
|  | Frequency Limit (PRTC Class-A) | <= 32ppb | <= 32ppb |  |
| The above limits applicable for both Normal and Re-arrangement scenarios. | | | | |

1

1. 9.2.3 Timing Resiliency in Ring Topology-O-DU connected to HSR and SYNC from
2. Backhaul (LLS-C3)-T-GM1 Fail-over. (Case-1: T-GM1 is the preferred GM)

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | SYNC.RE.03 | **Classification** | Resiliency, Synchronization, Performance, Absolute Time Error, Relative Time Error |
| **Test Title** | Timing Resiliency in Ring Topology-O-DU connected to HSR and SYNC from Backhaul-T-GM1 Fail-over. (Case-1: T-GM1 is the preferred GM) | | |
| **Test Objective:** | 1. Verify the Clock Lock states on BRs, HSRs and CSRs. 2. Verify the clock advertisements on BRs, HSRs and CSRs. 3. Verify the Maximum Absolute Packet Time Error (Max|TEL |) at O-RU UNI. 4. Verify the Maximum Relative Packet Time Error (Max|TERL |) between two O-RU UNI ports. 5. Verify the Maximum Absolute 1PPS Time Error (Max|TEL|) at O-RU UNI. 6. Verify the Time Wander at the O-RU UNI. | | |
| **Pre-Req** | * T-GM1 is the Primary GM and T-GM2 is the Secondary GM. * Clock parameters of both T-GM1 and T-GM2 are same except Priority-2 & GMCID. | | |

|  |  |
| --- | --- |
|  | * Priority-2 on T-GM1=1 and T-GM2=2. * Test 9.2.1 MUST PASS. |
| **Test Topology:** | ![A diagram of a network  Description automatically generated](../assets/images/5475b2d1889b.jpg)  The test topology above illustrates the placement of clock tester at the measurement plane with 1PPS and 10MHz reference from GNSS simulator connected to clock tester. The tester measurement ports at O-RU UNI connected to CSR.  Stateful (ST) refers to the port configuration of neither explicit timeTransmitter nor explicit timeReceiver. When configured, it refers to the dynamic state of the port based on the received Announce message. |
| **Test Configuration** | 1. As per Test 9.2.1. 2. Fail the link between T-GM1 to BR1 and BR2 OR Power OFF the T-GM1. |
| **Procedure:** | **Detailed Test procedure:**   1. Connect both T-GMs to GNSS Simulator. 2. Configure T-GMs, BRs, HSRs and CSRs with G.8275.1 profile. 3. Connect Clock Tester measurement ports to CSRs TimeTransmitter ports to monitor PTP at the O-RU UNI.   **Verifications for Clock Advertisements**   1. Verify that BR1 shall select clock from T-GM1 via BR2. 2. Verify the clock lock state on BRs, HSRs, CSRs. The lock state should be Phase-aligned. 3. Verify the steady-state clock advertisements on BRs, HSRs and CSRs as per ITU-T G.8275.1 Standard-Appendix V, Table V.3.   **Verifications for Maximum Absolute Packet Time Error**   1. Verify that PTP session is up and running between T-GM and CSR. 2. Verify time error measurements using Clock Tester for the PTP flows from CSR at the O-RU UNI.    1. max|TEL | measured on Clock Tester at the O-RU UNI <= 1100ns (For Enhanced RU)    2. max|TEL | measured on Clock Tester at the O-RU UNI <= 1100ns (For Regular RU)   **Verifications for Maximum Relative Packet Time Error (NOTE1)** |

* 1. Perform time error measurements on Clock Tester at O-RU1 and O-RU2 plane independently. Collect the data (maxTE1, minTE1) and (maxTE2, minTE2) for both O-RU UNI at least for a period of 1000sec.
  2. Estimate the Maximum Relative Time Error measurements between the O-RU UNI ports.
     1. max|TERL | (1,2) <= 60ns (FR2) (For Enhanced RU)
     2. max|TERL | (1,2) <= 190ns (FR1) (For Enhanced RU)
     3. max|TERL | (1,2) <= 100ns (FR1) (For Regular RU)

As per ITU-T G.8271.1 Appendix-V1, the requirement is not to measure the continuous relative time error, *TERL*(t), but to measure the maximum possible value it can take.

max|TE | ( )

maxTEL (1) - minTEL(2)

RL

1,2 the greatest of {

maxTEL (2) - minTEL(1)

#### Verifications for Maximum Absolute 1PPS Time Error

1. Verify that PTP session is up and running between T-GM and CSR.
2. Verify the 1PPS time error measurements using Clock Tester at the O-RU UNI.
   1. max|TEL | measured on Clock Tester at the O-RU UNI <= 1100ns (For Enhanced RU)
   2. max|TEL | measured on Clock Tester at the O-RU UNI <= 1100ns (For Regular RU)

#### Verifications for Maximum Relative 1PPS Time Error

1. Verify that PTP and SyncE session is up and running.
2. Estimate the Maximum Relative 1PPS Time Error measurements between the O-RU UNI ports.
   1. max|TERL | (1,2) <= 60ns (FR2) (For Enhanced RU)
   2. max|TERL | (1,2) <= 190ns (FR1) (For Enhanced RU)
   3. max|TERL | (1,2) <= 100ns (FR1) (For Regular RU)

#### Verifications for Time Wander

1. Verify the Time Wander using Clock tester at the O-RU UNI.
   1. Frequency Limit is<= 32ppb (For PRTC Class-A)
   2. MTIE mask as per the limit specified. NOTE1 (As per G.8271.1):

To measure the relative time error, measure the time error from each point with

respect to the internal time reference of measurement equipment, and then subtracting time error of one point from the other.

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **Pass/Fail Criteria:** | Test shall pass if the Maximum Absolute TE, Relative TE and Time Wander Limit result is within the specified limits. | | | | |
| **Test Output** |  | End-to-End Network Limit at O- RU UNI | Expected Value | | Observed Value |
| (For Enhanced RU) | (For Regular RU) |
|  | Packet max|TEL| | <= 1100ns | <= 1100ns |  |
|  | Packet max|TERL| | <= 60ns(FR2) | <= 100ns(FR1) |  |
| <= 190ns(FR1) |
|  | 1PPS max|TEL| | <= 1100ns | <= 1100ns |  |
|  | 1PPS max|TERL| | <= 60ns(FR2) | <= 100ns(FR1) |  |

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
|  |  |  | <= 190ns(FR1) |  |  |
|  | Frequency Limit (PRTC Class-A) | <= 32ppb | <= 32ppb |  |
| The above limits applicable for both Normal and Re-arrangement scenarios. | | | | |

1

1. 9.2.4 Timing Resiliency in Ring Topology-O-DU connected to HSR and SYNC from
2. Backhaul (LLS-C3)-Ring Fail-over in Backhaul. (Case-1: T-GM1 is the
3. preferred GM)

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | SYNC.RE.04 | **Classification** | Resiliency, Synchronization, Performance, Absolute Time Error, Relative Time Error |
| **Test Title** | Timing Resiliency in Ring Topology-O-DU connected to HSR and SYNC from Backhaul-Ring Fail-over in Backhaul. (Case-1: T-GM1 is the preferred GM) | | |
| **Test Objective:** | 1. Verify the Clock Lock states on BRs, HSRs and CSRs. 2. Verify the clock advertisements on BRs, HSRs and CSRs. 3. Verify the Maximum Absolute Packet Time Error (Max|TEL |) at O-RU UNI. 4. Verify the Maximum Relative Packet Time Error (Max|TERL |) between two O-RU UNI ports. 5. Verify the Maximum Absolute 1PPS Time Error (Max|TEL|) at O-RU UNI. 6. Verify the Time Wander at the O-RU UNI. | | |
| **Pre-Req** | * T-GM1 is the Primary GM and T-GM2 is the Secondary GM. * Clock parameters of both T-GM1 and T-GM2 are same except Priority-2 & GMCID. * Priority-2 on T-GM1=1 and T-GM2=2. * Test 9.2.1 MUST PASS. | | |
| **Test Topology:** | ![](../assets/images/de99d2e79d3c.jpg) | | |

|  |  |
| --- | --- |
|  | The test topology above illustrates the placement of clock tester at the measurement plane with 1PPS and 10MHz reference from GNSS simulator connected to clock tester. The tester measurement ports at O-RU UNI connected to CSR.  Stateful (ST) refers to the port configuration of neither explicit timeTransmitter nor explicit timeReceiver. When configured, it refers to the dynamic state of the port based on the received Announce message. |
| **Test Configuration** | 1. As per Test 9.2.1. 2. Fail the link between BR1 and BR3. |
| **Procedure:** | **Detailed Test procedure:**   1. Connect both T-GMs to GNSS Simulator. 2. Configure T-GMs, BRs, HSRs and CSRs with G.8275.1 profile. 3. Connect Clock Tester measurement ports to CSRs TimeTransmitter ports to monitor PTP at the O-RU UNI.   **Verifications for Clock Advertisements**   1. Verify that BR1 shall select clock from T-GM1 via BR2. 2. Verify the clock lock state on BRs, HSRs, CSRs. The lock state should be Phase-aligned. 3. Verify the steady-state clock advertisements on BRs, HSRs and CSRs as per ITU-T G.8275.1 Standard-Appendix V, Table V.3.   **Verifications for Maximum Absolute Packet Time Error**   1. Verify that PTP session is up and running between T-GM and CSR. 2. Verify time error measurements using Clock Tester for the PTP flows from CSR at the O-RU UNI.    1. max|TEL | measured on Clock Tester at the O-RU UNI <= 1100ns (For Enhanced RU)    2. max|TEL | measured on Clock Tester at the O-RU UNI <= 1100ns (For Regular RU)   **Verifications for Maximum Relative Packet Time Error (NOTE1)**   1. Perform time error measurements on Clock Tester at O-RU1 and O-RU2 plane independently. Collect the data (maxTE1, minTE1) and (maxTE2, minTE2) for both O-RU UNI at least for a period of 1000sec. 2. Estimate the Maximum Relative Time Error measurements between the O-RU UNI ports.    1. max|TERL | (1,2) <= 60ns (FR2) (For Enhanced RU)    2. max|TERL | (1,2) <= 190ns (FR1) (For Enhanced RU)    3. max|TERL | (1,2) <= 100ns (FR1) (For Regular RU)   As per ITU-T G.8271.1 Appendix-V1, the requirement is not to measure the continuous relative time error, *TERL*(t), but to measure the maximum possible value it can take.  max|TE | (1,2)the greatest of maxTEL (1) - minTEL(2)  RL {  maxTEL (2) - minTEL(1)  **Verifications for Maximum Absolute 1PPS Time Error**   1. Verify that PTP session is up and running between T-GM and CSR. 2. Verify the 1PPS time error measurements using Clock Tester at the O-RU UNI. |

1. max|TEL | measured on Clock Tester at the O-RU UNI <= 1100ns (For Enhanced RU)
2. max|TEL | measured on Clock Tester at the O-RU UNI <= 1100ns (For Regular RU)

**Verifications for Maximum Relative 1PPS Time Error**

1. Verify that PTP and SyncE session is up and running.
2. Estimate the Maximum Relative 1PPS Time Error measurements between the O-RU UNI ports.
   1. max|TERL | (1,2) <= 60ns (FR2) (For Enhanced RU)
   2. max|TERL | (1,2) <= 190ns (FR1) (For Enhanced RU)
   3. max|TERL | (1,2) <= 100ns (FR1) (For Regular RU)

**Verifications for Time Wander**

1. Verify the Time Wander using Clock tester at the O-RU UNI.
   1. Frequency Limit is<= 32ppb (For PRTC Class-A)
   2. MTIE mask as per the limit specified. NOTE1 (As per G.8271.1):

To measure the relative time error, measure the time error from each point with

respect to the internal time reference of measurement equipment, and then subtracting time error of one point from the other.

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **Pass/Fail Criteria:** | Test shall pass if the Maximum Absolute TE, Relative TE and Time Wander Limit result is within the specified limits. | | | | |
| **Test Output** |  | End-to-End Network Limit at O-  RU UNI | Expected Value | | Observed Value |
| (For Enhanced RU) | (For Regular RU) |
|  | Packet max|TEL| | <= 1100ns | <= 1100ns |  |
|  | Packet max|TERL| | <= 60ns(FR2) | <= 100ns(FR1) |  |
| <= 190ns(FR1) |
|  | 1PPS max|TEL| | <= 1100ns | <= 1100ns |  |
|  | 1PPS max|TERL| | <= 60ns(FR2) | <= 100ns(FR1) |  |
| <= 190ns(FR1) |
|  | Frequency Limit (PRTC Class-A) | <= 32ppb | <= 32ppb |  |
| The above limits applicable for both Normal and Re-arrangement scenarios. | | | | |

1

1. 9.2.5 Timing Resiliency in Ring Topology-O-DU connected to HSR and SYNC from
2. Backhaul (LLS-C3)-Ring Fail-over in Midhaul. (Case-1: T-GM1 is the
3. preferred GM)

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | SYNC.RE.05 | **Classification** | Resiliency, Synchronization, Performance, Absolute Time Error, Relative Time Error |
| **Test Title** | Timing Resiliency in Ring Topology-O-DU connected to HSR and SYNC from Backhaul-Ring Fail-over in Midhaul. (Case-1: T-GM1 is the preferred GM) | | |

|  |  |
| --- | --- |
| **Test Objective:** | 1. Verify the Clock Lock states on BRs, HSRs and CSRs. 2. Verify the clock advertisements on BRs, HSRs and CSRs. 3. Verify the Maximum Absolute Packet Time Error (Max|TEL |) at O-RU UNI. 4. Verify the Maximum Relative Packet Time Error (Max|TERL |) between two O-RU UNI ports. 5. Verify the Maximum Absolute 1PPS Time Error (Max|TEL|) at O-RU UNI. 6. Verify the Time Wander at the O-RU UNI. |
| **Pre-Req** | * T-GM1 is the Primary GM and T-GM2 is the Secondary GM. * Clock parameters of both T-GM1 and T-GM2 are same except Priority-2 & GMCID. * Priority-2 on T-GM1=1 and T-GM2=2. * Test 9.2.1 MUST PASS. |
| **Test Topology:** | ![](../assets/images/6017a19402c7.jpg)  The test topology above illustrates the placement of clock tester at the measurement plane with 1PPS and 10MHz reference from GNSS simulator connected to clock tester. The tester measurement ports at O-RU UNI connected to CSR.  Stateful (ST) refers to the port configuration of neither explicit timeTransmitter nor explicit timeReceiver. When configured, it refers to the dynamic state of the port based on the received Announce message. |
| **Test Configuration** | 1. As per Test 9.2.1. 2. Fail the link between BR1 and BR3. |
| **Procedure:** | **Detailed Test procedure:**   1. Connect both T-GMs to GNSS Simulator. 2. Configure T-GMs, BRs, HSRs and CSRs with G.8275.1 profile. 3. Connect Clock Tester measurement ports to CSRs TimeTransmitter ports to monitor PTP at the O-RU UNI.   **Verifications for Clock Advertisements**   1. Verify that BR1 shall select clock from T-GM1 via BR2. 2. Verify the clock lock state on BRs, HSRs, CSRs. The lock state should be Phase-aligned. 3. Verify the steady-state clock advertisements on BRs, HSRs and CSRs as per ITU-T G.8275.1 Standard-Appendix V, Table V.3. |

#### Verifications for Maximum Absolute Packet Time Error

* 1. Verify that PTP session is up and running between T-GM and CSR.
  2. Verify time error measurements using Clock Tester for the PTP flows from CSR at the O-RU UNI.
     1. max|TEL | measured on Clock Tester at the O-RU UNI <= 1100ns (For Enhanced RU)
     2. max|TEL | measured on Clock Tester at the O-RU UNI <= 1100ns (For Regular RU)

#### Verifications for Maximum Relative Packet Time Error (NOTE1)

1. Perform time error measurements on Clock Tester at O-RU1 and O-RU2 plane independently. Collect the data (maxTE1, minTE1) and (maxTE2, minTE2) for both O-RU UNI at least for a period of 1000sec.
2. Estimate the Maximum Relative Time Error measurements between the O-RU UNI ports.
   1. max|TERL | (1,2) <= 60ns (FR2) (For Enhanced RU)
   2. max|TERL | (1,2) <= 190ns (FR1) (For Enhanced RU)
   3. max|TERL | (1,2) <= 100ns (FR1) (For Regular RU)

As per ITU-T G.8271.1 Appendix-V1, the requirement is not to measure the continuous relative time error, *TERL*(t), but to measure the maximum possible value it can take.

max|TE | ( )

maxTEL (1) - minTEL(2)

RL

1,2 the greatest of {

maxTEL (2) - minTEL(1)

#### Verifications for Maximum Absolute 1PPS Time Error

1. Verify that PTP session is up and running between T-GM and CSR.
2. Verify the 1PPS time error measurements using Clock Tester at the O-RU UNI.
   1. max|TEL | measured on Clock Tester at the O-RU UNI <= 1100ns (For Enhanced RU)
   2. max|TEL | measured on Clock Tester at the O-RU UNI <= 1100ns (For Regular RU)

#### Verifications for Maximum Relative 1PPS Time Error

1. Verify that PTP and SyncE session is up and running.
2. Estimate the Maximum Relative 1PPS Time Error measurements between the O-RU UNI ports.
   1. max|TERL | (1,2) <= 60ns (FR2) (For Enhanced RU)
   2. max|TERL | (1,2) <= 190ns (FR1) (For Enhanced RU)
   3. max|TERL | (1,2) <= 100ns (FR1) (For Regular RU)

#### Verifications for Time Wander

1. Verify the Time Wander using Clock tester at the O-RU UNI.
   1. Frequency Limit is<= 32ppb (For PRTC Class-A)
   2. MTIE mask as per the limit specified. NOTE1 (As per G.8271.1):

To measure the relative time error, measure the time error from each point with

respect to the internal time reference of measurement equipment, and then subtracting time error of one point from the other.

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **Pass/Fail Criteria:** | Test shall pass if the Maximum Absolute TE, Relative TE and Time Wander Limit result is within the specified limits. | | | | |
| **Test Output** |  | End-to-End  Network Limit at O- RU UNI | Expected Value | | Observed Value |
| (For Enhanced RU) | (For Regular RU) |
|  | Packet max|TEL| | <= 1100ns | <= 1100ns |  |
|  | Packet max|TERL| | <= 60ns(FR2) | <= 100ns(FR1) |  |
| <= 190ns(FR1) |
|  | 1PPS max|TEL| | <= 1100ns | <= 1100ns |  |
|  | 1PPS max|TERL| | <= 60ns(FR2) | <= 100ns(FR1) |  |
| <= 190ns(FR1) |
|  | Frequency Limit (PRTC Class-A) | <= 32ppb | <= 32ppb |  |
| The above limits applicable for both Normal and Re-arrangement scenarios. | | | | |

1

1. 9.2.6 Timing Resiliency in Ring Topology-O-DU connected to HSR and SYNC from
2. Backhaul (LLS-C3)-Ring Fail-over in Fronthaul. (Case-1: T-GM1 is the
3. preferred GM)

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | SYNC.RE.06 | **Classification** | Resiliency, Synchronization, Performance, Absolute Time Error, Relative Time Error |
| **Test Title** | Timing Resiliency in Ring Topology-O-DU connected to HSR and SYNC from Backhaul-Ring Fail-over in Fronthaul. (Case-1: T-GM1 is the preferred GM) | | |
| **Test Objective:** | 1. Verify the Clock Lock states on BRs, HSRs and CSRs. 2. Verify the clock advertisements on BRs, HSRs and CSRs. 3. Verify the Maximum Absolute Packet Time Error (Max|TEL |) at O-RU UNI. 4. Verify the Maximum Relative Packet Time Error (Max|TERL |) between two O-RU UNI ports. 5. Verify the Maximum Absolute 1PPS Time Error (Max|TEL|) at O-RU UNI. 6. Verify the Time Wander at the O-RU UNI. | | |
| **Pre-Req** | * T-GM1 is the Primary GM and T-GM2 is the Secondary GM. * Clock parameters of both T-GM1 and T-GM2 are same except Priority-2 & GMCID. * Priority-2 on T-GM1=1 and T-GM2=2. * Test 9.2.1 MUST PASS. | | |

|  |  |
| --- | --- |
| **Test Topology:** | ![](../assets/images/87abab2e926c.jpg)  The test topology above illustrates the placement of clock tester at the measurement plane with 1PPS and 10MHz reference from GNSS simulator connected to clock tester. The tester measurement ports at O-RU UNI connected to CSR.  Stateful (ST) refers to the port configuration of neither explicit timeTransmitter nor explicit timeReceiver. When configured, it refers to the dynamic state of the port based on the received Announce message. |
| **Test Configuration** | 1. As per Test 9.2.1. 2. Fail the link between HSR3 and CSR1. |
| **Procedure:** | **Detailed Test procedure:**   1. Connect both T-GMs to GNSS Simulator. 2. Configure T-GMs, BRs, HSRs and CSRs with G.8275.1 profile. 3. Connect Clock Tester measurement ports to CSRs TimeTransmitter ports to monitor PTP at the O-RU UNI.   **Verifications for Clock Advertisements**   1. Verify that BR1 shall select clock from T-GM1 via BR2. 2. Verify the clock lock state on BRs, HSRs, CSRs. The lock state should be Phase-aligned. 3. Verify the steady-state clock advertisements on BRs, HSRs and CSRs as per ITU-T G.8275.1 Standard-Appendix V, Table V.3.   **Verifications for Maximum Absolute Packet Time Error**   1. Verify that PTP session is up and running between T-GM and CSR. 2. Verify time error measurements using Clock Tester for the PTP flows from CSR at the O-RU UNI.    1. max|TEL | measured on Clock Tester at the O-RU UNI <= 1100ns (For Enhanced RU)    2. max|TEL | measured on Clock Tester at the O-RU UNI <= 1100ns (For Regular RU)   **Verifications for Maximum Relative Packet Time Error (NOTE1)**   1. Perform time error measurements on Clock Tester at O-RU1 and O-RU2 plane independently. Collect the data (maxTE1, minTE1) and (maxTE2, minTE2) for both O-RU UNI at least for a period of 1000sec. 2. Estimate the Maximum Relative Time Error measurements between the O-RU UNI ports. |

* 1. max|TERL | (1,2) <= 60ns (FR2) (For Enhanced RU)
  2. max|TERL | (1,2) <= 190ns (FR1) (For Enhanced RU)
  3. max|TERL | (1,2) <= 100ns (FR1) (For Regular RU)

As per ITU-T G.8271.1 Appendix-V1, the requirement is not to measure the continuous relative time error, *TERL*(t), but to measure the maximum possible value it can take.

max|TE | ( )

maxTEL (1) - minTEL(2)

RL

1,2 the greatest of {

maxTEL (2) - minTEL(1)

#### Verifications for Maximum Absolute 1PPS Time Error

1. Verify that PTP session is up and running between T-GM and CSR.
2. Verify the 1PPS time error measurements using Clock Tester at the O-RU UNI.
   1. max|TEL | measured on Clock Tester at the O-RU UNI <= 1100ns (For Enhanced RU)
   2. max|TEL | measured on Clock Tester at the O-RU UNI <= 1100ns (For Regular RU)

#### Verifications for Maximum Relative 1PPS Time Error

1. Verify that PTP and SyncE session is up and running.
2. Estimate the Maximum Relative 1PPS Time Error measurements between the O-RU UNI ports.
   1. max|TERL | (1,2) <= 60ns (FR2) (For Enhanced RU)
   2. max|TERL | (1,2) <= 190ns (FR1) (For Enhanced RU)
   3. max|TERL | (1,2) <= 100ns (FR1) (For Regular RU)

#### Verifications for Time Wander

1. Verify the Time Wander using Clock tester at the O-RU UNI.
   1. Frequency Limit is<= 32ppb (For PRTC Class-A)
   2. MTIE mask as per the limit specified. NOTE1 (As per G.8271.1):

To measure the relative time error, measure the time error from each point with

respect to the internal time reference of measurement equipment, and then subtracting time error of one point from the other.

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **Pass/Fail Criteria:** | Test shall pass if the Maximum Absolute TE, Relative TE and Time Wander Limit result is within the specified limits. | | | | |
| **Test Output** |  | End-to-End Network Limit at O- RU UNI | Expected Value | | Observed Value |
| (For Enhanced RU) | (For Regular RU) |
|  | Packet max|TEL| | <= 1100ns | <= 1100ns |  |
|  | Packet max|TERL| | <= 60ns(FR2) | <= 100ns(FR1) |  |
| <= 190ns(FR1) |
|  | 1PPS max|TEL| | <= 1100ns | <= 1100ns |  |
|  | 1PPS max|TERL| | <= 60ns(FR2) | <= 100ns(FR1) |  |
| <= 190ns(FR1) |
|  | Frequency Limit (PRTC Class-A) | <= 32ppb | <= 32ppb |  |
| The above limits applicable for both Normal and Re-arrangement scenarios. | | | | |

1

1. 9.2.7 Timing Resiliency in Ring Topology-O-DU connected to HSR and SYNC from
2. Backhaul (LLS-C3)-Asymmetry Test (Case-1: T-GM1 is the preferred GM)

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | SYNC.RE.07 | **Classification** | Resiliency, Synchronization, Performance, Absolute Time Error, Relative Time Error |
| **Test Title** | Timing Resiliency in Ring Topology-O-DU connected to HSR and SYNC from Backhaul-Asymmetry Test. (Case-1: T-GM1 is the preferred GM) | | |
| **Test Objective:** | 1. Verify the Clock Lock states on BRs, HSRs and CSRs. 2. Verify the steady-state clock advertisements on BRs, HSRs and CSRs. 3. Verify the Maximum Absolute Packet Time Error (Max|TEL |) at O-RU UNI. 4. Verify the Maximum Relative Packet Time Error (Max|TERL |) between two O-RU UNI ports. 5. Verify the Maximum Absolute 1PPS Time Error (Max|TEL|) at O-RU UNI. 6. Verify the Time Wander at the O-RU UNI. | | |
| **Pre-Req** | * T-GM1 is the Primary GM and T-GM2 is the Secondary GM. * Clock parameters of both T-GM1 and T-GM2 are same except Priority-2 & GMCID. * Priority-2 on T-GM1=1 and T-GM2=2. | | |
| **Test Topology:** | ![A diagram of a network  Description automatically generated](../assets/images/a95b5cb1f030.jpg)  The test topology above illustrates the placement of clock tester at the measurement plane with 1PPS and 10MHz reference from GNSS simulator connected to clock tester. The tester measurement ports at O-RU UNI connected to CSR.  Stateful (ST) refers to the port configuration of neither explicit timeTransmitter nor explicit timeReceiver. When configured, it refers to the dynamic state of the port based on the received Announce message. | | |
| **Test Configuration** | 1. As per Test 9.2.1. 2. Introduce Asymmetry of +1000ns at the O/p of T-GM1 and No Asymmetry at the O/p of T-GM2. | | |

|  |  |
| --- | --- |
|  | 3. Configure Asymmetry Compensation of +1000ns on BR1 and BR2 |
| **Procedure:** | **Detailed Test procedure:**   1. Connect both T-GMs to GNSS Simulator. 2. Configure T-GMs, BRs, HSRs and CSRs with G.8275.1 profile. 3. Connect Clock Tester measurement ports to CSRs TimeTransmitter ports to monitor PTP at the O-RU UNI.   **Verifications for Clock Advertisements**   1. Verify the clock lock state on BRs, HSRs, CSRs. The lock state should be Phase-aligned. 2. Verify the steady-state clock advertisements on BRs, HSRs and CSRs as per ITU-T G.8275.1 Standard-Appendix V, Table V.3.   **After Step-2 of Test Configurations**  **Verifications for Maximum Absolute Packet Time Error and 1PPS Time Error**   1. Verify Performance Measurement during steady state. (1PPS and Packet Time Error should show an additional Error of +/-500ns due to Asymmetry)   **Verifications for Maximum Relative Packet Time Error (NOTE1)**   1. Perform time error measurements on Clock Tester at O-RU1 and O-RU2 plane independently. Collect the data (maxTE1, minTE1) and (maxTE2, minTE2) for both O-RU UNI at least for a period of 1000sec. 2. Estimate the Maximum Relative Time Error measurements between the O-RU UNI ports.    1. max|TERL | (1,2) <= 60ns (FR2) (For Enhanced RU)    2. max|TERL | (1,2) <= 190ns (FR1) (For Enhanced RU)    3. max|TERL | (1,2) <= 100ns (FR1) (For Regular RU)   As per ITU-T G.8271.1 Appendix-V1, the requirement is not to measure the continuous relative time error, *TERL*(t), but to measure the maximum possible value it can take.  max|TE | (1,2)the greatest of maxTEL (1) - minTEL(2)  RL {  maxTEL (2) - minTEL(1)  **Verifications for Maximum Relative 1PPS Time Error**   1. Verify that PTP and SyncE session is up and running. 2. Estimate the Maximum Relative 1PPS Time Error measurements between the O-RU UNI ports.    1. max|TERL | (1,2) <= 60ns (FR2) (For Enhanced RU)    2. max|TERL | (1,2) <= 190ns (FR1) (For Enhanced RU)    3. max|TERL | (1,2) <= 100ns (FR1) (For Regular RU)   **Verifications for Time Wander**   1. Verify the Time Wander using Clock tester at the O-RU UNI.    1. Frequency Limit is<= 32ppb (For PRTC Class-A)    2. MTIE mask as per the limit specified. NOTE1 (As per G.8271.1):   To measure the relative time error, measure the time error from each point with  respect to the internal time reference of measurement equipment, and then subtracting time error of one point from the other. |

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
|  | **After Step-3 of Test Configurations**  **Verifications for Maximum Absolute Packet Time Error and 1PPS Time Error**  1. Verify Performance Measurement during steady state. (1PPS and Packet Time Error shouldn't show any additional Error of +/-500ns due to Asymmetry)  **Verifications for Maximum Relative Packet Time Error and 1PPS Time Error**  1. Verify the Maximum Relative 1PPS Time Error measurements between the O- RU UNI ports. The results should be as per Test 9.2.1. | | | | |
| **Pass/Fail Criteria:** | Test shall pass if the Maximum Absolute TE, Relative TE and Time Wander Limit result is within the specified limits. | | | | |
| **Test Output** |  | End-to-End  Network Limit at O- RU UNI | Expected Value | | Observed Value |
| (For Enhanced RU) | (For Regular RU) |
|  | Packet max|TEL| | <= 1100ns | <= 1100ns |  |
|  | Packet max|TERL| | <= 60ns(FR2) | <= 100ns(FR1) |  |
| <= 190ns(FR1) |
|  | 1PPS max|TEL| | <= 1100ns | <= 1100ns |  |
|  | 1PPS max|TERL| | <= 60ns(FR2) | <= 100ns(FR1) |  |
| <= 190ns(FR1) |
|  | Frequency Limit (PRTC Class-A) | <= 32ppb | <= 32ppb |  |
| The above limits for max|TEL| doesn't include the error due to Manual Asymmetry. | | | | |

1

1. 9.2.8 Timing Resiliency in Ring Topology-O-DU connected to HSR and SYNC from
2. Backhaul (LLS-C3)-Asymmetry Test with Link-Fail. (Case-1: T-GM1 is the
3. preferred GM)

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | SYNC.RE.08 | **Classification** | Resiliency, Synchronization, Performance, Absolute Time Error, Relative Time Error |
| **Test Title** | Timing Resiliency in Ring Topology-O-DU connected to HSR and SYNC from Backhaul-Asymmetry Test with Link-Fail. (Case-1: T-GM1 is the preferred GM) | | |
| **Test Objective:** | 1. Verify the Clock Lock states on BRs, HSRs and CSRs. 2. Verify the steady-state clock advertisements on BRs, HSRs and CSRs. 3. Verify the Maximum Absolute Packet Time Error (Max|TEL |) at O-RU UNI. 4. Verify the Maximum Relative Packet Time Error (Max|TERL |) between two O-RU UNI ports. 5. Verify the Maximum Absolute 1PPS Time Error (Max|TEL|) at O-RU UNI. 6. Verify the Time Wander at the O-RU UNI. | | |
| **Pre-Req** | * T-GM1 is the Primary GM and T-GM2 is the Secondary GM. * Clock parameters of both T-GM1 and T-GM2 are same except Priority-2 & GMCID. * Priority-2 on T-GM1=1 and T-GM2=2. | | |

|  |  |
| --- | --- |
| **Test Topology:** | ![](../assets/images/840672bbc9d4.jpg)  The test topology above illustrates the placement of clock tester at the measurement plane with 1PPS and 10MHz reference from GNSS simulator connected to clock tester. The tester measurement ports at O-RU UNI connected to CSR.  Stateful (ST) refers to the port configuration of neither explicit timeTransmitter nor explicit timeReceiver. When configured, it refers to the dynamic state of the port based on the received Announce message. |
| **Test Configuration** | 1. Pre-condition-Test 9.2.7 Configuration. 2. Remove the configured Asymmetry Compensation of +1000ns on BR1 and BR2 in TEST-7. 3. Fail the link between BR1 and T-GM1 and BR2 and T-GM1. |
| **Procedure:** | **Detailed Test procedure:**   1. Connect both T-GMs to GNSS Simulator. 2. Configure T-GMs, BRs, HSRs and CSRs with G.8275.1 profile. 3. Connect Clock Tester measurement ports to CSRs TimeTransmitter ports to monitor PTP at the O-RU UNI.   **Verifications for Clock Advertisements**   1. Verify the clock lock state on BRs, HSRs, CSRs. The lock state should be Phase-aligned. 2. Verify the steady-state clock advertisements on BRs, HSRs and CSRs as per ITU-T G.8275.1 Standard-Appendix V, Table V.3.   **After Step-3 of Test Configurations**  **Verifications for Maximum Absolute Packet Time Error and 1PPS Time Error**   1. Verify Performance Measurement during steady state. (1PPS and Packet Time Error should show an additional Error of +/-500ns due to Asymmetry)   **Verifications for Maximum Relative Packet Time Error (NOTE1)**   1. Perform time error measurements on Clock Tester at O-RU1 and O-RU2 plane independently. Collect the data (maxTE1, minTE1) and (maxTE2, minTE2) for both O-RU UNI at least for a period of 1000sec. 2. Estimate the Maximum Relative Time Error measurements between the O-RU UNI ports.    1. max|TERL | (1,2) <= 60ns (FR2) (For Enhanced RU)    2. max|TERL | (1,2) <= 190ns (FR1) (For Enhanced RU) |

* 1. max|TERL | (1,2) <= 100ns (FR1) (For Regular RU)

As per ITU-T G.8271.1 Appendix-V1, the requirement is not to measure the continuous relative time error, *TERL*(t), but to measure the maximum possible value it can take.

max|TE | ( )

maxTEL (1) - minTEL(2)

RL

1,2 the greatest of {

maxTEL (2) - minTEL(1)

#### Verifications for Maximum Relative 1PPS Time Error

* 1. Verify that PTP and SyncE session is up and running.
  2. Estimate the Maximum Relative 1PPS Time Error measurements between the O-RU UNI ports.
     1. max|TERL | (1,2) <= 60ns (FR2) (For Enhanced RU)
     2. max|TERL | (1,2) <= 190ns (FR1) (For Enhanced RU)
     3. max|TERL | (1,2) <= 100ns (FR1) (For Regular RU)

#### Verifications for Time Wander

1. Verify the Time Wander using Clock tester at the O-RU UNI.
   1. Frequency Limit is<= 32ppb (For PRTC Class-A)
   2. MTIE mask as per the limit specified.

#### After Step-3 of Test Configurations

**Verifications for Maximum Absolute Packet Time Error and 1PPS Time Error**

1. Verify Performance Measurement during steady state. (1PPS and Packet Time Error shouldn't show any additional Error of +/-500ns due to Asymmetry)

#### Verifications for Maximum Relative Packet Time Error and 1PPS Time Error

1. Verify the Maximum Relative 1PPS Time Error measurements between the O- RU UNI ports. The results should be as per Test 9.2.1.

NOTE1 (As per G.8271.1):

To measure the relative time error, measure the time error from each point with respect to the internal time reference of measurement equipment, and then subtracting time error of one point from the other.

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **Pass/Fail Criteria:** | Test shall pass if the Maximum Absolute TE, Relative TE and Time Wander Limit result is within the specified limits. | | | | |
| **Test Output** |  | End-to-End  Network Limit at O- RU UNI | Expected Value | | Observed Value |
| (For Enhanced RU) | (For Regular RU) |
|  | Packet max|TEL| | <= 1100ns | <= 1100ns |  |
|  | Packet max|TERL| | <= 60ns(FR2) | <= 100ns(FR1) |  |
| <= 190ns(FR1) |
|  | 1PPS max|TEL| | <= 1100ns | <= 1100ns |  |
|  | 1PPS max|TERL| | <= 60ns(FR2) | <= 100ns(FR1) |  |
| <= 190ns(FR1) |
|  | Frequency Limit (PRTC Class-A) | <= 32ppb | <= 32ppb |  |
| The above limits for max|TEL| doesn't include the error due to Manual Asymmetry. | | | | |

1

1. 9.2.9 Timing Resiliency in Ring Topology-O-DU connected to HSR and SYNC from
2. Backhaul (LLS-C3)-Aggregated Link (Case-1: T-GM1 is the preferred GM)

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | SYNC.RE.09 | **Classification** | Resiliency, Synchronization, Performance, Absolute Time Error, Relative Time Error |
| **Test Title** | Timing Resiliency in Ring Topology-O-DU connected to HSR and SYNC from Backhaul-Aggregated Link. (Case-1: T-GM1 is the preferred GM) | | |
| **Test Objective:** | 1. Verify the Clock Lock states on BRs, HSRs and CSRs. 2. Verify the steady-state clock advertisements on BRs, HSRs and CSRs. 3. Verify the Maximum Absolute Packet Time Error (Max|TEL |) at O-RU UNI. 4. Verify the Maximum Relative Packet Time Error (Max|TERL |) between two O-RU UNI ports. 5. Verify the Maximum Absolute 1PPS Time Error (Max|TEL|) at O-RU UNI. 6. Verify the Time Wander at the O-RU UNI. | | |
| **Pre-Req** | * T-GM1 is the Primary GM and T-GM2 is the Secondary GM. * Clock parameters of both T-GM1 and T-GM2 are same except Priority-2 & GMCID. * Priority-2 on T-GM1=1 and T-GM2=2. | | |
| **Test Topology:** | ![](../assets/images/cf9f47f32c55.jpg)  The test topology above illustrates the placement of clock tester at the measurement plane with 1PPS and 10MHz reference from GNSS simulator connected to clock tester. The tester measurement ports at O-RU UNI connected to CSR.  Stateful (ST) refers to the port configuration of neither explicit timeTransmitter nor explicit timeReceiver. When configured, it refers to the dynamic state of the port based on the received Announce message. | | |
| **Test Configuration** | 1. Clock Tester at O-RU UNI receives timing input on its measurement port. 2. Provide 1PPS and 10MHz reference to Clock Tester from GNSS simulator. 3. G.8275.1 Full Timing Support profile. | | |
| **Procedure:** | **Detailed Test procedure:**   1. Connect both T-GMs to GNSS Simulator. | | |

1. Configure T-GMs, BRs, HSRs and CSRs with G.8275.1 profile over Aggregated Link in backhaul and midhaul.
2. Connect Clock Tester measurement ports to CSRs TimeTransmitter ports to monitor PTP at the O-RU UNI.

#### Verifications for Clock Advertisements

1. Verify the clock lock state on BRs, HSRs, CSRs. The lock state should be Phase-aligned.
2. Verify the steady-state clock advertisements on BRs, HSRs and CSRs as per ITU-T G.8275.1 Standard-Appendix V, Table V.3.

#### Verifications for Maximum Absolute Packet Time Error

1. Verify that PTP session is up and running between T-GM and CSR.
2. Verify time error measurements using Clock Tester for the PTP flows from CSR at the O-RU UNI.
   1. max|TEL | measured on Clock Tester at the O-RU UNI <= 1100ns (For Enhanced RU)
   2. max|TEL | measured on Clock Tester at the O-RU UNI <= 1100ns (For Regular RU)

#### Verifications for Maximum Relative Packet Time Error (NOTE1)

1. Perform time error measurements on Clock Tester at O-RU1 and O-RU2 plane independently. Collect the data (maxTE1, minTE1) and (maxTE2, minTE2) for both O-RU UNI at least for a period of 1000sec.
2. Estimate the Maximum Relative Time Error measurements between the O-RU UNI ports.
   1. max|TERL | (1,2) <= 60ns (FR2) (For Enhanced RU)
   2. max|TERL | (1,2) <= 190ns (FR1) (For Enhanced RU)
   3. max|TERL | (1,2) <= 100ns (FR1) (For Regular RU)

As per ITU-T G.8271.1 Appendix-V1, the requirement is not to measure the continuous relative time error, *TERL*(t), but to measure the maximum possible value it can take.

max|TE | ( )

maxTEL (1) - minTEL(2)

RL

1,2 the greatest of {

maxTEL (2) - minTEL(1)

#### Verifications for Maximum Absolute 1PPS Time Error

1. Verify that PTP session is up and running between T-GM and CSR.
2. Verify the 1PPS time error measurements using Clock Tester at the O-RU UNI.
   1. max|TEL | measured on Clock Tester at the O-RU UNI <= 1100ns (For Enhanced RU)
   2. max|TEL | measured on Clock Tester at the O-RU UNI <= 1100ns (For Regular RU)

#### Verifications for Maximum Relative 1PPS Time Error

1. Verify that PTP and SyncE session is up and running.
2. Estimate the Maximum Relative 1PPS Time Error measurements between the O-RU UNI ports.
   1. max|TERL | (1,2) <= 60ns (FR2) (For Enhanced RU)
   2. max|TERL | (1,2) <= 190ns (FR1) (For Enhanced RU)
   3. max|TERL | (1,2) <= 100ns (FR1) (For Regular RU)

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
|  | **Verifications for Time Wander**   1. Verify the Time Wander using Clock tester at the O-RU UNI.    1. Frequency Limit is <= 32ppb (For PRTC Class-A)    2. MTIE mask as per the limit specified. NOTE1 (As per G.8271.1):   To measure the relative time error, measure the time error from each point with  respect to the internal time reference of measurement equipment, and then subtracting time error of one point from the other. | | | | |
| **Pass/Fail Criteria:** | Test shall pass if the Maximum Absolute TE, Relative TE and Time Wander Limit result is within the specified limits. | | | | |
| **Test Output** |  | End-to-End Network Limit at O- RU UNI | Expected Value | | Observed Value |
| (For Enhanced RU) | (For Regular RU) |
|  | Packet max|TEL| | <= 1100ns | <= 1100ns |  |
|  | Packet max|TERL| | <= 60ns(FR2) | <= 100ns(FR1) |  |
| <= 190ns(FR1) |
|  | 1PPS max|TEL| | <= 1100ns | <= 1100ns |  |
|  | 1PPS max|TERL| | <= 60ns(FR2) | <= 100ns(FR1) |  |
| <= 190ns(FR1) |
|  | Frequency Limit (PRTC Class-A) | <= 32ppb | <= 32ppb |  |
| The above limits applicable for both Normal and Re-arrangement scenarios. | | | | |

1

1. 9.2.10 Timing Resiliency in Ring Topology-O-DU connected to HSR and SYNC
2. from Backhaul (LLS-C3)-Aggregated Link-BR1 to BR3 primary member link
3. down. (Case-1: T-GM1 is the preferred GM)

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | SYNC.RE.10 | **Classification** | Resiliency, Synchronization, Performance, Absolute Time Error, Relative Time Error |
| **Test Title** | Timing Resiliency in Ring Topology-O-DU connected to HSR and SYNC from Backhaul-Aggregated Link-BR1 to BR3 primary member link down. (Case-1: T-GM1 is the preferred GM) | | |
| **Test Objective:** | 1. Verify the Clock Lock states on BRs, HSRs and CSRs. 2. Verify the clock advertisements on BRs, HSRs and CSRs. 3. Verify the Maximum Absolute Packet Time Error (Max|TEL |) at O-RU UNI. 4. Verify the Maximum Relative Packet Time Error (Max|TERL |) between two O-RU UNI ports. 5. Verify the Maximum Absolute 1PPS Time Error (Max|TEL|) at O-RU UNI. 6. Verify the Time Wander at the O-RU UNI. | | |
| **Pre-Req** | * T-GM1 is the Primary GM and T-GM2 is the Secondary GM. * Clock parameters of both T-GM1 and T-GM2 are same except Priority-2 & GMCID. | | |

|  |  |
| --- | --- |
|  | * Priority-2 on T-GM1=1 and T-GM2=2. |
| **Test Topology:** | ![](../assets/images/556430970ead.jpg)  The test topology above illustrates the placement of clock tester at the measurement plane with 1PPS and 10MHz reference from GNSS simulator connected to clock tester. The tester measurement ports at O-RU UNI connected to CSR.  Stateful (ST) refers to the port configuration of neither explicit timeTransmitter nor explicit timeReceiver. When configured, it refers to the dynamic state of the port based on the received Announce message. |
| **Test Configuration** | 1. Pre-condition-Test 9.2.9 Configuration. 2. Fail the Primary member link between BR1 and BR3 in the Aggregated Ethernet Bundle. |
| **Procedure:** | **Detailed Test procedure:**   1. Connect both T-GMs to GNSS Simulator. 2. Configure T-GMs, BRs, HSRs and CSRs with G.8275.1 profile over Aggregated Link in backhaul and midhaul. 3. Connect Clock Tester measurement ports to CSRs TimeTransmitter ports to monitor PTP at the O-RU UNI.   **Verifications for Clock Advertisements**   1. Verify the clock lock state on BRs, HSRs, CSRs. The lock state should be Phase-aligned. 2. Verify the steady-state clock advertisements on BRs, HSRs and CSRs as per ITU-T G.8275.1 Standard-Appendix V, Table V.3.   **Verifications for Maximum Absolute Packet Time Error**   1. Verify that PTP session is up and running between T-GM and CSR. 2. Verify time error measurements using Clock Tester for the PTP flows from CSR at the O-RU UNI.    1. max|TEL | measured on Clock Tester at the O-RU UNI <= 1100ns (For Enhanced RU)    2. max|TEL | measured on Clock Tester at the O-RU UNI <= 1100ns (For Regular RU)   **Verifications for Maximum Relative Packet Time Error (NOTE1)**  1. Perform time error measurements on Clock Tester at O-RU1 and O-RU2 plane independently. Collect the data (maxTE1, minTE1) and (maxTE2, minTE2) for both O-RU UNI at least for a period of 1000sec. |

* 1. Estimate the Maximum Relative Time Error measurements between the O-RU UNI ports.
     1. max|TERL | (1,2) <= 60ns (FR2) (For Enhanced RU)
     2. max|TERL | (1,2) <= 190ns (FR1) (For Enhanced RU)
     3. max|TERL | (1,2) <= 100ns (FR1) (For Regular RU)

As per ITU-T G.8271.1 Appendix-V1, the requirement is not to measure the continuous relative time error, *TERL*(t), but to measure the maximum possible value it can take.

max|TE | ( )

maxTEL (1) - minTEL(2)

RL

1,2 the greatest of {

maxTEL (2) - minTEL(1)

#### Verifications for Maximum Absolute 1PPS Time Error

1. Verify that PTP session is up and running between T-GM and CSR.
2. Verify the 1PPS time error measurements using Clock Tester at the O-RU UNI.
   1. max|TEL | measured on Clock Tester at the O-RU UNI <= 1100ns (For Enhanced RU)
   2. max|TEL | measured on Clock Tester at the O-RU UNI <= 1100ns (For Regular RU)

#### Verifications for Maximum Relative 1PPS Time Error

1. Verify that PTP and SyncE session is up and running.
2. Estimate the Maximum Relative 1PPS Time Error measurements between the O-RU UNI ports.
   1. max|TERL | (1,2) <= 60ns (FR2) (For Enhanced RU)
   2. max|TERL | (1,2) <= 190ns (FR1) (For Enhanced RU)
   3. max|TERL | (1,2) <= 100ns (FR1) (For Regular RU)

#### Verifications for Time Wander

1. Verify the Time Wander using Clock tester at the O-RU UNI.
   1. Frequency Limit is<= 32ppb (For PRTC Class-A)
   2. MTIE mask as per the limit specified. NOTE1 (As per G.8271.1):

To measure the relative time error, measure the time error from each point with

respect to the internal time reference of measurement equipment, and then subtracting time error of one point from the other.

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **Pass/Fail Criteria:** | Test shall pass if the Maximum Absolute TE, Relative TE and Time Wander Limit result is within the specified limits. | | | | |
| **Test Output** |  | End-to-End Network Limit at O- RU UNI | Expected Value | | Observed Value |
| (For Enhanced RU) | (For Regular RU) |
|  | Packet max|TEL| | <= 1100ns | <= 1100ns |  |
|  | Packet max|TERL| | <= 60ns(FR2) | <= 100ns(FR1) |  |
| <= 190ns(FR1) |
|  | 1PPS max|TEL| | <= 1100ns | <= 1100ns |  |
|  | 1PPS max|TERL| | <= 60ns(FR2) | <= 100ns(FR1) |  |
| <= 190ns(FR1) |
|  | Frequency Limit (PRTC Class-A) | <= 32ppb | <= 32ppb |  |

|  |  |
| --- | --- |
|  | The above limits applicable for both Normal and Re-arrangement scenarios. |

1

1. 9.2.11 Timing Resiliency in Ring Topology-O-DU connected to HSR and SYNC
2. from Backhaul (LLS-C3)-Normal State (Case-2: Both T-GMs are of equal
3. preference)

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | SYNC.RE.011 | **Classification** | Resiliency, Synchronization, Performance, Absolute Time Error, Relative Time Error |
| **Test Title** | Timing Resiliency in Ring Topology-O-DU connected to HSR and SYNC from Backhaul-Normal State without any Fail-over conditions exist. (Case-2: Both T-GMs are of equal preference) | | |
| **Test Objective:** | 1. Verify the Clock Lock states on BRs, HSRs and CSRs. 2. Verify the steady-state clock advertisements on BRs, HSRs and CSRs. 3. Verify the Maximum Absolute Packet Time Error (Max|TEL |) at O-RU UNI. 4. Verify the Maximum Relative Packet Time Error (Max|TERL |) between two O-RU UNI ports. 5. Verify the Maximum Absolute 1PPS Time Error (Max|TEL|) at O-RU UNI. 6. Verify the Time Wander at the O-RU UNI. | | |
| **Pre-Req** | * Both T-GM1 and T-GM2 are available to the network. * Clock parameters of both T-GM1 and T-GM2 are same except GMCID. * Port-Identity of T-GM1 < Port-Identity of T-GM2. | | |
| **Test Topology:** | ![](../assets/images/5b86d2b5238d.jpg)  The test topology above illustrates the placement of clock tester at the measurement plane with 1PPS and 10MHz reference from GNSS simulator connected to clock tester. The tester measurement ports at O-RU UNI connected to CSR.  Stateful (ST) refers to the port configuration of neither explicit timeTransmitter nor explicit timeReceiver. When configured, it refers to the dynamic state of the port based on the received Announce message. | | |

|  |  |
| --- | --- |
| **Test Configuration** | 1. Clock Tester at O-RU UNI receives timing input on its measurement port. 2. Provide 1PPS and 10MHz reference to Clock Tester from GNSS simulator. 3. G.8275.1 Full Timing Support profile. |
| **Procedure:** | **Detailed Test procedure:**   1. Connect both T-GMs to GNSS Simulator. 2. Configure T-GMs, BRs, HSRs and CSRs with G.8275.1 profile. 3. Connect Clock Tester measurement ports to CSRs TimeTransmitter ports to monitor PTP at the O-RU UNI.   **Verifications for Clock Advertisements**   1. BR1 shall select clock from T-GM1 (T-GM1 is better by topology) based on Port- id of Sender of A and sender of B). 2. BR2 shall select clock from T-GM1 (T-GM1 is better by topology) based on Port- id of Sender of A and sender of B). 3. Verify the clock lock state on BRs, HSRs, CSRs. The lock state should be Phase-aligned. 4. Verify the steady-state clock advertisements on BRs, HSRs and CSRs as per ITU-T G.8275.1 Standard-Appendix V, Table V.3.   **Verifications for Maximum Absolute Packet Time Error**   1. Verify that PTP session is up and running between T-GM and CSR. 2. Verify time error measurements using Clock Tester for the PTP flows from CSR at the O-RU UNI.    1. max|TEL | measured on Clock Tester at the O-RU UNI <= 1100ns (For Enhanced RU)    2. max|TEL | measured on Clock Tester at the O-RU UNI <= 1100ns (For Regular RU)   **Verifications for Maximum Relative Packet Time Error (NOTE1)**   1. Perform time error measurements on Clock Tester at O-RU1 and O-RU2 plane independently. Collect the data (maxTE1, minTE1) and (maxTE2, minTE2) for both O-RU UNI at least for a period of 1000sec. 2. Estimate the Maximum Relative Time Error measurements between the O-RU UNI ports.    1. max|TERL | (1,2) <= 60ns (FR2) (For Enhanced RU)    2. max|TERL | (1,2) <= 190ns (FR1) (For Enhanced RU)    3. max|TERL | (1,2) <= 100ns (FR1) (For Regular RU)   As per ITU-T G.8271.1 Appendix-V1, the requirement is not to measure the continuous relative time error, *TERL*(t), but to measure the maximum possible value it can take.  max|TE | (1,2)the greatest of maxTEL (1) - minTEL(2)  RL {  maxTEL (2) - minTEL(1)  **Verifications for Maximum Absolute 1PPS Time Error**   1. Verify that PTP session is up and running between T-GM and CSR. 2. Verify the 1PPS time error measurements using Clock Tester at the O-RU UNI.    1. max|TEL | measured on Clock Tester at the O-RU UNI <= 1100ns (For Enhanced RU) |

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
|  | b. max|TEL | measured on Clock Tester at the O-RU UNI <= 1100ns (For Regular RU)  **Verifications for Maximum Relative 1PPS Time Error**   1. Verify that PTP and SyncE session is up and running. 2. Estimate the Maximum Relative 1PPS Time Error measurements between the O-RU UNI ports.    1. max|TERL | (1,2) <= 60ns (FR2) (For Enhanced RU)    2. max|TERL | (1,2) <= 190ns (FR1) (For Enhanced RU)    3. max|TERL | (1,2) <= 100ns (FR1) (For Regular RU)   **Verifications for Time Wander**   1. Verify the Time Wander using Clock tester at the O-RU UNI.    1. Frequency Limit is<= 32ppb (For PRTC Class-A)    2. MTIE mask as per the limit specified. NOTE1 (As per G.8271.1):   To measure the relative time error, measure the time error from each point with  respect to the internal time reference of measurement equipment, and then subtracting time error of one point from the other. | | | | |
| **Pass/Fail Criteria:** | Test shall pass if the Maximum Absolute TE, Relative TE and Time Wander Limit result is within the specified limits. | | | | |
| **Test Output** |  | End-to-End Network Limit at O- RU UNI | Expected Value | | Observed Value |
| (For Enhanced RU) | (For Regular RU) |
|  | Packet max|TEL| | <= 1100ns | <= 1100ns |  |
|  | Packet max|TERL| | <= 60ns(FR2) | <= 100ns(FR1) |  |
| <= 190ns(FR1) |
|  | 1PPS max|TEL| | <= 1100ns | <= 1100ns |  |
|  | 1PPS max|TERL| | <= 60ns(FR2) | <= 100ns(FR1) |  |
| <= 190ns(FR1) |
|  | Frequency Limit (PRTC Class-A) | <= 32ppb | <= 32ppb |  |
| The above limits applicable for both Normal and Re-arrangement scenarios. | | | | |

1

1. 9.2.12 Timing Resiliency in Ring Topology-O-DU connected to HSR and SYNC
2. from Backhaul (LLS-C3)-T-GM1 to BR1 Link Down. (Case-2: Both T-GMs
3. are of equal preference)

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | SYNC.RE.12 | **Classification** | Resiliency, Synchronization, Performance, Absolute Time Error, Relative Time Error |
| **Test Title** | Timing Resiliency in Ring Topology-O-DU connected to HSR and SYNC from Backhaul-T-GM1 to BR1 Link Down. (Case-2: Both T-GMs are of equal preference) | | |
| **Test Objective:** | 1. Verify the Clock Lock states on BRs, HSRs and CSRs. 2. Verify the clock advertisements on BRs, HSRs and CSRs. | | |

|  |  |
| --- | --- |
|  | 1. Verify the Maximum Absolute Packet Time Error (Max|TEL |) at O-RU UNI. 2. Verify the Maximum Relative Packet Time Error (Max|TERL |) between two O-RU UNI ports. 3. Verify the Maximum Absolute 1PPS Time Error (Max|TEL|) at O-RU UNI. 4. Verify the Time Wander at the O-RU UNI. |
| **Pre-Req** | * Both T-GM1 and T-GM2 are available to the network. * Clock parameters of both T-GM1 and T-GM2 are same except GMCID. * Port-Identity of T-GM1 < Port-Identity of T-GM2. * Test 9.2.11 MUST PASS. |
| **Test Topology:** | ![](../assets/images/6e2612308a7d.jpg)  The test topology above illustrates the placement of clock tester at the measurement plane with 1PPS and 10MHz reference from GNSS simulator connected to clock tester. The tester measurement ports at O-RU UNI connected to CSR.  Stateful (ST) refers to the port configuration of neither explicit timeTransmitter nor explicit timeReceiver. When configured, it refers to the dynamic state of the port based on the received Announce message. |
| **Test Configuration** | 1. As per Test 9.2.11. 2. Fail the link between T-GM1 and BR1. |
| **Procedure:** | **Detailed Test procedure:**   1. Connect both T-GMs to GNSS Simulator. 2. Configure T-GMs, BRs, HSRs and CSRs with G.8275.1 profile. 3. Connect Clock Tester measurement ports to CSRs TimeTransmitter ports to monitor PTP at the O-RU UNI.   **Verifications for Clock Advertisements**   1. BR1 shall select clock from T-GM2 (T-GM2 is better (or better by topology) based on Port-id of receiver of A and sender of A) on the shortest path with Step-removal=0. 2. BR2 shall select clock from T-GM1 (T-GM1 is better by topology) based on Port- id of sender of A and sender of B). 3. Verify the clock lock state on BRs, HSRs, CSRs. The lock state should be Phase-aligned. |

4. Verify the steady-state clock advertisements on BRs, HSRs and CSRs as per ITU-T G.8275.1 Standard-Appendix V, Table V.3.

#### Verifications for Maximum Absolute Packet Time Error

1. Verify that PTP session is up and running between T-GM and CSR.
2. Verify time error measurements using Clock Tester for the PTP flows from CSR at the O-RU UNI.
   1. max|TEL | measured on Clock Tester at the O-RU UNI <= 1100ns (For Enhanced RU)
   2. max|TEL | measured on Clock Tester at the O-RU UNI <= 1100ns (For Regular RU)

#### Verifications for Maximum Relative Packet Time Error (NOTE1)

1. Perform time error measurements on Clock Tester at O-RU1 and O-RU2 plane independently. Collect the data (maxTE1, minTE1) and (maxTE2, minTE2) for both O-RU UNI at least for a period of 1000sec.
2. Estimate the Maximum Relative Time Error measurements between the O-RU UNI ports.
   1. max|TERL | (1,2) <= 60ns (FR2) (For Enhanced RU)
   2. max|TERL | (1,2) <= 190ns (FR1) (For Enhanced RU)
   3. max|TERL | (1,2) <= 100ns (FR1) (For Regular RU)

As per ITU-T G.8271.1 Appendix-V1, the requirement is not to measure the continuous relative time error, *TERL*(t), but to measure the maximum possible value it can take.

max|TE | ( )

maxTEL (1) - minTEL(2)

RL

1,2 the greatest of {

maxTEL (2) - minTEL(1)

#### Verifications for Maximum Absolute 1PPS Time Error

1. Verify that PTP session is up and running between T-GM and CSR.
2. Verify the 1PPS time error measurements using Clock Tester at the O-RU UNI.
   1. max|TEL | measured on Clock Tester at the O-RU UNI <= 1100ns (For Enhanced RU)
   2. max|TEL | measured on Clock Tester at the O-RU UNI <= 1100ns (For Regular RU)

#### Verifications for Maximum Relative 1PPS Time Error

1. Verify that PTP and SyncE session is up and running.
2. Estimate the Maximum Relative 1PPS Time Error measurements between the O-RU UNI ports.
   1. max|TERL | (1,2) <= 60ns (FR2) (For Enhanced RU)
   2. max|TERL | (1,2) <= 190ns (FR1) (For Enhanced RU)
   3. max|TERL | (1,2) <= 100ns (FR1) (For Regular RU)

#### Verifications for Time Wander

1. Verify the Time Wander using Clock tester at the O-RU UNI.
   1. Frequency Limit is<= 32ppb (For PRTC Class-A)
   2. MTIE mask as per the limit specified. NOTE1 (As per G.8271.1):

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
|  | To measure the relative time error, measure the time error from each point with respect to the internal time reference of measurement equipment, and then subtracting time error of one point from the other. | | | | |
| **Pass/Fail Criteria:** | Test shall pass if the Maximum Absolute TE, Relative TE and Time Wander Limit result is within the specified limits. | | | | |
| **Test Output** |  | End-to-End Network Limit at O- RU UNI | Expected Value | | Observed Value |
| (For Enhanced RU) | (For Regular RU) |
|  | Packet max|TEL| | <= 1100ns | <= 1100ns |  |
|  | Packet max|TERL| | <= 60ns(FR2) | <= 100ns(FR1) |  |
| <= 190ns(FR1) |
|  | 1PPS max|TEL| | <= 1100ns | <= 1100ns |  |
|  | 1PPS max|TERL| | <= 60ns(FR2) | <= 100ns(FR1) |  |
| <= 190ns(FR1) |
|  | Frequency Limit (PRTC Class-A) | <= 32ppb | <= 32ppb |  |
| The above limits applicable for both Normal and Re-arrangement scenarios. | | | | |

1

1. 9.2.13 Timing Resiliency in Ring Topology-O-DU connected to HSR and SYNC
2. from Backhaul (LLS-C3)-Normal State (Case-3: T-GM1 is preferred through
3. explicit configuration via Local-Priority on TNEs)

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | SYNC.RE.13 | **Classification** | Resiliency, Synchronization, Performance, Absolute Time Error, Relative Time Error |
| **Test Title** | Timing Resiliency in Ring Topology-O-DU connected to HSR and SYNC from Backhaul-Normal State without any Fail-over conditions exist. (Case-3: T-GM1 is preferred through explicit configuration via Local-Priority on TNEs) | | |
| **Test Objective:** | 1. Verify the Clock Lock states on BRs, HSRs and CSRs. 2. Verify the steady-state clock advertisements on BRs, HSRs and CSRs. 3. Verify the Maximum Absolute Packet Time Error (Max|TEL |) at O-RU UNI. 4. Verify the Maximum Relative Packet Time Error (Max|TERL |) between two O-RU UNI ports. 5. Verify the Maximum Absolute 1PPS Time Error (Max|TEL|) at O-RU UNI. 6. Verify the Time Wander at the O-RU UNI. | | |
| **Pre-Req** | * Both T-GM1 and T-GM2 are available to the network. * Clock parameters of both T-GM1 and T-GM2 are same except GMCID. * Local Priority Configuration on BR1 and BR2 for T-GM1 is 1 and that for T-GM2 is 2. | | |

|  |  |
| --- | --- |
| **Test Topology:** | ![](../assets/images/e1dad96f5d39.jpg)  The test topology above illustrates the placement of clock tester at the measurement plane with 1PPS and 10MHz reference from GNSS simulator connected to clock tester. The tester measurement ports at O-RU UNI connected to CSR.  Stateful (ST) refers to the port configuration of neither explicit timeTransmitter nor explicit timeReceiver. When configured, it refers to the dynamic state of the port based on the received Announce message. |
| **Test Configuration** | 1. Clock Tester at O-RU UNI receives timing input on its measurement port. 2. Provide 1PPS and 10MHz reference to Clock Tester from GNSS simulator. 3. G.8275.1 Full Timing Support profile. |
| **Procedure:** | **Detailed Test procedure:**   1. Connect both T-GMs to GNSS Simulator. 2. Configure T-GMs, BRs, HSRs and CSRs with G.8275.1 profile. 3. Connect Clock Tester measurement ports to CSRs TimeTransmitter ports to monitor PTP at the O-RU UNI.   **Verifications for Clock Advertisements**   1. BR1 and BR2 shall select clock from T-GM1. 2. Verify the clock lock state on BRs, HSRs, CSRs. The lock state should be Phase-aligned. 3. Verify the steady-state clock advertisements on BRs, HSRs and CSRs as per ITU-T G.8275.1 Standard-Appendix V, Table V.3.   **Verifications for Maximum Absolute Packet Time Error**   1. Verify that PTP session is up and running between T-GM and CSR. 2. Verify time error measurements using Clock Tester for the PTP flows from CSR at the O-RU UNI.    1. max|TEL | measured on Clock Tester at the O-RU UNI <= 1100ns (For Enhanced RU)    2. max|TEL | measured on Clock Tester at the O-RU UNI <= 1100ns (For Regular RU)   **Verifications for Maximum Relative Packet Time Error (NOTE1)**  1. Perform time error measurements on Clock Tester at O-RU1 and O-RU2 plane independently. Collect the data (maxTE1, minTE1) and (maxTE2, minTE2) for both O-RU UNI at least for a period of 1000sec. |

1. Estimate the Maximum Relative Time Error measurements between the O-RU UNI ports.
   1. max|TERL | (1,2) <= 60ns (FR2) (For Enhanced RU)
   2. max|TERL | (1,2) <= 190ns (FR1) (For Enhanced RU)
   3. max|TERL | (1,2) <= 100ns (FR1) (For Regular RU)

As per ITU-T G.8271.1 Appendix-V1, the requirement is not to measure the continuous relative time error, *TERL*(t), but to measure the maximum possible value it can take.

max|TE | ( )

maxTEL (1) - minTEL(2)

RL

1,2 the greatest of {

maxTEL (2) - minTEL(1)

#### Verifications for Maximum Absolute 1PPS Time Error

1. Verify that PTP session is up and running between T-GM and CSR.
2. Verify the 1PPS time error measurements using Clock Tester at the O-RU UNI.
   1. max|TEL | measured on Clock Tester at the O-RU UNI <= 1100ns (For Enhanced RU)
   2. max|TEL | measured on Clock Tester at the O-RU UNI <= 1100ns (For Regular RU)

#### Verifications for Maximum Relative 1PPS Time Error

1. Verify that PTP and SyncE session is up and running.
2. Estimate the Maximum Relative 1PPS Time Error measurements between the O-RU UNI ports.
   1. max|TERL | (1,2) <= 60ns (FR2) (For Enhanced RU)
   2. max|TERL | (1,2) <= 190ns (FR1) (For Enhanced RU)
   3. max|TERL | (1,2) <= 100ns (FR1) (For Regular RU)

#### Verifications for Time Wander

1. Verify the Time Wander using Clock tester at the O-RU UNI.
   1. Frequency Limit is <= 32ppb (For PRTC Class-A)
   2. MTIE mask as per the limit specified. NOTE1 (As per G.8271.1):

To measure the relative time error, measure the time error from each point with

respect to the internal time reference of measurement equipment, and then subtracting time error of one point from the other.

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **Pass/Fail Criteria:** | Test shall pass if the Maximum Absolute TE, Relative TE and Time Wander Limit result is within the specified limits. | | | | |
| **Test Output** |  | End-to-End Network Limit at O- RU UNI | Expected Value | | Observed Value |
| (For Enhanced RU) | (For Regular RU) |
|  | Packet max|TEL| | <= 1100ns | <= 1100ns |  |
|  | Packet max|TERL| | <= 60ns(FR2) | <= 100ns(FR1) |  |
| <= 190ns(FR1) |
|  | 1PPS max|TEL| | <= 1100ns | <= 1100ns |  |
|  | 1PPS max|TERL| | <= 60ns(FR2) | <= 100ns(FR1) |  |
| <= 190ns(FR1) |
|  | Frequency Limit (PRTC Class-A) | <= 32ppb | <= 32ppb |  |

|  |  |
| --- | --- |
|  | The above limits applicable for both Normal and Re-arrangement scenarios. |

1

1. 9.2.14Timing Resiliency in Ring Topology-O-DU connected to HSR and
2. SYNC from Backhaul (LLS-C3)-T-GM1 to BR1 Link Down. (Case-3:
3. T-GM1 is preferred through explicit configuration via Local-Priority
4. on TNEs)

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | SYNC.RE.14 | **Classification** | Resiliency, Synchronization, Performance, Absolute Time Error, Relative Time Error |
| **Test Title** | Timing Resiliency in Ring Topology-O-DU connected to HSR and SYNC from Backhaul-T-GM1 to BR1 Link Down. (Case-3: T-GM1 is preferred through explicit configuration via Local-Priority on TNEs) | | |
| **Test Objective:** | 1. Verify the Clock Lock states on BRs, HSRs and CSRs. 2. Verify the clock advertisements on BRs, HSRs and CSRs. 3. Verify the Maximum Absolute Packet Time Error (Max|TEL |) at O-RU UNI. 4. Verify the Maximum Relative Packet Time Error (Max|TERL |) between two O-RU UNI ports. 5. Verify the Maximum Absolute 1PPS Time Error (Max|TEL|) at O-RU UNI. 6. Verify the Time Wander at the O-RU UNI. | | |
| **Pre-Req** | * Both T-GM1 and T-GM2 are available to the network. * Clock parameters of both T-GM1 and T-GM2 are same except GMCID. * Local Priority Configuration on BR1 and BR2 for T-GM1 is 1 and that for T-GM2 is 2. * Test 9.2.13 MUST PASS. | | |
| **Test Topology:** | ![A diagram of a computer network  Description automatically generated](../assets/images/e3d34c4beb1a.jpg) | | |

|  |  |
| --- | --- |
|  | The test topology above illustrates the placement of clock tester at the measurement plane with 1PPS and 10MHz reference from GNSS simulator connected to clock tester. The tester measurement ports at O-RU UNI connected to CSR.  Stateful (ST) refers to the port configuration of neither explicit timeTransmitter nor explicit timeReceiver. When configured, it refers to the dynamic state of the port based on the received Announce message. |
| **Test Configuration** | 1. As per Test 9.2.13. 2. Fail the link between T-GM1 and BR1. |
| **Procedure:** | **Detailed Test procedure:**   1. Connect both T-GMs to GNSS Simulator. 2. Configure T-GMs, BRs, HSRs and CSRs with G.8275.1 profile. 3. Connect Clock Tester measurement ports to CSRs TimeTransmitter ports to monitor PTP at the O-RU UNI.   **Verifications for Clock Advertisements**   1. BR1 shall select clock from T-GM2. 2. BR2 shall select clock from T-GM1. 3. Verify the clock lock state on BRs, HSRs, CSRs. The lock state should be Phase-aligned. 4. Verify the steady-state clock advertisements on BRs, HSRs and CSRs as per ITU-T G.8275.1 Standard-Appendix V, Table V.3.   **Verifications for Maximum Absolute Packet Time Error**   1. Verify that PTP session is up and running between T-GM and CSR. 2. Verify time error measurements using Clock Tester for the PTP flows from CSR at the O-RU UNI.    1. max|TEL | measured on Clock Tester at the O-RU UNI <= 1100ns (For Enhanced RU)    2. max|TEL | measured on Clock Tester at the O-RU UNI <= 1100ns (For Regular RU)   **Verifications for Maximum Relative Packet Time Error (NOTE1)**   1. Perform time error measurements on Clock Tester at O-RU1 and O-RU2 plane independently. Collect the data (maxTE1, minTE1) and (maxTE2, minTE2) for both O-RU UNI at least for a period of 1000sec. 2. Estimate the Maximum Relative Time Error measurements between the O-RU UNI ports.    1. max|TERL | (1,2) <= 60ns (FR2) (For Enhanced RU)    2. max|TERL | (1,2) <= 190ns (FR1) (For Enhanced RU)    3. max|TERL | (1,2) <= 100ns (FR1) (For Regular RU)   As per ITU-T G.8271.1 Appendix-V1, the requirement is not to measure the continuous relative time error, *TERL*(t), but to measure the maximum possible value it can take.  max|TE | (1,2)the greatest of maxTEL (1) - minTEL(2)  RL {  maxTEL (2) - minTEL(1)  **Verifications for Maximum Absolute 1PPS Time Error**  1. Verify that PTP session is up and running between T-GM and CSR. |

1. Verify the 1PPS time error measurements using Clock Tester at the O-RU UNI.
   1. max|TEL | measured on Clock Tester at the O-RU UNI <= 1100ns (For Enhanced RU)
   2. max|TEL | measured on Clock Tester at the O-RU UNI <= 1100ns (For Regular RU)

**Verifications for Maximum Relative 1PPS Time Error**

1. Verify that PTP and SyncE session is up and running.
2. Estimate the Maximum Relative 1PPS Time Error measurements between the O-RU UNI ports.
   1. max|TERL | (1,2) <= 60ns (FR2) (For Enhanced RU)
   2. max|TERL | (1,2) <= 190ns (FR1) (For Enhanced RU)
   3. max|TERL | (1,2) <= 100ns (FR1) (For Regular RU)

**Verifications for Time Wander**

1. Verify the Time Wander using Clock tester at the O-RU UNI.
   1. Frequency Limit is<= 32ppb (For PRTC Class-A)
   2. MTIE mask as per the limit specified. NOTE1 (As per G.8271.1):

To measure the relative time error, measure the time error from each point with

respect to the internal time reference of measurement equipment, and then subtracting time error of one point from the other.

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **Pass/Fail Criteria:** | Test shall pass if the Maximum Absolute TE, Relative TE and Time Wander Limit result is within the specified limits. | | | | |
| **Test Output** |  | End-to-End Network Limit at O- RU UNI | Expected Value | | Observed Value |
| (For Enhanced RU) | (For Regular RU) |
|  | Packet max|TEL| | <= 1100ns | <= 1100ns |  |
|  | Packet max|TERL| | <= 60ns(FR2) | <= 100ns(FR1) |  |
| <= 190ns(FR1) |
|  | 1PPS max|TEL| | <= 1100ns | <= 1100ns |  |
|  | 1PPS max|TERL| | <= 60ns(FR2) | <= 100ns(FR1) |  |
| <= 190ns(FR1) |
|  | Frequency Limit (PRTC Class-A) | <= 32ppb | <= 32ppb |  |
| The above limits applicable for both Normal and Re-arrangement scenarios. | | | | |

1

1. 9.2.15Timing Resiliency in Ring Topology-O-DU connected to HSR and
2. SYNC from Backhaul (LLS-C3)-Normal State (Passive Port
3. Monitoring)

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | SYNC.RE.15 | **Classification** | Resiliency, Synchronization, Performance, Absolute Time Error, Relative Time Error |

|  |  |
| --- | --- |
| **Test Title** | Timing Resiliency in Ring Topology-O-DU connected to HSR and SYNC from Backhaul-Normal State without any Fail-over conditions exist. (Passive Port Monitoring) |
| **Test Objective:** | 1. Verify the Clock Lock states on BRs, HSRs and CSRs. 2. Verify the steady-state clock advertisements on BRs, HSRs and CSRs. 3. Verify the Maximum Absolute Packet Time Error (Max|TEL |) at O-RU UNI. 4. Verify the Maximum Relative Packet Time Error (Max|TERL |) between two O-RU UNI ports. 5. Verify the Maximum Absolute 1PPS Time Error (Max|TEL|) at O-RU UNI. 6. Verify the Time Wander at the O-RU UNI. |
| **Pre-Req** | * Both T-GM1 and T-GM2 are available to the network. * Clock parameters of both T-GM1 and T-GM2 are same except GMCID. * Port-Identity of T-GM1 < Port-Identity of T-GM2. |
| **Test Topology:** | ![](../assets/images/828783ad6c81.jpg)  The test topology above illustrates the placement of clock tester at the measurement plane with 1PPS and 10MHz reference from GNSS simulator connected to clock tester. The tester measurement ports at O-RU UNI connected to CSR.  Stateful (ST) refers to the port configuration of neither explicit timeTransmitter nor explicit timeReceiver. When configured, it refers to the dynamic state of the port based on the received Announce message. |
| **Test Configuration** | 1. Clock Tester at O-RU UNI receives timing input on its measurement port. 2. Provide 1PPS and 10MHz reference to Clock Tester from GNSS simulator. 3. G.8275.1 Full Timing Support profile. 4. Introduce Asymmetry of 1000ns between BR3 and BR5. |
| **Procedure:** | **Detailed Test procedure:**   1. Connect both T-GMs to GNSS Simulator. 2. Configure T-GMs, BRs, HSRs and CSRs with G.8275.1 profile. 3. Connect Clock Tester measurement ports to CSRs TimeTransmitter ports to monitor PTP at the O-RU UNI.   **Verifications for Clock Advertisements** |

* 1. BR1 shall select clock from T-GM1 (T-GM1 is better by topology) based on Port- id of Sender of A and sender of B).
  2. BR2 shall select clock from T-GM1 (T-GM1 is better by topology) based on Port- id of Sender of A and sender of B).
  3. Verify the clock lock state on BRs, HSRs, CSRs. The lock state should be Phase-aligned.
  4. After step-4 in Test Configuration, Verify Performance Measurement during steady state. (1PPS and Packet Time Error should show an Error of +/-500ns)
  5. BR6 should raise an alarm based on the configured Alarm Threshold.
  6. BR6 should estimate the path asymmetry between the two paths.
  7. Verify the steady-state clock advertisements on BRs, HSRs and CSRs as per ITU-T G.8275.1 Standard-Appendix V, Table V.3.

#### Verifications for Maximum Absolute Packet Time Error

1. Verify that PTP session is up and running between T-GM and CSR.
2. Verify time error measurements using Clock Tester for the PTP flows from CSR at the O-RU UNI.
   1. max|TEL | measured on Clock Tester at the O-RU UNI <= 1100ns (For Enhanced RU)
   2. max|TEL | measured on Clock Tester at the O-RU UNI <= 1100ns (For Regular RU)

#### Verifications for Maximum Relative Packet Time Error (NOTE1)

1. Perform time error measurements on Clock Tester at O-RU1 and O-RU2 plane independently. Collect the data (maxTE1, minTE1) and (maxTE2, minTE2) for both O-RU UNI at least for a period of 1000sec.
2. Estimate the Maximum Relative Time Error measurements between the O-RU UNI ports.
   1. max|TERL | (1,2) <= 60ns (FR2) (For Enhanced RU)
   2. max|TERL | (1,2) <= 190ns (FR1) (For Enhanced RU)
   3. max|TERL | (1,2) <= 100ns (FR1) (For Regular RU)

As per ITU-T G.8271.1 Appendix-V1, the requirement is not to measure the continuous relative time error, *TERL*(t), but to measure the maximum possible value it can take.

max|TE | ( )

maxTEL (1) - minTEL(2)

RL

1,2 the greatest of {

maxTEL (2) - minTEL(1)

#### Verifications for Maximum Absolute 1PPS Time Error

1. Verify that PTP session is up and running between T-GM and CSR.
2. Verify the 1PPS time error measurements using Clock Tester at the O-RU UNI.
   1. max|TEL | measured on Clock Tester at the O-RU UNI <= 1100ns (For Enhanced RU)
   2. max|TEL | measured on Clock Tester at the O-RU UNI <= 1100ns (For Regular RU)

#### Verifications for Maximum Relative 1PPS Time Error

1. Verify that PTP and SyncE session is up and running.
2. Estimate the Maximum Relative 1PPS Time Error measurements between the O-RU UNI ports.

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
|  | 1. max|TERL | (1,2) <= 60ns (FR2) (For Enhanced RU) 2. max|TERL | (1,2) <= 190ns (FR1) (For Enhanced RU) 3. max|TERL | (1,2) <= 100ns (FR1) (For Regular RU)   **Verifications for Time Wander**   1. Verify the Time Wander using Clock tester at the O-RU UNI.    1. Frequency Limit is<= 32ppb (For PRTC Class-A)    2. MTIE mask as per the limit specified. NOTE1 (As per G.8271.1):   To measure the relative time error, measure the time error from each point with  respect to the internal time reference of measurement equipment, and then subtracting time error of one point from the other. | | | | |
| **Pass/Fail Criteria:** | Test shall pass if the Maximum Absolute TE, Relative TE and Time Wander Limit result is within the specified limits. | | | | |
| **Test Output** |  | End-to-End Network Limit at O- RU UNI | Expected Value | | Observed Value |
| (For Enhanced RU) | (For Regular RU) |
|  | Packet max|TEL| | <= 1100ns | <= 1100ns |  |
|  | Packet max|TERL| | <= 60ns(FR2) | <= 100ns(FR1) |  |
| <= 190ns(FR1) |
|  | 1PPS max|TEL| | <= 1100ns | <= 1100ns |  |
|  | 1PPS max|TERL| | <= 60ns(FR2) | <= 100ns(FR1) |  |
| <= 190ns(FR1) |
|  | Frequency Limit (PRTC Class-A) | <= 32ppb | <= 32ppb |  |
| The above limits for max|TEL| doesn't include the error due to Manual Asymmetry. | | | | |

1. 9.2.16Timing Resiliency in Ring Topology-O-DU connected to HSR and
2. SYNC from Midhaul (LLS-C3)-Normal State (Case-1: T-GM1 is the
3. preferred GM)

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | SYNC.RE.16 | **Classification** | Resiliency, Synchronization, Performance, Absolute Time Error, Relative Time Error |
| **Test Title** | Timing Resiliency in Ring Topology-O-DU connected to HSR and SYNC from Midhaul-Normal State without any Fail-over conditions exist. (Case-1: T-GM1 is the preferred GM) | | |
| **Test Objective:** | 1. Verify the Clock Lock states on BRs, HSRs and CSRs. 2. Verify the steady-state clock advertisements on BRs, HSRs and CSRs. 3. Verify the Maximum Absolute Packet Time Error (Max|TEL |) at O-RU UNI. 4. Verify the Maximum Relative Packet Time Error (Max|TERL |) between two O-RU UNI ports. 5. Verify the Maximum Absolute 1PPS Time Error (Max|TEL|) at O-RU UNI. 6. Verify the Time Wander at the O-RU UNI. | | |
| **Pre-Req** | * T-GM1 is the Primary GM and T-GM2 is the Secondary GM in the Midhaul. | | |

|  |  |
| --- | --- |
|  | * Clock parameters of both T-GM1 and T-GM2 are same except Priority-2 & GMCID. * Priority-2 on T-GM1=1 and T-GM2=2. |
| **Test Topology:** | ![](../assets/images/84c35a4cfcf6.jpg)  The test topology above illustrates the placement of clock tester at the measurement plane with 1PPS and 10MHz reference from GNSS simulator connected to clock tester. The tester measurement ports at O-RU UNI connected to CSR.  Stateful (ST) refers to the port configuration of neither explicit timeTransmitter nor explicit timeReceiver. When configured, it refers to the dynamic state of the port based on the received Announce message. |
| **Test Configuration** | 1. Clock Tester at O-RU UNI receives timing input on its measurement port. 2. Provide 1PPS and 10MHz reference to Clock Tester from GNSS simulator. 3. G.8275.1 Full Timing Support profile. |
| **Procedure:** | **Detailed Test procedure:**   1. Connect both T-GMs to GNSS Simulator. 2. Configure T-GMs, BRs, HSRs and CSRs with G.8275.1 profile. 3. Connect Clock Tester measurement ports to CSRs TimeTransmitter ports to monitor PTP at the O-RU UNI.   **Verifications for Clock Advertisements**   1. Verify the clock lock state on BRs, HSRs, CSRs. The lock state should be Phase-aligned. 2. Verify the steady-state clock advertisements on BRs, HSRs and CSRs as per ITU-T G.8275.1 Standard-Appendix V, Table V.3.   **Verifications for Maximum Absolute Packet Time Error**   1. Verify that PTP session is up and running between T-GM and CSR. 2. Verify time error measurements using Clock Tester for the PTP flows from CSR at the O-RU UNI.    1. max|TEL | measured on Clock Tester at the O-RU UNI <= 1100ns (For Enhanced RU) |

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
|  | b. max|TEL | measured on Clock Tester at the O-RU UNI <= 1100ns (For Regular RU)  **Verifications for Maximum Relative Packet Time Error (NOTE1)**   1. Perform time error measurements on Clock Tester at O-RU1 and O-RU2 plane independently. Collect the data (maxTE1, minTE1) and (maxTE2, minTE2) for both O-RU UNI at least for a period of 1000sec. 2. Estimate the Maximum Relative Time Error measurements between the O-RU UNI ports.    1. max|TERL | (1,2) <= 60ns (FR2) (For Enhanced RU)    2. max|TERL | (1,2) <= 190ns (FR1) (For Enhanced RU)    3. max|TERL | (1,2) <= 100ns (FR1) (For Regular RU)   As per ITU-T G.8271.1 Appendix-V1, the requirement is not to measure the continuous relative time error, *TERL*(t), but to measure the maximum possible value it can take.  max|TE | (1,2)the greatest of maxTEL (1) - minTEL(2)  RL {  maxTEL (2) - minTEL(1)  **Verifications for Maximum Absolute 1PPS Time Error**   1. Verify that PTP session is up and running between T-GM and CSR. 2. Verify the 1PPS time error measurements using Clock Tester at the O-RU UNI.    1. max|TEL | measured on Clock Tester at the O-RU UNI <= 1100ns (For Enhanced RU)    2. max|TEL | measured on Clock Tester at the O-RU UNI <= 1100ns (For Regular RU)   **Verifications for Maximum Relative 1PPS Time Error**   1. Verify that PTP and SyncE session is up and running. 2. Estimate the Maximum Relative 1PPS Time Error measurements between the O-RU UNI ports.    1. max|TERL | (1,2) <= 60ns (FR2) (For Enhanced RU)    2. max|TERL | (1,2) <= 190ns (FR1) (For Enhanced RU)    3. max|TERL | (1,2) <= 100ns (FR1) (For Regular RU)   **Verifications for Time Wander**   1. Verify the Time Wander using Clock tester at the O-RU UNI.    1. Frequency Limit is <= 32ppb (For PRTC Class-A)    2. MTIE mask as per the limit specified. NOTE1 (As per G.8271.1):   To measure the relative time error, measure the time error from each point with  respect to the internal time reference of measurement equipment, and then subtracting time error of one point from the other. | | | | |
| **Pass/Fail Criteria:** | Test shall pass if the Maximum Absolute TE, Relative TE and Time Wander Limit result is within the specified limits. | | | | |
| **Test Output** |  | End-to-End Network Limit at O- RU UNI | Expected Value | | Observed Value |
| (For Enhanced RU) | (For Regular RU) |
|  | Packet max|TEL| | <= 1100ns | <= 1100ns |  |
|  | Packet max|TERL| | <= 60ns(FR2) | <= 100ns(FR1) |  |

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
|  |  |  | <= 190ns(FR1) |  |  |
|  | 1PPS max|TEL| | <= 1100ns | <= 1100ns |  |
|  | 1PPS max|TERL| | <= 60ns(FR2) | <= 100ns(FR1) |  |
| <= 190ns(FR1) |
|  | Frequency Limit (PRTC Class-A) | <= 32ppb | <= 32ppb |  |
| The above limits applicable for both Normal and Re-arrangement scenarios. | | | | |

1

1. 9.2.17Timing Resiliency in Ring Topology-O-DU connected to HSR and
2. SYNC from Midhaul (LLS-C3)-T-GM1 to HSR1 Link Down. (Case-
3. 1: T-GM1 is the preferred GM)

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | SYNC.RE.17 | **Classification** | Resiliency, Synchronization, Performance, Absolute Time Error, Relative Time Error |
| **Test Title** | Timing Resiliency in Ring Topology-O-DU connected to HSR and SYNC from Midhaul-T-GM to HSR1 Link Down. (Case-1: T-GM1 is the preferred GM) | | |
| **Test Objective:** | 1. Verify the Clock Lock states on BRs, HSRs and CSRs. 2. Verify the steady-state clock advertisements on BRs, HSRs and CSRs. 3. Verify the Maximum Absolute Packet Time Error (Max|TEL |) at O-RU UNI. 4. Verify the Maximum Relative Packet Time Error (Max|TERL |) between two O-RU UNI ports. 5. Verify the Maximum Absolute 1PPS Time Error (Max|TEL|) at O-RU UNI. 6. Verify the Time Wander at the O-RU UNI. | | |
| **Pre-Req** | * T-GM1 is the Primary GM and T-GM2 is the Secondary GM in the Midhaul. * Clock parameters of both T-GM1 and T-GM2 are same except Priority-2 & GMCID. * Priority-2 on T-GM1=1 and T-GM2=2. | | |

|  |  |
| --- | --- |
| **Test Topology:** | ![](../assets/images/378472658cc8.jpg)  The test topology above illustrates the placement of clock tester at the measurement plane with 1PPS and 10MHz reference from GNSS simulator connected to clock tester. The tester measurement ports at O-RU UNI connected to CSR.  Stateful (ST) refers to the port configuration of neither explicit timeTransmitter nor explicit timeReceiver. When configured, it refers to the dynamic state of the port based on the received Announce message. |
| **Test Configuration** | 1. Pre-condition-Test 9.2.11 Configuration. 2. Fail the link between T-GM1 and HSR1. |
| **Procedure:** | **Detailed Test procedure:**   1. Connect both T-GMs to GNSS Simulator. 2. Configure T-GMs, BRs, HSRs and CSRs with G.8275.1 profile. 3. Connect Clock Tester measurement ports to CSRs TimeTransmitter ports to monitor PTP at the O-RU UNI.   **Verifications for Clock Advertisements**   1. Verify the clock lock state on BRs, HSRs, CSRs. The lock state should be Phase-aligned. 2. Verify the clock advertisements on BRs, HSRs and CSRs as per ITU-T G.8275.1 Standard-Appendix V, Table V.3.   **Verifications for Maximum Absolute Packet Time Error**   1. Verify that PTP session is up and running between T-GM and CSR. 2. Verify time error measurements using Clock Tester for the PTP flows from CSR at the O-RU UNI.    1. max|TEL | measured on Clock Tester at the O-RU UNI <= 1100ns (For Enhanced RU)    2. max|TEL | measured on Clock Tester at the O-RU UNI <= 1100ns (For Regular RU)   **Verifications for Maximum Relative Packet Time Error (NOTE1)**  1. Perform time error measurements on Clock Tester at O-RU1 and O-RU2 plane independently. Collect the data (maxTE1, minTE1) and (maxTE2, minTE2) for both O-RU UNI at least for a period of 1000sec. |

* 1. Estimate the Maximum Relative Time Error measurements between the O-RU UNI ports.
     1. max|TERL | (1,2) <= 60ns (FR2) (For Enhanced RU)
     2. max|TERL | (1,2) <= 190ns (FR1) (For Enhanced RU)
     3. max|TERL | (1,2) <= 100ns (FR1) (For Regular RU)

As per ITU-T G.8271.1 Appendix-V1, the requirement is not to measure the continuous relative time error, *TERL*(t), but to measure the maximum possible value it can take.

max|TE | ( )

maxTEL (1) - minTEL(2)

RL

1,2 the greatest of {

maxTEL (2) - minTEL(1)

#### Verifications for Maximum Absolute 1PPS Time Error

1. Verify that PTP session is up and running between T-GM and CSR.
2. Verify the 1PPS time error measurements using Clock Tester at the O-RU UNI.
   1. max|TEL | measured on Clock Tester at the O-RU UNI <= 1100ns (For Enhanced RU)
   2. max|TEL | measured on Clock Tester at the O-RU UNI <= 1100ns (For Regular RU)

#### Verifications for Maximum Relative 1PPS Time Error

1. Verify that PTP and SyncE session is up and running.
2. Estimate the Maximum Relative 1PPS Time Error measurements between the O-RU UNI ports.
   1. max|TERL | (1,2) <= 60ns (FR2) (For Enhanced RU)
   2. max|TERL | (1,2) <= 190ns (FR1) (For Enhanced RU)
   3. max|TERL | (1,2) <= 100ns (FR1) (For Regular RU)

#### Verifications for Time Wander

1. Verify the Time Wander using Clock tester at the O-RU UNI.
   1. Frequency Limit is<= 32ppb (For PRTC Class-A)
   2. MTIE mask as per the limit specified. NOTE1 (As per G.8271.1):

To measure the relative time error, measure the time error from each point with

respect to the internal time reference of measurement equipment, and then subtracting time error of one point from the other.

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **Pass/Fail Criteria:** | Test shall pass if the Maximum Absolute TE, Relative TE and Time Wander Limit result is within the specified limits. | | | | |
| **Test Output** |  | End-to-End Network Limit at O- RU UNI | Expected Value | | Observed Value |
| (For Enhanced RU) | (For Regular RU) |
|  | Packet max|TEL| | <= 1100ns | <= 1100ns |  |
|  | Packet max|TERL| | <= 60ns(FR2) | <= 100ns(FR1) |  |
| <= 190ns(FR1) |
|  | 1PPS max|TEL| | <= 1100ns | <= 1100ns |  |
|  | 1PPS max|TERL| | <= 60ns(FR2) | <= 100ns(FR1) |  |
| <= 190ns(FR1) |
|  | Frequency Limit (PRTC Class-A) | <= 32ppb | <= 32ppb |  |

|  |  |
| --- | --- |
|  | The above limits applicable for both Normal and Re-arrangement scenarios. |

1

1. 9.2.18Timing Resiliency in Ring Topology-O-DU connected to HSR and
2. SYNC from Midhaul (LLS-C3)-T-GM1 Fail-over. (Case-1: T-GM1 is
3. the preferred GM)

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | SYNC.RE.18 | **Classification** | Resiliency, Synchronization, Performance, Absolute Time Error, Relative Time Error |
| **Test Title** | Timing Resiliency in Ring Topology-O-DU connected to HSR and SYNC from Midhaul-T-GM1 Fail-over. (Case-1: T-GM1 is the preferred GM) | | |
| **Test Objective:** | 1. Verify the Clock Lock states on BRs, HSRs and CSRs. 2. Verify the steady-state clock advertisements on BRs, HSRs and CSRs. 3. Verify the Maximum Absolute Packet Time Error (Max|TEL |) at O-RU UNI. 4. Verify the Maximum Relative Packet Time Error (Max|TERL |) between two O-RU UNI ports. 5. Verify the Maximum Absolute 1PPS Time Error (Max|TEL|) at O-RU UNI. 6. Verify the Time Wander at the O-RU UNI. | | |
| **Pre-Req** | * T-GM1 is the Primary GM and T-GM2 is the Secondary GM in the Midhaul. * Clock parameters of both T-GM1 and T-GM2 are same except Priority-2 & GMCID. * Priority-2 on T-GM1=1 and T-GM2=2. | | |
| **Test Topology:** | ![](../assets/images/084505a9425e.jpg)  The test topology above illustrates the placement of clock tester at the measurement plane with 1PPS and 10MHz reference from GNSS simulator connected to clock tester. The tester measurement ports at O-RU UNI connected to CSR. | | |

|  |  |
| --- | --- |
|  | Stateful (ST) refers to the port configuration of neither explicit timeTransmitter nor explicit timeReceiver. When configured, it refers to the dynamic state of the port based on the received Announce message. |
| **Test Configuration** | 1. Pre-condition-Test 9.2.11 Configuration. 2. Fail the links between T-GM1 to HSR1 and HSR2. |
| **Procedure:** | **Detailed Test procedure:**   1. Connect both T-GMs to GNSS Simulator. 2. Configure T-GMs, BRs, HSRs and CSRs with G.8275.1 profile. 3. Connect Clock Tester measurement ports to CSRs TimeTransmitter ports to monitor PTP at the O-RU UNI.   **Verifications for Clock Advertisements**   1. Verify the clock lock state on BRs, HSRs, CSRs. The lock state should be Phase-aligned. 2. Verify the clock advertisements on BRs, HSRs and CSRs as per ITU-T G.8275.1 Standard-Appendix V, Table V.3.   **Verifications for Maximum Absolute Packet Time Error**   1. Verify that PTP session is up and running between T-GM and CSR. 2. Verify time error measurements using Clock Tester for the PTP flows from CSR at the O-RU UNI.    1. max|TEL | measured on Clock Tester at the O-RU UNI <= 1100ns (For Enhanced RU)    2. max|TEL | measured on Clock Tester at the O-RU UNI <= 1100ns (For Regular RU)   **Verifications for Maximum Relative Packet Time Error (NOTE1)**   1. Perform time error measurements on Clock Tester at O-RU1 and O-RU2 plane independently. Collect the data (maxTE1, minTE1) and (maxTE2, minTE2) for both O-RU UNI at least for a period of 1000sec. 2. Estimate the Maximum Relative Time Error measurements between the O-RU UNI ports.    1. max|TERL | (1,2) <= 60ns (FR2) (For Enhanced RU)    2. max|TERL | (1,2) <= 190ns (FR1) (For Enhanced RU)    3. max|TERL | (1,2) <= 100ns (FR1) (For Regular RU)   As per ITU-T G.8271.1 Appendix-V1, the requirement is not to measure the continuous relative time error, *TERL*(t), but to measure the maximum possible value it can take.  max|TE | (1,2)the greatest of maxTEL (1) - minTEL(2)  RL {  maxTEL (2) - minTEL(1)  **Verifications for Maximum Absolute 1PPS Time Error**   1. Verify that PTP session is up and running between T-GM and CSR. 2. Verify the 1PPS time error measurements using Clock Tester at the O-RU UNI.    1. max|TEL | measured on Clock Tester at the O-RU UNI <= 1100ns (For Enhanced RU)    2. max|TEL | measured on Clock Tester at the O-RU UNI <= 1100ns (For Regular RU) |

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
|  | **Verifications for Maximum Relative 1PPS Time Error**   1. Verify that PTP and SyncE session is up and running. 2. Estimate the Maximum Relative 1PPS Time Error measurements between the O-RU UNI ports.    1. max|TERL | (1,2) <= 60ns (FR2) (For Enhanced RU)    2. max|TERL | (1,2) <= 190ns (FR1) (For Enhanced RU)    3. max|TERL | (1,2) <= 100ns (FR1) (For Regular RU)   **Verifications for Time Wander**   1. Verify the Time Wander using Clock tester at the O-RU UNI.    1. Frequency Limit is<= 32ppb (For PRTC Class-A)    2. MTIE mask as per the limit specified. NOTE1 (As per G.8271.1):   To measure the relative time error, measure the time error from each point with  respect to the internal time reference of measurement equipment, and then subtracting time error of one point from the other. | | | | |
| **Pass/Fail Criteria:** | Test shall pass if the Maximum Absolute TE, Relative TE and Time Wander Limit result is within the specified limits. | | | | |
| **Test Output** |  | End-to-End Network Limit at O- RU UNI | Expected Value | | Observed Value |
| (For Enhanced RU) | (For Regular RU) |
|  | Packet max|TEL| | <= 1100ns | <= 1100ns |  |
|  | Packet max|TERL| | <= 60ns(FR2) | <= 100ns(FR1) |  |
| <= 190ns(FR1) |
|  | 1PPS max|TEL| | <= 1100ns | <= 1100ns |  |
|  | 1PPS max|TERL| | <= 60ns(FR2) | <= 100ns(FR1) |  |
| <= 190ns(FR1) |
|  | Frequency Limit (PRTC Class-A) | <= 32ppb | <= 32ppb |  |
| The above limits applicable for both Normal and Re-arrangement scenarios. | | | | |

1

1. 9.2.19Timing Resiliency in Ring Topology-O-DU connected to HSR and
2. SYNC from Midhaul (LLS-C3)-Link Failure in Fronthaul. (Case-1: T-
3. GM1 is the preferred GM)

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | SYNC.RE.19 | **Classification** | Resiliency, Synchronization, Performance, Absolute Time Error, Relative Time Error |
| **Test Title** | Timing Resiliency in Ring Topology-O-DU connected to HSR and SYNC from Midhaul-Link Failure in Fronthaul. (Case-1: T-GM1 is the preferred GM) | | |
| **Test Objective:** | 1. Verify the Clock Lock states on BRs, HSRs and CSRs. 2. Verify the steady-state clock advertisements on BRs, HSRs and CSRs. 3. Verify the Maximum Absolute Packet Time Error (Max|TEL |) at O-RU UNI. | | |

|  |  |
| --- | --- |
|  | 1. Verify the Maximum Relative Packet Time Error (Max|TERL |) between two O-RU UNI ports. 2. Verify the Maximum Absolute 1PPS Time Error (Max|TEL|) at O-RU UNI. 3. Verify the Time Wander at the O-RU UNI. |
| **Pre-Req** | * T-GM1 is the Primary GM and T-GM2 is the Secondary GM in the Midhaul. * Clock parameters of both T-GM1 and T-GM2 are same except Priority-2 & GMCID. * Priority-2 on T-GM1=1 and T-GM2=2. |
| **Test Topology:** | ![A diagram of a computer network  Description automatically generated](../assets/images/6d690c222256.jpg)  The test topology above illustrates the placement of clock tester at the measurement plane with 1PPS and 10MHz reference from GNSS simulator connected to clock tester. The tester measurement ports at O-RU UNI connected to CSR.  Stateful (ST) refers to the port configuration of neither explicit timeTransmitter nor explicit timeReceiver. When configured, it refers to the dynamic state of the port based on the received Announce message. |
| **Test Configuration** | 1. Pre-condition-Test 9.2.11 Configuration. 2. Fail the link between HSR3 and CSR1. |
| **Procedure:** | **Detailed Test procedure:**   1. Connect both T-GMs to GNSS Simulator. 2. Configure T-GMs, BRs, HSRs and CSRs with G.8275.1 profile. 3. Connect Clock Tester measurement ports to CSRs TimeTransmitter ports to monitor PTP at the O-RU UNI.   **Verifications for Clock Advertisements**   1. Verify the clock lock state on BRs, HSRs, CSRs. The lock state should be Phase-aligned. 2. Verify the clock advertisements on BRs, HSRs and CSRs as per ITU-T G.8275.1 Standard-Appendix V, Table V.3.   **Verifications for Maximum Absolute Packet Time Error**   1. Verify that PTP session is up and running between T-GM and CSR. |

|  |  |
| --- | --- |
|  | 1. Verify time error measurements using Clock Tester for the PTP flows from CSR at the O-RU UNI.    1. max|TEL | measured on Clock Tester at the O-RU UNI <= 1100ns (For Enhanced RU)    2. max|TEL | measured on Clock Tester at the O-RU UNI <= 1100ns (For Regular RU)   **Verifications for Maximum Relative Packet Time Error (NOTE1)**   1. Perform time error measurements on Clock Tester at O-RU1 and O-RU2 plane independently. Collect the data (maxTE1, minTE1) and (maxTE2, minTE2) for both O-RU UNI at least for a period of 1000sec. 2. Estimate the Maximum Relative Time Error measurements between the O-RU UNI ports.    1. max|TERL | (1,2) <= 60ns (FR2) (For Enhanced RU)    2. max|TERL | (1,2) <= 190ns (FR1) (For Enhanced RU)    3. max|TERL | (1,2) <= 100ns (FR1) (For Regular RU)   As per ITU-T G.8271.1 Appendix-V1, the requirement is not to measure the continuous relative time error, *TERL*(t), but to measure the maximum possible value it can take.  max|TE | (1,2)the greatest of maxTEL (1) - minTEL(2)  RL {  maxTEL (2) - minTEL(1)  **Verifications for Maximum Absolute 1PPS Time Error**   1. Verify that PTP session is up and running between T-GM and CSR. 2. Verify the 1PPS time error measurements using Clock Tester at the O-RU UNI.    1. max|TEL | measured on Clock Tester at the O-RU UNI <= 1100ns (For Enhanced RU)    2. max|TEL | measured on Clock Tester at the O-RU UNI <= 1100ns (For Regular RU)   **Verifications for Maximum Relative 1PPS Time Error**   1. Verify that PTP and SyncE session is up and running. 2. Estimate the Maximum Relative 1PPS Time Error measurements between the O-RU UNI ports.    1. max|TERL | (1,2) <= 60ns (FR2) (For Enhanced RU)    2. max|TERL | (1,2) <= 190ns (FR1) (For Enhanced RU)    3. max|TERL | (1,2) <= 100ns (FR1) (For Regular RU)   **Verifications for Time Wander**   1. Verify the Time Wander using Clock tester at the O-RU UNI.    1. Frequency Limit is<= 32ppb (For PRTC Class-A)    2. MTIE mask as per the limit specified. NOTE1 (As per G.8271.1):   To measure the relative time error, measure the time error from each point with  respect to the internal time reference of measurement equipment, and then subtracting time error of one point from the other. |
| **Pass/Fail Criteria:** | Test shall pass if the Maximum Absolute TE, Relative TE and Time Wander Limit result is within the specified limits. |

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **Test Output** |  | End-to-End Network Limit at O- RU UNI | Expected Value | | Observed Value |
| (For Enhanced RU) | (For Regular RU) |
|  | Packet max|TEL| | <= 1100ns | <= 1100ns |  |
|  | Packet max|TERL| | <= 60ns(FR2) | <= 100ns(FR1) |  |
| <= 190ns(FR1) |
|  | 1PPS max|TEL| | <= 1100ns | <= 1100ns |  |
|  | 1PPS max|TERL| | <= 60ns(FR2) | <= 100ns(FR1) |  |
| <= 190ns(FR1) |
|  | Frequency Limit (PRTC Class-A) | <= 32ppb | <= 32ppb |  |
| The above limits applicable for both Normal and Re-arrangement scenarios. | | | | |

1

1. 9.2.20Timing Resiliency in Ring Topology-O-DU connected to HSR and
2. SYNC from Midhaul (LLS-C3)-Asymmetry Test. (Case-1: T-GM1 is
3. the preferred GM)

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | SYNC.RE.20 | **Classification** | Resiliency, Synchronization, Performance, Absolute Time Error, Relative Time Error |
| **Test Title** | Timing Resiliency in Ring Topology-O-DU connected to HSR and SYNC from Midhaul-Asymmetry Test. (Case-1: T-GM1 is the preferred GM) | | |
| **Test Objective:** | 1. Verify the Clock Lock states on BRs, HSRs and CSRs. 2. Verify the steady-state clock advertisements on BRs, HSRs and CSRs. 3. Verify the Maximum Absolute Packet Time Error (Max|TEL |) at O-RU UNI. 4. Verify the Maximum Relative Packet Time Error (Max|TERL |) between two O-RU UNI ports. 5. Verify the Maximum Absolute 1PPS Time Error (Max|TEL|) at O-RU UNI. 6. Verify the Time Wander at the O-RU UNI. | | |
| **Pre-Req** | * T-GM1 is the Primary GM and T-GM2 is the Secondary GM. * Clock parameters of both T-GM1 and T-GM2 are same except Priority-2 & GMCID. * Priority-2 on T-GM1=1 and T-GM2=2. | | |

|  |  |
| --- | --- |
| **Test Topology:** | ![](../assets/images/b29d2be4fa60.jpg)  The test topology above illustrates the placement of clock tester at the measurement plane with 1PPS and 10MHz reference from GNSS simulator connected to clock tester. The tester measurement ports at O-RU UNI connected to CSR.  Stateful (ST) refers to the port configuration of neither explicit timeTransmitter nor explicit timeReceiver. When configured, it refers to the dynamic state of the port based on the received Announce message. |
| **Test Configuration** | 1. As per Test 9.2.11. 2. Introduce Asymmetry of +1000ns at the O/p of T-GM1 and No Asymmetry at the O/p of T-GM2. 3. Configure Asymmetry Compensation of +1000ns on HSR1 and HSR2. |
| **Procedure:** | **Detailed Test procedure:**   1. Connect both T-GMs to GNSS Simulator. 2. Configure T-GMs, BRs, HSRs and CSRs with G.8275.1 profile. 3. Connect Clock Tester measurement ports to CSRs TimeTransmitter ports to monitor PTP at the O-RU UNI.   **Verifications for Clock Advertisements**   1. Verify the clock lock state on BRs, HSRs, CSRs. The lock state should be Phase-aligned. 2. Verify the steady-state clock advertisements on BRs, HSRs and CSRs as per ITU-T G.8275.1 Standard-Appendix V, Table V.3.   **After Step-2 of Test Configurations**  **Verifications for Maximum Absolute Packet Time Error and 1PPS Time Error**   1. Verify Performance Measurement during steady state. (1PPS and Packet Time Error should show an additional Error of +/-500ns due to Asymmetry)   **Verifications for Maximum Relative Packet Time Error (NOTE1)**   1. Perform time error measurements on Clock Tester at O-RU1 and O-RU2 plane independently. Collect the data (maxTE1, minTE1) and (maxTE2, minTE2) for both O-RU UNI at least for a period of 1000sec. 2. Estimate the Maximum Relative Time Error measurements between the O-RU UNI ports. |

* 1. max|TERL | (1,2) <= 60ns (FR2) (For Enhanced RU)
  2. max|TERL | (1,2) <= 190ns (FR1) (For Enhanced RU)
  3. max|TERL | (1,2) <= 100ns (FR1) (For Regular RU)

As per ITU-T G.8271.1 Appendix-V1, the requirement is not to measure the continuous relative time error, *TERL*(t), but to measure the maximum possible value it can take.

max|TE | ( )

maxTEL (1) - minTEL(2)

RL

1,2 the greatest of {

maxTEL (2) - minTEL(1)

#### Verifications for Maximum Relative 1PPS Time Error

1. Verify that PTP and SyncE session is up and running.
2. Estimate the Maximum Relative 1PPS Time Error measurements between the O-RU UNI ports.
   1. max|TERL | (1,2) <= 60ns (FR2) (For Enhanced RU)
   2. max|TERL | (1,2) <= 190ns (FR1) (For Enhanced RU)
   3. max|TERL | (1,2) <= 100ns (FR1) (For Regular RU)

#### Verifications for Time Wander

1. Verify the Time Wander using Clock tester at the O-RU UNI.
   1. Frequency Limit is<= 32ppb (For PRTC Class-A)
   2. MTIE mask as per the limit specified. NOTE1 (As per G.8271.1):

To measure the relative time error, measure the time error from each point with

respect to the internal time reference of measurement equipment, and then subtracting time error of one point from the other.

#### After Step-3 of Test Configurations

**Verifications for Maximum Absolute Packet Time Error and 1PPS Time Error**

1. Verify Performance Measurement during steady state. (1PPS and Packet Time Error shouldn't show any additional Error of +/-500ns due to Asymmetry)

#### Verifications for Maximum Relative Packet Time Error and 1PPS Time Error

1. Verify the Maximum Relative 1PPS Time Error measurements between the O- RU UNI ports. The results should be as per Test 9.2.11.

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **Pass/Fail Criteria:** | Test shall pass if the Maximum Absolute TE, Relative TE and Time Wander Limit result is within the specified limits. | | | | |
| **Test Output** |  | End-to-End Network Limit at O- RU UNI | Expected Value | | Observed Value |
| (For Enhanced RU) | (For Regular RU) |
|  | Packet max|TEL| | <= 1100ns | <= 1100ns |  |
|  | Packet max|TERL| | <= 60ns(FR2) | <= 100ns(FR1) |  |
| <= 190ns(FR1) |
|  | 1PPS max|TEL| | <= 1100ns | <= 1100ns |  |
|  | 1PPS max|TERL| | <= 60ns(FR2) | <= 100ns(FR1) |  |
| <= 190ns(FR1) |
|  | Frequency Limit (PRTC Class-A) | <= 32ppb | <= 32ppb |  |
| The above limits for max|TEL| doesn't include the error due to Manual Asymmetry. | | | | |

## 9.3 Timing Solution Additional use cases in LLS-C3 and LLS-C4

1. config
2. This chapter specify a few additional use cases in LLS-C3 and LLS-C4 config models. Also LLS-C3 and LLS-
3. C4 mixed configuration with and without GNSS assist and redundant T-GMs for co-located DUs and RUs are
4. discussed. Each of these use cases are specified with performance limits and Pass/Fail verdict in normal
5. and fail-over scenarios of GNSS and T-GM.

7

1. These use cases in high level are already mentioned in the O-RAN WG9 Synchronization Architecture and
2. Solution Specification. Depending on the specific O-RAN deployment being considered, not all of them might
3. be relevant. When testing the S-Plane, the System Integrator shall identify which of the test cases are
4. relevant depending on the specific deployment scenarios addressed.

12

1. Following high level use cases have been covered in this chapter and each of these use cases, clock
2. performance limits are discussed for normal and failover scenarios.

15

1. 1. LLS-C3 and LLS-C4 Configuration and Use case.
2. a. LLS-C4 with PTP frequency backup from T-GM
3. b. LLS-C4 with PTP time backup from T-GM
4. c. LLS-C4 and LLS-C3 mixed configurations for co-located DUs and RUs
5. d. LLS-C4 and LLS-C3 mixed configurations for co-located DUs and RUs (GNSS Failure at O-
6. RU site)
7. e. LLS-C4 and LLS-C3 mixed configurations with backup from T-GM for co-located DUs and
8. RUs
9. f. LLS-C4 and LLS-C3 mixed configurations with backup from T-GM for co-located DUs and
10. RUs (GNSS Failure at O-RU site)
11. g. LLS-C4 and LLS-C3 mixed configurations with backup from redundant T-GM for co-located
12. DUs and Rus (GNSS Failure at O-RU site and T-GM-A Failure)
13. h. LLS-C3 configurations with GNSS assisted CSR for co-located DUs and RUs
14. i. LLS-C3 configurations with (GNSS+PRTC) assisted CSR for co-located DUs and RUs
15. j. LLS-C3 configurations with GNSS assisted CSR with backup from redundant T-GM for co-
16. located DUs and RUs
17. k. LLS-C3 configurations with GNSS assisted CSR with backup from redundant T-GM for co-
18. located DUs and RUs (GNSS Failure at CSR site)
19. l. LLS-C3 configurations with GNSS assisted CSR with backup from redundant T-GM for co-
20. located DUs and RUs (GNSS Failure at CSR site and T-GM-A Failure)

36

1. O-RU UNI specified in the topology is for the network measurement. Two measurement planes have been
2. specified in the document to cover all measurements. One at O-RU UNI for measuring X-haul network limits
3. (Packet + 1PPS) and other at 1PPS measurement plane of O-RU to measure the 1PPS performance limits
4. of O-RU in LLS-C4 configuration. Operator to position the Tester on these measurement planes for
5. conducting the respective test.

42

1. The performance limits of O-RU in LLS-C4 when it is locked to local GNSS receiver has been specified in O-
2. RAN.WG4.CUS documents. As per this specifications, the budget shall be based on ITU-T G.8272 (PRTC
3. class A, with max |TE|=100ns, or PRTC class B, with max |TE|=40ns on each GNSS receiver and max
4. |TE|=30ns on O-RU. Max|TE| O-RU includes the O-RU clock recovery error from Local Time Source and any
5. O-RU internal error. The LLS-C4 test cases in this section assumes the O-RU T-TSC Error of 10ns and O-
6. RU internal Error of 20ns to arrive at the possible limits.

1

1. The test cases apply to both lab and field deployment cases. The test topologies in this test specification
2. specify only few Transport Node Elements (TNEs) for illustration. However, for lab cases, the type and
3. number of inserted Transport Node Elements (TNE) will be determined by operators (or any other applicable
4. end customer) subject to the O-RU UNI limits. Some of the tests are performed at Xhaul UNI interfaces and
5. some are at the O-RU 1PPS interfaces. The Xhaul UNI interfaces include O-RU Fronthaul UNI, O-DU
6. Fronthaul or Midhaul UNI.
7. 1PPS test at O-RU UNI is typically used for debugging and monitoring the packet layer performance of the
8. nearest TNE in the fronthaul. The intention of such test is that if the TNE vendor implemented the 1PPS
9. interface, the 1PPS error measured on such interface at the O-RU UNI should be a reflection of the output
10. time error of TNE. Operator shall pay attention to an unacceptably large deviation of 1PPS error, beyond the
11. limits specified, which may indicate an incorrect behaviour of TNEs.
12. The Test Topologies in all the test cases uses GNSS simulator to generate the GNSS signal to the network
13. PRTC/T-GM. This high-quality reference from the simulator is used as the external reference for clock
14. testers as well. The resultant accuracy of this method is a few nanoseconds. However, one can also use a
15. GNSS signal feeding both the initial PRTC/T-GM in the network and the reference clock generating a
16. 1pps/10MHz used to synchronize the clock testers for the measurements. Operator can make an allowance in
17. this case, for all of the measurements for the accuracy of the reference. The magnitude of this allowance will
18. depend on the specific GNSS reference in use.

20

1. For relative time error measurements at UNI (e.g., O-RU Fronthaul UNI) this document uses the metric
2. max|TERL | (1,2) as defined in [88], Appendix XI. Please note this metric represents an estimation and the
3. worst-case scenario. Tests that meet (are below) the limits are seen as PASS. Tests not meeting this metric

24 may still be acceptable. The decision is for operators to make. However, if the measurement equipment

1. support relative time error measurement, operator can use such equipment. Refer ITU-T G.8271.1 Appendix
2. XI for more details.

27

1. For Frequency Limit at UNI (e.g., O-RU Fronthaul UNI) this document uses the metric defined as per WG4
2. section H.2 based on PRTC class for LLS-C3 configuration. Applicable MTIE limit shall apply for Frequency
3. as per WG4 specification.
4. 9.3.1 Network Time Synchronization-LLS-C4 with PTP frequency backup
5. from T-GM

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | SYNC.TE.3 | **Classification** | Synchronization, Performance, Absolute Time Error, Relative Time Error |
| **Test Title** | Measurement of Absolute Time Error, Relative Time Error at the 1PPS measurement plane of O-RU. LLS-C4 with PTP frequency backup from T-GM. | | |
| **Test Objective:** | 1. Verify the Maximum Absolute 1PPS Time Error (Max|TEL|) at 1PPS Measurement Plane of O-RUs. 2. Verify the Maximum Relative 1PPS Time Error (Max|TERL |) at 1PPS Measurement Plane between O-RUs. | | |
| **Pre-Req** | T-GM/PRTC connected to GNSS simulator and ensure T-GM is locked.  Tester 1PPS measurement port connected to O-RU 1PPS out is the measurement plane. | | |

|  |  |
| --- | --- |
| **Test Topology:** | ![Diagram  Description automatically generated](../assets/images/4fab69529203.jpg)  The test topology above illustrates the placement of clock tester at the 1PPS measurement plane with 1PPS and 10MHz reference connected to clock tester. |
| **Test Configuration** | 1. T-GM, CSR, O-RUs and O-DUs are connected and configured as shown in the Test Topology. 2. Clock Tester at O-RU 1PPS measurement plane receives timing input on its measurement port. 3. Provide 1PPS and 10MHz reference to Clock Tester from GNSS simulator. 4. GNSS (PRTC-A) is connected to O-RU and O-DUs. 5. G.8275.1 Full Timing Support profile. |
| **Procedure:** | **Detailed Test procedure:**   1. GNSS (PRTC-A) is connected directly to O-RUs and O-DUs. 2. O-RU and O-DU use the GNSS (PRTC-A) as the primary clock source and use Frequency as backup from the T-GM at the central location. 3. Connect T-GM to GNSS Simulator and ensure that T-GM is locked. 4. Configure O-RU and O-DU as T-TSC and CSR as T-BC. 5. Enable G.8275.1 profile on all transport TNEs (CSR). 6. Connect Clock tester measurement ports to O-RU 1PPS monitor port to measure the 1PPS at measurement plane. 7. Establish PTP and Sync-E session to the fronthaul network.   **Verifications for Maximum Absolute 1PPS Time Error**   1. Verify that PTP session is up and running between T-GM and CSR. 2. Verify that both O-RU and O-DU locked to GNSS (PRTC-A) as the primary clock source. 3. Verify the 1PPS time error measurements on Clock Tester at the 1PPS measurement plane.    1. Max|1PPS TEL | measured on Clock Tester at the 1PPS measurement plane of O-RU <= 110ns   **Verifications for Maximum Relative 1PPS Time Error**  1. Verify that PTP and Sync-E session is up and running. |

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
|  | 1. Verify that both O-RU and O-DU locked to GNSS (PRTC-A) as the primary clock source. 2. Estimate the Maximum Relative 1PPS Time Error measurements between the O-RUs at 1PPS measurement plane.    1. max|TERL | (1,2) <= 220ns   NOTE1:  To measure the relative time error, measure the time error from each point with respect to the internal time reference of measurement equipment, and then subtracting time error of one point from the other. | | | | |
| **Pass/Fail Criteria:** | Test shall pass if the Maximum absolute TE, Maximum Relative TE, and Time Wander Limit measurement result is below the limit specified. | | | | |
| **Test Output** |  | End-to-End Network Limit | Expected Value | Observed Value |  |
|  |
|  | 1PPS max|TEL| at 1PPS  measurement plane | <= 110ns |  |
|  | 1PPS max|TERL| at 1PPS  measurement plane | <= 220ns |  |

* 1. 9.3.2 Network Time Synchronization-LLS-C4 with PTP Time backup from
  2. T-GM

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | SYNC.TE.4 | **Classification** | Synchronization, Performance, Absolute Time Error, Relative Time Error |
| **Test Title** | Measurement of Absolute Time Error, Relative Time Error at 1PPS measurement plane of O-RU. LLS-C4 with PTP Time backup from T-GM. | | |
| **Test Objective:** | 1. Verify the Maximum Absolute 1PPS Time Error (Max|TEL|) at 1PPS Measurement Plane of O-RUs. 2. Verify the Maximum Relative 1PPS Time Error (Max|TERL |) at 1PPS Measurement Plane between O-RUs. | | |
| **Pre-Req** | T-GM/PRTC connected to GNSS simulator and ensure T-GM is locked.  Tester 1PPS measurement port connected to O-RU 1PPS out is the measurement plane. | | |

|  |  |
| --- | --- |
| **Test Topology:** | ![Diagram  Description automatically generated](../assets/images/ed20662ee6ec.jpg)  The test topology above illustrates the placement of clock tester at the 1PPS measurement plane with 1PPS and 10MHz reference connected to clock tester. |
| **Test Configuration** | 1. T-GM, CSR, O-RUs and O-DUs are connected and configured as shown in the Test Topology. 2. Clock Tester at O-RU 1PPS measurement plane receives timing input on its measurement port. 3. Provide 1PPS and 10MHz reference to Clock Tester from GNSS simulator. 4. GNSS (PRTC-A) is connected to O-RU and O-DUs. 5. G.8275.1 Full Timing Support profile. |
| **Procedure:** | **Detailed Test procedure:**   1. GNSS (PRTC-A) is connected directly to O-RUs and O-DUs. 2. O-RU and O-DU use the GNSS (PRTC-A) as the primary clock source and use Time as backup from the T-GM at the central location. 3. Connect T-GM to GNSS Simulator and ensure that T-GM is locked. 4. Configure O-RU and O-DU as T-TSC and CSR as T-BC. 5. Enable G.8275.1 profile on all transport TNEs (CSR). 6. Connect Clock tester measurement ports to O-RU 1PPS monitor port to measure the 1PPS at measurement plane. 7. Establish PTP and Sync-E session to the fronthaul network.   **Verifications for Maximum Absolute 1PPS Time Error**   1. Verify that PTP session is up and running between T-GM and CSR. 2. Verify that both O-RU and O-DU locked to GNSS (PRTC-A) as the primary clock source. 3. Verify the 1PPS time error measurements on Clock Tester at the 1PPS measurement plane.    1. Max 1PPS |TE| measured on Clock Tester at 1PPS measurement plane of O-RU <= 110ns   **Verifications for Maximum Relative 1PPS Time Error**  1. Verify that PTP and Sync-E session is up and running. |

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
|  | 1. Verify that both O-RU and O-DU locked to GNSS (PRTC-A) as the primary clock source. 2. Estimate the Maximum Relative 1PPS Time Error measurements between the O-RUs at 1PPS measurement plane.    1. max|TERL | (1,2) <= 220ns   NOTE1:  To measure the relative time error, measure the time error from each point with respect to the internal time reference of measurement equipment, and then subtracting time error of one point from the other. | | | | |
| **Pass/Fail Criteria:** | Test shall pass if the Maximum absolute TE, Maximum Relative TE and Time Wander Limit measurement result is below the limit specified. | | | | |
| **Test Output** |  | End-to-End Network Limit | Expected Value | Observed Value |  |
|  |
|  | 1PPS max|TEL| at 1PPS  measurement plane | <= 110ns |  |
|  | 1PPS max|TERL| at 1PPS  measurement plane | <= 220ns |  |

1. 9.3.3 Network Time Synchronization-LLS-C4 and LLS-C3 mixed
2. configurations for co-located DUs and RUs

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | SYNC.TE.5 | **Classification** | Synchronization, Performance, Absolute Time Error, Relative Time Error |
| **Test Title** | Measurement of Absolute Time Error, Relative Time Error at 1PPS measurement plane of O-RU. LLS-C4 and LLS-C3 mixed configurations for co-located DUs and RUs. | | |
| **Test Objective:** | 1. Verify the Maximum Absolute 1PPS Time Error (Max|TEL|) at 1PPS Measurement Plane of O-RUs. 2. Verify the Maximum Relative 1PPS Time Error (Max|TERL |) at 1PPS Measurement Plane between O-RUs. | | |
| **Pre-Req** | T-GM/PRTC connected to GNSS simulator and ensure T-GM is locked.  Tester 1PPS measurement port connected to O-RU/O-DU 1PPS out is the measurement plane. | | |

|  |  |
| --- | --- |
| **Test Topology:** | ![Diagram  Description automatically generated](../assets/images/d47a18399471.jpg)  The test topology above illustrates the placement of clock tester at the 1PPS measurement plane with 1PPS and 10MHz reference connected to clock tester. |
| **Test Configuration** | 1. T-GM, CSR, O-RUs and O-DUs are connected and configured as shown in the Test Topology. 2. Clock Tester at O-RU 1PPS measurement plane receives timing input on its measurement port. 3. Provide 1PPS and 10MHz reference to Clock Tester from GNSS simulator. 4. GNSS (PRTC-A) is connected to O-RUs. 5. G.8275.1 Full Timing Support profile. |
| **Procedure:** | **Detailed Test procedure:**   1. GNSS (PRTC-A) is connected directly to O-RUs. 2. O-RU use the GNSS (PRTC-A) as the primary clock source and use Time as backup from the T-GM at the central location. 3. O-DU lock to PTP clock from T-GM at the central location. 4. Connect T-GM to GNSS Simulator and ensure that T-GM is locked. 5. Configure O-RU and O-DU as T-TSC and CSR as T-BC. 6. Enable G.8275.1 profile on all transport TNEs (CSR). 7. Connect Clock tester measurement ports to O-RU 1PPS monitor port to measure the 1PPS at measurement plane. 8. Establish PTP and Sync-E session to the fronthaul network.   **Verifications for Maximum Absolute 1PPS Time Error**   1. Verify that PTP session is up between GNSS (PRTC-A) and O-RU (T-TSC). 2. Verify that PTP session is up between T-GM, CSR (T-BC) and O-DU (T-TSC). 3. Verify that O-RU locked to GNSS (PRTC-A) as the primary clock source. 4. Verify the 1PPS time error measurements on Clock Tester at the 1PPS measurement plane.    1. Max 1PPS |TEL | measured on Clock Tester at the 1PPS measurement plane of O-RU <= 110ns   **Verifications for Maximum Relative 1PPS Time Error** |

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
|  | 1. Verify that PTP and Sync-E session is up. 2. Verify that both O-RU locked to GNSS (PRTC-A) as the primary clock source. 3. Estimate the Maximum Relative 1PPS Time Error measurements between the O-RUs at 1PPS measurement plane.    1. max|TERL | (1,2) <= 220ns   NOTE1:  To measure the relative time error, measure the time error from each point with respect to the internal time reference of measurement equipment, and then subtracting time error of one point from the other. | | | | |
| **Pass/Fail Criteria:** | Test shall pass if the Maximum absolute TE, Maximum Relative TE and Time Wander Limit measurement result is below the limit specified. | | | | |
| **Test Output** |  | End-to-End Network Limit | Expected Value | Observed Value |  |
|  |
|  | 1PPS max|TEL| at 1PPS  measurement plane | <= 110ns |  |
|  | 1PPS max|TERL| at 1PPS  measurement plane | <= 220ns |  |

1. 9.3.4 Network Time Synchronization-LLS-C4 and LLS-C3 mixed
2. configurations for co-located DUs and RUs-GNSS Failure at O-RU
3. site.

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | SYNC.TE.6 | **Classification** | Synchronization, Performance, Absolute Time Error, Relative Time Error |
| **Test Title** | Measurement of Absolute Time Error, Relative Time Error at 1PPS measurement plane of O-RU-LLS-C4 and LLS-C3 mixed configurations for co-located DUs and RUs. GNSS Failure at O-RU site. | | |
| **Test Objective:** | 1. Verify the Maximum Absolute 1PPS Time Error (Max|TEL|) at 1PPS Measurement Plane of O-RUs. 2. Verify the Maximum Relative 1PPS Time Error (Max|TERL |) at 1PPS Measurement Plane between O-RUs. | | |
| **Pre-Req** | Test Case 9.3.5 MUST be a PASS. | | |

**Test Topology:**

![Diagram  Description automatically generated](../assets/images/98ecc6ad255b.jpg)

The test topology above illustrates the placement of clock tester at the 1PPS measurement plane with 1PPS and 10MHz reference connected to clock tester.

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **Test Configuration** | 1. FAIL the GNSS connected to O-RU1 and O-RU2. | | | | |
| **Procedure:** | **Verifications for Maximum Absolute 1PPS Time Error**   1. Verify that PTP session is down between GNSS (PRTC-A) and O-RU (T-TSC). 2. Verify that PTP session is up between T-GM, CSR (T-BC) and O-RU (T-TSC). 3. Verify that O-RU is locked to PTP Frequency from T-GM. 4. Verify the 1PPS time error measurements on Clock Tester at the 1PPS measurement plane. (O-RU should be in Phase-holdover using frequency from Backup T-GM)    1. Max 1PPS |TEL | measured on Clock Tester at the 1PPS measurement plane of O-RU <= 110ns (NOTE2)   **Verifications for Maximum Relative 1PPS Time Error**   1. Verify that PTP and Sync-E session is up. 2. Verify that both O-RU locked to PTP Frequency from T-GM. 3. Estimate the Maximum Relative 1PPS Time Error measurements between the O-RUs at 1PPS measurement plane.    1. max|TERL | (1,2) <= 220ns   NOTE1:  To measure the relative time error, measure the time error from each point with respect to the internal time reference of measurement equipment, and then subtracting time error of one point from the other.  NOTE2:  O-RU in this topology is LLS-C4 O-RU as defined in the CUS specification [O-RAN.WG4.CUS.0- R003-v12.00, Section 11.3.2.3] and as such Note 3 and Note 4 apply. The Limit 110ns of phase error when GNSS fails with frequency assist from backup PTP is an assumption and the allowable limits are not yet defined for LLS-C4. | | | | |
| **Pass/Fail Criteria:** | Test shall pass if the Maximum absolute TE, Maximum Relative TE and Time Wander Limit measurement result is below the limit specified. | | | | |
| **Test Output** |  |  | Expected Value |  |  |

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
|  |  | End-to-End Network Limit |  | Observed Value |  |
|  | 1PPS max|TEL| at 1PPS  measurement plane | <= 110ns |  |
|  | 1PPS max|TERL| at 1PPS  measurement plane | <= 220ns |  |

1. 9.3.5 Network Time Synchronization-LLS-C4 and LLS-C3 mixed
2. configurations with backup from redundant T-GM for co-located DUs
3. and RUs

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | SYNC.TE.7 | **Classification** | Synchronization, Performance, Absolute Time Error, Relative Time Error |
| **Test Title** | Measurement of Absolute Time Error, Relative Time Error at 1PPS measurement plane of O-RU. LLS-C4 and LLS-C3 mixed configurations with backup from redundant T-GM for co-located DUs and RUs. | | |
| **Test Objective:** | 1. Verify the Maximum Absolute 1PPS Time Error (Max|TEL|) at 1PPS Measurement Plane of O-RUs. 2. Verify the Maximum Relative 1PPS Time Error (Max|TERL |) at 1PPS Measurement Plane between O-RUs. | | |
| **Pre-Req** | T-GM/PRTC connected to GNSS simulator and ensure T-GM is locked.  Tester 1PPS measurement port connected to O-RU/O-DU 1PPS out is the measurement plane.  T-GM-A Priority-2 better than that of T-GM-B | | |
| **Test Topology:** | ![Diagram  Description automatically generated](../assets/images/f47c39852ae7.jpg)  The test topology above illustrates the placement of clock tester at the 1PPS measurement plane with 1PPS and 10MHz reference connected to clock tester. | | |

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **Test Configuration** | 1. T-GM-A, T-GM-B, CSR, O-RUs and O-DUs are connected and configured as shown in the Test Topology. 2. Clock Tester at O-RU 1PPS measurement plane receives timing input on its measurement port. 3. Provide 1PPS and 10MHz reference to Clock Tester from GNSS simulator. 4. GNSS (PRTC-A) is connected to O-RU and O-DUs. 5. G.8275.1 Full Timing Support profile. | | | | |
| **Procedure:** | **Detailed Test procedure:**   1. GNSS (PRTC-A) is connected directly to O-RUs. 2. O-RU use the GNSS (PRTC-A) as the primary clock source and use PTP Time as backup from the T-GM-B at the central location. 3. O-DU use the T-GM-A as the Primary Clock Source. 4. Connect T-GM-A and T-GM-B to GNSS Simulator and ensure that they are locked. 5. Configure O-RU and O-DU as T-TSC and CSR as T-BC. 6. Enable G.8275.1 profile on all transport TNEs (CSR). 7. Connect Clock tester measurement ports to O-RU 1PPS monitor port to measure the 1PPS at measurement plane. 8. Establish PTP and Sync-E session to the fronthaul network.   **Verifications for Maximum Absolute 1PPS Time Error**   1. Verify that PTP session is up between GNSS (PRTC-A) and O-RU (T-TSC). 2. Verify that PTP session is up between T-GM-A, T-GM-B, CSR (T-BC) and O-DU (T-TSC). 3. Verify that O-RU locked to GNSS (PRTC-A) as the primary clock source. 4. Verify the 1PPS time error measurements on Clock Tester at the 1PPS measurement plane.    1. Max 1PPS |TEL | measured on Clock Tester at the 1PPS measurement plane of O-RU <= 110ns   **Verifications for Maximum Relative 1PPS Time Error**   1. Verify that PTP and Sync-E session is up. 2. Verify that both O-RU locked to GNSS (PRTC-A) as the primary clock source. 3. Estimate the Maximum Relative 1PPS Time Error measurements between the O-RUs at 1PPS measurement plane.    1. max|TERL | (1,2) <= 220ns   NOTE1:  To measure the relative time error, measure the time error from each point with respect to the internal time reference of measurement equipment, and then subtracting time error of one point from the other. | | | | |
| **Pass/Fail Criteria:** | Test shall pass if the Maximum absolute TE, Maximum Relative TE and Time Wander Limit measurement result is below the limit specified. | | | | |
| **Test Output** |  | End-to-End Network Limit | Expected Value | Observed Value |  |
|  |
|  | 1PPS max|TEL| at 1PPS | <= 110ns |  |

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
|  |  | measurement plane |  |  |  |
|  | 1PPS max|TERL| at 1PPS  measurement plane | <= 220ns |  |

1. 9.3.6 Network Time Synchronization-LLS-C4 and LLS-C3 mixed
2. configurations with backup from redundant T-GM for co-located DUs
3. and RUs (GNSS Failure at O-RU site).

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | SYNC.TE.8 | **Classification** | Synchronization, Performance, Absolute Time Error, Relative Time Error |
| **Test Title** | Measurement of Absolute Time Error, Relative Time Error at 1PPS measurement plane of O-RU. LLS-C4 and LLS-C3 mixed configurations with backup from redundant T-GM for co-located DUs and RUs (GNSS Failure at O-RU site). | | |
| **Test Objective:** | 1. Verify the Maximum Absolute 1PPS Time Error (Max|TEL|) at 1PPS Measurement Plane of O-RUs. 2. Verify the Maximum Relative 1PPS Time Error (Max|TERL |) at 1PPS Measurement Plane between O-RUs. | | |
| **Pre-Req** | Test Case 9.3.7 MUST be a PASS.  T-GM-A Priority-2 better than that of T-GM-B | | |
| **Test Topology:** | ![](../assets/images/d1a2d0c2eb30.jpg)  The test topology above illustrates the placement of clock tester at the 1PPS measurement plane with 1PPS and 10MHz reference connected to clock tester. | | |
| **Test Configuration** | 1. FAIL the GNSS connection to O-RU1 and O-RU2. | | |
| **Procedure:** | **Detailed Test procedure:**  1. O-RU use Time as backup from the T-GM-A at the central location.  **Verifications for Maximum Absolute 1PPS Time Error**  1. Verify that PTP session is up between T-GM-A, T-GM-B, CSR (T-BC) and O-DU (T-TSC). | | |

1. Verify that O-RU locked to T-GM-A as the clock source.
2. Verify the 1PPS time error measurements on Clock Tester at the 1PPS measurement plane.
   1. Max 1PPS |TEL | measured on Clock Tester at the 1PPS measurement plane of O-RU <= 1480ns

#### Verifications for Maximum Relative 1PPS Time Error

1. Verify that PTP and Sync-E session is up.
2. Verify that both O-RU locked to T-GM-A as the primary clock source.
3. Estimate the Maximum Relative 1PPS Time Error measurements between the O-RUs at 1PPS measurement plane.
   1. max|TERL | (1,2) <= 220ns

NOTE1:

To measure the relative time error, measure the time error from each point with respect to the internal time reference of measurement equipment, and then subtracting time error of one point from the other.

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **Pass/Fail Criteria:** | Test shall pass if the Maximum absolute TE, Maximum Relative TE and Time Wander Limit measurement result is below the limit specified. | | | | |
| **Test Output** |  | End-to-End Network Limit | Expected Value | Observed Value |  |
|  |
|  | 1PPS max|TEL| at 1PPS  measurement plane | <= 1480ns |  |
|  | 1PPS max|TERL| at 1PPS  measurement plane | <= 220ns |  |

1. 9.3.7 Network Time Synchronization-LLS-C4 and LLS-C3 mixed
2. configurations with backup from redundant T-GM for co-located DUs
3. and RUs (GNSS & T-GM-A Failure).

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | SYNC.TE.9 | **Classification** | Synchronization, Performance, Absolute Time Error, Relative Time Error |
| **Test Title** | Measurement of Absolute Time Error, Relative Time Error at 1PPS measurement plane of O-RU. LLS-C4 and LLS-C3 mixed configurations with backup from redundant T-GM for co-located DUs and RUs (GNSS & T-GM-A Failure). | | |
| **Test Objective:** | 1. Verify the Maximum Absolute 1PPS Time Error (Max|TEL|) at 1PPS Measurement Plane of O-RUs. 2. Verify the Maximum Relative 1PPS Time Error (Max|TERL |) at 1PPS Measurement Plane between O-RUs. | | |
| **Pre-Req** | Test Case 9.3.8 MUST be a PASS.  T-GM-A Priority-2 better than that of T-GM-B | | |

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **Test Topology:** | ![](../assets/images/1164568e0dde.jpg)  The test topology above illustrates the placement of clock tester at the 1PPS measurement plane with 1PPS and 10MHz reference connected to clock tester. | | | | |
| **Test Configuration** | 1. FAIL the GNSS connection to T-GM-A. | | | | |
| **Procedure:** | **Detailed Test procedure:**   1. O-RU and O-DU use T-GM-B as backup.   **Verifications for Maximum Absolute 1PPS Time Error**   1. Verify that PTP session is up between T-GM-B, CSR (T-BC) and O-DU (T-TSC). 2. Verify that O-RU locked to T-GM-B as the primary clock source. 3. Verify the 1PPS time error measurements on Clock Tester at the 1PPS measurement plane.    1. Max 1PPS |TEL | measured on Clock Tester at the 1PPS measurement plane of O-RU <= 1480ns   **Verifications for Maximum Relative 1PPS Time Error**   1. Verify that PTP and Sync-E session is up. 2. Verify that both O-RU locked to T-GM-A as the primary clock source. 3. Estimate the Maximum Relative 1PPS Time Error measurements between the O-RUs at 1PPS measurement plane.    1. max|1PPS TERL | (1,2) <= 220ns   NOTE1:  To measure the relative time error, measure the time error from each point with respect to the internal time reference of measurement equipment, and then subtracting time error of one point from the other. | | | | |
| **Pass/Fail Criteria:** | Test shall pass if the Maximum absolute TE, Maximum Relative TE and Time Wander Limit measurement result is below the limit specified. | | | | |
| **Test Output** |  | End-to-End Network Limit | Expected Value | Observed Value |  |
|  |
|  | 1PPS max|TEL| at 1PPS  measurement plane | <= 1480ns |  |

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
|  |  | 1PPS max|TERL| at 1PPS  measurement plane | <= 220ns |  |  |

1. 9.3.8 Network Time Synchronization-LLS-C3 configurations with GNSS
2. assisted CSR for co-located DUs and RUs

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | SYNC.TE.10 | **Classification** | Synchronization, Performance, Absolute Time Error, Relative Time Error |
| **Test Title** | Measurement of Absolute Time Error, Relative Time Error at measurement plane of O-RU. LLS-C3 configurations with GNSS assisted CSR for co-located DUs and RUs. | | |
| **Test Objective:** | 1. Verify the Maximum Absolute Packet Time Error (Max|TEL |) at O-RU UNI. 2. Verify the Maximum Relative Packet Time Error (Max|TERL |) between the O-RU UNI ports. 3. Verify the Maximum Absolute 1PPS Time Error (Max|TEL|) at O-RU UNI. 4. Verify the Maximum Relative 1PPS Time Error (Max|TERL |) at O-RU UN. 5. Verify the Time Wander at O-RU UNI. | | |
| **Pre-Req** | T-GM/PRTC connected to GNSS simulator and ensure T-GM is locked.  O-RU UNI is the measurement plane. | | |
| **Test Topology:** | ![Diagram  Description automatically generated](../assets/images/6a1b4976a378.jpg)  The test topology above illustrates the placement of clock tester at the O-RU UNI measurement plane with 1PPS and 10MHz reference connected to clock tester. | | |
| **Test Configuration** | 1. T-GM, CSR, O-RUs and O-DUs are connected and configured as shown in the Test Topology. 2. Clock Tester at O-RU UNI measurement plane receives timing input on its measurement port. 3. Provide 1PPS and 10MHz reference to Clock Tester from GNSS simulator. 4. GNSS is connected to O-RU and O-DUs. 5. G.8275.1 Full Timing Support profile. | | |

|  |  |
| --- | --- |
| **Procedure:** | **Detailed Test procedure:**   1. GNSS (PRTC-A) is connected directly to O-RUs and O-DUs. 2. Both O-RU and O-DU use the GNSS (PRTC-A) as the primary clock source and use Time as backup from the T-GM at the central location. 3. Connect T-GM to GNSS Simulator and ensure that they are locked. 4. Configure O-DU as T-TSC and CSR as T-BC. 5. Enable G.8275.1 profile on all transport TNEs (CSR). 6. Connect Clock tester measurement ports to O-RU 1PPS monitor port to measure the 1PPS at O-RU UNI. 7. Establish PTP and Sync-E session to the fronthaul network.   **Verifications for Maximum Absolute Packet Time Error**   1. Verify that PTP session is up and running between T-GM, CSR (T-BC) and O- DU (T-TSC). 2. Verify that O-DU is locked to GNSS. 3. Verify time error measurements using Clock Tester for the PTP flows from CSR at the O-RU UNI.    1. Max|TEL | measured on Clock Tester at the O-RU UNI <= 100ns (For Enhanced RU)    2. Max|TEL | measured on Clock Tester at the O-RU UNI <= 100ns (For Regular RU)   **Verifications for Maximum Relative Packet Time Error**   1. Verify that PTP and Sync-E session is up. 2. Verify that CSR locked to T-GM as the clock source. 3. Verify the Maximum Relative Time Error measurements between the O-RU UNI ports.    1. max|TERL | (1,2) <= 60ns (FR2) (For Enhanced RU)    2. max|TERL | (1,2) <= 190ns (FR1) (For Enhanced RU)    3. max|TERL | (1,2) <= 100ns (FR1) (For Regular RU)   **Verifications for Maximum Absolute 1PPS Time Error**   1. Verify that PTP session is up between GNSS (PRTC-A) and O-RU (T-TSC). 2. Verify that PTP session is up between T-GM, CSR (T-BC) and O-DU (T-TSC). 3. Verify that O-RU locked to GNSS (PRTC-A) as the primary clock source. 4. Verify the 1PPS time error measurements on Clock Tester at O-RU UNI.    1. Max 1PPS |TEL | measured on Clock Tester at O-RU UNI <= 100ns (For Enhanced RU)    2. Max 1PPS |TEL | measured on Clock Tester at O-RU UNI <= 100ns (For Regular RU)   **Verifications for Maximum Relative 1PPS Time Error**   1. Verify that PTP and Sync-E session is up. 2. Verify that both O-RU locked to GNSS (PRTC-A) as the primary clock source. 3. Estimate the Maximum Relative 1PPS Time Error measurements between the O-RUs UNI.    1. max|TERL | (1,2) <= 60ns (FR2) (For Enhanced RU)    2. max|TERL | (1,2) <= 190ns (FR1) (For Enhanced RU) |

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
|  | c. max|TERL | (1,2) <= 100ns (FR1) (For Regular RU) NOTE1:  To measure the relative time error, measure the time error from each point with respect to the internal time reference of measurement equipment, and then subtracting time error of one point from the other. | | | | |
| **Pass/Fail Criteria:** | Test shall pass if the Maximum absolute TE, Maximum Relative TE and Time Wander Limit measurement result is below the limit specified. | | | | |
| **Test Output** |  | End-to-End Network Limit at O- RU UNI | Expected Value | | Observed Value |
| (For Enhanced RU) | (For Regular RU) |
|  | Packet max|TEL| | <= 100ns | <= 100ns |  |
|  | Packet max|TERL| | <= 60ns(FR2) | <= 100ns(FR1) |  |
| <= 190ns(FR1) |
|  | 1PPS max|TEL| | <= 100ns | <= 100ns |  |
|  | 1PPS max|TERL| | <= 60ns(FR2) | <= 100ns(FR1) |  |
| <= 190ns(FR1) |
|  | Frequency Limit (For PRTC Class- A) | <= 32ppb | <= 32ppb |  |

1. 9.3.9 Network Time Synchronization-LLS-C3 configurations with
2. (GNSS+PRTC) assisted CSR for co-located DUs and RUs

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | SYNC.TE.11 | **Classification** | Synchronization, Performance, Absolute Time Error, Relative Time Error |
| **Test Title** | Measurement of Absolute Time Error, Relative Time Error at measurement plane of O-RU UNI. LLS-C3 configurations with (GNSS+PRTC) assisted CSR for co-located DUs and RUs. | | |
| **Test Objective:** | 1. Verify the Maximum Absolute Packet Time Error (Max|TEL |) at O-RU UNI. 2. Verify the Maximum Relative Packet Time Error (Max|TERL |) between the O-RU UNI ports. 3. Verify the Maximum Absolute 1PPS Time Error (Max|TEL|) at O-RU UNI. 4. Verify the Maximum Relative 1PPS Time Error (Max|TERL |) at O-RU UN. 5. Verify the Time Wander at O-RU UNI. | | |
| **Pre-Req** | T-GM/PRTC connected to GNSS simulator and ensure T-GM is locked.  Tester at O-RU UNI is the measurement plane. | | |

|  |  |
| --- | --- |
| **Test Topology:** | ![Diagram  Description automatically generated](../assets/images/3cdd6457ac85.jpg)  The test topology above illustrates the placement of clock tester at the O-RU UNI measurement plane with 1PPS and 10MHz reference connected to clock tester. |
| **Test Configuration** | 1. T-GM, CSR, O-RUs and O-DUs are connected and configured as shown in the Test Topology. 2. Clock Tester at O-RU UNI receives timing input on its measurement port. 3. Provide 1PPS and 10MHz reference to Clock Tester from GNSS simulator. 4. GNSS is connected to O-RU and O-DUs. 5. G.8275.1 Full Timing Support profile. |
| **Procedure:** | **Detailed Test procedure:**   1. GNSS via PRTC is connected directly to CSRs. 2. Connect 1PPS, TOD, 10MHz cable from PRTC to CSR. 3. CSR use the (GNSS + PRTC) as the primary clock source and backup from the T-GM at the central location. 4. O-DU use the GNSS (PRTC-A) as the Primary Clock Source. 5. Connect T-GM to GNSS Simulator and ensure that they are locked. 6. Configure O-DU as T-TSC and CSR as T-BC. 7. Enable G.8275.1 profile on all transport TNEs (CSR). 8. Connect Clock tester measurement ports to CSR 1PPS monitor port to measure the 1PPS at O-RU UNI. 9. Establish PTP and Sync-E session to the fronthaul network.   **Verifications for Maximum Absolute Packet Time Error**   1. Verify that PTP session is up and running between T-GM, CSR (T-BC) and O- DU (T-TSC). 2. Verify time error measurements using Clock Tester for the PTP flows from CSR at the O-RU UNI.    1. Max|TEL | measured on Clock Tester at the O-RU UNI <= 100ns (For Enhanced RU)    2. Max|TEL | measured on Clock Tester at the O-RU UNI <= 100ns (For Regular RU) |

#### Verifications for Maximum Relative Packet Time Error

* 1. Verify that PTP and Sync-E session is up.
  2. Verify that CSR locked to T-GM as the clock source.
  3. Verify the Maximum Relative Time Error measurements between the O-RU UNI ports.
     1. max|TERL | (1,2) <= 60ns (FR2) (For Enhanced RU)
     2. max|TERL | (1,2) <= 190ns (FR1) (For Enhanced RU)
     3. max|TERL | (1,2) <= 100ns (FR1) (For Regular RU)

#### Verifications for Maximum Absolute 1PPS Time Error

1. Verify that PTP session is up between (GNSS + PRTC) and CSR (T-BC).
2. Verify that CSR locked to GNSS (PRTC-A) as the primary clock source.
3. Verify the 1PPS time error measurements on Clock Tester at the O-RU UNI.
   1. Max 1PPS |TEL | measured on Clock Tester at O-RU UNI <= 100ns (For Enhanced RU)
   2. Max 1PPS |TEL | measured on Clock Tester at O-RU UNI <= 100ns (For Regular RU)

#### Verifications for Maximum Relative 1PPS Time Error

1. Verify that PTP and Sync-E session is up.
2. Verify that CSR locked to (GNSS+PRTC) as the primary clock source.
3. Estimate the Maximum Relative 1PPS Time Error measurements between the O-RUs UNI.
   1. max|TERL | (1,2) <= 60ns (FR2) (For Enhanced RU)
   2. max|TERL | (1,2) <= 190ns (FR1) (For Enhanced RU)
   3. max|TERL | (1,2) <= 100ns (FR1) (For Regular RU)

NOTE1:

To measure the relative time error, measure the time error from each point with respect to the internal time reference of measurement equipment, and then subtracting time error of one point from the other.

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **Pass/Fail Criteria:** | Test shall pass if the Maximum absolute TE, Maximum Relative TE and Time Wander Limit measurement result is below the limit specified. | | | | |
| **Test Output** |  | End-to-End Network Limit at O-  RU UNI | Expected Value | | Observed Value |
| (For Enhanced RU) | (For Regular RU) |
|  | Packet max|TEL| | <= 100ns | <= 100ns |  |
|  | Packet max|TERL| | <= 60ns(FR2) | <= 100ns(FR1) |  |
| <= 190ns(FR1) |
|  | 1PPS max|TEL| | <= 100ns | <= 100ns |  |
|  | 1PPS max|TERL| | <= 60ns(FR2) | <= 100ns(FR1) |  |
| <= 190ns(FR1) |
|  | Frequency Limit (For PRTC Class-  A) | <= 32ppb | <= 32ppb |  |

1. 9.3.10Network Time Synchronization-LLS-C3 configurations with GNSS
2. assisted CSR with backup from redundant T-GM for co-located DUs
3. and RUs

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | SYNC.TE.12 | **Classification** | Synchronization, Performance, Absolute Time Error, Relative Time Error |
| **Test Title** | Measurement of Absolute Time Error, Relative Time Error at measurement plane of O-RU UNI. LLS-C3 configurations with GNSS assisted CSR with backup from redundant T-GM for co-located DUs and RUs. | | |
| **Test Objective:** | 1. Verify the Maximum Absolute Packet Time Error (Max|TEL |) at O-RU UNI. 2. Verify the Maximum Relative Packet Time Error (Max|TERL |) between the O-RU UNI ports. 3. Verify the Maximum Absolute 1PPS Time Error (Max|TEL|) at O-RU UNI. 4. Verify the Maximum Relative 1PPS Time Error (Max|TERL |) at O-RU UN. 5. Verify the Time Wander at O-RU UNI. | | |
| **Pre-Req** | T-GM/PRTC connected to GNSS simulator and ensure T-GM is locked. Tester at the O-RU UNI is the measurement plane.  T-GM-A Priority-2 better than that of T-GM-B | | |
| **Test Topology:** | ![](../assets/images/51d5ba0f8832.jpg)  The test topology above illustrates the placement of clock tester at the O-RU UNI with 1PPS and 10MHz reference connected to clock tester. | | |
| **Test Configuration** | 1. T-GM-A, T-GM-B, CSR, O-RUs and O-DUs are connected and configured as shown in the Test Topology. 2. Clock Tester at O-RU UNI measurement plane receives timing input on its measurement port. 3. Provide 1PPS and 10MHz reference to Clock Tester from GNSS simulator. 4. GNSS is connected to O-RU and O-DUs. 5. G.8275.1 Full Timing Support profile. | | |

|  |  |
| --- | --- |
| **Procedure:** | **Detailed Test procedure:**   1. GNSS (PRTC-A) is connected directly to CSRs. 2. CSR use the GNSS (PRTC-A) as the primary clock source and use Time as backup from the T-GM-B at the central location. 3. O-DU use the T-GM-A as the Primary Clock Source. 4. Configure O-RU and O-DU as T-TSC and CSR as T-BC. 5. Enable G.8275.1 profile on all transport TNEs (CSR). 6. Connect Clock tester measurement ports to CSR 1PPS monitor port to measure the 1PPS at measurement plane. 7. Establish PTP and Sync-E session to the fronthaul network.   **Verifications for Maximum Absolute Packet Time Error**   1. Verify that PTP session is up and running between T-GM-A, T-GM-B, CSR (T- BC) and O-DU (T-TSC). 2. Verify time error measurements using Clock Tester for the PTP flows from CSR at the O-RU UNI.    1. Max|TEL | measured on Clock Tester at the O-RU UNI <= 100ns (For Enhanced RU)    2. Max|TEL | measured on Clock Tester at the O-RU UNI <= 100ns (For Regular RU)   **Verifications for Maximum Relative Packet Time Error**   1. Verify that PTP and Sync-E session is up. 2. Verify that CSR locked to T-GM-A as the clock source. 3. Verify the Maximum Relative Time Error measurements between the O-RU UNI ports.    1. max|TERL | (1,2) <= 60ns (FR2) (For Enhanced RU)    2. max|TERL | (1,2) <= 190ns (FR1) (For Enhanced RU)    3. max|TERL | (1,2) <= 100ns (FR1) (For Regular RU)   **Verifications for Maximum Absolute 1PPS Time Error**   1. Verify that PTP session is up between GNSS (PRTC-A) and CSR (T-BC). 2. Verify that CSR locked to T-GM-A as the primary clock source. 3. Verify the 1PPS time error measurements on Clock Tester at the O-RU UNI.    1. Max 1PPS |TEL | measured on Clock Tester O-RU UNI <= 100ns (For Enhanced RU)    2. Max 1PPS |TEL | measured on Clock Tester at O-RU UNI <= 100ns (For Regular RU)   **Verifications for Maximum Relative 1PPS Time Error**   1. Verify that PTP and Sync-E session is up. 2. Estimate the Maximum Relative 1PPS Time Error measurements between the O-RUs UNI.    1. max|TERL | (1,2) <= 60ns (FR2) (For Enhanced RU)    2. max|TERL | (1,2) <= 190ns (FR1) (For Enhanced RU)    3. max|TERL | (1,2) <= 100ns (FR1) (For Regular RU)   NOTE1: |

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
|  | To measure the relative time error, measure the time error from each point with respect to the internal time reference of measurement equipment, and then subtracting time error of one point from the other. | | | | |
| **Pass/Fail Criteria:** | Test shall pass if the Maximum absolute TE, Maximum Relative TE and Time Wander Limit measurement result is below the limit specified. | | | | |
| **Test Output** |  | End-to-End Network Limit at O- RU UNI | Expected Value | | Observed Value |
| (For Enhanced RU) | (For Regular RU) |
|  | Packet max|TEL| | <= 100ns | <= 100ns |  |
|  | Packet max|TERL| | <= 60ns(FR2) | <= 100ns(FR1) |  |
| <= 190ns(FR1) |
|  | 1PPS max|TEL| | <= 100ns | <= 100ns |  |
|  | 1PPS max|TERL| | <= 60ns(FR2) | <= 100ns(FR1) |  |
| <= 190ns(FR1) |
|  | Frequency Limit (For PRTC Class- A) | <= 32ppb | <= 32ppb |  |

1. 9.3.11Network Time Synchronization-LLS-C3 configurations with GNSS
2. assisted CSR with backup from redundant T-GM for co-located DUs
3. and RUs (GNSS Failure at CSR site)

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | SYNC.TE.13 | **Classification** | Synchronization, Performance, Absolute Time Error, Relative Time Error |
| **Test Title** | Measurement of Absolute Time Error, Relative Time Error at measurement plane of O-RU. LLS-C3 configurations with GNSS assisted CSR with backup from redundant T-GM for co-located DUs and Rus (GNSS Failure at RU site). | | |
| **Test Objective:** | 1. Verify the Maximum Absolute Packet Time Error (Max|TEL |) at O-RU UNI. 2. Verify the Maximum Relative Packet Time Error (Max|TERL |) between the O-RU UNI ports. 3. Verify the Maximum Absolute 1PPS Time Error (Max|TEL|) at O-RU UNI. 4. Verify the Maximum Relative 1PPS Time Error (Max|TERL |) at O-RU UN. 5. Verify the Time Wander at O-RU UNI. | | |
| **Pre-Req** | O-RU UNI is the measurement plane. Testcase 9.3.12 MUST be a PASS.  T-GM-A Priority-2 better than that of T-GM-B | | |

|  |  |
| --- | --- |
| **Test Topology:** | ![Diagram  Description automatically generated](../assets/images/187153243672.jpg)  The test topology above illustrates the placement of clock tester at the O-RU UNI with 1PPS and 10MHz reference connected to clock tester. |
| **Test Configuration** | 1. Fail the GNSS connection to CSRs. |
| **Procedure:** | **Detailed Test procedure:**   1. CSR and O-DU use the T-GM-A as the clock source. 2. Connect Clock tester measurement ports to CSR 1PPS monitor port to measure the 1PPS at O-RU UNI. 3. Establish PTP and Sync-E session to the fronthaul network.   **Verifications for Maximum Absolute Packet Time Error**   1. Verify that PTP session is up and running between T-GM-A, T-GM-B, CSR (T- BC) and O-DU (T-TSC). 2. Verify that O-DU is locked to T-GM-A via CSR. 3. Verify time error measurements using Clock Tester for the PTP flows from CSR at the O-RU UNI.    1. Max|TEL | measured on Clock Tester at the O-RU UNI <= 1100ns (For Enhanced RU)    2. Max|TEL | measured on Clock Tester at the O-RU UNI <= 1100ns (For Regular RU)   **Verifications for Maximum Relative Packet Time Error**   1. Verify that PTP and Sync-E session is up. 2. Verify that CSR locked to T-GM-A as the clock source. 3. Verify the Maximum Relative Time Error measurements between the O-RU UNI ports.    1. max|TERL | (1,2) <= 60ns (FR2) (For Enhanced RU)    2. max|TERL | (1,2) <= 190ns (FR1) (For Enhanced RU)    3. max|TERL | (1,2) <= 100ns (FR1) (For Regular RU)   **Verifications for Maximum Absolute 1PPS Time Error**   1. Verify that PTP session is up between T-GM-A, T-GM-B, CSR (T-BC) and O-DU (T-TSC). 2. Verify that CSR locked to T-GM-A as the clock source. |

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
|  | 1. Verify the 1PPS time error measurements on Clock Tester at the 1PPS measurement plane.    1. Max 1PPS |TEL | measured on Clock Tester at the 1PPS measurement plane of O-RU <= 1100ns (For Enhanced RU)    2. Max 1PPS |TEL | measured on Clock Tester at the 1PPS measurement plane of O-RU <= 1100ns (For Regular RU)   **Verifications for Maximum Relative 1PPS Time Error**   1. Verify that PTP and Sync-E session is up. 2. Verify that CSR locked to T-GM-A as the clock source. 3. Estimate the Maximum Relative 1PPS Time Error measurements between the O-RUs UNI.    1. max|1PPS TERL | (1,2) <= 60ns (FR2) (For Enhanced RU)    2. max|1PPS TERL | (1,2) <= 190ns (FR1) (For Enhanced RU)    3. max|1PPS TERL | (1,2) <= 100ns (FR1) (For Regular RU)   NOTE1:  To measure the relative time error, measure the time error from each point with respect to the internal time reference of measurement equipment, and then subtracting time error of one point from the other. | | | | |
| **Pass/Fail Criteria:** | Test shall pass if the Maximum absolute TE, Maximum Relative TE and Time Wander Limit measurement result is below the limit specified. | | | | |
| **Test Output** |  | End-to-End  Network Limit at O- RU UNI | Expected Value | | Observed Value |
| (For Enhanced RU) | (For Regular RU) |
|  | Packet max|TEL| | <= 1100ns | <= 1100ns |  |
|  | Packet max|TERL| | <= 60ns(FR2) | <= 100ns(FR1) |  |
| <= 190ns(FR1) |
|  | 1PPS max|TEL| | <= 1100ns | <= 1100ns |  |
|  | 1PPS max|TERL| | <= 60ns(FR2) | <= 100ns(FR1) |  |
| <= 190ns(FR1) |
|  | Frequency Limit  (For PRTC Class- A) | <= 32ppb | <= 32ppb |  |

1. 9.3.12Network Time Synchronization-LLS-C3 configurations with GNSS
2. assisted CSR with backup from redundant T-GM for co-located DUs
3. and RUs (GNSS Failure at CSR site and T-GM-A Failure)

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | SYNC.TE.14 | **Classification** | Synchronization, Performance, Absolute Time Error, Relative Time Error |
| **Test Title** | Measurement of Absolute Time Error, Relative Time Error at measurement plane of O-RU UNI. LLS-C3 configurations with GNSS assisted CSR for co-located DUs and RUs (GNSS Failure). | | |
| **Test Objective:** | 1. Verify the Maximum Absolute Packet Time Error (Max|TEL |) at O-RU UNI. 2. Verify the Maximum Relative Packet Time Error (Max|TERL |) between the O-RU UNI ports. | | |

|  |  |
| --- | --- |
|  | 1. Verify the Maximum Absolute 1PPS Time Error (Max|TEL|) at O-RU UNI. 2. Verify the Maximum Relative 1PPS Time Error (Max|TERL |) at O-RU UN. 3. Verify the Time Wander at O-RU UNI. |
| **Pre-Req** | O-RU UNI is the measurement plane. Test Case 9.3.13 MUST be a PASS.  T-GM-A Priority-2 better than that of T-GM-B |
| **Test Topology:** | ![](../assets/images/21a2a9d9bd77.jpg)  The test topology above illustrates the placement of clock tester at the O-RU UNI with 1PPS and 10MHz reference connected to clock tester. |
| **Test Configuration** | FAIL the GNSS connection to T-GM-A. |
| **Procedure:** | **Detailed Test procedure:**   1. O-DU and CSR use the T-GM-B as the Primary Clock Source.   **Verifications for Maximum Absolute Packet Time Error**   1. Verify that CSR is locked to T-GM-B. 2. Verify time error measurements using Clock Tester for the PTP flows from CSR at the O-RU UNI.    1. Max|TEL | measured on Clock Tester at the O-RU UNI <= 1100ns (For Enhanced RU)    2. Max|TEL | measured on Clock Tester at the O-RU UNI <= 1100ns (For Regular RU)   **Verifications for Maximum Relative Packet Time Error**   1. Verify that PTP and Sync-E session is up. 2. Verify that CSR locked to T-GM-B as the primary clock source. 3. Verify the Maximum Relative Time Error measurements between the O-RU UNI ports.    1. max|TERL | (1,2) <= 60ns (FR2) (For Enhanced RU)    2. max|TERL | (1,2) <= 190ns (FR1) (For Enhanced RU)    3. max|TERL | (1,2) <= 100ns (FR1) (For Regular RU)   **Verifications for Maximum Absolute 1PPS Time Error** |

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
|  | 1. Verify that PTP session is down between GNSS (PRTC-A) and CSR (T-BC). 2. Verify that PTP session is up between T-GM-B, CSR (T-BC) and O-DU (T-TSC). 3. Verify that CSR locked to T-GM-B as the primary clock source. 4. Verify the 1PPS time error measurements on Clock Tester at O-RU UNI.    1. Max 1PPS |TEL | measured on Clock Tester at O-RU UNI <= 1100ns (For Enhanced RU)    2. Max 1PPS |TEL | measured on Clock Tester at O-RU UNI <= 11000ns (For Regular RU)   **Verifications for Maximum Relative 1PPS Time Error**   1. Verify that PTP and Sync-E session is up. 2. Verify that CSR locked to T-GM-B as the primary clock source. 3. Estimate the Maximum Relative 1PPS Time Error measurements between the O-RUs UNI.    1. max|1PPS TERL | (1,2) <= 60ns (FR2) (For Enhanced RU)    2. max|1PPS TERL | (1,2) <= 190ns (FR1) (For Enhanced RU)    3. max|1PPS TERL | (1,2) <= 100ns (FR1) (For Regular RU)   NOTE1:  To measure the relative time error, measure the time error from each point with respect to the internal time reference of measurement equipment, and then subtracting time error of one point from the other. | | | | |
| **Pass/Fail Criteria:** | Test shall pass if the Maximum absolute TE, Maximum Relative TE and Time Wander Limit measurement result is below the limit specified. | | | | |
| **Test Output** |  | End-to-End  Network Limit at O- RU UNI | Expected Value | | Observed Value |
| (For Enhanced RU) | (For Regular RU) |
|  | Packet max|TEL| | <= 1100ns | <= 1100ns |  |
|  | Packet max|TERL| | <= 60ns(FR2) | <= 100ns(FR1) |  |
| <= 190ns(FR1) |
|  | 1PPS max|TEL| | <= 1100ns | <= 1100ns |  |
|  | 1PPS max|TERL| | <= 60ns(FR2) | <= 100ns(FR1) |  |
| <= 190ns(FR1) |
|  | Frequency Limit  (For PRTC Class- A) | <= 32ppb | <= 32ppb |  |

1

2

3

4

5

6

## 9.4 Timing Solution use cases in LLS-C3 configuration for Shared O-

1. RU
2. This chapter specifies the test specification for a few use cases in LLS-C3 configurations for Shared O-RU.
3. The test specification will address cases where two O-DUs connected to O-RUs (Shared O-RUs), via an
4. Access Transport Networks (TN). On resiliency note, we are dealing with different elements (such as T-GM
5. and HSR associated with an 'ACTIVE' O-DU) that have either partially or completely failed or when there are
6. failures in the connected interfaces on the Transport Networks.
7. A Shared O-RU maintains connectivity to more than one O-DUs, for example, two O-DUs, with one of them
8. is considered as the 'ACTIVE' O-DU and other may be considered as the 'STANDBY' O-DU.
9. It is also expected that an O-DU shall support multiple Shared O-RUs. For example, O-DU1 may be
10. connected to O-RU1 and O-RU2; O-DU2 may also be connected to O-RU1 and O-RU2. If O-DU1 fails, both
11. O-RUs switch to O-DU2.
12. For the case of Shared O-RU with common transport, O-RU and Access Transport Network (TN) are all
13. shared with a single Operator, however one or more O-DUs are managed by more than one SROs. For the
14. Shared O-RU with separate transport, the O-RU is configured to operate with more than one Shared
15. Resource Operators O-DUs and the associated access TN.
16. For Shared O-RU using a common transport network managed by Shared O-RU host (SOH), the resiliency
17. solution will not differ from the non-Shared O-RU. Hence the resiliency scenario is not discussed in this
18. section. For Shared O-RU supported by separate transport networks that are managed by different SROs,
19. each of SROs takes its own responsibility to the resiliency design to its transport network.
20. The test specification assume that there are no failures on O-DUs and Shared O-RUs. The resiliency is
21. based on the premise that there will always be redundant path operational for S-plane communications in the
22. Access Transport Network between O-DUs and Shared O-RUs.
23. The Shared O-RU use cases in high level are already mentioned in the O-RAN WG9 Synchronization
24. Architecture and Solution Specification. Following use cases have been covered in this chapter and for each
25. of these use cases, clock performance limits are discussed for normal and failover scenarios.

27

1. LLS-C3 Configuration for Shared O-RU Use case.
2. a. A Shared O-RU using common transport with both O-DUs managed by different SROs.
3. b. Shared O-RUs using separate transport with both O-DUs managed by different SROs.
4. c. Shared O-RUs using separate transport with both O-DUs managed by different SROs (Link
5. Failure on T-GM1).
6. d. Shared O-RUs using separate transport with both O-DUs managed by different SROs
7. (Redundant TN).
8. e. Shared O-RUs using separate transport with both O-DUs managed by different SROs (Link
9. Failure on HSR1).
10. f. Shared O-RUs using separate transport with both O-DUs managed by different SROs (Full
11. Redundancy).
12. g. Shared O-RUs using separate transport with both O-DUs managed by different SROs (GM &
13. HSR Failure).

41

* 1. The performance limits at the input of Shared O-RU UNI for various Shared O-RU use cases mentioned
  2. above for LLS-C3 configuration remains same as that of non-Shared O-RU. Refer clause 14.3.1 in O-
  3. RAN.WG4.CUS.0-R003-v14.00 for details. However, it is important for each operator to design and manage
  4. the network to ensure LLS-C3 network limits are met under various network failover conditions.
  5. The test cases apply to both lab and field deployment cases. The test topologies in this section specify only
  6. few Transport Node Elements (TNEs) for illustration. However, for lab cases, the type and number of
  7. inserted Transport Node Elements (TNE) will be determined by operators (or any other applicable end
  8. customer) subject to the Shared O-RU UNI limits. The test in this section is performed at Shared O-RU UNI
  9. interfaces.
  10. The Test Topologies in all the test cases uses GNSS simulator to generate the GNSS signal to the network
  11. PRTC/T-GM. This high-quality reference from the simulator is used as the external reference for clock
  12. testers as well. The resultant accuracy of this method is a few nanoseconds. However, one can also use a
  13. GNSS signal feeding both the initial PRTC/T-GM in the network and the reference clock generating a
  14. 1pps/10MHz used to synchronize the clock testers for the measurements. Operator can make an allowance in
  15. this case, for all of the measurements for the accuracy of the reference. The magnitude of this allowance will
  16. depend on the specific GNSS reference in use.
  17. For relative time error measurements at UNI (e.g., Shared O-RU Fronthaul UNI) this document uses the
  18. metric max|TERL | (1,2) as defined in [88], Appendix XI. Please note this metric represents an estimation and
  19. the worst-case scenario. Tests that meet (are below) the limits are seen as PASS. Tests not meeting this
  20. metric may still be acceptable. The decision is for operators to make. However, if the measurement
  21. equipment support relative time error measurement, operator can use such equipment. Refer ITU-T
  22. G.8271.1 Appendix XI for more details.
  23. For Frequency Limit at UNI (e.g., Shared O-RU Fronthaul UNI) this document uses the metric defined as per
  24. WG4 section H.2 based on PRTC class for LLS-C3 configuration. Applicable MTIE limit shall apply for
  25. Frequency as per WG4 specification.
  26. 9.4.1 Timing Solution for Shared O-RU using common transport

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | SYNC.TE.01 | **Classification** | Synchronization, Performance, Absolute Time Error, Relative Time Error, Shared O-RU |
| **Test Title** | Measurement of Absolute Time Error, Relative Time Error at measurement plane of Shared O-RU UNI. | | |
| **Test Description** | LLS-C3 configurations for Shared O-RU with common transport.  A single Shared O-RU connected to two O-DUs via Access TN and O-DU1 and O- DU2 are managed by SRO-1 and SRO-2 respectively. No redundancy in the Access TN.  Only SRO-1 has the host privilege. This means SRO-1 additionally acts as Shared O-RU host (SOH). | | |
| **Test Objective:** | 1. Verify the Clock Lock states on O-DUs, HSRs and CSRs. 2. Verify the steady-state clock attributes on O-DUs, HSRs and CSRs. 3. Verify the Maximum Absolute Packet Time Error (Max|TEL |) at Shared O-RU UNI. 4. Verify the Maximum Relative Packet Time Error (Max|TERL |) at Shared O-RU UNI. | | |

|  |  |
| --- | --- |
|  | 1. Verify the Maximum Absolute 1PPS Time Error (Max|TEL|) at Shared O-RU UNI. 2. Verify the Maximum Relative 1PPS Time Error (Max|TERL |) at Shared O-RU UNI. 3. Verify the Time Wander at Shared O-RU UNI. |
| **Pre-Req** | O-RU with Shared O-RU Feature (Not shown in the diagram). Shared O-RU UNI is the measurement plane.  T-GM, HSR, CSR1, CSR2 are part of common TN managed by SRO-1. O-DU1 and O-DU2 are managed by SRO-1 and SRO-2 respectively.  Only SRO-1 has the host privilege.  O-DU1 is the ACTIVE O-DU managed by SRO-1 and O-DU2 is the STANDBY O-DU managed by SRO-2.  When the ACTIVE O-DU fails, the Shared O-RU helps identify the possible connectivity with STANDBY O-DU managed by SRO-2. |
| **Test Topology:** | ![A diagram of a network  Description automatically generated](../assets/images/4af449351796.jpg)  The test topology above illustrates the placement of clock testers at the Shared O- RUs UNI connected to CSRs. 1PPS and 10MHz reference from GNSS Simulator connected to the clock reference inputs of the clock tester. |
| **Test Configuration** | Configure G.8275.1 profile on all devices. |
| **Procedure:** | **Detailed Test procedure:**   1. HSR uses T-GM as the Primary Clock Source. 2. CSR1, CSR2, O-DU1 and O-DU2 are locked to HSR.   **Verifications for Clock Attributes**   1. Verify the clock lock states on O-DUs, HSRs, CSRs. The lock state should be Phase-aligned. 2. Verify the clock attributes on O-DUs, HSRs and CSRs as per ITU-T G.8275.1 Standard-Appendix V, Table V.3.   **Verifications for Maximum Absolute Packet Time Error**   1. Verify time error measurements using Clock Tester for the PTP flows from CSRs at the Shared O-RUs UNI.    1. Max|TEL | measured on Clock Tester at Shared O-RUs UNI <= 1100ns (For Enhanced RU) |

b. Max|TEL | measured on Clock Tester at Shared O-RU UNI <= 1100ns (For Regular RU)

**Verifications for Maximum Relative Packet Time Error**

1. Verify the Maximum Relative Time Error measurements between the Shared O- RUs UNI.
   1. max|TERL | (1,2) <= 60ns (FR2) (For Enhanced RU)
   2. max|TERL | (1,2) <= 190ns (FR1) (For Enhanced RU)
   3. max|TERL | (1,2) <= 100ns (FR1) (For Regular RU)

**Verifications for Maximum Absolute 1PPS Time Error**

1. Verify the 1PPS time error measurements on Clock Tester at Shared O-RUs UNI.
   1. Max 1PPS |TEL | measured on Clock Tester at Shared O-RUs UNI <= 1100ns (For Enhanced RU)
   2. Max 1PPS |TEL | measured on Clock Tester at Shared O-RUs UNI <= 1100ns

(For Regular RU)

**Verifications for Maximum Relative 1PPS Time Error**

1. Estimate the Maximum Relative 1PPS Time Error measurements between the Shared O-RUs UNI.
   1. max|1PPS TERL | (1,2) <= 60ns (FR2) (For Enhanced RU)
   2. max|1PPS TERL | (1,2) <= 190ns (FR1) (For Enhanced RU)
   3. max|1PPS TERL | (1,2) <= 100ns (FR1) (For Regular RU)

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **Pass/Fail Criteria:** | Test shall pass if the Maximum absolute TE, Maximum Relative TE and Time Wander Limit measurement result is below the limit specified. | | | | |
| **Test Output** |  | End-to-End  Network Limit at Shared O-RU UNI | Expected Value | | Observed Value |
| (For Enhanced RU) | (For Regular RU) |
|  | Packet max|TEL| | <= 1100ns | <= 1100ns |  |
|  | Packet max|TERL| | <= 60ns(FR2) | <= 100ns(FR1) |  |
| <= 190ns(FR1) |
|  | 1PPS max|TEL| | <= 1100ns | <= 1100ns |  |
|  | 1PPS max|TERL| | <= 60ns(FR2) | <= 100ns(FR1) |  |
| <= 190ns(FR1) |
|  | Frequency Limit  (For PRTC Class- A) | <= 32ppb | <= 32ppb |  |

1 9.4.2 Timing Solution for Shared O-RU with separate transport.

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | SYNC.TE.02 | **Classification** | Synchronization, Performance, Absolute Time Error, Relative Time Error, Shared O-RU |
| **Test Title** | Measurement of Absolute Time Error, Relative Time Error at measurement plane of Shared O-RU UNI. | | |
| **Test Description** | LLS-C3 configurations for Shared O-RU with common transport.  Two Shared O-RUs are connected to two O-DUs via Access TN and O-DU1 and O- DU2 are managed by SRO-1 and SRO-2 respectively. | | |

|  |  |
| --- | --- |
|  | Only SRO-1 has the host privilege. This means SRO-1 additionally act as Shared O- RU host (SOH). |
| **Test Objective:** | 1. Verify the Clock Lock states on O-DUs, HSRs and CSRs. 2. Verify the steady-state clock attributes on O-DUs, HSRs and CSRs. 3. Verify the Maximum Absolute Packet Time Error (Max|TEL |) at Shared O-RU UNI. 4. Verify the Maximum Relative Packet Time Error (Max|TERL |) between the Shared O-RUs UNI. 5. Verify the Maximum Absolute 1PPS Time Error (Max|TEL|) at Shared O-RU UNI. 6. Verify the Maximum Relative 1PPS Time Error (Max|TERL |) between the Shared O-RUs UNI. 7. Verify the Time Wander at Shared O-RU UNI. |
| **Pre-Req** | O-RU with Shared O-RU Feature (Not shown in the diagram). Shared O-RU UNI is the measurement plane.  Both T-GM1 and T-GM2 share a common Timing Source (e.g. GNSS). T-GM1, HSR1, CSR1 and O-DU1 are managed by SRO-1.  T-GM2, HSR2 and O-DU2 are managed by SRO-2. SRO-1 has host privilege.  Link between HSR1 and HSR2 doesn't use for S-Plane traffic. It is meant to carry only C/U plane traffic should the need arise.  O-DU1 is the ACTIVE O-DU managed by SRO-1 and O-DU2 is the STANDBY O-DU managed by SRO-2.  When the ACTIVE O-DU fails, the Shared O-RU helps identify the possible connectivity with STANDBY O-DU managed by SRO-2. |
| **Test Topology:** | ![A diagram of a network  Description automatically generated](../assets/images/172f123d3342.jpg)  The test topology above illustrates the placement of two clock testers at the Shared O-RUs UNI connected to a CSR. 1PPS and 10MHz reference from GNSS Simulator connected to the clock reference inputs of the clock tester. |
| **Test Configuration** | Configure G.8275.1 profile on all devices.  Priority2 of T-GM1 < Priority2 of T-GM2. |
| **Procedure:** | **Detailed Test procedure:** |

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
|  | 1. HSR1 uses the T-GM1 as the Primary Clock Source. 2. HSR2 uses the T-GM2 as the Primary Clock Source. 3. CSR1 and O-DU1 are locked to HSR1. 4. O-DU2 is locked to HSR2.   **Verifications for Clock States and Attributes**   1. Verify the clock lock state on O-DUs, HSRs, CSRs. The lock state should be Phase-aligned. 2. Verify the clock attributes on O-DUs, HSRs and CSRs as per ITU-T G.8275.1 Standard-Appendix V, Table V.3.   **Verifications for Maximum Absolute Packet Time Error**   1. Verify time error measurements using Clock Tester for the PTP flows from CSR at the Shared O-RU UNI.    1. Max|TEL | measured on Clock Tester at the Shared O-RU UNI <= 1100ns   (For Enhanced RU)   * 1. Max|TEL | measured on Clock Tester at the Shared O-RU UNI <= 1100ns   (For Regular RU)  **Verifications for Maximum Relative Packet Time Error**   1. Verify the Maximum Relative Time Error measurements between the Shared O- RUs UNI.    1. max|TERL | (1,2) <= 60ns (FR2) (For Enhanced RU)    2. max|TERL | (1,2) <= 190ns (FR1) (For Enhanced RU)    3. max|TERL | (1,2) <= 100ns (FR1) (For Regular RU)   **Verifications for Maximum Absolute 1PPS Time Error**   1. Verify the 1PPS time error measurements on Clock Tester at the Shared O-RU UNI.    1. Max 1PPS |TEL | measured on Clock Tester at Shared O-RU UNI <= 1100ns   (For Enhanced RU)   * 1. Max 1PPS |TEL | measured on Clock Tester at Shared O-RU UNI <= 1100ns   (For Regular RU)  **Verifications for Maximum Relative 1PPS Time Error**   1. Estimate the Maximum Relative 1PPS Time Error measurements between the Shared O-RUs UNI.    1. max|1PPS TERL | (1,2) <= 60ns (FR2) (For Enhanced RU)    2. max|1PPS TERL | (1,2) <= 190ns (FR1) (For Enhanced RU)    3. max|1PPS TERL | (1,2) <= 100ns (FR1) (For Regular RU) | | | | |
| **Pass/Fail Criteria:** | Test shall pass if the Maximum absolute TE, Maximum Relative TE and Time Wander Limit measurement result is below the limit specified. | | | | |
| **Test Output** |  | End-to-End Network Limit at  Shared O-RU UNI | Expected Value | | Observed Value |
| (For Enhanced RU) | (For Regular RU) |
|  | Packet max|TEL| | <= 1100ns | <= 1100ns |  |
|  | Packet max|TERL| | <= 60ns(FR2) | <= 100ns(FR1) |  |
| <= 190ns(FR1) |
|  | 1PPS max|TEL| | <= 1100ns | <= 1100ns |  |
|  | 1PPS max|TERL| | <= 60ns(FR2) | <= 100ns(FR1) |  |
| <= 190ns(FR1) |

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
|  |  | Frequency Limit (For PRTC Class- A) | <= 32ppb | <= 32ppb |  |

1. 9.4.3 Timing Solution Resiliency for Shared O-RU with separate transport
2. (Link Failure on T-GM1)

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | SYNC.TE.03 | **Classification** | Synchronization, Performance, Absolute Time Error, Relative Time Error, Shared O-RU |
| **Test Title** | Measurement of Absolute Time Error, Relative Time Error at measurement plane of Shared O-RU UNI. | | |
| **Test Description** | LLS-C3 configurations for Shared O-RU with separate transport.  Two Shared O-RUs are connected to two O-DUs via Access TN and O-DU1 and O- DU2 are managed by SRO-1 and SRO-2 respectively.  Only SRO-1 has the host-privilege. This means SRO-1 additionally act as Shared O- RU host (SOH).  Link Failure on T-GM1. | | |
| **Test Objective** | 1. Verify the Clock Lock states on O-DUs, HSRs and CSRs. 2. Verify the steady-state clock attributes on O-DUs, HSRs and CSRs. 3. Verify the Maximum Absolute Packet Time Error (Max|TEL |) at Shared O-RU UNI. 4. Verify the Maximum Relative Packet Time Error (Max|TERL |) between the Shared O-RUs UNI. 5. Verify the Maximum Absolute 1PPS Time Error (Max|TEL|) at O-RU UNI. 6. Verify the Maximum Relative 1PPS Time Error (Max|TERL |) between the Shared O-RUs UNI. 7. Verify the Time Wander at Shared O-RU UNI. | | |
| **Pre-Req** | Testcase 9.4.2 MUST be a PASS. | | |
| **Test Topology:** | ![A diagram of a network  Description automatically generated](../assets/images/07532ffab5aa.jpg) | | |

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
|  | The test topology above illustrates the placement of clock tester at the Shared O- RUs UNI connected to a CSR. 1PPS and 10MHz reference from GNSS Simulator connected to the clock reference inputs of the clock tester. | | | | |
| **Test Configuration** | Fail the Link between T-GM1 and HSR1. | | | | |
| **Procedure:** | **Detailed Test procedure:**   1. HSR1 moves to phase-holdover. 2. HSR2 uses the T-GM2 as the Primary Clock Source. 3. CSR1 and O-DU1 are locked to HSR2. 4. O-DU2 is locked to HSR2.   **Verifications for Clock State and Attributes**   1. Verify the clock lock state on O-DUs, HSRs, CSRs. The lock state should be Phase-aligned. 2. Verify the clock attributes on O-DUs, HSRs and CSRs as per ITU-T G.8275.1 Standard-Appendix V, Table V.3.   **Verifications for Maximum Absolute Packet Time Error**   1. Verify time error measurements using Clock Tester for the PTP flows from CSR at the Shared O-RU UNI.    1. Max|TEL | measured on Clock Tester at the Shared O-RU UNI <= 1100ns   (For Enhanced RU)   * 1. Max|TEL | measured on Clock Tester at the Shared O-RU UNI <= 1100ns   (For Regular RU)  **Verifications for Maximum Relative Packet Time Error**   1. Verify the Maximum Relative Time Error measurements between the Shared O- RUs UNI.    1. max|TERL | (1,2) <= 60ns (FR2) (For Enhanced RU)    2. max|TERL | (1,2) <= 190ns (FR1) (For Enhanced RU)    3. max|TERL | (1,2) <= 100ns (FR1) (For Regular RU)   **Verifications for Maximum Absolute 1PPS Time Error**   1. Verify the 1PPS time error measurements on Clock Tester at Shared O-RU UNI.    1. Max 1PPS |TEL | measured on Clock Tester at Shared O-RU UNI <= 1100ns   (For Enhanced RU)   * 1. Max 1PPS |TEL | measured on Clock Tester at Shared O-RU UNI <= 1100ns   (For Regular RU)  **Verifications for Maximum Relative 1PPS Time Error**   1. Estimate the Maximum Relative 1PPS Time Error measurements between the Shared O-RUs UNI.    1. max|1PPS TERL | (1,2) <= 60ns (FR2) (For Enhanced RU)    2. max|1PPS TERL | (1,2) <= 190ns (FR1) (For Enhanced RU)    3. max|1PPS TERL | (1,2) <= 100ns (FR1) (For Regular RU) | | | | |
| **Pass/Fail Criteria:** | Test shall pass if the Maximum absolute TE, Maximum Relative TE and Time Wander Limit measurement result is below the limit specified. | | | | |
| **Test Output** |  | End-to-End Network Limit at  Shared O-RU UNI | Expected Value | | Observed Value |
| (For Enhanced RU) | (For Regular RU) |
|  | Packet max|TEL| | <= 1100ns | <= 1100ns |  |

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
|  |  | Packet max|TERL| | <= 60ns(FR2) | <= 100ns(FR1) |  |
| <= 190ns(FR1) |
|  | 1PPS max|TEL| | <= 1100ns | <= 1100ns |  |
|  | 1PPS max|TERL| | <= 60ns(FR2) | <= 100ns(FR1) |  |
| <= 190ns(FR1) |
|  | Frequency Limit (For PRTC Class- A) | <= 32ppb | <= 32ppb |  |

1. 9.4.4 Timing Solution for Shared O-RU with separate transport (Redundant
2. T-GM and HSR).

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | SYNC.TE.04 | **Classification** | Synchronization, Performance, Absolute Time Error, Relative Time Error, Shared O-RU |
| **Test Title** | Measurement of Absolute Time Error, Relative Time Error at measurement plane of Shared O-RU UNI. | | |
| **Test Descriptions** | LLS-C3 configurations for Shared O-RU with separate transport.  Two Shared O-RUs are connected to two O-DUs via Access TN and O-DU1 and O- DU2 are managed by SRO-1 and SRO-2 respectively.  Redundancy at T-GM, HSR and Transport connectivity.  Both SRO-1 and SRO-2 has the host-privileges. This means both SRO-1 and SRO-2 additionally act as Shared O-RU host (SOH). | | |
| **Test Objective** | 1. Verify the Clock Lock states on O-DUs, HSRs and CSRs. 2. Verify the steady-state clock attributes on O-DUs, HSRs and CSRs. 3. Verify the Maximum Absolute Packet Time Error (Max|TEL |) at Shared O-RU UNI. 4. Verify the Maximum Relative Packet Time Error (Max|TERL |) between the Shared O-RUs UNI. 5. Verify the Maximum Absolute 1PPS Time Error (Max|TEL|) at Shared O-RU UNI. 6. Verify the Maximum Relative 1PPS Time Error (Max|TERL |) between the Shared O-RUs UNI. 7. Verify the Time Wander at Shared O-RU UNI. | | |
| **Pre-Req** | O-RU with Shared O-RU Feature (Not shown in the diagram). Shared O-RU UNI is the measurement plane.  Both T-GM1 and T-GM2 share a common Timing Source (e.g. GNSS). T-GM1, HSR1, CSR1 and O-DU1 are managed by SRO-1.  T-GM2, HSR2, CSR2 and O-DU2 are managed by SRO-2. Both SRO-1 and SRO-2 MUST have host privileges.  O-DU1 is the ACTIVE O-DU managed by SRO-1.  When the ACTIVE O-DU Fails, the Shared O-RU helps identify the possible connectivity with STANDBY O-DU managed by SRO-2. | | |

|  |  |
| --- | --- |
| **Test Topology** | ![](../assets/images/ea8afc5c4775.jpg)  The test topology above illustrates the placement of two clock testers at the O-RUs UNI connected to CSRs. 1PPS and 10MHz reference from GNSS Simulator connected to the clock reference inputs of the clock tester. |
| **Test Configuration** | Configure G.8275.1 profile on all devices.  Priority2 of T-GM1 < Priority2 of T-GM2. |
| **Procedure** | **Detailed Test procedure:**   1. HSR1 uses T-GM1 as the Primary Clock Source. 2. HSR2 uses T-GM2 as the Primary Clock Source. 3. CSR1 & CSR2 run A-BTCA, and both select clock from HSR1. 4. O-DU1 locked to HSR1. 5. O-DU2 locked to HSR2.   **Verifications for Clock States and Attributes**   1. Verify the clock lock state on O-DUs, HSRs, CSRs. The lock state should be Phase-aligned. 2. Verify the clock attributes on O-DUs, HSRs and CSRs as per ITU-T G.8275.1 Standard-Appendix V, Table V.3.   **Verifications for Maximum Absolute Packet Time Error**   1. Verify time error measurements using Clock Tester for the PTP flows from CSR at the Shared O-RU UNI.    1. Max|TEL | measured on Clock Tester at the Shared O-RU UNI <= 1100ns   (For Enhanced RU)   * 1. Max|TEL | measured on Clock Tester at the Shared O-RU UNI <= 1100ns   (For Regular RU)  **Verifications for Maximum Relative Packet Time Error**   1. Verify the Maximum Relative Time Error measurements between the Shared O- RUs UNI.    1. max|TERL | (1,2) <= 60ns (FR2) (For Enhanced RU)    2. max|TERL | (1,2) <= 190ns (FR1) (For Enhanced RU)    3. max|TERL | (1,2) <= 100ns (FR1) (For Regular RU)   **Verifications for Maximum Absolute 1PPS Time Error** |

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
|  | 1. Verify the 1PPS time error measurements on Clock Tester at Shared O-RU UNI.    1. Max 1PPS |TEL | measured on Clock Tester at Shared O-RU UNI <= 1100ns   (For Enhanced RU)   * 1. Max 1PPS |TEL | measured on Clock Tester at Shared O-RU UNI <= 1100ns   (For Regular RU)  **Verifications for Maximum Relative 1PPS Time Error**   1. Estimate the Maximum Relative 1PPS Time Error measurements between the Shared O-RUs UNI.    1. max|1PPS TERL | (1,2) <= 60ns (FR2) (For Enhanced RU)    2. max|1PPS TERL | (1,2) <= 190ns (FR1) (For Enhanced RU)    3. max|1PPS TERL | (1,2) <= 100ns (FR1) (For Regular RU) | | | | |
| **Pass/Fail Criteria** | Test shall pass if the Maximum absolute TE, Maximum Relative TE and Time Wander Limit measurement result is below the limit specified. | | | | |
| **Test Output** |  | End-to-End Network Limit at Shared O-RU UNI | Expected Value | | Observed Value |
| (For Enhanced RU) | (For Regular RU) |
|  | Packet max|TEL| | <= 1100ns | <= 1100ns |  |
|  | Packet max|TERL| | <= 60ns(FR2) | <= 100ns(FR1) |  |
| <= 190ns(FR1) |
|  | 1PPS max|TEL| | <= 1100ns | <= 1100ns |  |
|  | 1PPS max|TERL| | <= 60ns(FR2) | <= 100ns(FR1) |  |
| <= 190ns(FR1) |
|  | Frequency Limit (For PRTC Class- A) | <= 32ppb | <= 32ppb |  |

1. 9.4.5 Timing Solution Resiliency for Shared O-RU with separate transport
2. (Link Failure on HSR1)

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | SYNC.TE.05 | **Classification** | Synchronization, Performance, Absolute Time Error, Relative Time Error, Shared O-RU |
| **Test Title** | Measurement of Absolute Time Error, Relative Time Error at measurement plane of O-RU UNI. | | |
| **Test Descriptions** | LLS-C3 configurations for Shared O-RU with separate transport.  Two Shared O-RUs are connected to two O-DUs via Access TN and O-DU1 and O- DU2 are managed by SRO-1 and SRO-2 respectively.  Redundancy at T-GM, HSR and Transport connectivity.  Both SRO-1 and SRO-2 have the host privileges. This means both SRO-1 and SRO- 2 additionally act as Shared O-RU host (SOH).  Link Failure on HSR1. | | |
| **Test Objective** | 1. Verify the Clock Lock states on O-DUs, HSRs and CSRs. 2. Verify the steady-state clock attributes on O-DUs, HSRs and CSRs. 3. Verify the Maximum Absolute Packet Time Error (Max|TEL |) at Shared O-RU UNI. | | |

|  |  |
| --- | --- |
|  | 1. Verify the Maximum Relative Packet Time Error (Max|TERL |) at the Shared O- RUs UNI ports. 2. Verify the Maximum Absolute 1PPS Time Error (Max|TEL|) at Shared O-RU UNI. 3. Verify the Maximum Relative 1PPS Time Error (Max|TERL |) at Shared O-RU UNI. 4. Verify the Time Wander at Shared O-RU UNI. |
| **Pre-Req** | Testcase 9.4.4 MUST be a PASS. |
| **Test Topology** | ![A diagram of a network  Description automatically generated](../assets/images/c4f814a1226b.jpg)  The test topology above illustrates the placement of two clock testers at the Shared O-RUs UNI connected to CSRs. 1PPS and 10MHz reference from GNSS Simulator connected to the clock reference inputs of the clock tester. |
| **Test Configuration** | Fail the links between HSR1 and CSRs. |
| **Procedure:** | **Detailed Test procedure:**   1. HSR1 uses the T-GM1 as the Primary Clock Source. 2. HSR2 uses the T-GM2 as the Primary Clock Source. 3. CSR1 & CSR2 both select clock from HSR2. 4. O-DU1 locked to HSR1. 5. O-DU2 locked to HSR2.   **Verifications for Clock States and Attributes**   1. Verify the clock lock state on O-DUs, HSRs, CSRs. The lock state should be Phase-aligned. 2. Verify the clock attributes on O-DUs, HSRs and CSRs as per ITU-T G.8275.1 Standard-Appendix V, Table V.3.   **Verifications for Maximum Absolute Packet Time Error**   1. Verify time error measurements using Clock Tester for the PTP flows from CSR at the Shared O-RU UNI.    1. Max|TEL | measured on Clock Tester at Shared O-RU UNI <= 1100ns (For Enhanced RU)    2. Max|TEL | measured on Clock Tester at Shared O-RU UNI <= 1100ns (For Regular RU)   **Verifications for Maximum Relative Packet Time Error** |

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
|  | 1. Verify the Maximum Relative Time Error measurements between the Shared O- RUs UNI.    1. max|TERL | (1,2) <= 60ns (FR2) (For Enhanced RU)    2. max|TERL | (1,2) <= 190ns (FR1) (For Enhanced RU)    3. max|TERL | (1,2) <= 100ns (FR1) (For Regular RU)   **Verifications for Maximum Absolute 1PPS Time Error**   1. Verify the 1PPS time error measurements on Clock Tester at Shared O-RU UNI.    1. Max 1PPS |TEL | measured on Clock Tester at Shared O-RU UNI <= 1100ns   (For Enhanced RU)   * 1. Max 1PPS |TEL | measured on Clock Tester at Shared O-RU UNI <= 1100ns   (For Regular RU)  **Verifications for Maximum Relative 1PPS Time Error**   1. Estimate the Maximum Relative 1PPS Time Error measurements between the Shared O-RUs UNI.    1. max|1PPS TERL | (1,2) <= 60ns (FR2) (For Enhanced RU)    2. max|1PPS TERL | (1,2) <= 190ns (FR1) (For Enhanced RU)    3. max|1PPS TERL | (1,2) <= 100ns (FR1) (For Regular RU) | | | | |
| **Pass/Fail Criteria:** | Test shall pass if the Maximum absolute TE, Maximum Relative TE and Time Wander Limit measurement result is below the limit specified. | | | | |
| **Test Output** |  | End-to-End Network Limit at  Shared O-RU UNI | Expected Value | | Observed Value |
| (For Enhanced RU) | (For Regular RU) |
|  | Packet max|TEL| | <= 1100ns | <= 1100ns |  |
|  | Packet max|TERL| | <= 60ns(FR2) | <= 100ns(FR1) |  |
| <= 190ns(FR1) |
|  | 1PPS max|TEL| | <= 1100ns | <= 1100ns |  |
|  | 1PPS max|TERL| | <= 60ns(FR2) | <= 100ns(FR1) |  |
| <= 190ns(FR1) |
|  | Frequency Limit (For PRTC Class- A) | <= 32ppb | <= 32ppb |  |

1. 9.4.6 Timing Solution for Shared O-RU with separate transport (Full
2. Redundancy)

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | SYNC.TE.06 | **Classification** | Synchronization, Performance, Absolute Time Error, Relative Time Error, Shared O-RU |
| **Test Title** | Measurement of Absolute Time Error, Relative Time Error at measurement plane of O-RU UNI. | | |
| **Test Description** | LLS-C3 configurations for Shared O-RU with separate transport.  Two Shared O-RUs are connected to two O-DUs via Access TN and O-DU1 and O- DU2 are managed by SRO-1 and SRO-2 respectively.  Full Redundancy in Access Transport Network.  Both SRO-1 and SRO-2 have the host privileges. This means both SRO-1 and SRO- 2 additionally act as Shared O-RU host (SOH). | | |

|  |  |
| --- | --- |
| **Test Objective** | 1. Verify the Clock Lock states on O-DUs, HSRs and CSRs. 2. Verify the steady-state clock attributes on O-DUs, HSRs and CSRs. 3. Verify the Maximum Absolute Packet Time Error (Max|TEL |) at Shared O-RU UNI. 4. Verify the Maximum Relative Packet Time Error (Max|TERL |) between the Shared O-RUs UNI. 5. Verify the Maximum Absolute 1PPS Time Error (Max|TEL|) at Shared O-RU UNI. 6. Verify the Maximum Relative 1PPS Time Error (Max|TERL |) between the Shared O-RUs UNI. 7. Verify the Time Wander at Shared O-RU UNI. |
| **Pre-Req** | O-RU with Shared O-RU Feature (Not shown in the diagram). Shared O-RU UNI is the measurement plane.  Both T-GM1 and T-GM2 share a common Timing Source (e.g. GNSS).  T-GM1A, T-GM1B, HSR1A, HSR1B, CSR1 and O-DU1 are managed by SRO-1. T-GM2A, T-GM2B, HSR2A, HSR2B, CSR2 and O-DU2 are managed by SRO-2.  Both SRO-1 and SRO-2 MUST have host privileges. O-DU1 is the ACTIVE O-DU managed by SRO-1.  When the ACTIVE O-DU Fails, the Shared O-RU helps identify the possible connectivity with STANDBY O-DU managed by SRO-2. |
| **Test Topology** | ![A diagram of a network  Description automatically generated](../assets/images/d18a5feb4b66.jpg)  The test topology above illustrates the placement of two clock tester at the Shared O-RUs UNI connected to CSRs. 1PPS and 10MHz reference from GNSS Simulator connected to the clock reference inputs of the clock tester. |
| **Test Configuration** | Configure G.8275.1 profile on all devices.  Configure Priority2 of T-GM1 < Priority2 of T-GM2. |
| **Procedure** | **Detailed Test procedure:**   1. HSR1A and HSR1B uses the T-GM1A as the Primary Clock Source. 2. HSR2A and HSR2B uses the T-GM2A as the Primary Clock Source. 3. CSR1 & CSR2 run A-BTCA, and both select clock from HSR1. 4. O-DU1 locked to HSR1A. |

5. O-DU2 locked to HSR2A.

#### Verifications for Clock State and Attributes

1. Verify the clock lock state on O-DUs, HSRs, CSRs. The lock state should be Phase-aligned.
2. Verify the clock attributes on O-DUs, HSRs and CSRs as per ITU-T G.8275.1 Standard-Appendix V, Table V.3.

#### Verifications for Maximum Absolute Packet Time Error

1. Verify time error measurements using Clock Tester for the PTP flows from CSR at the Shared O-RU UNI.
   1. Max|TEL | measured on Clock Tester at the Shared O-RU UNI <= 1100ns

(For Enhanced RU)

* 1. Max|TEL | measured on Clock Tester at the Shared O-RU UNI <= 1100ns

(For Regular RU)

#### Verifications for Maximum Relative Packet Time Error

1. Verify the Maximum Relative Time Error measurements between the Shared O- RUs UNI.
   1. max|TERL | (1,2) <= 60ns (FR2) (For Enhanced RU)
   2. max|TERL | (1,2) <= 190ns (FR1) (For Enhanced RU)
   3. max|TERL | (1,2) <= 100ns (FR1) (For Regular RU)

#### Verifications for Maximum Absolute 1PPS Time Error

1. Verify the 1PPS time error measurements on Clock Tester at Shared O-RU UNI.
   1. Max 1PPS |TEL | measured on Clock Tester at Shared O-RU UNI <= 1100ns

(For Enhanced RU)

* 1. Max 1PPS |TEL | measured on Clock Tester at Shared O-RU UNI <= 1100ns

(For Regular RU)

#### Verifications for Maximum Relative 1PPS Time Error

1. Estimate the Maximum Relative 1PPS Time Error measurements between the Shared O-RUs UNI.
   1. max|1PPS TERL | (1,2) <= 60ns (FR2) (For Enhanced RU)
   2. max|1PPS TERL | (1,2) <= 190ns (FR1) (For Enhanced RU)
   3. max|1PPS TERL | (1,2) <= 100ns (FR1) (For Regular RU)

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **Pass/Fail Criteria:** | Test shall pass if the Maximum absolute TE, Maximum Relative TE and Time Wander Limit measurement result is below the limit specified. | | | | |
| **Test Output** |  | End-to-End Network Limit at Shared O-RU UNI | Expected Value | | Observed Value |
| (For Enhanced RU) | (For Regular RU) |
|  | Packet max|TEL| | <= 1100ns | <= 1100ns |  |
|  | Packet max|TERL| | <= 60ns(FR2) | <= 100ns(FR1) |  |
| <= 190ns(FR1) |
|  | 1PPS max|TEL| | <= 1100ns | <= 1100ns |  |
|  | 1PPS max|TERL| | <= 60ns(FR2) | <= 100ns(FR1) |  |
| <= 190ns(FR1) |
|  | Frequency Limit (For PRTC Class- A) | <= 32ppb | <= 32ppb |  |

1. 9.4.7 Timing Solution Resiliency for Shared O-RU with separate transport
2. (GM1A and HSR1A Failure)

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | SYNC.TE.07 | **Classification** | Synchronization, Performance, Absolute Time Error, Relative Time Error, Shared O-RU |
| **Test Title** | Measurement of Absolute Time Error, Relative Time Error at measurement plane of O-RU UNI. | | |
| **Test Description** | LLS-C3 configurations for Shared O-RU with separate transport.  Two Shared O-RUs are connected to two O-DUs via Access TN and O-DU1 and O- DU2 are managed by SRO-1 and SRO-2 respectively.  Full Redundancy in Access Transport Network.  Both SRO-1 and SRO-2 have the host privileges. This means both SRO-1 and SRO- 2 additionally act as Shared O-RU host (SOH).  Link Failure on T-GM1A and HSR1A. | | |
| **Test Objective** | 1. Verify the Clock Lock states on O-DUs, HSRs and CSRs. 2. Verify the steady-state clock attributes on O-DUs, HSRs and CSRs. 3. Verify the Maximum Absolute Packet Time Error (Max|TEL |) at Shared O-RU UNI. 4. Verify the Maximum Relative Packet Time Error (Max|TERL |) between the Shared O-RUs UNI. 5. Verify the Maximum Absolute 1PPS Time Error (Max|TEL|) at O-RU UNI. 6. Verify the Maximum Relative 1PPS Time Error (Max|TERL |) between the Shared O-RUs UNI. 7. Verify the Time Wander at Shared O-RU UNI. | | |
| **Pre-Req** | Testcase 9.4.6 MUST be a PASS. | | |
| **Test Topology** | ![A diagram of a network  Description automatically generated](../assets/images/a18fcc03278f.jpg)  The test topology above illustrates the placement of two clock testers at the Shared O-RUs UNI connected to CSRs. 1PPS and 10MHz reference from GNSS Simulator connected to the clock reference inputs of the clock tester. | | |

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **Test Configuration** | Fail the HSR1A and T-GM1A. | | | | |
| **Procedure** | **Detailed Test procedure:**   1. HSR1B uses the T-GM1B as the Primary Clock Source. 2. HSR2A and HSR2B uses the T-GM2A as the Primary Clock Source. 3. CSR1 & CSR2 run A-BTCA, and both select clock from HSR1B. 4. O-DU1 is locked to HSR1B. 5. O-DU2 is locked to HSR2A.   **Verifications for Clock States and Attributes**   1. Verify the clock lock state on O-DUs, HSRs, CSRs. The lock state should be Phase-aligned. 2. Verify the clock attributes on O-DUs, HSRs and CSRs as per ITU-T G.8275.1 Standard-Appendix V, Table V.3.   **Verifications for Maximum Absolute Packet Time Error**   1. Verify time error measurements using Clock Tester for the PTP flows from CSR at the Shared O-RU UNI.    1. Max|TEL | measured on Clock Tester at the Shared O-RU UNI <= 1100ns   (For Enhanced RU)   * 1. Max|TEL | measured on Clock Tester at the Shared O-RU UNI <= 1100ns   (For Regular RU)  **Verifications for Maximum Relative Packet Time Error**   1. Verify the Maximum Relative Time Error measurements between the Shared O- RUs UNI.    1. max|TERL | (1,2) <= 60ns (FR2) (For Enhanced RU)    2. max|TERL | (1,2) <= 190ns (FR1) (For Enhanced RU)    3. max|TERL | (1,2) <= 100ns (FR1) (For Regular RU)   **Verifications for Maximum Absolute 1PPS Time Error**   1. Verify the 1PPS time error measurements on Clock Tester at Shared O-RU UNI.    1. Max 1PPS |TEL | measured on Clock Tester at Shared O-RU UNI <= 1100ns   (For Enhanced RU)   * 1. Max 1PPS |TEL | measured on Clock Tester at Shared O-RU UNI <= 1100ns   (For Regular RU)  **Verifications for Maximum Relative 1PPS Time Error**   1. Estimate the Maximum Relative 1PPS Time Error measurements between the Shared O-RUs UNI.    1. max|1PPS TERL | (1,2) <= 60ns (FR2) (For Enhanced RU)    2. max|1PPS TERL | (1,2) <= 190ns (FR1) (For Enhanced RU)    3. max|1PPS TERL | (1,2) <= 100ns (FR1) (For Regular RU) | | | | |
| **Pass/Fail Criteria:** | Test shall pass if the Maximum absolute TE, Maximum Relative TE and Time Wander Limit measurement result is below the limit specified. | | | | |
| **Test Output** |  | End-to-End Network Limit at Shared O-RU UNI | Expected Value | | Observed Value |
| (For Enhanced RU) | (For Regular RU) |
|  | Packet max|TEL| | <= 1100ns | <= 1100ns |  |
|  | Packet max|TERL| | <= 60ns(FR2) | <= 100ns(FR1) |  |
| <= 190ns(FR1) |

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
|  |  | 1PPS max|TEL| | <= 1100ns | <= 1100ns |  |
|  | 1PPS max|TERL| | <= 60ns(FR2) | <= 100ns(FR1) |  |
| <= 190ns(FR1) |
|  | Frequency Limit (For PRTC Class- A) | <= 32ppb | <= 32ppb |  |

1

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

19

# Annex A: ITU G.8262/G.8262.1 Clock specification test cases for

1. TNEs
2. SyncE performance as per G.8262/G.8262.1 clock specifications
3. A.1 Pull-in/Hold-in/Pull-out Limits

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | SYNC.SE.01 | **Classification** | Synchronization, Performance |
| **Test Title** | Pull-in/hold-in/pull-out limits on HSR/CSR | | |
| **Test Objective:** | Verify the Pull-in/hold-in/pull-out range meets ITU-T G.8262/G.8262.1 | | |
| **Pre-Req** | HSR/CSR connected to a tester which uses a stable reference clock | | |
| **Test Topology:** | ![Diagram  Description automatically generated](../assets/images/0142b978ba5b.jpg) | | |
| **Test Configuration** | To measure the 'pull-in' range, apply a high frequency offset to the selected clock input using clock tester so that the device will enter into holdover mode. Now reduce the offset in arbitrary small step until EEC/eEEC locks to the input source.  EEC/eEEC should lock to the input source before the offset reaches to +-4.6PPM. To measure the 'hold-in' range, vary the frequency offset arbitrarily, slowly, and measure the highest frequency offset within which the device maintains lock.  'Pull-out' range is the offset within which the device stays in locked state and outside of which the device loses the lock irrespective of the rate of the frequency change. | | |
| **Procedure:** | **Detailed Test procedure:**   1. Connect the tester to HSR/CSR fronthaul interface. 2. Configure tester to provide the clock to DUT configured interface. 3. Establish Frequency Synchronization on DUT. 4. Inject PPM offset from the tester as per the ITU-T G.8262/G.8262.1   **Verifications needed:**   * 1. Verify that SyncE and ESMC/eESMC are up.   2. Perform the Pull-in/hold-in/Pull-out test on the device under test.   3. Compare the test result as per ITU-T G.8262/G.8262.1 | | |
| **Pass/Fail Criteria:** | Test shall pass if the measurement result is below the limit specified by ITU-T G.8262/ G.8262.1 clock specifications. | | |
| **Test Output** | ITU-T G.8262/G.8262.1 defined the limit of +/-4.6PPM | | |

1

2 A.2 Wander Generation Limit for EEC/eEEC Clock

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | SYNC.SE.02 | **Classification** | Synchronization, Performance, |
| **Test Title** | Frequency Error/TIE/MTIE/TDEV on HSR/CSR | | |
| **Test Objective:** | Verify the device maximum output wander or TIE/MTIE/TDEV | | |
| **Pre-Req** | HSR/CSR connected to a tester which uses a stable reference clock.  TNE should support ESMC or eESMC as applicable. | | |
| **Test Topology:** | ![Diagram  Description automatically generated](../assets/images/0142b978ba5b.jpg) | | |
| **Test Configuration** | This section to be filled out when putting the test report (may include device and/or tester configuration) | | |
| **Procedure:** | **Detailed Test procedure:**   1. Connect the tester to HSR/CSR interface. 2. Configure tester to provide the clock to DUT configured interface. 3. Establish Frequency Synchronization on DUT. 4. Perform the wander generation test.   **Verifications needed:**   * 1. Verify that SyncE and ESMC/eESMC are up.   2. Verify the Frequency Error/TIE/MTIE/TDEV      1. All the results should be within ITU-T G.8262/G.8262.1 clock specification limits | | |
| **Pass/Fail Criteria:** | Test shall pass if the measurement result is below the limit specified by ITU-T G.8262/G.8262.1 clock specifications. | | |
| **Test Output** | This section is the placeholder that will capture the output/configurations after test is executed, typically done after test execution | | |

3

4 A.3 Wander Tolerance/Transfer Test for EEC/eEEC Clock

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | SYNC.SE.03 | **Classification** | Synchronization, Performance |
| **Test Title** | Wander Tolerance/Wander Transfer @ HSR/CSR | | |

|  |  |
| --- | --- |
| **Test Objective:** | Verify the device wander tolerance and wander transfer performance |
| **Pre-Req** | HSR/CSR connected to a tester which uses a stable reference clock. TNE should support ESMC or eESMC as applicable.  Stimulus for input wander noise to be enabled in the tester. |
| **Test Topology:** | ![Diagram  Description automatically generated](../assets/images/0142b978ba5b.jpg) |
| **Test Configuration** | This section to be filled out when putting the test report (may include device and/or tester configuration) |
| **Procedure:** | **Detailed Test procedure:**   1. Connect the tester to HSR/CSR fronthaul interface. 2. Configure tester to provide the clock to DUT configured interface. 3. Establish Frequency Synchronization on DUT. 4. Perform the wander tolerance/wander transfer test by adding wander noises as input stimulus to the device under test.   **Verifications needed:**   * 1. Verify that SyncE and ESMC/eESMC are up.   2. Device shouldn't lose lock/no alarm/no reference switch-over with the input wander.   3. Criteria for wander tolerance test as per G.8262/G.8262.1 EEC/eEEC specification.      1. Device should maintain the performance within limits.      2. Device shouldn't lose lock/no alarm/no reference switch-over with the input wander.      3. Device shouldn't move to holdover state.   4. Verify the wander transfer characteristics.      1. Wander transfer characteristics should conform ITU G.8262/G.8262.1 EEC/eEEC limits.      2. In the passband (1Hz-3Hz), the phase gain of the eEEC should be smaller than 0.2dB.   5. Compare the test result as per ITU-T G.8262/G.8262.1 clock specifications. |
| **Pass/Fail Criteria:** | Test shall pass if the measurement result is below the limit specified by ITU-T G.8262/G.8262.1 clock specifications. |
| **Test Output:** | This section is the placeholder that will capture the output/configurations after test is executed, typically done after test execution |

1

1. A.4 Frequency Holdover Limits for EEC/eEEC Clock

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | SYNC.SE.04 | **Classification** | Synchronization, Performance, |
| **Test Title** | Frequency holdover limits on HSR/CSR | | |
| **Test Objective:** | Verify the device maximum wander or TIE/MTIE/TDEV in the Frequency holdover state. | | |
| **Pre-Req** | HSR/CSR connected to a tester which uses a stable reference clock.  TNE should support ESMC or eESMC as applicable. | | |
| **Test Topology:** | ![Diagram  Description automatically generated](../assets/images/a7b8825d4bae.jpg) | | |
| **Test Configuration** | This section to be filled out when putting the test report (may include device and/or tester configuration) | | |
| **Procedure:** | **Detailed Test procedure:**   1. Connect the tester to HSR/CSR fronthaul interface. 2. Configure tester to provide the clock to DUT configured interface. 3. Establish Frequency Synchronization on DUT. 4. Perform the wander generation test for 15 min. 5. Break the Link1 or stops ESMC/eESMC transmission on Link1. 6. Perform the wander generation test for 24 hrs.   **Verifications needed:**   * 1. Verify that SyncE and ESMC/eESMC are up.   2. Device should be Frequency synchronized to tester via Link1.   3. Verify the Frequency Error/TIE/MTIE/TDEV before breaking the link.      1. All the results should be within ITU-T G.8262/G.8262.1 specification limits.   4. Continue verify the Frequency Error/TIE/MTIE/TDEV after breaking the link.      1. All the results should be within ITU-T G.8262/G.8262.1 holdover specification limits | | |
| **Pass/Fail Criteria:** | Test shall pass if the measurement result is below the limit specified by ITU-T G.8262/G.8262.1 clock specifications. | | |
| **Test Output** | This section is the placeholder that will capture the output/configurations after test is executed, typically done after test execution | | |

1

2

1. A.5 Short-term phase-transients as per ITU-T G.8262/G.8262.1

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | SYNC.SE.05 | **Classification** | Synchronization, Performance, TIE/MTIE |
| **Test Title** | Failover performance or Short-term phase-transients | | |
| **Test Objective:** | Verify the TIE/MTIE during the failure of primary reference for a short duration (<15 sec) | | |
| **Pre-Req** | HSR/CSR connected to a tester which uses a stable reference clock | | |
| **Test Topology:** | ![Diagram  Description automatically generated](../assets/images/e79aec1254c6.jpg) | | |
| **Test Configuration** | This section to be filled out when putting the test report (may include device and/or tester configuration) | | |
| **Procedure:** | **Detailed Test procedure:**   1. Connect the tester to HSR/CSR fronthaul interface as per the Topology. 2. Configure tester to provide the clock to DUT configured primary interface. 3. Establish Frequency Synchronization on DUT. 4. Perform the wander generation test. 5. Stop the ESMC/eESMC from tester for up to 15 sec. 6. Second reference or the previously selected clock source traceable to primary to be available after 15 sec.   **Verifications needed:**   * 1. Verify that SyncE and ESMC/eESMC are up.   2. Device should be Frequency synchronized to tester via Link1.   3. Verify the maximum phase-transient at the output of the device under test.      1. Result should meet ITU-T G.8262/G.8262.1 mask.      2. The overall output phase error should remain constant and smaller than 170ns for G.8262.1 clock and 1000ns for G.8262 clock. | | |
| **Pass/Fail Criteria:** | Test shall pass if the measurement result is below the limit specified by ITU-T G.8262/G.8262.1 clock specifications. | | |
| **Test Output** | This section is the placeholder that will capture the output/configurations after test is executed, typically done after test execution | | |

# Annex B: ITU G.8273.2 Clock specification test cases for TNEs

1. PTP performance as per G.8273.2 clock specifications
2. B.1 Time Noise Generation Performance

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | SYNC.SE.06 | **Classification** | Synchronization, Performance, TIE/MTIE |
| **Test Title** | Time Noise Generation Performance | | |
| **Test Objective:** | Verify the Max |TE|, cTE, dTE of the HSR/CSR | | |
| **Pre-Req** | HSR/CSR connected to a Clock tester which uses a high-quality stable reference clock. | | |
| **Test Topology:** | ![](../assets/images/b6aad88bf6c3.jpg) | | |
| **Test Configuration** | This section to be filled out when putting the test report (may include device and/or tester configuration) | | |
| **Procedure:** | **Detailed Test procedure:**   1. Connect the tester to HSR/CSR fronthaul interface as per the Topology. 2. Configure tester as TimeTransmitter on the link1 and TimeReceiver on the link2. 3. Establish Frequency and Phase Synchronization on DUT. 4. Perform the noise-generation test for duration of 1000 sec or more.   **Verifications needed:**   * 1. Verify both frequency and phase lock on device under test.   2. Verify the time error performance as per ITU-T G.8273.2      1. Frequency measurement should be as per ITU-T G.8262/G.8262.1 EEC/eEEC.      2. For enhanced TE specifications, the device conforms following Class-C specifications.         1. Maximum 2way absolute Time Error of 30 nsec.         2. Constant Time Error of +/-10 nsec.         3. Dynamic Time Error (Filtered) for low and high frequency 10 nsec and 30 nsec respectively. | | |

|  |  |
| --- | --- |
|  | 4. Dynamic MTIE (LF) should be as per G.8273.2 mask.  NOTE:  For TNEs doesn't support enhanced Class-C TE specifications shall support either Class-A or Class-B specifications as per ITU-T G.8273.2. |
| **Pass/Fail Criteria:** | Test shall pass if the measurement result is below the limit specified by ITU-T G.8273.2 clock specifications. |
| **Test Output** | This section is the placeholder that will capture the output/configurations after test is executed, typically done after test execution  ![Table  Description automatically generated](../assets/images/d50a2a93d684.jpg) |

1

2 B.2 Time Noise Tolerance Performance Test

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | SYNC.SE.07 | **Classification** | Synchronization, Performance, TIE/MTIE |
| **Test Title** | Time Noise tolerance Performance | | |
| **Test Objective:** | Verify the device Time Noise tolerance performance | | |
| **Pre-Req** | HSR/CSR connected to a tester which uses a high-quality stable reference clock.  Stimulus for input time noise to be enabled in the tester. | | |
| **Test Topology:** | ![](../assets/images/b6aad88bf6c3.jpg) | | |
| **Test Configuration** | This section to be filled out when putting the test report (may include device and/or tester configuration) | | |
| **Procedure:** | **Detailed Test procedure:**   1. Connect the tester to HSR/CSR fronthaul interface as per the Topology. 2. Configure tester as TimeTransmitter on the link1 and TimeReceiver on the link2. 3. Establish Frequency and Phase Synchronization on DUT. 4. Perform the time noise tolerance test for duration of 1000 sec or more. | | |

|  |  |
| --- | --- |
|  | **Verifications needed:**   1. Verify both frequency and phase lock on device under test. 2. Criteria for noise tolerance test as per G.8273.2 specification    1. Device should maintain the performance within limits.    2. Device shouldn't lose lock/no alarm/no reference switch-over with the input wander.    3. Device shouldn't move to holdover state. 3. Verify the time error performance as per ITU-T G.8273.2    1. Frequency measurement should be as per ITU-T G.8262.1 eEEC.    2. For enhanced TE specifications, the device conforms following Class-C specifications.       1. Maximum 2way absolute Time Error of 30 nsec.       2. Constant Time Error of +/-10 nsec.       3. Dynamic Time Error (Filtered) for low and high frequency 10 nsec and 30 nsec respectively.       4. Dynamic MTIE (LF) should be as per G.8273.2 mask.   NOTE:  For TNEs doesn't support enhanced Class-C TE specifications shall support either Class-A or Class-B specifications as per ITU-T G.8273.2. |
| **Pass/Fail Criteria:** | Test shall pass if the measurement result is below the limit specified by ITU-T G.8273.2 clock specifications. |
| **Test Output** | This section is the placeholder that will capture the output/configurations after test is executed, typically done after test execution |

1

2 B.3 Time Holdover Performance Test

3

|  |  |  |  |
| --- | --- | --- | --- |
| **Test ID** | SYNC.SE.08 | **Classification** | Synchronization, Performance, TIE/MTIE |
| **Test Title** | Time holdover Performance | | |
| **Test Objective:** | Verify the device Time holdover performance (Physical Layer Assisted) | | |
| **Pre-Req** | HSR/CSR connected to a tester which uses a high-quality stable reference clock | | |

|  |  |
| --- | --- |
| **Test Topology:** | ![](../assets/images/75ddcbd98293.jpg) |
| **Test Configuration** | This section to be filled out when putting the test report (may include device and/or tester configuration) |
| **Procedure:** | **Detailed Test procedure:**   1. Connect the tester to HSR/CSR fronthaul interface as per the Topology. 2. Configure tester as TimeTransmitter on the link1 and TimeReceiver on the link2. 3. Apply a stable time and frequency from the Tester to DUT input. 4. Establish Frequency and Phase Synchronization on DUT. 5. Perform the holdover test for duration of 1000 sec or more (Stopping the PTP flows)   **Verifications needed:**   * 1. Verify both frequency and phase lock on device under test (HSR/CSR) after stopping the PTP Flow,      1. PTP should be in holdover state.      2. Frequency should be in Locked state.   2. Verify the time error performance as per ITU-T G.8273.2      1. Frequency measurement should be as per ITU-T G.8262.1 eEEC.      2. For enhanced TE specifications, the device conforms following Class-C specifications.         1. Maximum 2way absolute Time Error of 30 nsec.         2. Constant Time Error of +/-10 nsec.         3. Dynamic Time Error (Filtered) for low and high frequency 10 nsec and 30 nsec respectively.         4. Dynamic MTIE (LF) should be as per G.8273.2 mask.   3. Verify the MTIE mask defined as per ITU-T G.8273.2.   NOTE:  For TNEs doesn't support enhanced Class-C TE specifications shall support either Class-A or Class-B specifications as per ITU-T G.8273.2. |
| **Pass/Fail Criteria:** | Test shall pass if the measurement result is below the limit specified by ITU-T G.8273.2 clock specifications. |
| **Test Output** | This section is the placeholder that will capture the output/configurations after test is executed, typically done after test execution |

1
---

- View in [Reader Mode](https://simewu.com/spec-reader/pages/04-WG9/O-RAN.WG9.XTRP-TST.0-R004-v05.00.docx).
- Go back to [Table of Contents](../README.md).
- Download the [Original Document](https://github.com/Simewu/spec-reader/raw/refs/heads/main/documents/O-RAN.WG9.XTRP-TST.0-R004-v05.00.docx).
