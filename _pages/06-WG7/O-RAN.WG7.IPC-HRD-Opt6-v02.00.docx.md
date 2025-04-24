---
title: O-RAN.WG7.IPC-HRD-Opt6-v02.00.docx.md
author: O-RAN Alliance
layout: post
---

- View in [GitHub Mode]({{site.github_page_url}}/O-RAN.WG7.IPC-HRD-Opt6-v02.00.docx.md).
- Go back to [Table of Contents]({{site.baseurl}}/).
- Download the [Original Document]({{site.download_url}}/O-RAN.WG7.IPC-HRD-Opt6-v02.00.docx).

---

* toc
{:toc}

---

**O-RAN White Box Hardware Working Group Hardware Reference Design Specification for Indoor Pico Cell**

**with Fronthaul Split Option 6**

**This is a re-published version of the attached final specification.**

For this re-published version, the prior versions of the IPR Policy will apply, except that the previous requirement for Adopters (as defined in the earlier IPR Policy) to agree to an O-RAN Adopter License Agreement to access and use Final Specifications shall no longer apply or be required for these Final Specifications after 1st July 2022.

The copying or incorporation into any other work of part or all of the material available in this specification in any form without the prior written permission of O-RAN ALLIANCE e.V. is prohibited, save that you may print or download extracts of the material on this site for your personal use, or copy the material on this site for the purpose of sending to individual third parties for their information provided that you acknowledge O-RAN ALLIANCE as the source of the material and that you inform the third party that these conditions apply to them and that they must comply with them.

**O-RAN White Box Hardware Working Group Hardware Reference Design Specification for Indoor Pico Cell**

**with Fronthaul Split Option 6**

Copyright (C) 2021 by the O-RAN ALLIANCE e.V.

By using, accessing or downloading any part of this O-RAN specification document, including by copying, saving, distributing, displaying or preparing derivatives of, you agree to be and are bound to the terms of the O-RAN Adopter License Agreement contained in Annex ZZZ of this specification. All other rights reserved.

O-RAN ALLIANCE e.V.

Buschkauler Weg 27, 53347 Alfter, Germany Register of Associations, Bonn VR 11238 VAT ID DE321720189

1

# Revision History

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **Date** | **Revision** | **Author** | **Description** |
| 2021.07.08 | 02.00 | WG7 | Final version for publication |

</div>

2

3

4

# Contents

1. Revision History 2
2. Chapter 1 Introductory Material 6
3. 1.1 Scope 6
4. 1.2 References 6
5. 1.3 Definitions and Abbreviations 7
6. 1.3.1 Definitions 7
7. 1.3.2 Abbreviations 7
8. Chapter 2 Hardware Reference Design 10
9. 2.1 O-CU Hardware Reference Design 10
10. 2.2 O-DU Hardware Reference Design 10
11. 2.2.1 O-DU High-Level Functional Block Diagram 10
12. 2.2.2 O-DU6 Hardware Components 11
13. 2.2.2.1 Digital Processing Unit 11
14. ? Memory Channel Interfaces 12
15. ? PCIe 12
16. ? Ethernet 12
17. 2.2.2.2 Hardware Accelerator 13
18. 2.2.3 Synchronization and Timing 13
19. 2.2.3.1 Synchronization and Timing Design 1 13
20. 2.2.4 External Interface Ports 14
21. 2.2.5 Mechanical 15
22. ? Mother Board 15
23. ? Cooling 17
24. 2.2.6 Power Unit 17
25. 2.2.7 Thermal 18
26. 2.2.8 Environmental and Regulations 18
27. 2.3 O-RU6 Hardware Reference Design 18
28. 2.3.1 O-RU6 High-Level Functional Block Diagram 19
29. 2.3.2 O-RU6 Hardware Components 19
30. 2.3.3 O-RU6 Functional Module Description 20
31. 2.3.3.1 Network Processing Unit (NPU) 21
32. 2.3.3.1.1 Networking I/O 21
33. 2.3.3.1.2 Low-speed connectivity and boot 22
34. 2.3.3.1.3 DDR 23
35. 2.3.3.1.4 Processor subsystem 24
36. 2.3.3.1.5 Modem I/O 24
37. 2.3.3.1.6 Security 25
38. 2.3.3.2 PHY Layer ASIC 25
39. 2.3.3.3 RF Front End 27
40. 2.3.3.4 Power Management 27
41. 2.3.4 Synchronization and Timing 28
42. 2.3.4.1 Hardware Requirements 28
43. 2.3.4.2 Synchronization and Timing Design 1 28
44. 2.3.4.3 Synchronization and Timing Design 2 29
45. 2.3.5 External Interface Ports 30
46. 2.3.6 Power Unit 30
47. 2.3.7 Environmental and Regulations 31
48. 2.4 Integrated gNB-DU Reference Design Solution 31
49. 2.4.1 Power Unit 32
50. 2.4.1.1 Power Management 32
51. 2.4.2 Synchronization and Timing 32
52. 2.4.3 External Interface Ports 32
53. 2.4.4 Power Unit 32
54. 2.4.5 Environmental and Regulations 32
55. 2.5 FHGW Hardware Reference Design 32
56. Annex 1: Example Hardware Bill of Materials 33
57. Annex 2: 35
58. Annex ZZZ: O-RAN Adopter License Agreement 36
59. Section 1: DEFINITIONS 36
60. Section 2: COPYRIGHT LICENSE 37
61. Section 3: FRAND LICENSE 37
62. Section 4: TERM AND TERMINATION 38
63. Section 5: CONFIDENTIALITY 38
64. Section 6: INDEMNIFICATION 38
65. Section 7: LIMITATIONS ON LIABILITY; NO WARRANTY 39
66. Section 8: ASSIGNMENT 39
67. Section 9: THIRD-PARTY BENEFICIARY RIGHTS 39
68. Section 10: BINDING ON AFFILIATES 39
69. Section 11: GENERAL 39

28

# Tables

1. Table 2-1: Processor Feature List 11
2. Table 2-2: Memory Channel Feature List 12
3. Table 2-3 External Port List 14
4. Table 2-4 Power Supply Features 18

34

# Figures

1. Figure 2-1 O-DU6 Architecture Diagram 11
2. Figure 2-2 Digital Processing Unit Block Diagram 13
3. Figure 2-3 O-DU6 Timing Synchronization 14
4. Figure 2-4 Mother Board Layout 16
5. Figure 2-5 Chassis Mechanical Diagram 17
6. Figure 2-6 General Block Diagram for O-RU6 19
7. Figure 2-7 O-RU6 Architecture Diagram 19
8. Figure 2-8 O-RU6 Functional Module Diagram 20
9. Figure 2-9 Sub-6 GHz Indoor Pico O-RU6 Functional Modules (Split Option 6) 21
10. Figure 2-10 O-RU6 Networking I/O 22
11. Figure 2-11 O-RU6 SFP Connectivity 22
12. Figure 2-12 O-RU6 Low-speed NPU Connectivity 23
13. Figure 2-13 O-RU6 DDR 24
14. Figure 2-14 O-RU6 Modem I/O 24
15. Figure 2-15 O-RU6 NPU Security 25
16. Figure 2-16 O-RU6 PHY ASIC block diagram 26
17. Figure 2-17 O-RU6 5G Modem Subsystem 27
18. Figure 2-18 Timing Modules 28
19. Figure 2-19 Ethernet Synchronization I 29
20. Figure 2-20 Ethernet Synchronization II 30
21. Figure 2-21 Sub-6 GHz Indoor Pico Integrated O-DU&O-RU Functional Modules 31
22. Figure A-1: Sub-6 Split (O-RU6) and Integrated Picocell Reference Design 33

20

21

# Chapter 1 Introductory Material

## 1.1 Scope

1. This Technical Specification has been produced by the O-RAN ALLIANCE.
2. In the main body of this specification (in any "chapter") the information contained therein is
3. informative, unless explicitly described as normative. Information contained in an "Annex" to this
4. specification is always informative unless otherwise marked as normative.
5. The contents of the present document are subject to continuing work within O-RAN WG7 and may
6. change following formal O-RAN approval. Should the O-RAN.org modify the contents of the present
7. document, it will be re-released by O-RAN ALLIANCE with an identifying change of release date
8. and an increase in version number as follows:
9. Release x.y.z
10. where:
11. x the first digit is incremented for all changes of substance, i.e. technical enhancements, corrections, updates,
12. etc. (the initial approved document will have x=01).
13. y the second digit is incremented when editorial only changes have been incorporated in the document.
14. z the third digit included only in working versions of the document indicating incremental changes during the
15. editing process. This variable is for internal WG7 use only.
16. The present document specifies system requirements and high-level architecture for the Indoor Pico
17. Cell Hardware Reference Design with Fronthaul Split Option 6 deployment scenario as specified in
18. the Deployment Scenarios and Base Station Classes document [1].

## 1.2 References

1. The following documents contain provisions which, through reference in this text, constitute
2. provisions of the present document.

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| 24 | [1] | ORAN-WG7.DSC.0-V01.00 Technical Specification, Deployment Scenarios and Base Station Classes for |
| 25 |  | White Box Hardware |
| 26 | [2] | 3GPP TR 21.905: Vocabulary for 3GPP Specifications |
| 27 | [3] | 3GPP TR 38.104: NR; Base Station (BS) radio transmission and reception |
| 28 | [4] | 3GPP TR 38.913: Study on Scenarios and Requirements for Next Generation Access Technologies |
| 29 | [5] | 3GPP TS 38.401: NG-RAN; Architecture description |
| 30 | [6] | ORAN-WG7.IPC.HAR-v01.00 Technical Specification: O-RAN Indoor Pico Cell Hardware Architecture |
| 31 |  | and Requirement Specification |
| 32 | [7] | SCF 222.10.03: 5G FAPI PHY API Specification |
| 33 | [8] | SCF 082.09.05: nFAPI and FAPI Specifications |
| 34 | [9] | SCF 223.10.02: RF and Digital Front End Control API |

</div>

1. [10] SCF 224.10.01: 5G FAPI Network Monitor Mode API
2. [11] SCF 225.2.0: 5G nFAPI Specifications https://scf.io/en/documents/225\_5G\_nFAPI\_specifications.php

## 1.3 Definitions and Abbreviations

### 1.3.1 Definitions

1. For the purposes of the present document, the terms and definitions given in 3GPP TR 21.905 [1]
2. and the following apply. A term defined in the present document takes precedence over the
3. definition of the same term, if any, in 3GPP TR 21.905 [2]. For the base station classes of Pico,
4. Micro and Macro, the definitions are given in 3GPP TR 38.104 [3]. 9
5. **Carrier Frequency:** Center frequency of the cell.
6. **F1 interface:** The open interface between O-CU and O-DU defined by 3GPP TS 38.473.
7. **Integrated architecture:** In the integrated architecture, the O-RU and O-DU are implemented on
8. one platform. Each O-RU and RF front end is associated with one O-DU. They are then aggregated
9. to O-CU and connected by F1 interface.
10. **Split architecture:** The O-RU and O-DU are physically separated from one another in this
11. architecture. A switch may aggregate multiple O-RUs to one O-DU. O-DU, switch and O-RUs are
12. connected by the fronthaul interface.
13. **Transmission Reception Point (TRxP**): Antenna array with one or more antenna elements
14. available to the network located at a specific geographical location for a specific area. 20

### 1.3.2 Abbreviations

1. For the purposes of the present document, the abbreviations given in [2] and the following apply.
2. An abbreviation defined in the present document takes precedence over the definition of the same
3. abbreviation, if any, as in [2]. 25

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| 26 | 3GPP | Third Generation Partnership Project |
| 27 | 5G | Fifth-Generation Mobile Communications |
| 28 | ADC | Analog to Digital Converter |
| 29 | ASIC | Application Specific Integrated Circuit |
| 30 | BS | Base Station |
| 31 | CFR | Crest Factor Reduction |
| 32 | CISPR | Comite International Special des Perturbations Radioelectriques |
| 33 | CU | Centralized Unit as defined by 3GPP |
| 34 | DAC | Digital to Analog Converter |
| 35 | DDC | Digital Down Conversion |
| 36 | DDR | Double Data Rate |
| 37 | DL | Downlink |
| 38 | DPD | Digital Pre-Distortion |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| 1 | DPU | Digital Processing Unit |
| 2 | DSP | Digital Signal Processor |
| 3 | DU | Distributed Unit as defined by 3GPP |
| 4 | DUC | Digital Up Conversion |
| 5 | ECC | Error-Correcting Code |
| 6 | FAPI | Functional Application Platform Interface |
| 7 | FCC | Federal Communications Commission |
| 8 | FDD | Frequency Division Duplex |
| 9 | FFT | Fast Fourier Transform |
| 10 | FH | Fronthaul |
| 11 | FHGW | Fronthaul Gateway |
| 12 | FPGA | Field Programmable Gate Array |
| 13 | GbE | Gigabit Ethernet |
| 14 | GMC | Grand Master Clock |
| 15 | GNSS | Global Navigation Satellite System |
| 16 | GPS | Global Positioning System |
| 17 | HSUART | High-Speed Universal Asynchronous Receiver/Transmitter |
| 18 | IEEE | Institute of Electrical and Electronics Engineers |
| 19 | IMC | Integrated Memory Controller |
| 20 | I/O | Input/Output |
| 21 | JTAG | Joint Test Action Group |
| 22 | L2 | Layer 2 |
| 23 | L3 | Layer 3 |
| 24 | LDPC | Low-Density Parity-Check |
| 25 | LTE | Long Term Evolution |
| 26 | LRDIMM | Load-Reduced Dual In-Line Memory Module |
| 27 | MAC | Media Access Control |
| 28 | MIMO | Multiple Input Multiple Output |
| 29 | MCP | Multi-Chip Package |
| 30 | MU-MIMO | Multiple User MIMO |
| 31 | nFAPI | network Functional Application Platform Interface |
| 32 | NFV | Network Function Virtualization |
| 33 | NMEA | National Marine Electronics Association |
| 34 | NPU | Network Processing Unit |
| 35 | NR | New Radio |
| 36 | O-CU | O-RAN Centralized Unit as defined by O-RAN |
| 37 | O-DU6 | A specific O-RAN Distributed Unit having fronthaul split option 6 |
| 38 | O-RU6 | A specific O-RAN Radio Unit having fronthaul split option 6 |
| 39 | PCIe | Peripheral Component Interface Express |
| 40 | PCH | Platform Controller Hub |
| 41 | PDCP | Packet Data Convergence Protocol |
| 42 | PHY | Physical layer |
| 43 | PLL | Phase Locked Loop |
| 44 | PMBus | Power Management Bus |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| 1 | PoE | Power over Ethernet |
| 2 | PWM | Pulse Width Modulation |
| 3 | RAN | Radio Access Network |
| 4 | RDIMM | Registered Dual In-Line Memory Module |
| 5 | RFFE | Radio Frequency Front End |
| 6 | RGMII | Reduced Gigabit Media-Independent Interface |
| 7 | RF | Radio Frequency |
| 8 | RFFE | RF Front End |
| 9 | RoHS | Restriction of Hazardous Substances |
| 10 | RU | Radio Unit as defined by 3GPP |
| 11 | RX | Receiver |
| 12 | SFP | Small Form-factor Pluggable |
| 13 | SFP+ | Small Form-factor Pluggable Transceiver |
| 14 | SOC | System On Chip |
| 15 | SPI | Serial Peripheral Interface |
| 16 | TDP | Thermal Design Power |
| 17 | TR | Technical Report |
| 18 | TS | Technical Specification |
| 19 | TX | Transmitter |
| 20 | UART | Universal Asynchronous Receiver/Transmitter |
| 21 | UL | Uplink |
| 22 | USB | Universal Serial Bus |
| 23 | WG | Working Group |
| 24 |  |  |
| 25 |  |  |

</div>

# Chapter 2 Hardware Reference Design

## 2.1 O-CU Hardware Reference Design

1. The O-CU white box is the hardware platform that performs the CU function of upper L2 and L3.
2. The hardware systems specified in this document meet the computing, power and environmental
3. requirements for O-RAN deployment scenarios. These requirements are described in the hardware
4. requirement specification as well as in the deployment scenarios. The O-CU hardware includes the
5. chassis platform, mother board, peripheral devices and cooling devices. The mother board contains
6. processing unit, memory, the internal I/O interfaces, and external connection ports. The midhaul
7. and backhaul interfaces are used to carry the traffic between O-CU and O-DU6 as well as O-CU and
8. core network. Other hardware functional components include storage for software, debugging
9. interfaces, and board management controller just to name a few. The O-CU designer will make
10. decisions based on the specific needs of the implementation.
11. As discussed in the hardware architecture requirements [6], the O-CU white box hardware is similar
12. to O-DU6 on interfaces and processing unit. Rather than specifying a dedicated O-CU reference
13. design, we reuse O-DU6 hardware reference design for O-CU. 16

## 2.2 O-DU Hardware Reference Design

1. The terms "O-DU6" and "O-RU6" are used here for O-DU and O-RU that use split option 6. O-DU6
2. hardware systems specified in this document meet the computing, power and environmental
3. requirements of the indoor picocell deployment scenario configuration. The O-DU6 hardware
4. includes the chassis platform, mother board, peripheral devices and cooling devices. The mother
5. board contains processing unit, memory, the internal I/O interfaces, and external connection ports.
6. The front haul and back haul interface are used to carry the traffic between O-DU6 and O-RU6 as
7. well as O-CU and O-DU6. 25
8. The O-DU6 white box is the hardware platform that performs MAC functions while PHY is done in
9. the O-RU6. The O-DU6 design may also provide an interface for hardware accelerator(s) if that
10. option is preferred. However, this design does not specify accelerator hardware. Other hardware
11. functional components include storage for software, debugging interfaces, and board management
12. controller. The O-DU6 designer will make decisions based on the specific needs of the
13. implementation.

32

33 Note that the O-DU6 HW reference design is also reusable for O-CU and integrated O-CU/ O-DU6. 34

### 2.2.1 O-DU High-Level Functional Block Diagram

1. O-DU6 and O-RU6 are connected via nFAPI interfaces over fiber/ethernet transport. With an option
2. 6 MAC/PHY fronthaul split, the O-RU6 includes complete physical layer processing functions and
3. the O-DU6 handles higher layer processing functions. The O-DU6 hardware architecture is shown in
4. **Error! Reference source not found.**. Note that O-DU6 does not require an accelerator module
5. since physical layer functions are handled by O-RU6.
6. ![Diagram  Description automatically generated ]({{site.baseurl}}/assets/images/44afacd7fec2.jpg)
7. **Figure 2-1 O-DU6 Architecture Diagram**

6

### 2.2.2 O-DU6 Hardware Components

1. The sections below describe the functionality, interface and performance for each respective block
2. of the O-DU6. As device integration is an ongoing activity, chip boundaries may be fluid and some
3. functionalities may move from one block to another or entire functionalities may be absorbed into
4. other blocks. The sections below describe the functional blocks independent of which physical
5. device they may reside in.
6. 2.2.2.1 Digital Processing Unit

#### *a. Digital Processing Unit Requirement*

15

1. General purpose processor performance and other related information are listed in Table 2-1.
2. **Table 2-1: Processor Feature List**

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Item Name** | **Description** |
| # of Cores | 16 |
| # of Threads | 32 |
| Base Frequency | 2.20 GHZ |
| Max Turbo Frequency | 3.00 GHz |
| Cache | 22 MB |
| TDP | 100W |
| Max Memory Size (dependent on memory type) | 512 GB |
| Memory Types | DDR4 |
| Max # of Memory Channels | 4 |

</div>

18

19 Interfaces

1. The interface specification in main board are as follows:
2. ? Memory Channel Interfaces
3. The system memory capacity, type and related information are described in Table 2-2.
4. **Table 2-2: Memory Channel Feature List**

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Item Name** | **Description** |
| Memory Types | DDR4 |
| # of Memory Channels | 4 |
| ECC LRDIMM | Up to 512GB |
| ECC RDIMM | Up to 256GB |
| Memory Speed | 2666/2400/2133MHz |
| DIMM Sizes | 128GB, 64GB, 32GB, 16GB |
| Memory Voltage | 1.2 V |

</div>

5

1. ? PCIe
2. PCIe Gen 3 is supported by the processor. There are a total of 32 PCIe lanes with 128 Gb/s
3. bandwidth. The 32 PCIe lanes can be divided into two x16 slots by using a riser card.
4. ? Ethernet
5. The system should be capable to offer aggregated 48 Gb/s Ethernet bandwidth. When higher
6. Ethernet bandwidth is required, an Ethernet card can be installed in one of the PCIe slots. 12

#### 13 *b. Digital Processing Unit Design*

14

1. The digital processing unit is a system-on-a-chip (SOC) device which is a 64-bit, multi-core server
2. class processor. This SoC includes an integrated Platform Controller Hub (PCH), integrated high-
3. speed I/O, Integrated Memory Controllers (IMC), and four integrated 10 Gigabit Ethernet ports.
4. The SOC supports 512-bit wide vector processing instruction set. It also supports hardware
5. virtualization to enable dynamic provisioning of services as communication service providers
6. extend network function virtualization (NFV). **Error! Reference source not found.** shows the
7. major functional blocks of the digital processing unit. 22

23

![A screenshot of a cell phone  Description automatically generated ]({{site.baseurl}}/assets/images/b977a068efb1.png)1

1. **Figure 2-2 Digital Processing Unit Block Diagram**

3

1. 2.2.2.2 Hardware Accelerator
2. Hardware accelerators may be used in O-DU6 to offload computationally intensive functions and to
3. optimize the performance under varying traffic and loading conditions. The acceleration functional
4. requirements and implementation are system designer's choice; however, the O-DU6 shall meet the
5. minimum system performance requirements under various loading and deployment conditions. In
6. most cases, an FPGA or ASIC based PCIe card can be used to optimize the system performance.
7. Examples for O-DU6 could be security, network interface controller, and general packet
8. acceleration. Specific accelerator designs are not called out in this specification. 12

### 2.2.3 Synchronization and Timing

1. 2.2.3.1 Synchronization and Timing Design 1
2. The timing synchronization of O-DU6 is achieved by utilizing IEEE1588 via Ethernet ports. The
3. Network Interface Controllers (NIC) that are used for fronthaul and backhaul support the IEEE1588
4. protocol.

18

#### 19 *a. Hardware Requirements*

20

1. The O-DU6 shall support at least one of following timing synchronization methods:
2. 1. Ethernet based IEEE1588
3. 2. GNSS based timing synchronization.

24

#### 25 *b. Hardware Design*

26

1. Depending on the timing distribution topologies used, the O-DU6 system clock is able to
2. synchronize with the Grand Master Clock (GMC) using IEEE1588 via either the fronthaul NIC or
3. backhaul NIC, or synchronizing timing using Global Navigation Satellite System (GNSS). In the
4. case of IEEE1588, the Physical Hardware Clock (PHC) within the NIC is synchronized with the
5. GMC first, then the O-DU6 system clock is synchronized with the PHC. The O-DU6 is also capable
6. to provide clock to the O-RU6 via fronthaul if needed. When GNSS is available to O-DU6, it is able
7. to synchronize the system clock to Coordinated Universal Time (UTC). Figure 2-3 outlines the O-
8. DU6 timing synchronization mechanisms. 9

![Diagram  Description automatically generated ]({{site.baseurl}}/assets/images/861a7842a425.png)

10

11

1. **Figure 2-3 O-DU6 Timing Synchronization**

13

14

### 2.2.4 External Interface Ports

#### *a. Hardware Requirements*

1. Table 2-3 External Port List 2-3 shows the external ports or slots that the system provides.
2. **Table 2-3 External Port List**

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Port Name** | **Feature Description** 19 |
| Ethernet | Octave Gigabit Ethernet LAN connectors |
| Dual 10GbE Base-T Ethernet connectors |
| Dual 10GbE SFP + Fiber Ethernet connectors |
| USB | 2 USB 3.0 ports |
| Serial Port | 1 COM port via RJ45 |
| Antenna port | 1 SMA connector for GNSS |

</div>

20

21

#### *b. Hardware Design*

1. The digital processing unit is a SOC device which provides all the external ports described in the
2. hardware requirement section. The system includes 2 USB 3.0 ports, and the serial RS232 port that
3. can be used for Console Redirection, e.g. Out-of-Band Management/Windows Emergency
4. Management Services (EMS). There are a total of four 10G Ethernet ports in system, among them
5. are two RJ45 10GbE and two 10G SFP+ ports. The system also provides a RF interface to connect
6. GNSS antenna.

5

### 2.2.5 Mechanical

7

### ? Mother Board

9

1. The mechanical layout of the mother board in Figure 2-4 shows the location of major components
2. and interface ports, and the dimension of the board. 12

![]({{site.baseurl}}/assets/images/8ebe6fae1aa1.png)![]({{site.baseurl}}/assets/images/90b0f88273f8.png)

1

2

3

1. ? Chassis

**Figure 2-4 Mother Board Layout**

![]({{site.baseurl}}/assets/images/4dfc079f7fcb.jpg)![]({{site.baseurl}}/assets/images/302718d8103b.png)

8''

1. The 1U rack mount chassis contains the layout of the power supply, SSD and fans. The chassis
2. dimension is shown in Figure 2-5. 7

1

2

3

1. ? Cooling

![A close up of a device  Description automatically generated ]({{site.baseurl}}/assets/images/614020b0fae5.jpg)**Figure 2-5 Chassis Mechanical Diagram**

1. The system has 4x 40x28mm PWM fans for cooling. Up to 6 fans can be installed if needed.

### 2.2.6 Power Unit

1. In a fully loaded system with two PCIe slots populated with 75W each, the system power
2. consumption should be less than 400W. The total system power shall be kept to less than 80% of
3. the power supply capacity. 10

#### 11 *a. Hardware Requirements*

12

1. The power is provided by 500W High-Efficiency power supply with PMBus 1.2. The power
2. support input and output power rails are listed below.
3. AC Input: 100-240V, 50-60Hz, 6.6A max
4. DC Output: +3.3V: 12A

17 +5V: 15A

18 +5V standby: 3A

19 +12V: 41A

20 -12V: 0.2A

21

#### *b. Hardware Design*

23

1. The O-DU6 chassis includes one 500W power supply unit. The power supply unit is auto-switching
2. capable, which enables it to automatically sense and operate at a 100v to 240v input voltage. The
3. power supply unit features are listed in Table 2-4. 27
   1. **Table 2-4 Power Supply Features**

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Features** | **Parameters** |
| Output connectors | 24pin/8pin/4+4pin/HDD/I2C |
| Dimension (W x D x H) | 3.9 x 7.1 x 1.6 inch |
| Maximum Output Power | +3.3V: 12A  +5V: 15A  +12V: 41A  -12V: 0.2A  +5Vsb: 3A |
| Rated Input Voltage/Current | 100-240Vac / 6.6A max |
| Rated Input Frequency | 50-60HZ |
| Inrush current | Less than 30A |

</div>

2

### 2.2.7 Thermal

1. Active cooling with up to 6 fans integrated in chassis.

### 2.2.8 Environmental and Regulations

1. The O-DU6 hardware system is RoHS Compliant. The power supply unit is EMC FCC/CISPR
2. Class B compliant. Table 2-5 lists the environmental related features and parameters. 8
3. **Table 2-5 Environmental Features**

10

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Features** | **Description** |
| Operating Temperature | -5?C to 55?C |
| Non-operating Temperature | -40?C to 70?C (-40?F to 158?F) |
| Operating Relative Humidity | 8% to 90% (non-condensing) |
| Non-operating Relative Humidity | 5% to 95% (non-condensing) |

</div>

11

12

## 2.3 O-RU6 Hardware Reference Design

1. This section provides a hardware reference design for O-RU6, that is an O-RU built using the
2. MAC/PHY split and interfaces defined in the Small Cell Forum. See references [7], [8], [9], [10]
3. and [11].

### 2.3.1 O-RU6 High-Level Functional Block Diagram

1. Figure 2-6 shows a high-level functional block diagram depicting the major HW/SW components
2. and internal/external interfaces for O-RU6. In this design, PHY processing in the O-RU6 is handled
3. by a specialized ASIC. O-RU6 can handle fiber or metallic ethernet transport interface ports. 5

6

![Diagram  Description automatically generated ]({{site.baseurl}}/assets/images/4ab8c691a3f8.png)

7

1. **Figure 2-6 General Block Diagram for O-RU6**

9

### 2.3.2 O-RU6 Hardware Components

1. The generic hardware architecture for O-RU6 consists of three major parts: digital processing unit,
2. RF processing unit and a timing unit as shown in Figure 2-7. In the next section there is a brief
3. mapping of modules within these major blocks of O-RU6. 14

![A screenshot of a social media post  Description automatically generated ]({{site.baseurl}}/assets/images/9ed31716a619.jpg)

15

16 **Figure 2-7 O-RU6 Architecture Diagram**

17

1. Dissimilar to option 7-2 or option 8, all L1 processing is performed by O-RU6. The processing unit
2. handles transport and interface processing as well as all L1 modem processing. The DPU in O-RU6
3. is composed of an NPU to terminate transport layer and a PHY ASIC for L1 processing. Figure 2-
4. 8**Error! Reference source not found.** shows the major components used in O-RU6. 5
5. The digital processing unit handles transport/interface processing, complete PHY ( low and high
6. PHY functions) modem processing, Digital Down Converter (DDC), Digital Up Converter (DUC),
7. Crest Factor Reduction (CFR) and Digital Pre-Distortion (DPD). 9
8. The RF processing unit is comprised of the transceiver block which is responsible for functions
9. such as Analog to Digital Converter (ADC), Digital to Analog Converter (DAC) and mixer; an
10. amplification block which contains Power Amplifier (PA)/ Low Noise Amplifier (LNA), etc; and
11. antenna subsystem that captures and/or transmits radio electromagnetic waves. O-RU6 may use
12. Power over Ethernet (PoE) to simplify deployment complexity. 15
13. The Timing Unit may include Phase Locked Loop (PLL), local oscillator and timing
14. synchronization circuitry.

![Diagram  Description automatically generated ]({{site.baseurl}}/assets/images/eaaad23b12b4.jpg)18

19

20 **Figure 2-8 O-RU6 Functional Module Diagram**

21

22

### 2.3.3 O-RU6 Functional Module Description

24

![A screenshot of a cell phone  Description automatically generated ]({{site.baseurl}}/assets/images/0411819f1950.jpg)

1

* 1. **Figure 2-9 Sub-6 GHz Indoor Pico O-RU6 Functional Modules (Split Option 6)**

3

1. Mapping the generic hardware architecture to this hardware reference design, the DPU is split to an
2. NPU and PHY ASIC, with an internal interface using FAPI over a PCIe interface. 6

7 Functional blocks shown in Figure 2-9 are discussed below. 8

1. 2.3.3.1 Network Processing Unit (NPU)
2. The Network Processing Unit (NPU) for O-RU6 terminates the external nFAPI interfaces and
3. provides the internal FAPI interface to the PHY ASIC.
4. 2.3.3.1.1 Networking I/O
5. ? Minimum I/O is a single 10GbE port that can be used with electrical or optical I/O
6. ? Optionally, support can be added for
7. ? OAM / maintenance port (1GbE) connecting over RGMII to the NPU
8. ? An additional 10GbE port for chaining or failover connectivity. By implication, the
9. NPU needs to support efficient local switch/routing functionality 18

19 Networking side connectivity is shown as below:

![Diagram  Description automatically generated ]({{site.baseurl}}/assets/images/80681de439d2.jpg)

1

2 **Figure 2-10 O-RU6 Networking I/O**

3

1. Example SFP connectivity is shown below: 5

![Diagram  Description automatically generated ]({{site.baseurl}}/assets/images/099ee0335f76.png)

6

1. **Figure 2-11 O-RU6 SFP Connectivity**

8

9

1. 2.3.3.1.2 Low-speed connectivity and boot
2. This picture shows typical low-speed I/O associated with the NPU 12

![Diagram, schematic  Description automatically generated ]({{site.baseurl}}/assets/images/067599c2f2fc.png)

1

* 1. **Figure 2-12 O-RU6 Low-speed NPU Connectivity**

3

4

1. In addition, the device can optionally be configured for secure boot. 6

7 2.3.3.1.3 DDR

1. ? Assuming a telecommunications-tuned Linux image and virtualization through
2. containerization, accommodate for 512Mbyte for hosting the Linux OS from DDR
3. ? Buffering needs to be provided for FAPI messages, but this is expected to be limited to few
4. Mbyte (marginal) as well as debug / OAM logging functionality
5. ? In aggregate, assume ~1Gbyte aggregate DDR dimensioning
6. ? For bandwidth estimation, assume ~5Gbps of Ethernet throughput with 2 paths to/from the
7. DDR interface
8. ? Receive / Transmit from / to Ethernet MAC to DDR
9. ? Receive / Transmit from / to DDR to PCIe
10. Aggregate is ~10Gbps or 15Gbps with margin. Given a maximum utilization of the DDR
11. interface of 50%, we require 30Gbps of raw memory throughput. A 1.6GTPS DDR memory
12. controller with 32bits memory bus width provides 50Gbps throughput and is thus enough to
13. support this use-case as well as additional bandwidth requirements for switch/routing
14. functions to optional Ethernet ports.
    1. ? ECC is assumed to be a required for a telecom-grade application. 2

![Diagram  Description automatically generated ]({{site.baseurl}}/assets/images/d36b0ba95410.png)

3

4

5

1. 2.3.3.1.4 Processor subsystem

**Figure 2-13 O-RU6 DDR**

1. ? The NPU needs to incorporate a processor subsystem that is capable of processing
2. networked FAPI messages and convert them to PCI messages. Dimensioning of the CPU is
3. outside of the scope.

10 2.3.3.1.5 Modem I/O

1. ? For bandwidth estimation, assume ~5Gbps of throughput. Adding 20% of signaling
2. overhead, this becomes ~6Gbps.
3. ? Assuming PCIe gen3 operation, 2 lanes of PCIe @8Gbps provide sufficient overhead above
4. this bandwidth.

15

16

![Diagram  Description automatically generated ]({{site.baseurl}}/assets/images/884d62208b06.png)

17

1. **Figure 2-14 O-RU6 Modem I/O**

19

20

1 2.3.3.1.6 Security

* 1. ? The NPU needs to support high-speed ciphering and protocol processing capabilities to
  2. support a (IPSec) secured backhaul interface. This can be achieved through integrated
  3. networking acceleration or an external accelerator as shown below. 5

6

![Diagram  Description automatically generated ]({{site.baseurl}}/assets/images/a6ac5313095b.jpg)

7

8

9

1. 2.3.3.2 PHY Layer ASIC

**Figure 2-15 O-RU6 NPU Security**

1. The PHY Layer ASIC is an application specific integrated circuit that provides a highly integrated
2. and power-efficient solution implementing the complete 5G-NR PHY layer. It includes variants for
3. both sub-6 GHz (FR1) and mmWave (FR2) frequency ranges. These ASICs can be used to
4. implement self-contained, all-in-one small cells, as well as Option 6 radio units (RU) for
5. disaggregated RAN systems. In either case, the ASIC connects to a co-located network processing
6. unit (NPU) via a PCIe interface. In the case of a self-contained small cell, the NPU hosts the full
7. L2/L3 protocol stack (i.e., RLC, MAC, PDCP) which connects to the PHY via the 5G FAPI logical
8. interface over PCIe. In the case of an Option 6 RU, the NPU terminates the 5G nFAPI fronthaul
9. connection between the CU/DU and the RU and connects to the PHY via the aforementioned 5G
10. FAPI logical interface (over PCIe.) 21

![A screenshot of a cell phone  Description automatically generated ]({{site.baseurl}}/assets/images/6dac01dace33.jpg)1

2

* 1. **Figure 2-16 O-RU6 PHY ASIC block diagram**

4

* 1. Figure above provides a high-level diagram of the functional blocks that make up the PHY ASIC.
  2. External interfaces, including PCIe, USB, HS-UART, and GPIOs, are shown on the left-hand side.
  3. There are two embedded general-purpose CPUs available as well as a power management
  4. subsystem. The most important block is the 5G-NR Modem Subsystem. 9

1

![A screenshot of a cell phone  Description automatically generated ]({{site.baseurl}}/assets/images/5744e5d72d17.jpg)

2

1. **Figure 2-17 O-RU6 5G Modem Subsystem**

4

1. Figure above depicts a block diagram of the Modem Subsystem within the ASIC, which is
2. predominantly software defined, leveraging a number of embedded DSPs and CPUs which together
3. implement the transmit and receive functionalities of the 5G modem. The modem also includes
4. hardware accelerators for computationally intensive tasks such as FFTs, demapping, and LDPC
5. encoding/decoding. The various functional blocks are interconnected via a network-on-chip (NOC).
6. The modem subsystem also includes a digital front-end responsible for signal conditioning in both
7. the transmit (downlink) and receive (uplink) directions. 12
8. 2.3.3.3 RF Front End
9. The Radio Frequency Front End (RFFE) is made up of all components between the modem and
10. antennas. These include RF transceivers, RF switches, filters, duplexers, power amplifiers, and
11. low-noise amplifiers.

17

1. 2.3.3.4 Power Management
2. The Power Management functional module controls the flow of electrical power to other parts of
3. the O-RU6.

21

### 2.3.4 Synchronization and Timing

1. 2.3.4.1 Hardware Requirements
2. O-RU timing synchronization sources include:
3. ? Ethernet based IEEE1588
4. ? Ethernet based Synchronous Ethernet
5. ? Optional Global Navigation Satellite System (GNSS) based timing synchronization 7
6. Timing functionality is shown in the diagram below:

### O-CU/ O-DU6/ FHGW6

Digital

Processing Unit

RF Processing

Unit

Recovered

Clock

1588 & PPS

Timing

Unit

Ethernet

Interface

Time of Day

Frame/Slot

Timing

ADC/DAC, RF

Reference Clock

10MHz, PPS, NMEA (GPS)

1. (optional)
2. **Figure 2-18 Timing Modules**

11

12

13

1. IEEE1588 time stamping can be done at the Ethernet PHY level (model 1 below) or at the Ethernet
2. MAC/Network Processing Unit (NPU) level (model 2 below). Model 1 is expected to provide
3. incremental precision.

17

1. 2.3.4.2 Synchronization and Timing Design 1
2. Timing synchronization on Ethernet PHY based 1588 and Synchronous Ethernet received clock
3. extraction support.

O-CU/ O-DU6/ FHGW6

![]({{site.baseurl}}/assets/images/926fbd10f003.png)

Ethernet

PHY

Network

Processing Unit

PHY Layer

ASIC

PPS

3GPP\_clk rec\_clk

10MHz

nmea

Clock

Synth

GPS

Module

PPS

3GPP

clock

servo

PPS

3GPP

clock

1

mux

2

3

1. Notes:

**Figure 2-19 Ethernet Synchronization I**

1. ? Either (depending on mux / input control) GPS 10MHz or Synchronous Ethernet recovered
2. output clock (ref\_clk) are input to a clock synthesizer (fractional PLL) to generate the 38.4,
3. 122.88 MHz (or similar) MHz reference clock (Frequency Synchronization)
4. ? The PPS pulse from the GPS provides a mechanism to manage local 122.88 (or similar)
5. 3GPP clock through use of a Software PLL (servo) in absence of GPS/Synchronous
6. Ethernet extracted reference frequency
7. ? On top of the GPS PPS pulse, the GPS UART output provides time synchronization to a
8. universal clock through NMEA messages
9. ? The mux in the system allows the Network Processing Unit to control which input is used as
10. PPS source (GPS module or Ethernet PHY)
11. ? All dashed lines are indicating optionality - GPS support is optional for this system
12. ? IEEE1588 provides both time synchronization and frequency synchronization of a local
13. 122.88MHz clock through Ethernet time stamping such as supported in Layerscape devices.
14. Synchronous Ethernet can be used in conjunction with this for local 3GPP clock generation. 19
15. 2.3.4.3 Synchronization and Timing Design 2
16. Timing synchronization on Network Processing Unit based 1588 and Synchronous Ethernet
17. received clock extraction support.

O-CU/ O-DU6/ FHGW6

![]({{site.baseurl}}/assets/images/fbf38bc55154.png)

Ethernet

PHY

Network

Processing Unit

PHY Layer

ASIC

PPS

10MHz

nmea

Clock

Synth

GPS

Module

PPS

rec\_clk 3GPP

clock servo

PPS 3GPP

clock

1

mux

2

3

* 1. Notes:

**Figure 2-20 Ethernet Synchronization II**

* 1. ? Either (depending on mux / input control) GPS 10MHz or Synchronous Ethernet recovered
  2. output clock (ref\_clk) are input to a clock synthesizer (fractional PLL) to generate the 38.4,
  3. 122.88 MHz (or similar) MHz reference clock (Frequency Synchronization)
  4. ? The PPS pulse from the GPS provides a mechanism to manage local 122.88 (or similar)
  5. 3GPP clock through use of a Software PLL (servo) in absence of GPS/Synchronous
  6. Ethernet extracted reference frequency
  7. ? On top of the GPS PPS pulse, the GPS UART output provides time synchronization to a
  8. universal clock through NMEA messages
  9. ? All dashed lines are indicating optionality - GPS support is optional for this system
  10. ? IEEE1588 provides both time synchronization and frequency synchronization of a local
  11. 122.88MHz clock through Ethernet time stamping such as supported in Layerscape devices.
  12. Synchronous Ethernet can be used in conjunction with this for local 3GPP clock generation. 17

### 2.3.5 External Interface Ports

1. The O-RU6 must have at least one RJ45 10 gigabit per second (Gbps) Ethernet interface or at least
2. one 10 Gbps optical interface. In some cases, depending on the fronthaul throughput associated
3. with smaller air interface bandwidths, a 1 or 2.5 Gbps Ethernet or optical interface may be
4. sufficient, depending on system operator requirements. SCF 5G nFAPI should be supported.
5. At full load, the power consumption must not exceed the limit allowed by IEEE802.3at/PoE+,
6. which is 25.5W.

### 2.3.6 Power Unit

1. O-RU6 can use power over Ethernet (PoE) to simplify deployment complexity.

### 2.3.7 Environmental and Regulations

1. O-RU6 IPC design is for indoor environments (nominal ambient temperature, humidity, altitude).
2. Suppliers must comply with any local regulatory requirements.

## 2.4 Integrated gNB-DU Reference Design Solution

1. This Section includes a reference design for an all-in-one, integrated gNB-DU solution.
2. This section provides an example white box design for integrated indoor picocells, using FAPI as
3. the internal interface between PHY and MAC. Typically, the MAC will run on an NPU while the
4. PHY resides in a PHY Layer ASIC, connected via a PCIe interface. 9

![A screenshot of a cell phone  Description automatically generated ]({{site.baseurl}}/assets/images/cfd62f9ed6f3.jpg)

10

1. **Figure 2-21 Sub-6 GHz Indoor Pico Integrated O-DU&O-RU Functional Modules**

12

1. Functional modules shown in Figure 2-21 for the integrated case are essentially the same as those in
2. the O-RU6 split option. The main difference is in the NPU, which now terminates the O-CU/gNB-
3. DU interface.

16

1. The integrated gNB-DU may also include a GPS receiver to locally provide location and precise
2. timing (as opposed to depending on the O-CU for those functions.) 19

20 The integrated Option 6 design does not require an accelerator. 21

1. As in the split design, the DPU is a combination of NPU and PHY ASIC (same parts whether split
2. or integrated.)

3

### 2.4.1 Power Unit

1. If PoE is used, At full load, the power consumption must not exceed the limit allowed
2. by IEEE802.3at/PoE+, which is 25.5W. 7
3. 2.4.1.1 Power Management
4. The Power Management functional module controls the flow of electrical power to other parts of
5. the integrated O-DU/O-RU. 11

### 2.4.2 Synchronization and Timing

1. Local 1588v2 or GPS Slave interfaces for acquiring timing and synchronization can be included
2. according to operator use case and deployment environment.

### 2.4.3 External Interface Ports

1. The integrated O-DU/O-RU must have at least one RJ45 10 gigabit per second (Gbps) Ethernet
2. interface or at least one 10 Gbps optical interface. In some cases, depending on the fronthaul
3. throughput associated with smaller air interface bandwidths, a 1 or 2.5 Gbps Ethernet or optical
4. interface may be sufficient, depending on system operator requirements. SCF 5G nFAPI should be
5. supported.

### 2.4.4 Power Unit

1. Integrated O-DU/O-RU can use power over Ethernet (PoE) to simplify deployment complexity. At
2. full load, the power consumption must not exceed the limit allowed by IEEE802.3at/PoE+, which is
3. 25.5W.

### 2.4.5 Environmental and Regulations

1. Integrated O-DU/O-RU IPC design is for indoor environments (nominal ambient temperature,
2. humidity, altitude). Suppliers must comply with any local regulatory requirements. 28

## 2.5 FHGW Hardware Reference Design

1. A FHGW is not required for option 6 hardware reference design. 31

1

2

# Annex 1: Example Hardware Bill of Materials

1. This annex shows example components used to build the reference design described above for split
2. ![A close up of a map  Description automatically generated ]({{site.baseurl}}/assets/images/b3329544978e.jpg)and integrated option 6 designs (note that the same components are used for either scenario.) 6

7

8 **Figure A-1: Sub-6 Split (O-RU6) and Integrated Picocell Reference Design**

9

10

1. Figure A-1 shows an example hardware design based on the FSM100xx ASIC for a sub-6 Ghz Split
2. (O-RU6) and Integrated picocell. In both cases, this design implements the SCF FAPI protocol over
3. an internal PCIe interface. 14
4. In the split Option 6 picocell case, the NPU implements the nFAPI control and data plane protocol
5. encapsulation/decapsulation functions to provide the transport interface from the picocell to the O-
6. DU6. See SCF 225.1.0 [11].

1

1. In the integrated picocell case, the NPU implements higher layer protocol functions (L3 and
2. portions or all of L2.) 4

5

6

7

8

1

# 2 Annex 2:

3

1. This document references the following specifications from the Small Cell Forum available at
2. https://scf.io/en/documents/all\_documents.php

6

1. SCF 222.10.03: 5G FAPI PHY API Specification
2. SCF 082.09.05: nFAPI and FAPI Specifications
3. SCF 223.10.02: RF and Digital Front End Control API
4. SCF 224.10.01: 5G FAPI Network Monitor Mode API
5. SCF 225.2.0: 5G nFAPI Specifications.

12

13

14

# Annex ZZZ: O-RAN Adopter License Agreement

1. BY DOWNLOADING, USING OR OTHERWISE ACCESSING ANY O-RAN SPECIFICATION,
2. ADOPTER AGREES TO THE TERMS OF THIS AGREEMENT.
3. This O-RAN Adopter License Agreement (the "Agreement") is made by and between the O-RAN
4. ALLIANCE and the entity that downloads, uses or otherwise accesses any O-RAN Specification,
5. including its Affiliates (the "Adopter").
6. This is a license agreement for entities who wish to adopt any O-RAN Specification.

## Section 1: DEFINITIONS

1. 1.1 "Affiliate" means an entity that directly or indirectly controls, is controlled by, or is under
2. common control with another entity, so long as such control exists. For the purpose of this Section,
3. "Control" means beneficial ownership of fifty (50%) percent or more of the voting stock or equity
4. in an entity.
5. 1.2 "Compliant Implementation" means any system, device, method or operation (whether
6. implemented in hardware, software or combinations thereof) that fully conforms to a Final
7. Specification.
8. 1.3 "Adopter(s)" means all entities, who are not Members, Contributors or Academic Contributors,
9. including their Affiliates, who wish to download, use or otherwise access O-RAN Specifications.
10. 1.4 "Minor Update" means an update or revision to an O-RAN Specification published by O-RAN
11. ALLIANCE that does not add any significant new features or functionality and remains
12. interoperable with the prior version of an O-RAN Specification. The term "O-RAN Specifications"
13. includes Minor Updates.
14. 1.5 "Necessary Claims" means those claims of all present and future patents and patent
15. applications, other than design patents and design registrations, throughout the world, which (i) are
16. owned or otherwise licensable by a Member, Contributor or Academic Contributor during the term
17. of its Member, Contributor or Academic Contributorship; (ii) such Member, Contributor or
18. Academic Contributor has the right to grant a license without the payment of consideration to a
19. third party; and (iii) are necessarily infringed by a Compliant Implementation (without considering
20. any Contributions not included in the Final Specification). A claim is necessarily infringed only
21. when it is not possible on technical (but not commercial) grounds, taking into account normal
22. technical practice and the state of the art generally available at the date any Final Specification was
23. published by the O-RAN ALLIANCE or the date the patent claim first came into existence,
24. whichever last occurred, to make, sell, lease, otherwise dispose of, repair, use or operate a
25. Compliant Implementation without infringing that claim. For the avoidance of doubt in exceptional
26. cases where a Final Specification can only be implemented by technical solutions, all of which
27. infringe patent claims, all such patent claims shall be considered Necessary Claims.
28. 1.6 "Defensive Suspension" means for the purposes of any license grant pursuant to Section 3,
29. Member, Contributor, Academic Contributor, Adopter, or any of their Affiliates, may have the
30. discretion to include in their license a term allowing the licensor to suspend the license against a
31. licensee who brings a patent infringement suit against the licensing Member, Contributor,
32. Academic Contributor, Adopter, or any of their Affiliates.

## Section 2: COPYRIGHT LICENSE

1. 2.1 Subject to the terms and conditions of this Agreement, O-RAN ALLIANCE hereby grants to
2. Adopter a nonexclusive, nontransferable, irrevocable, non-sublicensable, worldwide copyright
3. license to obtain, use and modify O-RAN Specifications, but not to further distribute such O-RAN
4. Specification in any modified or unmodified way, solely in furtherance of implementations of an
5. ORAN
6. Specification.
7. 2.2 Adopter shall not use O-RAN Specifications except as expressly set forth in this Agreement or
8. in a separate written agreement with O-RAN ALLIANCE.

## Section 3: FRAND LICENSE

1. 3.1 Members, Contributors and Academic Contributors and their Affiliates are prepared to grant
2. based on a separate Patent License Agreement to each Adopter under Fair Reasonable And Non-
3. Discriminatory (FRAND) terms and conditions with or without compensation (royalties) a
4. nonexclusive, non-transferable, irrevocable (but subject to Defensive Suspension), non-
5. sublicensable, worldwide patent license under their Necessary Claims to make, have made, use,
6. import, offer to sell, lease, sell and otherwise distribute Compliant Implementations; provided,
7. however, that such license shall not extend: (a) to any part or function of a product in which a
8. Compliant Implementation is incorporated that is not itself part of the Compliant Implementation;
9. or (b) to any Adopter if that Adopter is not making a reciprocal grant to Members, Contributors and
10. Academic Contributors, as set forth in Section 3.3. For the avoidance of doubt, the foregoing
11. licensing commitment includes the distribution by the Adopter's distributors and the use by the
12. Adopter's customers of such licensed Compliant Implementations.
13. 3.2 Notwithstanding the above, if any Member, Contributor or Academic Contributor, Adopter or
14. their Affiliates has reserved the right to charge a FRAND royalty or other fee for its license of
15. Necessary Claims to Adopter, then Adopter is entitled to charge a FRAND royalty or other fee to
16. such Member, Contributor or Academic Contributor, Adopter and its Affiliates for its license of
17. Necessary Claims to its licensees.
18. 3.3 Adopter, on behalf of itself and its Affiliates, shall be prepared to grant based on a separate
19. Patent License Agreement to each Members, Contributors, Academic Contributors, Adopters and
20. their Affiliates under Fair Reasonable And Non-Discriminatory (FRAND) terms and conditions
21. with or without compensation (royalties) a nonexclusive, non-transferable, irrevocable (but subject
22. to Defensive Suspension), non-sublicensable, worldwide patent license under their Necessary
23. Claims to make, have made, use, import, offer to sell, lease, sell and otherwise distribute Compliant
24. Implementations; provided, however, that such license will not extend: (a) to any part or function of
25. a product in which a Compliant Implementation is incorporated that is not itself part of the
26. Compliant Implementation; or (b) to any Members, Contributors, Academic Contributors, Adopters
27. and their Affiliates that is not making a reciprocal grant to Adopter, as set forth in Section 3.1. For
28. the avoidance of doubt, the foregoing licensing commitment includes the distribution by the
29. Members', Contributors', Academic Contributors', Adopters' and their Affiliates' distributors and
30. the use by the Members', Contributors', Academic Contributors', Adopters' and their Affiliates'
31. customers of such licensed Compliant Implementations.

## Section 4: TERM AND TERMINATION

1. 4.1 This Agreement shall remain in force, unless early terminated according to this Section 4.
2. 4.2 O-RAN ALLIANCE on behalf of its Members, Contributors and Academic Contributors may
3. terminate this Agreement if Adopter materially breaches this Agreement and does not cure or is not
4. capable of curing such breach within thirty (30) days after being given notice specifying the breach.
5. 4.3 Sections 1, 3, 5 - 11 of this Agreement shall survive any termination of this Agreement. Under
6. surviving Section 3, after termination of this Agreement, Adopter will continue to grant licenses (a)
7. to entities who become Adopters after the date of termination; and (b) for future versions of ORAN
8. Specifications that are backwards compatible with the version that was current as of the date of
9. termination.

## Section 5: CONFIDENTIALITY

1. Adopter will use the same care and discretion to avoid disclosure, publication, and dissemination of
2. O-RAN Specifications to third parties, as Adopter employs with its own confidential information,
3. but no less than reasonable care. Any disclosure by Adopter to its Affiliates, contractors and
4. consultants should be subject to an obligation of confidentiality at least as restrictive as those
5. contained in this Section. The foregoing obligation shall not apply to any information which is: (1)
6. rightfully known by Adopter without any limitation on use or disclosure prior to disclosure; (2)
7. publicly available through no fault of Adopter; (3) rightfully received without a duty of
8. confidentiality; (4) disclosed by O-RAN ALLIANCE or a Member, Contributor or Academic
9. Contributor to a third party without a duty of confidentiality on such third party; (5) independently
10. developed by Adopter; (6) disclosed pursuant to the order of a court or other authorized
11. governmental body, or as required by law, provided that Adopter provides reasonable prior written
12. notice to O-RAN ALLIANCE, and cooperates with O-RAN ALLIANCE and/or the applicable
13. Member, Contributor or Academic Contributor to have the opportunity to oppose any such order; or
14. (7) disclosed by Adopter with O-RAN ALLIANCE's prior written approval.

## Section 6: INDEMNIFICATION

1. Adopter shall indemnify, defend, and hold harmless the O-RAN ALLIANCE, its Members,
2. Contributors or Academic Contributors, and their employees, and agents and their respective
3. successors, heirs and assigns (the "Indemnitees"), against any liability, damage, loss, or expense
4. (including reasonable attorneys' fees and expenses) incurred by or imposed upon any of the
5. Indemnitees in connection with any claims, suits, investigations, actions, demands or judgments
6. arising out of Adopter's use of the licensed O-RAN Specifications or Adopter's commercialization
7. of products that comply with O-RAN Specifications.

## Section 7: LIMITATIONS ON LIABILITY; NO WARRANTY

* 1. EXCEPT FOR BREACH OF CONFIDENTIALITY, ADOPTER'S BREACH OF SECTION 3,
  2. AND ADOPTER'S INDEMNIFICATION OBLIGATIONS, IN NO EVENT SHALL ANY
  3. PARTY BE LIABLE TO ANY OTHER PARTY OR THIRD PARTY FOR ANY INDIRECT,
  4. SPECIAL, INCIDENTAL, PUNITIVE OR CONSEQUENTIAL DAMAGES RESULTING FROM
  5. ITS PERFORMANCE OR NON-PERFORMANCE UNDER THIS AGREEMENT, IN EACH
  6. CASE WHETHER UNDER CONTRACT, TORT, WARRANTY, OR OTHERWISE, AND
  7. WHETHER OR NOT SUCH PARTY HAD ADVANCE NOTICE OF THE POSSIBILITY OF
  8. SUCH DAMAGES. O-RAN SPECIFICATIONS ARE PROVIDED "AS IS" WITH NO
  9. WARRANTIES OR CONDITIONS WHATSOEVER, WHETHER EXPRESS, IMPLIED,
  10. STATUTORY, OR OTHERWISE. THE O-RAN ALLIANCE AND THE MEMBERS,
  11. CONTRIBUTORS OR ACADEMIC CONTRIBUTORS EXPRESSLY DISCLAIM ANY
  12. WARRANTY OR CONDITION OF MERCHANTABILITY, SECURITY, SATISFACTORY
  13. QUALITY, NONINFRINGEMENT, FITNESS FOR ANY PARTICULAR PURPOSE, ERROR-
  14. FREE OPERATION, OR ANY WARRANTY OR CONDITION FOR O-RAN
  15. SPECIFICATIONS.

## Section 8: ASSIGNMENT

* 1. Adopter may not assign the Agreement or any of its rights or obligations under this Agreement or
  2. make any grants or other sublicenses to this Agreement, except as expressly authorized hereunder,
  3. without having first received the prior, written consent of the O-RAN ALLIANCE, which consent

21 may be withheld in O-RAN ALLIANCE's sole discretion. O-RAN ALLIANCE may freely assign

1. this Agreement.

## Section 9: THIRD-PARTY BENEFICIARY RIGHTS

1. Adopter acknowledges and agrees that Members, Contributors and Academic Contributors
2. (including future Members, Contributors and Academic Contributors) are entitled to rights as a
3. third-party beneficiary under this Agreement, including as licensees under Section 3.

## Section 10: BINDING ON AFFILIATES

1. Execution of this Agreement by Adopter in its capacity as a legal entity or association constitutes
2. that legal entity's or association's agreement that its Affiliates are likewise bound to the obligations
3. that are applicable to Adopter hereunder and are also entitled to the benefits of the rights of Adopter
4. hereunder.

## Section 11: GENERAL

1. This Agreement is governed by the laws of Germany without regard to its conflict or choice of law
2. provisions.
3. This Agreement constitutes the entire agreement between the parties as to its express subject matter
4. and expressly supersedes and replaces any prior or contemporaneous agreements between the
5. parties, whether written or oral, relating to the subject matter of this Agreement.
6. Adopter, on behalf of itself and its Affiliates, agrees to comply at all times with all applicable laws,
7. rules and regulations with respect to its and its Affiliates' performance under this Agreement,
8. including without limitation, export control and antitrust laws. Without limiting the generality of
9. the foregoing, Adopter acknowledges that this Agreement prohibits any communication that would
10. violate the antitrust laws.
11. By execution hereof, no form of any partnership, joint venture or other special relationship is
12. created between Adopter, or O-RAN ALLIANCE or its Members, Contributors or Academic
13. Contributors. Except as expressly set forth in this Agreement, no party is authorized to make any
14. commitment on behalf of Adopter, or O-RAN ALLIANCE or its Members, Contributors or
15. Academic Contributors.
16. In the event that any provision of this Agreement conflicts with governing law or if any provision is
17. held to be null, void or otherwise ineffective or invalid by a court of competent jurisdiction, (i) such
18. provisions will be deemed stricken from the contract, and (ii) the remaining terms, provisions,
19. covenants and restrictions of this Agreement will remain in full force and effect.

18
---

- View in [GitHub Mode]({{site.github_page_url}}/O-RAN.WG7.IPC-HRD-Opt6-v02.00.docx.md).
- Go back to [Table of Contents]({{site.baseurl}}/).
- Download the [Original Document]({{site.download_url}}/O-RAN.WG7.IPC-HRD-Opt6-v02.00.docx).

---

* toc
{:toc}
