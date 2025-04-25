---
title: O-RAN.WG7.OMC-HAR.0-v01.00.docx.md
author: O-RAN Alliance, WG7
layout: post
---

- View in [GitHub Mode]({{site.github_page_url}}/O-RAN.WG7.OMC-HAR.0-v01.00.docx.md).
- Go back to [Table of Contents]({{site.baseurl}}/).
- Download the [Original Document]({{site.download_url}}/O-RAN.WG7.OMC-HAR.0-v01.00.docx).

---

* toc
{:toc}

---

**O-RAN White Box Hardware Working Group Outdoor Micro Cell Hardware Architecture and Requirements (FR1)**

**Specification**

#### This is a re-published version of the attached final specification.

For this re-published version, the prior versions of the IPR Policy will apply, except that the previous requirement for Adopters (as defined in the earlier IPR Policy) to agree to an O-RAN Adopter License Agreement to access and use Final Specifications shall no longer apply or be required for these Final Specifications after 1st July 2022.

The copying or incorporation into any other work of part or all of the material available in this specification in any form without the prior written permission of O-RAN ALLIANCE e.V. is prohibited, save that you may print or download extracts of the material on this site for your personal use, or copy the material on this site for the purpose of sending to individual third parties for their information provided that you acknowledge O-RAN ALLIANCE as the source of the material and that you inform the third party that these conditions apply to them and that they must comply with them.

**O-RAN White Box Hardware Working Group Outdoor Micro Cell Hardware Architecture and Requirements (FR1)**

**Specification**

Copyright (C) 2021 by O-RAN ALLIANCE e.V.

By using, accessing or downloading any part of this O-RAN specification document, including by copying, saving, distributing, displaying or preparing derivatives of, you agree to be and are bound to the terms of the O-RAN Adopter License Agreement contained in the Annex ZZZ of this specification. All other rights reserved.

O-RAN ALLIANCE e.V.

Buschkauler Weg 27, 53347 Alfter, Germany Register of Associations, Bonn VR 11238 VAT ID DE321720189

Copyright (C) 2021 O-RAN ALLIANCE e.V. All Rights Reserved 1

# Revision History

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| Date | Revision | Author | Description |
| 2021.01.14 | v01.00 | WG7 | Final Version for Publication |

</div>

2

# Contents

1. Revision History 2
2. Chapter 1 Introductory Material 6
3. 1.1 Scope 6
4. 1.2 References 6
5. 1.3 Definitions and Abbreviations 7
6. 1.3.1 Definitions 7
7. 1.3.2 Abbreviations 8
8. Chapter 2 Deployment Scenarios and White Box Base Station Architecture 11
9. 2.1 Deployment Scenarios 11
10. 2.2 White Box Base Station Architecture 11
11. 2.2.1 Split RAN Architecture 12
12. 2.2.2 Integrated gNB-DU Architecture 14
13. Chapter 3 White Box Hardware Architecture 15
14. 3.1 O-CU Hardware Architecture 15
15. 3.1.1 O-CU Architecture Diagram 15
16. 3.1.2 O-CU Functional Module Description 15
17. 3.1.3 O-CU Interfaces 16
18. 3.2 O-DU7-2 Hardware Architecture 16
19. 3.2.1 O-DU7-2 Architecture Diagram 16
20. 3.2.2 O-DU7-2 Functional Module Description 16
21. 3.2.3 O-DU7-2 Interfaces 18
22. 3.3 O-DU6 Hardware Architecture 19
23. 3.4 O-DU8 Hardware Architecture 19
24. 3.5 FHGW7-2 - Option 7-2 to Option 7-2 Hardware Architecture 19
25. 3.6 FHGW6 - Option 6 to Option 6 Hardware Architecture 19
26. 3.7 FHGW7-2->8 - Option 7-2 to Option 8 Hardware Architecture 19
27. 3.8 FHGW8 - Option 8 to Option 8 Hardware Architecture 19
28. 3.9 O-RU7-2 Hardware Architecture 19
29. 3.9.1 O-RU7-2 Architecture Diagram 20
30. 3.9.2 O-RU7-2 Functional Module Description 20
31. 3.10 O-RU6 Hardware Architecture 21
32. 3.11 O-RU8 Hardware Architecture 21
33. 3.12 Integrated gNB-DU Hardware Architecture 21
34. Chapter 4 White Box Hardware Requirements 22
35. 4.1 O-CU Requirements 22
36. 4.1.1 O-CU Performance 22
37. 4.1.2 O-CU Interfaces 23
38. 4.1.3 O-CU Environmental and EMC 23
39. 4.1.4 O-CU Mechanical, Thermal and Power 24
40. 4.2 O-DUx Common Requirements 25
41. 4.2.1 O-DUx Performance 25
42. 4.2.2 O-DUx Interfaces 26
43. 4.2.3 O-DUx Environmental and EMC 26
44. 4.2.4 O-DUx Mechanical, Thermal and Power 27
45. 4.3 O-DUx Split Option Specific Requirements 28
46. 4.3.1 O-DU7-2 Specific Requirements 28
47. 4.3.2 O-DU6 Specific Requirements 29
48. 4.3.3 O-DU8 Specific Requirements 29
49. 4.4 O-RUx Common Requirements 29
50. 4.4.1 O-RUx Performance 29
51. 4.4.2 O-RUx Interfaces 30
52. 4.4.3 O-RUx Environmental and EMC 31
53. 4.4.4 O-RUx Mechanical, Thermal and Power 31
54. 4.5 O-RUx Split Option Specific Requirements 33
55. 4.5.1 O-RU7-2 Specific Requirements 33
56. 4.5.2 O-RU6 Specific Requirements 33
57. 4.5.3 O-RU8 Specific Requirements 33
58. 4.6 FHGWx - Common Requirements 33
59. 4.7 FHGWx - Split Option Specific Requirements 33
60. 4.8 Integrated gNB-DU Requirements 33
61. Annex ZZZ: O-RAN Adopter License Agreement 34

24

1. Tables
2. Table 4-1 :O-CU Performance Requirements 22
3. Table 4-2: O-CU Interface Requirements 23
4. Table 4-3: O-CU EMC Requirements 23
5. Table 4-4: O-CU Mechanical Requirements 24
6. Table 4-5: O-CU Thermal Requirements 24
7. Table 4-6: O-CU Power Requirements 24
8. Table 4-7: O-DUx Performance Requirements 25
9. Table 4-8: O-DUx Interface Requirements 26
10. Table 4-9: O-DUx EMC Requirements 27
11. Table 4-10: O-DUx Mechanical Requirements 27
12. Table 4-11: O-DUx Thermal Requirements 27
13. Table 4-12: O-DUx Power Requirements 28
14. Table 4-13: O-DU7-2 Specific Requirements 29
15. Table 4-14: O-RUx Performance Requirements 29
16. Table 4-15: O-RUx Interface Requirements 31
17. Table 4-16: O-RUx Environmental and EMC Requirements 31
18. Table 4-17: O-RUx Mechanical, Thermal and Power Requirements 32

5

1. **Figures**
2. Figure 2-1: Split Architecture 12
3. Figure 2-2: Integrated Architecture 12
4. Figure 2-3: Option 6 to Option 6 Split Architecture 13
5. Figure 2-4: Option 7-2 to Option 7-2 Split Architecture 13
6. Figure 2-5: Option 7-2 to Option 8 Split Architecture 13
7. Figure 2-6: Option 8 to Option 8 Split Architecture 14
8. Figure 2-7: Integrated gNB-DU Architecture 14
9. Figure 3-1: O-CU White Box Hardware Block Diagram 15
10. Figure 3-2: O-DU7-2 with Split Physical Layer Function 16
11. Figure 3-3: O-DU7-2 Functional Block and Interface Diagram 18
12. Figure 3-4: O-RU7-2 Architecture Diagram 20
13. Figure 3-5: O-RU7-2 Generic Functional Module Diagram 21

19

20

# Chapter 1 Introductory Material

## 1.1 Scope

1. This Technical Specification has been produced by the O-RAN.org.
2. The contents of the present document are subject to continuing work within O-RAN WG7 and may change
3. following formal O-RAN approval. Should the O-RAN.org modify the contents of the present document, it will
4. be re-released by O-RAN Alliance with an identifying change of release date and an increase in version number
5. as follows:
6. Release x.y.z
7. where:
8. x the first digit is incremented for all changes of substance, i.e. technical enhancements, corrections,
9. updates, etc. (the initial approved document will have x=01).
10. y the second digit is incremented when editorial only changes have been incorporated in the document.
11. z the third digit included only in working versions of the document indicating incremental changes during
12. the editing process. This variable is for internal WG7 use only.
13. The present document specifies system requirements and high-level architecture for the Outdoor Micro Cell
14. deployment scenario case as specified in the Deployment Scenarios and Base Station Classes document [1].

## 1.2 References

1. The following documents contain provisions which, through reference in this text, constitute provisions of the
2. present document.
3. [1] O-RAN-WG7.DSC.0-V01.00 Technical Specification, 'Deployment Scenarios and Base Station Classes
4. for White Box Hardware'.
5. [2] 3GPP TR 21.905: "Vocabulary for 3GPP Specifications".
6. [3] 3GPP TR 38.104: "NR; Base Station (BS) radio transmission and reception".
7. [4] O-RAN-WG4.CUS.0-v01.00 Technical Specification, 'O-RAN Fronthaul Working Group Control, User
8. and Synchronization Plane Specification'.
9. [5] CPRI Specification V7.0 (2015-10-09) Interface Specification, 'Common Public Radio Interface (CPRI).
10. [6] Small Cell Forum, SCF222.10.02 5G FAPI: PHY API Specification,
11. https://scf.io/en/documents/222\_5G\_FAPI\_PHY\_API\_Specification.php
12. [7] 3GPP TS 38.113: "NR: Base Station (BS) Electromagnetic Compatibility (EMC)
13. [8] O-RAN Architecture Description, O-RAN-WG1-O-RAN Architecture Description - v01.00.00

## 1.3 Definitions and Abbreviations

### 1.3.1 Definitions

1. For the purposes of the present document, the terms and definitions given in 3GPP TR 21.905 [2] and the
2. following apply. A term defined in the present document takes precedence over the definition of the same term,
3. if any, in [2]. For the base station classes of Pico, Micro and Macro, the definitions are given in 3GPP TR 38.104
4. [3].
5. **Carrier Frequency:** Center frequency of the cell.
6. **F1 interface:** The standard interface between an O-CU and an O-DUx specified in [8].
7. **Integrated architecture:** An architecture wherein the O-RUx and O-DUx are implemented on one platform.
8. Each O-RUx and RF front end is associated with one O-DUx and is connected to O-CU via F1 interface.
9. **Split architecture:** An architecture wherein O-RUx and O-DUx are physically separated from one another. A
10. switch may aggregate multiple O-RUx (s) to one O-DUx. The O-DUx, switch and O-RUx (s) are connected by
11. the fronthaul interface as defined in [4].
12. **Transmission Reception Point (TRxP**): Antenna array with one or more antenna elements available to the
13. network located at a specific geographical location for a specific area.
14. **Occupied Bandwidth (OBW)**: It refers to the bandwidth occupied by the base station when operated, defined
15. by the sum of the active bandwidths of the band allocation(s) operated. As defined by 3GPP TS 34.121 section
16. 5.8, occupied bandwidth is the bandwidth containing 99% of the total integrated power of the transmitted
17. spectrum, centered on the assigned channel frequency. The bandwidth between the 0.5% power frequency points
18. is the occupied bandwidth.
19. **Instantaneous Bandwidth (IBW)**: It refers to the bandwidth in which all frequency components can be
20. simultaneously analyzed. It is defined by the frequency boundaries of the operating band(s).
21. **Frequency Range**: It refers to bandwidth defined by the frequency range within which the Base Station can be
22. operated, defined by the band-pass filter of the BS; e.g., 3.4 - 3.8 GHz (400 MHz)
23. **Frequency Band:** A designated frequency range for the operation of the base station and the UE radios. [5G](https://en.wikipedia.org/wiki/5G_NR)
24. [NR](https://en.wikipedia.org/wiki/5G_NR) frequency bands are divided into two different frequency ranges: Frequency Range 1 (FR1) that mainly
25. includes sub-6GHz frequency bands, some of which are bands traditionally used by previous standards but has
26. been extended to cover potential new spectrum offerings from 410MHz to 7125MHz; Frequency Range 2
27. (FR2) that includes frequency bands from 24.25 GHz to 52.6 GHz. Bands in this [mmWave](https://en.wikipedia.org/wiki/MmWave) range have shorter
28. range but higher available bandwidth than bands in the FR1.
29. **Fronthaul Gateway (FHGW)**: A fronthaul gateway is a physical entity that is located between a distributed
30. unit and one or more radio units where it distributes, aggregates, and/or converts fronthaul protocols between the
31. distributed unit and multiple radio units.
32. Normative terms used in this specification are defined in following:
33. Shall: indicates a requirement
34. Should: indicated as recommendation
35. May: indicates a permission

### 1.3.2 Abbreviations

1. For the purposes of the present document, the abbreviations given in [2] and the following apply. An
2. abbreviation defined in the present document takes precedence over the definition of the same abbreviation, if
3. any, as in [2].
4. 7-2 Fronthaul interface split option as defined by O-RAN WG4, also referred to as 7-2x
5. 3GPP Third Generation Partnership Project
6. 5G Fifth-Generation Mobile Communications
7. 5GC 5G Core
8. ACS Adjacent Channel Selectivity
9. ADC Analog to Digital Converter
10. ASIC Application Specific Integrated Circuit
11. ATA Advanced Technology Attachment
12. BPSK Binary Phase Shift Keying
13. BS Base Station
14. CDR Clock/Data Recovery
15. CFR Crest Factor Reduction
16. CU Centralized Unit as defined by 3GPP
17. DAC Digital to Analog Converter
18. DDC Digital Down Conversion
19. DDR Double Data Rate
20. DL Downlink
21. DPD Digital Pre-Distortion
22. DSP Digital Signal Processor
23. DU Distributed Unit as defined by 3GPP
24. DUC Digital Up Conversion
25. EMC ElectroMagnetic Compatibility
26. EVM Error Vector Magnitude
27. FFT Fast Fourier Transform
28. FH Fronthaul
29. FHGW Fronthaul Gateway
30. FHGWx Fronthaul gateway with no FH protocol translation, supporting an O-DUx with split option x
31. and an O-RUx with split option x, with currently available options 6?6, 7-2?7-2 and 8?8

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| 1 | FHGWx?y | Fronthaul Gateway that can translate FH protocol from an O-DUx with split option x to an O- |
| 2 |  | RUy with split option y, with currently available option 7-2?8. |
| 3 | FPGA | Field Programmable Gate Array |
| 4 | GbE | Gigabit Ethernet |
| 5 | GNSS | Global Navigation Satellite System |
| 6 | GPP | General Purpose Processor |
| 7 | IEEE | Institute of Electrical and Electronics Engineers |
| 8 | IMD | InterModulation Distortion |
| 9 | I/O | Input/Output |
| 10 | JTAG | Joint Test Action Group |
| 11 | L1 | Layer 1, also referred to as PHY or Physical Layer in OSI model |
| 12 | L2 | Layer 2, also referred to as Data Link layer in OSI model |
| 13 | L3 | Layer 3, also referred to as Network Layer in OSI model |
| 14 | LED | Light Emitting Diode |
| 15 | LTE | Long Term Evolution |
| 16 | MAC | Media Access Control |
| 17 | MCP | Multi-Chip Package |
| 18 | MIMO | Multiple Input Multiple Output |
| 19 | MTBF | Mean Time Between Failures |
| 20 | MU-MIMO | Multiple User MIMO |
| 21 | NG | Next Generation |
| 22 | NR | New Radio |
| 23 | OAM | Operations, Administrations and Maintenance |
| 24 | OBW | Occupied Bandwidth |
| 25 | O-CU | O-RAN Centralized Unit as defined by O-RAN |
| 26 | O-DUx | A specific O-RAN Distributed Unit having fronthaul split option x where x may be 6, 7-2 (as |
| 27 |  | defined by WG4) or 8 |
| 28 | O-RUx | A specific O-RAN Radio Unit having fronthaul split option x, where x is 6, 7-2 (as defined |
| 29 |  | by WG4) or 8, and which is used in a configuration where the fronthaul interface is the same |
| 30 |  | at the O-DUx |
| 31 | PCIe | Peripheral Component Interface Express |
| 32 | PDCP | Packet Data Convergence Protocol |
| 33 | PHY | Physical Layer, also referred as L1 |
| 34 | PLL | Phase Locked Loop |
| 35 | POE | Power over Ethernet |
| 36 | QAM | Quadrature Amplitude Modulation |
| 37 | QPSK | Quadrature Phase Shift Keying |
| 38 | RAN | Radio Access Network |
| 39 | RF | Radio Frequency |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| 1 | RLC | Radio Link Controller |
| 2 | RRC | Radio Resource Controller |
| 3 | RU | Radio Unit as defined by 3GPP |
| 4 | RX | Receiver |
| 5 | SDU | Service Data Unit |
| 6 | SFP | Small Form-factor Pluggable |
| 7 | SFP+ | Small Form-factor Pluggable Transceiver |
| 8 | SoC | System on Chip |
| 9 | SPI | Serial Peripheral Interface |
| 10 | TR | Technical Report |
| 11 | TRP | Total Radiated Power |
| 12 | TS | Technical Specification |
| 13 | TX | Transmitter |
| 14 | UL | Uplink |
| 15 | USB | Universal Serial Bus |
| 16 | WG | Working Group |

</div>

# Chapter 2 Deployment Scenarios and White Box Base

1. Station Architecture
2. This chapter consists of two parts: the deployment scenario and the white box architecture. The deployment
3. scenarios outline more specific functional requirements of the base station. All the reference designs shall meet
4. these requirements in order to comply with O-RAN white box standard. In the white box hardware architecture
5. section, it describes the overall gNB hardware architecture and function partition that meet the design
6. requirements. The details on each of these topics are described in the following sections.

## 2.1 Deployment Scenarios

1. The specification here addresses a specific deployment scenario defined by the white box Deployment Scenarios
2. and Base Station Classes document [1]. Its requirements are also defined in [1]. Some of the key requirements
3. described in that document are highlighted below:
4. ? Cell type: Outdoor Micro Cell
5. ? Mounting Options: Rooftop, side of building/wall, pole
6. ? Inter site distance: 1.5 kilometers
7. ? Possible Carrier Frequency Bands: n2, n4, n5, n13, n41, n48, n66, n77, n78, n79
8. ? [Instantaneous] Bandwidth: Up to 280 MHz
9. ? Antennas Configuration: Up to 16T16R
10. ? Coverage: Sectorized
11. ? Conducted Power: up to 10W per port
12. ? Number of Layers: Up to 16 layers
13. ? Fronthaul Type: O-RAN FH (WG4) split option 7.2x.
14. ? Architecture: Split architecture

## 2.2 White Box Base Station Architecture

1. In general, the base station hardware architecture can be classified by using different criteria. The physical partition
2. method is adopted by O-RAN; hence, the base station architecture is divided into two categories namely split and
3. integrated. In split architecture, the fronthaul interface determines the gNB functions location. Here we refer to
4. the two partitions as O-DUx and O-RUx; where the "x" is split option number. In case the O-RAN WG4 defined
5. fronthaul interface is used, these two partitions are called O-DU7-2 and O-RU7-2. For a more complete description
6. of the terminology used, refer to the Deployment Scenarios and Base Station Classes Document [1].
7. The split architecture is shown in Figure 2-1. A Fronthaul Gateway (FHGW) is an optional device between the
8. O-DUx and O-RUx to aggregate multiple radio units together as shown in Figure 2-5. Within this specification, a
9. Back End fronthaul interface is defined as the connection between the FHGWx and the O-DUx, while the Front
10. End fronthaul interface is defined as the connection between the FHGWx and the O-RUx. With split architectures,
11. one may choose to have O-CU and O-DUx as either co-located or shared configuration with respect to hardware.

3

![]({{site.baseurl}}/assets/images/16fc930225c8.png)![]({{site.baseurl}}/assets/images/f94fc150f73e.png)![]({{site.baseurl}}/assets/images/818fbc4057f7.png)![]({{site.baseurl}}/assets/images/01b635bacd86.png)![]({{site.baseurl}}/assets/images/7e03a24d841f.png)

Front Haul

Interface

O-CU & O-DU may be integrated into one Whitebox

O-DUx

O-CU

O-RUx

1. **Figure 2-1: Split Architecture**
2. For integrated base station architecture, the O-DU is integrated with the O-RU into one box. Figure 2-2 shows
3. the integrated architecture.

7

![]({{site.baseurl}}/assets/images/074917707188.png)![]({{site.baseurl}}/assets/images/7b62eda14645.png)![]({{site.baseurl}}/assets/images/fb675d0d0341.png)![]({{site.baseurl}}/assets/images/683dbc29cc27.png)![]({{site.baseurl}}/assets/images/64c0cff1ccf8.png)

F1

Interface

O-DU&O-RU

O-DU&O-RU

Switch/ Router

O-CU

F1

Interface

O-DU&O-RU

1. **Figure 2-2: Integrated Architecture**

### 2.2.1 Split RAN Architecture

1. For medium and large coverage deployment scenarios, the base station with split RAN architecture is more cost
2. effective. This type of architecture is widely deployed in 4G networks. The main idea of this architecture is
3. "shared cell". By using the fronthaul gateway, many radio units can then share the same radio spectrum resource
4. in one cell. This configuration is very useful in both low and high capacity scenarios. Therefore, when an O-
5. DUx and FHGWx are capable of handling cell splits, multiple O-RUx(s) can be grouped together to share the
6. radio resources. Accordingly, the choice of fronthaul split option changes the architecture of the base station.
7. WG7 has recognized the following four split option architectures per service providers' deployment needs which
8. are shown in Figure 2-3 through Figure 2-6.
9. 1) Option 6 to option 6 split architecture
10. In split option 6, all L1 functions are within O-RU6 while the O-DU6 contains functions of MAC and
11. above. Figure 2-3 shows the block diagram of base station having an option 6 split architecture. 21

1

![]({{site.baseurl}}/assets/images/04a4980042d4.png)![]({{site.baseurl}}/assets/images/78795d75cefc.png)![]({{site.baseurl}}/assets/images/e618c67d10bf.png)![]({{site.baseurl}}/assets/images/87d3271dc681.png)![]({{site.baseurl}}/assets/images/f8048d7b8743.png)![]({{site.baseurl}}/assets/images/340fd16a17fe.png)![]({{site.baseurl}}/assets/images/d3814d5cef5b.png)![]({{site.baseurl}}/assets/images/4a01e91f62df.png)

FH

Option6

FH

Option6

O-CU & O-DU may/may not be integrated into one Whitebox

O-RU6

O-RU6

Switch/ Router or

Fronthaul Gateway

O-DU6

O-CU

O-RU6

* 1. **Figure 2-3: Option 6 to Option 6 Split Architecture**
  2. 2) Option 7-2 to option 7-2 split architecture:
  3. In split option 7-2, low PHY functions reside in the O-RU7-2, while the high PHY functions reside in
  4. the O-DU7-2. O-RAN WG4 CUS-plane spec [4] outlines the details of this split option under different
  5. usage scenarios.

7

8

![]({{site.baseurl}}/assets/images/8fbbb8336c91.png)![]({{site.baseurl}}/assets/images/a38bda8f8b92.png)![]({{site.baseurl}}/assets/images/b260d3460eaf.png)![]({{site.baseurl}}/assets/images/9a5551a8ea5e.png)![]({{site.baseurl}}/assets/images/592d8421527d.png)![]({{site.baseurl}}/assets/images/33f2c2de0892.png)![]({{site.baseurl}}/assets/images/21a0964686db.png)![]({{site.baseurl}}/assets/images/631803bb2e3f.png)

FH

Option7-2

FH

Option7-2

O-CU & O-DU may/may not be integrated into one Whitebox

O-RU

O-RU

Switch/ Router or

Fronthaul Gateway

O-DU

O-CU

O-RU

9 **Figure 2-4: Option 7-2 to Option 7-2 Split Architecture**

1. 3) Option 7-2 to option 8 split:
2. This configuration is selected when a deployment scenario requires a radio unit which only supports
3. split option 8 architecture. Since this is currently not part of overall O-RAN architecture, CPRI based
4. option 8 fronthaul and FHGW7-2?8 will be included in the reference design specification. Figure 2-5
5. depicts the option 7-2 to option 8 based split architecture. There is no change for the definition of O-
6. DU7-2, However, O-RU8 supports option 8 fronthaul interface while the FHGW7-2?8 translates the
7. fronthaul protocol between option 7-2 and CPRI.

17

![]({{site.baseurl}}/assets/images/a440aa1614fc.png)![]({{site.baseurl}}/assets/images/4cd6b3b9ab15.png)![]({{site.baseurl}}/assets/images/2bfa389eeb4c.png)![]({{site.baseurl}}/assets/images/42f01b916c3a.png)![]({{site.baseurl}}/assets/images/1ef50da5a196.png)![]({{site.baseurl}}/assets/images/916b70eae4a1.png)![]({{site.baseurl}}/assets/images/94b0feda5793.png)![]({{site.baseurl}}/assets/images/e0dfe86b83ae.png)

FH

Option7-2

O-CU & O-DU may/may not be integrated into one Whitebox

O-RU8

O-RU8

FH

Option8

O-DU7-2

O-CU

Fronthaul Gateway with Option Translator

O-RU8

18 **Figure 2-5: Option 7-2 to Option 8 Split Architecture**

1. 4) Option 8 to option 8 split architecture:
2. Currently, Option 8 is a non-O-RAN defined split option where the CPRI fronthaul interface is
3. needed in order to make the interoperability work with O-DU8 and O-RU8 from different vendors.
4. The option 8 fronthaul interface definition and the requirements shall be part of the white box
5. reference design, if adopted. In this case, the O-DU8 consists of L1 and L2 processing functions.
6. Figure 2-6 shows an option 8 based split architecture. Note that O-CU and O-DU8 hardware may be
7. integrated into one Whitebox this is also shown in Figure 2-6.

8

![]({{site.baseurl}}/assets/images/8c982cc2c79c.png)![]({{site.baseurl}}/assets/images/82e94dd7780f.png)![]({{site.baseurl}}/assets/images/d4752aebf87d.png)![]({{site.baseurl}}/assets/images/63b16e431a18.png)![]({{site.baseurl}}/assets/images/d3530b0252ae.png)![]({{site.baseurl}}/assets/images/9a18b8801c10.png)![]({{site.baseurl}}/assets/images/82dbc05c43a7.png)![]({{site.baseurl}}/assets/images/69dfe53d82d6.png)

FH

Option8

FH

Option8

O-CU & O-DU may/may not be integrated into one Whitebox

O-RU8

O-RU8

Fronthaul Gateway

O-DU8

O-CU

O-RU8

9 **Figure 2-6: Option 8 to Option 8 Split Architecture**

### 2.2.2 Integrated gNB-DU Architecture

1. For integrated gNB-DU, the complete L1/L2 and radio functions are integrated into a single box which includes
2. all logical functions of O-DU and O-RU. Figure 2-7 shows the block diagram of integrated gNB-DU. The gNB-
3. DU connects with the O-CU through an F1 interface as defined by [8]. This specification does not support an
4. integrated option [per requirements in Section 2.1].

15

![]({{site.baseurl}}/assets/images/a8f764d69a78.png)![]({{site.baseurl}}/assets/images/93f2056ad115.png)![]({{site.baseurl}}/assets/images/5fe4ea0db792.png)![]({{site.baseurl}}/assets/images/2e03bd23b4e9.png)![]({{site.baseurl}}/assets/images/926dfe231a1b.png)

gNB-DU

F1

O-CU

O-RU

O-DU

16 **Figure 2-7: Integrated gNB-DU Architecture**

17

# Chapter 3 White Box Hardware Architecture

1. Based on the gNB physical implementation architectures discussed earlier, this chapter provides the architecture,
2. major building blocks and all external/internal interfaces for each Whitebox.

## 3.1 O-CU Hardware Architecture

1. In a 3GPP system architecture, the gNB Central Unit (CU) communicates to the Distribution Unit (DU) via an
2. F1 interface. This interface has been adopted by O-RAN Alliance as well. F1 is an IP based protocol interface,
3. which offers more flexibility in the O-CU platform design.

### 3.1.1 O-CU Architecture Diagram

1. The O-CU can be implemented with any General-Purpose Processor (GPP) based platform having an optional
2. hardware accelerator block. The O-CU functions can be implemented either on separated hardware platforms or
3. on the same hardware platforms integrated with O-DUx functions. In either case, the O-CU hosts L2/L3
4. functions, whereas O-DU hosts L2/L1 functions which require different CPU, Storage, Acceleration and
5. Networking capabilities. Figure 3-1 shows the hardware blocks and interfaces within the O-CU white box.

14

15

Digital Processing Unit

Ethernet Interface

Hardware Accelerator

Backhaul (Ethernet or Wireless)

![]({{site.baseurl}}/assets/images/830103158d25.png)![]({{site.baseurl}}/assets/images/6d773ff7bd23.png)![]({{site.baseurl}}/assets/images/f0f8b5c08295.png)![]({{site.baseurl}}/assets/images/261c0abd6253.png)![]({{site.baseurl}}/assets/images/59e99c715a61.png)

16

17

O-CU

Ethernet Interface

F1

Interface (Ethernet)

1. **Figure 3-1: O-CU White Box Hardware Block Diagram**

### 3.1.2 O-CU Functional Module Description

1. The O-CU functional architecture comprises Digital Signal Processing, optional HW Acceleration, and
2. Connectivity (GbE) units as well as memory and storage units as shown in Figure 3-1.

### 3.1.3 O-CU Interfaces

1. The O-CU interfaces through backhaul with the vEPC or 5GC core network and via F1 interface with the O-
2. DU7-2. The backhaul and the F1 interfaces are typically implemented with GbE transport/connections.

## 3.2 O-DU7-2 Hardware Architecture

1. For a split RAN architecture, the functional blocks of the RAN physical layer are divided into two parts - high
2. PHY and low PHY. The O-RAN lower layer split is defined in O-RAN WG4 fronthaul interface specification
3. [4]. It also provides the details of the interface protocol as well as function partitions.

### 3.2.1 O-DU7-2 Architecture Diagram

1. Depending on the 3GPP standards and category of the radio unit, the split function blocks within O-DU7-2 and
2. O-RU7-2 may vary accordingly. The O-RAN fronthaul C/U/S-plane specification [4] provides comprehensive
3. information on this topic. The hardware functional partition architecture is shown in Figure 3-2. The High-PHY
4. functions in O-DU are run on Digital Processing Unit, Hardware Accelerator, or both.

![]({{site.baseurl}}/assets/images/998d24c30694.png)![]({{site.baseurl}}/assets/images/f0db9ac3e5c8.png)![]({{site.baseurl}}/assets/images/f3832715a546.png)![]({{site.baseurl}}/assets/images/d9284e02330c.png)![]({{site.baseurl}}/assets/images/0c9652ce6742.png)![]({{site.baseurl}}/assets/images/c4d0f93efb4c.png)![]({{site.baseurl}}/assets/images/6a5c0be9386e.png)![]({{site.baseurl}}/assets/images/4d27f83c45a1.png)

1 PPS (IN or OUT)

F

Inter

O-RAN FH

Interface

O-RU7-

O-DU7-2

1

face

Timing and

Synchronization (IEEE 1588)

Ethernet Interface

Digital Processing Unit

Low PHY

Ethernet Interface

Hardware Accelerator

13

1. **Figure 3-2: O-DU7-2 with Split Physical Layer Function**

### 3.2.2 O-DU7-2 Functional Module Description

1. The choice of O-DU7-2 hardware components depends on the product design requirements and is outside the
2. scope of this specification. Figure 3-3 shows the main components of O-DU7-2. Their descriptions and
3. requirements are as follows:

#### Digital Processing Unit

1. The processing unit can be any GPP, FPGA or digital signal processor (DSP), with I/O chipset. It may also be in
2. the form of System-On-Chip (SOC), or Multi-Chip Package (MCP).

#### Memory

1. DDR memory devices are used to store the runtime data and software for the processing unit.

#### Flash Memory

1. On board non-volatile storage device is used to store the firmware and non-volatile data, such as log data.

#### Board Management Controller

1. The controller is used to manage/control the power and monitors the operational status of the board.

#### Storage Device

1. The storage device such as hard drive is used to store OS, driver and applications software.

#### Ethernet Controller

1. The Ethernet ports transport the fronthaul or backhaul traffic according to the gNB hardware node requirements.
2. The Ethernet device shall support IEEE1588 based timing synchronization.

#### Hardware Accelerator

1. The hardware accelerator is an optional device. For performance improvement, the hardware accelerator can be
2. used to process computationally-intensive functions (e.g., Forward Error Correction (FEC)) and to offload the
3. processor.

1

![]({{site.baseurl}}/assets/images/7a7a8895e233.png)![]({{site.baseurl}}/assets/images/7ad3c3c88abb.png)![]({{site.baseurl}}/assets/images/3658edf66691.png)![]({{site.baseurl}}/assets/images/9c59ce60f935.png)![]({{site.baseurl}}/assets/images/ce38d73621b5.png)![]({{site.baseurl}}/assets/images/0987bb3bcec5.png)![]({{site.baseurl}}/assets/images/6b82a6f8fa9b.png)![]({{site.baseurl}}/assets/images/17b8b33ad244.png)![]({{site.baseurl}}/assets/images/ce38d73621b5.png)![]({{site.baseurl}}/assets/images/75b023fee3cd.png)![]({{site.baseurl}}/assets/images/77d40126163d.png)![]({{site.baseurl}}/assets/images/8c58890f3858.png)![]({{site.baseurl}}/assets/images/15deec813991.png)

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

Accelerator

* 1. **Figure 3-3: O-DU7-2 Functional Block and Interface Diagram.**

### 3.2.3 O-DU7-2 Interfaces

* 1. The O-DU7-2 supported interfaces described below are also shown in Figure 3-3.

#### Memory Channel Interface

* 1. Support DDR4 and later memory interface.

#### PCIe Interface

* 1. Support for PCIe Gen3 x16 and later interface versions; the bandwidth depends on the use cases, and it can be
  2. used to connect an accelerator device or network card.

#### Ethernet Interfaces

* 1. Supports any one or combination of GbE/10GbE/25GbE/40GbE links.

#### Serial ATA Interface

* 1. SATA3 shall be supported in case of software storage, such as hard drive.

#### SPI Interface

* 1. The SPI interface connects the processor with flash type of device for firmware.

#### Video Interface

* 1. Video interface is optional

#### USB Interface

1. Used to connect with local device for debug or on-board firmware update.

#### Miscellaneous Interface

1. Other interfaces that may be needed such as serial port, JTAG, etc.

## 3.3 O-DU6 Hardware Architecture

1. This section intentionally left blank.

## 3.4 O-DU8 Hardware Architecture

1. This section intentionally left blank.

## 3.5 FHGW7-2 - Option 7-2 to Option 7-2 Hardware Architecture

1. This section intentionally left blank.

## 3.6 FHGW6 - Option 6 to Option 6 Hardware Architecture

1. This section intentionally left blank.

## 3.7 FHGW7-2->8 - Option 7-2 to Option 8 Hardware Architecture

1. This section intentionally left blank.

## 3.8 FHGW8 - Option 8 to Option 8 Hardware Architecture

1. This section intentionally left blank.

## 3.9 O-RU7-2 Hardware Architecture

1. O-RU7-2 consists of four modules, namely optical interface, digital processing unit, RF processing unit and
2. antenna unit, as well as a timing unit as shown in Figure 3-4. The Ethernet interface complies with O-RAN
3. WG4 open fronthaul interface. The O-RU7-2 can directly connect with an O-DU7-2 or connect through a FHGW7-
4. 2. While the O-RU7-2 hardware supports NR by default, LTE support is not precluded.

### 3.9.1 O-RU7-2 Architecture Diagram

1. The O-RU7-2 hardware architecture consists of the digital processing unit which handles all digital signal and
2. interface processing and an RF processing unit handling all analog. There is a data conversion block for each
3. transceiver path after the digital processing block which converts between digital signals and analog signals. A
4. frequency conversion or mixer unit may be used to convert the IF or baseband frequencies to RF frequencies and
5. vice versa. In some cases, a direct RF sampling transceiver is used, where no external mixer is required. The
6. PA/LNA amplifies the RF signal, and the antenna module is used to transmit and receive signal over the air.
7. There is at least one Ethernet port available which is used as the O-RAN fronthaul interface.

9

To/From O-DU7-2

![]({{site.baseurl}}/assets/images/3724fb190b0c.png)![]({{site.baseurl}}/assets/images/9878ee00a700.png)![]({{site.baseurl}}/assets/images/aeddbd7bbaed.png)![]({{site.baseurl}}/assets/images/2507dbd54be9.png)![]({{site.baseurl}}/assets/images/9a7b923614d7.png)![]({{site.baseurl}}/assets/images/e70a3a48d267.png)![]({{site.baseurl}}/assets/images/936924ff65ac.png)![]({{site.baseurl}}/assets/images/1b3328cfe2d2.png)![]({{site.baseurl}}/assets/images/1ddd55fd1f97.png)

O-RU7-2

O-RAN

FH

eCPRI

Digital

Processing Unit

Local timing

from CDR

GNSS

(optional)

Local timing from GNSS or equivalent

Timing Unit

Power Unit

RF

Processing Unit

10

11

1. **Figure 3-4: O-RU7-2 Architecture Diagram**

### 3.9.2 O-RU7-2 Functional Module Description

1. In Figure 3-5, we illustrate O-RU7-2 functional blocks that support O-RAN FH with split option 7-2x. There is at
2. least one interface port which supports all fronthaul interface and PoE functionalities. The digital processing unit
3. block of O-RU7-2 is responsible for low-PHY functions such as FFT/IFFT, CP addition/removal, and PRACH
   1. filtering. Digital Down Converter (DDC), Digital Up Converter (DUC), Crest Factor Reduction (CFR) and
   2. Digital Pre-Distortion (DPD) functions are also performed in digital processing unit. For bandwidth reduction,
   3. O-RU7-2 architecture also supports the optional compression and decompression functions of FH interface. The
   4. ADC and DAC are mixed signal devices responsible for conversion of data between the digital and analog
   5. domains. As such, this block can be included as part of the either the digital processing unit or the radio
   6. processing unit. The RF Processing Unit consists of an optional frequency converter (mixer), Power Amplifier
   7. (PA)/ Low Noise Amplifier (LNA) and TX/RX filters. An antenna module follows that comprises physical
   8. antennae, RF feed distribution/aggregation network, and calibration network. The timing unit includes any
   9. clock and frequency synthesis required as well as other timing and synchronization circuits. In any given
   10. implementation, the physical boundaries between blocks may be slightly different, but the logical interfaces
   11. between will generally follow those shown in Figure 3-5.

Optical Interface

**Timing/LO**

![]({{site.baseurl}}/assets/images/d4b9d2fab656.png)

**(De-)**

**Compression Low-PHY**

**DDC/**

**DUC**

**CFR/**

**DPD**

**ADC/**

**DAC**

**Mixer**

To/Fro m

O-DU7-2x

**O-RU7-2x**

**Antenna Module**

**PA/LN A/ and TX/RX Filters**

**O-RAN FH/ IEEE 1588v2**

**eCP RI**

**RF Processing and Antenna Module s**

**Digital Signal Processing Module**

12

1. **Figure 3-5: O-RU7-2 Generic Functional Module Diagram**

## 3.10 O-RU6 Hardware Architecture

1. This section intentionally left blank.

## 3.11 O-RU8 Hardware Architecture

1. This section intentionally left blank.

## 3.12 Integrated gNB-DU Hardware Architecture

1. This section intentionally left blank.

# Chapter 4 White Box Hardware Requirements

* 1. This chapter provides the requirements for various white boxes used within the Outdoor Microcell base station.
  2. These white boxes are O-CU, O-DUx, O-RUx and FHGWx. The O-CU and O-DUx can be implemented in an
  3. integrated fashion into one white box hardware or they can be separated. The reference design based on
  4. specification shall meet all these requirements based on their priority as specified by operators.

## 4.1 O-CU Requirements

* 1. O-CU requirements are described in the following sections, which include the performance, interface,
  2. environmental. EMC, mechanical, thermal and power requirements.

### 4.1.1 O-CU Performance

* 1. The performance requirements of the O-CU are listed in Table 4-1.
  2. **Table 4-1 :O-CU Performance Requirements**

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **Parameter** | **Requirement** | **Description** | **Priority** |
| Synchronization | Support 1588v2 Synchronization | Timing synchronization method | High |
| Support GNSS Synchronization | High |
| Support BeiDou Synchronization | Low |
| Support Galileo Synchronization | Low |
| Support GLONASS Synchronization | Low |
| Support  switching between 1588v2 and GNSS | High |
| Support SyncE | Low |
| Number of O- DUx supported | For O-CU/O-DUx integrated architecture: N/A | Number of O- DUx(s) connected to a single O-CU | None |
| For O-CU/O-DUx non-integrated architecture: Determined by operator deployment requirements | High |
| Supported Cell Number | For O-CU/O-DUx integrated architecture: N/A | Cells supported by an O-CU | None |
| For O-CU/O-DUx non-integrated architecture: Determined by operator deployment requirements | High |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| Supported RRC link number | For O-CU/O-DUx integrated architecture: N/A | RLC links supported by O-CU | None |
| For O-CU/O-DUx non-integrated architecture: Determined by operator deployment requirements | High |
| Throughput between O-DUx | For O-CU/O-DUx integrated architecture: N/A | Throughput between O-CU and O-DUx link | None |
| For O-CU/O-DUx non-integrated architecture: Determined by operator deployment requirements | High |
| Peak Data Rate | TBD | Highest theoretical data rate in error free conditions. | None |
| Latency | Control Plane< 10ms (def: Msg1 to Msg5)  User Plane DL < 4ms UL< 4ms (def: PDCP SDU-  > PDCP SDU) | O-CU latency | High |

</div>

### 4.1.2 O-CU Interfaces

* + 1. The interface requirements of the O-CU are listed in Table 4-2: O-CU Interface Requirements.
    2. **Table 4-2: O-CU Interface Requirements**

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **Parameter** | **Requirement** | **Description** | **Priority** |
| Transport Interface | 10 GbE F1 Interface to connect with O-DUx or  25 GbE F1 Interface to connect with O-DUx | O-CU transport links to O-DUx and 5GC | High |
| 10 GbE NG interface to connect with 5G core(b) or  25 GbE NG interface to connect with 5G core | High |

</div>

4

### 4.1.3 O-CU Environmental and EMC

1. The EMC requirements of the O-CU are listed in Table 4-3.
2. **Table 4-3: O-CU EMC Requirements**

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **Parameter** | **Requirement** | **Description** | **Priority** |
| EMC | Shall comply with the requirements of 3GPP TS 38.113 (2017-12 Rel-15) [7] for equipment used in telecommunication room | Electromagnetic Compatibility requirement | High |

</div>

1. Note: For O-CU and O-DUx integrated solution, this requirement for O-CU portion is captured in the following O-DUx
2. section.

### 4.1.4 O-CU Mechanical, Thermal and Power

1. The mechanical, thermal and power requirements of the O-CU are listed in the following tables.
2. **Table 4-4: O-CU Mechanical Requirements**

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **Parameter** | **Requirement** | **Description** | **Priority** |
| Dimensions | Built in any 19" standard rack, or stand alone, with overall height of no more than 5U(a) and depth (including the connector) less than 750mm. | Measurement in three dimensions | Low |
| Status Indicator LED | Shall include as a minimum the following status indicators:  ---1 indicating on/off status of the power supply  ---1 indicating on/off status of the transmission link | Indicator light | High |

</div>

1. Note:
2. (a) Note that this dimension is application dependent and its value may change accordingly.

8

1. **Table 4-5: O-CU Thermal Requirements**

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **Parameter** | **Requirement** | **Description** | **Priority** |
| Temperature and Humidity | Operate steadily and reliably over a long period of time under the following environmental conditions for data center:  Operating Temperature: - 0 ? ~ + 50 ? Relative humidity: 15% ~ 85% | Environmental requirements for reliability | High |
| The solution should support extended temperature range (- 40? to +65 ?) and humidity (5%-95%) if implemented outdoors. | Environmental requirements for reliability | Low |

</div>

1. Note: For O-CU and O-DUx integrated solution, this requirement for O-CU portion is captured in the following O-DUx
2. section.
3. **Table 4-6: O-CU Power Requirements**

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **Parameter** | **Requirement** | **Description** | **Priority** |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| Power Supply | DC -48 VDC (-40v ~ -57v) (can be connected to AC/DC converter) or AC 220V power supply, voltage range of 140V~ 300v, frequency range of 45Hz ~ 65Hz. | Power supply for O-CU | High |
| Power Dissipation | < TBD W full load operation | O-CU Power Requirement | High |

</div>

* 1. Note: For O-CU and O-DUx integrated solution, this requirement for O-CU portion is captured in the following O-DUx
  2. section.

## 4.2 O-DUx Common Requirements

* 1. The O-DUx here takes the function of high PHY or whole PHY, OAM function and layer 2. Usually the
  2. hardware is placed in the machine room, which can be collocated in the coverage building or in the central
  3. machine room far away from the coverage building.

### 4.2.1 O-DUx Performance

* 1. The performance requirements of the O-DUx are listed in Table 4-7.
  2. **Table 4-7: O-DUx Performance Requirements**

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **Parameter** | **Requirement** | **Description** | **Priority** |
| Channel Bandwidth | <=200 MHz OBW | RF Bandwidth | High |
| Antenna Configuration (Number of Transceivers) | 4T4R | Tx/Rx antenna number | High |
| up to 16T16R | Low |
| Transmission distance | Measured in delay. TBD | Distance between DU and FHGWx /RU | High |
| Connect Topology | NA | Fronthaul Gateway connection topology | None |
| Synchronization | Support 1588v2 Synchronization | Timing synchronization method | High |
| Support GNSS Synchronization;  Sync. between BS <= 150 ns; Carrier freq. error within one subframe <+-0.1 PPM | High |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
|  | Support BeiDou Synchronization |  | Low |
| Support Galileo Synchronization | Low |
| Support GLONASS Synchronization | Low |
| Support  switching between 1588v2 and GNSS | High |
| Support SyncE | Low |
| Capacity/MIMO | 4T4R: 4 layers and 200 MHz OBW | MIMO related capability | High |
| up to 16T16R and TBD | Low |
| Peak Rate | TBD | Peak data rate | High |
| Modulation | DL: QPSK,16QAM,64QAM,256QAM  UL: ?/2-bpsk, QPSK, 16QAM, 64QAM | Modulation schemes | High |
| UL: 256QAM | Medium |
| Latency | Control Plane< 10ms (def: Msg1 to Msg5) User Plane DL < 4ms UL< 4ms (def: PDCP SDU-> PDCP SDU) | Control/user plane Latency | High |

</div>

### 4.2.2 O-DUx Interfaces

1. The interface requirements of the O-DUx are listed in Table 4-8.
2. **Table 4-8: O-DUx Interface Requirements**

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **Parameter** | **Requirement** | **Description** | **Priority** |
| Transport Interface | Fronthaul Gateway: N/A | O-DUx  transport links | None |
| At least one 10 GbE F1 interface to connect with O-CU(b) | High |

</div>

1. Notes:
2. (a) For O-CU and O-DUx that are co-located
3. (b) For O-CU and O-Dux that are separated physically

### 4.2.3 O-DUx Environmental and EMC

1. The EMC requirements of the O-DUx are listed in Table 4-9.
2. **Table 4-9: O-DUx EMC Requirements**

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **Parameter** | **Requirement** | **Description** | **Priority** |
| EMC | Complying with the requirements of 3GPP TS 38.113 (2017- 12R15) [7] for equipment used in telecommunication room | Electromagnetic Compatibility requirement | High |

</div>

2

### 4.2.4 O-DUx Mechanical, Thermal and Power

1. The mechanical requirements of the O-DUx are listed in Table 4-10.
2. **Table 4-10: O-DUx Mechanical Requirements**

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **Parameter** | **Requirement** | **Description** | **Priority** |
| Dimension | Built in any 19" standard rack, or stand alone, and the height does not exceed 5U(a), the depth (including the connector) must be less than 750mm. | Measurement in three dimensions | Low |
| Status Indicator LED | Shall include as a minimum the following status indicators:  ---1 indicating the on/off status of optical fiber interface  ---1 indicating off status of the power supply  ---1 indicating on/off status of the transmission link | Indicator lights | High |

</div>

1. Note:
2. (a) Note that this dimension is application dependent and its value may change accordingly.

8

9 The thermal requirements of the O-DUx are listed in Table 4-11.

10 **Table 4-11: O-DUx Thermal Requirements**

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **Parameter** | **Requirement** | **Description** | **Priority** |
| Temperature and Humidity | The O-DUx shall operate steadily and reliably over a long period of time under the following environmental conditions for data center:  Operating Temperature: - 0 ? ~ + 50 ? Relative humidity: 15% ~ 85% | Environmental requirements for reliability | High |
| The solution should support extended temperature range (-40? to +65 ?) and humidity (5%-95%) if implemented outdoors. | Environmental requirements for reliability | Low |

</div>

1

1. The power requirements of the O-DUx are listed in Table 4-12.
2. **Table 4-12: O-DUx Power Requirements**

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **Parameter** | **Requirement** | **Description** | **Priority** |
| Power Supply | DC -48 VDC (-40v ~ -57v) (can be connected to AC/DC converter) or AC 220V power supply, voltage range of 140V~ 300v, frequency range of 45Hz ~ 65Hz. | Power supply for O-DUx | High |
| Power Dissipation | < TBD W, with 4 cells full load operation | O-DUx Power Requirement | High |
| < TBD W, with 8 cells full load operation | Medium |

</div>

4

## 4.3 O-DUx Split Option Specific Requirements

1. In addition to the common O-DUx requirements, there may be some specific requirements that apply to O-DUx
2. due to the split option. These requirements are listed in the following sections.

### 4.3.1 O-DU7-2 Specific Requirements

1. The specific requirements of O-DU7-2 are listed in Table 4-13.

1 **Table 4-13: O-DU7-2 Specific Requirements**

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **Parameter** | **Requirement** | **Description** | **Priority** |
| Transport Interface | At least 4 Ethernet interfaces connected with Fronthaul Gateway | O-DU7-2  fronthaul transport links | High |

</div>

2

### 4.3.2 O-DU6 Specific Requirements

1. This section intentionally left blank.

### 4.3.3 O-DU8 Specific Requirements

1. This section intentionally left blank.

## 4.4 O-RUx Common Requirements

1. The O-RUx common requirements apply to all the radio units regardless of the split option. In the indoor
2. environment, O-RUx hardware is placed on the cell or wall of the coverage building; it converts the base band
3. signal into RF signal or vice versa to supply the coverage.

### 4.4.1 O-RUx Performance

1. The O-RUx performance requirements cover all the aspects of radio unit including frequency bands, antenna
2. configurations, power efficiency, etc. Table 4-14 lists the performance parameters related to O-RUx.
3. **Table 4-14: O-RUx Performance Requirements**

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **Parameter** | **Requirement** | **Description** | **Priority** |
| Operating band | n77 | Radio frequency band | High |
| n2, n4, n13, n41, n48, n66, n78, n79 | Low |
| [Occupied] Bandwidth | <=200 MHz | Frequency bandwidth | High |
| Antenna Configuration (Number of Transceivers) | 4T4R | Tx/Rx Antenna numbers | High |
| up to 16T16R | Low |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| Output Power Accuracy | Under normal condition: +-2dB | Power accuracy | High |
| Tx off Power Level | less than -85dBm/MHz; See section 6.4.1 in 3GPP TS 38.104 [3]. | Tx power level during an off period | High |
| EVM at maximum output power | 64QAM: EVM smaller than 8%  256QAM: EVM smaller than 3.5% | Max output power | High |
| Operating band unwanted emissions | The Operating band unwanted emissions shall satisfy the Category B limit defined by the section 6.6.4.2.4 in 3GPP TS 38.104 [3]. | RF operation band unwanted emissions requirement | High |
| Transmitter spurious emissions | The Operating band unwanted emissions shall satisfy the Category B limit defined by the section 6.6.4.2.4 in [3]. | Deliberately generated RF signal by transmitter | High |
| Receiver Sensitivity | The throughput shall be >= 95% of the maximum throughput of the reference measurement channel of G-FR1-A1-5; the reference sensitivity levels shall be better than  -95.6dBm. | The weakest signal the receiver can identify and process | High |
| Blocking | In Channel selection, ACS, In-band blocking, out-band blocking, IMD and other receiver specification shall follow the 3GPP guidelines in [3][5], the reference sensitivity is allowed to degrade at most 6dB under all kinds of interference signal and corresponding level. | Channel selection related requirement | High |
| Other specifications | Except for all the RF specifications listed above, other RF specifications shall follow the requirement in [3]. | Additional standard to comply | High |
| Downlink modulation Mode | QPSK?16-QAM?64-QAM?256-QAM | DL Modulation schemes | High |
| Uplink modulation mode | ?/2-BPSK?QPSK?16-QAM?64-QAM | UL Modulation schemes | High |
| 256QAM | medium |
| Conducted Power | 4T4R: up to 10W per port | RF power | High |
| 16T16R: TBD | Low |

</div>

### 4.4.2 O-RUx Interfaces

* 1. The interface related requirements of the O-RUx are listed in Table 4-15.

1 **Table 4-15: O-RUx Interface Requirements**

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **Parameter** | **Requirement** | **Description** | **Priority** |
| Interface Number | The O-RUx shall have at least one fronthaul interface based on the split option supported | Number of fronthaul links | High |

</div>

2

### 4.4.3 O-RUx Environmental and EMC

* 1. The environmental and EMC requirements of the O-RUx are listed in Table 4-16.
  2. **Table 4-16: O-RUx Environmental and EMC Requirements**

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **Parameter** | **Requirement** | **Description** | **Priority** |
| Mounting method | Rooftop, side of building/wall or pole | Mounting requirement | High |
| Grounding | The O-RUx shall support Joint Grounding Method and shall work normally when the grounding resistor is less than 10?. | Grounding requirement | High |
| EMC | The O-RUx shall comply with the requirements of 3GPP TS 38.113 [7] | Electromagnetic Compatibility requirement | High |

</div>

6

### 4.4.4 O-RUx Mechanical, Thermal and Power

1. The mechanical, thermal and power requirements of the O-RUx are listed in Table 4-17.

1 **Table 4-17: O-RUx Mechanical, Thermal and Power Requirements**

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **Parameter** | **Requirement** | **Description** | **Priority** |
| Weight | 4T4R: The gross weight of the O-RUx shall be  <13Kg (best estimate) | Weight requirement | High |
| 16T16R: TBD | Low |
| Dimension/Volume | 4T4R: The dimension of the O-RUx shall be smaller than 345x250x130 (mm) and the volume of the O-RUx shall be <12L | Dimensional Measurements | High |
| 16T16R: TBD | Low |
| Stability | The MTBF shall be >200000 hours | Mean Time Between Failures | High |
| Power Consumption | 4T4R: At full load, the power consumption shall not exceed 218W | Power requirement | High |
| 16T16R: At full load, the power consumption shall not exceed TBD | Low |
| Power supply | DC -48 VDC (-40v ~ -57v) (can be connected to AC/DC converter) or AC 220V power supply, voltage range of 140V~ 300v, frequency range of 45Hz ~ 65Hz. | Power Support Requirement | High |
| Level of protection | The protection level of the O-RUx shall be equivalent to the IP65 standard. | Protection level | High |
| Temperature and Humidity | The O-RUx shall operate at the temperature range of -40? to +55? with both cold start and hot start options. Humidity:5%~95% | Ambient temperature and moisture requirement | High |
| Atmospheric pressure | The O-RUx shall operate normally under atmospheric pressure between 70 to 106Kpa. | Operational atmospheric pressure requirement | High |
| Cooling mode | Passive cooling | System cooling requirement | High |

</div>

2

## 4.5 O-RUx Split Option Specific Requirements

1. Besides the common requirements which shall apply to all the radio unit types. The following sections list all the
2. specific requirements that only apply to the designated split option.

### 4.5.1 O-RU7-2 Specific Requirements

1. The O-RU7-2 must have one RJ45 or SFP 10G Ethernet interface used as fronthaul interface. The O-RU7-2 must
2. support the lower physical layer functions and comply with [4].

### 4.5.2 O-RU6 Specific Requirements

1. This section intentionally left blank.

### 4.5.3 O-RU8 Specific Requirements

1. This section intentionally left blank.

## 4.6 FHGWx - Common Requirements

1. This section intentionally left blank.

## 4.7 FHGWx - Split Option Specific Requirements

1. This section intentionally left blank.

## 4.8 Integrated gNB-DU Requirements

1. This section intentionally left blank.

# Annex ZZZ: O-RAN Adopter License Agreement

1. BY DOWNLOADING, USING OR OTHERWISE ACCESSING ANY O-RAN SPECIFICATION,
2. ADOPTER AGREES TO THE TERMS OF THIS AGREEMENT.
3. This O-RAN Adopter License Agreement (the "Agreement") is made by and between the O-RAN
4. ALLIANCE and the entity that downloads, uses or otherwise accesses any O-RAN Specification,
5. including its Affiliates (the "Adopter").
6. This is a license agreement for entities who wish to adopt any O-RAN Specification.

## Section 1: DEFINITIONS

1. 1.1 "Affiliate" means an entity that directly or indirectly controls, is controlled by, or is under common
2. control with another entity, so long as such control exists. For the purpose of this Section, "Control"
3. means beneficial ownership of fifty (50%) percent or more of the voting stock or equity in an entity.
4. 1.2 "Compliant Implementation" means any system, device, method or operation (whether
5. implemented in hardware, software or combinations thereof) that fully conforms to a Final
6. Specification.
7. 1.3 "Adopter(s)" means all entities, who are not Members, Contributors or Academic Contributors,
8. including their Affiliates, who wish to download, use or otherwise access O-RAN Specifications.
9. 1.4 "Minor Update" means an update or revision to an O-RAN Specification published by O-RAN
10. ALLIANCE that does not add any significant new features or functionality and remains interoperable
11. with the prior version of an O-RAN Specification. The term "O-RAN Specifications" includes Minor
12. Updates.
13. 1.5 "Necessary Claims" means those claims of all present and future patents and patent applications,
14. other than design patents and design registrations, throughout the world, which (i) are owned or
15. otherwise licensable by a Member, Contributor or Academic Contributor during the term of its
16. Member, Contributor or Academic Contributorship; (ii) such Member, Contributor or Academic
17. Contributor has the right to grant a license without the payment of consideration to a third party; and
18. (iii) are necessarily infringed by a Compliant Implementation (without considering any Contributions
19. not included in the Final Specification). A claim is necessarily infringed only when it is not possible on
20. technical (but not commercial) grounds, taking into account normal technical practice and the state of
21. the art generally available at the date any Final Specification was published by the O-RAN
22. ALLIANCE or the date the patent claim first came into existence, whichever last occurred, to make,
23. sell, lease, otherwise dispose of, repair, use or operate a Compliant Implementation without infringing
24. that claim. For the avoidance of doubt in exceptional cases where a Final Specification can only be
25. implemented by technical solutions, all of which infringe patent claims, all such patent claims shall be
26. considered Necessary Claims.
27. 1.6 "Defensive Suspension" means for the purposes of any license grant pursuant to Section 3,
28. Member, Contributor, Academic Contributor, Adopter, or any of their Affiliates, may have the
29. discretion to include in their license a term allowing the licensor to suspend the license against a
30. licensee who brings a patent infringement suit against the licensing Member, Contributor, Academic
31. Contributor, Adopter, or any of their Affiliates.

## Section 2: COPYRIGHT LICENSE

1. 2.1 Subject to the terms and conditions of this Agreement, O-RAN ALLIANCE hereby grants to
2. Adopter a nonexclusive, nontransferable, irrevocable, non-sublicensable, worldwide copyright license
3. to obtain, use and modify O-RAN Specifications, but not to further distribute such O-RAN
4. Specification in any modified or unmodified way, solely in furtherance of implementations of an
5. ORAN
6. Specification.
7. 2.2 Adopter shall not use O-RAN Specifications except as expressly set forth in this Agreement or in a
8. separate written agreement with O-RAN ALLIANCE.

## Section 3: FRAND LICENSE

1. 3.1 Members, Contributors and Academic Contributors and their Affiliates are prepared to grant based
2. on a separate Patent License Agreement to each Adopter under Fair Reasonable And Non-
3. Discriminatory (FRAND) terms and conditions with or without compensation (royalties) a
4. nonexclusive, non-transferable, irrevocable (but subject to Defensive Suspension), non-sublicensable,
5. worldwide patent license under their Necessary Claims to make, have made, use, import, offer to sell,
6. lease, sell and otherwise distribute Compliant Implementations; provided, however, that such license
7. shall not extend: (a) to any part or function of a product in which a Compliant Implementation is
8. incorporated that is not itself part of the Compliant Implementation; or (b) to any Adopter if that
9. Adopter is not making a reciprocal grant to Members, Contributors and Academic Contributors, as set
10. forth in Section 3.3. For the avoidance of doubt, the foregoing licensing commitment includes the
11. distribution by the Adopter's distributors and the use by the Adopter's customers of such licensed
12. Compliant Implementations.
13. 3.2 Notwithstanding the above, if any Member, Contributor or Academic Contributor, Adopter or their
14. Affiliates has reserved the right to charge a FRAND royalty or other fee for its license of Necessary
15. Claims to Adopter, then Adopter is entitled to charge a FRAND royalty or other fee to such Member,
16. Contributor or Academic Contributor, Adopter and its Affiliates for its license of Necessary Claims to
17. its licensees.
18. 3.3 Adopter, on behalf of itself and its Affiliates, shall be prepared to grant based on a separate Patent
19. License Agreement to each Members, Contributors, Academic Contributors, Adopters and their
20. Affiliates under Fair Reasonable And Non-Discriminatory (FRAND) terms and conditions with or
21. without compensation (royalties) a nonexclusive, non-transferable, irrevocable (but subject to
22. Defensive Suspension), non-sublicensable, worldwide patent license under their Necessary Claims to
23. make, have made, use, import, offer to sell, lease, sell and otherwise distribute Compliant
24. Implementations; provided, however, that such license will not extend: (a) to any part or function of a
25. product in which a Compliant Implementation is incorporated that is not itself part of the Compliant
26. Implementation; or (b) to any Members, Contributors, Academic Contributors, Adopters and their
27. Affiliates that is not making a reciprocal grant to Adopter, as set forth in Section 3.1. For the avoidance
28. of doubt, the foregoing licensing commitment includes the distribution by the Members',
29. Contributors', Academic Contributors', Adopters' and their Affiliates' distributors and the use by the
30. Members', Contributors', Academic Contributors', Adopters' and their Affiliates' customers of such
31. licensed Compliant Implementations.

## Section 4: TERM AND TERMINATION

1. 4.1 This Agreement shall remain in force, unless early terminated according to this Section 4.
2. 4.2 O-RAN ALLIANCE on behalf of its Members, Contributors and Academic Contributors may
3. terminate this Agreement if Adopter materially breaches this Agreement and does not cure or is not
4. capable of curing such breach within thirty (30) days after being given notice specifying the breach.
5. 4.3 Sections 1, 3, 5 - 11 of this Agreement shall survive any termination of this Agreement. Under
6. surviving Section 3, after termination of this Agreement, Adopter will continue to grant licenses (a) to
7. entities who become Adopters after the date of termination; and (b) for future versions of ORAN
8. Specifications that are backwards compatible with the version that was current as of the date of
9. termination.

## Section 5: CONFIDENTIALITY

1. Adopter will use the same care and discretion to avoid disclosure, publication, and dissemination of O-
2. RAN Specifications to third parties, as Adopter employs with its own confidential information, but no
3. less than reasonable care. Any disclosure by Adopter to its Affiliates, contractors and consultants
4. should be subject to an obligation of confidentiality at least as restrictive as those contained in this
5. Section. The foregoing obligation shall not apply to any information which is: (1) rightfully known by
6. Adopter without any limitation on use or disclosure prior to disclosure; (2) publicly available through
7. no fault of Adopter; (3) rightfully received without a duty of confidentiality; (4) disclosed by O-RAN
8. ALLIANCE or a Member, Contributor or Academic Contributor to a third party without a duty of
9. confidentiality on such third party; (5) independently developed by Adopter; (6) disclosed pursuant to
10. the order of a court or other authorized governmental body, or as required by law, provided that
11. Adopter provides reasonable prior written notice to O-RAN ALLIANCE, and cooperates with O-RAN
12. ALLIANCE and/or the applicable Member, Contributor or Academic Contributor to have the
13. opportunity to oppose any such order; or (7) disclosed by Adopter with O-RAN ALLIANCE's prior
14. written approval.

## Section 6: INDEMNIFICATION

* 1. Adopter shall indemnify, defend, and hold harmless the O-RAN ALLIANCE, its Members,
  2. Contributors or Academic Contributors, and their employees, and agents and their respective
  3. successors, heirs and assigns (the "Indemnitees"), against any liability, damage, loss, or expense
  4. (including reasonable attorneys' fees and expenses) incurred by or imposed upon any of the
  5. Indemnitees in connection with any claims, suits, investigations, actions, demands or judgments arising
  6. out of Adopter's use of the licensed O-RAN Specifications or Adopter's commercialization of products
  7. that comply with O-RAN Specifications.

## Section 7: LIMITATIONS ON LIABILITY; NO WARRANTY

* 1. EXCEPT FOR BREACH OF CONFIDENTIALITY, ADOPTER'S BREACH OF SECTION 3, AND
  2. ADOPTER'S INDEMNIFICATION OBLIGATIONS, IN NO EVENT SHALL ANY PARTY BE
  3. LIABLE TO ANY OTHER PARTY OR THIRD PARTY FOR ANY INDIRECT, SPECIAL,
  4. INCIDENTAL, PUNITIVE OR CONSEQUENTIAL DAMAGES RESULTING FROM ITS
  5. PERFORMANCE OR NON-PERFORMANCE UNDER THIS AGREEMENT, IN EACH CASE
  6. WHETHER UNDER CONTRACT, TORT, WARRANTY, OR OTHERWISE, AND WHETHER OR
  7. NOT SUCH PARTY HAD ADVANCE NOTICE OF THE POSSIBILITY OF SUCH DAMAGES. O-
  8. RAN SPECIFICATIONS ARE PROVIDED "AS IS" WITH NO WARRANTIES OR CONDITIONS
  9. WHATSOEVER, WHETHER EXPRESS, IMPLIED, STATUTORY, OR OTHERWISE. THE O-
  10. RAN ALLIANCE AND THE MEMBERS, CONTRIBUTORS OR ACADEMIC CONTRIBUTORS
  11. EXPRESSLY DISCLAIM ANY WARRANTY OR CONDITION OF MERCHANTABILITY,
  12. SECURITY, SATISFACTORY QUALITY, NONINFRINGEMENT, FITNESS FOR ANY
  13. PARTICULAR PURPOSE, ERROR-FREE OPERATION, OR ANY WARRANTY OR CONDITION
  14. FOR O-RAN SPECIFICATIONS.

## Section 8: ASSIGNMENT

* 1. Adopter may not assign the Agreement or any of its rights or obligations under this Agreement or make
  2. any grants or other sublicenses to this Agreement, except as expressly authorized hereunder, without
  3. having first received the prior, written consent of the O-RAN ALLIANCE, which consent may be
  4. withheld in O-RAN ALLIANCE's sole discretion. O-RAN ALLIANCE may freely assign this
  5. Agreement.

## Section 9: THIRD-PARTY BENEFICIARY RIGHTS

* 1. Adopter acknowledges and agrees that Members, Contributors and Academic Contributors (including
  2. future Members, Contributors and Academic Contributors) are entitled to rights as a third-party
  3. beneficiary under this Agreement, including as licensees under Section 3.

## Section 10: BINDING ON AFFILIATES

* + 1. Execution of this Agreement by Adopter in its capacity as a legal entity or association constitutes that
    2. legal entity's or association's agreement that its Affiliates are likewise bound to the obligations that are
    3. applicable to Adopter hereunder and are also entitled to the benefits of the rights of Adopter hereunder.

## Section 11: GENERAL

* + 1. This Agreement is governed by the laws of Germany without regard to its conflict or choice of law
    2. provisions.
    3. This Agreement constitutes the entire agreement between the parties as to its express subject matter and
    4. expressly supersedes and replaces any prior or contemporaneous agreements between the parties,
    5. whether written or oral, relating to the subject matter of this Agreement.
    6. Adopter, on behalf of itself and its Affiliates, agrees to comply at all times with all applicable laws,
    7. rules and regulations with respect to its and its Affiliates' performance under this Agreement, including
    8. without limitation, export control and antitrust laws. Without limiting the generality of the foregoing,
    9. Adopter acknowledges that this Agreement prohibits any communication that would violate the
    10. antitrust laws.
    11. By execution hereof, no form of any partnership, joint venture or other special relationship is created
    12. between Adopter, or O-RAN ALLIANCE or its Members, Contributors or Academic Contributors.
    13. Except as expressly set forth in this Agreement, no party is authorized to make any commitment on
    14. behalf of Adopter, or O-RAN ALLIANCE or its Members, Contributors or Academic Contributors.
    15. In the event that any provision of this Agreement conflicts with governing law or if any provision is
    16. held to be null, void or otherwise ineffective or invalid by a court of competent jurisdiction, (i) such
    17. provisions will be deemed stricken from the contract, and (ii) the remaining terms, provisions,
    18. covenants and restrictions of this Agreement will remain in full force and effect.

24

25
---

- View in [GitHub Mode]({{site.github_page_url}}/O-RAN.WG7.OMC-HAR.0-v01.00.docx.md).
- Go back to [Table of Contents]({{site.baseurl}}/).
- Download the [Original Document]({{site.download_url}}/O-RAN.WG7.OMC-HAR.0-v01.00.docx).
