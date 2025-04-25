---
title: O-RAN.WG7.DSC.0-v04.00.docx.md
author: O-RAN Alliance, WG7
layout: post
---

- View in [GitHub Mode]({{site.github_page_url}}/O-RAN.WG7.DSC.0-v04.00.docx.md).
- Go back to [Table of Contents]({{site.baseurl}}/).
- Download the [Original Document]({{site.download_url}}/O-RAN.WG7.DSC.0-v04.00.docx).

---

* toc
{:toc}

---

## ![]({{site.baseurl}}/assets/images/9c69df009b87.jpg)ORAN.WG7.DSC.0-v04.00

*Technical Specification*

**O-RAN White Box Hardware Working Group Deployment Scenarios and Base Station Classes**

Copyright (C) 2022 by the O-RAN ALLIANCE e.V.

The copying or incorporation into any other work of part or all of the material available in this specification in any form without the prior written permission of O-RAN ALLIANCE e.V. is prohibited, save that you may print or download extracts of the material of this specification for your personal use, or copy the material of this specification for the purpose of sending to individual third parties for their information provided that you acknowledge O-RAN ALLIANCE as the source of the material and that you inform the third party that these conditions apply to them and that they must comply with them.

O-RAN ALLIANCE e.V., Buschkauler Weg 27, 53347 Alfter, Germany

# 1 Revision History

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **Date** | **Revision** | **Author** | **Description** |
| 2022.07.22 | 04.00 | WG7 | Final Version for publication |
| 2021.07.08 | 03.00 | WG7 | Final version for publication |
| 2020.06.08 | 02.00 | WG7 | Final version for publication |
| 2019.10.29 | 01.00 | WG7 | Final Version for publication |

</div>

2

3

# 1 Contents

1. Revision History 2
2. Chapter 1 Introductory Material 5
3. 1.1 Scope 5
4. 1.2 References 5
5. 1.3 Definitions and Abbreviations 5
6. ![]({{site.baseurl}}/assets/images/f512048b8886.png) Definitions 5
7. ![]({{site.baseurl}}/assets/images/57b3a9e536f6.png) Abbreviations 6
8. 1.4 Objectives 7
9. Chapter 2 Deployment Scenarios 8
10. 2.1 General 8
11. ![]({{site.baseurl}}/assets/images/8dc53405e3f9.png) Base Station Architecture: Background 8
12. 2.2 Deployment Scenarios 10
13. ![]({{site.baseurl}}/assets/images/44ee0320e135.png) Indoor Picocell 10
14. ![]({{site.baseurl}}/assets/images/cf96d510a124.png) Outdoor Picocell 11
15. ![]({{site.baseurl}}/assets/images/0a9b0a7de9c5.png) Outdoor Microcell 12
16. ![]({{site.baseurl}}/assets/images/eb0a00c0347a.png) Integrated access and backhaul (IAB) 14
17. 2.2.5 Outdoor Macrocell (OMAC) 14
18. ![]({{site.baseurl}}/assets/images/d7a60e175fa8.png) Fronthaul Gateway 15
19. Chapter 3 Base Station Type Classification 17
20. 3.1 General 17
21. 3.2 Indoor 17
22. ![]({{site.baseurl}}/assets/images/e165358bdf18.png) The split architecture 17
23. ![]({{site.baseurl}}/assets/images/149122ba77af.png) The integrated architecture 18
24. 3.3 Outdoor 19
25. ![]({{site.baseurl}}/assets/images/58190d0344e3.png) Picocell 19
26. ![]({{site.baseurl}}/assets/images/df0467269975.png) Microcell 20
27. ![]({{site.baseurl}}/assets/images/3d80249d882d.png) Integrated access and backhaul (IAB) 23
28. 3.3.4 Macrocell 23
29. Chapter 4 Key performance indicators 25
30. 4.1 Peak data rate 25
31. 4.2 Peak spectral efficiency 25
32. 4.3 Bandwidth 25
33. 4.4 Control plane latency 26
34. 4.5 User plane latency 26
35. 4.6 Mobility 26

37

38 Tables

1. Table 2.2.1-1: Attributes for FR1 Indoor Picocell 11
2. Table 2.2.2-1: Attributes for FR1 Outdoor Picocell 11
3. Table 2.2.2-2: Attributes for FR2 Outdoor Picocell 12
4. Table 2.2.3-1: Attributes for FR1 Outdoor Microcell 12
5. Table 2.2.3-2: Attributes for FR2 Outdoor Microcell 13
6. Table 2.2.4-1: Attributes for Integrated Access and Backhaul 14
7. Table 2.2.5-1: Attributes for FR1 Outdoor Macrocell 15
8. Table 2.2.6-1: Attributes for Fronthaul Gateway 16
9. Table 2.2.6-1: Base Station Classes for Deployment Scenarios 17
10. Table 3.2.1-1: Descriptions of Attributes for the Indoor Picocell Split Architecture 18
11. Table 3.2.2-1: Descriptions of Attributes for the Indoor Picocell Integrated Architecture 19
12. Table 3.3.1-1: Descriptions of Attributes for the Outdoor Picocell Architecture 19
13. Table 3.3.2-1: Descriptions of Attributes for the FR1 Outdoor Microcell Architecture 20
14. Table 3.3.2-2: Descriptions of Attributes for the FR1 Enterprise Microcell Architecture 21
15. Table 3.3.2-3: Descriptions of Attributes for the FR1 Outdoor Microcell with All-In-One Architecture 22
16. Table 3.3.2-4: Descriptions of Attributes for the FR2 Outdoor Microcell Architecture 22
17. Table 3.3.3-1: Descriptions of Attributes for the IAB Architecture 23
18. Table 3.3.4-1: Descriptions of Attributes for the FR1 Outdoor Macrocell Architecture 24

5

6 Figures

1. Figure 2.1.1-1: Base Station Architecture deploying lower level split without protocol translation 9
2. Figure 2.1.1-2: Base Station Architecture deploying lower level split with protocol translation 9
3. Figure 2.1.1-3: Base Station with Integrated Architecture 10
4. Figure 2.1.1-4: Base Station with All-in-one Architecture 10
5. Figure 2.2.4-1: IAB integrated architecture. 14

12

13

14

# 1 Chapter 1 Introductory Material

## 1.1 Scope

1. This Technical Specification has been produced by the O-RAN.org.
2. The contents of the present document are subject to continuing work within O-RAN WG7 and may change following
3. formal O-RAN approval. Should the O-RAN.org modify the contents of the present document, it will be re-released by
4. O-RAN Alliance with an identifying change of release date and an increase in version number as follows:
5. Release x.y.z
6. where:
7. x the first digit is incremented for all changes of substance, i.e., technical enhancements, corrections, updates,
8. etc. (the initial approved document will have x=01).
9. y the second digit is incremented when editorial only changes have been incorporated in the document.
10. z the third digit included only in working versions of the document indicating incremental changes during the
11. editing process. This variable is for internal WG7 use only.
12. The present document specifies operator requirements for scenarios, use cases and base station classes for O-RAN
13. white box hardware, and identifies typical deployment scenarios associated with carrier frequency, inter-site distance,
14. and other key parameters and attributes.
15. In the main body of this specification (in any "chapter") the information contained therein is informative, unless
16. explicitly described as normative. Information contained in an "Annex" to this specification is always informative
17. unless otherwise marked as normative.

## 1.2 References

1. The following documents contain provisions which, through reference in this text, constitute provisions of the present
2. document.
3. - References are either specific (identified by date of publication, edition number, version number, etc.) or
4. non-specific.
5. - For a specific reference, subsequent revisions do not apply.
6. - For a non-specific reference, the latest version applies. In the case of a reference to a 3GPP document (including
7. a GSM document), a non-specific reference implicitly refers to the latest version of that document.
8. [1] 3GPP TR 21.905, "Vocabulary for 3GPP Specifications"
9. [2] 3GPP TR 38.104, "NR; Base Station (BS) radio transmission and reception"
10. [3] 3GPP TR 38.473, "NG-RAN F1 Application Protocol (F1AP)"
11. [4] 3GPP TR 38.340, "NR; Backhaul Adaptation Protocol"
12. [5] 3GPP TR 38.874, "Study on Integrated Access and Backhaul"
13. [6] O-RAN.WG7.CUS.0-v02.00, O-RAN WG4 Control, User and Synchronization Specification 34

## 1.3 Definitions and Abbreviations

### ![]({{site.baseurl}}/assets/images/3cad5044f361.png) Definitions

1. For the purposes of the present document, the terms and definitions given in [1] and the following apply. A term
2. defined in the present document takes precedence over the definition of the same term, if any, in [1]. For the base
3. station classes of Pico, Micro and Macro, the definitions are given in [2].
4. **All-In-One architecture:** In the all-in-one architecture, the O-RU, O-DU and O-CU are implemented on one platform.
5. There is no need for neither fronthaul interface between O-RU and O-DU nor F1 interface between O-DU and O-CU.
6. **Carrier Frequency:** Central frequency of the cell.
7. **F1 interface:** The open interface between O-CU and O-DU, the definition is given in O-RAN WG5. Refer to [3].
8. **IAB-donor:** RAN node which provides UE's interface to core network and wireless backhauling functionality to IAB
9. nodes. Refer to [4] and [5].
10. **IAB-node:** AN node that supports wireless access to UEs and wirelessly backhauls the access traffic. Refer to [4] and
11. [5].
12. **Integrated architecture:** In the integrated architecture, the O-RU and O-DU are implemented on one platform. Each
13. O-RU and RF frontend is associated with one LLS-DU. They are then aggregated to O-CU, connected by F1 interface.
14. **Layout:** Network framework.
15. **Mobile-Termination (MT):** MT is the UE function in each IAB node that allows it to communicate with parent node.
16. Refer to [4] and [5].
17. **Split architecture:** The O-RU and O-DU are physically separated from one another in this architecture. A fronthaul
18. gateway may aggregate multiple O-RUs to one O-DU. O-DU, fronthaul gateway and O-RUs are connected by
19. fronthaul interfaces.
20. **System bandwidth:** The bandwidth in which a Base Station transmits and receives multiple carriers and/or RATs
21. simultaneously.
22. **Transmission Reception Point (TRxP**): Antenna array with one or more antenna elements available to the network
23. located at a specific geographical location for a specific area.
24. **Layer**: This term refers to deployment layers. A single layer has no overlay cell. Two layers refers to a layout where
25. the second layer maybe deployed as underlaying cell w.r.t the primary cell.

### ![]({{site.baseurl}}/assets/images/390b1ac6bd05.png) Abbreviations

1. For the purposes of the present document, the abbreviations given in [1] and the following apply. An abbreviation
2. defined in the present document takes precedence over the definition of the same abbreviation, if any, in [1].

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| 22 | 7-2x | Fronthaul interface split option as defined by O-RAN WG4 |
| 23 | 3GPP | Third Generation Partnership Project |
| 24 | 5G | Fifth-Generation Mobile Communications |
| 25 | AC | Alternating Current |
| 26 | BB | Baseband |
| 27 | BDS | BeiDou Navigation Satellite System |
| 28 | bps | Bits Per Second |
| 29 | BS | Base Station |
| 30 | CU | Centralized Unit as defined by 3GPP |
| 31 | DC | Direct Current |
| 32 | DL | Downlink |
| 33 | DRX | Discontinuous Reception |
| 34 | DU | Distributed Unit as defined by 3GPP |
| 35 | EDGE | Enhanced Data rates for GSM Evolution |
| 36 | EIRP | Equivalent Isotropic Radiated Power |
| 37 | eMBB | Enhanced Mobile Broadband |
| 38 | FDD | Frequency Division Duplex |
| 39 | FH | Fronthaul |
| 40 | FHGWx?y | Fronthaul gateway that can translate FH protocol from an O-DU with split option x to an O-RU |
| 41 |  | with split option y, with currently available option 7-2x?8. |
| 42 | FHM | Fronthaul gateway with no FH protocol translation, supporting an O-DU with split option x and an |
| 43 |  | O-RU with split option x, with currently available options 6?6, 7-2x?7-2x and 8?8. |
| 44 | Gbps | Gigabits Per Second |
| 45 | GNSS | Global Navigation Satellite System |
| 46 | GSM | Global System for Mobile communications |
| 47 | HAR | Hardware Architecture and Requirement |
| 48 | HRD | Hardware Reference Design |
| 49 | IAB | Integrated Access and Backhaul |
| 50 | IEEE | Institute of Electrical and Electronics Engineers |
| 51 | ISD | Inter-Site Distance |
| 52 | KPI | Key Performance Indicator |
| 53 | MAC | Medium Access Control |
| 54 | MEC | Mobile/Multi-access Edge Computing |
| 55 | MIMO | Multiple Input Multiple Output |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| 1 | Ms | Milliseconds |
| 2 | MT | Mobile-Termination |
| 3 | MU-MIMO | Multiple User MIMO |
| 4 | NB-IoT | Narrow Band Internet of Things |
| 5 | NR | New Radio |
| 6 | O-CU | O-RAN Centralized Unit as defined by O-RAN |
| 7 | O-DU | O-RAN Distributed Unit as defined by O-RAN and having fronthaul split option 7-2x |
| 8 | O-DUx | A specific O-RAN Distributed Unit having fronthaul split option x where x may be 6, 7-2x (as |
| 9 |  | defined by WG4) or 8 |
| 10 | O-RAN | Open-Radio Access Network |
| 11 | O-RU | O-RAN Radio Unit as defined by O-RAN and having fronthaul split option 7-2x |
| 12 | O-RUx | A specific O-RAN Radio Unit having fronthaul split option x, where x is 6, 7-2x (as defined by |
| 13 |  | WG4) or 8, and which is used in a configuration where the fronthaul interface is the same at the |
| 14 |  | O-DUx |
| 15 | O-RUy | A specific O-RAN Radio Unit having fronthaul split option y, where y is 7-2x (as defined by |
| 16 |  | WG4) or 8, and which is used in a configuration where the fronthaul interface at O-RU is different |
| 17 |  | than that at O-DUx |
| 18 | PDCP | Packet Data Conversion Protocol |
| 19 | POE | Power Over Ethernet |
| 20 | QoE | Quality of Experience |
| 21 | QoS | Quality of Service |
| 22 | RAN | Radio Access Network |
| 23 | RAT | Radio Access Technology |
| 24 | Rel-x | Release number: where x is the actual release number |
| 25 | RF | Radio Frequency |
| 26 | RFFE | RF Front End |
| 27 | RLC | Radio Link Control |
| 28 | RRC | Radio Resource Control |
| 29 | RRM | Radio Resource Management |
| 30 | RU | Radio Unit as defined by 3GPP |
| 31 | Rx | Receiver |
| 32 | SDAP | Service Data Adaptation Protocol |
| 33 | SDU | Service Data Unit |
| 34 | SON | Self Organized Network |
| 35 | SU-MIMO | Single User MIMO |
| 36 | TDD | Time division Duplex |
| 37 | TR | Technical Report |
| 38 | TRP | Transmission Reception Point |
| 39 | TS | Technical Specification |
| 40 | Tx | Transmitter |
| 41 | UE | User Equipment |
| 42 | UL | Uplink |
| 43 | UPF | User Plane Function |
| 44 | URLLC | Ultra-Reliable and Low Latency Communications |
| 45 | usec | Microseconds |
| 46 | WG | Working Group |

</div>

## 1.4 Objectives

1. Openness is one of the key principles for O-RAN Alliance. To take full advantage of the economies of scale offered by
2. an open computing platform approach, O-RAN Alliance reference designs will specify high performance, spectral and
3. energy efficient white-box base station hardware. Reference platforms support a decoupled approach and offer detailed
4. schematics for hardware and software architecture to enable both the O-DUx and O-RUx.
5. The promotion of white box hardware is a potential way to reduce the cost of 5G deployment, which will benefit both
6. the operators and vendors. The objective of the white-box hardware workgroup is to specify and release a complete
7. reference design, thereby fostering a decoupled software and hardware platform. Currently, there is no open base station
8. reference design architecture, making it impossible for operators and vendors to develop software for optimizing their
9. network operation in various application scenarios. Therefore, it is further envisioned that the group will do research on
10. all related content to build valuable reference designs.
11. The main objective of this document is to aid in development of base station HW architecture and requirements
12. specification, and consequently, the HW reference design specification for white boxes based on the identified
13. deployment scenarios within this specification.

# 4 Chapter 2 Deployment Scenarios

## 2.1 General

1. In this chapter we present the deployment scenarios as identified by the operator group within O-RAN. The detailed
2. reference base station specification for each identified scenario and their classifications case will be provided in the
3. following chapters. The use case scenarios will include:
4. - eMBB (enhanced Mobile BroadBand)
5. - URLLC (Ultra-Reliable and Low Latency Communications)

### ![]({{site.baseurl}}/assets/images/732f0031dd61.png) Base Station Architecture: Background

1. For any deployment scenarios, the base station architecture falls into three categories: 1) Split Architecture, 2)
2. Integrated architecture or 3) All-in-one architecture. The split architecture can be deployed in two ways: 1) O-CU and
3. O-DUx are connected via an optional fronthaul multiplexer (FHM) or a switch to multiple O-RUx /optional cascaded O-
4. RUx (See Figure 2.1.1-1 or Figure 2.1.1-2) O-CU and O-DUx are connected via a fronthaul gateway (FHGWx?y) to
5. multiple O-RUys (See Figure 2.1.1-2). Note that the term optional is used to indicate there may be a deployment case
6. where an FHM, or a switch, or a FHGW may not be used for a specific deployment scenario. The O-CU shall be
7. located at the data center and the O-DU can be placed either at the data center or at the cell site. O-DUs located at the
8. cell site can also be placed in a ruggedized cabinet for outdoor deployments.
9. Depending on how much intelligence one requires to place in O-RUx or O-DUx, there will be a functional split that
10. splits up functions of PHY layer between O-DUx and O-RUx. O-CU and O-DUx may be designed to be integrated into
11. one hardware box or as two separate boxes. For downlink, depending on the deployed architecture, FHM or FHGW
12. broadcasts the data to all the O-RUxs or O-RUys, respectively. For uplink, it shall combine all the uplink data from
13. subtending O-RUxs or O-RUys according to the cell sets. Within working group 7 (and therefore all specifications
14. stemming from it), all fronthaul interfaces are based on the following three criteria. A fronthaul interface that meets one
15. of the following criteria can be defined as an open fronthaul interface:
16. 1. O-RAN WG4 (open fronthaul interface group) released interfaces; or
17. 2. O-RAN approved publicly (e.g., small cell forum or etc.) available external interfaces; or
18. 3. Fronthaul interfaces made available and published as part of an O-RAN approved WG7 reference design.
19. Within this specification, "dashed boxes" are representative of white boxes. In some cases, the figures use specific O-
20. DUx and O-RUy or O-DUx and O-RUx terminologies to demonstrate an example split option configuration. The first
21. case is where the FHGWx?y translates split option x from an O-DUx to split option y for an O-RUy. Currently, the
22. following split options with a fronthaul translation and the associated terminologies will be used throughout all WG7
23. specifications:

35 1- O-DU7-2x?FHGW7-2x?8? O-RU8

1. In the case where the fronthaul gateway does not perform a protocol translation, the terminology FHM O-DUx and O-
2. RUx are used, and the following split options and the associated terminologies will be used throughout all
3. specifications:
4. 1- O-DU6 ? FHM/Switch? O-RU6
5. 2- O-DU7-2x ? FHM/Switch? O-RU7-2x
6. 3- O-DU8 ? FHM/Switch? O-RU8

42

FH Interfacex Via Fiber Bypass

FH

![]({{site.baseurl}}/assets/images/261e2c10266c.png)![]({{site.baseurl}}/assets/images/c76e78dbc3bb.png)![]({{site.baseurl}}/assets/images/5706ce066587.png)![]({{site.baseurl}}/assets/images/1a3358142ba0.png)![]({{site.baseurl}}/assets/images/5706ce066587.png)![]({{site.baseurl}}/assets/images/453c077278e8.png)![]({{site.baseurl}}/assets/images/198447d76e1d.png)![]({{site.baseurl}}/assets/images/5706ce066587.png)![]({{site.baseurl}}/assets/images/5706ce066587.png)

FH

Interfacex

O-CU & O-DUx may/may not be

integrated into one Whitebox

F1

Interface

O-DUx

O-CU

O-RUx

FHM

Or Switch

(Optional )

O-RUx

O-RUx

Interfacex

1

##### 2 Figure 2.1.1-1: Base Station Architecture deploying lower level split without protocol translation

FH Interfacex Via Fiber Bypass

FH

![]({{site.baseurl}}/assets/images/30c367a27b36.png)![]({{site.baseurl}}/assets/images/48905915e208.png)![]({{site.baseurl}}/assets/images/59ffb31f4f06.png)![]({{site.baseurl}}/assets/images/48905915e208.png)![]({{site.baseurl}}/assets/images/3d6de8056599.png)![]({{site.baseurl}}/assets/images/49b5f7ddad22.png)![]({{site.baseurl}}/assets/images/d3e476a340f7.png)![]({{site.baseurl}}/assets/images/c74bfa388f4e.png)![]({{site.baseurl}}/assets/images/9e9ad5391586.png)![]({{site.baseurl}}/assets/images/49b5f7ddad22.png)

FH

Interfacex

O-CU & O-DUx may/may not be

integrated into one Whitebox

F1

Interface

O-DUx

O-CU

O-RUy

FHGWx?y

O-RUy

O-RUy

Interfacey

3

##### Figure 2.1.1-2: Base Station Architecture deploying lower level split with protocol translation

1. Note that within WG7 and therefore all specifications stemming from it, O-DU7-2x and O-RU7-2x refer to O-DU and O-
2. RU as defined by WG4.
3. Since in split architecture O-DUx and O-RUx are physically separated from one another by the FH interface, therefore,
4. depending on the split option, certain functions of base stations may either be performed in the O-DUx or O-RUx. There
5. are 8 different FH split options available (as defined by 3GPP); however, currently within WG7 the following split options
6. are considered (as requested by operators for their deployment scenarios):
7. 1. Split option 6: All PHY functions will reside in O-RUx while MAC functions will be performed in O-
8. DUx. In other words, only un-coded user data is on FH. In this case the terminology O-DU6 and O-
9. RU6 is used.
10. 2. Split option 7-2x, the PHY is split into High and Low PHY functions; where High PHY functions
11. (coding, rate matching, scrambling, modulations and layer mapping) are performed in O-DUx while O-
12. RUx performs the Low PHY functions (precoding, remapping, digital beamforming, IFFT and CP
13. insertion). All I/Q samples are in frequency domain. In this case the terminology O-DU7-2x and
14. O-RU7-2x is used.
15. 3. Split Option 8: All PHY functions are performed in O-DUx. This means that O-RUx function is
16. limited to RF to baseband conversion and vice versa. The I/Q samples on FH interface are in time-
17. domain. In this case the terminology O-DU8 and O-RU8 is used.
18. In some cases, when a FHM/Switch/FHGW is not used, a second O-RU may be cascaded to the first O-RU via the FH
19. interface. In this way, the coverage area may be further expanded. The FH interface between the two cascaded O-RUs
20. shall be the same as the FH interface between the O-DU and the first O-RU. For downlink, the first O-RU copies the
21. data received from the O-DU, then sends it to the second O-RU. For uplink, the first O-RU combines the uplink data
22. from the second O-RU, and then sends it to the O-DU. 27
23. Integrated Architecture is defined as where O-DUx and O-RUx are physically located in one hardware box and as such
24. no FH interface is required to connect them. Figure 2.1.1-3 illustrates the base station having an integrated architecture.
25. For the integrated architecture, open F1 interface is between O-CU and O-DUx (which is discussed in O-RAN WG5). 4

#### F1

O-DUx & O-RUx

O-DUx & O-RUx

O-DUx & O-RUx

Switch

O-CU

Interface ?

?

5

##### 6 Figure 2.1.1-3: Base Station with Integrated Architecture

7

1. All-in-one Architecture is defined as where O-CU, O-DUx and O-RUx are physically located in one hardware box, as
2. such no FH interface and F1 interface are required to connect them. Figure 2.1.1-4 illustrates the base station having an
3. all-in-one architecture. The functions of O-CU, O-DUx and O-RUx are included in baseband unit followed by RF
4. Processing unit.

12

13

BB & RF

14

1. **Figure 2.1.1-4: Base Station with All-in-one Architecture**

## 2.2 Deployment Scenarios

1. Deployment scenarios for use-cases described in section 2.1 will be provided in this section. These scenarios are based
2. on reported scenarios as reported by service providers. Scenarios in this specification do not preclude any other
3. scenario. Other scenarios may be added as a change request to this specification.

### ![]({{site.baseurl}}/assets/images/b23ee64fdf7a.png) Indoor Picocell

1. The indoor deployment scenario is mainly for small coverage per site within buildings, open spaces, etc. A key
2. characteristic of this deployment scenario is consistent indoor user experience, high user density within buildings an
3. open office and high capacity.
4. Some of its attributes are listed in Table 2.2.1-1 below.

##### Table 2.2.1-1: Attributes for FR1 Indoor Picocell

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Attributes** | **Values or Assumptions** |
| Carrier Frequency (a) | n2, n4, n5, n13, n41, n48, n66, n77, n78, n79 |
| System Bandwidth(b) | Up to 100MHz (DL+UL) |
| Cell Layout | Single layer |
| Mounting options | Above ceiling (Plenum rated) and/or on the wall; Open Office |
| ISD | 20m |
| BS MIMO Configuration(c) | 2TX/2RX or 4TX/4RX |
| Output power | 2TX/2RX: <=27dBm (per channel) Conducted Output Power; 4TX/4RX: <=24dBm (per channel) Conducted Output Power |
| Coverage(d) | Omni |
| Key Architecture Features | Split Architecture (split options: 6, 7-2x and 8 are supported and each  option is further described in Section 2.1.1) and Integrated Architecture. |

</div>

* 1. Notes:
  2. (a) The options noted here are for the first stage, and do not preclude the study of other spectrum options, e.g. mmWave. Certain
  3. technology bands have specific regulatory requirements that must be followed
  4. (b) The system bandwidth is the total bandwidth typically assumed to derive the values for some KPIs such as area traffic
  5. capacity and user experienced data rate. It is also allowed to have an aggregated bandwidth totalling up to the system
  6. bandwidth. "DL + UL" refers to either of the following two cases:
  7. - FDD with symmetric bandwidth allocations between DL and UL.
  8. - TDD with the aggregated system bandwidth used for either DL or UL via switching in time-domain.
  9. (c) The options noted here are typical configurations.
  10. (d) Other options (e.g. Sectorized with directional antenna), are not precluded.

12

### ![]({{site.baseurl}}/assets/images/660ca638c982.png) Outdoor Picocell

1. Two scenarios have been identified for picocell outdoor scenario: 1) FR1 and 2) FR2. While both deployment
2. scenarios have integrated architecture (See Figure 2.1.1-3), they do have different attributes and as such they have been
3. listed separately in Table 2.2.2-1 and Table 2.2.2-2.

##### Table 2.2.2-1: Attributes for FR1 Outdoor Picocell

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Attributes** | **Values or Assumptions** |
| Carrier Frequency(a) | n2, n4, n5, n13, n41, n48, n66, n77, n78, n79 |
| System Bandwidth(b) | >=100 MHz (DL+UL) |
| Cell Layout | single layer Two layers:   * Macro or Micro layer * Pico layer: random locations |
| Mounting Options | Rooftop, Side of Building (wall), Pole, under overhang |
| ISD | 200 m |
| BS MIMO Configuration(c) | Up to 4TX/4RX |
| Output Power | >=35 dBm EIRP |
| Coverage(d) | Omni |
| Key Architecture Features | Integrated Architecture. See Figure 2.1.1-3. |

</div>

1. Notes:
2. (a) The options noted here are for the first stage, and do not preclude the study of other spectrum options, e.g. mmWave. Certain
3. technology bands have specific regulatory requirements that must be followed
4. (b) The system bandwidth is the total bandwidth typically assumed to derive the values for some KPIs such as area traffic
5. capacity and user experienced data rate. It is also allowed to have an aggregated bandwidth totalling up to the system
6. bandwidth. "DL + UL" refers to either of the following two cases:
   1. - FDD with symmetric bandwidth allocations between DL and UL.
   2. - TDD with the aggregated system bandwidth used for either DL or UL via switching in time-domain.
   3. (c) The options noted here are typical configurations.
   4. (d) Other options (e.g., Sectorized with directional antenna), are not precluded.

##### Table 2.2.2-2: Attributes for FR2 Outdoor Picocell

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Attributes** | **Values or Assumptions** |
| Carrier Frequency(a) | n257, n258, n260, n261 |
| System Bandwidth(b) | up to 800 MHz (DL+ UL) |
| Layout | single layer Two layers:   * Macro or Micro layer * Pico layer: random locations |
| Mounting Options | Rooftop, Side of Building (wall), Pole, under overhang |
| ISD | 200 m |
| BS MIMO Configuration(c) | Up to 4TX/4RX |
| Output Power | 50-55 dBm EIRP |
| Coverage(d) | Omni |
| Key Architecture Features | Integrated Architecture. See Figure 2.1.1-3 . |

</div>

* 1. Notes:
  2. (a) The options noted here are for the first stage, and do not preclude the study of other spectrum options, e.g. mmWave. Certain
  3. technology bands have specific regulatory requirements that must be followed
  4. (b) The system bandwidth is the total bandwidth typically assumed to derive the values for some KPIs such as area traffic
  5. capacity and user experienced data rate. It is also allowed to have an aggregated bandwidth totalling up to the system
  6. bandwidth. "DL + UL" refers to either of the following two cases:
  7. - FDD with symmetric bandwidth allocations between DL and UL.
  8. - TDD with the aggregated system bandwidth used for either DL or UL via switching in time-domain.
  9. (c) The options noted here are typical configurations.
  10. (d) Other options (e.g. Sectorized with directional antenna) are not precluded.

### ![]({{site.baseurl}}/assets/images/5263a44e8af7.png) Outdoor Microcell

* 1. There are two deployment scenario proposals for outdoor microcell by operators' group. The architectures for both
  2. microcell deployment scenarios are the same and it is illustrated in Figure 2.1.1-1 and Figure 2.1.1-2, except that
  3. outdoor microcell have all-in-one architecture (See Figure 2.1.1-4).
  4. The base station attributes for FR1 are listed in Table 2.2.3-1. The attributes for FR2 microcell outdoor deployment
  5. scenario are listed in Table 2.2.3-2. It shall be noted that all frequencies are given as NR operating bands in either in
  6. FR1 or FR2.

##### Table 2.2.3-1: Attributes for FR1 Outdoor Microcell

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Attributes** | **Values or Assumptions** | |
| **Outdoor Microcell** | **Enterprise Microcell** |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| Carrier Frequency(a) | n2, n4, n5, n13, n41, n48, n66, n77, n78, n79 | n41, n78 |
| System Bandwidth(b) | Up to 200MHz (DL+UL) | Up to 200MHz (DL+UL) |
| Cell Layout | single layer Two layers:   * Macro or Micro layer * Pico layer: random locations | single layer Two layers:   * Macro or Micro layer * Pico layer: random locations |
| Mounting Options | Rooftop, Side of Building (wall), Pole | Rooftop, Side of Building (wall), Pole |
| ISD | 700 m | 500m  (distance between the two cascaded O- RUs: Up to 10km) |
| BS MIMO Layers(c) | Up to 16TX/16RX | Up to 8TX/8RX |
| Output Power | < 61 dBm EIRP | < 64 dBm EIRP |
| Coverage(d) | Omni/Sectorized | Omni/Sectorized |
| Key Architecture Features | Split architecture (O-RAN WG4 split option 7- 2x) and all-in-one architecture. | Split architecture (O-RAN WG4 split option 7-2x, or split option 8). |

</div>

* + 1. Notes:
    2. (a) The options noted here are for the first stage, and do not preclude the study of other spectrum options, e.g., mmWave. Certain
    3. technology bands have specific regulatory requirements that must be followed
    4. (b) The system bandwidth is the total bandwidth typically assumed to derive the values for some KPIs such as area traffic
    5. capacity and user experienced data rate. It is also allowed to have an aggregated bandwidth totalling up to the system
    6. bandwidth. "DL + UL" refers to either of the following two cases:
    7. - FDD with symmetric bandwidth allocations between DL and UL.
    8. - TDD with the aggregated system bandwidth used for either DL or UL via switching in time-domain.
    9. (c) The options noted here are typical configurations.
    10. (d) Other options (e.g. Sectorized with directional antenna) are not precluded.

##### Table 2.2.3-2: Attributes for FR2 Outdoor Microcell

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Attributes** | **Values or Assumptions** |
| Carrier Frequency(a) | n257, n258, n260, n261 |
| System Bandwidth(b) | Up to 1.2 GHz (DL+UL) |
| Cell Layout | single layer Two layers:   * Macro or Micro layer * Pico layer: random locations |
| Mounting Options | Rooftop, Side of Building (wall), Pole |
| ISD | 200 m |
| BS MIMO Layers(c) | Up to 4TX/4RX |
| Output Power | >60 dBm EIRP |
| Coverage(d) | Sectorized |
| Key Architecture Features | Split Architecture (O-RAN WG4 split option 7-2x). |

</div>

* + 1. Notes:
    2. (a) The options noted here are for the first stage, and do not preclude the study of other spectrum options, e.g., mmWave. Certain
    3. technology bands have specific regulatory requirements that must be followed
    4. (b) The system bandwidth is the total bandwidth typically assumed to derive the values for some KPIs such as area traffic
    5. capacity and user experienced data rate. It is also allowed to have an aggregated bandwidth totalling up to the system
    6. bandwidth. "DL + UL" refers to either of the following two cases:
    7. - FDD with symmetric bandwidth allocations between DL and UL.
    8. - TDD with the aggregated system bandwidth used for either DL or UL via switching in time-domain.
    9. (c) The options noted here are typical configurations.
    10. (d) Other options (e.g. Sectorized with directional antenna) are not precluded.

### ![]({{site.baseurl}}/assets/images/c6cf0c949a7b.png) Integrated access and backhaul (IAB)

* + - 1. A key benefit of Integrated Access and Backhaul (IAB) is enabling flexible and very dense deployment of NR cells
      2. without densifying the transport network proportionately. Various deployment scenarios have been proposed including
      3. support for outdoor small cell deployments, indoors, or even mobile relays (e.g., on buses or trains). The IAB
      4. architecture is shown in Figure 2.2.4-1below. IAB specifications as well as F1\* interface can be found in [3].

Small Form Factor

MT and O-DUx/O-RUx

IAB Relay

MT and O-DUx/O-RUx

IAB Relay

\*

Open F1 or

adapt Interface

Small Form Factor MT and O-DUx/O-RUx

Small Form Factor

MT and O-DUx/O-RUx

O-CU

O-DUx/O-RUx

Small Form Factor

Small Form Factor

Open F1/E2 Interface

IAB Node

IAB Relay

##### Figure 2.2.4-1: IAB integrated architecture.

* + - 1. Some of the attributes of integrated access and backhaul are listed in Table 2.2.4-1.

IAB Relay

##### Table 2.2.4-1: Attributes for Integrated Access and Backhaul

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Attributes** | **Values or assumptions** |
| Carrier Frequency(a) | n257, n258, n260, n261 |
| System Bandwidth(b) | n257, n258, n261: 100 - 400 MHz (DL+ UL), n260: 400 - 800 MHz (DL+ UL) |
| Cell Layout | Single or HetNet, single hop to multi-hop |
| Mounting Options | Rooftop, Side of Building (wall), Pole, under overhang, vehicle (bus) |
| ISD | 200 m |
| BS MIMO Layers(c) | Up to 4TX/4RX |
| Output Power | 50-55 dBm EIRP, to be confirmed after 3GPP RAN4 confirmation |
| Coverage (d) | Omni |
| Key Architecture Features(e) | Integrated Architecture (O-DU + MT functionality) |

</div>

* + - 1. Notes:
      2. (a) The options noted here is for the first stage, and do not preclude the study of other spectrum options.
      3. (b) "DL + UL" refers to either of the following two cases:
      4. - FDD with symmetric bandwidth allocations between DL and UL.
      5. - TDD with the aggregated system bandwidth used for either DL or UL via switching in time-domain.
      6. (c) The options noted here are typical configurations.
      7. (d) Other options (e.g., Sectorized with directional antenna) are not precluded.
      8. (e) MT is the UE function in each IAB node that allows it to communicate with parent node.

17

### 2.2.5 Outdoor Macrocell (OMAC)

1. The outdoor deployment scenario is mainly for macro coverage for roads, buildings, open spaces, etc. in rural, semi-
2. urban and urban areas. A key characteristic of this deployment scenario is consistent 5G experience and seamless
3. mobility.
4. The Macrocell configuration is defined below for split option 7-2x with the O-DU at the cell site or at the data center
5. and can be an integrated architecture (Split 2 architecture - Integrated O-DU and O-RU).
6. Some of its attributes are listed in Table 2.2.5-1 below.
7. The outdoor massive MIMO radio unit deployment scenario is mainly used for improved coverage and capacity
8. solution utilizing both spatial multiplexing and beamforming. It offers higher capacity and better user experience when
9. compared to traditional 8T8R radio. Massive MIMO O-RU includes active antenna array system with higher number of
10. radio RF chains. This can be deployed for high traffic roads, high rise buildings, open spaces, etc. and in rural, urban
11. and dense urban areas.
12. The massive MIMO radio configuration is defined below for split option 7-2x with the O-DU at the cell site or at the
13. data center. The massive MIMO specific attributes are listed in Table 2.2.5-1 below. Massive MIMO will have separate
14. chapters in OMAC HAR and HRD documents to describe the high- and low-level architectures in detail, respectively

##### Table 2.2.5-1: Attributes for FR1 Outdoor Macrocell

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Attributes** | **Values or Assumptions** |
| Carrier Frequency(a) | n26, n29, n41, n66, n70, n71, n77, n78, B1/n1, B3/n3, B7/n7, n78 CEPT(e)). |
| System Bandwidth(b) | up to 400 MHz TDD; up to 205 MHz FDD |
| Cell Layout | up to 8T8R O-RU: up to 4-layer MIMO  16T16R to 64T64R Massive MIMO O-RU: up to 16-layer MIMO (DL) and; up to 12-layer MIMO (UL) |
| Mounting Options | Rooftop, Towers, Side of Buildings |
| ISD | Variable |
| BS MIMO Layers(c) | Up to 8T8R  For Massive MIMO Radio Unit:16T16R to 64T64R |
| Output Power | Total Radiated Power: Variable (Default 40W/10MHz) |
| Coverage(d) | Sectorized, Directional, Beamforming (Fixed/Dynamic) |
| Key Architecture Features | Split Architecture (O-RAN WG4 split option 7-2x), see  Figure 2.1.1-1: Base Station Architecture deploying lower level split without protocol translation  Option for O-DU at Data Center or Cell Site; Integrated Architecture. See Figure 2.1.1-3: Base Station with Integrated Architecture |

</div>

10

1. Notes:
2. (a) The options noted here are for the first stage, and do not preclude the study of other spectrum options, e.g., CBRS. Certain
3. technology bands have specific regulatory requirements that must be followed
4. (b) The system bandwidth is the total bandwidth typically assumed to derive the values for some KPIs such as area traffic
5. capacity and user experienced data rate.
6. (c) The options noted here are typical configurations.
7. (d) Other options (e.g. Omni antennas) are not precluded. .
8. (e) n78 CEPT makes reference to a European n78 sub-band (according with ECC Decision (11) 06 and CEPT 19

### ![]({{site.baseurl}}/assets/images/ea9946b9d56d.png) Fronthaul Gateway

1. A Fronthaul Gateway (FHGW) is deployed between an O-DUx and an O-RUy and provides the necessary protocol
2. translation between splits x and y. Such a Fronthaul Gateway is being referred to as FHGWx?y. In Addition to the
3. protocol translation capabilities, a Fronthaul Gateway can provide packet transport and aggregation capabilities.
4. A Fronthaul Gateway can be deployed in any of the scenarios mentioned in the sections above. Generally, the attributes
5. of a Fronthaul Gateway are given in Table 2.2.6-1. 26

27

28

29

1

##### Table 2.2.6-1: Attributes for Fronthaul Gateway

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Attributes** | **Values or Assumptions** |
| Functionalities | Packet Switching, Radio Interface Translation |
| Protocol Translation Support | Translation between Split Option 8 and Split Option 7-2x (Refer to [6]) |
| Timing Capabilities | Compliant to S-Plane Protocol Specification in [6] |
| Deployment | Indoor and Outdoor |
| Interfaces | Interfaces to connect to O-DUx Interfaces to connect to O-RUy |

</div>

3

4

5

# 1 Chapter 3 Base Station Type Classification

## 3.1 General

1. The base stations for each usage scenario in chapter 2 apply to Wide Area Base Stations, Medium Range Base Stations
2. and Local Area Base Stations. The definition for the three BS classes is given in subsection 4.4 of [2]. The BS classes
3. for each deployment scenario described in this document are defined in Table 2.2.6-1 below. 6

##### 7 Table 2.2.6-1: Base Station Classes for Deployment Scenarios

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Deployment Scenario** | **FR1/FR2** | **Base Station Class** |
| Indoor Picocell Split Architecture | FR1 | Local Area/Medium Area |
| Indoor Picocell Integrated Architecture | FR1 | Local Area/Medium Area |
| Outdoor Picocell Integrated Architecture | FR1 | Medium Area |
| FR2 | Medium Area |
| Outdoor Microcell Split Architecture | FR1 | Medium/Wide Area |
| FR2 | Medium/Wide Area |
| Outdoor Microcell All-in-one Architecture | FR1 | Medium Area |
| Integrated Access and Backhaul | FR2 | Medium Area |
| Outdoor Macro | FR1 | Wide Area |

</div>

8

## 9 3.2 Indoor

1. For indoor coverage, the base station can be identified as Local Area Base Station, and there are two key architecture
2. types, namely, the split architecture and the integrated architecture.
3. NOTE: The hardware design may consider the co-location of MEC and UPF part in O-CU/O-DU functionality if
4. needed.

### ![]({{site.baseurl}}/assets/images/2ecdfee5f7bc.png) The split architecture

1. Descriptions of the indoor split architecture are listed in Table 3.2.1-1.

##### Table 3.2.1-1: Descriptions of Attributes for the Indoor Picocell Split Architecture

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Attributes** | **Description** |
| Reference Figure | Figure 2.1.1-1: Base Station Architecture deploying lower level split without protocol translation |
| Interface(a) | Open fronthaul interface |
| Functionality (b) | Split Option 6:  O-RU6: RF, IF, PHY (Downlink and uplink digital processing, baseband signal conversion to/from RF signal)  O-CU & O-DU6: MAC, RLC, PDCP (Downlink and uplink baseband processing, supply system synchronization clock, signalling processing, OM function, interface with core network)  Split Option 7-2x:  O-RU: RF, IF, PHY-LOW (Downlink and uplink digital processing, baseband signal conversion to/from RF signal)  O-CU & O-DU: PHY-HIGH, MAC, RLC, PDCP (Downlink and uplink baseband processing, supply system synchronization clock, signalling processing, OM function, interface with core network)  Split Option 8:  O-RU8: Downlink baseband signal convert to RF signal, uplink RF signal convert to baseband signal, interface with the fronthaul gateway  O-CU &O-DU8: Downlink and uplink baseband processing, supply system synchronization clock, signalling processing, OM function, interface with core network and the fronthaul gateway  Fronthaul gateway: Downlink broadcasting, uplink combining, power supply for O-RU8, cascade with other fronthaul gateway, synchronization clock |
| Transmission media(b) | From O-DU to Fronthaul gateway: Fiber;  From Fronthaul gateway to O-RU: Fiber or Optical Electric Composite Cable  From (O-DU&O-CU) to O-RU: Fiber or Optical Electric Composite Cable From (O-DU&O-CU) and core network:  Fiber or Optical Electric Composite Cable; Trusted or Untrusted transport |
| Duplex(b) | TDD, FDD |
| Deployment location | Indoor |
| Cell Coverage | Omni |
| MIMO Configuration(b) | SU-MIMO/MU-MIMO; up to 4TX/4RX |
| User distribution(c) | 20-200 |
| Fronthaul Latency | Split Option 6: TBD  Split Option 7-2x: fronthaul dependent (refer to [6]) Split Option 8: 150us |
| Synchronization(b) | GNSS, IEEE-1588v2, BDS |
| Power Supply Mode(b) | POE or by optical electric composite cables |

</div>

* 1. Notes:
  2. (a) The option noted here is for the first stage, and do not preclude other interface options.
  3. (b) The options noted here are for reference, and do not preclude other options.
  4. (c) The number of users distribution refers to the active users in one base station, and the options are for reference.

### ![]({{site.baseurl}}/assets/images/1251730bf196.png) The integrated architecture

* 1. Descriptions of the integrated architecture are listed in Table 3.2.2-1.

1

##### Table 3.2.2-1: Descriptions of Attributes for the Indoor Picocell Integrated Architecture

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Attributes** | **Description** |
| Reference Figure | Figure 2.1.1-3 |
| Interface(a) | F1 |
| Functionality(b) | O-DU+O-RU: Downlink and uplink baseband processing, supply system synchronization clock, signalling processing, OM function, interface with core network and, downlink baseband signal convert to RF signal, uplink RF  signal convert to baseband signal |
| Transmission media(b) | Fiber or Optical Electric Composite Cable |
| Duplex(b) | TDD, FDD |
| Deployment location | Indoor |
| Cell Coverage | Omni |
| MIMO Configuration(b) | SU-MIMO/MU-MIMO; up to 4TX/4RX |
| User distribution(c) | 100 |
| Fronthaul Latency | Not Applicable |
| Synchronization(b) | GNSS, IEEE-1588v2, Sniffer, BDS |
| Power Supply Mode(b) | POE or by optical electric composite cables |

</div>

1. Notes:
2. (a) The option noted here is for the first stage, and do not preclude other interface options.
3. (b) The options noted here are for reference, and do not preclude other options.
4. (c) The number of users distribution refers to the active users in one base station, and the options are for reference

## 3.3 Outdoor

1. For the outdoor scenario, the base station can be identified as a Medium Range Base Station, and there are three
2. potential key architecture types, which are the split architecture, the integrated architecture and the all-in-one
3. architecture.
4. Note: The hardware design may consider the co-location of MEC and UPF part in O-CU/O-DU functionality if needed.

### ![]({{site.baseurl}}/assets/images/374cfe656839.png) Picocell

1. The base station architecture for Picocell incorporates an integrated O-DU/O-RU architecture, and its description is
2. listed in Table 3.3.1-1.

##### Table 3.3.1-1: Descriptions of Attributes for the Outdoor Picocell Architecture

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Attributes** | **Description** |
| Reference Figure | Figure 2.1.1-3 |
| Interface(a) | F1 |
| Functionality(b) | O-DU+O-RU: Downlink and uplink baseband processing, supply system synchronization clock, signalling processing, OM function, interface with core network and, downlink baseband signal convert to RF signal, uplink RF signal convert to baseband signal |
| Transmission media(b) | Fiber or Optical Electric Composite Cable |
| Duplex(b) | TDD |
| Deployment location | Outdoor |
| Cell Coverage | Omni |
| MIMO Configuration(b) | SU-MIMO/MU-MIMO; up to 4TX/4RX |
| User distribution(c) | >200 |
| Fronthaul Latency | Not Applicable |
| Synchronization(b) | GNSS or IEEE-1588v2 |
| Power Supply Mode(b) | POE or by optical electric composite cables |

</div>

1. Notes:
   1. (a) The option noted here is for the first stage, and do not preclude other interface options.
   2. (b) The options noted here are for reference, and do not preclude other options.
   3. (c) The number of users distribution refers to the active users in one base station, and the options are for reference

### ![]({{site.baseurl}}/assets/images/4710b4f43353.png) Microcell

* 1. The base stations for FR1 microcell scenarios incorporate potential key architecture types, which are the split
  2. architecture and the all-in-one architecture. The base stations for FR2 Outdoor microcell scenarios incorporate a split
  3. RAN architecture. Their descriptions are listed in Table 3.3.2-1, Table 3.3.2-2, Table 3.3.2-3 and Table 3.3.2-4

##### Table 3.3.2-1: Descriptions of Attributes for the FR1 Outdoor Microcell Architecture

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Attributes** | **Description** |
| Reference Figure | Figure 2.1.1-1: Base Station Architecture deploying lower level split without protocol translation  Figure 2.1.1-2 |
| Interface(a) | Open fronthaul interface (WG4) (Option 7-2x) |
| Functionality(b) | Provides lower layer split in RAN so that PHY-Hi, MAC/RLC/PDCP/SDAP/RRC could be centralized or virtualized and support CoMP features etc. |
| Transmission media(b) | Fiber, wireless to fiber |
| Duplex(b) | TDD |
| Deployment location | Outdoor |
| Cell Coverage | Omni; Sectorized |
| MIMO(b) | SU-MIMO/MU-MIMO; up to 16TX/16RX |
| User distribution(c) | >200 |
| Fronthaul Latency | Split Option 7-2x: fronthaul dependent (refer to [6]) |
| Synchronization(b) | GNSS or IEEE-1588v2 |
| Power Supply Mode(b) | DC/AC |

</div>

* 1. Notes:
  2. (a) The option noted here is for the first stage, and do not preclude other interface options.
  3. (b) The options noted here are for reference, and do not preclude other options.
  4. (c) The number of users distribution refers to the active users in one base station, and the options are for reference

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

1

2

##### Table 3.3.2-2: Descriptions of Attributes for the FR1 Enterprise Microcell Architecture

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Attributes** | **Description** |
| Reference Figure | Figure 2.1.1-1: Base Station Architecture deploying lower level split without protocol translation |
| Interface(a) | Open fronthaul interface |
| Functionality(b) | Split Option 7-2x:  O-RU: RF, IF, PHY-LOW (Downlink and uplink digital processing, baseband signal conversion to/from RF signal)  O-CU & O-DU: PHY-HIGH, MAC, RLC, PDCP (Downlink and uplink baseband processing, supply system synchronization clock, signalling processing, OM function, interface with core network)  Split Option 8:  O-RU: Downlink baseband signal convert to RF signal, uplink RF signal convert to baseband signal, interface with O-DU  O-CU &O-DU: Downlink and uplink baseband processing, supply system synchronization clock, signalling processing, OM function, interface with core network and O-RU. |
| Transmission media(b) | Fiber |
| Duplex(b) | TDD |
| Deployment location | Outdoor |
| Cell Coverage | Omni; Sectorized |
| MIMO(b) | SU-MIMO/MU-MIMO; up to 8TX/8RX |
| User distribution(c) | >300 |
| Fronthaul Latency | Split Option 7-2x: fronthaul dependent (refer to [6]) Split Option 8: 150us |
| Synchronization(b) | GNSS or IEEE-1588v2 |
| Power Supply Mode(b) | DC/AC |

</div>

* 1. Notes:
  2. (a) The option noted here is for the first stage, and do not preclude other interface options.
  3. (b) The options noted here are for reference, and do not preclude other options.
  4. (c) The number of users distribution refers to the active users in one base station, and the options are for reference

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

##### Table 3.3.2-3: Descriptions of Attributes for the FR1 Outdoor Microcell with All-In-One Architecture

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Attributes** | **Description** |
| Reference Figure | Figure 2.1.1-1: Base Station Architecture deploying lower level split without protocol translation |
| Interface | Not Applicable |
| Functionality(a) | O-CU+O-DU+O-RU: RF, IF, PHY-LOW (Downlink and uplink digital processing, baseband signal conversion to/from RF signal), PHY-HIGH, MAC, RLC, PDCP (Downlink and uplink baseband processing, supply system synchronization clock, signalling processing, OM function, interface with core network) |
| Transmission media(a) | Fiber, wireless to fiber |
| Duplex(a) | TDD |
| Deployment location | Outdoor |
| Cell Coverage | Omni; Sectorized |
| MIMO(a) | SU-MIMO/MU-MIMO; up to 2TX/2RX |
| User distribution(b) | >300 |
| Fronthaul Latency | Not Applicable |
| Synchronization(a) | GNSS or IEEE-1588v2 |
| Power Supply Mode(a) | DC/AC |

</div>

1. Notes:
2. (a) The option noted here is for reference, and do not preclude other options.
3. (b) The number of users distribution refers to the active users in one base station, and the options are for reference.

5

##### Table 3.3.2-4: Descriptions of Attributes for the FR2 Outdoor Microcell Architecture

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Attributes** | **Description** |
| Reference Figure | Figure 2.1.1-1: Base Station Architecture deploying lower level split without protocol translation |
| Interface(a) | F1 interface between O-CU/O-DU (Split Option 2)  Open fronthaul interface (WG4) between O-DU/O-RU (Option 7-2x) |
| Functionality(b) | O-DU/O-RU: Downlink and uplink baseband processing, supply system synchronization clock, scheduling, signalling processing, OM function, interface with core network and, Downlink baseband signal convert to RF signal, uplink RF signal convert to baseband signal |
| Transmission media(b) | Fiber, wireless to fiber |
| Duplex(b) | TDD |
| Deployment location | Small cell, Outdoor, Urban/Suburban |
| Cell Coverage | Sectorized |
| MIMO Configuration(b) | SU-MIMO/MU-MIMO; up to 4TX/4RX |
| User distribution(c) | >100 |
| Fronthaul Latency | Split Option 7-2x: fronthaul dependent (refer to [6]) |
| Synchronization(b) | GNSS or IEEE-1588v2 |
| Power Supply Mode(b) | AC or POE or by optical electric composite cables |

</div>

1. Notes:
2. (a) The option noted here is for the first stage, and do not preclude other interface options.
3. (b) The options noted here are for reference, and do not preclude other options.
4. (c) The number of users distribution refers to the active users in one base station, and the options are for reference

11

12

### ![]({{site.baseurl}}/assets/images/2cb3cf782ca4.png) Integrated access and backhaul (IAB)

* 1. The IAB base station uses an integrated architecture, and its attributes are listed in Table 3.3.3-1.

##### Table 3.3.3-1: Descriptions of Attributes for the IAB Architecture

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Attributes** | **Description** |
| Reference Figure | Figure 2.2.4-1 |
| Interface(a) | F1 Interface (WG5) (split option 2)  Open fronthaul interface (WG4) (split option 7-2x) |
| Functionality(b) | Provides support for multi-hop relay per Rel. 16. |
| Transmission media(b) | Fiber, wireless to fiber |
| Duplex(b) | TDD |
| Deployment location | Outdoor mobile/fixed relays, Urban/Suburban |
| Cell Coverage | Omni or Sectorized |
| MIMO Configuration(b) | SU/MIMO and MU/MIMO; up to 4TX/4RX |
| User distribution(c) | 30 - 40 |
| Latency | 4ms/hop for eMBB |
| Synchronization(b) | GNSS, or OTA per Rel-16 |
| Power Supply Mode(b) | AC, POE, or by optical electric composite cables |

</div>

* 1. Notes:
  2. (a) The option noted here is for the first stage, and do not preclude other interface options.
  3. (b) The options noted here are for reference, and do not preclude other options.
  4. (c) The number of users distribution refers to the active users in one base station, and the options are for reference

8

### 9 3.3.4 Macrocell

##### 10 The base stations for macrocell scenarios incorporate a split RAN architecture. Their descriptions are listed in

11 Table 3.3.4-1.

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

1

##### Table 3.3.4-1: Descriptions of Attributes for the FR1 Outdoor Macrocell Architecture

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Attributes** | **Description** |
| Reference Figure | Figure 2.1.1-1 |
| Interface(a) | Split Architecture (O-RAN WG4 split option 7-2x). |
| Functionality(b) | Split Option 7-2x:  O-RU: RF, IF, PHY-LOW (Downlink and uplink digital processing, baseband signal conversion to/from RF signal)  O-DU: PHY-HIGH, MAC, RLC, PDCP (Downlink and uplink baseband processing, supply system synchronization clock, signalling processing)  O-CU: PDCP, SDAP, RRC (Control and User Plane separation, RRM function, interface with core network) |
| Transmission media(b) | Fiber, wireless to fiber |
| Duplex(b) | FDD, TDD |
| Deployment location | Outdoor |
| Cell Coverage | Sectorized, directional |
| MIMO(b) | Up to 16 layer MIMO; up to 64TX/64RX |
| User distribution(c) | >200 |
| Fronthaul Latency | 160-200 usec |
| Synchronization(b) | GNSS, IEEE-1588v2, SyncE |
| Power Supply Mode(b) | DC/AC |

</div>

1. Notes:
2. (a) The option noted here is for the first stage, and do not preclude other interface options.
3. (b) The options noted here are for reference, and do not preclude other options.
4. (c) The number of Users distribution refers to the active users in one base station, and the options are for reference

7

# 1 Chapter 4 Key performance indicators

## 4.1 Peak data rate

1. Peak data rate is the highest theoretical data rate which is the received data bits assuming error-free conditions
2. assignable to a single mobile station, when all assignable radio resources for the corresponding link direction are
3. utilized (i.e., excluding radio resources that are used for physical layer synchronization, reference signals or pilots,
4. guard bands and guard times).

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| Indoor | Outdoor | | | |
| Pico | Pico | Micro | IAB | Macro |
| 0.75-1.33Gbps (DL); | FR1: up to 6/12 Gbps | FR1: up to 6/12 Gbps | FR2: | FR1: up to 6/12 |
| 0.25-0.67Gbps (UL); | (UL/DL) | (UL/DL) | 3-12 Gbps (DL); | Gbps (UL/DL) |
| NOTE1 | FR2: up to 15/30 Gbps | FR2: up to 15/30 Gbps | 1.5-6 Gbps (UL) |  |
|  | (UL/DL) | (UL/DL) | For n260: |  |
|  |  |  | 12-24 Gbps (DL); |  |
|  |  |  | 6-12 Gbps (UL) |  |

</div>

1. NOTE1: This requirement is calculated based on the frame structure UL:DL=1:1 (TDD).

## 4.2 Peak spectral efficiency

1. Peak spectral efficiency is the highest theoretical data rate (normalized by bandwidth), which is the received data bits
2. assuming error-free conditions assignable to a single mobile station, when all assignable radio resources for the
3. corresponding link direction are utilized (i.e., excluding radio resources that are used for physical layer synchronization,
4. reference signals or pilots, guard bands and guard times).
5. Higher frequency bands could have higher bandwidth, but lower spectral efficiency and lower frequency bands could
6. have lower bandwidth but higher spectral efficiency. Thus, peak data rate cannot be directly derived from peak spectral
7. efficiency and bandwidth multiplication.
8. Peak spectral efficiency (bps/Hz) = Peak data rate (bps)/ bandwidth (Hz).

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| Indoor | Outdoor | | | |
| Pico | Pico | Micro | IAB | Macro |
| 7.5-13.3 bps/Hz (DL);  2.5-6.7 bps/Hz (UP); NOTE1 | 30 bps/Hz (DL)  15 bps/Hz (UL) NOTE1 | 30 bps/Hz (DL)  15 bps/Hz (UL) NOTE1 | 30 bps/Hz (DL)  15 bps/Hz (UL) NOTE1 | 30 bps/Hz (DL)  15 bps/Hz (UL) |

</div>

1. NOTE1: This requirement is calculated based on the frame structure UL:DL=1:1 (TDD).

## 4.3 Bandwidth

1. Bandwidth means the maximal aggregated total system bandwidth. It may be supported by single or multiple RF
2. carriers. It is a quantitative KPI.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| Indoor | Outdoor | | | |
| Pico | Pico | Micro | IAB | Macro |
| 100 MHz | FR1: up to 200 MHz FR2: up to 800 MHz | FR1: up to 200 MHz FR2: up to 1.2 GHz | FR2: 100 - 400 MHz  For n260: 400 - 800  MHz | FR1: up to 200 MHz |

</div>

21

## 4.4 Control plane latency

* 1. Control plane latency refers to the time for UE to move from a battery efficient state (e.g., IDLE) to start of continuous
  2. data transfer (e.g., ACTIVE).

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| Indoor | Outdoor | | | |
| Pico | Pico | Micro | IAB | Macro |
| 10ms | 10ms | 10ms | 10ms/hop | 10ms |

</div>

4

## 4.5 User plane latency

1. The time it takes to successfully deliver an application layer packet/message from the radio protocol layer 2/3 SDU
2. ingress point to the radio protocol layer 2/3 SDU egress point via the radio interface in both uplink and downlink
3. directions, where neither device nor base station reception is restricted by DRX.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| Indoor | Outdoor | | | |
| Pico | Pico | Micro | IAB | Macro |
| URLLC UL/DL(ms):  0.5ms  eMBB: UL/DL(ms):  4ms | URLLC UL/DL(ms):  0.5ms  eMBB: UL/DL(ms):  4ms | URLLC UL/DL(ms):  0.5ms  eMBB: UL/DL(ms):  4ms | URLLC UL/DL(ms):  0.5ms/hop  eMBB: UL/DL(ms):  4ms/hop | URLLC UL/DL (ms):  1ms  eMBB: UL/DL (ms):  4ms |

</div>

## 4.6 Mobility

10 Mobility means the maximum user speed at which a defined QoS can be achieved (in km/h).

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| Indoor | Outdoor | | | |
| Pico | Pico | Micro | IAB | Macro |
| 3km/h | <60km/h | <500km/h (high speed train) | 120 km/h | 120 km/h (excluding high speed train) |

</div>

11

12

1

2
---

- View in [GitHub Mode]({{site.github_page_url}}/O-RAN.WG7.DSC.0-v04.00.docx.md).
- Go back to [Table of Contents]({{site.baseurl}}/).
- Download the [Original Document]({{site.download_url}}/O-RAN.WG7.DSC.0-v04.00.docx).
