---
title: O-RAN.WG7.OMAC-HAR.0-v05.00.docx.md
author: O-RAN Alliance
layout: post
---

- View in [GitHub Mode]({{site.github_page_url}}/O-RAN.WG7.OMAC-HAR.0-v05.00.docx.md).
- Go back to [Table of Contents]({{site.baseurl}}/).
- Download the [Original Document]({{site.download_url}}/O-RAN.WG7.OMAC-HAR.0-v05.00.docx).

---

* toc
{:toc}

---

![webwxgetmsgimg (7).jpeg]({{site.baseurl}}/assets/images/28e22da37450.jpg)O-RAN.WG7.OMAC-HAR.0-v05.00

*Technical Specification*

**O-RAN White Box Hardware Working Group Outdoor Macrocell Hardware Architecture and Requirements**

**(FR1) Specification**

Copyright (C) 2024 by the O-RAN ALLIANCE e.V.

The copying or incorporation into any other work of part or all of the material available in this specification in any form without the prior written permission of O-RAN ALLIANCE e.V. is prohibited, save that you may print or download extracts of the material of this specification for your personal use, or copy the material of this specification for the purpose of sending to individual third parties for their information provided that you acknowledge O-RAN ALLIANCE as the source of the material and that you inform the third party that these conditions apply to them and that they must comply with them.

O-RAN ALLIANCE e.V., Buschkauler Weg 27, 53347 Alfter, Germany Register of Associations, Bonn VR 11238, VAT ID DE321720189.

1

# 1 Contents

1. List of figures 4
2. List of tables 4
3. Foreword 5
4. Modal verbs terminology 5
5. 1. Scope 6
6. 2. References 6
7. 2.1 Normative references 6
8. 2.2 Informative references 7
9. 3 Definition of terms, symbols and abbreviations 7
10. 3.1 Terms 7
11. 3.2 Symbols 8
12. 3.3 Abbreviations 8
13. 4 Deployment Scenarios and White Box Base Station Architecture 10
14. 4.1 Deployment Scenarios 10
15. 4.2 White Box Base Station Architecture 11
16. 5 White Box Hardware Architecture 12
17. 5.1 O-CU Hardware Architecture 12
18. 5.1.1 O-CU Architecture Diagram 12
19. 5.1.2 O-CU Functional Module Description 12
20. 5.1.3 O-CU Interfaces 12
21. 5.2 O-DU7-2x Hardware Architecture when deployed at cell site 12
22. 5.2.1 O-DU7-2x Functional Module Description 13
23. 5.2.2 O-DU7-2x Interfaces 14
24. 5.3 O-DU6 Hardware Architecture when deployed at cell site 15
25. 5.4 O-DU8 Hardware Architecture when deployed at cell site 15
26. 5.5 FHM/Switch - Option 7-2x to Option 7-2x Hardware Architecture 15
27. 5.6 FHM/Switch - Option 6 to Option 6 Hardware Architecture 15
28. 5.7 FHGW7-2x->8 - Option 7-2x to Option 8 Hardware Architecture 15
29. 5.8 FHM/Switch - Option 8 to Option 8 Hardware Architecture 15
30. 5.9 O-RU7-2x Hardware Architecture 15
31. 5.9.1 O-RU7-2x Functional Module Description 15
32. 5.10 O-RU6 Hardware Architecture 16
33. 5.11 O-RU8 Hardware Architecture 16
34. 5.12 Integrated gNB-DU Hardware Architecture 16
35. 5.12.1 O-DU portion Functional Module Description 17
36. 5.12.2 O-RU Portion of Integrated Reference Design 17
37. 5.13 mMIMO O-RU7-2x Functional Module Description 18
38. 6 White Box Hardware Requirements 20
39. 6.1 O-CU Requirements 20
40. 6.1.1 O-CU Performance 20
41. 6.1.2 O-CU Interfaces 20
42. 6.1.3 O-CU Environmental and EMC 21
43. 6.1.4 O-CU Mechanical, Thermal and Power 21
44. 6.2 O-DUx Common Requirements 22
45. 6.2.1 O-DU7-2x Performance 22
46. 6.2.2 O-DU7-2x Interfaces 23
47. 6.2.3 O-DUx Environmental and EMC 23
48. 6.2.4 O-DUx Mechanical, Thermal and Power 24
49. 6.3 O-DUx Split Option Specific Requirements 25
50. 6.3.1 O-DU7-2x Specific Requirements 25
51. 6.3.2 O-DU6 Specific Requirements 25
52. 6.3.3 O-DU8 Specific Requirements 25
53. 6.4 O-RUx Common Requirements 25
54. 6.4.1 O-RU7-2x Performance 26
55. 6.4.2 O-RU7-2x Interfaces 29
56. 6.4.3 O-RU7-2x Environmental and EMC 30
57. 6.4.4 O-RU7-2x Mechanical, Thermal and Power 31
58. 6.5 O-RU7-2x Split Option Specific Requirements 33
59. 6.5.1 O-RU7-2x Specific Requirements 33
60. 6.5.2 O-RU6 Specific Requirements 33
61. 6.5.3 O-RU8 Specific Requirements 33
62. 6.6 FHGW/FHM - Common Requirements 34
63. 6.7 FHGW/FHM - Split Option Specific Requirements 34
64. 6.7.1 FHM/Switch for Split 7-2x, Specific Requirements 34
65. 6.7.2 FHGW7-2x->8 Specific Requirements 34
66. 6.7.3 FHM/Switch for Split 8, Specific Requirements 34
67. 6.8 Integrated gNB-DU Requirements 34
68. History 35

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

# 1 List of figures

1. Figure 4.2-1: Outdoor macro-cell architecture with O-DU7-2x at cell site and data center 11
2. Figure 5.1-1: O-CU Hardware Block Diagram 12
3. Figure 5.2-1: O-DU7-2x with split physical layer function 13
4. Figure 5.2-2: O-DU7-2x Functional Block and Interface Diagram 14
5. Figure 5.9-1: Generic O-RU7-2x Functional Module Diagram of 4T4R/8T8R 16
6. Figure 5.12-1: Integrated O-DU & O-RU (gNB-DU) O-RU Split Option 2 Reference Design 16
7. Figure 5.12-2: Functional Block Diagram for O-DU Portion 17
8. Figure 5.12-3: Functional Block Diagram for O-RU portion 18
9. [Figure 5.13-1: mMIMO [NxM]TNxM]R O-RU High Level System Architecture #1 19
10. [Figure 5.13-2: mMIMO [NxM]TNxM]R O-RU High Level System Architecture #2 19
11. [Figure 5.13-3: mMIMO [NxM]TNxM]R O-RU High Level System Architecture #4 20

13

14

15

16

# 17 List of tables

1. Table 4.1-1 Deployment scenarios 10
2. Table 6.1-1 :O-CU Performance Requirements 20
3. Table 6.1-2: O-CU Interface Requirements 21
4. Table 6.1-3: O-CU EMC Requirements 21
5. Table 6.1-4: O-CU Mechanical Requirements 21
6. Table 6.1-5: O-CU Thermal Requirements 22
7. Table 6.2-1: O-DU7-2x Performance Requirements 22
8. Table 6.2-2: O-DU7-2x Interface Requirements 23
9. Table 6.2-3: O-DU7-2x EMC Requirements 23
10. Table 6.2-4: O-DU7-2x Mechanical Requirements 24
11. Table 6.2-5: O-DU7-2x Thermal Requirements 25
12. Table 6.4-1: O-RU7-2x Performance Requirements 26
13. Table 6.4-2: O-RU7-2x Interface Requirements 29
14. Table 6.4-3: O-RU7-2x Environmental and EMC Requirements 30
15. Table 6.4-4: O-RU7-2x Mechanical, Thermal and Power Requirements 31

33

34

1 Foreword

2 This Technical Specification (TS) has been produced by O-RAN Alliance.

# 3 Modal verbs terminology

1. In the present document "**shall**", "**shall not**", "**should**", "**should not**", "**may**", "**need not**", "**will**", "**will not**", "**can**" and
2. "**cannot**" are to be interpreted as described in clause 3.2 of the O-RAN Drafting Rules (Verbal forms for the expression
3. of provisions).
4. "**must**" and "**must not**" are **NOT** allowed in O-RAN deliverables except when used in direct citation.

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

# 1 1. Scope

1. The contents of the present document are subject to continuing work within O-RAN WG7 and may change following
2. formal O-RAN approval. Should the O-RAN.org modify the contents of the present document, it will be re-released by
3. O-RAN Alliance with an identifying change of release date and an increase in version number as follows:
4. version xx.yy.zz
5. where:
6. x the first digit is incremented for all changes of substance, i.e. technical enhancements, corrections, updates,
7. etc. (the initial approved document will have x=01).
8. y the second digit is incremented when editorial only changes have been incorporated in the document.
9. z the third digit included only in working versions of the document indicating incremental changes during
10. the editing process. This variable is for internal WG7 use only.
11. The present document specifies system requirements and high-level architecture for the Outdoor Macrocell deployment
12. scenario case as specified in the Deployment Scenarios and Base Station Classes document [1].
13. In the main body of this specification (in any "chapter") the information contained therein is informative, unless
14. explicitly described as normative. Information contained in an "Annex" to this specification is always informative
15. unless otherwise marked as normative.

# 17 2. References

## 2.1 Normative references

1. The following referenced documents are necessary for the application of the present document.

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| 20 | [1] | ORAN-WG7.DSC.0-V04.00 Technical Specification, 'Deployment Scenarios and Base Station Classes |
| 21 |  | for White Box Hardware'. |
| 22 | [2] | 3GPP TR 21.905: "Vocabulary for 3GPP Specifications". |
| 23 | [3] | 3GPP TS 38.104: "NR; Base Station (BS) radio transmission and reception". (Rel-16.3.0) |
| 24 | [4] | ORAN-WG4.CUS.0-R003-v12.00 Technical Specification, "O-RAN Fronthaul Working Group |
| 25 |  | Control, User and Synchronization Plane Specification". |
| 26 | [5] | Small Cell Forum, SCF222.10.02 5G FAPI: PHY API Specification, |
| 27 |  | <https://scf.io/en/documents/222_5G_FAPI_PHY_API_Specification.php> (accessed on March 6, 2024) |
| 28 | [6] | Small Cell Forum, SCF223.10.01 5G FAPI: RF and Digital Frontend Control API, |
| 29 |  | <https://scf.io/en/documents/223_5G_FAPI_RF_and_Digital_Frontend_Control_API.php> (accessed on |
| 30 |  | March 6, 2024) |
| 31 | [7] | 3GPP TS 38.113: "NR: Base Station (BS) Electromagnetic Compatibility (EMC) |
| 32 | [8] | O-RAN.WG1.OAD-R003-v09.00 , O-RAN WG1: "O-RAN Architecture Description" - v09.00 |
| 33 | [9] | O-RAN.WG6.CADS-v04.00, O-RAN WG6: "Cloud Architecture and Deployment Scenarios for O- |
| 34 |  | RAN Virtualized RAN" - v04.00. |
| 35 | [10] | O-RAN.WG4.MP.0-R003-v12.00 Technical Specification, "O-RAN Management Plane |
| 36 |  | Specification" - v12.00. |
| 37 | [11] | O-RAN.TIFG.E2ETSTFWK.0-v01.00 , "O-RAN End-to-End System Testing Framework |
| 38 |  | Specification 1.0 " - v01.00. |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| 1 |  |  |
| 2 | [12] | O-RAN White Box Hardware Working Group Outdoor Macrocell Hardware Reference Design |
| 3 |  | Specification |
| 4 | [13] | 3GPP TS 36.104: "Evolved Universal Terrestrial Radio Access (E-UTRA); Base Station (BS) radio |
| 5 |  | transmission and reception". (Rel-17.6.0) |
| 6 | [14] | O-RAN.WG11.Security-Requirements-Specification.O-R003-v06.00, O-RAN WG11, "O-RAN |
| 7 |  | Security Requirements Specification 6.0 " - v06.00. |
| 8 | [15] | O-RAN.WG11.Security-Protocols-Specification.O-R003-v06.00, O-RAN WG11, "O-RAN Security |
| 9 |  | Protocols Specifications 6.0", - v06.00. |
| 10 | [16] | O-RAN.WG11.Security-Test-Specifications.O-R003-v04.00, O-RAN WG11, "O-RAN Security Test |
| 11 |  | Specifications 4.0", - v04.00. |
| 12 | [17] | O-RAN.SuFG.CE.-v01.00, O-RAN SuFG, "Circular economy guidelines on network equipment - |
| 13 |  | Technical Report", - v01.00. |
| 14 |  |  |

</div>

## 2.2 Informative references

1. The following referenced documents are not necessary for the application of the present document, but they assist the
2. user with regard to a particular subject area.
3. This section intentionally left blank.

# 19 This section intentionally left blank.3 Definition of terms,

20 symbols and abbreviations

## 3.1 Terms

1. For the purposes of the present document, the terms and definitions given in [2] and the following apply. A term defined
2. in the present document takes precedence over the definition of the same term, if any, in [2]. For the base station classes
3. of Pico, Micro and Macro, the definitions are given in [3].
4. **Carrier Frequency:** Center frequency of the cell.
5. **F1 interface:** The standard interface between an O-CU and an O-DUx specified in [8].
6. **Integrated architecture:** An architecture wherein the O-RUx and O-DUx are implemented on one platform. Each O-
7. RUx and RF frontend are associated with one O-DUx and are connected to O-CU via F1 interface
8. **Split architecture:** An architecture wherein the O-RUx and O-DUx are physically separated from one another. A switch

30 may aggregate multiple O-RUx (s) to one O-DUx. The O-DUx, switch and O-RUx (s) are connected by the fronthaul

1. interface as defined in [4].
2. **Transmission Reception Point (TRxP**): Antenna array with one or more antenna elements available to the network
3. located at a specific geographical location for a specific area.
4. **Occupied Bandwidth (OBW)**: It refers to the bandwidth occupied by the base station when operated, defined by the sum
5. of the active bandwidths of the band allocation(s) operated. As defined by 3GPP TS 34.121 section 5.8, occupied
6. bandwidth is the bandwidth containing 99% of the total integrated power of the transmitted spectrum, centered on the
7. assigned channel frequency. The bandwidth between the 0.5% power frequency points is the occupied bandwidth.
8. **Instantaneous Bandwidth (IBW)**: It refers to the bandwidth in which all frequency components can be simultaneously
9. analyzed. It is defined by the frequency boundaries of the operating band(s).
10. **Frequency Range**: It refers to bandwidth defined by the frequency range within which the Base Station can be operated,
11. defined by the band-pass filter of the BS; e.g., 3.4 - 3.8 GHz (400 MHz)
12. **gNB**: A RAN node providing NR user plane and control plane protocol terminations towards the UE, and connected
13. via the NG interface to the 5GC
14. **Frequency Band:** A designated frequency range for the operation of the base station and the UE radios. 5G
15. NR frequency bands are divided into two different frequency ranges: Frequency Range 1 (FR1) that mainly includes
16. sub-6GHz frequency bands, some of which are bands traditionally used by previous standards but has been extended to
17. cover potential new spectrum offerings from 410MHz to 7125MHz; Frequency Range 2 (FR2) that includes frequency
18. bands from 24.25 GHz to 52.6 GHz. Bands in this millimeter wave range have shorter range but higher available
19. bandwidth than bands in the FR1.
20. **Fronthaul Gateway (FHGW)**: A fronthaul gateway is a physical entity that is located between a distributed unit and
21. one or more radio units where it distributes, aggregates, and/or converts fronthaul protocols between the distributed unit
22. and multiple radio units.

## 3.2 Symbols

1. For the purposes of the present document, the following symbols apply:
2. NRB Transmission bandwidth configuration, expressed in units of resource blocks (for E-UTRA)

## 3.3 Abbreviations

1. For the purposes of the present document, the abbreviations given in [2] and the following apply. An abbreviation
2. defined in the present document takes precedence over the definition of the same abbreviation, if any, as in [2].

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| 20 | 7-2x | Fronthaul interface split option as defined by O-RAN WG4, also referred to as 7-2 |
| 21 | 3GPP | Third Generation Partnership Project |
| 22 | 5G | Fifth-Generation [Mobile Communications] |
| 23 | 5GC | 5G Core |
| 24 | ACS | Adjacent Channel Selectivity |
| 25 | ADC | Analog to Digital Converter |
| 26 | AFE | Analog Front End |
| 27 | AFU | Antenna Filter Unit |
| 28 | BF | Beamforming |
| 29 | BMCA | Best Master Clock Algorithm |
| 30 | BPSK | Binary Phase Shift Keying |
| 31 | BS | Base Station |
| 32 | C2C | Chip to Chip Interface |
| 33 | CAL | Calibration |
| 34 | CFR | Crest Factor Reduction |
| 35 | CLK | Clock |
| 36 | CPRI | Common Public Radio Interface |
| 37 | CU | Central Unit |
| 38 | DAC | Digital to Analog Converter |
| 39 | DDC | Digital Down Conversion |
| 40 | DDR | Double Data Rate |
| 41 | DFE | Digital Front End |
| 42 | DL | Downlink |
| 43 | DPD | Digital Pre-Distortion |
| 44 | DSP | Digital Signal Processor |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| 1 | DU | Distributed Unit |
| 2 | DUC | Digital Up Conversion |
| 3 | eCPRI | Enhanced Common Public Radio Interface |
| 4 | EMC | ElectroMagnetic Compatibility |
| 5 | EVM | Error Vector Magnitude |
| 6 | FAPI | Functional Application Platform Interface |
| 7 | FEC | Forward Error Correction |
| 8 | FFT | Fast Fourier Transform |
| 9 | FH | Fronthaul |
| 10 | FHGW | Fronthaul Gateway |
| 11 | FHGWx?y | Fronthaul Gateway that can translate FH protocol from an O-DUx with split option x to an O-RUy |
| 12 |  | with split option y, with currently available option 7-2x?8. |
| 13 | FHM | Fronthaul gateway with no FH protocol translation, supporting an O-DU with split option x and an |
| 14 |  | O-RU with split option x, with currently available options 6?6, 7-2x?7-2x, 8?8 |
| 15 | FPGA | Field Programmable Gate Array |
| 16 | GbE | Gigabit Ethernet |
| 17 | GPP | General Purpose Processor |
| 18 | IEEE | Institute of Electrical and Electronics Engineers |
| 19 | IMD | InterModulation Distortion |
| 20 | IP | Internet Protocol |
| 21 | I/O | Input/Output |
| 22 | JTAG | Joint Test Action Group |
| 23 | L1 | Layer 1, also referred to as PHY or Physical Layer |
| 24 | L2 | Layer 2, also referred to as Data Link layer in OSI model |
| 25 | L3 | Layer 3, also referred to as Network layer in OSI model |
| 26 | LLS | Lower Layer Split |
| 27 | LNA | Low Noise Amplifier |
| 28 | LTE | Long Term Evolution |
| 29 | MAC | Media Access Control |
| 30 | MIMO | Multiple Input Multiple Output |
| 31 | mMIMO | Massive Multiple Input Multiple Output |
| 32 | MCP | Multi-Chip Package |
| 33 | nFAPI | Network Functional Application Platform Interface |
| 34 | NG | Next Generation |
| 35 | NR | New Radio |
| 36 | OAM | Operations, Administrations and Maintenance |
| 37 | O-CU | O-RAN Centralized Unit as defined by O-RAN |
| 38 | O-DU | O-RAN Distributed Unit as defined by O-RAN |
| 39 | O-DUx | A specific O-RAN Distributed Unit having fronthaul split option x where x may be 6, 7-2x (as |
| 40 |  | defined by WG4) or 8 |
| 41 | O-RU | O-RAN Radio Unit as defined by O-RAN |
| 42 | O-RUx | A specific O-RAN Radio Unit having fronthaul split option x, where x is 6, 7-2x (as defined by |
| 43 |  | WG4) or 8, and which is used in a configuration where the fronthaul interface is the same at the |
| 44 |  | O-DUx |
| 45 | PA | Power Amplifier |
| 46 | PCIe | Peripheral Component Interface Express |
| 47 | PDCP | Packet Data Convergence Protocol |
| 48 | PHY | Physical Layer, also referred as L1 |
| 49 | PLL | Phase Locked Loop |
| 50 | POE | Power over Ethernet |
| 51 | QAM | Quadrature Amplitude Modulation |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| 1 | QPSK | Quadrature Phase Shift Keying |
| 2 | RAN | Radio Access Network |
| 3 | RF | Radio Frequency |
| 4 | RFIC | Radio Frequency Integrated Circuit |
| 5 | RFSoC | Radio Frequency System on Chip |
| 6 | RLC | Radio Link Controller |
| 7 | RRC | Radio Resource Controller |
| 8 | RU | Radio Unit as defined by 3GPP |
| 9 | RX | Receiver |
| 10 | SDU | Service Data Unit |
| 11 | SFP | Small Form-factor Pluggable |
| 12 | SFP+ | Small Form-factor Pluggable Transceiver |
| 13 | SoC | System on Chip |
| 14 | SPI | Serial Peripheral Interface |
| 15 | TR | Technical Report |
| 16 | TS | Technical Specification |
| 17 | TX | Transmitter |
| 18 | UL | Uplink |
| 19 | USB | Universal Serial Bus |
| 20 | WG | Working Group |
| 21 |  |  |

</div>

# 22 4 Deployment Scenarios and White Box Base Station

23 Architecture

1. This chapter consists of two parts: the deployment scenario and the white box architecture. The deployment scenarios
2. outline more specific functional requirements of the base station. All the reference designs shall meet these requirements
3. in order to comply with O-RAN white box standard. In the white box hardware architecture section, it describes the
4. overall gNB hardware architecture and function partition that meet the design requirements. The details on each of these
5. topics are described in the following sections.

## 4.1 Deployment Scenarios

1. The outdoor macro-cell is the targeted deployment scenario of this specification. The requirements of the outdoor macro-
2. cell base station are listed in the white-box Deployment Scenarios and Base Station Classes document [1]. Some of the
3. key requirements described in that document are highlighted here.

#### Table 4.1-1 Deployment scenarios

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Cell type** | **Outdoor Macro-cell** |
| Frequency Band | FR1 (n26, n29, n41, n66, n70, n71, n77, n78, B1/n1, B3/n3, B7/n7, n78 CEPT(\*)). |
| Instantaneous Bandwidth | Up to 205 MHz for FDD Up to 400 MHz for TDD |
| Occupied Bandwidth | Up to 205 MHz for FDD up to 300 MHz for TDD |
| Inter site distance | 0.5 ~ 2 mile(s) |
| Antenna Configuration | 4T4R ~ 64T64R |
| Fronthaul Type | O-RAN FH, Split Option 7-2x CAT-A and CAT-B Radio Units |
| Midhaul | Split Option 2 |

</div>

* 1. (\*) n78 CEPT makes reference to an European n78 sub-band (according with ECC Decision (11) 06 and
  2. CEPT Report (67)

## 4.2 White Box Base Station Architecture

* 1. In general, the base station hardware architecture can be classified when O-DU7-2x is at cell site or O-DU7-2x is at the data
  2. center. In both cases, O-RAN fronthaul split 7-2x and 3GPP standard interface F1 will be used.
  3. When O-DU7-2x is at the cell site, the O-RUs will be connected from a multi-sector cell site to the O-DU7-2x . An optional
  4. switch/cell site router may be used between cell site O-RUs and O-DU7-2x (i.e. Scenario E.1 from WG6).
  5. When O-DU7-2x is at a data center (i.e., the Edge Cloud from [9]), cell site routers/switches will aggregate O-RUs from
  6. multiple cell sites to the O-DU7-2x. The O-DU7-2x will be connected to the O-CU-CP and O-CU-UP in the mid-haul through
  7. F1-C and F1-U interface. The O-CU-CP/O-CU-UP can be in a remote data center (i.e. the Regional Cloud in Scenario C
  8. from [9]) or, respectively the O-CU-CP/O-CU-UP can be co-located with O-DU7-2x in the data center (i.e. the Edge Cloud
  9. in Scenario B from [9]). Accordingly, when the O-DU7-2x is deployed at a data center site (i.e., on the Edge Cloud, either
  10. on a bare-metal machine or as a container/virtual-machine), the servers running the O-DU7-2x shall follow the existing and
  11. upcoming specifications from O-RAN WG6. The cell site cloud specifications are for further study in WG6.
  12. The architecture when O-DU7-2x is at the cell site is shown in Figure 4.2-1. The O-DU7-2x with integrated switch/cell site
  13. router is considered for this architecture.

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| O-RU7-2 | |
|  |  |
| O-RU7-2 | |
|  |  |
| O-RU7-2 | |

</div>

O-CU-CP O-CU-UP

O-CU

Connectivity (Ethernet)

FHM/Switch/ Router (Optional)

O-DU7-2

Connectivity (Ethernet)

O-DU7-2

O-RAN Fronthaul

* 1. (Split Option 7-2x)

#### Figure 4.2-1: Outdoor macro-cell architecture with O-DU7-2x at cell site and data center

19

20

# 1 5 White Box Hardware Architecture

* + 1. Based on the gNB physical implementation architectures discussed earlier, this chapter provides the architecture, major
    2. building blocks and all external/internal interfaces for each whitebox.

## 5.1 O-CU Hardware Architecture

* + 1. In 3GPP system architecture, the gNB Central Unit (CU) communicates with the Distributed Unit (DU) via an F1 interface
    2. [8]. This interface has been adopted by O-RAN Alliance for O-CU and O-DU connection. F1 is an IP-based protocol
    3. interface. F1 interface is split into F1-C and F1-U interfaces.
    4. F1-C interface is used for the management of interface setup/configuration, system information, UE context, RRC
    5. transfer, paging and warning message transfer. F1-U interface is used for user data transfer and flow control.

### 5.1.1 O-CU Architecture Diagram

* + 1. The O-CU can be implemented with any General-Purpose Processor (GPP) based platform having an optional hardware
    2. accelerator block. The O-CU functions can be implemented either on separated hardware platforms or on the same
    3. hardware platforms integrated with O-DUx functions. In either case, the O-CU hosts L2/L3 functions, whereas O-DU
    4. hosts L2/L1 functions which require different CPU, Storage, Acceleration and Networking capabilities. Figure 5.1-1
    5. shows the hardware blocks and interfaces within the O-CU white box.

Digital Processing Unit

Ethernet Interface

Hardware Accelerator

Backhaul (Ethernet or Wireless)

![]({{site.baseurl}}/assets/images/8ba06bfadf3c.png)![]({{site.baseurl}}/assets/images/f873f858d920.png)![]({{site.baseurl}}/assets/images/032663df2f91.png)![]({{site.baseurl}}/assets/images/a87fe3ee72ba.png)![]({{site.baseurl}}/assets/images/0190d04e9c45.png)

16

O-CU

Ethernet Interface

F1

Interface (Ethernet)

1. **Figure 5.1-1: O-CU Hardware Block Diagram**

### 5.1.2 O-CU Functional Module Description

1. The O-CU functional architecture comprises Digital Signal Processing, optional HW Acceleration, and Connectivity
2. (GbE) units as well as memory and storage units as shown in Figure 5.1-1

### 5.1.3 O-CU Interfaces

1. The O-CU interfaces through backhaul with the vEPC or 5GC core network and via F1 interface with the O-DU7-2x. The
2. backhaul and the F1 interfaces are typically implemented with GbE transport/connections.

## 5.2 O-DU7-2x Hardware Architecture when deployed at cell site

1. Depending on the 3GPP standards and category of the radio unit, the split function blocks within O-DU7-2x and O-RU7-2x

26 may vary accordingly. The O-RAN fronthaul C/U/S-plane specification [4] provides comprehensive information on this

1. topic. The hardware functional partition architecture is shown in Figure 5.2-1. The High-PHY functions in O-DU7-2x are
2. run on Digital Processing Unit, Hardware Accelerator, or both.

3

![]({{site.baseurl}}/assets/images/53ea104e21ca.png)![]({{site.baseurl}}/assets/images/1aa5ac1ba883.png)![]({{site.baseurl}}/assets/images/f14762239bdc.png)![]({{site.baseurl}}/assets/images/14116a0a066c.png)![]({{site.baseurl}}/assets/images/ef80f6d23446.png)![]({{site.baseurl}}/assets/images/2b0b52ea88f7.png)![]({{site.baseurl}}/assets/images/8721e789fb40.png)![]({{site.baseurl}}/assets/images/173e5fb84997.png)

1 PPS (IN or OUT)

F1

Interface

O-RAN FH

Interface

O-DU7-2

O-RU7-2

Ethernet

Interface

Timing and Synchronization (IEEE 1588)

Digital Processing Unit

Low

PHY

Ethernet Interface

Hardware

Accelerator

4

1. **Figure 5.2-1: O-DU7-2x with split physical layer function**

### 5.2.1 O-DU7-2x Functional Module Description

1. The choice of O-DU7-2x hardware components depends on the product design requirements and is outside the scope of
2. this specification. Their descriptions are as follows:

#### Digital Processing Unit

1. The processing unit can be any GPP, FPGA or digital signal processor (DSP), with I/O chipset. It may also be in the
2. form of System-On-Chip (SOC), or Multi-Chip Package (MCP).

#### Memory

1. DDR memory devices are used to store the runtime data and software for the processing unit.

#### Flash Memory

1. On board non-volatile storage device is used to store the firmware and non-volatile data, such as log data.

#### Board Management Controller

1. The controller is used to manage/control the power and monitors the operational status of the board.

#### Storage Device

1. The storage device such as hard drive is used to store OS, driver and applications software.

#### Ethernet Controller

1. The Ethernet ports transport the fronthaul or backhaul traffic according to the gNB hardware node requirements. The
2. Ethernet device shall support IEEE1588 based timing synchronization.

#### Hardware Accelerator

1. The hardware accelerator is an optional device. For performance improvement, hardware accelerator can be used to
2. process computationally intensive functions (e.g., Forward Error Correction (FEC)) and to offload the processor.

1

![]({{site.baseurl}}/assets/images/9ff0ad77f62d.png)![]({{site.baseurl}}/assets/images/c7613cc9f63b.png)![]({{site.baseurl}}/assets/images/282fc74035fb.png)![]({{site.baseurl}}/assets/images/9bfc54423e69.png)![]({{site.baseurl}}/assets/images/6ec483112020.png)![]({{site.baseurl}}/assets/images/9e323d94f783.png)![]({{site.baseurl}}/assets/images/10f46aea4295.png)![]({{site.baseurl}}/assets/images/89ac38a9ff6d.png)![]({{site.baseurl}}/assets/images/6ec483112020.png)![]({{site.baseurl}}/assets/images/8fdc1df0faee.png)![]({{site.baseurl}}/assets/images/b33d6ec5bbda.png)![]({{site.baseurl}}/assets/images/3a3ae7e1700a.png)![]({{site.baseurl}}/assets/images/4f000435f98d.png)

PCIe

USB

Memory

Channel

VGA

SPI

PCIe

Digital Processing Unit

SMbus

RS232

SATA

Timing Signal

Ethernet

Ethernet Ports

Timing

Storage Drives

Serial Ports

SMBus Port

PCIe Slots

Flash Memory

Video Port

DDR RAM

USB Ports

Hardware Accelerator

* 1. **Figure 5.2-2: O-DU7-2x Functional Block and Interface Diagram.**

### 5.2.2 O-DU7-2x Interfaces

* 1. The O-DU7-2x supported interfaces described below are also shown in Figure 5.2-2

#### Memory Channel Interface

* 1. Support DDR4 and later memory interface.

#### PCIe Interface

* 1. Support for PCIe Gen3 x16 and later interface versions; the bandwidth depends on the use cases, and it can be used to
  2. connect an accelerator device or network card.

#### Ethernet Interfaces

* 1. Supports any one or combination of 1GbE/10GbE/25GbE/40GbE links.

#### Serial ATA Interface

* 1. SATA3 shall be supported in case of software storage, such as hard drive.

#### SPI Interface

* 1. The SPI interface connects the processor with flash type of device for firmware.

#### Video Interface

* 1. Video interface is optional

#### USB Interface

* 1. Used to connect with local device for debug or on-board firmware update.

#### Miscellaneous Interface

* 1. Other interfaces that may be needed such as serial port, JTAG, etc.

## 5.3 O-DU6 Hardware Architecture when deployed at cell site

1. 'This section intentionally left blank'

## 5.4 O-DU8 Hardware Architecture when deployed at cell site

1. 'This section intentionally left blank'

## 5.5 FHM/Switch - Option 7-2x to Option 7-2x Hardware

1. Architecture
2. The FHGW in the case of split option 7-2x to 7-2x is a multiplexer or a switch where the received data packets are
3. distributed among or aggregated from one or more O-RUs and the signaling and management are appropriately routed to
4. or from specific O-RUs.

## 5.6 FHM/Switch - Option 6 to Option 6 Hardware Architecture

1. 'This section intentionally left blank'

## 5.7 FHGW7-2x->8 - Option 7-2x to Option 8 Hardware Architecture

1. 'This section intentionally left blank'. Additional details will be provided in a separate document from the fronthaul
2. gateway task group.

## 5.8 FHM/Switch - Option 8 to Option 8 Hardware Architecture

1. 'This section intentionally left blank'. Additional details will be provided in a separate document from the fronthaul
2. gateway task group.

## 5.9 O-RU7-2x Hardware Architecture

1. In this section, high level architectures are presented for various O-RU configuration with split 7-2x. The
2. configurations are nTnR O-RU where 'n' is commonly considered to be 4 or 8 for O-RU and 32 or 64 for
3. mMIMO O-RU. In Section 5.9.1, a high-level functional block diagram is described for nTnR O-RU.

### 5.9.1 O-RU7-2x Functional Module Description

1. In Figure 5.9-1, we illustrate O-RU7-2x functional blocks that support O-RAN FH with split option 7-2x. There is at least
2. one interface port which supports all fronthaul interface (for E.g., Optical Interface). For bandwidth reduction, O-RU7-2x
3. architecture also supports the optional compression and decompression functions of FH interface. ASIC/FPGA based O-
4. RAN Fronthaul Processing Unit of O-RU7-2x will receive the eCPRI packets and perform optical to electrical conversion,
5. decompression, and security aspects according to WG11 specifications. Subsequently, the packets are sent to DFE
6. through packet interface. The DFE block of O-RU7-2x is responsible for Low-Phy functions such as FFT/IFFT, CP
7. addition/removal, and PRACH filtering. Additionally, DDC, DUC, CFR and DPD functions are also performed in DFE
8. unit. The ADC and DAC functions are performed in the AFE, which are mixed signal blocks responsible for conversion
9. of data between the digital to analog domains and vice versa. These signals from the AFE are fed to the Tx/Rx chains.
10. The RF Processing /RF Front End Unit consists of an optional frequency converter (mixer), Power Amplifier (PA)/ Low
11. Noise Amplifier (LNA) and Tx/Rx filters in N Tx/Rx chains. An antenna module follows that comprises of physical
12. antenna, RF feed distribution/aggregation network, and optionally an antenna calibration network. The timing unit
13. includes any clock and frequency synthesis required as well as other timing and synchronization circuits. The timing unit
14. shall derive timing and synchronization for the O-RU7-2x based on the IEEE 1588v2 protocol. In addition, syncE may also
15. be used for timing as defined in O-RAN FH WG4 specifications [4].

![Diagram, schematic  Description automatically generated]({{site.baseurl}}/assets/images/fcef7359a0a0.png)

6

1. **Figure 5.9-1: Generic O-RU7-2x Functional Module Diagram of 4T4R/8T8R**

## 5.10 O-RU6 Hardware Architecture

1. 'This section intentionally left blank'

## 5.11 O-RU8 Hardware Architecture

1. 'This section intentionally left blank'

## 5.12 Integrated gNB-DU Hardware Architecture

1. The Integrated O-DU & O-RU (O-RU Functional Split 2) is white box hardware is the platform that performs the O- DU
2. functions such as upper L1 and lower L2 (MAC: multiplexing, scheduling, HARQ and RLC: segmentation, re-
3. transmission, re-ordering) functions along with O-RU. The integrated hardware consists of DU & RU in a single box as
4. shown in Figure 5.12-1. The integrated small cell (gNB-DU) shall support split option - 2 F1 Mid-haul interface
5. termination [3GPP] towards gNB-CU and supports FAPI standard logical interface between Layer2 and Layer1 running
6. ![Diagram  Description automatically generated]({{site.baseurl}}/assets/images/7e3b92e48fd5.jpg)on different HW options.

19

20 **Figure 5.12-1 Integrated O-DU & O-RU (gNB-DU) O-RU Split Option 2 Reference Design**

### 5.12.1 O-DU portion Functional Module Description

1. In this Integrated architecture, O- DU functions such as upper L1 and lower L2 functions. L2 Chip will be having multiple
2. interface support like DDR4, QSPI, 1G Ethernet, SFP, PCIe, JTAG, UART, EMMC and many more to support number
3. of additional peripherals. The O-DU portion in the integrated architecture shown in Figure 5.12-2 and it depicts the
4. ![Diagram  Description automatically generated]({{site.baseurl}}/assets/images/99339a265102.jpg)interconnection of the components and external interfaces. O-DU portion is connected to O-RU portion via PCIe interface.

6

1. **Figure 5.12-2 Functional Block Diagram for O-DU Portion**

### 5.12.2 O-RU Portion of Integrated Reference Design

1. In Integrated architecture the O-RU portion contains the Digital Processing Unit Processing Unit, including the
2. Transceiver, RFFE and other RF components, Clock and Synchronization & Power Unit. Digital processing unit is
3. connected to O-DU portion NPU through PCIe interface.
4. 5.12.2.1 O-RU High-Level Functional Block Diagram
5. Figure 5.12-3 is the high-level functional block diagram for O-RU portion in the Integrated architecture. It also
6. highlights the internal/external interfaces that are required.

![Diagram, schematic  Description automatically generated]({{site.baseurl}}/assets/images/84ffa33968d0.jpg)1

* 1. **Figure 5.12-3 Functional Block Diagram for O-RU portion**

## 5.13 mMIMO O-RU7-2x Functional Module Description

* 1. In this section description and diagram for three types of possible NxM mMIMO O-RU High Level System Architecture
  2. are provided. mMIMO O-RU7-2x can be realized with different high level radio architecture based on various functional
  3. splits and interface/interconnects between these functional blocks.
  4. The level of integration achieved on an SoC for different functional blocks can vary and that in turn can result in different
  5. O-RU architecture and the associated interconnects between the functional blocks.
  6. These functional splits can be realized through three possible configuration O-RU Architecture options as presented in
  7. Figures 5.13-1, 5.13-2, and 5.13-3.
  8. In mMIMO O-RU High Level System Architecture #1 as shown in Figure 5.13-1, eCPRI frame that comes from O-DU7-
  9. 2x is compressed/decompressed and processed by O-RAN Fronthaul Processing Unit & Beamformer block. Additionally,
  10. security compliance may be carried out according to WG11 specifications. Subsequently, Digital Processing Unit that
  11. have FPGA/ASIC based DFE module receives the packets from O-RAN Fronthaul Processing Unit & Beamformer block
  12. and performs the functionalities such as compression/decompression, Low-Phy, DDC, DUC, CFR, and DPD. The ADC
  13. and DAC functions are performed in AFE block. All these three functional blocks can be part of a single SoC or can be
  14. split into multiple physical integrated circuits (IC) and connected with digital or packet-based interface.
  15. The functional block labelled RF Section, consists of an optional frequency converter (mixer), Power Amplifier (PA)/
  16. Low Noise Amplifier (LNA). The filter is the next functional block in the path and is needed for each of the N Tx/Rx
  17. paths to meet the emissions in DL and provide the necessary selectivity for UL. The last functional block in the mMIMO
  18. RU system is the Antenna. Depending on the power level for each of the Tx chain in a mMIMO system, the filter could
  19. be integrated into the RF Section or could be integrated along with the antenna thus making it the AFU.
  20. In mMIMO O-RU, Tx/Rx reciprocity calibration is one of the important steps for optimal performance. Calibration is
  21. required to align the Tx and Rx chains in phase and amplitude. In some implementations, reciprocity calibration requires
  22. to implement a dedicated feedback path. Multiple options are possible for the design of such feedback path - the main
  23. three options are shown in Figures 5.13-1, 5.13-2, and 5.13-3. The main difference between each of the calibration options
  24. is the implementation of the feedback network and where the RF feedback and associated distribution circuitry resides.

1. The calibration signal ultimately needs to be relayed back to the AFE, so that the phase and amplitude difference between
2. each of the corresponding Tx-Rx chain and the phase and amplitude differences between the multiple Tx-Rx chains can
3. be estimated and calibrated accurately to ensure uplink and downlink channel reciprocity to enable beamforming. In CAL
4. option #1, the RF feedback and the distribution circuitry resides in the antenna module and all the RF components
5. including the antenna are part of the Tx/Rx reciprocity calibration loop. In CAL option #2, the RF feedback and the
6. distribution circuitry resides in the filter module and all the RF components till the filter module are part of the Tx/Rx
7. reciprocity calibration. In CAL option #3, the RF feedback and the distribution circuitry resides in the RF Section and all
8. the RF components till the RF Section's output in the Tx path and input in the Rx path are part of the Tx/Rx reciprocity
9. calibration. These calibration options (CAL option #1, #2 and #3) can apply to all three mMIMO O-RU architectures in
10. Figures 5.13-1, 5.13-2, and 5.13-3.
11. The timing unit includes any clock and frequency synthesis required as well as other timing and synchronization circuits.
12. The Timing Unit shall derive timing and synchronization for the O-RU7-2x based on the IEEE 1588v2 protocol. In addition,
13. ![Diagram, schematic  Description automatically generated]({{site.baseurl}}/assets/images/b0f943ffdc8c.png)syncE may also be used for timing as defined in O-RAN FH WG4 specifications [4].

14

#### Figure 5.13-1: mMIMO [NxM]T[NxM]R O-RU High Level System Architecture #1

1. In mMIMO O-RU High Level System Architecture #2, the operations that are performed in DFE of mMIMO O-RU High
2. Level System Architecture #1 are distributed between the O-RAN Fronthaul Processing Unit & Beamformer and AFE as
3. shown in Figure 5.13-2. In particular, the Low-Phy functions of DFE are performed in the ASIC/FPGA for O-RAN
4. Fronthaul Processing Unit & Beamformer and DDC, DUC, CFR, and DPD blocks of DFE are part of AFE in the RFIC
5. as shown in Figure 5.13-2. The interconnect between the ASIC/FPGA for ORAN Fronthaul Processing Unit &
6. ![Diagram, schematic  Description automatically generated]({{site.baseurl}}/assets/images/10964fe4181f.png)Beamformer.

22

#### Figure 5.13-2: mMIMO [NxM]T[NxM]R O-RU High Level System Architecture #2

1. In mMIMO O-RU High Level System Architecture #3, DFE and AFE functions are combined on a single DFE & AFE
2. functional module as shown in Figure 5.13-3. In this architecture, (De-)Compression, Low-Phy, DDC, DUC, CFR, and
3. DPD are part of same FPGA/ASIC. There is a packet-based interface/interconnect between the O-RAN Fronthaul
4. Processing Unit & Beamformer and the DFE & AFE functional module. These modules can be on a single SoC or can be
5. on different FPGA/ASIC.

![Diagram, schematic  Description automatically generated]({{site.baseurl}}/assets/images/12bb2f031e71.png)1

2 **Figure 5.13-3: mMIMO [NxM]T[NxM]R O-RU High Level System Architecture #3**

# 3 6 White Box Hardware Requirements

1. This chapter provides the requirements for various white boxes used within the outdoor macro cell base station. These
2. white boxes are O-CU, O-DU7-2x and O-RU7-2x. The O-CU and O-DU7-2x can be implemented in an integrated fashion
3. into one white box hardware or they can be separated. The details of the testing and compliance to these requirements
4. would be taken as part of the TIFG specification [11]. These requirements will be used to define a hardware reference
5. design specification for the outdoor macro cell base station [12].

## 6.1 O-CU Requirements

1. O-CU requirements are described in the following sections, which include the performance, interface, environmental,
2. EMC, mechanical, thermal and power requirements.

### 6.1.1 O-CU Performance

1. The performance requirements of the O-CU are listed in Table 6.1-1.
2. **Table 6.1-1 :O-CU Performance Requirements**

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Parameter** | **Requirement** | **Priority** |
| Synchronization | * The solution shall support 1588v2 Synchronization. * The solution shall support T-TSC (Telecom Time Slave Clock). | High |
| Peak Data Rate | Peak data rate shall be calculated as defined in 3GPP TS 38.306 |  |
| Latency | Control Plane < 20 ms (def: message1 to message 5) User Plane < 4 ms (def: PDCP SDU -> PDCP SDU) | High |

</div>

### 6.1.2 O-CU Interfaces

1. The interface requirements of the O-CU are listed in Table 6.1-2

17

18

19

20

21

22

23 .

* 1. **Table 6.1-2: O-CU Interface Requirements**

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Parameter** | **Requirement** | **Priority** |
| Transport Interface | 1/10 GbE F1 Interface to connect with O-DU7-2x at cell site or  25 GbE F1 Interface to connect with O-DU7-2x at data center | High |
| 1/10 GbE NG interface to connect with 5G core when O-DU7-2x is at cell site or 25/100 GbE NG interface to connect with 5G core when O-DU7-2x is at data center | High |

</div>

### 6.1.3 O-CU Environmental and EMC

* 1. The EMC requirements of the O-CU are listed in Table 6.1-3.
  2. **Table 6.1-3: O-CU EMC Requirements**

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Parameter** | **Requirement** | **Priority** |
| Safety, EMC | The solution shall comply with the requirements of 3GPP TS 38.113 (2017-12R15)  [7] for equipment used in telecommunication room | High |
| Safety, EMC | The solution shall be certified for the required regulatory compliance related to EMC and safety | High |
| Safety, Environment and Reliability | The solution shall support Front to Back airflow | High |
| Safety, Environment and Reliability | The solution shall support Front Serviceability | High |
| Safety, Environment and Reliability | The solution should support IP65 rated version (if implemented outdoors). | High |
| Environment | The solution should comply with the requirements of O-RAN SuFG Circular economy guidelines on network equipment [17] | High |

</div>

### 6.1.4 O-CU Mechanical, Thermal and Power

* 1. The mechanical, thermal, and power requirements of the O-CU are listed in Table 6.1-4 and Table 6.1-5.

#### Table 6.1-4: O-CU Mechanical Requirements

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Parameter** | **Requirement** | **Priority** |
| Dimension | The solution shall be 1 rack unit in height | High |
| Dimension | The sled shall meet dimensions of 41 mm (Height) x 215 mm (Width) x 427.5 mm (Depth) | High |
| Status Indicator LED | At least include the following status indicators:   * 1 LED indicating on/off status of the power supply * 1 LED indicating on/off status of the transmission link | High |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| Power Supply | The solution shall support -48V DC power. The tolerance range should be within - 42V and -58V DC | High |
| Power Dissipation | The maximum power consumption of the solution in normal conditions shall not exceed 400W | High |
| Power Drain | The solution shall have the ability to reduce the power drain when not at full load | High |

</div>

1

1. **Table 6.1-5: O-CU Thermal Requirements**

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Parameter** | **Requirement** | **Priority** |
| Environment and Reliability | The solution shall support operating temperature ranges from 0? to 50? indoors. | High |
| Environment and Reliability | The solution may have FANs to support temperature requirements. | High |
| Environment and Reliability | The solution should support extended temperature range (-40? to +65 ?) if implemented outdoors. | Low |

</div>

## 6.2 O-DUx Common Requirements

1. The common requirements apply to all the O-DUX regardless of the split option. However, in this version of the
2. specification, the focus will be on O-DU7-2x. If more options get standardized in a future version of this document, some
3. of these common requirements may be moved to the specific sub-sections in section 6.3.

### 6.2.1 O-DU7-2x Performance

1. The performance requirements of the O-DU7-2x are listed in Table 6.2-1.
2. **Table 6.2-1: O-DU7-2x Performance Requirements**

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Parameter** | **Requirement** | **Priority** |
| O-DU7-2x server Processing | For the O-DU7-2x at cell site serving the FDD bands with 4T4R radios, the solution shall support at least 210 MHz in downlink and 105 MHz in uplink  For the O-DU7-2x at data center serving the FDD bands with 4T4R radios, the solution shall support at least 2 x 210 MHz in downlink and 2 x 105 MHz in uplink | High |
| Transmission distance | Directly connected with O-RUs at cell site or Connected with O-RUs 40 km apart | High |
| Synchronization | For O-DU7-2x at cell site:   * The solution shall have a built-in GPS receiver for timing that supports PTP distribution compliant to G.8272. * The solution shall comply with the following ITU-T specifications for SyncE:   + Definitions: ITU-T G.8260   + Architecture: ITU-T G.8261 |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
|  | * SSM transport channel and format: ITU-T G.8264 * Clock specifications: ITU-T G.8262 (EEC) * Functional model and SSM processing: ITU-T G.781 * The solution shall support IEEE 1588 Telecom Grand Master (T-TGM) using G8275.1 profile. * The solution shall support T-GM conversion to Telecom Boundary Clock (T- TBC) when GPS is lost. * The solution shall support Telecom Boundary Clock (T-TBC) per ITU-T G.8273.2. * The solution shall meet 4 hour holdover time of frequency, time/phase. * The solution shall comply with input and output jitter and wander requirements specified in ITU-T G.8262 (for EEC). * For timing synchronization, the solution shall support ORAN LLS-C1/C2 configuration. * The solution shall support alternate BMCA specified in G.8275.1 |  |
| Synchronization | For O-DU7-2x at data center:   * For timing synchronization, the solution shall support ORAN LLS- C3 configuration. * The solution shall support T-TSC. | High |
| Peak Rate | Peak data rate to be calculated based on the formula provided in 3GPP TS 38.306 | High |
| Modulation | DL: QPSK, 16QAM, 64QAM, 256QAM, (1024 QAM desired)  UL: ?/2-BPSK, QPSK, 16QAM, 64QAM (256QAM/1024 QAM desired) | High |
| Latency | Up to 200 us fronthaul latency | High |

</div>

### 6.2.2 O-DU7-2x Interfaces

1. The interface requirements of the O-DU7-2x are listed in Table 6.2-.

#### Table 6.2-2: O-DU7-2x Interface Requirements

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Parameter** | **Requirement** | **Priority** |
| Transport Interface | Fronthaul interfaces connected with either radio unit or fronthaul gateway | High |
| At least one NG interface to 5GC | High |
| At least one 1/10 GbE F1 Interface to connect with O-DU7-2x at cell site or  25 GbE F1 Interface to connect with O-DU7-2x at data center | High |

</div>

4

### 6.2.3 O-DUx Environmental and EMC

1. The EMC requirements of the O-DU7-2x are listed in Table 6.2-3.

#### Table 6.2-3: O-DU7-2x EMC Requirements

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Parameter** | **Requirement** | **Priority** |
| Safety, EMC | The solution shall comply with the requirements of 3GPP TS 38.113 (2017-12R15)  [7] for equipment used in telecommunication room | High |
| Safety, EMC | The solution shall be certified for the required regulatory compliance related to EMC and safety | High |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| Safety, Environment and Reliability | The solution shall support Front to Back airflow | High |
| Safety, Environment and Reliability | The solution shall support Front Serviceability | High |
| Safety, Environment and Reliability | The solution should support IP65 rated version. (if implemented outdoors) | High |
| Environment | The solution should comply with the requirements of O-RAN SuFG Circular economy guidelines on network equipment [17] | High |

</div>

1

### 6.2.4 O-DUx Mechanical, Thermal and Power

1. The mechanical and power requirements of the O-DU7-2x are listed in Table 6.2-4.

#### Table 6.2-4: O-DU7-2x Mechanical Requirements

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Parameter** | **Requirement** | **Priority** |
| Dimension | The solution shall be 1 rack unit in height | High |
| Dimension | For the O-DU7-2x at cell site, the solution dimensions shall not exceed 19 inch width and 18 inch depth  For the O-DU7-2x at data center, the sled shall meet dimensions of 41 mm (Height) x 215 mm (Width) x 427.5 mm (Depth) | High |
| Dimension | The solution shall have PCIe Gen 3/4 x16 low profile or half-length slot to add to support FEC Accelerator | High |
| Dimension | The solution shall support a minimum of 64 GB DDR4 or better DRAM using all available DIMM slots to maximize memory bandwidth. 8 DIMM slots are preferred. | High |
| Dimension | The solution shall have at least 2x 240GB SSD drives | High |
| Dimension | For the O-DU7-2x at the cell site, the solution with minimum 16 Core and clock speed of 2.3 GHz is recommended. Equivalent/higher alternative processor technology and core counts including combinations of CPUs, GPUs, FPGAs and ASICs and clock frequencies are acceptable**.**  For the O-DU7-2x at the data center, the solution with minimum 24 Core and clock speed of 2.4 GHz is recommended. Equivalent/higher alternative processor technology and core counts including combinations of CPUs, GPUs, FPGAs and ASICs and clock frequencies are acceptable**.** | High |
| Dimension | For the O-DU7-2x at the cell site, the solution shall have at least 6x 10G ports to carry eCPRI ORAN 7-2x fronthaul traffic from O-RUs to the O-DU7-2x  For the O-DU7-2x at the data center, the solution shall have at least 4x 25G ports to carry eCPRI fronthaul and midhaul traffic | High |
| Dimension | For the O-DU7-2x at the cell site, the solution shall have 2x 1/10G ports to carry ORAN Split 2 midhaul traffic from O-DU7-2x to O-CU | High |
| Status Indicator LED | At least include the following status indicators:   * 1 LED indicating on/off status of the power supply * 1 LED indicating on/off status of the transmission link | High |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| Power Supply | For the O-DU7-2x at the cell site, the solution shall have a single DC power supply. For the O-DU7-2x at the data center, the solution shall have a single AC/DC power supply.  The solution shall support -48V DC power. The tolerance range should be within - 42V and -58V DC | High |
| Power Dissipation | The maximum power consumption of the solution in normal conditions shall not exceed 400W | High |
| Power Drain | The solution shall have the ability to reduce the power drain when not at full load | High |

</div>

1

2

1. The thermal requirements of the O-DU7-2x are listed in Table 6.2-5.

#### Table 6.2-5: O-DU7-2x Thermal Requirements

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Parameter** | **Requirement** | **Priority** |
| Environment and Reliability | The solution shall support operating temperature ranges from 0? to 50? for data center. | High |
| Environment and Reliability | The solution may have FANs to support temperature requirements. | High |
| Environment and Reliability | The solution should support extended temperature range (-40? to +55?) if implemented outdoors. | Low |
| Environment and Reliability | The solution shall support in-band Redfish Chassis management | High |
| Environment and Reliability | The solution shall have at least 4 dry contact inputs and ability for environmental and cabinet alarms monitoring. | High |

</div>

5

## 6.3 O-DUx Split Option Specific Requirements

### 6.3.1 O-DU7-2x Specific Requirements

1. 'This section intentionally left blank'.

### 6.3.2 O-DU6 Specific Requirements

1. 'This section intentionally left blank'.

### 6.3.3 O-DU8 Specific Requirements

1. 'This section intentionally left blank'.

## 6.4 O-RUx Common Requirements

1. The common requirements apply to all the O-RUX regardless of the split option. However, in this version of the
2. specification, the focus will be on O-RU7-2x. If more options get standardized in a future version of this document, some
3. of these common requirements may be moved to the specific sub-sections in section 6.5.
4. In the outdoor environment, the O-RU7-2x hardware is placed on the rooftop, pole or wall of the coverage building; it
5. converts the baseband signals to RF signals for transmission over the air or vice versa. All radio requirements are subject
6. to local regulatory limits, where applicable.

### 6.4.1 O-RU7-2x Performance

1. The O-RU7-2x performance requirements cover all the aspects of radio unit including frequency bands, antenna
2. configurations, power efficiency, etc. Table 6.4-1 lists the performance parameters related to O-RU7-2x.

#### Table 6.4-1: O-RU7-2x Performance Requirements

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Parameter** | **Requirement** | **Priority** |
| Operating band | B1/n1, B3/n3, B7/n7, n26, n29, n66, n70, n71, n77, n78, n78 European sub band (3400-3800 MHz according with ECC Decision (11)06 and CEPT Report 67).  All the bands according to 3GPP TS 36.104 [13] and 3GPP TS 38.104 [3] except n78 European sub-band. | High |
| Bandwidth | The IBW of the n66 O-RU7-2x shall be 90 MHz  The OBW of the n66 O-RU7-2x shall be 90MHz. | High |
| The DL IBW of the n70 O-RU7-2x shall be 25MHz, and its UL IBW shall be 15MHz.  The DL OBW of the n70 O-RU7-2x shall be 25MHz, and its UL OBW shall be 15MHz. |
| The IBW of the n26 O-RU7-2x shall be 7MHz.  The OBW of the n26 O-RU7-2x shall be 7MHz. |
| The IBW of the n29 O-RU7-2x shall be 11MHz.  The OBW of the n29 O-RU7-2x shall be 11MHz. |
| The IBW of the n71 O-RU7-2x shall be 35MHz.  The OBW of the n71 O-RU7-2x shall be 35MHz. |
| The IBW of the n77 O-RU7-2x shall be 280MHz.  The OBW of the n77 O-RU7-2x shall be 200MHz. |
| The IBW of n78 O-RU7-2x shall be 400MHz.  The OBW of n78 O-RU7-2x shall be up to 300MHz. |
| The IBW of B1/n1 O-RU7-2x shall be 60MHz.  The OBW of B1/n1 O-RU7-2x shall be 60MHz. |
| The IBW of B3/n3 O-RU7-2x shall be 75MHz.  The OBW of B3/n3 O-RU7-2x shall be 75MHz. |
| The IBW of B7/n7 O-RU7-2x shall be 70MHz.  The OBW of B7/n7 O-RU7-2x shall be 70MHz. |
| O-RU7-2x Multi-band operation | Tri-band: n26+n29+n71  The O-RU7-2x shall have at least 4 RF ports, with n71, n29, and n26 sharing the same RF ports.  Tri-band: B1/n1+B3/n3+B7/n7 | High |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
|  | The O-RU7-2x shall have at least 4 RF ports, with B1/n1, B3/n3, and B7/n7 sharing the same RF ports. |  |
| Dual-band: n66+n70  The O-RU7-2x shall have at least 4 RF ports, with n66 and n70 sharing the same RF ports.  Dual-band: B1/n1+B3/n3  The O-RU7-2x shall have at least 4 RF ports, with B1/n1 and B3/n3 sharing the same RF ports.  Dual-band: B1/n1+B7/n7  The O-RU7-2x shall have at least 4 RF ports, with B1/n1 and B7/n7 sharing the same RF ports. | High |
| Expected Multi- mode and Transceiver Configuration (Number of Transmit/Receive Paths) | Tri-band (n26+n29+n71): 4T4R  Tri-band (B1/n1+B3/n3+B7/n7): 4T4R | High |
| Dual-band (n66+n70): 4T4R  Dual-band (B1/n1+B3/n3 or B3/n3+B7/n7): 4T4R | High |
| Single-band (n77): 8T8R | High |
| Single-band (n77): 64T64R | High |
| Single-band (n78): 32T32R and 64T64R | High |
| Single-band (B1/n1 or B3/n3 or B7/n7): 4T4R | High |
| Output Power Accuracy | The EIRP/output power of the O-RU7-2x shall follow 3GPP TS38.141-1 and TS38- 141-2 requirements for normal and extreme conditions as well as for radiated and conducted tests. (It is desirable to remain within +/- 1dB of the set power under all operation condition.) | High |
| TX off Power Level | Less than -85 dBm/MHz (-89 dBm/MHz desired) per antenna connector or TAB connector as per 3GPP TS 38.104 [3] | High |
| EVM at maximum output power | 64QAM: EVM smaller than 8% (5% desired) 256QAM: EVM smaller than 3.5%  For other modulations, refer to 3GPP TS 38.104 [3] | High |
| Operating band unwanted emissions | The operating band unwanted emissions must satisfy the Category B limit defined by the section 6.6.4 in 3GPP TS 38.104 [3]. | High |
| Transmitter spurious emissions | The Operating band unwanted emissions must satisfy the Category B limit defined by the section 6.6.5 in 3GPP TS 38.104 [3]. | High |
| Noise Figure | O-RU7-2x receiver Uplink Noise Figure shall be better than 1.9dB typical (average value in normal conditions ), 2.5dB Max ( worst case conditions) for single-band, dual-band and tri-band. For massive MIMO, the noise figure requirement shall be lower than 3.5 dB | High |
| Rx sensitivity | The throughput shall be >= 95% of the maximum throughput of the reference measurement channel as specified in annex A.1 with parameters specified in 3GPP TS 38.104 table 7.2.2-1 for Wide Area BS. | High |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| Blocking | In channel selection, ACS, In-band blocking, out-band blocking, IMD and other receiver specification must follow the 3GPP guidelines for the reference sensitivity is allowed to degrade at most 6 dB under all scenarios of interference signal and corresponding level, as per table 7.4.1.2-1 of [3]. | High |
| Other specifications | Except for all the RF specifications listed above, other RF specifications must follow the requirement in [3]. | High |
| Modulation Mode | DL: QPSK, 16QAM, 64QAM, 256QAM, (1024 QAM desired)  UL: ?/2-BPSK, QPSK, 16QAM, 64QAM (256QAM/1024 QAM desired) | High |
| Min. Output power | The tri-band O-RU7-2x (n26+n29+n71): 4T4R - n26 shall be 10W per port 4T4R - n29 shall be 40W per port 4T4R - n71 shall be 30W per port  The tri-band O-RU7-2x (B1/n1+B3/n3+B7/n7): 4T4R - B1/n1 shall be 40W per port  4T4R - B3/n3 shall be 40W per port  4T4R - B7/n7 shall be 40W per port | High |
| High |
| The dual-band O-RU7-2x (n66+n70): The combined output power shall be at least 80W per port, under all operating conditions.  The O-RU7-2x shall be able to allocate higher power level for n66 (example: 60W) and lower power level for n70 (example: 20W). The power setting shall be configurable by the operator.  The dual-band O-RU7-2x (B1/n1+B3/n3 or B1/n1+B7/n7): The combined output power shall be at least 80W per port, under all operating conditions.  The O-RU7-2x shall support equal power allocation between bands and preferably should be able to allocate higher power level for B1/n1 (example: 60W) and lower power level for B3/n3 or B7/n3 (example: 20W) and vice versa. The power setting shall be configurable by the operator. | High |
| Single band O-RU7-2x (n77):   * 8T8R: 40W per port * 64T64R: 80dBm EIRP (integrated antenna) Single band O-RU7-2x (B1/n1 or B3/n3): * 4T4R: 40W per port   Single band O-RU7-2x (B7/n7):   * 4T4R: 60W per port | High |
| For any Wide band O-RU7-2x (n78) product (32T32R and 64T64R) the EIRP shall be (for narrow beam at boresight; assuming SU-MIMO; no power sharing between beams): > +78 dBm (Typically 55 dBm output power + 23 dBi) | High |
| Regulation | For n26 band, the O-RU7-2x shall have a feature limiting its TX power and meet FCC rules on output power as outlined in part 90 and part 22. | High |
| EIRP Stability | The EIRP/output power of the O-RU7-2x shall follow 3GPP TS38.141-1 and TS38- 141-2 requirements for normal and extreme conditions as well as for radiated and conducted tests. (It is desirable to remain within +/- 1dB of the set power under all operation condition.) | High |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| Synchronization | The O-RU7-2x shall support GPS and/or IEEE 1588v2 for timing synchronization based on O-RAN CUS plane specification [4]. | High |
| The O-RU7-2x shall support Telecom Slave Clock (T-TSC) to the protocol(s) as defined for the fronthaul interface. Furthermore, the O-RU7-2x shall provide additional noise filtering to filter fronthaul interface dynamic noise which will help meeting 3GPP frequency accuracy requirement | High |
| For timing synchronization, the O-RU7-2x shall support the mandatory configurations as defined by O-RAN WG4 specification [4] | High |
| Optical Interface | For 4T4R radios:   * For n66, n70, n26, n29, n71 radios: At least one SFP 10G interface. * For B1/n1, B3/n3 and B7/n7: At least 2x10Gbps SFP+. | High |
| For any M-MIMO products the minimum number of Front haul Interface PHY ports should be 2x25Gpps, with SFP28 optical connectors, although 4x25Gbps SFP28 should be needed depending on TRx configuration, IBW, OccBW, total number of carriers supported; DL/UL MU\_MIMO paired layers supported, etc. | High |
| Beamforming support (for massive MIMO radios) | Number of Beams: Up to 8 SSB beams (FR1) | High |
| 32T32R:  Horizontal plane: at least +-45 degrees (+-60 degrees desirable) with side lobes suppression > 10dB (>15 dB desirable).  64T64R:  Horizontal plane: at least +-45 degrees (+-60 degrees desirable) with side lobes suppression > 10dB (>15 dB desirable). | High |
| 32T32R:  Vertical plane: At least +-5 degrees with side lobes suppression > 6dB (>10 dB desirable)  At least +-2 degrees with side lobes suppression > 10dB (>15 dB desirable) 64T64R:  Vertical plane: At least +-15 degrees with side lobes suppression > 6dB (>10 dB desirable)  At least +-10 degrees with side lobes suppression > 10dB (>15 dB desirable) | High |
| Antenna elements | For M-MIMO products n78 or any subsets inside this band, the minimum number of single polarization antenna elements must be 192: (12 rows x8 columns x 2 dual slant cross polar antenna elements). | High |
| AAU Number of simultaneous TX user beams/layers per carrier | 16DL and 8UL | High |

</div>

1

### 6.4.2 O-RU7-2x Interfaces

1. The interface related requirements of the O-RU7-2x are listed in Table 6.4-2.

#### Table 6.4-2: O-RU7-2x Interface Requirements

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Parameter** | **Requirement** | **Priority** |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| Fronthaul interface | The O-RU7-2x shall be compliant to O-RAN CUS plane specification [4] | High |
| Fronthaul interface | The O-RU7-2x shall be compliant to O-RAN M-plane specification [10] | High |
| Fronthaul interface | The O-RU7-2x shall comply to M-Plane IOT Profile 1 specified in O-RAN M-plane specification [10] | High |
| Fronthaul interface | The O-RU7-2x shall support at least one of the following NETCONF/YANG based models for management plane as specified in O-RAN M-plane specification [10]:   1. hierarchical architecture model 2. hybrid architecture model | High |
| Fronthaul interface | The O-RU7-2x shall support direct connection between O-RU7-2x and O-DU7-2x for fronthaul synchronization as specified in O-RAN CUS plane specification [4] | High |
| Fronthaul interface | The O-RU7-2x shall support LLS-C2 and LLS-C3 bridged connection between O-RU7- 2x and O-DU7-2x for fronthaul synchronization as specified in O-RAN CUS plane specification [4]. | High |
| Fronthaul interface | The O-RU7-2x shall comply to all the test cases specified in O-RAN IOT specification [11] | High |
| Fronthaul interface | The O-RU7-2x shall support Block floating point compression as specified in O-RAN CUS plane specification [4]. The compression bits shall be configurable through EMS. | High |
| Fronthaul interface | The O-RU7-2x shall support Pre-configured Transport Delay Method as specified in O- RAN CUS plane specification [4] | High |
| Fronthaul interface | The O-RU7-2x shall support transmission blanking as specified in O-RAN CUS plane specification [4] | High |
| Fronthaul interface | The O-RU7-2x shall support the counters specified in O-RAN CUS plane specification [4] | High |
| Fronthaul interface | The O-RU7-2x shall support the eCPRI header format, section type and section extension type messages as specified in O-RAN CUS plane specification [4] | High |
| Fronthaul interface | The O-RU7-2x shall support G.8275.1 synchronization as specified in O-RAN CUS plane specification [4] | High |
| Fronthaul interface | The O-RU7-2x shall support G.8275.2 synchronization as specified in O-RAN CUS plane specification [4] | High |
| Fronthaul interface | The O-RU7-2x shall support IEEE 1914.3, ITU-T G.826x, G.827x series specified in O- RAN CUS plane specification [4] | High |
| Fronthaul interface | The O-RU7-2x shall be compliant to security requirements specifications in accordance with WG11 technical specifications [14] | High |
| Fronthaul interface | The O-RU7-2x shall be compliant to security protocol specifications in accordance with WG11 technical specifications [15] | High |
| Fronthaul interface | The O-RU7-2x shall be compliant to security test specifications in accordance with WG11 technical specifications [16] | High |

</div>

1

### 6.4.3 O-RU7-2x Environmental and EMC

1. The environmental and EMC requirements of the O-RU7-2x are listed in Table 6.4-3.

#### Table 6.4-3: O-RU7-2x Environmental and EMC Requirements

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Parameter** | **Requirement** | **Priority** |
| Mounting method | Back of antenna, Tower, Roof top, Pole, or Wall | High |
| RF Connector | RF connector type should be 4.3-10 female. Location should be on the bottom of O- RU7-2x, on left side of connector panel arranged in a single 1x4 row and dimensioned from the backside face. | High |
| AISG Connector | AISG Connector should be standard 8 pin female connector. Location should be on the bottom of O-RU7-2x and dimensioned from the backside face. | High |
| RET Connector | O-RU7-2x shall provide direct support of antenna Remote Electrical Tilt via a specific port for RET: DIN-8 RET, AISG 2.0. This port shall be located down of the unit. | High |
| Optical Connector | Optical Connector should be SFP+/SFP28. Location should be on the bottom of the O-RU7-2x and dimensioned from the backside face. | High |
| Power Connector | Power connector should be: DC Circular Connector, Receptacle, 2-Pin Male*.* Location should be on the bottom of O-RU7-2x and dimensioned from the backside face. Also, connector should be located on the far-right side of connector panel to allow ease of installation | High |
| Lightning Protection | O-RU7-2x shall have lightning protection | High |
| Grounding | The O-RU7-2x shall support grounding. Ground connector should be a two-wire ground lug. Grounding lug location should be on the bottom of the O-RU7-2x and dimensioned from the backside face | High |
| EMC, Safety, Storage, and Transportation | The O-RU7-2x shall comply to the following EMC, Safety, Storage, and Transportation Requirements: CFR 47, Part 1.130, Part 15B, UL 62368-1, UL 50E, UL 60950-22,  3GPP 38.113, ETSI EN 300 019-2-4, Severity class 1, Telcordia GR-63, Zone4,  Telcordia GR 487, Telcordia GR 63, ETSI 300 019-1-1 Class 1.3, and IEC-61000-4-5,  ETSI EN 301 489-1, 3GPP TS 37.113, 3GPP TS 37.114, Directive 2002/95/EC &  Directive 2011/65/EU, Directive 2002/96/EC, EU Radio Equipment Directive (RED) 2014/53/EU, ETSI EN 300 019-1-2, Class 2.3, ETSI EN300019-1-1 V2.1.4 (2003-04)  Class 1.2: "Weather protected, not temperature-controlled storage locations", ETSI EN 300 019-1-3, class 3.2 (indoor site), ETSI EN 300 019-1-4, class 4.1 (outdoor site). | High |
| Environment | The solution should comply with the requirements of O-RAN SuFG Circular economy guidelines on network equipment [17] | High |

</div>

1

### 6.4.4 O-RU7-2x Mechanical, Thermal and Power

1. The mechanical, thermal and power requirements of the O-RU7-2x are listed in Table 6.4-4.
2. **Table 6.4-4: O-RU7-2x Mechanical, Thermal and Power Requirements**

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Parameter** | **Requirement** | **Priority** |
| Weight (excluding mounting kit) | The weight of the tri-band O-RU7-2x (n26+n29+n71) shall be less than 35kg. | High |
| The weight of the dual-band O-RU7-2x (n66+n70) shall be less than 30kg. | High |
| The weight of the single band 64T64R O-RU7-2x (n77) shall be less than 50kg | High |
| The weight of the single band 8T8R O-RU7-2x (n77) shall be less than 33kg | High |
| The weight of the single band 32T32R O-RU7-2x (n78) shall be less than 30kg  The weight of the single band 64T64R O-RU7-2x (n78) shall be less than 40 kg | High |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
|  | The weight of the single band 4T4R O-RU7-2x (B1/n1 or B3/n3) shall be less than 16kg | High |
| The weight of the single band 4T4R O-RU7-2x (B7/n7) shall be less than 18kg | High |
| The weight of the dual band 4T4R O-RU7-2x (B1/n1+B3/n3 or B3/n3+B7/n7) shall be less than 33kg | High |
| The weight of the tri-band 4T4R O-RU7-2x (B1/n1+B3/n3+B7/n7) shall be less than 35kg | High |
| Volume | The volume of the tri-band O-RU7-2x (n26+n29+n71) shall be less than 33 Liter. | High |
| The volume of the dual-band O-RU7-2x (n66+n70) shall be less than 28 Liter. | High |
| The volume of the single-band 64T64R O-RU7-2x (n77) shall be less than 81 Liters. | High |
| The volume of the single-band 8T8R O-RU7-2x (n77) shall be less than 42.5 Liters. | High |
| The volume of the single-band 32T32R O-RU7-2x (n78) shall be less than 45 Liters.  The volume of the single-band 64T64R O-RU7-2x (n78) shall be less than 55 Liters. | High |
| The volume of the single-band 4T4R O-RU7-2x (B1/n1, B3/n3) shall be less than 16 Liters. | High |
| The volume of the single-band 4T4R O-RU7-2x (B7/n7) shall be less than 18 Liters. | High |
| The volume of the dual-band 4T4R O-RU7-2x (B1/n1+B3/n3 or B3/n3+B7/n7) shall be less than 24 Liters. | High |
| The volume of the tri-band 4T4R O-RU7-2x (B1/n1+B3/n3+B7/n7) shall be less than 34 Liters. | High |
| Dimensions | Maximum dimensions of tri-band O-RU7-2x (n26+n29+n71) and dual-band O-RU7-2x (n66+n70) should be 462mm (L) x 340mm (W) x 177 mm (D). Physical dimensions shall not exceed 890mm x 500mm x 250mm for 64T64R n77 radio. Physical dimensions shall not exceed 420mm x 420mm x 240mm for 8T8R n77 radio. For 64T64R n78 radio L < 800mm x W < 400mm x D < 250 mm. (including connectors and radome/sunshield). | High |
| Mounting Holes | A pattern of M8 mounting holes should be located on backside of the O-RU7-2x, with a total of 8 holes (4 towards top and 4 towards bottom). | High |
| Reliability | MTBF >= 250.000 hours for mMIMO  MTBF >= 300.000 hours for non mMIMO;  In normal operating conditions (ETSI 300 019 environment temperature +25oC). | High |
| Power Consumption | The tri-band O-RU7-2x (n26+n29+n71): shall be less than 1,200 Watt at 100% full loading, under all operational conditions. | High |
| The dual-band O-RU7-2x (n66+n70): shall be less than 1,200W at 100% full loading, under all operational conditions. | High |
| The single-band 64T64R O-RU7-2x (n77) shall be less than 1,810W at 100% full loading, under all operational conditions. Typical power measurement for 100% load may be done following 3GPP procedures for TDD with 7D1S2U configuration using TM1.1 with ~75% DL ratio in the slot. | High |
| The single-band 32T32R O-RU7-2x (n78) shall be less than 800W at 100% full loading, under all operational conditions. Typical power measurement for 100% load may be done following 3GPP procedures for TDD with 7D1S2U configuration using TM1.1 with ~75% DL ratio in the slot. | High |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
|  | The Wide band 64T64R O-RU7-2x (n78) shall be less than 1000W, assuming at 100% full loading, under all operational conditions and 55oC, 320W output power. Typical power measurement for 100% load may be done following 3GPP procedures for TDD with (DDDSU, with special subframe 10:2:2 slot format) configuration using TM1.1 with  ~80% DL ratio in the slot. No fans. | High |
| For O-RU7-2x Single band B1/n1 or Single band B3/n3 products shall be less than 500W, assuming at 100% full loading, under all operational conditions. At 55oC and for natural cooling (no fans). | High |
| For O-RU7-2x Single band B7/n7 products shall be less than 700W, assuming at 100% full loading, under all operational conditions. At 55oC and for natural cooling (no fans). | High |
| For O-RU7-2x Dual band B1/n1+B3/n3 or B3/n3+B7/n7 products shall be less than 950W, assuming at 100% full loading, under all operational conditions. At 55oC and for natural cooling (no fans). | High |
| For O-RU7-2x Tri-band B1/n1+B3/n3+B7/n7 products shall be less than 1300W, assuming at 100% full loading, under all operational conditions. At 55oC and for natural cooling (no fans). | High |
| Power supply | The O-RU7-2x shall operate with the nominal voltage of -48V | High |
| The O-RU7-2x shall have protection from power transients and surges with no impact/degradation to its performance or operation. | High |
| In case of power loss to the O-RU7-2x, and after the power is restored, the O-RU7-2x shall be fully functional and operational without any human interaction/intervention. | High |
| Level of protection | O-RU7-2x shall be at a minimum IP65 rated if deployed outdoors | High |
| Temperature | O-RU7-2x shall operate at the temperature range of -40? to +55? with both cold start and hot start options. | High |
| Humidity | O-RU7-2x shall operate between 0.03 g/m3 and 30 g/m3 of absolute humidity | High |
| Atmospheric pressure | O-RU7-2x shall operate between 70 kPa and 106 kPa atmospheric pressure | High |
| Cooling mode | O-RU7-2x shall support convection air cooling | High |

</div>

## 6.5 O-RU7-2x Split Option Specific Requirements

1. Besides the common requirements which shall apply to all the radio unit types. The following sections list all the
2. specific requirements that only apply to the designated split option.

### 6.5.1 O-RU7-2x Specific Requirements

1. 'This section intentionally left blank'.

### 6.5.2 O-RU6 Specific Requirements

1. 'This section intentionally left blank'.

### 6.5.3 O-RU8 Specific Requirements

1. 'This section intentionally left blank'.

## 6.6 FHGW/FHM - Common Requirements

1. 'This section intentionally left blank'.

## 6.7 FHGW/FHM - Split Option Specific Requirements

### 6.7.1 FHM/Switch for Split 7-2x, Specific Requirements

1. 'This section intentionally left blank'.
2. 6.7.2 FHGW7-2x->8 Specific Requirements
3. 'This section intentionally left blank'.

### 6.7.3 FHM/Switch for Split 8, Specific Requirements

1. 'This section intentionally left blank'.

## 6.8 Integrated gNB-DU Requirements

1. 'This section intentionally left blank'.

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

11 History

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Date** | **Revision** | **Description** |
| 2023.07.18 | 04.00 | Final version for publication  Update on O-RU requirements to reflect WG11 outcomes on security |
| 2022.07.19 | 03.00 | Final version for publication.  Added new section for Massive MIMO high level architecture and high-level reference architecture for Integrated gNB-DU Hardware Architecture (O-RU Functional Split 2) |
| 2021.07.16 | 02.00 | Final version for publication |
| 2020.10.21 | 01.00 | Final version for publication |

</div>

12
---

- View in [GitHub Mode]({{site.github_page_url}}/O-RAN.WG7.OMAC-HAR.0-v05.00.docx.md).
- Go back to [Table of Contents]({{site.baseurl}}/).
- Download the [Original Document]({{site.download_url}}/O-RAN.WG7.OMAC-HAR.0-v05.00.docx).

---

* toc
{:toc}
