---
title: O-RAN.WG4.CTI-TCP.0-R003-v04.00.docx.md
author: O-RAN Alliance
layout: post
---

- View in [GitHub Mode]({{site.github_page_url}}/O-RAN.WG4.CTI-TCP.0-R003-v04.00.docx.md).
- Go back to [Table of Contents]({{site.baseurl}}/).
- Download the [Original Document]({{site.download_url}}/O-RAN.WG4.CTI-TCP.0-R003-v04.00.docx).

---

* toc
{:toc}

---

![]({{site.baseurl}}/assets/images/39f3bc0378a7.jpg)O-RAN.WG4.CTI-TCP.0-R003-v04.00

*Technical Specification*

**O-RAN Working Group 4 (Open Fronthaul Interfaces) Cooperative Transport Interface**

**Transport Control Plane Specification**

Copyright (C) 2023 by the O-RAN ALLIANCE e.V.

The copying or incorporation into any other work of part or all of the material available in this specification in any form without the prior written permission of O-RAN ALLIANCE e.V. is prohibited, save that you may print or download extracts of the material of this specification for your personal use, or copy the material of this specification for the purpose of sending to individual third parties for their information provided that you acknowledge O-RAN ALLIANCE as the source of the material and that you inform the third party that these conditions apply to them and that they must comply with them.

O-RAN ALLIANCE e.V., Buschkauler Weg 27, 53347 Alfter, Germany Register of Associations, Bonn VR 11238, VAT ID DE321720189

# 1 Contents

1. Foreword 4
2. Modal verbs terminology 4
3. 1 Scope 5
4. 2 References 5
5. 2.1 Normative references 6
6. 2.2 Informative references 6
7. 3 Definition of terms, symbols and abbreviations 6
8. 3.1 Terms 6
9. 3.2 Symbols 7
10. 3.3 Abbreviations 7
11. 4 Cooperative Transport Interface (CTI) 9
12. 4.1 General Network Architecture and Mechanism 9
13. 4.1.1 High Level CTI Message Flow 10
14. 4.1.2 Packet-based Transport Network topologies supported by CTI 11
15. 4.1.3 Forwarding and addressing of CTI messages 13
16. 4.2 Information Required for Cooperative Transport 13
17. 4.2.1 From O-DU to Transport 13
18. 4.2.2 From Transport to O-DU 14
19. 4.3 Calculation of CTI reports by O-DU 14
20. 4.3.1 Required load 14
21. 4.3.2 Time interval of the reported load 16
22. 4.3.3 Exchange rate of CTI Reporting 17
23. 5 CTI Message Protocol 19
24. 5.1 CTI Packet Format 19
25. 5.1.1 CTI Message Format 21
26. 5.1.2 CTI Common Header 22
27. 5.1.3 CTI Signaling Messages 23
28. 5.1.4 CTI Report Body 25
29. 5.1.5 CTI Signature 28
30. 5.2 Operation 28
31. 5.2.1 CTI Discovery & Configuration 28
32. 5.2.2 Operations 29
33. 5.3 Interface to OSS 31
34. 5.3.1 Timers 31
35. 5.3.2 Summary of Objects (Informative) 31
36. 5.4 Examples of the CTI Pattern Descriptor for Fronthaul 31
37. 5.5 Other O-DU Functional requirements 33
38. 5.5.1 Reporting scope 33
39. 5.5.2 Reporting accuracy 33
40. 5.5.3 O-DU CTI performance 34
41. 6 Time alignment between O-DU and Transport 35
42. 6.1 Timing architecture options 35
43. 6.2 Resource allocation alignment 35
44. 7 Conclusion 38
45. 7.1 Summary 38
46. 7.2 Open issue list 38
47. Annex A CTI Use Cases (Informative) 39
48. A.1 Passive Optical Network (PON) as Transport Technology 39
49. A.1.1 Dynamic Bandwidth Allocation (DBA) 40
50. A.1.2 DBA Latency Analysis 40
51. A.1.3 Cooperative Dynamic Bandwidth Allocation (CO-DBA) 41
52. A.1.4 PON ranging 43
53. A.1.5 PON technologies 43
54. A.2 DOCSIS as a Transport Technology 44
55. A.2.1 DOCSIS resource scheduling 44
56. A.2.2 DOCSIS Latency Analysis 45
57. A.2.3 Bandwidth Report (BWR) 46
58. Revision History 49
59. History 49

9

10

1 Foreword

2 This Technical Specification (TS) has been produced by O-RAN Alliance.

# 3 Modal verbs terminology

1. In the present document "**shall**", "**shall not**", "**should**", "**should not**", "**may**", "**need not**", "**will**", "**will not**", "**can**" and
2. "**cannot**" are to be interpreted as described in clause 3.2 of the O-RAN Drafting Rules (Verbal forms for the expression
3. of provisions).
4. "**must**" and "**must not**" are **NOT** allowed in O-RAN deliverables except when used in direct citation. 8

# 1 1 Scope

1. The contents of the present document are subject to continuing work within O-RAN and may change following formal
2. O-RAN approval. Should the O-RAN Alliance modify the contents of the present document, it will be re-released by O-
3. RAN with an identifying change of release date and an increase in version number as follows:
4. Release xx.yy.zz
5. where:
6. xx the first digit-group is incremented for all changes of substance, i.e. technical enhancements, corrections,
7. updates, etc. (the initial approved document will have xx=01).
8. yy the second digit-group is incremented when editorial only changes have been incorporated in the document.
9. zz the third digit-group included only in working versions of the document indicating incremental changes during
10. the editing process. 12
11. The present document describes the Cooperative Transport Interface (CTI). CTI is an optional interface between O-DUs
12. and Transport Nodes of a packet-based transport network that is used to interconnect the O-DUs to a variety of O-RUs.
13. CTI specifically targets transport Nodes that manage a shared point-to-multipoint access network. Transport nodes
14. (routers and switches) that only manage point-to-point links do not exchange CTI messages with the O-DUs. CTI consists
15. of a CTI Transport Control plane (TC-plane) and a Transport Management (Information Model, Data Model, procedures)
16. (TM). This document specifies the TC-plane. The TM is specified in O-RAN CTI TMP [4].
17. The use of CTI targets packet-based transport networks that contain Transport Nodes (TNs) that terminate one or multiple
18. shared distribution networks, where each distribution network (one port on one TN) aggregates a multitude of Transport
19. Units (TUs). This implies that the bandwidth of a distribution network is shared among multiple TUs. In the upstream
20. direction, the TN manages this sharing by scheduling bandwidth allocations to the multiple TUs. There are two ways to
21. determine how much bandwidth to allocate, either statically or dynamically. Statically (i.e. continuously) granting a fixed
22. bandwidth provides the lowest latency but requires to assign the peak rate. When the bandwidth need is below the peak,
23. the allocated bandwidth is not fully consumed and this difference will be wasted because unavailable for other traffic. On
24. the other hand, dynamically granting bandwidth is typically done with a reactive system in the sense that the bandwidth
25. allocations follow the needs by monitoring the past and present traffic and buffer status. This provides a more efficient
26. multiplexing of multiple traffic streams by maximizing the use of the shared bandwidth, but the reaction time of the
27. system introduces more latency.
28. The intent of providing cooperation between the O-DU and the TN over CTI is to make the upstream bandwidth allocation
29. by the TN pro-active by anticipating the bandwidth needs. This is possible in the upstream direction because the O-DU
30. allocates uplink grants to the UEs for slots in the future, based on their requests. Thefore the O-DU is able to notify
31. corresponding future bandwidth needs of the O-RUs based on its granting decisions. The TN is then able to prepare the
32. corresponding bandwidth allocations for the corresponding TUs. The effect is to allow for dynamic bandwidth allocation
33. following the variations of the carried fronthaul traffic (providing statistical multiplexing on the shared network), while
34. minimizing upstream buffering in the TU, hence keeping upstream latency low. It allows for a more efficient use of
35. transport network resources than with a fixed allocation to peak bandwidth values, and for a lower latency than with a
36. purely reactive allocation of bandwidth values by the TN.
37. The CTI functionality as such is optional. If an O-DU supports CTI, it has to follow the O-RAN CTI TCP (this document)
38. and O-RAN CTI TMP [4] specifications.
39. The uplink latency that CTI aims to limit is specified as "T34max" in O-RAN [2].

# 42 2 References

43

## 2.1 Normative references

1. References are either specific (identified by date of publication and/or edition number or version number) or non specific.
2. For specific references, only the cited version applies. For non-specific references, the latest version of the referenced
3. document (including any amendments) applies.
4. NOTE: While any hyperlinks included in this clause were valid at the time of publication, O-RAN cannot guarantee
5. their long term validity.
6. The following referenced documents are necessary for the application of the present document.

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| 8 | [1] | 3GPP TR 21.905: "Vocabulary for 3GPP Specifications". |
| 9 | [2] | ORAN-WG4.CUS.0-v11.00, "Control, User and Synchronization Plane Specification". |
| 10 | [3] | ORAN-WG4.MP.0-v11.00, "Management Plane Specification". |
| 11 | [4] | ORAN-WG4.CTI-TMP.0-v04.00, "Cooperative Transport Interface Transport Management Procedures |
| 12 |  | Specification" |
| 13 |  |  |

</div>

## 2.2 Informative references

1. References are either specific (identified by date of publication and/or edition number or version number) or non specific.
2. For specific references, only the cited version applies. For non-specific references, the latest version of the referenced
3. document (including any amendments) applies.
4. NOTE: While any hyperlinks included in this clause were valid at the time of publication, O-RAN cannot guarantee
5. their long term validity.
6. The following referenced documents are not necessary for the application of the present document but they assist the user
7. with regard to a particular subject area.

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| 22 | [5] | ITU-T Study Group 15/Question 2, G.Sup66-201810 , "5G wireless fronthaul requirements in a passive optical |
| 23 |  | network context". https://[www.itu.int/rec/T-REC-G.Sup66-201907-I](http://www.itu.int/rec/T-REC-G.Sup66-201907-I) |
| 24 | [6] | Cable Labs CM-SP-LLX-I01-190628, "Low Latency Xhaul over DOCSIS Technology Specification", Cable |
| 25 |  | Television Laboratories, Inc |
| 26 | [7] | Cable Labs CM-SP-MULPIv3.1-I19-191016, "DOCSIS 3.1 MAC and Upper Layer Protocols Interface |
| 27 |  | Specification" , Cable Television Laboratories, Inc |
| 28 |  |  |

</div>

# 29 3 Definition of terms, symbols and abbreviations

## 3.1 Terms

1. For the purposes of the present document, the terms and definitions given in 3GPP TR 21.905 [1] and the following apply.
2. A term defined in the present document takes precedence over the definition of the same term, if any, in 3GPP TR 21.905
3. [1].
4. New terms used in this document:
5. ? **CTI client**: a process in the O-DU that exchanges CTI messages to one or multiple CTI servers, e.g. to request
6. a given transport capacity.
7. ? **CTI server**: a process in the Transport Node that exchanges CTI messages with one or multiple CTI clients, e.g.
8. to receive capacity requests.
9. ? **CTI message sender**: CTI client or CTI server generating a CTI message
10. ? **CTI message receiver**; CTI client or CTI server receiving a CTI message 41
    1. Generic terms used in this document:
    2. ? **Mobile slot**: a subframe in 3GPP LTE or a slot in 3GPP NR. 3
11. Conventions used in this document:
12. ? The following convention applies any time a bit field is displayed in a figure. The bit field shall be interpreted
13. by reading the figure from left to right, then from top to bottom, with the MSB being the first bit so read and the
14. LSB being the last bit so read. 8

## 3.2 Symbols

1. None.

## 3.3 Abbreviations

1. For the purposes of the present document, the following abbreviations apply.

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| 13 | BWR | Bandwidth Reporting |
| 14 | CM | Cable Modem |
| 15 | CMTS | Cable Modem Termination System |
| 16 | CoS | Class of Service |
| 17 | CO DBA | Cooperative DBA |
| 18 | CTI | Cooperative Transport Interface |
| 19 | DBA | Dynamic Bandwidth Allocation |
| 20 | DOCSIS | Data Over Cable Service Interface Specification |
| 21 | DSCP | Differentiated Services Code Point |
| 22 | eAxC | extended Antenna Carrier |
| 23 | eNB | e NodeB (applies to LTE) |
| 24 | gNB | g NodeB (applies to NR) |
| 25 | GNSS | Global Navigation Satellite System |
| 26 | HFC | Hybrid Fiber Coax |
| 27 | L2 | Layer 2 |
| 28 | L3 | Layer 3 |
| 29 | LAA | Licensed Assisted Access |
| 30 | LBT | Listen Before Talk (applies to LAA) |
| 31 | LLID | Logical Link ID |
| 32 | LLS | Lower Layer Split |
| 33 | MAC | Media Access Control |
| 34 | O-CU | O-RAN Central Unit |
| 35 | O-DU | O-RAN Distributed Unit |
| 36 | O-RU | O-RAN Radio Unit |
| 37 | OLT | Optical Line Termination |
| 38 | ONU | Optical Networking Unit |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| 1 | OSS | Operations Support System |
| 2 | PCP | Priority Code Point |
| 3 | PON | Passive Optical Network |
| 4 | PTP | Precision Time Protocol |
| 5 | QoS | Quality of Service |
| 6 | Ra, R1, R2, R3, R4: | eCPRI reference points as shown in Figure 2-9 of [2] |
| 7 | SF | Service Flow |
| 8 | T-CONT | Transmission Container |
| 9 | TC | Traffic Class for IPv6 |
| 10 | Ta3, T34 | Transmission delays as defined in Figure 2-9 of [2] |
| 11 | TC(P) | Transport Control (Plane) |
| 12 | TDM | Time Division Multiplexing |
| 13 | TM(P) | Transport Management (Procedures) |
| 14 | TN | Transport Node |
| 15 | ToS | Type of Service for IPv6 |
| 16 | TPID | Tag Protocol Identifier |
| 17 | TU | Transport Unit |
| 18 | UDP | User Datagram Protocol |
| 19 | UE | User Equipment |
| 20 | VLAN | Virtual LAN |
| 21 | WDM | Wavelength Division Multiplexing |
| 22 |  |  |

</div>

# 1 4 Cooperative Transport Interface (CTI)

## 4.1 General Network Architecture and Mechanism

1. With reference to the O-RAN CUS [2] and O-RAN MP [3] specifications, the fronthaul reference architecture is extended
2. to include the cooperative transport interface and transport network, as depicted in Figure 4.1, where the new functions
3. ![]({{site.baseurl}}/assets/images/f37268d593ec.jpg)are defined as follows:

6

##### Figure 4.1 : CTI basic reference architecture

1. **Cooperative Transport Interface (CTI):** an O-RAN defined interface designed to support real-time and non-real time
2. cooperation between the eNB/gNB and the resource allocation based transport networks.
3. **Transport Network:** transfers lls-C/U/S and lls-M traffics between O-DU and O-RU.
4. **Transport Node (TN):** a master transport network node at O-DU side. A TN schedules one or multiple TUs to perform
5. resource allocation for upstream transmission. It also interfaces with O-DU via CTI and decodes T-plane messages in
6. order to coordinate its own scheduling with forward-looking traffic requirements communicated by O-DU.
7. **Transport Unit (TU):** a slave transport network node at O-RU side. The control and management interface between TN
8. and TU is out of scope of this document. 16
9. **CTI TC-plane:** (Transport Control plane). The TC-plane refers specifically to real-time Transport Control between the
10. CTI Client in the O-DU and the CTI Server in the TN..
11. **CTI TM (Transport Management)**. The TM Information Model / Data Model model refers to the configuration of
12. parameters for the CTI functionality on the O-DU, and to those CTI configuration parameters that need to be coordinated
13. between mobile SMO and transport network OSS. The purpose of CTI (TC-plane and TM model) is to support
14. cooperation between the O-DU and the TN in the transport network. 23
15. The interface between TN and TU is transport network specific and is out of the scope of this specification.
16. Figure 4.2 shows how the CTI relates to the transport network used for fronthaul. The uplink latency T34max is specified
17. between the R3 reference point of the O-RU and the R4 reference point of the O-DU. Note that additionally there could
18. be intermediate nodes (switches or routers) between the O-DUs and TNs (not shown in the figure). These nodes do not
19. interact with the CTI process. However, they can introduce extra latency, which need then to be subtracted from the
20. ![]({{site.baseurl}}/assets/images/9e28eab7b7bc.jpg)T34max limit to obtain the resulting latency budget for the TN-TU part of the transport network.

7

##### 8 Figure 4.2 : Detailed view of CTI

9

10

### 4.1.1 High Level CTI Message Flow

1. Figure 4.3 below illustrates a high level view of how CTI works. For simplification only a single O-RU and a single O-
2. DU are shown. The UEs are not shown in this figure. 14

![]({{site.baseurl}}/assets/images/15db15174ecf.jpg)15

16

##### Figure 4.3 : Message Flow for CTI in UL Operations

1. The actions and related message exchanges are as follows:
2. 1. O-DU determines UE grants for slot n.
3. 2. O-DU sends the CTI message to the TN to request fronthaul bytes for slot n, sufficiently in advance (see Figure
4. 6.1 for background).
5. 3. O-DU sends DL U-plane and C-plane data (packets) for slot n.
6. 4. O-DU sends C-plane data to the O-RU indicating commands for reception of slot n.
7. 5. Upon receiving UL data from its UEs in symbols of slot n, O-RU sends U-plane data (possibly also C-plane
8. data). Data is then buffered in TU until step 6.
9. 6. TN grants to the corresponding TU based on the CTI message.
10. 7. TU transports UL U-plane (and possibly C-plane) packets to the TN when receiving grants from step 6.
11. 8. After transport from TU to TN and from TN to the O-DU, UL U-plane (and possibly C-plane) packets arrive at
12. the O-DU.

11

1. Steps 3 and 4 may occur around the same time in any order. Step 2 may occur independently of the time of steps 3 and 4.
2. Step 5 occurs per OFDM symbol carrying UL data. The frequency of occurrence of steps 6 + 7 depends on TN
3. implementation. A step 7 is followed by a step 8.
4. Note: the symbols which carry data and the symbol duration can vary depending on the use case, this is not shown on this
5. simplified diagram
6. Since the O-RU sends the IQ data in the form of U-plane packets every OFDM symbol time rather than queuing the data
7. and sending them at the end of the slot, the TN is able to schedule transport grants each time U-plane packets arrive at the
8. TU. Doing so reduces the latency on the transport link, compared to scheduling grants only at the end of a slot. The
9. frequency of the transport grant is up to the TN implementation (each grant can provide transport network resource for
10. fronthaul packets pertaining to 1 symbol, more than 1 symbol, or a slot), and depends in part on the granularity of the TN
11. scheduling interval.

### 4.1.2 Packet-based Transport Network topologies supported by CTI

1. The simplest way to provide connectivity for Fronthaul is to provide one point-point link (e.g. optical fiber) between each
2. O-RU network interface and its correspodning O-DU. One O-DU can serve multiple O-RUs, and each O-RU can have
3. multiple network interfaces and multiple radio carriers (which may also be known as cells). The upstream radio traffic in
4. the radio carriers is scheduled by O-DU schedulers. In such case there is no sharing of transport resources, each connection
5. ![]({{site.baseurl}}/assets/images/403dc9f87a8f.jpg)has its dedicated bandwidth and physical link, the CTI mechanism is not required.

29

##### Figure 4.4 : Direct interconnections between multiple O-DUs and multiple O-RUs over point-point links

1. Things change when a packet-based transport network is used to interconnect the O-DUs and their corresponding O-RUs.
2. The use of CTI targets transport networks that contain Transport Nodes (TNs) that terminate one or multiple shared
3. distribution networks, where each distribution network (one port on one TN) aggregates multiple Transport Units (TUs).
4. This implies that the bandwidth of a distribution network is shared among multiple TUs. In the upstream direction, the
5. TN manages this sharing by scheduling bandwidth allocations to the multiple TUs.
6. The concept of CTI can be applied to inform the relevant Transport Nodes (TN) of the required uplink traffic load and
7. traffic timing that each O-RU to O-DU connection will have to carry. There is a need to uniquely indentify the
8. corresponding connection in each traffic request being signaled over CTI. This identifier is added by the O-DU, and shall
9. be commonly known by both the O-DU and TN. However, the identifier should be agnostic of any TN-technology-
10. specific parameters in order to maintain general applicability of the concept to any technology. The TN then has the
11. responsibility to translate this generic identifier into its own technology-specific parameters, e,g. a Transmission
12. Container (T-CONT) or Logical Link ID (LLID) for PON (the TN being an OLT) or a Service Flow (SF) for DOCSIS
13. (the TN being a CMTS).
14. The uniqueness of the identifier shall allow for multiple architecture use cases, whereby the O-DU should not be
15. dependent on the underlying Transport Network topology. The different architecture use cases are illustrated in Figure
16. 4.5. Basically, O-DUs and TNs may be connected in multiple ways (each O-DU may connect to multiple TNs, each TN

![]({{site.baseurl}}/assets/images/ef61fc1c4dfb.jpg)12 may connect to multiple O-DUs).

13

1. **Figure 4.5 : Possible interconnections between multiple O-DUs and multiple O-RUs over a transport network**
2. **consisting of a multitude of Transport Nodes (TNs) and their corresponding shared distribution networks with**
3. **multiple Transport Units (TUs).**
4. Basically, a "fronthaul traffic flow" is a flow of packets that requires a given capacity and latency limit. A unique
5. identification is needed in the TN to convert a request for a fronthaul traffic flow into a scheduling action on the
6. corresponding managed entity (Traffic Container / alloc-ID or Logical Link ID in PON or Service Flow in DOCSIS) on
7. the corresponding TU (PON ONU or DOCSIS CM).
8. The unique identification consists of two parts. The first is called "CTI Session ID" and refers uniquely and globally to a
9. specific O-RU physical interface (used by one or multiple radio carriers). In case there is no differentiation beyond the
10. O-RU physical interface, the CTI Session ID is sufficient. The second is called "Flow ID", which allows to differentiate
11. and report different fronthaul flows per CTI session. The CTI Flow ID is unique only within the context of its CTI Session
12. ID, the same CTI Flow IDs may be re-used across different sessions. See section 5 for more details.
13. Examples of using the CTI Session ID and CTI Flow ID are shown in Figure 4.5:
14. ? O-RU 1: 1:1 mapping between one O-DU scheduler and one O-RU interface (single radio carrier instance),
15. carrying a single flow. A single CTI Session ID is sufficient. A single report is communicated.
16. ? O-RU 2: 1:1 mapping between one O-DU scheduler and one O-RU interface (single radio carrier instance),
17. carrying multiple flows. A single CTI Session ID is sufficient. Multiple reports with different Flow IDs may be
18. used to differentiate the flows.
19. ? O-RU 3 and O-RU 4: Multiple O-RUs being served by a single TU, each with 1:1 mappings between an O-DU
20. scheduler and an O-RU interface. Each O-RU has one different CTI session ID.
    1. ? O-RU 5: N:1 mapping between multiple radio carrier instances (e.g. multiple sectors, multiple frequency bands)
    2. and one O-RU interface. A single message may be used, with a single CTI Session ID reporting the sum of the
    3. different radio carrier loads. Alternatively, multiple messages (from a single or from multiple CTI clients) may
    4. also be used, which are then interpreted together by the TN.
    5. ? O-RU 6: Multiple 1:1 mappings between one O-DU scheduler and one O-RU interface, on the same O-RU and
    6. TU. One CTI Session ID is used per O-RU interface.
    7. Notes
    8. ? These high-level use cases may also be combined together (e.g. Multiple flows on multiple O-RU interfaces).
    9. The protocol also supports such combined use cases.
    10. ? The use case of multiple network interfaces per radio carrier (for bonding or redundancy purposes) is out of scope
    11. of this version on CTI. This specification only considers a single network interface per radio carrier. In case of
    12. multiple radio carriers, it is assumed in this specification that each uses a single O-RU network interface (which
    13. could be the same as the other radio instances, or a dedicated one (like O-RU 6 in Figure 2-5).
    14. ? The CTI client side generating the CTI reports may be implemented as multiple instances per O-DU.
    15. ? The CTI server side treating the CTI reports may be implemented as multiple instances per TN.
    16. There are two possible ways to populate the CTI Session IDs in the O-DUs and TNs, either statically by means of
    17. preconfiguration via their OAM systems, or dynamically by means of an auto-discovery mechanism (see section 5.2.1).
    18. The CTI operation between the O-DU and the TN is specified independently of the configuration method of the CTI
    19. Session IDs.

### 4.1.3 Forwarding and addressing of CTI messages

* 1. The CTI messages generated by a CTI instance in the O-DU shall be forwarded to and addressed to the corresponding
  2. CTI peer in the corresponding TN. Depending on the interconnection between the O-DUs and the TNs, CTI messages are
  3. encapsulated at Layer 2 or at Layer 3:
  4. ? Point to point links; Layer 2 or Layer 3
  5. ? Ethernet switches; Layer 2 or Layer 3
  6. ? IP Routers; Layer 3
  7. Encapsulation details are described in section 5.1.

## 4.2 Information Required for Cooperative Transport

### 4.2.1 From O-DU to Transport

* 1. The O-DU needs to convey the bandwidth needs per O-RU interface per time interval with a unique identifier of the
  2. traffic being reported. There is also the option to convey information about load patterns inside the reported time interval.
  3. A report carries the following information;
  4. ? Time interval End (time at which all fronthaul packets pertaining to that time interval have been sent by the O-
  5. RU)
  6. ? Time interval Start (time at which fronthaul packets pertaining to that time interval start to be sent by the O-RU)
  7. ? CTI Session ID + optionally Flow ID
  8. ? Required load for the time interval of the session (and flow in the session)
     1. The TN needs to correlate the unique identification (CTI Session ID + optionally Flow ID) to a corresponding unique
     2. traffic container on a corresponding TU. The TN needs to interpret the required load and convert it to bandwidth
     3. allocations corresponding to the reported time interval.
     4. The TN should also be aware of the latency budget it has available per O-RU interface (or per flow per O-RU interface
     5. in case of differentiation between multiple flows). This is the portion of T34max for the TN-TU segment. It allows the
     6. TN to give relative priorities between the fronthaul connections it manages. As this parameter is a fixed value, it is not
     7. carried in CTI messages but should be configured on the TN by its OAM.

### 4.2.2 From Transport to O-DU

* + 1. Uplink CTI messages may be used for the specific case of notification of PON ranging (see Annex A.1.4 for background
    2. on PON ranging). The uplink interruptions caused by PON ranging will be felt in the O-DU as jitter or packet drop on the
    3. upstream fronthaul packets. In worst case, the interruptions can be in the order of several hundreds of us.
    4. Such relatively short interruptions will not cause an outage of the radio system (no action by the network, no radio link
    5. interruption), but can still have detrimental effects, depending on whether the data is protected by HARQ and on the way
    6. the O-DU would react to the perceived jitter or loss.
    7. However, an adaptive RAN scheduler might conclude the degradation is due to an impaired radio channel, which would
    8. be inappropriate and could lead to wrong reactions by the O-DU, further degrading performance. To avoid this, the O-
    9. DU can benefit from knowing when the uplink is subject to interruptions due to the transport network.
    10. A specific CTI signaling message is defined in section 5.1.3.1 that allows the TN (OLT) to notify the O-DU about an
    11. upcoming ranging event. One event has a maximum duration and contains a series of interruptions. A PON ranging
    12. notification carries the following information;
    13. ? Event start and Maximal Event duration in which ranging interruptions will occur
    14. ? Maximal duration per interruption (corresponding to the quiet window size on the PON)
    15. ? List of CTI Session IDs impacted by the ranging event
    16. The CTI Server in the TN (OLT) sends a ranging notification for a PON to every CTI Client that manages one or multiple
    17. CTI sessions on that given PON.
    18. The notification message has to arrive at the O-DU at least 10 ms in advance of the event. The O-DU is free to apply
    19. ![]({{site.baseurl}}/assets/images/e5612885bb3d.jpg)whatever proprietary action after reception of the ranging notifications.

28

1. **Figure 4.6 : Notification of PON ranging upstream interruptions**

## 4.3 Calculation of CTI reports by O-DU

### 4.3.1 Required load

1. Uplink fronthaul traffic from O-RU to O-DU can consist of U-plane, C-plane, and M-plane packets. The load reporting
2. by CTI has to allow the TN to follow the traffic variations over time, but this needs prediction of this traffic.

#### 1 4.3.1.1 U-plane

1. The U-plane uplink traffic can be predicted by the O-DU based on the decisions made by the RAN schedulers and other
2. processes. As the TN only handles aggregate traffic from the O-RUs, the O-DU shall provide information about the
3. aggregate traffic load over all UEs per O-RU interface (and optionally per flow per O-RU interface) at a given time
4. interval. The prediction accuracy depends on the capability of the O-DU to estimate the processes (e.g. compression)
5. done by the O-RU. The O-DU shall take enough margin so as to not underestimate the actual traffic being generated
6. (underestimation leads to accumulated buffering hence latency and loss). On the other hand, the O-DU should keep the
7. margin as low as possible in order to reduce overestimation (overestimation reduces the efficiency of the transport
8. system).
9. The CTI protocol allows for differentiating between different flows on the same O-RU interface. Each flow is linked to a
10. Layer 2 and/or Layer 3 mapping.
11. For cases where one O-RU (or O-RU interface) aggregates fronthaul traffic from multiple RAN schedulers (e.g. multiple
12. sectors), the O-DU shall be able to report the full traffic load for the O-RU (or O-RU interface) in an aggregated message,
13. or in separate messages, and the TN has to interpret all information for the O-RU (or O-RU interface).

#### 4.3.1.2 C-plane

1. Uplink C-plane messages are not present except for the special case of Licensed Assisted Access (LAA). If LAA is used,
2. the C-plane uplink traffic consists of messages for Listen Before Talk (LBT). LBT is performed per carrier. There can
3. be more than one carrier per RU. It is expected that typical deployments will be maximum 4 carriers. The LBT process
4. depends on the channel utilization and is hence unpredictable, but it is possible to determine the following worst-case
5. assumptions:
6. - Repetition of LBT\_PDSCH\_RSP every subframe (1ms) of (message size 25 Bytes). With max 4 carriers this
7. gives 4 such messages per subframe.
8. - Repetition of the other messages LBT\_DRS\_RSP, LBT\_Buffer\_Error, LBT\_CWCONFIG\_RSP (message sizes
9. of 21 Bytes) is much less, the assumption is one of those messages every subframe (1ms)
10. - Assuming transport over UDP/IPv4/tagged Ethernet gives encapsulation overhead of 50 Bytes per message
11. - Full burstiness; the O-RU sends these 5 messages back-to-back close to the end of the subframe, but exact timing
12. can vary.
13. - The average C-plane uplink load is 3 Mbit/s per O-RU. 29
14. In terms of latency, there are two aspects to take care of. First, the typical latency requirement for LBT C-plane messages
15. themselves is 0.5ms (minus some margin for processing). Second, the presence of uplink C-plane messages may not push
16. the latency of uplink U-plane messages above their tolerance threshold.
17. There are two ways to accommodate for the uplink C-plane messages; 34

##### Including C-plane traffic in CTI messaging

1. The C-plane may be part of the CTI reporting when the CTI client continuously adds a certain fixed bandwidth (eg based
2. on the above worst-case example) for the C-plane traffic in all its reports. The advantage is that the transport network
3. does not need to be aware of the nature of such traffic and does not need extra configuration, and the O-DU can use a
4. simple constant term in its calculations.
5. Such allocated bandwidth for C-plane messages shall ensure that they are not buffered too long, so that their latency is
6. respected (assuming 0.45ms for including processing time). In the example above this requires to include enough extra
7. bandwidth in each report to transmit 3 Mbit/s in less than 0.45ms, being an extra bandwidth of at least 6.6 Mbit/s.
8. (Because the exact timing of the LBT messages is not known, even if the CTI reporting would be more frequent than the
9. frequency of LBT messages (1ms), it would not be accurate to estimate which report would be capturing the LBT
10. messages, so the extra bandwidth shall be granted in each report).
11. The impact of C-plane on U-plane latency is due to the sharing of the same TU buffer for U-plane and C-plane packets,
12. and the TDM nature of the transport network (bandwidth allocation is not (fully) done by line rate adjustment but (also)
13. by TDM burst adjustment). C-plane packets in the head of the queue will impact U-plane packets behind them. U-plane
14. traffic typically has stricter transport latency requirements than the 0.5ms (or 0.45ms) for the C-plane traffic.
    1. - If the U-plane bandwidth gets small compared to the C-plane bandwidth and the combined allocated bandwidth
    2. is just their sum, then the C-plane packets could block the U-plane packets behind them for too long before being
    3. transmitted. Hence a floor value of allocated bandwidth (even if U-plane traffic would be very low) could be
    4. needed.
    5. - Most of the time the U-plane traffic is much higher than the C-plane traffic, but even so if the allocated bandwidth
    6. is just the sum of C- and U-plane traffic, the U-plane traffic could need more TDM bursts to be fully transmitted
    7. than without the C-plane traffic. This increases latency. Using a higher value than the actual C-plane traffic as
    8. the extra term in the CTI report calculation could be needed to reduce this impact. This has to be estimated
    9. depending on the technology of the Transport network and the latency requirements. 10
15. In summary, this approach may be chosen by configuring at the CTI client (per CTI session ID) a parameter for a fixed
16. extra bandwidth (#bytes to be added per report) and a parameter for a minimum total bandwidth (minimum #bytes to be
17. used per report independently of the actual need). The CTI server and TN is not aware of the differences between U-plane
18. and C-plane.

15

##### Separate transport flows for uplink C-plane traffic and uplink U-plane traffic

1. Alternatively, for full latency isolation of C-plane and U-plane traffic, the transport system may offer a dedicated and
2. fixed uplink transport channel that can be used for LBT messages. The C-plane packets would have to be uniquely
3. identified for classification to the transport flow (eg by means of PCP or DSCP marking). The C-plane traffic is then
4. decoupled from the CTI reporting, CTI only handles U-plane uplink traffic in CTI-controlled transport channel. The U-
5. plane traffic will not share the same TU buffer and will experience latency impact from the C-plane traffic.
6. The transport system should provide a dedicated bandwidth to the C-plane transport channel that provides sufficiently
7. low latency. This requires the O-RU to be configured to apply differentiated marking between C-plane and U-plane traffic,
8. and coordination between Transport and Mobile management systems to configure an appropriate value of the dedicated
9. C-plane transport channel bandwidth. In CTI messages there is no need to take C-plane traffic into account, so the fixed
10. extra bandwidth and minimum total bandwidth may be set to 0 in the configuration of the CTI client. 27

#### 4.3.1.3 M-plane

* + 1. The M-plane uplink traffic is not fully predictable by the O-DU. However, that traffic is much less latency-sensitive and
    2. can be differentiated by different Layer 2 or Layer 3 marking from U-plane and C-plane. It may be kept out of CTI
    3. reporting and transported separately from the U-plane and C-plane traffic by the TN.

### 4.3.2 Time interval of the reported load

* + 1. The TN shall be informed about the time interval in which the reported load will be arriving at the TU interface. Each
    2. CTI message can carry the start and end of uplink fronthaul transmission on the O-RU R3 interface (please see section
    3. 5.1.4.2 and 5.1.4.3).
    4. There is an inherent O-RU latency Ta3 between the antenna interface Ra and the uplink reference point R3, characterized
    5. by the O-RU category with a margin of 20us or 50us (See Table B-5 in O-RAN CUS [2]). The O-DU is aware of the
    6. category per O-RU.
    7. In CTI a time of day is communicated as a Base time (granularity in ns) + an Offset (granularity in us), see section 5.1.4.1.
    8. Accuracy of time references (Base + Offset) shall be better than half the category margin, namely 10us (-5us/+5us). 41

### 4.3.3 Exchange rate of CTI Reporting

#### 4.3.3.1 Equipment capability (CTI\_MIN)

1. Depending on the implementation, the CTI Client(s) on an O-DU can be limited by a maximum generation rate of CTI
2. messages, and the TN can be limited by a maximum reception rate of CTI messages. When using a given combination of
3. O-DU and TN, the applied CTI message exchange rate shall be supported by both sides.
4. In order to select a workable CTI exchange rate between a given O-DU and a given TN, the supported capability of the
5. O-DU and TN has to be known. This is expressed as a performance parameter CTI\_MIN for the O-DU and for the TN.
6. CTI\_MIN represents the minimal supported spacing between two CTI messages. When an equipment supports a given
7. CTI\_MIN, higher values shall also be supported. The CTI\_MIN values can be categorized as in Table 2-1. For example
8. a device with CTI\_MIN higher than 0.5ms and lower or equal to 1 ms falls in category 3. It shall also be able to behave
9. as a device of category 1 or 2.

##### Table 2.1 : CTI message rate categories for O-DU or TN

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Category** | **Capability of equipment: supported message interval** |
| 1 | 5 ms |
| 2 | 2 ms |
| 3 | 1 ms |
| 4 | 0,5 ms |
| 5 | 0,25 ms |

</div>

13

1. When a CTI\_MIN value is specified at O-DU level, it means all active CTI clients on the O-DU shall support the rate,
2. e.g. when multiple clients are used for a same Session ID they have to operate at the same message exchange rate.
3. Alternatively CTI\_MIN can be specified per CTI client instance.
4. Note that a category only represents a capability, it does NOT mandate the use of that particular value as actual CTI
5. message exchange rate. The selection of the actual rate is described hereunder.

#### 4.3.3.2 Determining common nominal CTI rate (CTI\_NOM)

1. A common CTI rate shall be selected for a given combination of O-DU and TN and a given mobile slot duration. The
2. common rate is a nominal value for the spacing between two messages, expressed as CTI\_NOM.
3. In principle, the maximum CTI exchange rate that is ever needed is one reporting message per mobile slot duration, as
4. this is the granularity at which the RAN schedulers can allocate traffic. But such high exchange rate will not always be
5. possible or even needed. If the common CTI rate is less than once per every mobile slot, multiple mobile slots have to be
6. grouped in the same CTI reporting message, so CTI\_NOM shall always follow an integer number (N >= 1) of mobile slot
7. units. CTI\_NOM shall comply to both of the following:
8. 1) Shall be supported by O-DU and TN:
9. CTI\_NOM >= max(CTI\_MIN(O-RU), CTI\_MIN(TN))

29

1. 2) Shall be a multiple of mobile slot duration:
2. CTI\_NOM = N x (mobile slot duration), where N is a non-zero integer, and depends on the latency requirements. 32
3. Example: Assuming a mobile slot of 0.5ms, if an O-DU supports a CTI\_MIN of 0.5ms and a TN supports a CTI\_MIN of
4. 1ms, the fastest common CTI exchange rate would be CTI\_NOM = 1ms (containing 2 mobile slots). However, if the
5. required latency can still be reached by applying a higher CTI\_NOM like 1.5ms (3 mobile slots) or 2ms (4 mobile slots),
6. it is allowed to use such larger values as well.
7. CTI\_NOM has to be interpreted as follows:
8. - If no load is to be reported for some period, CTI messages don't need to be sent at CTI\_NOM rate, so the spacing
9. may be larger. Keepalives are still exchanged periodically in any case. See section 5.2.2 for background.
   1. - CTI\_NOM represents an average rate and not a strict message spacing, there may be some jitter on CTI messages
   2. themselves, see section 4.2 for background. 3
10. The sequence number inside each CTI message can be used to detect the drop of a CTI message. Further actions for
11. missing or out-of-order sequence numbers are not specified in this specification. 6

7

# 1 5 CTI Message Protocol

1. This section describes the mandatory functions of the CTI protocol. Figure 5.1 is a reference diagram that includes the
2. ORAN system and transport system functional blocks. The transmission system could be a PON or DOCSIS transport
3. system.

5

![]({{site.baseurl}}/assets/images/f8d4265e089c.png)![]({{site.baseurl}}/assets/images/012fa03bf3ec.png)![]({{site.baseurl}}/assets/images/9771b07afdb9.png)

6

![]({{site.baseurl}}/assets/images/74da7dd777a1.png)

##### Figure 5.1 : Fronthaul Reference Diagram

1. The O-RU can have one or more carriers (e.g., multiple antennas, multiple sectors), each corresponding to one eAxC and
2. one RAN scheduler. One RAN scheduler can manage multiple carriers. The O-RU can also have one or more network
3. interfaces between itself and the TU. The O-RU is responsible for associating byte streams from each carrier
4. (antenna/sector) to a unique network interface. The CTI message describes the byte flow across a single network interface.
5. Requirements are only listed for the ORAN components. This document provides the expectation on the transport
6. network. Any parameter quoted as having a value "N" is a variable that is unique per usage. Note that N:1 and N:N in the
7. above figure indicate many to 1, and many to many relations, respectively.

## 5.1 CTI Packet Format

1. The bit order and Byte order in which all CTI messages are transported shall follow the order shown in Figure 5.2.
2. ![]({{site.baseurl}}/assets/images/73344226fa1c.png)

##### Figure 5.2 : Order of transmission of CTI messages

19

1. The O-DU shall support Ethernet II as Layer 2, including the tagging aspects:
2. ? untagged Ethernet
3. ? single tagged (802.1Q) Ethernet
4. ? dual-tagged (802.1ad) Ethernet
5. Use of Ethernet by the O-DU is mandatory. The choice of tagging is left to the operator.
6. Support of IPv4 as Layer 3 is mandatory in the O-DU. Use of IPv4 or IPv6 by the O-DU is optional. When IPv4 or IPv6
7. is used, CTI is carried over UDP.
8. The CTI messages are exchanged between the CTI client located in the O-DU and the CTI server located in the TN. A
9. message is either sent from the O-DU to the TN or from the TN to the O-DU.
10. The CTI client and CTI server shall format the CTI messages specified in Figure 5.3 and Table 5.1, Table *5*.*3*, and Table
11. ![]({{site.baseurl}}/assets/images/c9c67cc8cb17.png)*5*.*7*.

5

1. **Figure 5.3 : CTI Message Format.**
2. **The message is either transported over UDP/IP over Ethernet (using IPv4 or IPv6 Ethertype), or directly over**
3. **Ethernet (using O-RAN Ethertype and O-RAN Protocol subtype).**
4. When IP is not used, the fields are (example for 802.1Q):
5. ? Ethernet MAC destination address is the MAC address of the CTI message receiver
6. ? Ethernet MAC source address is the MAC address of the CTI message sender
7. ? 802.1Q TPID value 0x8100 which indicates the presence of a VLAN header
8. ? 802.1Q PCP is determined by configuration
9. ? 802.1Q VLAN ID is determined by configuration
10. ? EtherType has value of 0x9433, dedicated for use by O-RAN.
11. ? A 2-byte Protocol subtype. The protocol subtype for CTI is 0x0001. 8
12. When IP is used, the fields are (example for 802.1Q):
13. ? Ethernet MAC destination address is the MAC address of the CTI message receiver corresponding to its IP
14. address (or the interface of the next hop router)
15. ? Ethernet MAC source address is the MAC address of the CTI message sender corresponding to its IP address (or
16. the interface of the last hop router)
17. ? 802.1Q TPID value 0x8100 which indicates the presence of a VLAN header if it is included
18. ? 802.1Q PCP is assigned by the operator
19. ? 802.1Q VLAN ID is assigned by the operator
20. ? EtherType is value 0x0800 (IPv4) or 0x86DD (IPv6)
21. ? IPv4 ToS / IPv6 TC is assigned by configuration
22. ? IPv4 Protocol Field = UDP ; IPv6 Next Header Field = UDP
23. ? the IP source address is the IP address of the sender
24. ? the IP destination address is defined by the sender's OSS System
25. ? the UDP source port is defined by the sender's OSS System, and
26. ? the UDP destination port is defined by the sender's OSS System
27. The contents of the payload (Ethernet or UDP) contain the CTI message elements as described in Table 5.1, followed by
28. an optional CTI Signature, as defined in Section 5.1.5. *The optionality of the CTI Signature and how it is configured is*
29. *for a future release of this specification.*
30. For processing simplicity at TN, a CTI message shall not be fragmented over multiple packets or frames.
31. *Note that the configuration of L2/L3 parameters for CTI transport is described in O-RAN CTI TMP [4].*

### 5.1.1 CTI Message Format

1. A CTI message either conveys CTI reports or CTI signaling. In both cases, the message has a common message header.
2. For CTI report (CTI-Report) message, the CTI message common header is followed by a single report body. For CTI
3. signaling (CTI-Signaling) message, the CTI message common header is followed by single signaling body, as shown in
4. Figure 3-4.

34

![]({{site.baseurl}}/assets/images/05992b9e3470.jpg)

1

##### Figure 5.4 : Structure of CTI-Signaling Messages and CTI-Report Messages

3

1. A CTI report body may contain one or more report entries. Each report entry describes one CTI flow or one Pattern of
2. one CTI flow. A CTI flow could correspond to a CoS. A CTI report body can describe:
3. ? One or more mobile slots with a single report entry
4. ? More than one mobile slots with multiple report entries
5. ? One or more flows within a mobile slot by using multiple report entries
6. ? One of more flows across multiple mobile slots by using multiple report entries
7. The typical packet length would be as follows.
8. ? (22+20+8+8+9+6) 73 bytes for IPv4 over 802.1Q, 1 CTI Type 1 Row with no CTI Type 1 Extension Row and
9. no CTI Signature
10. ? (22+20+8+8+9+4\*6) 91 bytes for IPv4 over 802.1Q, 4 CTI Type 1 Rows with no CTI Type 1 Extension Row
11. and no CTI Signature
12. ? (22+40+8+8+9+4\*6) 111 bytes for IPv6 over 802.1Q, 4 CTI Type 1 Rows with no CTI Type 1 Extension Row
13. and no CTI Signature

### 5.1.2 CTI Common Header

##### Table 5.1 : CTI Message Common Header

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Information Element** | **Size** | **Description** |
| **CTI Common Header (8 bytes)** | | |
| Protocol Version | 4 bits | Version number of CTI message |
| Reserved | 2 bits | Reserved. Sender sets all bits to zero. Receiver ignores all bits |
| Header Format | 1 bit | 0 = CTI signaling body  1 = CTI report body |
| CTI Signature | 1 bit | 0 = Signature is not attached  1 = Signature is attached |
|  |  |  |
| Sequence number | 8 bits | Used for detecting dropped messages |
| CTI Session ID | 6 bytes | Globally unique network interface ID  0x00 0x00 0x00 0x00 0x00 0x00 : null session |

</div>

19

1. The version field is set to 1, referring to the current version of CTI TC-plane specification.
2. The header format bit indicates the nature of the message body.
3. The CTI Signature bit indicates if the signature is attached to the current message.
4. The sequence field is incremented by one for each CTI message sent and continuously wraps after a count of 256.
5. The CTI Session ID is a globally unique identifier. Typically, it corresponds to MAC address of the O-RU's physical
6. interface for which the bytes traverse that the CTI message describes. If the sender does not have a valid CTI Session ID,
7. the null session is inserted.

### 5.1.3 CTI Signaling Messages

1. The CTI signaling message types and the body content each type contains are listed in Table 5.2.

##### Table 5.2 : CTI Signaling Messages

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **CTI Signaling Message** | **Signaling Body Content** |
| CTI-Beacon | The CTI-Beacon is sent from the O-DU to the TN. Shall contain:   * Message Type, Length |
| CTI-Beacon-Ack | The CTI-Beacon-Ack is sent from the TN to the O-DU. Shall contain:   * Message Type, Length |
| CTI-Keep-Alive | The CTI-Keep-Alive is sent between the O-DU and the TN. Shall contain   * Message Type, Length |
| TN Ranging Notification | The TN ranging notification is sent from the TN to the O-DU Shall contain   * Message Type, Length * TN Ranging TLVs |

</div>

7

#### 5.1.3.1 CTI Signaling Body

##### Table 5.3 : CTI Signaling Body

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Information Element** | **Size** | **Description** |
| Message Type | 1 byte | CTI Signaling Message Type  0 = CTI-Beacon  1 = CTI-Beacon Ack  2 = CTI-Keep-Alive  3 = TN Ranging Notification (RN) The values of 4 to 255 are reserved |
| Length Field | 2 bytes | Length field from the next byte to the end of the TLV field. |
| Parameter Field | N | Nested TLVs |

</div>

10

1. The signaling body is used to send information that is not request information between the CTI server and CTI client. A
2. signaling message shall not span more than one Ethernet frame.

#### 5.1.3.2 CTI Signaling TLVs

14

##### Table 5.4 : CTI Signaling TLVs

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Type** | **Length** | **Value** |
| 1 | 4 | TN Ranging Start Time, PTP format, seconds field |
| 2 | 4 | TN Ranging Start Time, PTP format, nanoseconds field |
| 3 | 3 | TN Ranging Maximum Event Duration, in units of 1.024 us |
| 4 | 1 | TN Ranging Maximum Interruption Size, in units of 2.048 us |
| 5 | Variable N+1 | TN Ranging Impacted Sessions |
| 5.1 | 1 | TN Ranging Amount of Session IDs |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| 5.2 | Variable N | TN Ranging List of Session IDs |

</div>

1

1. Table 5.4 shows TLVs within their hierarchy. The type expression "x.y.z" would refer to a sub-type value of "z" that is
2. contained within a next higher level TLV with a sub-type of "y" which in turn is contained within a top level TLV of type
3. "x". The type field and length field are always one byte in size. The value in the length field is the length of the value
4. field. A length of "N" indicates a variable size of the corresponding value field.

#### 5.1.3.3 Examples of CTI Signaling Messages

1. **Table 5.5** and **Table 5.6** illustrate the structure of some example messages.

##### Table 5.5: Example of CTI-Beacon-Ack Signaling Message

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Name** | **Length (value)** |
| [Header] Version nb | 4 bits |
| [Header] Reserved | 2 bits |
| [Header] Header format | 1 bit (value = 0) |
| [Header] CTI signature | 1 bit |
|  |  |
| [Header] Sequence number | 1 Byte |
| [Header] CTI session ID | 6 Bytes |
| [Body] Message type | 1 Byte (value = 0x01) |
| [Body] Length field | 2 Bytes (value = 0x00) |

</div>

9

##### Table 5.6: Example of TN Ranging Notification Signaling Message with 2 CTI Session IDs

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Name** | **Length (value)** |
| [Header] Version nb | 4 bits |
| [Header] Reserved | 2 bits |
| [Header] Header format | 1 bit (value = 0) |
| [Header] CTI signature | 1 bit |
|  |  |
| [Header] Sequence number | 1 Byte |
| [Header] CTI session ID | 6 Bytes |
| [Body] Message type | 1 Byte (value = 0x03) |
| [Body] Length field | 2 Bytes (value = 0x29) |
| [Body] TN ranging start time, s - T | 1 Byte (value = 0x01) |
| [Body] TN ranging start time, s - L | 1 Byte (value = 0x04) |
| [Body] TN ranging start time, s - V | 4 Bytes |
| [Body] TN ranging start time, ns - T | 1 Byte (value = 0x02) |
| [Body] TN ranging start time, ns - L | 1 Byte (value = 0x04) |
| [Body] TN ranging start time, ns - V | 4 Bytes |
| [Body] TN ranging max event duration - T | 1 Byte (value = 0x03) |
| [Body] TN ranging max event duration - L | 1 Byte (value = 0x03) |
| [Body] TN ranging max event duration - V | 3 Bytes |
| [Body] TN ranging max interruption size - T | 1 Byte (value = 0x04) |
| [Body] TN ranging max interruption size - L | 1 Byte (value = 0x01) |
| [Body] TN ranging max interruption size - V | 1 Byte |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| [Body] TN ranging impacted sessions - T | 1 Byte (value = 0x05) |
| [Body] TN ranging impacted sessions - L | 1 Byte (value = 0x13) |
| [Body] TN ranging amount of session IDs - T | 1 Byte (value = 0x01) |
| [Body] TN ranging amount of session IDs - L | 1 Byte (value = 0x01) |
| [Body] TN ranging amount of session IDs - V | 1 Byte (value = 0x02) |
| [Body] TN ranging list of session Ids, nb1 - T | 1 Byte (value = 0x02) |
| [Body] TN ranging list of session Ids, nb1 - L | 1 Byte (value = 0x06) |
| [Body] TN ranging list of session Ids, nb1 - V | 6 Bytes |
| [Body] TN ranging list of session Ids, nb2 - T | 1 Byte (value = 0x02) |
| [Body] TN ranging list of session Ids, nb2 - L | 1 Byte (value = 0x06) |
| [Body] TN ranging list of session Ids, nb2 - V | 6 Bytes |

</div>

1

2

### 5.1.4 CTI Report Body

##### Table 5.7 : CTI Report Body

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Information Element** | **Size** | **Description** |
| **CTI Report Message Body (9 bytes)** | | |
| CTI Base seconds | 32 bits | Absolute time value directly derived from the 1588v2 timestamp based on the lower four bytes of the PTP "seconds" field and the full value of the PTP "nanoseconds" field. The value typically corresponds to a slot boundary on the O-RU antenna interface. |
| CTI Base nanoseconds | 32 bits |
| CTI Table Size | 8 bits | Total number of row entries: CTI Type 1 rows + CTI Type 1 Extension rows (if present) + CTI Type 2 Row (if present) |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **CTI Type 1 Row (Repeated, N\*6 bytes)** | | |
| Flow ID | 8 bits | User-defined Flow ID, valid range 0x00 to 0xEF. This ID is agreed upon by TN and O-DU. |
| End Time Offset | 16 bits unsigned | Offset in units of 210 nanoseconds (1,024 us) that is added to the Base nanoseconds value to obtain when the last bit of the requested bytes will egress the R3 reference point of the O-RU. |
| Bytes Requested | 24 bits | Bytes per Flow ID per time interval that cross the O-RU Network (Ethernet) Interface |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **CTI Type 1 Extension Row (6 bytes, optionally included after a CTI Report)** | | |
| Extension Field | 8 bits | Value = 0xFF |
| Start Time Offset | 16 bits unsigned | Offset in units of 210 nanoseconds (1,024 us) that is added to the Base nanoseconds value to obtain when the subinterval described by the pattern ID begins on the network interface of the O-RU (R3 reference point). |
| CTI Pattern ID | 24 bits | Pattern ID within a subinterval that begins with start time and ends with the End Time Offset as indicated in the previous CTI Report. The subinterval typically corresponds to a 5G slot |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **CTI Type 2 Row (6 bytes, optionally included, once per CTI message)** | | |
| Extension Field | 8 bits | Value = 0xFE |
| CTI Message Generation Time | 16 bits signed | Offset in units of 210 nanoseconds (1,024 us) that is added to the Base nanoseconds value to obtain when the message is generated. This can be useful for TN to calculate message jitter. The upper most bit is signed. A "0" value represents a positive number while a "1" value represents a negative number. This creates a range of +/- 33,5 ms |
| Reserved | 24 bits | Reserved field |

</div>

5

1. A reporting message shall not span more than one Ethernet frame.

#### 5.1.4.1 CTI Time Format

1. The CTI message uses an abbreviated form of the ten-byte PTP timestamp format in its message header. The lower four
2. bytes are used to count nanoseconds and the upper four bytes are used to count seconds. CTI then uses a two-byte offset
3. in each row. This is shown in Figure 5.5. The two-byte offset has been chosen to have a minimum resolution of 1.024 us.
4. With a 16-bit offset field, the maximum resolution is 67.1 ms. The offset itself is in a power-of-two format that is
5. ![]({{site.baseurl}}/assets/images/0ed230bbdb9e.jpg)compatible with the nanosecond counter in the PTP timestamp so that the two values can be efficiently added together. 8

9

##### Figure 5.5 : CTI Offset per Row

1. Figure 5.6 shows the relationship between the CTI base timestamp and the various offsets. The start and end time offsets
2. are always positive values, while the message generation offset may be a positive or negative value. If the value of CTI
3. message generation time is negative, it indicates it is before the base time.

![]({{site.baseurl}}/assets/images/54c2cc64cb36.jpg)14

15

16

#### 5.1.4.2 CTI Type 1 Row

##### Figure 5.6 : Time offsets within the CTI message

1. Each Type 1 row represents a report entry and is used to request some number of bytes at some future time on a specific
2. CTI flow. Each CTI row entry includes a CTI Flow ID, the end time offset and the number of bytes requested. The CTI
3. Flow ID is defined via OSS and is common between the TN and the O-DU. The purpose of CTI Type 1 Row is to convey
4. the Requested Bytes (3 bytes in length) associated with a particular Flow ID and end time. The valid range of the Flow
5. ID is 0x00 to 0xEF. The value 0x00 indicates there is no differentiation between the flows and that the Flow ID does not
6. need to be interpreted by the CTI server. The reserved types range from 0xF0 to 0xFD, allowing the option to use 0xFE
7. to 0xFF to indicate special row extension types.
8. A CTI Flow corresponds to a flow of packets that can be identified with a set of unique L2 and/or L3 headers that all
9. traverse the same O-RU network interface and share the same QoS.
10. Typically, there is one CTI Flow ID per fronthaul flow, as designated by the eAxC header in the eCPRI message. CTI

2 may report each fronthaul flow individually. Alternatively, CTI may aggregate multiple fronthaul flows that are traversing

1. the same O-RU network interface into one CTI Flow ID.
2. The CTI message may also have more than one entry per CTI Flow ID. This allows for a lower frequency of CTI messages
3. to still cover multiple traffic intervals of the flow.

#### 5.1.4.3 CTI Type 1 Extension Row

1. The purpose of CTI Type 1 Extension Row is to convey the start time offset of the considered time interval and the
2. fronthaul traffic pattern descriptor (encoded as the CTI Pattern ID), as defined in Table 5.7.
3. The CTI client may include one or multiple Type 1 Extension Rows in a CTI message and shall respect following rules:
4. - A Type 1 Extension Row shall be included directly after a CTI Type 1 Row and such Type 1 Extension Row
5. then applies to all previous Type 1 Rows until a previous Type 1 Extension Row or the first Type 1 Row in the
6. message.
7. - The CTI client shall not include more than one CTI Type 1 Extension Row directly following a given CTI Type
8. 1 Row.
9. - The CTI client shall not include a CTI Type 1 Extension Row without a CTI Type 1 Row. 16
10. Examples of combinations of CTI Type 1 Rows and CTI Type 1 Extension Rows in a CTI report message are illustrated
11. below:

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **1 flow with 2 patterns** | Flow ID | End time offset | Start time offset | Pattern ID | Bytes requested |
| Type 1 Row  Type 1 Extension row | 1 | k | j | A | X |
| Type 1 Row  Type 1 Extension row | 1 | k | j | B | Y |

</div>

19

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **2 flows with single pattern per flow** | Flow ID | End time offset | Start time offset | Pattern ID | Bytes requested |
| Type 1 Row  Type 1 Row  Type 1 Extension row | 1  2 | k k | j | A | X Y |

</div>

20

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **2 flows with 2 patterns per flow** | Flow ID | End time offset | Start time offset | Pattern ID | Bytes requested |
| Type 1 Row  Type 1 Extension row | 1 | k | j | A | W |
| Type 1 Row  Type 1 Extension row | 1 | k | j | B | X |
| Type 1 Row  Type 1 Extension row | 2 | k | j | C | Y |
| Type 1 Row  Type 1 Extension row | 2 | k | j | D | Z |

</div>

21

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **1 flow with single pattern, multiple intervals** | Flow ID | End time offset | Start time offset | Pattern ID | Bytes requested |
| Type 1 Row  Type 1 Extension row | 1 | k | j | A | X |
| Type 1 Row  Type 1 Extension row | 1 | l | k | A | Y |

</div>

1

2

1. The Extension Field uses a reserved value of 0xFF to indicate that the current row is an extension row for fronthaul.
2. The start time of the CTI Type 1 Extension Row and the End time offset of its corresponding (preceding) CTI Type 1
3. Row(s) together define an interval (e.g., a mobile slot) whose traffic pattern may be described by the CTI Pattern ID field
4. in the CTI Type 1 Extension Row. See Figure 5.6 for the time offsets.
5. The use of the Pattern ID is optional: the Type 1 Extension Row may also be used to only communicate the start time of
6. the time interval without details of the traffic pattern, by using CTI Pattern ID value of 0.

#### 5.1.4.4 CTI Type 2 Row

1. The purpose of CTI Type 2 Row is to allow the measurement of message latency by the TN. The Type 2 Row is optional
2. and if used it shall only be included at the end of the CTI report body, with or without the presence of a CTI Type 1 Row.
3. The CTI client shall not include more than one CTI Type 2 Row per CTI message.
4. The Extension Field uses a reserved value of 0xFE to indicate that the current row is a special row.
5. The CTI message generation time (see Figure 5.6) is useful to calculate the transmission time of a CTI message and the
6. jitter between the CTI messages. The value is the offset from the CTI base nanoseconds value.

### 5.1.5 CTI Signature

1. The CTI Signature is an optional feature that prevents a CTI message from a malicious source (which might have cloned
2. an IP source address) from being accepted. A CTI message is sent in the clear followed by a CTI Signature. This permits
3. implementations to use the contents of the CTI message without having to decrypt or decode each packet. For example,
4. a system could be built in which the CTI message is received in real time but the CTI Signature is sampled on a random
5. basis and not verified in real time.
6. *The full details of the CTI Signature are for a future version of this specification.*

## 5.2 Operation

### 5.2.1 CTI Discovery & Configuration

1. For each CTI Session ID, several associations are required for proper CTI operation:
2. ? the TN shall have the association of CTI Session ID (pertaining to an O-RU interface) with the corresponding TU
3. interface
4. ? the TN shall have the association of CTI Session ID with the corresponding CTI client (in O-DU) to which it has
5. to communicate CTI-Beacon-Ack, CTI-Keep-Alive and possibly PON ranging notifications.
6. ? the O-DU shall have the association of CTI Session ID with the corresponding CTI server (in TN) to communicate
7. CTI reports and keepalives to.
8. Before the O-RU is installed, it is assumed that the OSS does not know which O-RU is associated with which transmission
9. system (TU, TN). Further, since fronthaul takes a lot of bandwidth on the transmission system, it has to be a provisioned
10. service. This section describes at least two ways that the two systems can learn of each other.
11. In both of these procedures, the transport system comes up and is initialized. This then provides connectivity for the
12. mobile system to come up and initialize. This implies that there is a least enough bandwidth on the transport system to
13. provide M-plane support between the O-RU and O-DU.
14. The next step is to then associate the mobile system with the transport system. The assumption is that the O-RU is an
15. arbitrary unit that gets installed at an O-RU location.

#### 5.2.1.1 Manual Discovery

![]({{site.baseurl}}/assets/images/f20af069a07b.png)![]({{site.baseurl}}/assets/images/6c72d460effb.png)![]({{site.baseurl}}/assets/images/6d028b0d702e.png)![]({{site.baseurl}}/assets/images/94f68e6bfe13.png)![]({{site.baseurl}}/assets/images/e405ffcf5f3b.png)

2

3

1. Proposed procedure:

##### Figure 5.7 : CTI Manual Discovery

1. 1. The installation technician interfaces with the OSS, either verbally or through a user interface, and enters identity
2. information for the O-RU interface and TU interface
3. 2. The TN OSS knows or is able to determine the association of the TU with the TN. The OSS system(s) initializes
4. the O-DU and TN. The TN has the association of TU interface with O-RU interface (its CTI Session ID). The
5. O-DU has the association of O-RU with TN (its CTI server)
6. 3. CTI messaging can commence between the O-DU and TN 11
7. The advantage of this approach is that it is very simple and, depending on how the cross provisioning is performed, does
8. not necessarily require a coupling between the two OSS systems. The disadvantage is that the system is not automated.

#### 5.2.1.2 Automatic Discovery using the OSS (Informative)

1. This section is superseded by section 6.2 of O-RAN CTI-TMP [4]. 16

### 5.2.2 Operations

1. The CTI server and client shall operate as described in Figure 5.8. 19

20

21

22

1. ![]({{site.baseurl}}/assets/images/644baff36c43.png)

##### Figure 5.8 : CTI Configuration and Operational State Machines

1. The following operation is illustrated in Figure 5.8.
2. After necessary initial configuration, which is to be covered in the future Transport Management Plane Specification, a
3. CTI interaction between a CTI client and a CTI server starts by including an exchange of CTI-Beacon message from the
4. O-DU to the TN and its acknowledgement back from the TN to the O-DU. After reception of the CTI-Beacon-Ack
5. message, both sides are operational for CTI.
6. The CTI client and CTI server then interact according to the following:

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| 9 | 1. | The CTI client periodically sends a CTI-Report message to the CTI server with request information. This occurs |
| 10 |  | no more than one CTI-Report per CTI Nominal message exchange time interval (CTI\_NOM). If there is no |
| 11 |  | internal request information, the CTI client shall not send a CTI-Report message to request bytes. |
| 12 |  | The CTI client shall generate a CTI-Keep-Alive message at least once within the CTI Time Keep-Alive (CTI\_KA). |
| 13 | 2 | The TN captures and processes CTI messages. |
| 14 |  | The CTI server shall generate a CTI-Keep-Alive message at least once within the CTI Time Keep-Alive (CTI\_KA). |
| 15 | 3. | If the TN does not receive a CTI message (CTI-Report or CTI-Keep-Alive) within the CTI Time Out (CTI\_TO), |
| 16 |  | it shall suspend its CTI operation and return to the CTI configuration state. |
| 17 | 4. | If the O-DU does not receive a CTI-Keep-Alive message within the CTI Time Out (CTI\_TO), it shall suspend |
| 18 |  | its CTI operation and return to the CTI configuration state. |

</div>

1. The contents of the CTI-Report message are generated by the CTI client, which takes its inputs from the O-DU's uplink
2. scheduling decisions and from other operating entities within the O-DU. The CTI client gathers the uplink grant
3. information from the RAN uplink scheduler over an interval described by the CTI Nominal message exchange time
4. interval (CTI\_NOM). This time is configured to be an integral number of mobile slot times. The choice of CTI\_NOM
5. shall follow the rules described in section 4.3.3.2. The CTI client should modify the local grant information from the O-
6. DU RAN scheduler to make it represent future bytes to be transmitted over the Ethernet interface with sufficient margin
7. for allowing for prediction uncertainties on the actual generated uplink fronthaul traffic.

## 5.3 Interface to OSS

### 5.3.1 Timers

6

##### Table 5.8 : CTI Timers

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **Name** | **OSS**  **to TN** | **OSS**  **to O-DU** | **Min** | **Max** | **Description** |
| CTI Nominal message exchange time interval | x | x | 0,25  ms | 5 ms | This value, abbreviated as CTI\_NOM, is the minimum average interval that a CTI-Report message is sent from the CTI client to the CTI server. CTI-Report messages may be sent less often. Because of queuing in the system, this value has to be interpreted as a rate and not as a spacing between packets. Typical values could be 1-2 ms for LTE, or lower for 5G. |
| CTI Time Keep- Alive | x | x |  | 3 s | This value, abbreviated as CTI\_KA, is the maximum time interval between consecutive CTI-Keep-Alive messages between the CTI client and the CTI server. |
| CTI Time Out | x | x |  | 10 s | This value, abbreviated as CTI\_TO, is the timeout value that a CTI Keep-Alive message needs to be received by the CTI client (O-DU) or the CTI server (transport system) before that respective system suspends CTI operations and returns to its CTI configuration state. |

</div>

7

1. CTI\_TO shall be greater than CTI\_KA, for example CTI\_TO = N \* CTI\_KA with N being an integer greater than 1, to
2. allow for the loss of one or several keepalives.

### 5.3.2 Summary of Objects (Informative)

1. Several parameters have to be configured in the O-DU and the TN by their respective management systems for the
2. connectivity of CTI messages and the operation of CTI. The reader is referred to O-RAN CTI TMP [4] for a full list of
3. parameters and the accompanying YANG models.

## 5.4 Examples of the CTI Pattern Descriptor for Fronthaul

1. A high-speed transport system such as a 10 Gbps PON system can have the ability to schedule bandwidth with the
2. granularity of an 5G OFDMA symbol time which is on the order of 4.5us to 71us. However, sending CTI messages at
3. this rate would result in too high a message rate. Further, describing bytes for every single symbol would result in
4. excessively long CTI messages. In order to balance message frequency and length, a compression scheme based on 5G
5. TDD/FDD patterns is allowed.
6. The CTI pattern object model allows one entry in a CTI message to describe multiple transmissions over the network
7. interface that follow a specific pattern. The intended use is to describe the bytes per symbol for each symbol or group of
8. symbols within a mobile slot. The pattern of bytes per symbol within a mobile slot depends upon the 5G use of TDD or
9. FDD.
10. The total byte count for a pattern is always contained in the CTI table entry. If a non-zero pattern ID is used in the CTI
11. reporting, there are two ways to interpret the CTI pattern parameters at the CTI server:
12. Option 1) The CTI client is configured so that the total byte count is equal to the sum of the bytes per event within the
13. pattern. This implies that for each different load in a mobile slot (different total byte count), a different pattern ID is
14. needed. This can be used when the reporting may be coarse and not too many pattern IDs are needed.
15. It is also possible to use a mix of explicit byte values for some symbols and a residual byte count (indicated by a reserved
16. special value) for the other symbols. The absolute bytes for the residual symbols are deduced based on the CTI total byte
17. count and the per-event explicit byte counts (see example 3 below).
18. Option 2) If option 1 has a scalability issue, the alternative is to normalize the amount of bytes in each symbol so that the
19. sum of all symbols is always the same value independently of the total reported byte count. The CTI server can then
20. deduce the actual amount of bytes per symbol by using a multiplier (the reported total byte count divided by the
21. normalized sum). This allows to re-use the same pattern ID for the same relative distribution of bytes across the symbols,
22. by adding an extra calculation step at the CTI server.
23. The choice between option 1) and option 2) is reflected by a dedicated configuration parameter per CTI session ID, so
24. that the CTI client knows how to generate the values and the CTI server knows how to interpret the values. 8

##### Examples

1. Example 1: FDD pattern of 1 ms slot (n), 14 symbols, 1,000 bytes per symbol and same pattern but with 2,000 bytes per
2. symbol in another 1 ms slot (m)
3. Option 1: Absolute event bytes
4. For slot n:
5. ? Pattern ID = 1
6. ? Pattern duration = 8 (because 8x125 us = 1 ms)
7. ? Number of events per pattern = 14 (because each symbol is described)
8. ? Event description
9. o Event multiplier = 14 (because each event is the same within the pattern)
10. o Bytes per event = 1,000 bytes (because there are 1,000 bytes per symbol)
11. ? The sum over the symbols corresponds to the CTI total byte count of 14,000 bytes. This is the total number of bytes
12. transmitted during the entire slot time. 22
13. For slot m:
14. ? Pattern ID = 2
15. ? Pattern duration = 8 (because 8x125 us = 1 ms)
16. ? Number of events per pattern = 14 (because each symbol is described)
17. ? Event description
18. o Event multiplier = 14 (because each event is the same within the pattern)
19. o Bytes per event = 2,000 bytes (because there are 2,000 bytes per symbol)
20. ? The sum over the symbols corresponds to the CTI total byte count of 28,000 bytes. This is the total number of bytes
21. transmitted during the entire slot time. 32
22. Option 2: Normalized event bytes
23. For slot n:
24. ? Pattern ID = 1
25. ? Pattern duration = 8 (because 8x125 us = 1 ms)
26. ? Number of events per pattern = 14 (because each symbol is described)
27. ? Event description
28. o Event multiplier = 14 (because each event is the same within the pattern)
29. o Bytes per event = 100 bytes (normalized sum / 14)
30. ? The normalized sum (arbitrary choice) is 1,400 bytes. The CTI total byte count is 14,000 bytes. The per-symbol
31. multiplying factor to be used at the CTI server is 10. 43
32. For slot m:
33. ? Same Pattern ID = 1
34. ? The normalized sum is 1,400 bytes. The CTI total byte count is 28,000 bytes. The per-symbol multiplying factor to
35. be used at the CTI server is 20. 48

1

1. Example 2 (Option 1): TDD receive pattern of 500 us slot; 14 symbols; 1,000 bytes on symbols 0, 1, 2, 10, 11, 12; 0 bytes
2. otherwise
3. ? Pattern ID = 2
4. ? Pattern duration = 4 (because 4x125 us = 500 us)
5. ? Number of events per pattern = 14 (because each symbol is described)
6. ? Event description
7. o Event multiplier = 3 for symbols 0-2
8. o Bytes per event = 1,000 bytes for each of the first three symbols
9. o Event multiplier = 7 for symbols 3-9
10. o Bytes per event = 0 bytes
11. o Event multiplier = 3 for symbols 10-12
12. o Bytes per event = 1,000 bytes for each of these three symbols
13. o The entry for symbol 13 is optional because the value is 0 bytes.
14. ? The CTI byte count is 6,000 bytes. 16
15. Example 3 (Option 1): A 5G 500 us slot; 200 bytes total of signaling information on symbols 0 and 1; variable but evenly
16. distributed payload on symbols 4 to 7. An event is two symbols. The CTI byte count is 1,000 bytes.
17. ? Pattern ID = 3
18. ? Pattern duration = 4 (because 4x125 us = 500 us)
19. ? Number of events per pattern = 7 (because each event is described as a pair of symbols)
20. ? Event description
21. o Event multiplier = 1 for symbols 0 and 1
22. o Bytes per event = 200 bytes total for the first two symbols
23. o Event multiplier = 1 for symbols 2 and 3
24. o Bytes per event = 0 bytes
25. o Event multiplier = 2 for symbols 4-7
26. o Bytes per event = residual average (0xFFFF)
27. o The entry for symbols 8-13 is optional because the value is 0 bytes per symbol.
28. ? Residual average = (1,000-200)/2 = 400 bytes per event
29. o The total byte count is 1,000 bytes. There were 7 events. Each event is two symbols. The first event
30. was explicitly described as 200 bytes. The next event was explicitly described as 0 bytes. The next two
31. events where declared as residual averages. The last four events were not explicitly described, so they
32. are implicitly considered to be 0 bytes per event.
33. o Because each event is two symbols, the byte count for symbols 4-7 is 200 bytes per symbol. 36

## 5.5 Other O-DU Functional requirements

### 5.5.1 Reporting scope

1. The O-DU shall be able to generate uplink bandwidth reports per O-RU, aggregated over all corresponding RAN
2. schedulers for that O-RU.
3. The O-DU shall be able to generate uplink bandwidth reports per O-RU interface, aggregated over all corresponding RAN
4. schedulers for that O-RU interface.
5. The CTI protocol additionally allows to generate uplink bandwidth reports per fronthaul Flow (Layer 2 / Layer 3
6. mapping).

### 5.5.2 Reporting accuracy

1. The reported bandwidth shall be at least equal to the actual upstream U-plane traffic generated by the O-RU (no
2. underestimation).
3. The accuracy of reported time references (Base + Offset) shall be better than 10us (-5us/+5us).

### 5.5.3 O-DU CTI performance

1. The O-DU shall be characterized according to a CTI message rate category based on its supported CTI\_MIN (as defined
2. in section 4.3.3). When an equipment supports a category, all lower numbered categories shall also be supported.
3. The O-DU shall be characterized according to a value of CTI message timing performance (as defined in section 6.2).
4. These parameters shall be exposed to the OSS for configuration and management. 7

# 1 6 Time alignment between O-DU and Transport

2

## 3 6.1 Timing architecture options

4

1. The Fronthaul O-DU is scheduling in the future. The TN has to follow this by granting allocations aligned in time. This
2. requires the timing of both systems to be time synchronized to a common reference for the grants to line up. There are
3. three options to achieve this;
4. ? Using GNSS: Both the O-DU and the TN are independently synchronized using a GNSS source. There is no
5. synchronization interaction needed between the O-DU and the TN.
6. ? Using IEEE PTPv2 (1588-2008): Both the O-DU and the TN have access to a common GM clock by using PTPv2.
7. The PTP packets are either independently received by O-DU and TN, or the PTP packets are distributed to the
8. TNs via O-DUs (e.g. when the GM resides in the O-DU).
9. ? Mix of both: The O-DU uses either GNSS or PTP, while the TN independently uses the other method.
10. Note that the synchronization of the O-RU itself is not influenced by CTI and is out of scope of the CTI specification (see
11. O-RAN CUS [2] instead).

## 6.2 Resource allocation alignment

1. With CTI, the TN scheduler aligns its granting decisions on reporting by RAN schedulers, in order to follow traffic
2. variations (per slot or per group of slots) of O-RUs. The better the time alignment precision of the TN scheduler to the
3. uplink fronthaul traffic from the O-RUs, the lower the need for buffering uplink packets and hence the lower the upstream
4. latency.
5. The precision of aligment depends on two factors, as shown in Figure 6.1;
6. Firstly, the arrival time of the CTI reporting message at the TN. The TN will need some processing time once the message
7. is received before it can apply the updates of bandwidth scheduling to its TUs. This can be expressed as a minimal spacing
8. (called "TN CTI message timing performance") needed between the arrival time of the CTI message and the start
9. boundary at Ra of the mobile slot N being reported in the message. A given TN equipment is characterized by a value of
10. CTI message timing performance.
11. The arrival time depends on the O-DU generation time, which depends on the necessary processing time after the RAN
12. scheduler decisions were made for the corresponding slot. This can be expressed as the "O-DU CTI message timing
13. performance", the minimal spacing guaranteed by the O-DU between the generation time of the CTI message and the
14. start boundary at Ra of the mobile slot N being reported in the message. The O-DU shall be characterized by a value of
15. CTI message timing performance.
16. The arrival time also depends on the transmission latency of the CTI message itself (in case of intermediate nodes between
17. O-DU and TN).

![]({{site.baseurl}}/assets/images/3132f931a711.jpg)1

##### Figure 6.1 : Timing of CTI message generation by O-DU and reception at TN, limits for TN being able to apply

1. **bandwidth updates for the reported mobile slot.**

4

1. If the O-DU CTI message timing performance after subtraction with the maximal CTI transport latency still respects the
2. TN CTI message timing performance, the TN can update the bandwidth for the mobile slot N on time. Note that as long
3. as this condition is met, the jitter on arrival time of the CTI message will have no effect on the bandwidth updates and on
4. the resulting fronthaul uplink latency.
5. If the CTI messages arrive early, they have to be buffered in the TN until they need to be processed for their associated
6. mobile slot (N). The earliest arrival time is just after the O-DU has made scheduling decisions for mobile slot (N), which
7. is in the order of several mobile slot durations before the start of mobile slot (N).
8. If the CTI messages arrive too late at the TN, the TN will only be able to apply the update for slot N in the next (or one
9. of the next) bandwidth update opportunities by the TN, leading to buffering of the traffic of slot N at the TU, and hence
10. an increase of latency. That latency depends on the granularity of TN to apply bandwidth updates per TU, and the previous
11. bandwidth setting of the TN and buffer status of the TU.
12. Secondly, assuming the CTI reporting message does arrive on time at TN, perfect alignment will not be possible due to
13. sources of uncertainty that cannot be influenced or compensated by the O-DU:
14. ? Time granularity of TN to send bandwidth allocations.
15. ? Variation on Ta3\_max per O-RU (based on its category), typically 20us (see table B-5 in O-RAN CUS [2])
16. ? Possible mix of different O-RU categories on the shared distribution networks of the same TN.
17. Note that the difference in propagation distance between different TUs is compensated by time equalization of the TUs
18. by the TN. The actual latency (buffering + propagation) of each TU is brought to the same level, with the furthest TU
19. having the longest propagation and shortest buffering, and the shortest TU having the shortest propagation and the longest
20. buffering. In other words, the time equalization does not introduce an extra delay penalty, but it brings the propagation
21. delay of all TUs to the level of the furthest TU.

![]({{site.baseurl}}/assets/images/b4bcfae69f57.jpg)1

1. **Figure 6.2 : Time alignment of O-DU scheduler decisions, CTI message generation, CTI message reception, TN**
2. **scheduler updates, uplink traffic at O-RU R3 reference point. Example for two TUs at different distance from**
3. **the TN.**

5

# 1 7 Conclusion

## 7.1 Summary

1. This document specifies the TC-plane of CTI. TC-plane messages between O-DU and TN allow for the initialisation and
2. operation of a CTI session, and for the exchange of future load requirements so that the TN scheduler can schedule the
3. transport resource pro-actively, reducing the upstream latency of the fronthaul packets compared to a reactive TN
4. scheduling system.
5. The document includes (Chapter 4) a description of the context (topologies of interconnecting O-RUs to O-DUs via TNs
6. aggregating multiple TUs on shared distribution networks), (Chapter 5) the required functions on the O-DU for supporting
7. CTI exchange with TNs, the role of the parameters needed for CTI, the message types and formats, the protocol operation,
8. the list of parameters, ways for associating the O-RU interface with corresponding TN managed entity, and (Chapter 6)
9. the time alignment aspects between O-DU scheduler and TN scheduler.

## 7.2 Open issue list

1. 1 (section 4.1.2) Impact of MAC address as CTI Session ID for load balancing (single flow over multiple O-RU
2. network interfaces)
3. 2 (sections 4.3.1.1, 5.1.4.2, 5.5.1) Analysis if and how the flow ID (L2/L3 classifier) could be used to differentiate the
4. CoS of U-plane traffic, and whether this could reflect the CoS of user-generated or user-consumed application data.
5. 3 (section 5.1.5) Optionality and details of CTI Signature
6. 4 In case of congestion in the transport network, analysis of a feedback mechanism and of the use of priorities between
7. O-RUs

20

21

# 1 Annex A CTI Use Cases (Informative)

1. This informative section describes the use cases of the resource allocation-based networks being used as fronthaul
2. transport.
3. Note that this document does not make assumptions on the possible concurrent use of the Transport network for other
4. types of traffic than mobile fronthaul (other types of traffic could be traffic from other mobile functional splits, mobile
5. backhaul traffic, residential user traffic, or business user traffic).

## A.1 Passive Optical Network (PON) as Transport Technology

1. Passive Optical Networks (PONs) cover a range of access technologies that deliver FTTx connectivity over a shared and
2. passive point-multipoint optical distribution network. The system consists of a head node (OLT) serving multiple optical
3. distribution networks (ODNs), each ODN connecting multiple user-facing Optical Network Units (ONUs) to the OLT.
4. ![]({{site.baseurl}}/assets/images/b705559ddc26.jpg)Communication is full duplex by using different wavelength bands on the fiber. 12

13

##### Figure A.1 : Transmission on Passive Optical Networks

1. There are several standardized Passive optical networks (PON) technologies. There are two families of PONs, depending
2. on whether they follow an ITU-T standard (see A.1.5) or an IEEE standard (see A.1.5).
3. Within ITU-T standards, a further distinction can be made between WDM PONs (one upstream + one downstream
4. wavelength per ONU, no sharing of capacity between ONUs), TDM PONs (multiple ONUs share the same upstream +
5. downstream wavelength), and TWDM PONs (mutliple TDM PONs in overlay over different Channel Pairs, with one
6. channel pair = one upstream + one downstream wavelength). As WDM PONs are essentially point-point connections,
7. they do not require CTI. TDM PONs and TWDM PONs rely on TDMA for the upstream direction, and are a target for
8. CTI.
9. Within IEEE standards, TDM and TWDM PONs (use of multiple channel pairs per ONU for higher throughput) are
10. considered.
11. Although there are variations at the Physical layer (basically resulting in the optical reach) and MAC/TC layer
12. (encapsulation, coding, FEC, control messages, support of Ethernet frame fragmentation or not, request-based allocations
13. vs monitoring-based allocations, frame structure or not), all T(W)DM PON variants follow common TDMA principles
14. for the allocation of upstream bandwith to the different ONUs. These principles are described in the following sections.
15. They show the rationale for using CTI for T(W)DM PONs in the context of LLS fronthaul. In these scenario's, the OLT
16. acts as the TN, the ONU acts as the TU, as shown in Figure A.4. 31

### A.1.1 Dynamic Bandwidth Allocation (DBA)

1. Fundamentally, the OLT is the master and tells each ONU when to send traffic (and when to remain silent) by sending
2. grants telling it when to begin and end transmission. This is the responsibility of the DBA algorithm. To be more precise,
3. it is possible to give multiple grants per ONU;
4. ? In ITU-T compliant PONs, grants are scheduled per Transmission Container (T-CONT, one or multiple T-CONTs
5. per ONU UNI). Each T-CONT can correspond to a different traffic class or to an ONU UNI. Grants are sent in
6. BW maps (1 map every 125us).
7. ? In IEEE compliant PONs, grants are scheduled per Logical Link ID (LLID, one (typical) or multiple LLIDs per
8. ONU). Typically the ONU does the internal scheduling between traffic classes into a single grant. Grants are sent
9. in special GATE messages (one message per ONU, up to 4 grants per message).
10. DBA ensures that data bursts from different ONUs are nicely interleaved without any collision at the OLT receiver. The
11. ![]({{site.baseurl}}/assets/images/10f6250aa226.jpg)allocation of bandwidth per T-CONT / LLID and the level of interleaving between the ONUs is chosen by the DBA.

13

##### Figure A.2 : DBA on Passive Optical Networks (ITU-T PON)

1. The choice of allocation of bursts to the TCONTs / LLIDs can either be fixed by preconfiguration (Fixed Bandwidth
2. Allocation, allocations are always granted and don't change over time) or dynamic (Dynamic Bandwidth Allocation, the
3. system reacts to measured parameters and adapts the allocations while staying within bounds set by preconfiguration).
4. For DBA there are traditionally two types of ways to react; either based on monitoring of the received traffic versus
5. allocated bandwidth, or based on status reports sent by the ONU informing the OLT about the buffer filling levels. Both
6. methods are reactive in the sense that they use snapshots from the (recent) past.

### A.1.2 DBA Latency Analysis

1. The upstream transmission latency and jitter on a T(W)DM PON depends on several factors;
2. a) The actual fiber length
3. All ONUs are equalized in time to the furthest ONU. As most PON technologies reach out to 20km (some to 40km), the
4. one-way delay due to fiber propagation alone can reach 100us (200us) for such distances. Obviously the latency
5. requirement can limit the maximal distance for the deployment.
6. b) Buffering in the ONU
7. Whenever Ethernet frames have to wait before being transmitted in a PON burst, they need to be buffered and they will
8. experience buffer latency. The waiting time in the buffer depends on two factors, both being controlled by DBA;
9. The amount of bandwidth allocated to the T-CONT / LLID
10. ? As mentioned above, the DBA estimates how much bandwidth to allocate for each T-CONT / LLID. This is either
11. fixed or a dynamic update. If the allocated bandwidth is below the required bandwidth, the ONU buffers will
12. gradually fill up. The filling level depends on the duration and amplitude of this mismatch. Low buffer latency
13. requires fast and accurate DBA updates, but as DBA is a dynamic system influenced by all ONUs, and which
14. also possibly interacts with other dynamics like TCP congestion control, it is difficult to predict the latency for a
15. given situation.
16. The inter-burst gap for the T-CONT / LLID
17. ? Once the amount of bandwidth allocated to each T-CONT / LLID is chosen by the DBA, it is delivered in a bursty
18. fashion. The burstiness is also controlled by the DBA. It can be a regular repetition of equal sized bursts at a given
19. rate, or an irregular sequence of bursts. Even when the allocated bandwidth corresponds to the actual demand,
20. Ethernet frames arriving after the end of a burst have to wait for the next burst before they can be sent, thereby
21. experiencing delay up to the gap between the bursts.
22. For a given average throughput, it is possible to achieve lower latency by decreasing the burst size while increasing the
23. burst rate, thereby decreasing the inter-burst gap. However this comes at the expense of higher overheads on the PON as
24. each upstream burst "consumes" a fixed amount of non-information bytes (so-called physical layer overhead). Hence a
25. trade-off between efficiency and latency.
26. c) Forwarding latency in the switching stages of the OLT and ONU
27. As the ONU and OLT act as aggregation points (combination of multiple UNIs in the ONU to a single PON interface,
28. combination of multiple ODNs to fewer network uplinks in the OLT), they include internal switching stages, which each
29. can add some forwarding latency to the Ethernet frames.
30. d) Fragmentation and serialization delay
31. When fragmentation is supported over the PON, large frames can be split over multiple bursts. Such frames will
32. experience fragmentation delay (waiting up to the burst transmitting the last fragment) and re-assembly processing delay
33. in the OLT.
34. Serialization delay occurs when frames are egressing a node or internal node module. It depends on the frame size and
35. the line rate of the interface. However, for the rates considered relevant for LLS fronthaul (10 Gbit/s and above) such
36. delay will be small compared to the other causes of delay.

### A.1.3 Cooperative Dynamic Bandwidth Allocation (CO-DBA)

#### ![]({{site.baseurl}}/assets/images/9a4ac4fbb8c4.jpg) Rationale for CO DBA

1. As noted above, bandwidth is traditionally allocated either in a fixed way or in a reactive dynamic way.
2. When applying a fixed guaranteed bandwidth to low-latency traffic, there is no reaction time delay, leading to low latency.
3. The downside however is that such bandwidth has to be dimensioned to the peak rates, and unused portions of this
4. bandwidth cannot be reallocated to other nodes or to other services.
5. On the other hand, reactive DBA takes into consideration the dynamic upstream traffic and configured traffic contracts.
6. The benefit to adapt to the actual demands is to allow for statistical multiplexing of many sources (ONUs). The
7. disadvantage is now that upstream data will at times be buffered in the ONU until the completion of bandwidth allocation,
8. leading to higher latency.
9. With Cooperative DBA, however, the system becomes pro-active. There is a dynamic in-advance signaling from the O-
10. DU to the OLT to allow the PON system to adapt its dynamic bandwidth allocation to the expected upstream traffic load
11. and timing, thereby limiting latency, while still allowing to apply statistical multiplexing. In other words, the goal of
12. Cooperative DBA is to allow for a better balance on the PON between packet transport latency and bandwidth efficiency
13. than either with fixed bandwidth allocation to peak values, or with traditional reactive DBA-based bandwidth allocation.
14. The figure below shows CO DBA in action for two O-RUs, updating the allocated bandwidth per O-RU every mobile
15. slot/TTI. The resulting upstream latency T34 consists of the internal latencies in ONU and OLT, and the DBA-controlled
16. transport of the fronthaul packets in PON bursts.

![]({{site.baseurl}}/assets/images/064f389c542d.jpg)1

##### Figure A.3 : LLS fronthaul over PON

1. CO DBA is recognized as a new DBA type in ITU-T PON standards since ITU-T G.989.3 Amd 2.

#### ![]({{site.baseurl}}/assets/images/d64018f93062.jpg) Using CTI for CO DBA

1. An information exchange is achieved with CTI between the mobile scheduler (in the O-DU) and the PON scheduler (CO
2. DBA in the OLT). The O-DU makes allocation decisions and signals corresponding information to the OLT, aggregated
3. at O-RU interface level (sum of all UEs). This allows the OLT to determine upstream bandwidth allocations per O-RU
4. interface in advance. The OLT then applies these bandwidth allocations as close as possible to the arrival time of upstream
5. mobile traffic. This avoids the DBA to spend time to detect the presence of the mobile traffic by means of ONU buffer
6. feedback. This enables low-latency upstream transmission.
7. The basic mechanism and functional roles of this information exchange are as follows;
8. ? O-DU and OLT are connected by CTI interface (messages can use the same physical interface as the data traffic).
9. ? The O-DU determines how much traffic will be required for given time intervals and given services. The
10. associated required maximal upstream latency of this traffic can be configured on the TN. The O-DU
11. communicates such reports in signaling messages to corresponding OLT(s) on which the corresponding O-RUs
12. are connected to a PON via ONUs. The O-DU adds an ID per report to identify the service and its corresponding
13. O-RU interface.
14. ? The O-DU updates this information to follow variations in expected bandwidth of the O-RUs.
15. ? The OLT parses these CTI messages, using the ID to link a report to its corresponding T-CONT. The OLT adapts
16. the corresponding PON bandwidth allocations to these T-CONTs according to the reports in the signaling
17. messages, in a way to meet the required capacity and latency. The CO DBA follows the updates sent by the O-
18. DU.

![]({{site.baseurl}}/assets/images/ed29c7ece190.jpg)23

24

* 1. **Figure A.4 : Using CTI for CO DBA**

### A.1.4 PON ranging

* 1. As previously explained, when PON is used for mobile fronthaul the OLT acts as the TN, the ONU acts as the TU. The
  2. ranging description in this section is generic.
  3. A PON is an adaptive system in the sense that it enables any ONU to connect (e.g. at installation) or disconnect (e.g. at
  4. powering down) at any point in time without preliminary agreement or control from the OLT. But this requires an
  5. autodiscovery and autoconfiguration mechanism of newly connected ONUs (this is called "ranging" in short). Both OLT
  6. and ONU sides maintain state machines to manage the mechanisms, to follow whatever status changes of the ONUs.
  7. Automatically connecting a new ONU requires two steps; first, ONU autodiscovery, and second, ONU ranging in order
  8. to equalize its time reference for upstream transmission to the ONU with (potential) furthest distance. The equalization is
  9. deducing and configuring an extra delay per ONU so as to achieve time alignment of all ONUs at the OLT receiver.
  10. In order to detect newly connected ONUs, the OLT needs to give them an opportunity to send their unique identification
  11. (Serial Number). This involves exchange of information from ONU to OLT without the OLT knowing when this
  12. information will arrive. In order to avoid overlap with existing upstream traffic, the OLT opens a "quiet window" by
  13. temporarily suppressing the grants to the in-service ONUs for a given duration. The OLT broadcasts a special grant
  14. targeted only to new ONUs, such that they start sending their unique number in the upstream direction (a back-off
  15. ![]({{site.baseurl}}/assets/images/5d6edea7373a.jpg)mechanism is included to take care of multiple new ONUs overlapping), see Figure A.5.

18

##### Figure A.5 : autodiscovery process (e.g. ONU 2)

1. Once the unique number of a given new ONU is known, the OLT can open another quiet window silencing all other
2. ONUs except the new ONU. The OLT receiver measures the arrival time of the upstream messages of that ONU in the
3. quiet window, and deduces its necessary time equalization, which is then communicated back by the OLT to the ONU.
4. At the end of this process, the ONU becomes operational and can receive normal service grants, and send upstream traffic.
5. Note that the duration of the ranging window depends on the maximum differential distance (closest ONU to furtherst
6. ONU) to be supported, The amount of windows per step can vary (e.g. a window could be repeated a couple of times for
7. more robustness in case of distant or weak ONUs). The repetition rate of the process can be set by the operator (e.g. every
8. second, but can be much shorter or much larger).
9. When using PON for fronthaul traffic, such ranging process of new ONUs will cause upstream transport interruption.
10. There are two ways to deal with this. Either the PON system is able to reduce or avoid the interruption time (possibly
11. with modifications to the ranging process as described here, but that can require more complexity on the PON or a
12. dependence on specific PON technologies) so that there will be no or limited impact on the mobile system. Or the PON
13. system notifies the O-DU about upcoming ranging events, so that the O-DU can take mitigating measures.

### A.1.5 PON technologies

1. CO DBA is recognized by ITU-T as a DBA method. There are multiple PON technology variants, and new ones are under
2. definition by the ITU-T SG15/Q2.
3. Technologies offering 10 Gbit/s or more:
4. ? G.9807 series (XGS-PON)
5. ? G.989 series (NG-PON2)
6. ? G.hsp (on-going work at time of publication of this document) 5
7. There are multiple PON technology variants specified by IEEE offering 10 Gbit/s or more:
8. ? IEEE 802.3av, IEEE 802.3bk
9. ? IEEE 802.3ca (on-going work at time of publication of this document) 9

## A.2 DOCSIS as a Transport Technology

1. Data Over Cable Service Interface Specification (DOCSIS) is a telecommunication standard that governs the transmission
2. of high-speed data on a hybrid fiber coaxial (HFC) plant. DOCSIS protocol is developed by CableLabs with many
3. contributing companies. The protocol has been ratified by the ITU-T as international standards. The DOCSIS protocol is
4. deployed by cable operators worldwide.
5. The DOCSIS protocol has had significant updates on both the physical and the MAC layers since DOCSIS 1.0. The most
6. recent version is DOCSIS 3.1 (see Cable Labs CM-SP-MULPI [7]), with improvements to support higher symmetrical
7. speeds and lower latency. Work is under way to support even higher speeds in the near future.
8. These performance improvements make DOCSIS a viable transport technology for mobile traffic. Furthermore, the
9. ubiquity of the HFC plants has the potential to make DOCSIS transport an economical solution.

![]({{site.baseurl}}/assets/images/79cca8c925f7.png)![]({{site.baseurl}}/assets/images/0f52f028490f.png)![]({{site.baseurl}}/assets/images/a9509f068a55.png)![]({{site.baseurl}}/assets/images/3120a334591d.png)![]({{site.baseurl}}/assets/images/565cdb2ec819.png)![]({{site.baseurl}}/assets/images/c4362052b12d.png)

Converged Interconnect Network - CIN (fiber)

Coax (including amplifiers, taps)

Optical node (may include Remote PHY Device)

CMTS

Core

CM

CM

CM

CM

Residential business services

Mobile Core

20

![]({{site.baseurl}}/assets/images/1687b5389d44.png)![]({{site.baseurl}}/assets/images/6ace22ebb14b.png)

1. **Figure A.6: DOCSIS Transport Network**

### A.2.1 DOCSIS resource scheduling

1. In a DOCSIS network, the cable modem termination system (CMTS) is the master controlling multiple cable modem
2. slaves (CMs). Most upstream data are trasmitted using the best effort (BE) scheduling service. The DOCSIS upstream
3. uses a request-grant approach as shown in Figure A.7. A request message is sent from the CM to the CMTS. The CMTS
4. prepares a bandwidth allocation map, called the MAP, and inserts an entry indicating a grant for the CM. The grant entry
5. in the MAP message contains an upstream service identifier (SID) associated with a service flow assigned to the CM, a
6. transmission time signaled as a minislot number, and the number of minislots assigned. Based on the number of assigned
7. minislots, the CM knows the number of bytes that have been granted. The CMTS broadcasts the MAP to the CM, so that
8. ![]({{site.baseurl}}/assets/images/f53f1b515348.png)the CM can make use of the grant to send its upstream data to the CMTS at the scheduled time.

![]({{site.baseurl}}/assets/images/447eb6d1600c.png)![]({{site.baseurl}}/assets/images/911b0eb71c10.png)![]({{site.baseurl}}/assets/images/dd874a7dab30.png)![]({{site.baseurl}}/assets/images/cc395900a13a.png)![]({{site.baseurl}}/assets/images/90747984d03e.png)![]({{site.baseurl}}/assets/images/e3ebae280300.png)![]({{site.baseurl}}/assets/images/de4160fab9a7.png)![]({{site.baseurl}}/assets/images/ca58df359f4c.png)

![]({{site.baseurl}}/assets/images/72e589ccd4b1.png)![]({{site.baseurl}}/assets/images/36cf47a4c22e.png)4

##### Figure A.7 : DOCSIS Request-Grant Scheduling

1. Each CM can have multiple service flows. A service flow is defined by a set of quality of service (QoS) parameters,
2. including scheduling priority. Within each service flow, the data are concatenated and fragmented.
3. In addition to the BE scheduling service, the CMTS can choose to grant the CM on a periodic basis via unsolicited grant
4. service (UGS) scheduling service, or proactive grant service (PGS). UGS was originally designed for carrying VoIP data,
5. transmitting a fixed and discreet amount of traffic at a relatively fixed time interval. PGS is an update to UGS: it permits
6. the flexibility for CM to concatenate and fragment the data. All DOCSIS scheduling services are reactive, in that the
7. CMTS reacts to conditions such as a CM request or a preconfiguration on the DOCSIS channel. While PGS permits the
8. CMTS to adjust the amount of periodic grants and the periodicity, the CMTS still reacts based on the past information.

### A.2.2 DOCSIS Latency Analysis

1. The upstream latency on a DOCSIS network consists of several components.

#### ![]({{site.baseurl}}/assets/images/f6c36d18eb31.jpg) CIN Network Latency

1. The cable industry has been virtualizing and splitting the functionalities of their access network equipment since the early
2. 2010 timeframe. The distributed architecture splits the traditional CMTS into an intelligent core unit residing in a hub, a
3. headend, or even a regional data center, with remote units that have minimal functionality residing in a fiber node close
4. to the CM. The converged interconnect network (CIN) is the fiber network that connects a CMTS core to the remote units.
5. The propagation delay between the CMs and the remote units is negligible due to the short coax run between them.
6. However, the CIN vary between operators, and can be between 30 km and upwards. Therefore, depending on operator
7. requirements, CIN delay could need to be considered when operators plan their fronthaul delay budgets.
8. Reducing CIN delay is not the focus of this interface protocol.

#### ![]({{site.baseurl}}/assets/images/88208c2ed0dc.jpg) Channel Access Latency

1. Channel access latency is a result of the shared-medium scheduling provided by DOCSIS technology, in which the CMTS
2. arbitrates access to the upstream channel via a request-grant mechanism.
3. The CMTS scheduler typically processes REQs every 2 ms and generates a MAP that describes 2 ms worth of grant
4. allocations. MAPs are scheduled one MAP interval in advance. Additionally, the CMTS and the CM each need processing
5. time which can range from 0.5 to 1 ms on each device. So the theoretical minimum upstream latency for DOCSIS is about
6. 5 ms. Recent work to improve DOCSIS upstream latency include requiring a smaller MAP interval, as well as a shorter
7. CMTS processing time. Still, these efforts only reduces minimum achieveable latency. The channel access latency on a
8. DOCSIS network is load dependent. During periods of temporary congestion, channel access latency can increase to 10's
9. of milliseconds.
10. The bandwidth report (BWR) and the CTI protocols both aim to significantly reduce the channel access latency.

#### ![]({{site.baseurl}}/assets/images/c3ed6c25ab75.jpg) Other Components

1. Other sources of latency include serialization delay and switching / forwarding delay. They generally result in
2. significantly less latency than the two above, and are not the target of this specification.

### A.2.3 Bandwidth Report (BWR)

1. The bandwidth report (BWR) protocol is standardized at the CableLabs DOCSIS Xhaul committee with many
2. contributing cable and mobile infrastructure companies in Cable Labs CM-SP-LLX [6]. BWR significantly reduces the
3. latency of mobile traffic when traversing the DOCSIS network. The protocol is designed for when DOCSIS network
4. provides backhaul, midhaul, and fronthaul transport for a mobile system. Figure A.8 shows BWR transmitting across the
5. DOCSIS xhaul network.

![]({{site.baseurl}}/assets/images/9dba3661ab86.png)![]({{site.baseurl}}/assets/images/79b70aa4496d.png)![]({{site.baseurl}}/assets/images/dfb26e8122bf.png)

13

![]({{site.baseurl}}/assets/images/e8ffe3c7d516.png)![]({{site.baseurl}}/assets/images/f0ece605fb6d.png)

##### Figure A.8 : BWR Transits Across Xhaul

1. Since this transport plane specification focuses on the fronthaul transport, this specification only considers BWR in
2. fronthaul transport.

#### ![]({{site.baseurl}}/assets/images/7630f16ee086.jpg) BWR Principles of Operations

1. Ordinarily, without BWR, the CM waits for the fronthaul data to arrive from the O-RU and then makes bandwidth requests
2. using the native DOCSIS request mechanism. The mobile data transfer from the UE to the O-RU takes a 3-way request-
3. grant loop, and then the transfer of fronthaul data on the DOCSIS link takes another 3-way request-grant loop. Since
4. DOCSIS and mobile networks are two independent systems, the two similar scheduling loops take place in serial.
5. With BWR, the O-DU informs the CMTS when it performs the uplink scheduling about the number of bytes that is about
6. to come to the CM from the O-RU at a certain time in the future. The BWR replaces the CM's internal layer 2 request
7. message for the fronthaul data arriving at the CM. The BWR message itself is an external layer 3 IP or Ethernet-based
8. message that is transmitted from the O-DU, directly to the CMTS. The content of the BWR is populated with information
9. describing data that will arrive at the CM in the future.
10. With this information, the CMTS has the ability to make scheduling decisions for the fronthaul data that is about to arrive
11. but before its actual arrival at the CM. BWR enables DOCSIS and mobile systems to work together by defining an
12. interface that allows the O-DU to share fronthaul scheduling information with the CMTS. In this way, the two similar
13. scheduling loops take place in parallel. As a result, BWR reduces the latency on the DOCSIS link.
14. BWR message enables QoS support on the DOCSIS network via the CTI Flow ID. Fronthaul traffic is sorted into priority
15. classes and assigned a DOCSIS Service Flow ID. BWR message includes one or multiple CTI Flow IDs and their
16. associated bytes. There is a common understanding between the CTI Flow ID and the priority between the CMTS and the
17. O-DU, so that the CMTS can prioritize traffic based on the CTI Flow ID.
18. To allow for the flexibility to provide lower latency on the fronthaul transport, the CMTS could need to schedule transport
19. grants as the fronthaul traffic arrives at the CM rather than at the end of the slot. BWR protocol defines the concept of
20. traffic pattern in subintervals within the time interval the BWR message describes, and by doing so, the BWR message
21. provides a more granular traffic arrive information to the CMTS.
22. Details of the message exchange, as well as the interface protocol can be found in Cable Labs CM-SP-LLX [6].

![]({{site.baseurl}}/assets/images/19be7bb91c88.png)![]({{site.baseurl}}/assets/images/b39b1e7cb41c.png)![]({{site.baseurl}}/assets/images/30a1b1a7c2b7.png)![]({{site.baseurl}}/assets/images/e935885d785c.png)![]({{site.baseurl}}/assets/images/b393b1282cea.png)![]({{site.baseurl}}/assets/images/3fe2fc5b7325.png)![]({{site.baseurl}}/assets/images/4f69a7f7d084.png)![]({{site.baseurl}}/assets/images/a58b6c6b2cc2.png)![]({{site.baseurl}}/assets/images/65b3ec231cfd.png)![]({{site.baseurl}}/assets/images/b81e1af5da71.png)![]({{site.baseurl}}/assets/images/906f8d677650.png)![]({{site.baseurl}}/assets/images/b051e8409d41.png)

12

1. **Figure A.9 : BWR Message Flow for Fronthaul**

#### ![]({{site.baseurl}}/assets/images/596e008b7d5e.jpg) Using CTI for BWR

1. CTI uses the basic mechanism that BWR uses that requires the O-DU to communicate to the CMTS via a transport plane
2. interface.
3. Both mechanisms require connecting the O-DU and the CMTS via logical interfaces. In both cases, the O-DU determines
4. the amount of fronthaul allocations for a time interval and for a service. About the same time as O-DU sends O-RU the
5. C-plane message about U-plane data for the time interval, the O-DU formulates and sends a CTI message to the CMTS.
6. For both types (BWR and CTI) of messages, a common set of information elements are needed:
7. ? Unique ID to indicate the O-RU's physical interface
8. ? Start time
9. ? End time: the start time and end time together defines the time interval that is associated with the bytes
10. ? QoS / priority ID: in the BWR case, priority is indicated. In the CTI case, a combination of priority and latency
11. class can be indicated
12. ? Bytes associated with each QoS / priority ID
13. ? Traffic pattern ID to describe bytes in subintervals within the time interval
14. The CMTS maps the QoS / priority ID to the DOCSIS upstream service ID (SID), and schedules transport grants according
15. to CMTS scheduler and policy rules.

30

31

1

# 1 Revision History

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Date** | **Revision** | **Description** |
| 2023.02.07 | 04.00 | Alignment on O-RAN template, various clarifications |
| 2022.07.14 | 03.00 | Clarification on TC & TM terminology |
| 2021.03.03 | 02.00 | Updated with specifications for EtherType, uplink C-Plane messaages, and CTI pattern descriptor |
| 2020.03.13 | 01.00 | Final version 01.00 |

</div>

2

3

4 History

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Date** | **Revision** | **Description** |
| 2023.02.07 | 04.00 | Published as Final version 04.00 |
| 2022.07.14 | 03.00 | Published as Final version 03.00 |
| 2021.03.03 | 02.00 | Published as Final version 02.00 |
| 2020.03.13 | 01.00 | Published as Final version 01.00 |

</div>

5

6
---

- View in [GitHub Mode]({{site.github_page_url}}/O-RAN.WG4.CTI-TCP.0-R003-v04.00.docx.md).
- Go back to [Table of Contents]({{site.baseurl}}/).
- Download the [Original Document]({{site.download_url}}/O-RAN.WG4.CTI-TCP.0-R003-v04.00.docx).

---

* toc
{:toc}
