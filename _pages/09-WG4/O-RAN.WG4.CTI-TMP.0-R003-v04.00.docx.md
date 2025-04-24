---
title: O-RAN.WG4.CTI-TMP.0-R003-v04.00.docx.md
author: O-RAN Alliance
layout: post
---

- View in [GitHub Mode]({{site.github_page_url}}/O-RAN.WG4.CTI-TMP.0-R003-v04.00.docx.md).
- Go back to [Table of Contents]({{site.baseurl}}/).
- Download the [Original Document]({{site.download_url}}/O-RAN.WG4.CTI-TMP.0-R003-v04.00.docx).

---

* toc
{:toc}

---

![]({{site.baseurl}}/assets/images/39f3bc0378a7.jpg)O-RAN.WG4.CTI-TMP.0-R003-v04.00

*Technical Specification*

**O-RAN Working Group 4 (Open Fronthaul Interfaces WG) Cooperative Transport Interface**

**Transport Management Procedures Specification**

Copyright (C) 2023 by the O-RAN ALLIANCE e.V.

The copying or incorporation into any other work of part or all of the material available in this specification in any form without the prior written permission of O-RAN ALLIANCE e.V. is prohibited, save that you may print or download extracts of the material of this specification for your personal use, or copy the material of this specification for the purpose of sending to individual third parties for their information provided that you acknowledge O-RAN ALLIANCE as the source of the material and that you inform the third party that these conditions apply to them and that they must comply with them.

O-RAN ALLIANCE e.V., Buschkauler Weg 27, 53347 Alfter, Germany Register of Associations, Bonn VR 11238, VAT ID DE321720189

# 1 Contents

1. Foreword 4
2. Modal verbs terminology 4
3. 1 Scope 5
4. 2 References 5
5. 2.1 Normative references 5
6. 2.2 Informative references 6
7. 3 Definition of terms, symbols and abbreviations 6
8. 3.1 Terms 6
9. 3.2 Abbreviations 7
10. 4 High Level Description 9
11. 4.1 General CTI Management Architecture 9
12. 4.1.1 Foreword on management domains 9
13. 4.1.2 Summary of architecture 9
14. 4.1.3 Parameters to be configured 9
15. 5 CTI Management 10
16. 5.1 CTI connectivity parameters and configuration 10
17. 5.1.1 Point-point or switched Ethernet connectivity between TN and O-DU 10
18. 5.1.2 IP routing connectivity between TN and O-DU 11
19. 6 CTI procedures 15
20. 6.1 Correlations to be performed 15
21. 6.2 Auto Discovery for correlation of CTI session ID to transport parameter in TN 16
22. 6.2.1 Switched Ethernet connectivity between O-RU and O-DU 17
23. 6.2.2 IP routing connectivity between O-RU and O-DU 17
24. 6.3 Auto discovery for correlation of CTI session ID to CTI server 18
25. 6.4 Performing correlations without Auto Discovery method 18
26. 7 CTI Information Model 20
27. 7.1 General structure of the Information Model 20
28. 7.2 Relationships and unicities in the context of encapsulation of CTI flows between CTI servers and CTI
29. clients 22
30. 7.3 Relationships and unicities in the context of CTI sessions, CTI flows, CTI Patterns 23
31. 7.4 CTI IM for O-DU 24
32. 7.4.1 Imported and associated information 24
33. 7.4.2 Relationships at O-DU CTI Client 24
34. 7.4.3 Inheritance 27
35. 7.4.4 Class and Type definitions 27
36. 7.4.5 Attribute definitions 34
37. 8 CTI YANG Data Model 44
38. 8.1 CTI YANG Data Model Related to O-DU 45
39. 8.1.1 Overview 45
40. 8.1.2 o-ran-cti-common 45
41. 8.1.3 o-ran-o1-ctiOdu 45
42. 8.2 CTI YANG Model Related to TN (informative) 46
43. 8.2.1 Overview 46
44. 8.2.2 o-ran-cti-common 47
45. 8.2.3 o-ran-cti-tn-generic 47
46. 8.2.4 o-ran-cti-tn-pon 48
47. 8.2.5 o-ran-cti-tn-docsis 49
48. Annex A O-DU YANG Module Graphical Representation 51
49. A.1 CTIFunction 51
50. Annex B TN YANG Data Models (Informative) 53
51. B.1 o-ran-cti-tn-generic.yang 53
52. B.2 o-ran-cti-tn-pon.yang 57
53. B.3 o-ran-cti-tn-docsis.yang 60
54. Revision History 63
55. History 63

7

8

1 Foreword

2 This Technical Specification (TS) has been produced by O-RAN Alliance. 3

# 4 Modal verbs terminology

1. In the present document "**shall**", "**shall not**", "**should**", "**should not**", "**may**", "**need not**", "**will**", "**will not**", "**can**" and
2. "**cannot**" are to be interpreted as described in clause 3.2 of the O-RAN Drafting Rules (Verbal forms for the expression
3. of provisions).
4. "**must**" and "**must not**" are **NOT** allowed in O-RAN deliverables except when used in direct citation. 9

10

# 1 1 Scope

1. This Technical Specification has been produced by the O-RAN Alliance.
2. The contents of the present document are subject to continuing work within O-RAN and may change following formal
3. O-RAN approval. Should the O-RAN Alliance modify the contents of the present document, it will be re-released by O-
4. RAN with an identifying change of release date and an increase in version number as follows:
5. Release xx.yy.zz
6. where:
7. xx the first digit-group is incremented for all changes of substance, i.e. technical enhancements, corrections,
8. updates, etc. (the initial approved document will have xx=01).
9. yy the second digit-group is incremented when editorial only changes have been incorporated in the document.
10. zz the third digit-group included only in working versions of the document indicating incremental changes
11. during the editing process. 13
12. The present document describes the Transport Management Procedures for the Cooperative Transport Interface (CTI).
13. CTI is an interface between O-DUs and Transport Nodes of a packet-based transport network that is used to
14. interconnect the O-DUs to a variety of O-RUs. CTI specifically targets transport Nodes that manage a shared point-to-
15. multipoint access network. Intermediate transport nodes (routers and switches) that only manage point-to-point links do
16. not exchange CTI messages with the O-DUs. CTI consists of a Transport Control plane (TC) and a Transport
17. Management (TM). This document specifies the TM Information Model / Data Model and procedures. The TC-plane is
18. described in [1]. The reader is referred to the TC-plane document for a description of the protocol as well as
19. background, context, motivation and topologies with CTI.
20. This document focuses on the management aspect of CTI. The goals are to define the CTI-related configurable
21. parameters at TN and at O-DU, to define a suitable set of YANG modules to capture these parameters, to describe
22. necessary steps in the configuration of the parameters, and to define an auto-discovery method to automate the
23. correlation between TN specific parameters and CTI parameters. 26

# 27 2 References

## 2.1 Normative references

1. References are either specific (identified by date of publication and/or edition number or version number) or non
2. specific. For specific references, only the cited version applies. For non-specific references, the latest version of the
3. referenced document (including any amendments) applies.
4. NOTE: While any hyperlinks included in this clause were valid at the time of publication, O-RAN cannot guarantee
5. their long term validity.
6. The following referenced documents are necessary for the application of the present document.

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| 35 | [1] | O-RAN.WG4.CTI-TCP.0-v03.00 "Cooperative Transport Interface, Transport Control Plane Specification" |
| 36 | [2] | 3GPP TR 21.905: "Vocabulary for 3GPP Specifications". |
| 37 | [3] | ORAN-WG4.CUS.0-v09.00 "Control, User and Synchronization Plane Specification". |
| 38 | [4] | ORAN-WG4.MP.0-v09.00 "Management Plane Specification". |
| 39 | [5] | Broadband Forum TR-385 "ITU-T PON YANG modules" |
| 40 | [6] | Broadband Forum TR-383 "Common YANG Modules for Access Networks" |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| 1 | [7] | IETF RFC 6991 "Common YANG datatypes" |
| 2 | [8] | IETF RFC 8343 "A YANG Data Model for Interface Management" |
| 3 | [9] | IETF RFC 8344 "A YANG Data Model for IP Management" |
| 4 | [10] | CableLabs CM-SP-MULPIv3.1-I19-191016, "DOCSIS 3.1 MAC and Upper Layer Protocols Interface |
| 5 |  | Specification" , Cable Television Laboratories, Inc |

</div>

## 2.2 Informative references

1. References are either specific (identified by date of publication and/or edition number or version number) or non
2. specific. For specific references, only the cited version applies. For non-specific references, the latest version of the
3. referenced document (including any amendments) applies.
4. NOTE: While any hyperlinks included in this clause were valid at the time of publication, O-RAN cannot guarantee
5. their long term validity.
6. The following referenced documents are not necessary for the application of the present document but they assist the
7. user with regard to a particular subject area.

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| 14 | [11] | IETF RFC 3046 "DHCP Relay Agent Information Option" |
| 15 | [12] | IETF RFC 3315 "Dynamic Host Configuration Protocol for IPv6 (DHCPv6)" |
| 16 | [13] | IETF RFC 2132 "DHCP Options and BOOTP Vendor Extensions" |
| 17 | [14] | IETF RFC 3925 "Vendor-Identifying Vendor Options for Dynamic Host Configuration Protocol version 4 |
| 18 |  | (DHCPv4)" |
| 19 | [15] | IETF RFC 6939 "Client Link-Layer Address Option in DHCPv6" |
| 20 | [16] | IETF RFC 6991 "Common YANG Data Types" |
| 21 | [17] | 3GPP TS 32.160 Management and orchestration; Management service template (Release 16) |
| 22 | [18] | 3GPP TS 32.156 Fixed Mobile Convergence (FMC) Model repertoire (Release 16) |
| 23 |  |  |

</div>

# 24 3 Definition of terms, symbols and abbreviations

## 3.1 Terms

1. For the purposes of the present document, the terms and definitions given in 3GPP TR 21.905 [2] and the following
2. apply. A term defined in the present document takes precedence over the definition of the same term, if any, in 3GPP
3. TR 21.905 [2].
4. New terms used in this document:
5. ? **CTI client**: a process in the O-DU that exchanges CTI messages with one or multiple CTI servers, e.g. to
6. request a given transport capacity.
7. ? **CTI server**: a process in the Transport Node that exchanges CTI messages with one or multiple CTI clients,
8. e.g. to receive capacity requests.
9. ? **CTI message sender**: CTI client or CTI server generating a CTI message
10. ? **CTI message receiver;** CTI client or CTI server receiving a CTI message 36
11. Generic terms used in this document:
12. ? **Mobile slot**: a subframe in 3GPP LTE or a slot in 3GPP NR. 39

40 Conventions used in this document:

1. ? The following convention applies any time a bit field is displayed in a figure. The bit field shall be interpreted
2. by reading the figure from left to right, then from top to bottom, with the MSB being the first bit so read and
3. the LSB being the last bit so read. 4

## 3.2 Abbreviations

1. For the purposes of the present document, the following abbreviations apply.

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| 7 | BWR | Bandwidth Reporting |
| 8 | CM | Cable Modem |
| 9 | CMTS | Cable Modem Termination System |
| 10 | CoS | Class of Service |
| 11 | CO DBA | Cooperative DBA |
| 12 | CTI | Cooperative Transport Interface |
| 13 | DBA | Dynamic Bandwidth Allocation |
| 14 | DHCP | Dynamic Host Configuration Protocol |
| 15 | DM | Data Model |
| 16 | DN | Distinguished Name |
| 17 | DOCSIS | Data Over Cable Service Interface Specification |
| 18 | DP | Destination Port |
| 19 | DSCP | Differentiated Services Code Point |
| 20 | DT | Data Type |
| 21 | EMS | Element Management System |
| 22 | FQDN | Fully Qualified Domain Name |
| 23 | IM | Information Model |
| 24 | IOC | Information Object Class |
| 25 | L2 / L3 / L4 | ISO/OSI Layer 2 / Layer 3 / Layer 4 |
| 26 | LLID | Logical Link ID |
| 27 | MAC | Media Access Control |
| 28 | MOI | Managed Object Instance |
| 29 | NA(P)T | Network Address (and Port) Translation |
| 30 | NMS | Network Management System |
| 31 | O-CU | O-RAN Central Unit |
| 32 | O-DU | O-RAN Distributed Unit |
| 33 | O-RU | O-RAN Radio Unit |
| 34 | OLT | Optical Line Termination |
| 35 | ONU | Optical Networking Unit |
| 36 | OSS | Operations Support System |
| 37 | PCP | Priority Code Point |
| 38 | PON | Passive Optical Network |
| 39 | QoS | Quality of Service |
| 40 | RAN | Radio Access Network |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| 1 | RO | Read-Only |
| 2 | SCN | Service Class Name |
| 3 | SF | Service Flow |
| 4 | SMO | Service Management and Orchestration |
| 5 | SN | IP subnet |
| 6 | SP | Source Port |
| 7 | T-CONT | Transmission Container |
| 8 | TC | Traffic Class for IPv6 |
| 9 | TC(P) | Transport Control (Plane) |
| 10 | TDM | Time Division Multiplexing |
| 11 | TM(P) | Transport Management (Procedures) |
| 12 | TN | Transport Node |
| 13 | ToS | Type of Service |
| 14 | TPID | Tag Protocol Identifier |
| 15 | TU | Transport Unit |
| 16 | UDP | User Datagram Protocol |
| 17 | UE | User Equipment |
| 18 | VID | VLAN ID |
| 19 | VLAN | Virtual LAN |
| 20 |  |  |

</div>

# 1 4 High Level Description

## 4.1 General CTI Management Architecture

### 4.1.1 Foreword on management domains

1. This document refers to separate "transport domain OSS" and "RAN domain SMO", without any implication of
2. ownership of the domains or use of particular processes or protocols in the transport domain OSS. Each domain is
3. responsible for managing its nodes and can do so independently, but for CTI some level of mutual coordination is
4. needed.
5. Note that using two domains in this document does not preclude alternative approaches such as an integrated OSS for
6. both domains, or an overarching orchestrating function that would select the parameters and forward them to the OSS
7. domains.

### 4.1.2 Summary of architecture

1. As the configuration of CTI parameters in the O-DU is non real-time, it shall be done over the O-RAN O1 interface
2. using NETCONF/YANG.
3. This document does not make assumptions about the management process in the Transport OSS.
4. Several CTI parameters are common for O-DU and TN side and have to be aligned. There is a need for coordination
5. between both operation domains. This document specifies the needs, but does not make assumptions about the process
6. or protocols to ensure such coordination. The only process described in this document is an automated auto-discovery
7. which allows to link a TN specific transport parameter with each individual CTI session ID.
8. This document does not make assumptions about the integration of functional features into physical nodes. For
9. example, the document does not restrict the realization of the RAN domain DHCP server, which can be integrated with
10. ![]({{site.baseurl}}/assets/images/7620ae63b953.jpg)the O-DU, can be provided by the transport system, or can be accessed via a relay.

22

1. **Figure 4.1 : Management architecture for CTI**

### 4.1.3 Parameters to be configured

1. There are two types of parameters related to CTI:
2. ? Parameters to establish L2 or L2 + L3/L4 connectivity for CTI messages between CTI servers and CTI clients,
3. to be configured by Transport OSS and by RAN SMO, and their corresponding YANG models 28
4. ? Parameters for the operation of CTI, to be configured by Transport OSS and by RAN SMO, and their
5. corresponding YANG models 31

# 1 5 CTI Management

## 5.1 CTI connectivity parameters and configuration

* 1. This chapter describes how to enable CTI connectivity between the CTI servers and CTI clients. It is a conceptual
  2. description of the configuration needs and does not specify protocols or methods or sequences of actions for the
  3. configuration.

### 5.1.1 Point-point or switched Ethernet connectivity between TN and O-DU

#### 5.1.1.1 L2 Connectivity parameters

* 1. The packets shall follow the Ethernet encapsulation as described in O-RAN CTI TCP [1].
  2. The CTI packets are encapsulated in Ethernet with the invariant value of O-RAN Ethertype (0x9433), so the Ethertype
  3. is not configurable. The Ethernet Protocol Subtype (see O-RAN CTI TCP [1])) for O-RAN CTI is also an invariant
  4. value but not formally specified yet, so it is made configurable (value 0x1 is proposed in [1]).
  5. Note: This version of the document only specifies the use of single (.1Q) VLAN tag for CTI transport and L2 filter
  6. parameter. The use of dual VLAN-tag is to be specified in a later version of this document. 14

1. Both O-DU and TN need to know the corresponding VLAN(s) and MAC addresses of respectively the CTI servers and
2. CTI clients they have to connect to. As mentioned in O-RAN CTI TCP [1], each TN may host multiple CTI servers,
3. each O-DU may host multiple CTI clients, and connectivity between all clients and servers shall be supported.
4. The operator is free to choose how to segment the network with different VLANs, from a single flat model (option A:
5. same VLAN configuration for CTI in the whole network) to differentiation (a VLAN configuration per TN-O-DU pair
6. (Option B) or per client-server pair (Option C)).
7. ![]({{site.baseurl}}/assets/images/0647da353434.jpg)

##### Figure 5.1 : Layer 2 interconnection options

1. Note (not shown in the figure) that an intermediate switch could perform VLAN translation between Transport domain
2. and RAN domain.
3. Note that the YANG model caters for all possibilities by defining a set of connectivity parameters per pair of CTI server
4. - CTI client.

#### 5.1.1.2 Configuration of L2 connectivity parameters

28

![]({{site.baseurl}}/assets/images/a9ad5c945aad.jpg)1

##### 2 Figure 5.2 : Configuration of Layer 2 connectivity parameters in case of Ethernet switching

3

1. The process involves following steps:
2. 1) [per CTI server] CTI server MAC addr is stored in Transport OSS
3. [per CTI client] CTI client MAC addr is stored in RAN SMO
4. 2) [per CTI server and per CTI client] Transport OSS and RAN SMO exchange CTI server and CTI client MAC
5. addresses from 1), and exchange [per (CTI client;CTI server) combination] the VLAN ID to be used
6. 3) [per CTI client] Transport OSS configures MAC addr of CTI clients and VLAN IDs in TN
7. [per CTI server] RAN SMO configures MAC addr of CTI servers and VLAN IDs in O-DU 11

12

### 5.1.2 IP routing connectivity between TN and O-DU

#### 5.1.2.1 L2 + L3/L4 Connectivity parameters

1. The packets shall follow the UDP/IP/Ethernet encapsulation as described in O-RAN CTI TCP [1].
2. The CTI UDP listening port is invariant but not (yet) defined as a well-known port, so it is also still made configurable.
3. Both O-DU and TN need to know the corresponding L2 and L3/L4 parameters to use for communicating with
4. respectively the CTI servers and CTI clients they have to connect to. As mentioned in O-RAN CTI TCP [1], each TN

19 may host multiple CTI servers, each O-DU may host multiple CTI clients, and connectivity between all clients and

20 servers shall be supported. 21

1. At Ethernet level, each CTI client and CTI server may have its own MAC address, and VLANs are used based on the
2. subnetting at IP level.
3. At IP level, subnetting defines how many IP addresses are used and how the different nodes will be interconnected;
4. - If all CTI servers and clients in the whole network are part of a single subnet (Option A), each client may use
5. single IP address (for communicating with all servers), each server may use a single IP addres (for
6. communicating with all clients), and the TNs and O-DUs are connected by point-point links or intermediate
7. switches.
8. - Alternatively, the network could be split in multiple subnets on a node level, where communication between
9. subnets happen via an intermediate router. Option B shows an example of one subnet at O-DU side and one
10. subnet at TN side, interconnected by an intermediate router.
11. - Alternatively, the network could be split in multiple subnets along TN-O-DU combinations. Option C shows
12. an example of one subnet per O-DU, shared with all TNs. The CTI servers in the TNs support multiple IP
13. addresses (one per subnet) and there is no need for routing between the TNs and O-DUs (e.g. intermediate
14. switch).
    1. - (note that sharing subnets across transport and RAN domains (options A and C) probably only apply to cases
    2. of a single operator managing both domains). 3
15. At UDP level, a single UDP listening port value is used for all clients, servers and messages. The source port value may
16. be freely chosen. Its value remains the same during a communication session between the CTI client and CTI server,
17. but may be ephemeral from one communication session to the next.
18. Note that the YANG model caters for all possibilities by defining a set of connectivity parameters per pair of CTI server
19. - CTI client. 9

10 ![]({{site.baseurl}}/assets/images/c0652a7afe3f.jpg)

![]({{site.baseurl}}/assets/images/12c4bf126444.jpg)11

12

1. **Figure 5.3 : Layer 3 interconnection options**

#### 5.1.2.2 Configuration of L2 connectivity parameters

15

![]({{site.baseurl}}/assets/images/cad2c0d28674.jpg)![]({{site.baseurl}}/assets/images/d07fc7dc4005.jpg)1

2

##### Figure 5.4 a, b: Configuration of Layer 2 connectivity parameters in case of IP routing

* 1. The process involves following steps:
  2. 1) If subnets are shared between Transport and RAN domains (options A and C in section 5.1.2.1 and Fig 3-2a),
  3. the common VLAN IDs shall be coordinated between the Transport OSS and RAN SMO. Otherwise (Option
  4. B in section 5.1.2.1 and Fig 3-2b) this step is not needed.
  5. 2) [per CTI client] Transport OSS configures VLAN ID to be used for TC-plane
  6. [per CTI server] RAN SMO configures VLAN ID to be used for TC-plane
  7. The MAC addresses of the next hop is fetched by normal means (ARP) after configuration of L3 parameters (see
  8. section 5.1.2.3).

12

#### 13 5.1.2.3 Configuration of L3 connectivity parameters

![]({{site.baseurl}}/assets/images/119d4d1e559a.jpg)14

15

##### 16 Figure 5.5 : Configuration of Layer 3 connectivity parameters in case of IP routing

1. The process involves following steps:
2. 1) [per CTI server] CTI server (in TN) gets L3 configuration, statically or by DHCPv4 or DHCPv6 (or stateless
3. for IPv6)
4. [per CTI client] CTI client (in O-DU) gets L3 configuration, statically or by DHCPv4 or DHCPv6 (or stateless
5. for IPv6)
6. 2) [per CTI server] the assigned CTI server IP address is stored in Transport OSS
7. [per CTI client] the assigned CTI client IP address is stored in RAN SMO
8. 3) [per CTI server and per CTI client] Transport OSS and RAN SMO exchange this information about allocated
9. IP addresses of respectively CTI servers and CTI clients
10. 4) [per CTI client] Transport OSS configures IP addr of CTI clients in TN
11. [per CTI server] RAN SMO configures IP addr of CTI servers in O-DU 12

#### 5.1.2.4 Remarks about layer 3 connectivity

1. The O-RU and the O-DU need routing table configuration (multiple subnets), this document doesn't describe this
2. configuration.
3. Additionally, the DHCP relay agent in the first router facing the O-RU has to be be configured with the IP address of
4. the DHCP server in the RAN domain to allow DHCP communication between the DHCP client in the O-RU and the
5. RAN DHCP server.
6. In some subnet cases there could be a router between the TN and O-DU. The configuration of the router is not described
7. in this document.
8. There could also be a NAT (NAPT) between the TN and O-DU. In that case there are a couple of attention points that
9. need to be considered, namely the impact of destination port translation, the need of NAT traversal, etc... This is out of
10. scope of this document. 24

# 1 6 CTI procedures

1. Proper interpretation of CTI messages by the TNs requires a level of cooperation between the CTI server side and CTI
2. client side to guarantee consistency of the parameter values and and correlation between the parameters. Although it is
3. possible to rely on manual correlation actions, it is beneficial to automate the process. This section describes an
4. automated autodiscovery method of the correlation of the CTI session IDs with the TU/TN transport parameter they
5. correspond to. The same method can also be used to determine which CTI server has to be associated per given CTI
6. session ID.

## 6.1 Correlations to be performed

1. For proper operation of CTI, several parameters need to be consistent at both TN and at O-DU sides. This means that
2. the same values have to be consistently configured at both CTI server and CTI client side by their respective
3. management systems. The method or protocols for this coordination between Transport OSS and RAN SMO are out of
4. scope of this document.
5. Static parameters such as timer values, CTI Flow ID filters, CTI Pattern IDs etc... can be coordinated at OSS level
6. independently of the topology of the O-RUs and transport nodes.
7. Dynamically allocated parameters such as IP addresses of CTI servers and CTI clients are dependent of the
8. interconnection topology of TNs and O-DUs, but not of the topology of the O-RUs. They can be coordinated at OSS
9. level.
10. The topology of O-RU deployments requires the following correlations for every **CTI session ID**, based which TU
11. interface each O-RU interface is connected to (see Figure 6.1 for a logical view of the correlations. This figure is
12. conceptual only and does not represent how or where the correlation have to be executed (in the TN or in its
13. management system)):
14. ? The TN needs to determine which transport parameter has to be linked to the corresponding CTI session ID
15. (combined with a CTI flow ID if used) in the CTI report messages (note that multiple transport parameters
16. could be configured on a TU interface, only one pertains to a combination CTI session ID + CTI flow ID).
17. CTI flow IDs are only unique per CTI client (different clients could use the same Flow ID for different
18. meanings), so the CTI client shall be taken into account in the correlation.
19. ? The TN needs also to keep track of which CTI client is reporting the CTI session ID, to send messages related
20. to that CTI session ID. A single CTI client may report about multiple CTI session IDs.
21. ? At O-DU side, the CTI client needs to correlate which CTI session ID to use for each O-RU interface it reports
22. about. This is a one-to-one relationship. For reporting between different flows on the same CTI session ID the
23. O-DU also needs to be aware of the class of service associated to each flow, which in turn is represented by a
24. given set of L2/L3/L4 filter parameters reflecting how uplink traffic is tagged by the O-RU. This tagging
25. could be different in different transport networks (a single O-DU can in principle manage O-RUs in multiple
26. transport networks), so the CTI server (reflecting the TN) shall be taken into account in the correlation.
27. ? The O-DU also needs to know to which CTI server to send the reports for a given CTI session ID. Multiple
28. reports could have to be sent to the same CTI server. 37
29. It is recommended to use the physical MAC address of the O-RU port over which the O-RU has M-plane connectivity
30. as the value of the CTI session ID.

![]({{site.baseurl}}/assets/images/307c5f401808.jpg)1

##### Figure 6.1 : O-RU topology-dependent correlations for CTI session IDs

* 1. (conceptual only, for YANG elements please see Chapter 6)

## 6.2 Auto Discovery for correlation of CTI session ID to transport

* 1. parameter in TN
  2. This optional method is a means to automate the correlation of CTI session ID with the required transport parameter on
  3. the corresponding TU (or TU UNI) on the corresponding TU or TU UNI. It avoids relying on manual correlation during
  4. the installation phase of the O-RU to a given TU interface.
  5. The method is based on re-using the DHCP exchange from the O-RU that is performed during start up of the O-RU to
  6. achieve IP connectivity for the M-plane defined in O-RAN MP [4]. Both cases of layer 2 and layer 3 connectivity are
  7. very similar, using the DHCP relay agent in the TN to add the agent circuit ID as the key for the correlation. The only
  8. differences are the use of giaddr by the DHCP relay agent in case of layer 3 connectivity, and the mandatory use of IP
  9. in the C-plane and U-plane traffic in case of layer 3 connectivity.
  10. If the M-plane uses IPv4, the DHCP relay agent adds Option 82 as per IETF RFC 3046 [11], which contains the agent
  11. circuit ID (sub option code 1), which is a string uniquely identifying the TU interface on which the DHCP request was
  12. received.
  13. If the M-plane uses IPv6, the DHCPv6 relay agent adds Option 18 as per IETF RFC 3315 [12], which contains the
  14. agent circuit ID.
  15. Additionally, the possible use of DHCP Option 60 as per IETF RFC 2132 [13] and DHCP Option 124 as per IETF
  16. RFC3925 [14] by the O-RU is specified in O-RAN MP [4]. Even if such options are not used, the O-RU interface will
  17. be discovered by the RAN SMO during the autoconfiguration of the O-RU through M-plane exchanges.
  18. Once the O-RU is configured, the RAN SMO can correlate the agent circuit ID with the O-RU interface ID based on the
  19. allocated IP address. In turn the O-RU interface is uniquely linked to a CTI session ID. The correlation [agent circuit
  20. ID, CTI session ID] can then be notified back to the transport OSS, which pushes the correlation to the corresponding
  21. TN that terminates the given TU.
  22. It is recommended to use the unique MAC address of the O-RU interface as the CTI session ID. For IPv4 this is
  23. communicated to the DHCP server in the field "chaddr" of DHCP option 82. For IPv6 it can be communicated as
  24. "client link layer address" in DHCPv6 Option 79 as per IETF RFC 6939 [15]. If the O-RU does not use Option 79 in
  25. DHCPv6, there needs to be a preconfigured association [O-RU ID; MAC address] in the RAN SMO.
  26. The auto discovery method applies to cases where the O-RU shares the same physical interface for the M-plane and for
  27. the CUS-plane. The method does not apply to O-RUs using different interfaces for the CUS-plane.
  28. The following sections 6.2.1 and 6.2.2 supersede section 3.2.1.2 in O-RAN CTI TCP [1].

### 6.2.1 Switched Ethernet connectivity between O-RU and O-DU

![]({{site.baseurl}}/assets/images/98c115e391e7.jpg)2

3

##### 4 Figure 6.2 : Auto-discovery method with Layer 2 interconnectivity

5

1. The sequence of steps is as follows (example for IPv4);
2. 1) O-RU starts by issuing DHCP discovery for its M-plane communication. The DHCP relay agent in TN adds
3. option 82 to DHCP Discovery.
4. Note that at start up the O-RU can be unaware of the configured M-plane VLAN ID. It can scan multiple
5. VLAN IDs (and untagged) until receiving an answer from the O-DU side. Only DHCP messages with VLAN
6. ID matching the configured M-plane VLAN ID will be passed through (with option 82 stamped) by the TN, all
7. other messages are discarded by the TN.
8. 2) O-RU gets M-plane IP configuration (by DHCP), starts up and gets configured by M-plane:
9. o Either options 60 or 124 are used that can fully identify O-RU ID
10. o Or the O-RU ID is discovered during O-RU configuration by the RAN SMO via the M-plane
11. 3) Two associations are extracted and stored in the RAN SMO:
12. o RAN DHCP server extracts the association [assigned M-plane IP address; Agent Circuit ID; chaddr]
13. o If O-RU ID is present in DHCP options 60 or 124, the RAN domain DHCP server extracts the
14. association [assigned M-plane IP address; O-RU ID]. If the DHCP options 60 or 124 are not used, the
15. association is extracted by RAN SMO.
16. o If DHCP server is hosted in the O-DU, the information is communicated to the RAN SMO over the
17. O1 interface
18. 4) RAN SMO correlates [Agent Circuit ID; chaddr] with [O-RU ID] based on M-plane IP address.
19. 5) RAN SMO configures O-DU (via O1) so that CTI client uses CTI session ID = chaddr for this O-RU ID.
20. 6) RAN SMO informs Transport OSS with association [Agent Circuit ID; CTI session ID]
21. 7) Transport OSS is able to determine the corresponding TN from "Access-Node-Identifier" in Agent Circuit ID,
22. and then configures association (Circuit ID; CTI session ID) to that TN. 28

### 29 6.2.2 IP routing connectivity between O-RU and O-DU

30

![]({{site.baseurl}}/assets/images/2a73d5ad1549.jpg)1

##### Figure 6.3 : Auto-discovery method with Layer 3 interconnectivity

3

1. The sequence of steps is as follows (example for IPv4);
2. 1) O-RU starts by issuing DHCP discovery for its M-plane communication. The DHCP relay agent in TN adds
3. option 82 to DHCP Discovery, adds "giaddr", converts the message from broadcast to unicast, and forwards it
4. to RAN DHCP server. Note that this requires that the DHCP relay agent in the TN is pre-configured with the
5. IP address of the RAN DHCP server, as mentioned in section 5.1.2.4.
6. Note that at start up the O-RU can be unaware of the configured M-plane VLAN ID (if it is used between TU
7. and TN). The O-RU can scan multiple VLAN IDs (and untagged) until receiving an answer from the O-DU
8. side. The TN will only process DHCP messages with a VLAN ID matching the configured M-plane VLAN ID,
9. all others are discarded by the TN.
10. The remaining steps 2 - 7 are identical to the steps in section 6.2.1.
11. Note that the same approach can be taken in case the transport domain would be responsible to the IP configuration of
12. the O-RUs (DHCP server hosted in the transport domain). This scenario is not worked out in this document as it is
13. considered to be unlikely. 17

## 6.3 Auto discovery for correlation of CTI session ID to CTI server

1. There needs to be a pre-configuration at Transport OSS of Agent cicuit ID (only the relevant fields) to Server (Server
2. Name and MAC address in case of L2 connectivity for CTI). This association needs to be communicated to the RAN
3. SMO.
4. After the auto discovery of 6.2, the RAN SMO knows the Agent circuit ID per O-RU (interface), and the CTI session
5. ID per O-RU (interface). It can then associate the CTI session ID of that O-RU (interface) to its corresponding CTI
6. server based on the TN-identifying portion of the Agent circuit ID. 25

## 6.4 Performing correlations without Auto Discovery method

1. In this case the correlations are not facilitated by an automated exchange of messages, and involve a manual
2. configuration during installation of each O-RU, and several extra coordination steps between Transport OSS and RAN
3. SMO;
4. 1) the correlation of CTI session ID to O-RU (interface) needs to be done at installation time, by manually
5. populating the association of an O-RU (interface) identifier to a TU (interface) indentifier in the Transport OSS.
6. It is then up to the Transport OSS to correlate the O-RU (interface) further to the transport parameter based on
7. the TU (interface) identifier, and if needed to ask for the associated CTI session ID to the RAN SMO (in case
8. the O-RU identifier that is visible to the Transport operator would be another identifier than the CTI session
9. ID).

1

* 1. 2) the correlation of CTI session ID to a given CTI server needs an extra level of coordination between the
  2. Transport OSS and the RAN SMO. Based on the manual association in step 1), the Transport OSS can deduce
  3. the corresponding CTI server for a given CTI session ID based on the TU identifier (which is linked to a given
  4. TN user-facing port, which in turn is controlled by a given CTI server). The Transport OSS then communicates
  5. the association of CTI session ID (or the O-RU identifier) with the associated CTI Server name (and MAC
  6. address in case of L2 connecivity for CTI) to the RAN SMO. 8

9

# 1 7 CTI Information Model

## 7.1 General structure of the Information Model

1. The model in this document applies to the O-DU. Part of this model is common for the TN, but the specification of the
2. IM of the TN is out of scope of this document. TN considerations (IM and DM) in this document are provided as
3. informational examples.
4. This version of the document provides the CTI IM itself and a partial integration of the CTI IM into the broader O-DU
5. IM (see **Figure 7.6**). The full integration into the broader O-DU IM (choice of IOC as attachment point for CTIConfig
6. IOC) is subject to further study and optimization in a future version of the document. 9
7. The logical structure of the CTI IM at O-DU is determined by following facts;
8. ? When an O-DU supports the optional CTI functionality, it may have one or multiple CTI clients. Each O-DU
9. has a separate "CTI Function" IOC, that contains one or multiple CTI clients. Each CTI client has a separate
10. IOC "CTIClient" that shall be configured.
11. ? For each O-DU, the possible CTI server(s) that its CTI client(s) connect to shall be represented by a MOI
12. "CTIServer".
13. ? In one O-DU, each CTI client may have connectivity to multiple remote CTI servers, and each such CTI server

17 may have connectivity to multiple CTI clients in the O-DU (in other words a full mesh of CTI servers and CTI

1. clients is supported).
2. ? Each pair of CTI server and CTI client shall use a "CTIConnProfile" for the exchange of CTI messages
3. between the pair. A CTIConnProfile may be used by multiple server-client pairs.
4. ? CTISessions of a given CTI client are grouped per corresponding CTI Server into a "CTISessionGroup".
5. ? CTIFlow(s) are configured per CTI server and e be referred by "CTIFlowsInUse" in one or multiple CTI
6. sessions (of one or multiple CTI clients).
7. ? "CTISession" for each CTIClient and "CTIFlowsInUse" for each CTISession shall also be configured before
8. the CTI functionality starts to work.
9. ? There are network-wide definitions of CTI patterns. The same pattern has the same meaning for all CTI servers
10. and CTI clients. 28
11. Depending on its position in the YANG structure, a parameter may be unique for the whole node, or only within a
12. smaller context in the node allowing for multiple values to be configured inside the same node. Additionally, if a
13. parameter needs to be unique across the whole network, this consistency shall be assured by the SMO system to
14. configure the same value in all its managed nodes. 33

##### CTI Session ID:

1. The CTI Session ID shall be unique across the whole network. Recommendation is to use the MAC address of the O-
2. RU interface it is linked to.
3. The CTI session ID element is used as the cornerstone in the TN and O-DU YANG models. 38

##### CTI Session Group:

1. In each CTI Client the CTI sessions are regrouped per associated CTI Server. 41

##### O-RU ID or O-RU interface ID:

1. They are used locally in the O-DU, so in principle only unique within one O-DU. But it is more practical if it is unique
2. across the whole network.
3. They are not used in the TN.

1

##### Filter values linked to a CTI Flow ID:

1. From O-DU point of view a Flow ID may either represent the same filter values over the whole network (all TNs), or
2. the same ID could represent different filter values in different transport networks (eg if TNs in different transport
3. networks use different VLAN tagging). Therefore the CTI Flow ID is defined at per-CTI server level in the O-DU.
4. From the TN point of view a Flow ID may either represent the same filter values over the whole network (all O-DUs),
5. or the same ID could represent different filter values in different RAN networks, eg if the same ID would be re-used by
6. accident by two different RAN networks (sets of O-DUs). Therefore the CTI Flow ID is defined at per-CTI client level
7. in the TN.

10

##### Pattern characteristics linked to a CTI Pattern ID:

1. From O-DU point of view a Pattern ID shall represent the same pattern characteristics no matter on which TN an O-RU
2. is connected to. The Pattern ID may therefore be unique at O-DU node level. It is up to the RAN SMO to configure
3. consistent values across the different O-DUs.
4. From TN point of view a same Pattern ID could be re-used by accident by two different RAN networks (sets of O-DUs)
5. while representing different pattern characteristics. The CTI Pattern ID is therefore defined at a per-CTI client level in
6. the TN, allowing to make such differentiation.

18

##### L2, L3, L4 Parameters for CTI connectivity:

1. As mentioned in section 5.1, different sorts of connectivity may be used between pairs of clients and servers. The use of
2. L2, L3 and L4 parameters are part of the network-wide planning.
3. In the O-DU the parameters are kept in the CTI Client, CTI Server, and CTI connectivity profile. The CTI client keeps
4. its MAC address (in case of Ethernet connectivity). The CTI Server keeps its connectivity type, its MAC address (in
5. case of Ethernet connectivity) or its host (in case of UDP/IP connectivity). The CTI connectivity profile may be used
6. between one or multiple pairs of CTI Client and CTI Server and keeps its connectivity type, the VLAN tag in case of
7. Ethernet connectivity or the VLAN tag in case of UDP/IP connectivity, and the client host (in case of UDP/IP
8. connectivity).
9. A similar approach could be taken in the TN to group connectivity parameters per pair of CTI server and CTI client, see
10. Annex B for an example.
11. There is no distinction between message types (all messages between a CTI client and CTI server shall use the same
12. connectivity parameters).

32

##### CTI timers

1. It is assumed that there is no difference in timer values throughout the network, their values shall be unique. 35

##### UDP listening port

1. When UDP/IP is used for CTI transport between a CTI client and a CTI server, all messages between all CTI servers
2. and all CTI clients over all networks shall use the same destination port value. Without a well-known IANA port, a
3. single value shall be consistently configured in all TN and O-DU nodes.

40

##### CTI versions

1. Each TN could support one or more versions, each O-DU may support one or more versions. The supported versions
2. are a list structure in the O-DU and in the TN. Each CTI client shall know what versions are supported by a given CTI
3. server, and vice versa. Hence the CTI version to be used is defined per CTI client in the TN, per CTI server in the O-
4. DU.
5. Please note there is no direct version negociation mechanism in CTI between a CTI client and a CTI server, it is up to
6. the management to select the appropriate version to be used.

1

##### Ethertype and Protocol subtype values when CTI directly encapsulated in L2

1. The values for the O-RAN Ethertype and CTI Protocol Subtype are invariant over all networks. 4

## 7.2 Relationships and unicities in the context of encapsulation of

1. CTI flows between CTI servers and CTI clients
2. The attributes needed to determine the CTI encapsulation for the CTI sessions contained in one CTI session group are
3. included in the related CTI client, CTI server, and CTI connectivity profile IOCs.

![]({{site.baseurl}}/assets/images/ed8b8858e17a.jpg)9

10

##### Figure 7.1 : Connectivity example of single Connectivity profile per (client, server) pair

1. **(eg UDP/IP)**

![]({{site.baseurl}}/assets/images/1d254684309d.jpg)13

14

##### Figure 7.2 : Connectivity example of multiple (client, server) pairs in single Connectivity profile

1. **(eg Ethernet with 1 VLAN per TN)**

17

![]({{site.baseurl}}/assets/images/ea8efc051c79.jpg)1

##### Figure 7.3 : Connectivity example of multiple (client, server) pairs in single Connectivity profile

* 1. **(eg Ethernet for some servers, UDP/IP for other servers)**

![]({{site.baseurl}}/assets/images/e95aabf402e7.jpg)4

5

##### Figure 7.4 : Connectivity example of multiple (client, server) pairs in single Connectivity profile

1. **(eg Ethernet with same VLAN for all TNs)**

8

## 7.3 Relationships and unicities in the context of CTI sessions, CTI

1. flows, CTI Patterns
2. The attributes needed to determine the identification fields in the CTI report (session ID, flow ID and pattern ID) for a
3. given session are included in the related CTI session, CTI server, and CTI pattern IOCs.
4. A CTI pattern may be included in CTI messages associated to any CTI flow of any CTI session without the need for
5. explicit configuration per CTI flow or CTI session. This CTI message field is assumed to be generated by the CTI client
6. on the fly just like other dynamic variable fields (bandwidth, time, etc.). Therefore the CTI session IOC is not
7. represented as a pointer in other IOCs. 17

![]({{site.baseurl}}/assets/images/87fcb7537f8b.jpg)1

##### 2 Figure 7.5 : example with multiple CTI sessions, CTI flows, CTI Patterns

3

## 7.4 CTI IM for O-DU

5

### 7.4.1 Imported and associated information

##### Table 7.1: imported and associated information

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Label reference** | **Local label** |
| 3GPP TS 28.622 , IOC, ManagedElement | ManagedElement |
| 3GPP TS 28.622 , IOC, Top | Top |

</div>

9

### 7.4.2 Relationships at O-DU CTI Client

11

@startuml

Class ManagedElement <<InformationObjectClass>> Class GNBDUFunction <<InformationObjectClass>> Class CTIFunction <<InformationObjectClass>> Class CTIConfig <<DataType>>

Class CTIClient <<InformationObjectClass>> Class CTIServer <<DataType>>

Class CTIFlow <<DataType>>

Class CTIConnProfile <<DataType>> Class CTISessionGroup <<DataType>> Class CTISession <<DataType>> Class CTIFlowsInUse <<DataType>> Class CTIPattern <<DataType>> Class L2Filter <<DataType>>

Class L3and4Filter <<DataType>>

Class CTIClientServerStatus <<DataType>>

ManagedElement \*-- "\*" GNBDUFunction: <<names>> GNBDUFunction \*-- "0..\*" CTIFunction: <<names>> CTIFunction \*-- "0..\*" CTIClient: <<names>> CTIFunction \*--> "0..\*" CTIPattern

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

1

CTIFunction \*--> "0..\*" CTIConnProfile CTIFunction \*--> "0..\*" CTIServer

CTIClient \*--> "0..\*" CTISessionGroup CTIClient \*--> "0..\*" CTIConfig

CTIClient \*--> "0..\*" CTIClientServerStatus CTIClientServerStatus --> "0..\*" CTIServer CTIServer \*--> "0..\*" CTIFlow

CTIFlow \*--> "0..\*" L2Filter CTIFlow \*--> "0..\*" L3and4Filter

CTISessionGroup \*--> "0..\*" CTISession CTISessionGroup "0..\*" --> "1" CTIServer CTISessionGroup "0..\*" --> "1" CTIConnProfile

CTISession \*--> "0..\*" CTIFlowsInUse CTIFlowsInUse "0..\*" --> "1" CTIFlow @enduml

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

20

21

22

23

24

25

![]({{site.baseurl}}/assets/images/b45b9ca8cbbd.jpg)1

##### 2 Figure 7.6 : Relationships in CTI IM

3

### 7.4.3 Inheritance

3

@startuml

Abstract class TOP

/' general class '/

Class CTIFunction <<InformationObjectClass >> Class CTIClient <<InformationObjectClass >>

<div class="table-wrapper" markdown="block">

TOP<|-- CTIFunction TOP<|-- CTIClient

</div>

@enduml

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

![]({{site.baseurl}}/assets/images/632671de0032.jpg)16

1. **Figure 7.7 : Inheritance in CTI IM**

### 7.4.4 Class and Type definitions

19

#### 7.4.4.1 CTIFunction <<InformationObjectClass>>

1. This IOC represents the root level of CTI client configuration.
2. Rules for configuration:
3. Each O-DU GNBDUFunction that supports CTI has at least one CTIFunction instance. 24

##### 25 Table 7.2: CTIFunction IOC

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **Attribute name** | **Support Qualifier** | **isReadable** | **isWritable** | **isInvariant** | **isNotifyable** |
| ctiActivateOnOdu | M | T | T | F | T |
| ctiPattern (DT) | M | T | T | F | T |
| ctiServer (DT) | M | T | T | F | T |
| ctiConnProfile (DT) | M | T | T | F | T |

</div>

26

#### 7.4.4.2 CTIClient <<InformationObjectClass>>

1. This IOC represents per-CTI client-wide characteristics (one O-DU may have multiple CTI clients) valid for all its CTI
2. sessions.

30

1. Rules for configuration:
2. One CTI client could have different connectivity types to different CTI servers.
   1. - Whenever the CTI client has at least one Ethernet connectivity with some CTI server, the CTI client MAC
   2. address shall be configured, otherwise the client can't be linked to a physical interface on the O-DU and the
   3. CTI connectivity wouldn't not work.
   4. - If all CTI connectivities of the CTI client are based on UDP/IP, it is assumed the client hostname (see
   5. "CTIconnProfile" DT) shall be sufficient to deduce the physical interface on the O-DU, and the CTI client
   6. MAC address does not need to be configured.
   7. - One CTI client may communicate to multiple CTI Servers. For each [CTI client, CTI server] pair it is
   8. independently possible to activate or deactivate the exchange of CTI messages. 9

##### 10 Table 7.3: CTIClient IOC

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **Attribute name** | **Support Qualifier** | **isReadable** | **isWritable** | **isInvariant** | **isNotifyable** |
| ctiClientInfo | M | T | T | F | T |
| ctiClientMacAddr | M | T | T | F | T |
| ctiClientServerStatus (DT) | M | T | T | F | T |
| ctiConfig (DT) | M | T | T | F | T |
| ctiSessionGroup (DT) | M | T | T | F | T |

</div>

12

#### 7.4.4.3 CTIClientServerStatus <<DataType>>

1. This DT groups attributes that describe the status of the exchange of CTI messages between a given CTI Client and a
2. given CTI Server.
3. Rules for configuration:
4. Each CTIClientServerStatus instance describes one pair of CTI Client - CTI Server, hence refers to only one CTI
5. Server. There shall be one instance for each Server that this Client communicates with.
6. Monitoring:
7. The ctiClientServerConnStatus reflects the status of the CTI keep-alive exchange between the client and a given server
8. and is read-only. "True" signifies that the keepalives are received as expected from the given server. "False" signifies
9. that keepalives from the given server have been not been received for longer than the time out duration (ctiTo). 23

##### 24 Table 7.4: CTIClientServerStatus DT

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **Attribute name** | **Support Qualifier** | **isReadable** | **isWritable** | **isInvariant** | **isNotifyable** |
| ctiClientServerActivate | M | T | T | F | T |
| ctiClientServerConnStatus | M | T | F | F | T |
| ctiServerRef | M | T | T | F | T |

</div>

25

#### 26 7.4.4.4 CTIConfig <<DataType>>

27

28 This DT groups generic CTI client configuration attributes. 29

1. Rules for configuration:
2. At least one of attributes "subtype" (if CTI is transported over Ethernet) and "UDP port" (if CTI is transported over
3. UDP/IP over Ethernet) shall be configured:
4. \* subtype shall be configured if there is any Layer 2 CTI connectivity of the considered CTI client to some CTI server.
5. If there is no such Layer 2 CTI connectivity it does not need to be configured.
6. \* UDP port shall be configured if there is any UDP/IP CTI connectivity of the considered CTI client to some CTI
7. server. If there is no such UDP/IP CTI connectivity it does not need to be configured.
8. Both shall be configured when different CTI servers use different encapsulations. 6

##### 7 Table 7.5: CTIConfig DT

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **Attribute name** | **Support Qualifier** | **isReadable** | **isWritable** | **isInvariant** | **isNotifyable** |
| ctiReportRateCategory | M | T | F | F | T |
| ctiMessageTimingPerfor mance | M | T | F | F | T |
| supportedCtiVersions | M | T | F | F | T |
| minNotificationAdvance Time | O | T | F | F | T |
| ctiKa | M | T | T | F | T |
| ctiTo | M | T | T | F | T |
| protocolSubtype | M | T | T | F | T |
| ctiListeningUdpPort | M | T | T | F | T |

</div>

8

#### 7.4.4.5 CTISessionGroup <<DataType>>

* 1. This DT regroups all (one or multiple) CTI sessions of the parent CTI Client per corresponding CTI Server (in one TN).
  2. In other words there is one CTI Session group per [CTI client, CTI server] pair. See figures 1,2A,2B,3. 12

1. Rules for configuration:
2. Each CTISessionGroup refers to one CTIServer and to one CTIConnProfile. One CTIConnProfile shall be referred
3. from multiple CTISessionGroups.
4. During configuration, when adding a CTI session to a CTI session group it shall be verified that the CTI session
5. pertains to the CTI server associated with the CTI session group.
6. During configuration, connection type of CTIServer and CTIConnProfile that are referred to by the CTISessionGroup
7. shall be the same (see configuration rule at CTIConnProfile). 20

##### 21 Table 7.6: CTISessionGroup DT

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **Attribute name** | **Support Qualifier** | **isReadable** | **isWritable** | **isInvariant** | **isNotifyable** |
| ctiServerRef | M | T | T | F | T |
| ctiConnProfileRef | M | T | T | F | T |
| ctiSession (DT) | M | T | T | F | T |

</div>

23

#### 7.4.4.6 CTISession <<DataType>>

25

1. This DT represents per-CTI session-specific characteristics (a session runs between a given CTI client and a given CTI
2. server).

28

29 Rules for configuration:

1. The CTI session ID used in the CTI messages e be configurable while being globally unique in the network. The
2. recommended type for identifying the CTIsession by its ID is the MAC address of the corresponding O-RU interface.
3. The CTI session ID may either represent an O-RU or an O-RU interface. The corresponding attribute (O-RU ID or O-
4. RU interface ID) shall be configured. The unicity of CTI session ID per O-RU ID or per O-RU interface ID shall be
5. checked in the O-DU (across the O-DU).
6. The CTI session ID attribute is linked to an O-RU (or O-RU interface) and should be Invariant (any new O-RU should
7. be configured as a new instance of the DT, not as a change of an existing instance). The enforcement of the Invariant
8. nature shall be provided by the application level. 9

##### 10 Table 7.7: CTISession DT

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **Attribute name** | **Support Qualifier** | **isReadable** | **isWritable** | **isInvariant** | **isNotifyable** |
| ctiSessionId | M | T | T | T | T |
| oRuId | M | T | T | F | T |
| oRuInterfaceId | M | T | T | F | T |
| ctiNominalReportMsgInt  erval | M | T | T | F | T |
| ctiReportMessagingUseO  fType1Ext | M | T | T | F | T |
| ctiFlowsInUse (DT) | M | T | T | F | T |

</div>

11

#### 7.4.4.7 CTIServer <<DataType>>

13

14 This DT represents per-CTI server characteristics (one O-DU may interact with multiple CTI servers on multiple TNs) . 15

1. Rules for configuration:
2. Server information may be chosen freely by operator (string).
3. If connectivity type to this CTI Server is set to "Ethernet", then the CTI Server MAC address shall be configured.
4. If connectivity type is set to "UDPIP", then CTI Server host shall be configured. In that case the MAC address of the
5. next hop should be obtained by ARP and there is no need to configure the CTI Server MAC address.
6. The DOCSIS Server Info is not currently defined and only mentioned as optional placeholder. It is an optional attribute. 22

23 The CTI Server MAC address attribute is linked to an O-DU instance and should be Invariant (any new CTI Server

24 should be configured as a new instance of the DT, not as a change of an existing instance). The enforcement of the

25 Invariant nature shall be provided by the application level. 26

##### 27 Table 7.8: CTIServer DT

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **Attribute name** | **Support Qualifier** | **isReadable** | **isWritable** | **isInvariant** | **isNotifyable** |
| ctiServerId | M | T | T | F | T |
| ctiServerInfo | M | T | T | F | T |
| connectivityType | M | T | T | F | T |
| ctiServerMacAddr | M | T | T | T | T |
| ctiServerHost | M | T | T | F | T |
| ctiEnable | M | T | T | F | T |
| supportedCtiVersions | M | T | T | F | T |
| ctiReportMessagingUseO  fType2 | M | T | T | F | T |
| ponServerInfoUseNotifi  cationsFromThisServer | M | T | T | F | T |
| docsisServerInfo | O | T | T | F | T |
| ctiFlow (DT) | M | T | T | F | T |

</div>

2

#### 3 7.4.4.8 CTIFlow <<DataType>>

4

1. This DT represents per-CTI flow characteristics as defined on a given CTI server, and shall be used by one or multiple
2. CTI sessions with that CTI server. 7
3. Rules for configuration:
4. If filter type is set to "Ethernet", then the configuration of Layer2Filter shall be used. If this configuration is missing,
5. the function does not work (the CTI client does not know which Flow ID to use in the CTI messages for a given
6. fronthaul flow with these Layer 2 characteristics).
7. If filter type is set to "UDPIP", then the configuration of Layer3and4Filter shall be used. If this configuration is
8. missing, the function does not work (the CTI client does not know which Flow ID to use in the CTI messages for a
9. given fronthaul flow with these Layer 3 / Layer 4 characteristics). 15

##### 16 Table 7.9: CTIFlow DT

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **Attribute name** | **Support Qualifier** | **isReadable** | **isWritable** | **isInvariant** | **isNotifyable** |
| ctiFlowId | M | T | T | F | T |
| filterType | M | T | T | F | T |
| layer2Filter (DT) | M | T | T | F | T |
| layer3and4Filter (DT) | M | T | T | F | T |

</div>

18

#### 7.4.4.9 Layer2Filter <<DataType>>

1. This DT represents a set of Ethernet-level traffic filter parameters in a given CTI server, to be associated to a CTI flow. 21

22 Rules for configuration:

23 A Layer 2 Filter consists of a set of one or more attributes. Each attribute that is configured is considered in the filter. At

24 least one attribute e be configured. 25

##### 26 Table 7.10: Layer2Filter DT

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **Attribute name** | **Support Qualifier** | **isReadable** | **isWritable** | **isInvariant** | **isNotifyable** |
| source-mac | M | T | T | F | T |
| destination-mac | M | T | T | F | T |
| ethertype | M | T | T | F | T |
| pcp | M | T | T | F | T |
| vlan-id | M | T | T | F | T |

</div>

2

3

#### 4 7.4.4.10 Layer3and4Filter <<DataType>>

5 This DT represents a set of UDP/TCP and IP-level traffic filter parameters in a given CTI server, to be associated to a

6 CTI flow.

7

1. Rules for configuration:
2. A Layer 3 and Layer 4 Filter consists of a set of one or more attributes. Each attribute that is configured is considered in
3. the filter. At least one attribute e be configured. 11

##### 12 Table 7.11: Layer3and4Filter DT

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **Attribute name** | **Support Qualifier** | **isReadable** | **isWritable** | **isInvariant** | **isNotifyable** |
| source-address | M | T | T | F | T |
| source-prefix | M | T | T | F | T |
| destination-address | M | T | T | F | T |
| destination-prefix | M | T | T | F | T |
| dscp | M | T | T | F | T |
| source-port-start | M | T | T | F | T |
| source-port-end | M | T | T | F | T |
| desintation-port-start | M | T | T | F | T |
| destination-port-end | M | T | T | F | T |
| ipv4-protocol | M | T | T | F | T |
| ipv6-traffic-class | M | T | T | F | T |
| ipv6-flow | M | T | T | F | T |
| ipv6-next-header | M | T | T | F | T |

</div>

13

#### 7.4.4.11 CTIFlowsInUse <<DataType>>

1. This DT represents the characteristics of each CTI flow that is used in a given CTI session (between a given CTI client
2. and a given CTI server). 17
3. Rules for configuration:
4. If flow differentiation is used inside a given CTI session (each flow is associated with a given L2 or L3/L4 filter), each
5. flow in use needs configuration of the associated attributes listed below, including a reference to the corresponding CTI
6. flow (ctiFlowRef).
7. If there is no differentiation between flows in a given CTI session (and hence no filtering), there is only one flow and all
8. corresponding CTI messages shall carry "0x00" as the flow ID value. There is still a need to configure the associated
9. attributes listed below, except that there is no need to reference a specific CTI flow (no need to configure ctiFlowRef). 25

##### 1 Table 7.12: CTIFlowsInUse DT

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **Attribute name** | **Support Qualifier** | **isReadable** | **isWritable** | **isInvariant** | **isNotifyable** |
| timeIntervalPerReport | M | T | T | F | T |
| maxT34Latency | M | T | T | F | T |
| minLoad | M | T | T | F | T |
| extraLoadCplane | M | T | T | F | T |
| ctiFlowRef | M | T | T | F | T |

</div>

3

#### 7.4.4.12 CTIConnProfile <<DataType>>

1. This DT represents a group of encapsulation parameters for exchange of CTI messages between a given CTI client on
2. the O-DU and a given CTI server on a TN.
3. All CTI messages between a given CTI client and a given CTI server shall always use the same encapsulation values.
4. But a given CTI client may use different encapsulations for different CTI servers. This is why the VLAN tag and client
5. local IP addr are defined at level of CTIConnProfile DT and not at level of CTIclient IOC. The MAC address of the CTI
6. client on the other hand is assumed to be unique for all its connectivities, and is defined at the level of CTIclient IOC. 11
7. Rules for configuration:
8. The connectivity type of a given CTIConnProfile instance shall match the connectivity type of the CTI server to which
9. the CTI session group using the CTIConnProfile is associated with. This requires a check during configuration of the
10. CTISessionGroup;
11. Step 1; CTIConnProfile is created
12. Setp 2; CTI Session Group is created and refers to a given CTI server and to the CTIConnProfile. Validation is needed
13. to ensure that the connectivity type of the CTIConnProfile matches the connectivity type of the CTI Server referred by
14. the CTI Session Group. If it doesn't match, this CTI Session Group cannot be created. 20

21 If connectivity type is set to "Ethernet", then the connectivity shall use VLAN Tag for L2. If that attribute is not

22 configured, the connectivity does not work.

23 If connectivity type is set to "UDPIP", then the connectivity shall use VLAN Tag for L3 and L4, and CTI client host. If

24 these attributes are not configured, the connectivity does not work. 25

##### 26 Table 7.13: CTIConnProfile DT

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **Attribute name** | **Support Qualifier** | **isReadable** | **isWritable** | **isInvariant** | **isNotifyable** |
| ctiConnProfileId | M | T | T | F | T |
| connectivityType | M | T | T | F | T |
| vlanTagForL2 | M | T | T | F | T |
| vlanTagForL3and4 | M | T | T | F | T |
| ctiClientHost | M | T | T | F | T |

</div>

28

#### 29 7.4.4.13 CTIPattern <<DataType>>

30 This DT represents the characteristics of a given pattern ID. They are valid O-DU-system wide. 31

32 Rules for configuration:

1. The pattern ID is an integer number (up to 32 bits). If the pattern reflects a well-known TDD symbol sequence, it is
2. recommended to include the 3GPP slot format number in the ID (see 3GPP TS38.213 Table 11.1.1-1).
3. The same Pattern ID shall represent the same content in any CTI client of any O-DU in the network.
4. In case there is no use of TDD pattern information, the CTI messages shall carry the Pattern ID value 0 and there is no
5. need to configure the CTIPattern class. 6

##### 7 Table 7.14: CTIPattern DT

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **Attribute name** | **Support Qualifier** | **isReadable** | **isWritable** | **isInvariant** | **isNotifyable** |
| patternId | M | T | T | F | T |
| patternDuration | M | T | T | F | T |
| patternEvents | M | T | T | F | T |
| patternEventMultipler | M | T | T | F | T |
| patternEventBytes | M | T | T | F | T |
| patternNormalization | M | T | T | F | T |

</div>

9

10

### 7.4.5 Attribute definitions

12

13

##### Table 7.15: Attributes definition

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **Attribute Name** | **Documentation and Values**  **(format & unit, allowed values, reserved values)** | **Type and Properties** | | |
| **CTIFunction IOC** |  | At least 1 instance GNBDUFunction | per | O-DU |
| ctiActivateOnOdu | Activation of CTI functionality on this O- DU  Unit: none  Allowed values: N/A Reserved values : N/A | Type: Boolean Multplicity: 1 isOrdered: N/A isUnique: N/A defaultValue: N/A isNullable**:** False | | |
| **CTIconfig DT** |  | Only 1 instance per CTI Client | | |
| ctiReportRateCategory | Capability of O-DU to send CTI messages (Category of CTI\_MIN).  Unit: none | Type: Integer (Uint8) Multiplicity: 1 isOrdered: N/A isUnique: N/A defaultValue: N/A isNullable**:** False | | |
|  | Allowed values: 1..5 |  | | |
|  | Reserved values : N/A |  | | |
| ctiMessageTimingPerfo rmance | Capability of O-DU to quickly send CTI messages.  Unit: 20 us | Type: Integer (uint8) Multiplicity: 1 isOrdered: N/A isUnique: N/A defaultValue: N/A isNullable: False | | |
|  | Allowed values: 1..255 |  | | |
|  | Reserved values : N/A |  | | |
| supportedCtiVersions | Supported CTI versions on this O-DU. Starts with value 1. | Type: Integer (uint8) Multiplicity: 1..15 isOrdered: True  isUnique: True | | |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
|  | Unit: none  Allowed Values: 1 .. 15  Reserved values : 0, 16..255 | defaultValue: N/A isNullable: False |
| minNotificationAdvance Time | PON ranging min notification advance time. If PON ranging is used by one or many TNs, this parameter indicates how soon all CTI clients of this O-DU need that information.  Unit: ms  Allowed Values: 1 .. 65 535 Reserved values : N/A | Type : Integer (Uint16) Multiplicity: 0..1 isOrdered: N/A isUnique: N/A defaultValue: N/A isNullable: False |
| protocolSubtype | 2-Byte field when L2 encapsulation of CTI messages  Unit: none  Allowed values: 0x1  Reserved Values: (not defined by WG4 yet) | Type : Integer (Uint8) Multiplicity: 0..1 isOrdered: N/A isUnique: N/A defaultValue: 0x1 isNullable: False |
| ctiListeningUdpPort | Chosen unique value for all nodes in the network.  If a well-known port gets assigned by IANA to CTI, that value shall be used.  If there is no UDP/IP communication for CTI on this O-DU, this value does not need to be configured. | Type : Integer (Uint16) Multiplicity: 0..1 isOrdered: N/A isUnique: N/A defaultValue: N/A isNullable: False |
|  | Unit: none  Allowed values : any unassigned port  Reserved Values: already assigned port values by IANA. |  |
| ctiKa | This value (Keep Alive timer) is the maximum time interval between consecutive CTI-Keep-Alive messages between the CTI client and the CTI server. | Type : Integer (Uint8) Multiplicity: 1 isOrdered: N/A isUnique: N/A defaultValue: N/A isNullable: False |
|  | Unit : 0,1 s  Allowed values : 1..255  (recommended : 30) Reserved Values :N/A |  |
| ctiTo | This value (Time Out timer) is the timeout value that a CTI-Beacon-Ack message needs to be received by the CTI client (O-DU) or the CTI server (transport system) before that respective system suspends CTI operations and returns to its CTI configuration state.  Shall be > N x CTI Keep-alive value, with N>=2 | Type : Integer (Uint8) Multiplicity: 1 isOrdered: N/A isUnique: N/A defaultValue: N/A isNullable: False |
|  | Unit : 0,1 s  Allowed values : 1..255  (recommended: 100) Reserved Values : N/A |  |
| **CTIClient IOC** |  | Multiple instances possible per O- DU |
| ctiClientInfo | Information about this server (free format)  Unit: none | Type: String Multiplicity: 1 isOrdered: N/A isUnique: N/A defaultValue: N/A  isNullable: False |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
|  | Allowed Values: N/A Reserved Values: N/A |  |
| ctiClientMacAddr | MAC address of CTI client  Unit : none  Allowed values : see RFC 6991 [16] Reserved Values : N/A | Type : string with pattern constraints as per RFC 6991 [16]  multiplicity: 0..1 isOrdered: N/A isUnique: N/A defaultValue: N/A isNullable: False |
| **CTIClientServerStatus** |  | Multiple instances possible per CTIClient |
| ctiServerRef | CTI server ID being referred to  Unit: N/A  Allowed Values: existing CTI Server ID Reserved Values: N/A | Type: string Multiplicity: 0 .. \* isOrdered: N/A isUnique: N/A defaultValue: N/A isNullable: False |
| ctiClientServerActivate | Activate CTI connectivity between client/server pair  Unit : none  Allowed values : true, false Reserved Values :N/A | Type : Boolean multiplicity: 1 isOrdered: N/A isUnique: N/A defaultValue: N/A isNullable: False |
| ctiClientServerConnStat us | Reflects CTI connectivity status of keep-alives between client/server pair  Unit : none  Allowed values : true, false Reserved Values :N/A | Type : Boolean multiplicity: 1 isOrdered: N/A isUnique: N/A defaultValue: N/A isNullable: False |
| **CTISessionGroup DT** |  | Multiple instances possible per CTI client |
| ctiServerRef | CTI server ID being referred to  Unit: N/A  Allowed Values: existing CTI Server ID Reserved Values: N/A | Type: string Multiplicity: 1 isOrdered: N/A isUnique: N/A defaultValue: N/A isNullable: False |
| ctiConnProfileRef | CTI connectivity profile ID being referred to  Unit: N/A  Allowed Values: existing CTI connectivity profile ID Reserved Values: N/A | Type: string Multiplicity: 1 isOrdered: N/A isUnique: N/A defaultValue: N/A isNullable: False |
| **CTISession DT** |  | Multiple instances possible per CTI Session Group |
| ctiSessionId | Unique reference to TU or TU interface  Unit : none  Allowed values: N/A Reserved Values: N/A | Type: string following MAC address format  Multiplicity: 1 isOrdered: N/A isUnique: N/A defaultValue: N/A isNullable: False |
| oRuId | Unique reference to O-RU linked to CTI session ID  Unit : none  Allowed values: N/A  Reserved values: N/A | Type: string following format: mfg- name\_model-name\_serial-num  Multiplicity: 0..1 isOrdered: N/A  isUnique: N/A defaultValue: N/A isNullable: False |
| oRuInterfaceId | Unique reference to O-RU interface linked to CTI session ID | Type: string following format: mfg- name\_model-name\_serial- num\_macaddr |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
|  | Unit : none  Allowed values: N/A  Reserved values: N/A | Multiplicity: 0..1 isOrdered: N/A isUnique: N/A defaultValue: N/A isNullable: False |
| ctiNominalReportMsgInt erval | This value is the minimum average interval that is set for a CTI-Report message to be sent from the CTI client to the CTI server. CTI\_NOM is selected per CTI Session ID based on mobile slot length, TN CTI rate category, O-DU rate category.  CTI-Report messages may be sent less often. Because of queuing in the system, this value should be interpreted as a rate and not as a spacing between packets. Typical values may be 1-2 ms for LTE, or lower for 5G.  Unit: 0,25 ms  Allowed Values: 1..20  Reserved Values: 21..255 | Type: Integer (Uint8)  Multiplicity: 1 isOrdered: N/A isUnique: N/A defaultValue: N/A isNullable: False |
| ctiReportMessagingUse OfType1Ext | Indicates whether to add extension Type 1 for CTI reports of this CTI session  Unit: none  Allowed Values: True, False Reserved Values: N/A | Type: Boolean Multiplicity: 1 isOrdered: N/A isUnique: N/A defaultValue: N/A isNullable: False |
| **CTIServer DT** |  | Multiple instances possible per O- DU |
| ctiServerId | Id of the given server  Unit: none  Allowed Values: N/A Reserved Values: N/A | Type: string Multiplicity: 1 isOrdered: N/A isUnique: N/A defaultValue: N/A  isNullable: False |
| ctiServerInfo | Information about this server (e.g. operator, type, .... Free format)  Unit: none  Allowed Values: N/A Reserved Values: N/A | Type: String Multiplicity: 0..1 isOrdered: N/A isUnique: N/A defaultValue: N/A isNullable: False |
| connectivityType | Indicates type of connectivity between any CTI client and this CTI  server (Ethernet or UDP/IP/Ethernet)  Unit : none  Allowed values : Ethernet, UDPIP Reserved Values : N/A | Type : ENUM multiplicity: 1 isOrdered: N/A isUnique: N/A defaultValue: N/A isNullable: False |
| ctiServerMacAddr | (if connectivityType = Ethernet) MAC address of CTI server (to be used in CTI messages in L2 connectivity)  Unit: none  Allowed Values: all valid MAC addr | Type: String with pattern constraints  multiplicity: 0..1 isOrdered: N/A isUnique: N/A defaultValue: N/A isNullable: False |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
|  | Reserved Values: N/A |  |
| ctiServerHost | (if connectivityType = UDPIP) CTI server described as IP host (IPv4, IPv6 or FQDN to be used for DNS)  Unit: none  Allowed Values: all valid hosts Reserved values: N/A | Type: string with pattern constraints  multiplicity: 0..1 isOrdered: N/A isUnique: N/A defaultValue: N/A isNullable: False |
| ctiEnable | Indicates whether CTI communication is to be enabled to this CTI server  Unit: none  Allowed Values: True, false Reserved Values: N/A | Type: Boolean multiplicity: 1 isOrdered: N/A isUnique: N/A defaultValue: N/A isNullable: False |
| supportedCtiVersions | Supported CTI versions on this CTI Server  Unit: none  Allowed Values: 1..15  Reserved Values: 0, 16..255 | Type: Integer (Uint8) Multiplicity: 1..15 isOrdered: True isUnique: True defaultValue: N/A isNullable: False |
| ctiReportMessagingUse OfType2 | Indicates whether to add extension Type 1 for CTI messages with this CTI server  Unit: none  Allowed Values: True, False Reserved Values: N/A | Type: Boolean multiplicity: 1 isOrdered: N/A isUnique: N/A defaultValue: N/A isNullable: False |
| ponServerInfoUseNotifi cationsFromThisServer | Indicates whether O-DU does interpret PON notifications from this CTI server. If not, such received messages may be dropped.  Only needs to be configured for CTI servers inside PON-based TNs  Unit: none  Allowed Values: True, False Reserved Values: N/A | Type: Boolean multiplicity: 0..1 isOrdered: N/A isUnique: N/A defaultValue: N/A isNullable: False |
| docsisServerInfo | Only needs to be configured for CTI servers inside DOCSIS-based TNs | Type: String multiplicity: 0..1 isOrdered: N/A isUnique: N/A defaultValue: N/A  isNullable: False |
| **CTIFlow DT** |  | Multiple instances possible per CTI session |
| ctiFlowId | CTI Flow IDs correspond to a set of matching frame and packet classifiers, the matching transport ID (DOCSIS Service Flow ID or PON T-CONT) when taken together with CTI session ID, as well as the mobile flow identifier.  Unit: none  Allowed Values: 0 .. 0xEF | Type: Integer (Uint8) multiplicity: 1 isOrdered: N/A isUnique: N/A defaultValue: N/A isNullable: False |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
|  | Reserved Values: 0xF0..0xFF |  |
| filterType | Indicates type of filter between a given CTI client and a given CTI  server (Ethernet or UDP/IP/Ethernet)  Unit : none  Allowed Values : Ethernet, UDPIP Reserved Values: N/A | Type : ENUM multiplicity: 1 isOrdered: N/A isUnique: N/A defaultValue: N/A isNullable: False |
| layer2Filter | (if filterType=Ethernet)  Unit: N/A  Allowed Values: N/A Reserved Values: N/A | Type: Layer2Filter (DT) Multiplicity: 0..1 |
| layer3and4Filter | (if filterType=UDPIP)  Unit: N/A  Allowed Values: N/A Reserved Values: N/A | Type: Layer3and4Filter (DT) Multiplicity: 0..1 |
| source-mac | Layer 2 filter parameter, from the perspective of upstream packets to TU ingress.  Unit: none  Allowed Values: all valid MAC addr Reserved Values: N/A | Type: String with pattern constraints  multiplicity: 0..1 isOrdered: N/A isUnique: N/A defaultValue: N/A isNullable: False |
| destination-mac | Layer 2 filter parameter, from the perspective of upstream packets to TU ingress.  Unit: none  Allowed Values: all valid MAC addr Reserved Values: N/A | Type: String with pattern constraints  multiplicity: 0..1 isOrdered: N/A  isUnique: True (per CTI flow) defaultValue: N/A  isNullable: False |
| ethertype | Layer 2 filter parameter, from the perspective of upstream packets to TU ingress.  Unit: none  Allowed Values: all valid ethertypes Reserved Values: N/A | Type: Integer (Uint16) multiplicity: 0..1 isOrdered: N/A isUnique: N/A defaultValue: N/A isNullable: False |
| pcp | Layer 2 filter parameter, from the perspective of upstream packets to TU ingress.  Unit: none  Allowed Values: range 0..7 Reserved Values: all others | Type: Integer (Uint8) multiplicity: 0..1 isOrdered: N/A isUnique: True defaultValue: N/A isNullable: False |
| vlan-id | Layer 2 filter parameter, from the perspective of upstream packets to TU ingress.  Unit: none | Type: Integer (Uint16) multiplicity: 0..1 isOrdered: N/A isUnique: N/A defaultValue: N/A isNullable: False |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
|  | Allowed Values: 1..4094  Reserved Values: 4095 |  |
| source-address | Layer 3 filter parameter, from the perspective of upstream packets to TU ingress.  Unit: none  Allowed Values: valid IP addr Reserved Values: N/A | Type: union string (IPv4) & string (IPv6) with pattern constraints multiplicity: 0..1  isOrdered: N/A isUnique: N/A defaultValue: N/A isNullable: False |
| source-prefix | Layer 3 filter parameter, from the perspective of upstream packets to TU ingress.  Unit: none  Allowed Values: valid IP addr Reserved Values: N/A | Type: union string (IPv4) & string (IPv6) with pattern constraints multiplicity: 0..1  isOrdered: N/A isUnique: N/A defaultValue: N/A isNullable: False |
| destination-address | Layer 3 filter parameter, from the perspective of upstream packets to TU ingress.  Unit: none  Allowed Values: valid IP addr Reserved Values: N/A | Type: union string (IPv4) & string (IPv6) with pattern constraints multiplicity: 0..1  isOrdered: N/A isUnique: N/A defaultValue: N/A isNullable: False |
| destination-prefix | Layer 3 filter parameter, from the perspective of upstream packets to TU ingress.  Unit: none  Allowed Values: valid IP addr Reserved Values: N/A | Type: union string (IPv4) & string (IPv6) with pattern constraints multiplicity: 0..1  isOrdered: N/A isUnique: N/A defaultValue: N/A isNullable: False |
| dscp | Layer 3 filter parameter, from the perspective of upstream packets to TU ingress.  Unit: none  Allowed Values: range 0..63 Reserved Values: N/A | Type: Integer (Uint8) Multiplicity: 0..1 isOrdered: N/A isUnique: N/A defaultValue: N/A isNullable: False |
| source-port-start | Layer 4 filter parameter, from the perspective of upstream packets to TU ingress.  Unit: none  Allowed Values: 0..65535 Reserved Values: N/A | Type: Integer (Uint16) multiplicity: 0..1 isOrdered: N/A isUnique: N/A defaultValue: N/A isNullable: False |
| source-port-end | Layer 4 filter parameter, from the perspective of upstream packets to TU ingress.  Unit: none  Allowed Values: 0..65535 Reserved Values: N/A | Type: Integer (Uint16) multiplicity: 0..1 isOrdered: N/A isUnique: N/A defaultValue: N/A isNullable: False |
| desintation-port-start | Layer 4 filter parameter, from the perspective of upstream packets to TU | Type: Integer (Uint16) multiplicity: 0..1  isOrdered: N/A |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
|  | ingress.  Unit: none  Allowed Values: 0..65535 Reserved Values: N/A | isUnique: N/A defaultValue: N/A isNullable: False |
| destination-port-end | Layer 4 filter parameter, from the perspective of upstream packets to TU ingress.  Unit: none  Allowed Values: 0..65535 Reserved Values: N/A | Type: Integer (Uint16) multiplicity: 0..1 isOrdered: N/A isUnique: N/A defaultValue: N/A isNullable: False |
| ipv4-protocol | Layer 3 filter parameter, from the perspective of upstream packets to TU ingress.  Unit: none Allowed Values:  Reserved Values: N/A | Type: Integer (Uint8) multiplicity: 0..1 isOrdered: N/A isUnique: N/A defaultValue: N/A isNullable: False |
| ipv6-traffic-class | Layer 3 filter parameter, from the perspective of upstream packets to TU ingress.  Unit: none Allowed Values:  Reserved Values: N/A | Type: Integer (Uint8) multiplicity: 0..1 isOrdered: N/A isUnique: N/A defaultValue: N/A isNullable: False |
| ipv6-flow | Layer 3 filter parameter, from the perspective of upstream packets to TU ingress.  Unit: none  Allowed Values: range 0..1 048 575 Reserved Values: N/A | Type: Integer (Uint32) multiplicity: 0..1 isOrdered: N/A isUnique: N/A defaultValue: N/A isNullable: False |
| ipv6-next-header | Layer 3 filter parameter, from the perspective of upstream packets to TU ingress.  Unit: none Allowed Values:  Reserved Values: N/A | Type: Integer (Uint8) multiplicity: 0..1 isOrdered: N/A isUnique: N/A defaultValue: N/A isNullable: False |
| **CTIFlowsInUse DT** |  | Multiple instances possible per CTI session |
| ctiFlowRef | CTI flow ID being referred to  Unit: none  Allowed Values: existing CTI Flow ID  Reserved Values: N/A | Type: Integer (Uint8) multiplicity: 0..1 isOrdered: N/A isUnique: N/A defaultValue: N/A isNullable: False |
| timeIntervalPerReport | Rate of reporting for given Flow ID in given CTI session ID. Max = CTI\_NOM of given CTI session ID | Type: Integer (Uint8) multiplicity: 1 isOrdered: N/A isUnique: N/A defaultValue: N/A  isNullable: False |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
|  | Unit: 0,25 ms  Allowed Values: CTI\_NOM or integer portion (e.g. 1/2,  1/4 , ...) of CTI\_NOM Reserved Values: N/A |  |
| maxT34Latency | The maximum latency provides a guideline on the latency bound expected for the CTI flow. The latency bound is defined as one-way and is referenced in O-DU between the O-RU and the O-DU (= T34max)  Unit: 5 us  Allowed Values: 1..65 535 Reserved Values: N/A | Type: Integer (Uint16) multiplicity: 1 isOrdered: N/A isUnique: N/A defaultValue: N/A isNullable: False |
| minLoad | Minimum value (equivalent #Bytes per reported time interval) to be used in the "Bytes requested" field for the CTI flow in use.  Unit: Mbit/s  Allowed Values: 0..255 Reserved Values: N/A | Type: Integer (Uint8) multiplicity: 0..1 isOrdered: N/A isUnique: N/A defaultValue: 0 isNullable: False |
| extraLoadCplane | Extra value (equivalent #Bytes per reported time interval) to be added to the load field for the CTI flow in use.  Unit: Mbit/s  Allowed Values: 0..255 Reserved Values: N/A | Type: Integer (Uint8) multiplicity: 0..1 isOrdered: N/A isUnique: N/A defaultValue: 0 isNullable: False |
| **CTIConnProfile DT** |  | Multiple instances possible per O- DU |
| ctiConnProfileId | Id of a given Connectivity Profile  Unit: N/A  Allowed Values: N/A Reserved Values: N/A | Type: String multiplicity: 1 isOrdered: N/A isUnique: N/A defaultValue: N/A  isNullable: False |
| connectivityType: identical to same attribute in CTIServer DT |  |  |
| vlanTagForL2 | (if connectivityType = Ethernet) (priority-tagged is not recommended)  Unit: None  Allowed Values: 1..4094  Reserved Values: 4095 | Type: ietf multiplicity: 0..1 isOrdered: N/A isUnique: N/A defaultValue: N/A isNullable: False |
| vlanTagForL3and4 | (if connectivityType = UDPIP)  Unit: none  Allowed Values: 0..4094 Reserved Values: N/A | Type: ietf multiplicity: 0..1 isOrdered: N/A isUnique: N/A defaultValue: N/A isNullable: False |
| ctiClientHost | (if connectivityType = UDPIP) | Type: inet:host multiplicity: 0..1  isOrdered: N/A isUnique: N/A |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
|  | Unit: none  Allowed Values: valid IP addresses Reserved Values: N/A | defaultValue: N/A isNullable: False |
| **CTIPattern DT** |  | Multiple instances possible per O- DU |
| patternId | Uniquely identifies a CTI pattern. The intended use is to describe the bytes per symbol for each symbol or group of symbols within a mobile slot.  Unit: none  Allowed Values: 0x000001 .. 0x00FFFFFF  Reserved Values: 0 (means no pattern info) | Type: Integer (Uint32) multiplicity: 1 isOrdered: N/A isUnique: N/A defaultValue: N/A isNullable: False |
| patternDuration | The length of a single mobile slot time, in units of 125 us  Unit: 125 us  Allowed Values: 1..255 Reserved Values: N/A | Type: Integer (Uint8)  multiplicity: 1 isOrdered: N/A isUnique: N/A defaultValue: N/A isNullable: False |
| patternEvents | This is the number of events per pattern. An event is typically a symbol or a group of symbols within a slot. For example, if a slot contained 14 symbols, there could be 14 events with each being one symbol or 7 events with each being 2 symbols.  Events are defined to be equally spaced within a duration time with the bytes being delivered at the end of the event.  Unit: none  Allowed Values: 1..255 Reserved Values: N/A | Type: Integer (Uint8) multiplicity: 1 isOrdered: N/A isUnique: N/A defaultValue: N/A isNullable: False |
| patternEventMultipler | Number of sequential events that have the same byte count. The multiplier variable and the byte count variable are used in pair to describe an event.  Unit: none  Allowed Values: 1..255 Reserved Values: N/A | Type: Integer (Uint8) multiplicity: 1..14 isOrdered: N/A isUnique: N/A defaultValue: N/A isNullable: False |
| patternEventBytes | Number of bytes per event. A byte count is allowed to be 0 bytes. A special value of 0xFFFF indicates a residual average, where:  Residual average =  [ CTI byte count - sum(explicit bytes described) ] / sum(events without explicit bytes described)  Unit: none  Allowed Values: 0 .. 0xFFFF Reserved Values: N/A | Type: Integer (Uint16) multiplicity: 1..14 isOrdered: N/A isUnique: N/A defaultValue: N/A isNullable: False |
| patternNormalization | Indicates whether CTI Pattern Event | Type: Boolean |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
|  | Bytes are normalized or not normalized to a fixed value for the sum of all Event Bytes per report | multiplicity: 1 isOrdered: N/A isUnique: N/A defaultValue: N/A isNullable: False |
| Unit: none  Allowed Values: True, False Reserved Values: N/A |  |

</div>

1

2

# 3 8 CTI YANG Data Model

1. This document specifies the CTI YANG Data Model to be used in the O-DU
2. This document also proposes a CTI YANG Data Model to be used in a TN from a generic perspective, with a specific
3. declination for PON OLT and DOCSIS CMTS. The TN YANG Data Model is provided here as information for further
4. distribution towards the corresponding external bodies for their consideration (Broadband Forum for PON, Cable Labs
5. for DOCSIS).

9

1. The YANG Data Model follows a modular approach.
2. Structures that are used in the O-DU and that are also proposed for consideration at the TN are defined in module o-
3. ran-cti-common.
4. The specific structures for the O-DU are defined in module o-ran-o1-ctiOdu. Together, the modules o-ran-cti-
5. common and o-ran-o1-ctiOdu specify CTI for the O-DU side and fit into the wider O-DU YANG model.
6. The specific structures for the TN are defined in module o-ran-cti-tn-generic, which contains no TN technology
7. specific structures. Technology-specific structures are defined in the separate modules o-ran-cti-pon and o-ran-
8. cti-tn-docsis respectively. A TN then has to combine o-ran-cti-common, o-ran-cti-tn-generic and one
9. ![]({{site.baseurl}}/assets/images/b8e6194d4d13.jpg)tn-technology module for a full description of CTI YANG, which in turn has to fit into the wider TN YANG model. 19

20

##### 21 Figure 8.1 : CTI YANG modules and relationships

22

## 8.1 CTI YANG Data Model Related to O-DU

### 8.1.1 Overview

1. The o-ran-o1-ctiOdu module imports the o-ran-cti-common module and uses its structures.
2. The o-ran-o1-ctiOdu module only describes the CTI aspect of the O-DU as stand-alone module (together with o-
3. ran-cti-common). It shall be imported in the wider O-DU YANG structure for those O-DUs that support CTI. For O-
4. DUs that do not support CTI there is no change in their YANG structure. 7

### 8.1.2 o-ran-cti-common

1. The o-ran-cti-common module defines common structures for the other modules, rather than commonly configured
2. values. The actual configured values have to be coordinated between the different modules (by the RAN SMO and
3. transport OSS) for consistency.
4. As an example, a given CTI flow ID may be re-used in multiple CTI sessions between a CTI server and a CTI client,
5. but then represents the same Ethernet / UDPIP filters. Obviously its filter definition shall be consistent between both TN
6. ![]({{site.baseurl}}/assets/images/134d2942bf6b.jpg)and O-DU sides.

15

##### 16 Figure 8.2 : Schematic overview of parameters in module o-ran-cti-common

17

### 8.1.3 o-ran-o1-ctiOdu

1. The CTIClient IOC is augmented in the GNBDUFunction IOC of the O-DU. The CTIConfig IOC follows the IM of
2. **Figure 7.6**, but its integration with augmentation in the YANG file is for further study. O-ran-o1-ctiOdu uses several
3. typedefs and groupings from o-ran-cti-common. 22
   1. ![]({{site.baseurl}}/assets/images/5141c85b62da.png)

##### Figure 8.3 : Schematic overview of parameters in module o-ran-o1-ctiOdu

* 1. (including using parameters from module o-ran-cti-common in blue) 4

1. 8.2 CTI YANG Model Related to TN (**informative**)

### 8.2.1 Overview

1. The module o-ran-cti-o-tn-generic imports the module CTI common.
2. The modules o-ran-cti-o-tn-pon and o-ran-cti-o-tn-docsis import the module CTI common.
3. The module o-ran-cti-o-tn-generic is augmented with elements of the corresponding technology-specific
4. module (o-ran-cti-o-tn-pon or o-ran-cti-o-tn-docsis) 11

1 For TNs that do not support CTI there of course is no change in their YANG model. 2

### 8.2.2 o-ran-cti-common

1. See 5.1.2

### 8.2.3 o-ran-cti-tn-generic

1. *It includes generic elements, some of which imported from O-RAN-CTI-COMMON*
2. **CTI server-client pair**; groups connectivity parameters at L2 or L2 + L3/L4 to communicate CTI messages between a
3. given CTI client and a given CTI server. This element is augmented with either PON-specific or DOCSIS specific
4. parameters.
5. **CTI client name**: unique identifier of a given CTI client. The format is free but the values should be aligned between
6. both Transport OSS and Mobile SMO. For example it could be based on concatenation of O-DU Identifier (mfg
7. name\_model name\_serial nb) + "\_" + 2 characters.
8. **CTI client**; contains elements per client on an O-DU, amongst which the patterns as defined in that CTI client. The
9. client also contains its unique connectivity parameters: in case of L2 connectivity the client's MAC address, and in case
10. of UDP/IP connectivity the client's host (IP address or FQDN).
11. **CTI server name**: unique identifier of a given CTI server. The format is free but but the values should be aligned
12. between both Transport OSS and Mobile SMO. For example it could be based on the concatenation of Access Node
13. Identifier (as used in DHCP Agent Circuit ID) + "\_" + 2 characters. The use of Access Node Identifier allows for
14. autodiscovery as described in section 6.3.
15. **CTI server**; contains elements per server, amongst which the CTI Session IDs managed by that server. The server
16. element also includes a list of server-client pairs. This allows to define CTI connectivity at per client level for this
17. server.
18. **CTI Sessions**: Per CTI session ID the related parameters like CTI client, CTI server, Nominal time interval for the
19. messages, technology-specific session info, and which flows are in use for that CTI session. Each CTI session ID is
20. linked to a single CTI client and single CTI server, and the CTI connectivity parameters can be deduced from the pair
21. server-client.
22. **CTI flows in use**: indicates for a given CTI session ID which CTI flows are being used. There is always at least one
23. flow; if there is no classification into different flows this is represented by CTI Flow ID=0x00. Each flow in use also
24. contains the portion of the T34max value that can be spent as latency in the transport system. 30
25. *It also includes technology-specific elements, which are augmented via either o-ran-cti-tn-pon or o-ran-cti-tn-docsis;*

##### Technology-specific session configuration info:

1. For PON refers to the Channel Termination, ONU (or ONU UNI) for a given CTI session ID. This allows to collect all
2. CTI session IDs per Channel Termination (for generating PON ranging notifications) and to link a given CTI session ID
3. to the T-CONT corresponding to that ONU (or ONU UNI).
4. For DOCSIS refers to the Cable Modem MAC address

##### Technology-specific flow configuration info

1. For PON this is the T-CONT associated to given CTI session ID + CTI flow ID, to which Cooperative DBA has to
2. allocate bandwidth based on the reports for that CTI flow ID in that CTI session ID, and the associated filter
3. configuration parameters.
4. For DOCSIS this is the Service Class Name and L2 flow or UDP/IP flow configuration parameters associated to given
5. CTI session ID + CTI flow ID.
6. **Technology-specific client info:** selects whether to enable PON ranging notification, and defines (per CTI client) how
7. much time in advance the messages have to be sent.
8. **Technology-specific connectivity** parameters (e.g. interface on the TN) are added directly into the server-client pair
9. grouping.

3

1. ![]({{site.baseurl}}/assets/images/0d9a14f3a583.jpg)

##### Figure 8.4 : Schematic overview of parameters in module o-ran-cti-o-tn-generic

1. (including imported parameters from module o-ran-cti-common (in blue),
2. including parameters augmented from modules o-ran-cti-tn-pon (in yellow) and o-ran-cti-tn-docsis (in green)) 8
3. Most of the parameters are the equivalent of the same parameters at O-DU side. TN specific parameters are:

##### Table 8.1: TN specific parameters

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **Name** | **Data format** | **Unit** | **Value range**  ***(default value)*** | **Reserved values** | **Description** |
| maxPortionT34Latency | Uint16 | 5 us | 0 .. 65535 | N/A | The portion of the maximum T34 latency allocated to TN-TU segment (used to optimize the operation of the TN node) |

</div>

11

### 8.2.4 o-ran-cti-tn-pon

1. ![]({{site.baseurl}}/assets/images/44d3f083ebd7.jpg)

##### Figure 8.5 : Schematic overview of parameters in module o-ran-cti-tn-pon

* 1. **Table 8.2: PON-based TN specific parameters**

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- |
| **Name** | | **Data format** | **Unit** | **Value range**  ***(default value)*** | **Reserved values** | **Description**  ***(parameter used in TN, or O-DU, or both)*** |  |
| transport technology base | | Identity | N/A | "pon-transport" | N/A | Indicates which transport technology-specific module to load in the TN Yang module |  |
| associatedTcont | | (\*) | N/A | (\*) | N/A | Corresponding T-CONT for the combination CTI Flow ID & CTI session ID |  |
| oltChannelTerminationRef | | (\*) | N/A | (\*) | N/A | Corresponding OLT Channel Termination (PON port) for a CTI session ID |  |
| ctiSessionIdIngress; olt-v-ani or olt-v-enet | | (\*) | N/A | (\*) | N/A | Corresponding ONU or ONU UNI for a CTI session ID |  |
| ctiL2Interface;  vlan-subinterface or l2- termination-subinterface | | (\*) | N/A | (\*) | N/A | Reference to a L2 interface on OLT to be used for CTI messaging |  |
| ctiUseOfIp | | boolean | N/A | True / false | N/A | Use of IP transport capabilities on said L2 interface |  |
|  | Note: parameters marked with (\*) are from ITU-T PON YANG modules in BBF TR-385 [5] and OLT YANG modules in BBF TR-383 [6]. | | | | | | |

</div>

3

### 8.2.5 o-ran-cti-tn-docsis

* 1. ![]({{site.baseurl}}/assets/images/7fee1a97b872.jpg)

##### Figure 8.6 : Schematic overviews of parameters in module o-ran-cti-tn-docsis

7

##### 8 Table 8.3: DOCSIS-based TN specific parameters

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **Name** | **Data format** | **Unit** | **Value range**  ***(default value)*** | **Reserved values** | **Description**  ***(parameter used in TN, or O-DU, or both)*** |
| transport technology base | Identity | N/A | "docsis-transport" | N/A | Indicates which transport technology- specific module to load in the TN Yang module |
| associatedScn | String (len 1..15) (\*\*) | N/A | (\*\*) | N/A | Corresponding DOCSIS service class name to tie DOCSIS Service Flow for the combination CTI Flow ID & CTI session ID |
| cmMacAddress | String | N/A |  | N/A | Corresponding Cable Modem MAC address for a CTI session ID |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
|  |  |  |  |  | *(DOCSIS-based TN)* |
| Note: parameters marked with (\*\*) are from Cable Labs YANG modules in CL CM-SP-MULPI [10] | | | | | |

</div>

1

# 1 Annex A O-DU YANG Module Graphical Representation

2

* 1. The different released version of the set of YANG modules for the O-RU can be downloaded from O-RAN's website
  2. <http://www.o-ran.org/specifications/> . The YANG models are available in a zip file, whose name is used to represent the
  3. version of the YANG model and follows the numerical format defined in subsection 1.1 with the periods replaced with
  4. "-", i.e., YANG models for release 04.00 of the CTI TM specification are available in the file 04-00.zip. This zip file
  5. includes all published revisions of the YANG models supporting a particular release of the CTI TM Information Model
  6. / Data Model specification.
  7. The zip file contains two yang files; **o-ran-cti-common** and **o-ran-o1-ctiOdu**
  8. This Annex provides a set of "tree-views" of the modules to provide a simplified graphical representation of the data
  9. models. These trees have been automatically generated using the pyang YANG validator tool. If there are any
  10. inconsistencies between the tree representation in this Annex and the yang models, the yang models shall take
  11. precedence.

14

## A.1 CTIFunction

1. The tree structure for the CTIConfig IOC as augmented into GNBDUFunction IOC is provided below:

17

augment /me3gpp:ManagedElement/gnbdu3gpp:GNBDUFunction:

+--rw CTIFunction\* [id] {or-features:CTI}?

+--rw id string

+--rw attributes

<div class="table-wrapper" markdown="block">

| +--rw ctiActivateOnOdu boolean

</div>

+--rw CTIClient\* [id]

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

+--rw id

+--rw attributes

string

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

+--rw ctiClientMacAddr?

+--rw ctiClientInfo?

yang:mac-address

string

+--rw ctiClientServerStatus\* [ctiServerRef]

<div class="table-wrapper" markdown="block">

|

</div>

+--rw

ctiServerRef

->

/me3gpp:ManagedElement/gnbdu3gpp:GNBDUFunction/CTIFunction/CTIServer/attributes/ctiServerId

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

+--rw ctiClientServerActivate boolean

+--ro ctiClientServerConnStatus boolean

+--rw CTISessionGroup\* [id]

<div class="table-wrapper" markdown="block">

|

</div>

<div class="table-wrapper" markdown="block">

|

</div>

+--rw id

+--rw attributes

<div class="table-wrapper" markdown="block">

|

</div>

string

<div class="table-wrapper" markdown="block">

|

</div>

+--rw

ctiServerRef

->

/me3gpp:ManagedElement/gnbdu3gpp:GNBDUFunction/CTIFunction/CTIServer/attributes/ctiServerId

<div class="table-wrapper" markdown="block">

| | | +--rw ctiConnProfileRef ->

</div>

/me3gpp:ManagedElement/gnbdu3gpp:GNBDUFunction/CTIFunction/CTIConnProfile/attributes/ctiConnProfileId

<div class="table-wrapper" markdown="block">

| |

</div>

<div class="table-wrapper" markdown="block">

| |

</div>

<div class="table-wrapper" markdown="block">

| |

</div>

<div class="table-wrapper" markdown="block">

| |

</div>

+--rw CTISession\* [id]

+--rw id

+--rw attributes

<div class="table-wrapper" markdown="block">

| +--rw ctiSessionId

</div>

string

string

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

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 44 | | | | | | | | +--rw oruId? | | | | string | |
| 45 | | | | | | | | +--rw oruInterfaceId? | | | | string | |
| 46 | | | | | | | | +--rw ctiNominalReportMsgInterval | | | | uint8 | |
| 47  48 | |  | | |  | | |  +- | | +--rw ctiReportMessagingUseOfType1Ext  -rw CTIFlowsInUse\* [id] | | | | boolean | |
| 49 | | | | | +--rw id | | | string | | | | |
| 50 | | | | | +--rw attributes | | |  | | | | |
| 51  52 | |  | | |  | |  | +--rw timeIntervalPerRe  +--rw maxT34Latency | | | port | uint8  uint16 | |  |
| 53 | | | | |  | +--rw minLoad? | | |  | uint8 | |  |
| 54 | | | | |  | +--rw extraLoadCplane? | | |  | uint8 | |  |
| 55 | | |  | | |  | | | +--rw | ctiFlowRef | | -> |
| 56  57  58  59 | /me3gpp:ManagedElement/gnbdu3gpp:GNBDUFunction/CTIFunction/CTIServer/CTIFlow/attributes/ctiFlowId  | +--rw CTIConfig\* [id]  | +--rw id string  | +--rw attributes | | | | | | | | | |

</div>

<div class="table-wrapper" markdown="block">

1. | +--ro ctiReportRateCategory uint8
2. | +--ro ctiMessageTimingPerformance uint8
3. | +--ro supportedCtiVersions\* or-ctic:ctiVersion
4. | +--ro minNotificationAdvanceTime? uint16
5. | +--rw ctiKa uint8
6. | +--rw ctiTo uint8
7. | +--rw protocolSubtype? uint16
8. | +--rw ctiListeningUdpPort inet:port-number

</div>

9 +--rw CTIServer\* [id]

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
31. | +--rw dscp? inet:dscp
32. | +--rw sourcePortStart? inet:port-number
33. | +--rw sourcePortEnd? inet:port-number
34. | +--rw destinationPortStart? inet:port-number
35. | +--rw destinationPortEnd? inet:port-number
36. | +--rw ipv4Protocol? uint8
37. | +--rw ipv6TrafficClass? uint8
38. | +--rw ipv6Flow? inet:ipv6-flow-label
39. | +--rw ipv6NextHeader? uint8

</div>

49 +--rw CTIConnProfile\* [id]

<div class="table-wrapper" markdown="block">

1. | +--rw id string
2. | +--rw attributes
3. | +--rw ctiConnProfileId string
4. | +--rw connectivityType enumeration
5. | +--rw vlanTagForL2? or-types:vlan-id
6. | +--rw vlanTagForL3and4? or-types:vlan-id
7. | +--rw ctiClientHost? inet:host

</div>

57 +--rw CTIPattern\* [id]

58 +--rw id string

59 +--rw attributes

60 +--rw patternId uint32

61 +--rw patternDuration uint8

62 +--rw patternEvents uint8

63 +--rw patternEventMultiplier uint8

64 +--rw patternEventBytes uint16

65 +--rw patternNormalization boolean

66

67

68

69

# 1 Annex B TN YANG Data Models (Informative)

2

1. The YANG Data Models are provided in this Annex for informative purposes as proposals. They can be replaced by
2. specifications made outside of O-RAN when they become available.

## B.1 o-ran-cti-tn-generic.yang

1. This includes augmentations with either o-ran-cti-tn-pon.yang or o-ran-cti-doscis.yang depending on the technology
2. used in the TN. 8

9

o-ran-cti-tn-generic.yang

module o-ran-cti-tn-generic { yang-version 1.1;

namespace "urn:o-ran:cti-tn-generic:2.0"; prefix "or-cti-tn";

import o-ran-cti-common { prefix or-ctic;

}

import ietf-yang-types { prefix yang;

}

import ietf-inet-types { prefix inet;

}

import o-ran-common-identity-refs { prefix or-refs;

}

organization "O-RAN Alliance"; contact

"[www.o-ran.org](http://www.o-ran.org/)";

description

"This module defines the configuration of for a generic CTI transport node that implements the O-RAN WG4 Cooperative transport Interface. It is intended

that transport technology specific augmentations will be used to completely define the configuration of a fully functional CTI Transport Node.

Copyright 2022 the O-RAN Alliance.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS 'AS IS' AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

* Redistributions of source code must retain the above copyright notice, this list of conditions and the above disclaimer.
* Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the above disclaimer in the documentation

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

1. and/or other materials provided with the distribution.
2. \* Neither the Members of the O-RAN Alliance nor the names of its
3. contributors may be used to endorse or promote products derived from
4. this software without specific prior written permission.";

5

6 revision "2022-04-15" {

* 1. description
  2. "version 3.0.0

9

10 1) non-backward compatible changes to switch to camelCase";

11

12 reference "ORAN-WG4.CTI-TMP.0-v03.00";

13 }

14 revision "2020-10-26" {

1. description
2. "version 1.0.0

17

1. 1) initial version";

19

20 reference "ORAN-WG4.CTI-TMP.0-v01.00";

21 }

22

1. grouping tnCtiCharacteristics {
2. description "a grouping for tn characteristics";

25

1. leaf tnCtiMessageTimingPerformance {
2. type uint8;
3. units 20-microseconds;
4. config false;
5. mandatory true;
6. description
7. "The minimal spacing needed between the arrival time of the CTI message
8. and the start boundary at Ra of the mobile slot N being reported in the message";

34 }

1. leaf ctiReportRateCategory {
2. type uint8 {
3. range "1..5";

38 }

1. config false;
2. mandatory true;
3. description "the supported message interval, where 1 = 5ms, 2 = 2ms, 3 = 1 ms
4. 4 = 0.5ms, 5 = 0.25 ms";
5. reference "O-RAN.WG4.CTI-TCP: Table CTI Message Rate Categories for O-DU or TN";

44 }

1. leaf-list supportedVersions {
2. type or-ctic:ctiVersion;
3. config false;
4. min-elements 1;
5. description "the list of versions of CTI TC-Plane that are supported by the CTI client";

50 }

51 }

52

1. grouping clientListGrp {
2. description "a grouping of a CTI client list";

55

1. list ctiClient {
2. key name;
3. description "a list of CTI clients";

59

1. leaf name {
2. type string;
3. description "the unique name of a CTI client";

63 }

1. leaf ctiEnable {
2. type boolean;
3. mandatory true;
4. description "whether the client is enabled for CTI";

68 }

1. leaf-list version {
2. type or-ctic:ctiVersion;
3. min-elements 1;
4. description "the list of version of CTI TC-Plane that can be used with the client";

73 }

74

75 choice connectivityType {

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

20

21

22

23

24

25

26

27

28 }

29 }

30

description "the connectivity type"; case ethernet {

leaf ctiClientMacAddr { type yang:mac-address;

description "the destination address used for CTI messages to the server";

}

}

case udpip {

leaf ctiClientHost { type inet:host;

description "host (remote IP address or FQDN) for the CTI client";

}

}

}

container technologySpecificClientInfo { description

"a container to be augmented by technology specific models that is used to configure technology specific parameters for interaction with this client";

}

list patterns { key patternId; min-elements 1;

description "a list of patterns";

uses or-ctic:ctiPatternGrp;

}

1. grouping ctiFlowsInUseGrp {
2. description "the cti flow in use group";
3. list ctiFlows {
4. key ctiFlowId;
5. description "a list of CTI flows";

36

1. leaf ctiFlowId {
2. type uint8;
3. description "a CTI flow-id";

40 }

1. leaf maxPortionT34Latency {
2. type uint16;
3. units 5-microseconds;
4. description
5. "The portion of the maximum T34 latency allocated to TN-TU segment - used to optimize the operation
6. of the TN node";

47 }

1. container technologySpecificFlowInfo {
2. description
3. "a container to be augmented by technology specific models that is used to configure
4. the technology specific transport parameters associated with the cti-flow-ID in the context of the
5. given cti-session-id";

53 }

54 }

55 }

56

1. grouping ctiSessionIdGrp {
2. description "the cti-session-id group";
3. list ctiSession {
4. key id;
5. description "a CTI session";

62

1. leaf id {
2. type string;
3. description "the identity of a cti session";

66 }

1. leaf ctiClient {
2. type leafref {
3. path "/ctiTn/ctiClient/name";

70 }

1. mandatory true;
2. description "";

73 }

74

75 leaf ctiTnServer {

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| 1 |  | type leafref { |
| 2 |  | path "/ctiTn/ctiTnServer/name"; |
| 3 |  | } |
| 4 |  | mandatory true; |
| 5 |  | description ""; |
| 6 | } |  |
| 7 |  |  |
| 8 | leaf ctiNominalReportMsgInterval { | |
| 9 | type uint8; | |
| 10 | units 0.25-milliseconds; | |
| 11 | mandatory true; | |
| 12 | description "the nominal CTI reporting messsage interval"; | |
| 13 | } | |
| 14 |  | |
| 15 | uses ctiFlowsInUseGrp; | |
| 16 |  | |
| 17 | container technologySpecificSessionInfo { | |
| 18 | description | |
| 19 | "a container to augmented by technology specific models"; | |
| 20 | } | |
| 21 | } | |
| 22 | } | |
| 23 |  | |
| 24 | grouping ctiTnServerGrp { | |
| 25 | description "the cti tn server grouping"; | |
| 26 | list ctiTnServer { | |
| 27 | key name; | |
| 28 | description "list of cti tn servers"; | |
| 29 |  | |
| 30 | leaf name { | |
| 31 | type string; | |
| 32 | description "a unique name/identity for a cti-tn-server"; | |
| 33 | } | |
| 34 | leaf ctiEnable { | |
| 35 | type boolean; | |
| 36 | default false; | |
| 37 | description "whether the cti server is enabled"; | |
| 38 | } | |
| 39 | leaf-list ctiSessionIds { | |
| 40 | type leafref { | |
| 41 | path "/ctiTn/ctiSession/id"; | |
| 42 | } | |
| 43 | config false; | |
| 44 | description "read-only list of CTI session IDs handled by this CTI server"; | |
| 45 | } | |
| 46 |  | |
| 47 | list serverClientPair { | |
| 48 | key clientName; | |
| 49 | description "a list of a CTI clients in contact with this CTI server, to be augmented by technology- | |
| 50 | specific connectivity parameters"; | |
| 51 |  | |
| 52 | leaf clientName { | |
| 53 | type leafref { | |
| 54 | path "/ctiTn/ctiClient/name"; | |
| 55 | } | |
| 56 | description "the name of the CTI client"; | |
| 57 | } | |
| 58 | } | |
| 59 | } | |
| 60 | } | |
| 61 |  | |
| 62 | container ctiTn { | |
| 63 | description | |
| 64 | "the top level container for CTI TN generic, i.e., transport | |
| 65 | technology agnostic, configuration and operational data"; | |
| 66 |  | |
| 67 | leaf transportType { | |
| 68 | type identityref { | |
| 69 | base or-refs:o-ran-transport-technology-base; | |
| 70 | } | |
| 71 | description "a identity ref used in conditional augmentation"; | |
| 72 | } | |
| 73 | container ctiTransport { | |
| 74 | presence "Enable CTI Transport"; | |
| 75 | description | |

</div>

1

"container for transport parameters"; uses or-ctic:subtypeGrp;

uses or-ctic:ctiListeningUdpPortGrp;

}

container ctiTimers {

presence "Enable CTI Timers"; description

"container for mandatory CTI Timers"; uses or-ctic:ctiTimersGrp;

}

uses tnCtiCharacteristics; uses clientListGrp;

uses ctiTnServerGrp; uses ctiSessionIdGrp;

}

}

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

## B.2 o-ran-cti-tn-pon.yang

20

21

o-ran-cti-tn-pon.yang

module o-ran-cti-tn-pon { yang-version 1.1;

namespace "urn:o-ran:cti-tn-pon:1.0"; prefix "or-cti-pon";

import o-ran-cti-common { prefix or-ctic;

}

import o-ran-cti-tn-generic { prefix or-ctig;

}

import o-ran-common-identity-refs { prefix or-refs;

}

import ietf-interfaces { prefix if;

}

import ietf-yang-types { prefix yang;

}

import ietf-inet-types { prefix inet;

}

import bbf-xpon-if-type { prefix bbf-xponift;

}

import bbf-if-type { prefix bbfift;

}

import bbf-xpongemtcont { prefix bbf-xpongemtcont;

}

organization "O-RAN Alliance"; contact

"[www.o-ran.org](http://www.o-ran.org/)";

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

* 1. description
  2. "This module defines the configuration of for the CTI transport node that for
  3. PON defined transport nodes that implement the O-RAN WG4 Cooperative transport Interface.

4

1. Copyright 2020 the O-RAN Alliance.

6

1. THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS 'AS IS'
2. AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
3. IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
4. ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE
5. LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
6. CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
7. SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
8. INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
9. CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
10. ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
11. POSSIBILITY OF SUCH DAMAGE.

18

1. Redistribution and use in source and binary forms, with or without
2. modification, are permitted provided that the following conditions are met:

21

1. \* Redistributions of source code must retain the above copyright notice,
2. this list of conditions and the above disclaimer.
3. \* Redistributions in binary form must reproduce the above copyright notice,
4. this list of conditions and the above disclaimer in the documentation
5. and/or other materials provided with the distribution.
6. \* Neither the Members of the O-RAN Alliance nor the names of its
7. contributors may be used to endorse or promote products derived from
8. this software without specific prior written permission.";

30

31 revision "2022-06-28" {

1. description
2. "version 3.0.0
3. 1) non-backward compatible changes to switch to camelCase";

35

36 reference "ORAN-WG4.CTI-TCP.0-v03.00";

37 }

38

1. identity ponTransport {
2. base "or-refs:o-ran-transport-technology-base";
3. description
4. "an identity corresponding to PON transport";

43 }

44

1. grouping ponSessionConfigDataGrp {
2. description
3. "A grouping of PON specific info reflecting the ingress point in the PON system the O-RU (interface)
4. corresponding to a given CTI session ID: OLT Channel Termination, ONU, ONU UNI";

49

1. leaf oltChannelTerminationRef {
2. type if:interface-ref;
3. must "derived-from-or-self(/if:interfaces"

53 + "/if:interface[if:name=current()]/if:type,"

54 + "'bbf-xponift:channel-termination')"

55 {

1. error-message
2. "Must reference a channel termination.";

58 }

1. description "Reference to a PON OLT Channel Termination";
2. }

61

1. leaf ctiSessionIdIngress {
2. type if:interface-ref;
3. must "derived-from-or-self(/if:interfaces"

65 + "/if:interface[if:name=current()]/if:type,"

66 + "'bbf-xponift:olt-v-enet') or

67 derived-from-or-self(/if:interfaces"

68 + "/if:interface[if:name=current()]/if:type,"

69 + "'bbf-xponift:olt-v-ani')"

70 {

1. error-message
2. "Must either reference an OLT vENET interface which is the
3. local representation in the OLT of an ONU UNI
4. interface, or reference an OLT vANI interface wich is the
5. local representation in the OLT of an ONU";

1 }

* 1. description "Reference to an ONU or ONU UNI.";

3 }

4 }

5

1. grouping ponFlowConfigDataGrp {
2. description
3. "A T-CONT being used for carrying upstream traffic pertaining to a CTI Session ID + Flow ID";

9

1. leaf associatedTcont {
2. type leafref {
3. path '/bbf-xpongemtcont:xpongemtcont/bbf-xpongemtcont:'

13 + 'tconts/bbf-xpongemtcont:tcont/bbf-xpongemtcont:'

14 + 'name';

15 }

1. description
2. "Reference to a T-CONT.";

18 }

19

20 }

21

1. grouping ponRangingInfoGrp {
2. description "a grouping for PON ranging info";

24

1. leaf ponUseNotifications {
2. type boolean;
3. mandatory true;
4. description "whether PON notifications are used to this CTI client";

29 }

1. leaf ponMinNotificationTa {
2. when "../ponUseNotifications ='true'";
3. type uint16;
4. units milliseconds;
5. description "the minimum notification timing advance";

35 }

36 }

37

1. grouping ponFlowInfoGrp {
2. description "a grouping for the PON specific flow information";
3. choice filterType {
4. description "the filter type for this flow";
5. case ethernet {
6. container l2Flow {
7. must "(sourceMac)or(destinationMac)or(ethertype)or(pcp)or(vlanId)";
8. description "field(s) for L2 filter";
9. uses or-ctic:layer2FilterGrp;

47 }

48 }

1. case udpip {
2. container udpipFlow {
3. must
4. "(sourceAddress)or(sourcePrefix)or(destinationAddress)or(destinationPrefix)or(dscp)or((sourcePortStart)and(so
5. urcePortEnd))";
6. description "field(s) for UDP/IP filter";
7. uses or-ctic:layer3and4FilterGrp;

56 }

57 }

58 }

59 }

60

1. grouping ponCtiEgressIfGrp {
2. description "Configuration of the egress interface on OLT for CTI towards CTI client in O-DU";

63

1. leaf ctiL2Interface {
2. type if:interface-ref;
3. must "derived-from-or-self(/if:interfaces"

67 + "/if:interface[if:name=current()]/if:type,"

68 + "'bbfift:vlan-sub-interface') or "

69 + "derived-from-or-self(/if:interfaces"

70 + "/if:interface[if:name=current()]/if:type,"

71 + "'bbfift:l2-termination')" {

1. error-message
2. "Must reference a vlan-sub-interface or a
3. l2-termination interface.";

75 }

1

description "Reference to a L2 interface.";

}

leaf ctiUseOfIp { type boolean;

description "Use IP transport capabilities (RFC 8344) of the L2 interface (if available) for CTI.";

}

}

augment "/or-ctig:ctiTn/or-ctig:ctiSession/or-ctig:technologySpecificSessionInfo" { when "(derived-from-or-self(../../transportType," + "'ponTransport'))";

description "augmentation for session data"; uses ponSessionConfigDataGrp;

}

augment "/or-ctig:ctiTn/or-ctig:ctiSession/or-ctig:ctiFlows/or-ctig:technologySpecificFlowInfo" { when "(derived-from-or-self(../../../transportType," + "'ponTransport'))";

description "augmentation for flow configuration data"; uses ponFlowConfigDataGrp;

}

augment "/or-ctig:ctiTn/or-ctig:ctiSession/or-ctig:ctiFlows/or-ctig:technologySpecificFlowInfo" { when "(derived-from-or-self(../../../transportType," + "'ponTransport'))";

description "augmentation for flow configuration data"; uses ponFlowInfoGrp;

}

augment "/or-ctig:ctiTn/or-ctig:ctiTnServer/or-ctig:serverClientPair" { when "(derived-from-or-self(../../transportType," + "'ponTransport'))"; description "augmentation for CTI interface";

uses ponCtiEgressIfGrp;

}

augment "/or-ctig:ctiTn/or-ctig:ctiClient/or-ctig:technologySpecificClientInfo" { when "(derived-from-or-self(../../transportType," + "'ponTransport'))"; description "augmentation for PON ranging info";

uses ponRangingInfoGrp;

}

}

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

## 42 B.3 o-ran-cti-tn-docsis.yang

43

44

o-ran-cti-tn-docsis.yang

module o-ran-cti-tn-docsis { yang-version 1.1;

namespace "urn:o-ran:cti-tn-docsis:2.0"; prefix "or-cti-docsis";

import o-ran-cti-common { prefix or-ctic;

}

import o-ran-cti-tn-generic { prefix or-ctig;

}

import ietf-yang-types { prefix yang;

}

import o-ran-common-yang-types { prefix or-types;

}

import o-ran-common-identity-refs { prefix or-refs;

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

1 }

2

* 1. organization "O-RAN Alliance";

4

1. contact
2. "[www.o-ran.org](http://www.o-ran.org/)";

7

1. description
2. "This module defines the configuration of for the CTI transport
3. node that for DOCSIS defined transport nodes that implement the
4. O-RAN WG4 Cooperative transport Interface.

12

13 Copyright 2022 the O-RAN Alliance.

14

1. THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
2. 'AS IS' AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
3. LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
4. FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
5. COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT,
6. INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
7. DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE
8. GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
9. INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
10. WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
11. NEGLIGENCE OR OTHERWISE)ARISING IN ANY WAY OUT OF THE USE OF
12. THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

27

1. Redistribution and use in source and binary forms, with or without
2. modification, are permitted provided that the following conditions are met:

30

1. \* Redistributions of source code must retain the above copyright notice,
2. this list of conditions and the above disclaimer.
3. \* Redistributions in binary form must reproduce the above copyright notice,
4. this list of conditions and the above disclaimer in the documentation
5. and/or other materials provided with the distribution.
6. \* Neither the Members of the O-RAN Alliance nor the names of its
7. contributors may be used to endorse or promote products derived from
8. this software without specific prior written permission.";

39

40 revision "2022-04-15" {

41 description

42 "version 3.0.0

43

44 1) non-backward compatible changes to switch to camelCase";

45

46 reference "ORAN-WG4.CTI-TMP.0-v03.00";

47 }

48

1. identity docsis-transport {
2. base "or-refs:o-ran-transport-technology-base";
3. description
4. "an identity corresponding to DOCSIS transport";

53 }

54

1. grouping docsisSessionConfigDataGrp {
2. description
3. "A grouping of DOCSIS specific CTI session info.";

58

1. leaf cmMacAddress {
2. type yang:mac-address;
3. description "a MAC address on the DOCSIS equipment connected to O-RU";

62 }

63 }

64

1. grouping docsisFlowConfigDataGrp {
2. description
3. "A grouping for DOCSIS specific flow in use info";

68

1. leaf associatedScn {
2. type string { length "1..15"; }
3. description
4. "This key indicates the Service Class Name associated with
5. this CTI flow. DOCSIS specifies that the maximum
6. size is 16 ASCII characters including a terminating zero.";
7. reference "Information Model Mapping: CM-SP-CCAP-OSSIv4.0

1 ServiceClass::Name";

2 }

1. choice filterType {
2. description "the filter type";
3. case ethernet {
4. container l2Flow {
5. must "(sourceMac)or(destinationMac)or(ethertype)or(pcp)or(vlanId)";
6. description "the layer 2 flow";
7. uses or-ctic:layer2FilterGrp;

10 }

11 }

1. case udpip {
2. container udpipFlow {
3. must "(sourceAddress)or(sourcePrefix)or(destinationAddress)or(destinationPrefix)"

15 +

16 "or(dscp)or((sourcePortStart)and(sourcePortEnd))or((destinationPortStart)and(destinationPortEnd))"

17 + "or(ipv4Protocol)or(ipv6TrafficClass)or(ipv6Flow)or(ipv6NextHeader)";

1. description "the udpip flow container";
2. uses or-ctic:layer3and4FilterGrp;

20 }

21 }

22 }

23 }

24

1. grouping docsisCtiConnectivityProfileGrp {
2. description
3. "Configuration data for CTI conectivity.";

28

1. container l4CtiIf {
2. description
3. "A container for a l4 cti interface";

32

1. leaf ctiServerIpInterfaceRef {
2. type or-ctic:localIpv4OrIpv6;
3. description "a local IP address on the TN (CMTS) for the CTI Server";

36 }

37

1. leaf vlanId {
2. type or-types:vlan-id;
3. description "an optional vlan id associated with this IP/host CTI connection";

41 }

42 }

43 }

44

45

1. augment "/or-ctig:ctiTn/or-ctig:ctiSession/or-ctig:technologySpecificSessionInfo" {
2. when "(derived-from-or-self(../../transportType,"

48 + "'docsis-transport'))";

1. description "augmentation for session data";
2. uses docsisSessionConfigDataGrp;

51 }

52

1. augment "/or-ctig:ctiTn/or-ctig:ctiSession/or-ctig:ctiFlows/or-ctig:technologySpecificFlowInfo" {
2. when "(derived-from-or-self(../../../transportType,"

55 + "'docsis-transport'))";

1. description "augmentation for flow data";
2. uses docsisFlowConfigDataGrp;

58 }

59

1. augment "/or-ctig:ctiTn/or-ctig:ctiTnServer/or-ctig:serverClientPair" {
2. when "(derived-from-or-self(../../transportType, 'docsis-transport'))";
3. description "augmentation for cti profile";
4. uses docsisCtiConnectivityProfileGrp;

64 }

65 }

66

1

2

# 3 Revision History

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Date** | **Revision** | **Description** |
| 2023.02.23 | 04.00 | Completion of Information Model and YANG Model, move of the informational TN YANG files into informative Annex of the TMP spec, adaptation of the document to the O-RAN TSC document drafting rules. |
| 2022.07.14 | 03.00 | Updated Information Model and YANG Data Model, alignment on O1 guidelines |
| 2021.03.05 | 02.00 | Updated related parameters to support CTI pattern descriptor |
| 2020.11.05 | 01.00 | First release of the specification |

</div>

4

5

6 History

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Date** | **Revision** | **Description** |
| 2023.02.23 | 04.00 | Published as Final version 04.00 |
| 2022.07.14 | 03.00 | Published as Final version 03.00 |
| 2021.03.05 | 02.00 | Published as Final version 02.00 |
| 2020.11.05 | 01.00 | Published as Final version 01.00 |

</div>

7

8
---

- View in [GitHub Mode]({{site.github_page_url}}/O-RAN.WG4.CTI-TMP.0-R003-v04.00.docx.md).
- Go back to [Table of Contents]({{site.baseurl}}/).
- Download the [Original Document]({{site.download_url}}/O-RAN.WG4.CTI-TMP.0-R003-v04.00.docx).

---

* toc
{:toc}
