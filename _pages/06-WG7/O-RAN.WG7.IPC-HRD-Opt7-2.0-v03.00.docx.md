---
title: O-RAN.WG7.IPC-HRD-Opt7-2.0-v03.00.docx.md
author: O-RAN Alliance
layout: post
---

- View in [GitHub Mode]({{site.github_page_url}}/O-RAN.WG7.IPC-HRD-Opt7-2.0-v03.00.docx.md).
- Go back to [Table of Contents]({{site.baseurl}}/).
- Download the [Original Document]({{site.download_url}}/O-RAN.WG7.IPC-HRD-Opt7-2.0-v03.00.docx).

---

* toc
{:toc}

---

**O-RAN WG7**

**Hardware Reference Design Specification for Indoor Picocell**

**(FR1) with Split Architecture Option 7-2**

##### This is a re-published version of the attached final specification.

For this re-published version, the prior versions of the IPR Policy will apply, except that the previous requirement for Adopters (as defined in the earlier IPR Policy) to agree to an O-RAN Adopter License Agreement to access and use Final Specifications shall no longer apply or be required for these Final Specifications after 1st July 2022.

The copying or incorporation into any other work of part or all of the material available in this specification in any form without the prior written permission of O-RAN ALLIANCE e.V. is prohibited, save that you may print or download extracts of the material on this site for your personal use, or copy the material on this site for the purpose of sending to individual third parties for their information provided that you acknowledge O-RAN ALLIANCE as the source of the material and that you inform the third party that these conditions apply to them and that they must comply with them.

**O-RAN WG7**

**Hardware Reference Design Specification for Indoor Picocell**

**(FR1) with Split Architecture Option 7-2**

Copyright (C) 2021 by O-RAN ALLIANCE e.V.

By using, accessing or downloading any part of this O-RAN specification document, including by copying, saving, distributing, displaying or preparing derivatives of, you agree to be and are bound to the terms of the O-RAN Adopter License Agreement contained in the Annex ZZZ of this specification. All other rights reserved.

O-RAN ALLIANCE e.V.

Buschkauler Weg 27, 53347 Alfter, Germany Register of Associations, Bonn VR 11238 VAT ID DE321720189

Copyright (C) 2021 O-RAN ALLIANCE e.V. All Rights Reserved 1

# 1 Revision History

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **Date** | **Revision** | **Author** | **Description** |
| 07/12/202  1 | V03.00 | WG7 | Final Published Version |

</div>

2

3

# 1 Contents

1. Revision History 2
2. Chapter 1 Introductory Material 8
3. 1.1 Scope 8
4. 1.2 References 8
5. 1.3 Definitions and Abbreviations 9
6. 1.3.1 Definitions 9
7. 1.3.2 Abbreviations 9
8. Chapter 2 Hardware Reference Design 1 13
9. 2.1 O-CU Hardware Reference Design 13
10. 2.2 O-DU7-2 Hardware Reference Design 13
11. 2.2.1 O-DU7-2 High-Level Functional Block Diagram 13
12. 2.2.2 O-DU7-2 Hardware Design Description 14
13. 2.2.3 O-DU7-2 Hardware Components 15
14. 2.2.3.1 Digital Processing Unit 15
15. 2.2.3.2 Hardware Accelerator 16
16. 2.2.3.2.1 Accelerator Design Solution 1 16
17. 2.2.3.2.2 Accelerator Design Solution 2 18
18. 2.2.3.2.3 Accelerator Design Solution 3 21
19. 2.2.3.3 Baseboard Management Controller 23
20. 2.2.4 Synchronization and Timing 23
21. 2.2.4.1 Synchronization and Timing Design 1 23
22. 2.2.4.2 Synchronization and Timing Design 2 24
23. 2.2.5 External Interface Ports 24
24. 2.2.6 O-DU7-2 Firmware 25
25. 2.2.7 Mechanical 25
26. 2.2.8 Power Unit 27
27. 2.2.9 Thermal 28
28. 2.2.10 Environmental and Regulations 28
29. 2.3 O-RU7-2 Hardware Reference Design 28
30. 2.3.1 O-RU7-2 High-Level Functional Block Diagram 28
31. 2.3.2 O-RU7-2 Hardware Components 28
32. 2.3.2.1 Digital Processing Unit 32
33. 2.3.2.2 RF Processing Unit 35
34. 2.3.2.2.1 Transceiver Reference Design 35
35. 2.3.2.2.2 Power Amplifier (PA) Reference Design 41
36. 2.3.2.2.3 Low Noise Amplifier (LNA) Reference Design 42
37. 2.3.2.2.4 RF Switch Reference Design 45
38. 2.3.2.2.5 Antenna Reference Design 46
39. 2.3.3 Synchronization and Timing 47
40. 2.3.4 External Interface Ports 50
41. 2.3.5 Mechanical 51
42. 2.3.6 Power Unit 52
43. 2.3.7 Thermal 53
44. 2.3.8 Environmental and Regulations 53
45. 2.4 FHGW7-2 Hardware Reference Design 54
46. 2.4.1 FHGW7-2 High-Level Functional Block Diagram 54
47. 2.4.2 FHGW7-2 Hardware Components 55
48. 2.4.2.1 Digital Processing Unit 55
49. 2.4.3 Synchronization and Timing 57
50. 2.4.4 External Interface Ports 58
51. 2.4.5 Mechanical 59
52. 2.4.6 Power 60
53. 2.4.7 Thermal 60
54. 2.4.8 Environmental and Regulations 60
55. 2.5 FHGW7-2->8 Hardware Reference Design 61
56. 2.5.1 FHGW7-2->8 High-Level Functional Block Diagram 61
57. 2.5.2 FHGW7-2->8 Hardware Components 62
58. 2.5.2.1 Digital Processing Unit 62
59. 2.5.3 Synchronization and Timing 64
60. 2.5.4 External Interface Ports 65
61. 2.5.5 Mechanical 67
62. 2.5.6 Power 67
63. 2.5.7 Thermal 68
64. 2.5.8 Environmental and Regulations 68
65. Annex 1: Parts Reference List 69
66. Annex 2: FHGW7-2->8 Option 8 CPRI specification reference design 70
67. Annex 3: FHGW7-2->8 Option 8 CPRI spec reference design - Management plane 70
68. Annex 4: FHGW7-2->8 management plane reference design 70
69. Annex ZZZ: O-RAN Adopter License Agreement 109
70. Section 1: DEFINITIONS 109
71. Section 2: COPYRIGHT LICENSE 110
72. Section 3: FRAND LICENSE 110
73. Section 4: TERM AND TERMINATION 111
74. Section 5: CONFIDENTIALITY 111
75. Section 6: INDEMNIFICATION 111
76. Section 7: LIMITATIONS ON LIABILITY; NO WARRANTY 111
77. Section 8: ASSIGNMENT 112
78. Section 9: THIRD-PARTY BENEFICIARY RIGHTS 112
79. Section 10: BINDING ON AFFILIATES 112
80. Section 11: GENERAL 112

27

1 Tables

1. Table 2-1: The Processor Feature List 15
2. Table 2-2: The Memory Channel Feature List 15
3. Table 2-3: Accelerator Hardware Feature List 16
4. Table 2-4: Accelerator Firmware Feature List 17
5. Table 2-5: Accelerator Hardware Component List 19
6. Table 2-6: Accelerator Hardware Feature List 22
7. Table 2-7: Accelerator Firmware Feature List 22
8. Table 2-8: External Port List 24
9. Table 2-9: Power supply unit feature list 28
10. Table 2-10: Environmental Features 28
11. Table 2-11: Resource requirement for 2T2R O-RU7-2 32
12. Table 2-12: Resource requirement for 4T4R O-RU7-2 32
13. Table 2-13: Interface requirements of the Transceiver 35
14. Table 2-14: Payload with DPD in Digital Device (GBPS Rx/Tx) 36
15. Table 2-15: Payload with DPD in Transceiver (GBPS Rx/Tx) 36
16. Table 2-16: RF specifications in Transceiver 37
17. Table 2-17: PA Requirements 41
18. Table 2-18: Interface requirements of the transmit PA 41
19. Table 2-19: One stage LNA Requirements 42
20. Table 2-20: Two stage LNA Requirements 43
21. Table 2-21: Interface requirements of the RF switch 45
22. Table 2-22: RF Switch Requirements 45
23. Table 2-23: Antenna Requirements 46
24. Table 2-24: Interface requirements of the clocking 47
25. Table 2-25: Clocking RF requirements 48
26. Table 2-26: External Port List 50
27. Table 2-27: power unite requirement for 2T2R and 4T4R O-RU7-2 52
28. Table 2-28: Power unite function 52
29. Table 2-29: Environmental Features 53
30. Table 2-30: Interface requirements of the FPGA 55
31. Table 2-31: FPGA Resource usage for FHGW7-2 56
32. Table 2-32: Requirements of the PLL device 57
33. Table 2-33: External Port List 58
34. Table 2-34: Requirements of the power unit 60
35. Table 2-35: Interface Requirements of the FPGA 62
36. Table 2-36: FPGA Resource Usage for FHGW7-2-->8 63
37. Table 2-37: Requirements of the PLL device 64
38. Table 2-38: External Port List 65
39. Table 2-39: Power Unit Requirements 68

1

2 **Figures**

1. Figure 2-1: O-DU7-2 Functional Block Diagram 14
2. Figure 2-2: O-DU7-2 Hardware Block Diagram 14
3. Figure 2-3: Accelerator Design 1 without optional NIC Device 18
4. Figure 2-4: Accelerator Design 1 with optional NIC Device 18
5. Figure 2-5: Example 2-chip FPGA-based Hardware Acceleration in O-DU7-2 21
6. Figure 2-6: Structured ASIC Accelerator Design 23
7. Figure 2-7: O-DU7-2 Timing Synchronization 24
8. Figure 2-8: HW Acceleration Board Timing and Synchronization 24
9. Figure 2-9: External interfaces reference design 25
10. Figure 2-10: Mother Board Layout Diagram 26
11. Figure 2-11: Chassis Mechanical Diagram 27
12. Figure 2-12: High-Level Functional Block Diagram 28
13. Figure 2-13: 2T2R General Block Diagram with TR switch 29
14. Figure 2-14: 4T4R General Block Diagram with TR switch 29
15. Figure 2-15: Power estimation for 2T2R O-RU7-2 31
16. Figure 2-16: Power estimation for 4T4R O-RU7-2 32
17. Figure 2-17: FPGA Reference Design Diagram 32
18. Figure 2-18: Transceiver Reference Design Diagram (Optional elements are highlighted in Grey ) 40
19. Figure 2-19: PA Reference Design Diagram 42
20. Figure 2-20: One Stage LNA Diagram 44
21. Figure 2-21: Two-Stage LNA Diagram 44
22. Figure 2-22: RF Switch Reference Design Diagram 46
23. Figure 2-23: Whip Antenna 47
24. Figure 2-24: PLL Reference Design Diagram 49
25. Figure 2-25: SFP+ case and connector 50
26. Figure 2-26: RJ45 interface 51
27. Figure 2-27: O-RU7-2 Shell Mechanical Diagram 51
28. Figure 2-28: PoE Reference Design Diagram 53
29. Figure 2-29: FHGW7-2 General Block Diagram 54
30. Figure 2-30: FHGW7-2 Digital Processing Block Diagram 56
31. Figure 2-31: CLK reference design for FHGW7-2 57
32. Figure 2-32: SFP+ case and connector 58
33. Figure 2-33: RJ45 interface 59
34. Figure 2-34: AC power interface 59
35. Figure 2-35: Shell Mechanical Diagram 59
36. Figure 2-36: FHGW7-2->8 General Block Diagram 61
37. Figure 2-37: FHGW7-2->8 Digital Processing Block Diagram 63
38. Figure 2-38: CLK reference design for FHGW7-2->8 64
39. Figure 2-39: SFP+ case and connector 65
40. Figure 2-40: RJ45 interface 66
41. Figure 2-41: AC power interface 66
42. Figure 2-42: Shell Mechanical Diagram 67

6

7

# 1 Chapter 1 Introductory Material

## 1.1 Scope

1. This Technical Specification has been produced by the O-RAN.org.
2. The contents of the present document are subject to continuing work within O-RAN WG7 and may change following
3. formal O-RAN approval. Should the O-RAN.org modify the contents of the present document, it will be re-released by
4. O-RAN Alliance with an identifying change of release date and an increase in version number as follows:
5. Release x.y.z
6. where:
7. x the first digit is incremented for all changes of substance, i.e. technical enhancements,
8. corrections, updates, etc. (the initial approved document will have x=01).
9. y the second digit is incremented when editorial only changes have been incorporated in the
10. document.
11. z the third digit included only in working versions of the document indicating incremental
12. changes during the editing process. This variable is for internal WG7 use only.
13. The present document specifies system requirements and high-level architecture for the FR1 Picocell Indoor
14. deployment scenario as specified in the Deployment Scenarios and Base Station Classes document [1].
15. In the main body of this specification (in any "chapter") the information contained therein is informative, unless
16. explicitly described as normative. Information contained in an "Annex" to this specification is always informative
17. unless otherwise marked as normative.

20

## 1.2 References

1. The following documents contain provisions which, through reference in this text, constitute provisions of the present
2. document.
3. [1] ORAN-WG7.DSC.0-V01.00 Technical Specification, 'Deployment Scenarios and Base Station Classes for White
4. Box Hardware'. https://[www.o-ran.org/specifications](http://www.o-ran.org/specifications)
5. [2] 3GPP TR 21.905: "Vocabulary for 3GPP Specifications".
6. [3] 3GPP TR 38.104: "NR; Base Station (BS) radio transmission and reception".
7. <http://www.3gpp.org/ftp//Specs/archive/38_series/38.104/38104-g10.zip>
8. [4] ORAN-WG4.CUS.0-v01.00 Technical Specification, 'O-RAN Fronthaul Working Group Control, User and
9. Synchronization Plane Specification'. https://[www.o-ran.org/specifications](http://www.o-ran.org/specifications)
10. [5] 3GPP TS 38.113:"NR: Base Station (BS) Electromagnetic Compatibility (EMC)".
11. <http://www.3gpp.org/ftp//Specs/archive/38_series/38.113/38113-f80.zip>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| 1 | [6] | ORAN-WG7. IPC. HAR-v01.00 Technical Specification, 'Indoor Pico Cell Hardware Architecture and |
| 2 |  | Requirement Specification'. https://[www.o-ran.org/specifications.](http://www.o-ran.org/specifications) |
| 3 | [7] | ORAN-WG7. IPC. HRD.O8-v03.00 Technical Specification, 'Indoor Pico Cell BS Hardware Reference Design |
| 4 |  | Specifications with Fronthaul Split Option 8 and FR1'. https://[www.o-ran.org/specifications](http://www.o-ran.org/specifications) |
| 5 |  |  |

</div>

## 1.3 Definitions and Abbreviations

### 1.3.1 Definitions

1. For the purposes of the present document, the terms and definitions given in 3GPP TR 21.905 [1] and the following
2. apply. A term defined in the present document takes precedence over the definition of the same term, if any, in 3GPP
3. TR 21.905 [2]. For the base station classes of Pico, Micro and Macro, the definitions are given in 3GPP TR 38.104 [3].
4. **Carrier Frequency:** Center frequency of the cell.
5. **F1 interface:** The open interface between O-CU and O-DU7-2 as defined by 3GPP TS 38.473 between CU and DU.
6. **Integrated architecture:** In the integrated architecture, the O-RU and O-DUx are implemented on one platform. Each
7. O-RU and RF front end is associated with one O-DU7-2. They are then aggregated to O-CU and connected by F1
8. interface.
9. **Split architecture:** The O-RUx and O-DUx are physically separated from one another in this architecture. A switch

17 may aggregate multiple O-RUxs to one O-DUx. O-DUx switch and O-RUxs are connected by the fronthaul interface as

1. defined in WG4.
2. **Transmission Reception Point (TRxP**): Antenna array with one or more antenna elements available to the network
3. located at a specific geographical location for a specific area.

### 1.3.2 Abbreviations

1. For the purposes of the present document, the abbreviations given in [2] and the following apply. An abbreviation
2. defined in the present document takes precedence over the definition of the same abbreviation, if any, as in [2].

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| 24 | 7-2 | Fronthaul interface split option as defined by O-RAN WG4, also referred to as 7-2x |
| 25 | 3GPP | Third Generation Partnership Project |
| 26 | 5G | Fifth-Generation Mobile Communications |
| 27 | 5GC | 5G Core |
| 28 | ACS | Adjacent Channel Selectivity |
| 29 | ADC | Analog to Digital Converter |
| 30 | ASIC | Application Specific Integrated Circuit |
| 31 | ATA | Advanced Technology Attachment |
| 32 | BBDEV | Baseband Device |
| 33 | BH | Backhaul |
| 34 | BMC | Baseboard Management Controller |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| 1 | BPSK | Binary Phase Shift Keying |
| 2 | BS | Base Station |
| 3 | CISPR | International Special Committee on Radio Interference |
| 4 | CFR | Crest Factor Reduction |
| 5 | CU | Centralized Unit as defined by 3GPP |
| 6 | COM | Cluster Communication |
| 7 | CPRI | Common Public Radio Interface |
| 8 | CPU | Central Processing Unit |
| 9 | CRC | Cyclic Redundancy Check |
| 10 | DAC | Digital to Analog Converter |
| 11 | DDC | Digital Down Conversion |
| 12 | DDR | Double Data Rate |
| 13 | DIMM | Dual-Inline-Memory-Modules |
| 14 | DL | Downlink |
| 15 | DPD | Digital Pre-Distortion |
| 16 | DPDK | Data Plane Development Kit |
| 17 | DSP | Digital Signal Processor |
| 18 | DU | Distributed Unit as defined by 3GPP |
| 19 | DUC | Digital Up Conversion |
| 20 | ECC | Error Correcting Code |
| 21 | eCPRI | evolved Common Public Radio Interface |
| 22 | EMC | Electro Magnetic Compatibility |
| 23 | EVM | Error Vector Magnitude |
| 24 | FCC | Federal Communications Commission |
| 25 | FEC | Forward Error Correction |
| 26 | FFT | Fast Fourier Transform |
| 27 | FH | Fronthaul |
| 28 | FHGW | Fronthaul Gateway |
| 29 | FHMx | Fronthaul Multiplexer with no FH protocol translation, supporting an O-DUx with split option x |
| 30 |  | and an O-RUx with split option x, with currently available options 6?6, 7-2?7-2 and 8?8 |
| 31 | FHGWx?y | Fronthaul Gateway that can translate fronthaul protocol from an O-DUx with split option x to an |
| 32 |  | O-RUy with split option y, with currently available option 7-2?8. |
| 33 | FHHL | Full Height Half Length |
| 34 | FPGA | Field Programmable Gate Array |
| 35 | GbE | Gigabit Ethernet |
| 36 | GNSS | Global Navigation Satellite System |
| 37 | GPP | General Purpose Processor |
| 38 | GPS | Global Positioning System |
| 39 | HARQ | Hybrid Automatic Repeat request |
| 40 | HHHL | Half Height Half Length |
| 41 | IEEE | Institute of Electrical and Electronics Engineers |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| 1 | IFFT | Inverse Fast Fourier Transform |
| 2 | IMD | Inter Modulation Distortion |
| 3 | I/O | Input/Output |
| 4 | JTAG | Joint Test Action Group |
| 5 | L1 | Layer 1 |
| 6 | LDPC | Low-Density Parity Codes |
| 7 | LRDIMM | Load-Reduced Dual In-line Memory Module |
| 8 | LTE | Long Term Evolution |
| 9 | LVDS | Low-Voltage Differential Signaling |
| 10 | MAC | Media Access Control |
| 11 | MCP | Multi-Chip Package |
| 12 | MH | Midhaul |
| 13 | MIG | Memory Interface Generator |
| 14 | MII | Media-Independent interface |
| 15 | MIMO | Multiple Input Multiple Output |
| 16 | MU-MIMO | Multiple User MIMO |
| 17 | NEBS | Network Equipment-Building System |
| 18 | NetConf | Network Configuration Protocol |
| 19 | NFV | Network Functions Virtualization |
| 20 | NIC | Network Interface Controller |
| 21 | NR | New Radio |
| 22 | O-CU | O-RAN Centralized Unit as defined by O-RAN |
| 23 | O-DUx | A specific O-RAN Distributed Unit having fronthaul split option x where x may be 6, 7-2 (as |
| 24 |  | defined by WG4) or 8 |
| 25 | O-RUx | A specific O-RAN Radio Unit having fronthaul split option x, where x is 6, 7-2 (as defined by |
| 26 |  | WG4) or 8, and which is used in a configuration where the fronthaul interface is the same at the O- |
| 27 |  | DUx |
| 28 | OCXO | Oven Controlled Crystal Oscillator |
| 29 | PCIe | Peripheral Component Interface Express |
| 30 | PDCP | Packet Data Convergence Protocol |
| 31 | PHY | Physical Layer |
| 32 | PMBus | Power Management Bus |
| 33 | POE | Power over Ethernet |
| 34 | PPS | Pulse Per Second |
| 35 | PRACH | Physical Random Access Channel |
| 36 | QAM | Quadrature Amplitude Modulation |
| 37 | QPSK | Quadrature Phase Shift Keying |
| 38 | QSFP | Quad Small Form-factor Pluggable |
| 39 | RAN | Radio Access Network |
| 40 | RDIMM | Registered Dual In-line Memory Module |
| 41 | RF | Radio Frequency |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| 1 | RoE | Radio over Ethernet |
| 2 | RU | Radio Unit as defined by 3GPP |
| 3 | RX | Receiver |
| 4 | SATA | Serial ATA |
| 5 | SDU | Service Data Unit |
| 6 | SFP | Small Form-factor Pluggable |
| 7 | SFP+ | Small Form-factor Pluggable plus |
| 8 | SOC | System On Chip |
| 9 | SPI | Serial Peripheral Interface |
| 10 | SSD | Solid State Drive |
| 11 | TCXO | Temperature Compensate Crystal Oscillator |
| 12 | TDP | Thermal Design Power |
| 13 | TR | Technical Report |
| 14 | TS | Technical Specification |
| 15 | TX | Transmitter |
| 16 | UL | Uplink |
| 17 | USB | Universal Serial Bus |
| 18 | WG | Working Group |
| 19 |  |  |

</div>

# 1 Chapter 2 Hardware Reference Design 1

1. This chapter describes a white box hardware reference design example for indoor Picocell deployment scenario. It
2. includes O-CU, O-DU7-2 and FHM7-2/FHGW7-2?8 for IPC deployment scenario.

## 2.1 O-CU Hardware Reference Design

1. The O-CU white box hardware is the platform that perform the O-CU function of upper L2 and L3. The hardware
2. systems specified in this document meet the computing, power and environmental requirements of use cases
3. configurations and feature sets of RAN physical node. These requirements are described in the early hardware
4. requirement specification as well as in the use cases document. The O-CU hardware includes the chassis platform,
5. mother board, peripheral devices and cooling devices. The mother board contains processing unit, memory, the internal
6. I/O interfaces, and external connection ports. The midhaul (MH) and backhaul (BH) interface are used to carry the
7. traffic between O-CU and O-DU7-2 as well as O-CU and core network. The other hardware functional components
8. include: the storage for software, hardware and system debugging interfaces, board management controller, just to name
9. a few; the O-CU designer will make decision based on the specific needs of the implementation.
10. The HW reference design of O-CU is the same as O-DU7-2 except for the need of HW accelerator, thus detail design
11. will be described in O-DU7-2 section 2.2.

## 2.2 O-DU7-2 Hardware Reference Design

1. The O-DU7-2 white box hardware is the platform that performs the O- DU7-2 functions such as upper L1 and lower L2
2. functions. The hardware systems specified in this document meet the computing, power and environmental
3. requirements of use case's configurations and feature sets of RAN physical node. These requirements are described in
4. the early hardware requirement specification as well as in the use cases document. The O-DU7-2 hardware includes the
5. chassis platform, mother board, peripheral devices and cooling devices. The mother board contains processing unit,
6. memory, the internal I/O interfaces, and external connection ports. The fronthaul and backhaul interface are used to
7. carry the traffic between O-RU7-2/FHM7-2/FHGW7-2?8 and O-DU7-2 as well as O-CU and O-DU7-2. The O-DU7-2 design

24 may also provide an interface for hardware accelerator if that option is preferred. The other hardware functional

1. components include: the storage for software, hardware and system debugging interfaces, board management controller,
2. just to name a few; the O-DU7-2 designer will make decision based on the specific needs of the implementation.
3. Note that the O-DU7-2 HW reference design is also feasible for O-CU and integrated O-CU/ O-DU7-2.

### 2.2.1 O-DU7-2 High-Level Functional Block Diagram

1. Figure 2-1 shows the major functional blocks of O-DU7-2. The digital processing unit handles the baseband processing
2. workload. To make the processing more efficient, an accelerator can be used to assist with the baseband workload
3. processing. The memory devices include the random-access memory (RAM) for temporary storage of data while flash
4. memory is used for codes and logs. The storage device is for persistent storage. The external network cards can be used
5. for fronthaul or backhaul connection. The baseboard management controller (BMC) is a microcontroller which
6. monitors hardware operation on motherboard. The clock circuits provide digital processing unit with required clock
7. signals.

![]({{site.baseurl}}/assets/images/a4cfd20d5fc0.png)![]({{site.baseurl}}/assets/images/e55ddf51234f.png)![]({{site.baseurl}}/assets/images/a95a545e7089.png)![]({{site.baseurl}}/assets/images/3e8f55eb47ef.png)![]({{site.baseurl}}/assets/images/d70322a716ad.png)![]({{site.baseurl}}/assets/images/ae9f8d44eacc.png)![]({{site.baseurl}}/assets/images/78fdcba5a961.png)![]({{site.baseurl}}/assets/images/11f86d15d6f1.png)![]({{site.baseurl}}/assets/images/2e6fd6b76acf.png)

Clock

Ethernet Card

Storage Drives

Baseboard Management Controller

Flash Memory

DDR RAM

Accelerator

Digital Processing Unit

4

1. **Figure 2-1: O-DU7-2 Functional Block Diagram.**

### 2.2.2 O-DU7-2 Hardware Design Description

1. Figure 2-2 describes the various components and connections inside the O-DU7-2 white box.

![]({{site.baseurl}}/assets/images/3f8f54b5f186.jpg)1

###### Figure 2-2: O-DU7-2 Hardware Block Diagram

1. As described in the previous section, the O-DU7-2 hardware can be implemented with difference design choices. Here,
2. we use a SoC design-based as an example which performs most of the workload for O-DU7-2. The accelerator can be
3. used to perform other functions based on the overall performance requirement. Several Ethernet controllers are also
4. used for front haul link, back haul link and remote console control connection. The other parts include: RAM, flash
5. memory, and hard drive storage. The JTAG and USB ports are provided for hardware debug and local connection if
6. needed. Finally, BMC block is mainly responsible for monitoring the hardware status of the motherboard.

### 2.2.3 O-DU7-2 Hardware Components

1. In this section, we describe the details of the O-DU7-2 hardware component's requirements, their features and
2. parameters. The component selection is based on the use case requirements which are listed in the hardware architecture
3. and requirements document [6].
4. 2.2.3.1 Digital Processing Unit
5. This example of the digital processing unit in O-DU7-2 is based on the General Purpose Processor (GPP).
6. *a. Digital Processing Unit Requirement*
7. The GPP requirements are listed in the following table.

###### Table 2-1: The Processor Feature List

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Item Name** | **Description** |
| # of Cores | 16 |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| # of Threads | 32 |
| Base Frequency | 2.20 GHz |
| Max Turbo Frequency | 3.00 GHz |
| Cache | 22 MB |
| Thermal Design Power (TDP) | 100W |
| Max Memory Size (dependent on memory type) | 512 GB |
| Memory Types | DDR4 |
| Max # of Memory Channels | 4 |

</div>

1

* 1. **Interfaces:** The interface specification on the main board are as follows:
  2. **Memory Channel Interfaces:** The system memory capacity, type and related information are described in the
  3. following table.

5

###### 6 Table 2-2: The Memory Channel Feature List

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

7

1. **PCIe:** PCIe Gen 3 should be supported by the processor. There are total of 32 PCIe lanes with 128 Gb/s
2. bandwidth. The 32 PCIe lanes can be divided into two x16 slots by using a riser card.
3. **Ethernet:** The system should be capable to offer aggregated 48 Gb/s Ethernet bandwidth. The breakout the
4. ports are discussed in later section. When higher Ethernet bandwidth required, an Ethernet card can be
5. installed in one of the PCIe slot.
6. *b. Digital Processing Unit Design*
7. The digital processing unit is a system-on-a-chip (SoC) device which is a 64-bit multi-core server class
8. processor. This SoC includes an integrated Platform Controller Hub (PCH), integrated high-speed I/O,
9. Integrated Memory Controllers (IMC), and four integrated 10 Gigabit Ethernet ports.
10. The SOC supports 512-bit wide vector processing instruction set. It also supports hardware virtualization to
11. enable dynamic provisioning of services as communication service providers extend network functions
12. virtualization (NFV). Figure 2-2 shows the major functional blocks of the digital processing unit.
13. 2.2.3.2 Hardware Accelerator
14. Hardware accelerators can be used in O-DU7-2 to offload computationally intensive functions and to optimize the
15. performance under varying traffic and loading conditions. The acceleration functional requirements and implementation
16. are system designer's choice; however, the O-DU7-2 shall meet the minimum system performance requirements under
17. various loading and deployment conditions. In most cases, a Field Programmable Gate Array (FPGA) or Application
18. Specific Integrated Circuit (ASIC) based PCIe card can be used to optimize the system performance. The FPGA(s) are
19. part of a Network Interface Controller (NIC) that further provides connectivity services.
20. 2.2.3.2.1 Accelerator Design Solution 1
21. Channel coding for Low-Density Parity Codes (LDPC) and fronthaul compression requires a significant amount of bit
22. level processing and is well suited to a fine-grained FPGA architecture and/or low cost/power structured ASIC. Options
23. include:

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| 5 | ? | Virtualization: Multi-channel DMA, Virtual machine integration, load balancing functions |
| 6 | ? | Look-aside FEC: LDPC (de)coding, Polar (de)coding, Rate (De)Matcher, (De) Interleaver, Cyclic Redundancy |
| 7 |  | Check (CRC), Hybrid Automatic Repeat request (HARQ) retransmission |
| 8 | ? | Bump-in-wire Fronthaul: compression / decompression for latency and bandwidth reduction |
| 9 | ***a.*** | ***Accelerator Requirements*** |
| 10 |  | Hardware and firmware requirements for this accelerator design are given in Table 2-3 and Table 2-4, |
| 11 |  | respectively. |
| 12 |  | **Table 2-3: Accelerator Hardware Feature List** |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Item Name** | **Description** |
| PCIe (Interface with digital processing unit) | Gen4 x16 (and lower) |
| Form factor | FHHL |
| Connectivity | 2x QSFP28/56 |
| FPGA | Logic Elements: 1437K M20K Memory: 139Mb  Quad A53 Hard Processor Sub-system |
| NIC Device | 100Gb xHAUL for FH, BH & MH traffic shaping. Optional FPGA co-processing. |
| DDR Main | 8+8+1GB DDR4 |
| Flash (FPGA images) | >=1 Gbit |
| BMC | Telemetry, Security, remote upgrade |
| Clocking | For O-RAN C1, C2, C3 & C4 |
| Fronthaul | eCPRI, RoE IEEE1914.3, O-RAN WG4 |
| GPS | SMA for 1 PPS & 10MHz (in/out) |
| Operating Temperature (ambient) | NEBS Compliant |
| Power | <75W (without optional NIC device) |
| Clock Accuracy | Low-Jitter, configurable clock ranging from 10MHz to 750MHz. Option for OCXO (TCXO as standard) |

</div>

13

1

###### Table 2-4: Accelerator Firmware Feature List

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Item Name** | **Description** |
| Remote system upgrade | Securely upgradable FPGA flash image |
| Queuing | 64 Queues supported equally split between UL & DL. |
| LDPC Acceleration | NR LDPC Encoding with, interleaving and rate-matching.  NR LDPC Decoding with sub-block de-interleaving function of reverse rate matching.  Early Termination, CRC attachment and HARQ buffering. 5G Throughput: DL 14.8Gbps, UL 3.2Gbps |
| Load Balancing (channel coding) | Load balancer distributes the pending encoder/decoder requests to  encoder/decoders |
| Descriptor Format (channel coding) | Code block based interface.  Software enablement by BBDEV API (DPDK)  https://[www.dpdk.org/](http://www.dpdk.org/) https://doc.dpdk.org/guides/prog\_guide/bbdev.html |
| Fronthaul Compression | In-line compression/decompression for Mu-Law, block-floating  point and quantization according to the O-RAN WG4 specification. |
| Open programmable acceleration environment | Support for:   * FPGA Flashing upgrade * Firmware version reporting * PCIe diagnostics * Ethernet diagnostics * Temperature and voltage telemetry information |

</div>

3

1. *b. Accelerator Design*
2. Figure 2-3 illustrates Accelerator Design 1 without optional NIC Device. Figure 2-4 illustrates the Accelerator
3. Design 1 with optional NIC Device.

PCIe Gen 4x16 Or lower (200G)

**FPGA**

Connectivity & L1

Processing. C1,2,3,4 Sync

**Digital Processing Unit**

L3,L2,L1(part)

FH 2x2x56Gbps Or lower

1PPS & 10MHz

SMA

7

###### 8 Figure 2-3: Accelerator Design 1 without optional NIC Device

1

FH 2x2x56Gbps Or lower

**FPGA**

PCIe

Gen4x16

PCIe Gen 4x8 Or lower (100G)

Connectivity & L1 Processing.

C1,2,3,4 Sync

1PPS & 10MHz SMA

100Gb

**NIC**

**Digital Processing Unit**

L3,L2,L1(part)

PCIe Gen 4x8 Or lower (100G)

2

###### Figure 2-4: Accelerator Design 1 with optional NIC Device

1. 2.2.3.2.2 Accelerator Design Solution 2
2. The O-DU7-2 system is typically implemented using a multi-core processor and one or more hardware accelerators.
3. Parts of O-DU7-2 protocol stack can be implemented in software running on the multi-core processors, some of the
4. computationally intensive L1 and L2 functions are offloaded to FPGA-based or similar hardware accelerators. This is a
5. programmable hardware, which provides both flexibility and high computing capabilities.
6. *a. Accelerator Requirement*
7. The accelerator unit comprises one or more FPGAs (e.g., two FPGAs), sufficient amount of DDR4 memory,
8. and synchronization circuitry where one of FPGAs is used for L1 functional offload and the other one is used
9. to perform fronthaul connectivity functions/protocols. The FPGA for L1 offload uses dedicated cores for
10. channel encoding/decoding as well as FPGA and processing resources for running L1 functions such as but
11. not limited to rate matching and de-matching, interleaving and scrambling, demodulation and HARQ buffer
12. management as well as OFDM modulation/demodulation and channel estimation.
13. Key features of the FPGA-based accelerator include:
14. ? 2X10/25G eCPRI or Ethernet open fronthaul interface
15. ? Built-in SyncE/IEEE 1588v2 synchronization + external reference timing
16. ? L1 offloading options
17. - LDPC encoding and decoding
18. - Polar encoding and decoding
19. - HARQ management with on board DDR memory (including DDR controller and interfaces)
20. - Other L1 offloading candidates include PRACH detection, MIMO encoding and decoding,
21. channel estimation
22. - Partial or full L1 functions can be offloaded. It is recommended to offload the user-plane
23. channel coding chain and part of or the entire control-plane channel coding chain to the
24. hardware accelerator.
25. ? PCIe Gen3 x16, two Gen4 x8, or PCIe Gen3 x16 bifurcated to two Gen3 x8
26. ? GPP supported
27. ? Standard PCIe FHHL card (It is assumed that the hardware accelerators further perform NIC functions).
28. ? 2x SFP28 for 25G Ethernet
29. ? 8GB DDR4 memory for buffering
30. ? Power consumption not to exceed 75W
31. The accelerator requirements are summarized in Table 2-5.

###### Table 2-5: Accelerator Hardware Component List

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Item Name** | **Description for FPGA 1** | **Description for FPGA 2** |
| SoC Resources | System Logic cells - 930K CLB LUT - 425K  SDFEC -8  DSP Slices - 4,272 BRAM - 38.0Mb URAM - 22.5Mb | System Logic cells - 1,143K CLB LUT - 523K  CLB Flip-Flops -1,045K DSP Slices - 1,968 BRAM - 34.6Mb URAM - 36.0Mb |
| Form Factor | FHHL PCIe Form Factor | |
| PCIe Interface | x8 Gen1, Gen2, Gen3 interface to FPGA 2 and x8 Gen1, Gen2, Gen3 interface to FPGA 1  have x16 to two x8 bifurcation | |
| On Board Memory | Total Capacity 4 GB in PL, upgradeable to 8GB Total Capacity 2 GB in PS, upgradeable to 4GB | Total Capacity 4 GB in PL, upgradeable to 8GB Total Capacity 2 GB in PS, upgradeable to 4GB |
| Network Interface(s) |  | 2xSFP28 optical interfaces to FPGA2  (User Configurable, includes 10/25 Ethernet) |
| Other External Interface(s) | Micro USB for JTAG support (FPGA programming and debug) and access to BMC | |
| Graphical User interface | GUI for monitoring the basic board parameters, monitoring temperature alerts, firmware upgrades for BMC | |
| Board Management Controller | * Power sequencing and reset * Field upgrades * FPGA configuration and control * Clock configuration * I2C bus access * USB 2.0 | |
| Operating Temperature | -5?C - 55?C | |
| Power | < 75 W | |

</div>

Clocking Options

Low-Jitter, configurable clock ranging from10MHz to 750MHz

1 PPS input and output with assembly option for OCXO and TCXO

1

2

3

1. The following are the accelerator's functional and interface requirements.
2. **Functional offload requirements:**
3. One of the candidate functions for offloading is the LDPC encoder and decoder, which typically consists of
4. computationally intensive and relatively highly power consuming functions. It must be noted that neither
5. software implementation in CPU nor soft FPGA logic implementation would provide a highly power efficient
6. solution while meeting/exceeding 3GPP NR user-plane encoder/decoder throughput and latency requirements,
7. rather a hardened implementation of the FEC functions would be very power efficient. Downlink and uplink
8. throughputs of up to 40Gbps and 18Gbps, respectively, are shown feasible with this architecture. Other
9. candidate L1 functions for acceleration include CRC generation, segmentation, bit-level/sub-block
10. interleaving and scrambling as well as FFT/IFFT processing, for which an FPGA can be used.
11. For other symbol processing L1 functions which require heavy multiply and accumulation operations, FPGAs
12. 1 and 2 have DSP blocks that can efficiently perform these operations. Polar encoding and/or decoding on the
13. control-plane can also be offloaded to FPGA 1 resulting in high throughputs and low latencies.
14. **Interface requirements:**
15. **PCIe:** PCIe interface is widely used to provide interface between the GPP and hardware accelerators. FPGA
16. devices have dedicated PCIe hard IP which facilitate implementation and quick setup of PCIe interface. They
17. support both PCIe Gen3 x16 or PCIe Gen4 x8, which allow the FPGA device to interface with any GPP
18. supporting either PCIe Gen3 x16 or PCIe Gen4 x8 interface.
19. **Fronthaul:** FPGA devices can support various speed grades and any fronthaul protocols, customers can use
20. off-the-shelf eCPRI or Ethernet IPs to quickly implement and configure any fronthaul interface protocol.
21. **Serial transceivers:** FPGA devices have SerDes resources to implement various connectivity speeds (e.g., 33
22. Gb/s) per SerDes, 10G/25G/50G/100G Ethernet connections can use these SerDes resources.
23. **Ethernet MAC speed:** FPGA devices have hardened implementations of Ethernet MAC that support speeds
24. of 100 Gbps and above. The Ethernet MAC IP allows power-efficient implementation of high speed Ethernet
25. connectivity. In the example shown in Figure 2-3, FPGA 1 and FPGA 2 can use the hard 100Gbps MAC IPs
26. to connect each other, allowing the L1 and fronthaul functions to be distributed across these two FPGAs with
27. less connectivity overhead. For other Ethernet MACs such as 10G/25G Ethernet, they provide soft Ethernet
28. MAC IPs, so when implementing eCPRI or Ethernet fronthaul functions, 10G/25G Ethernet MAC can be
29. used.
30. *b. Accelerator Design*
31. The hardware accelerator supports GPP. Figure 2-5 illustrates a two-chip acceleration architecture comprising
32. two FPGAs with multi-lane PCIe interfaces toward the CPU and external connectivity toward O-RU7-2(s) via
33. eCPRI and O-CU(s) through GbE connectivity. The example architecture further depicts multi-lane Gen3 or
34. Gen4 PCIe interfaces between each FPGA and the CPU. The FPGAs communicate through high-bandwidth
35. Ethernet (GbE) transport.

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **FPGA1**  **(L1 Offload)** | |
|  | Inter-Chip Interface 100G Ethernet |
| **FPGA2**  **(Connectivity)** | |

</div>

[Bifurcated] PCIe Interface PCIe Gen3x16 (Gen4x8)

**X86 or ARM-based CPU**

**(L2 and Partial L1)**

F1 Interface Ethernet (10/25G)

1 100G

Fronthaul Interface

10/25G

Ethernet/eCPRI

* 1. **Figure 2-5: Example 2-chip FPGA-based Hardware Acceleration in O-DU7-2**
  2. 2.2.3.2.3 Accelerator Design Solution 3
  3. Channel coding for LDPC and fronthaul compression requires a significant amount of bit level processing and is well
  4. suited to a fine-grained structured ASIC. Features include:
  5. ? Virtualization: Multi-channel DMA, Virtual machine integration, load balancing functions
  6. ? Look-aside FEC: Turbo (de)coding, LDPC (de)coding, Rate (De)Matcher, (De) Interleaver, CRC, HARQ
  7. retransmission & (de) interleaver.
  8. *a. Accelerator Requirement*
  9. Accelerator Hardware and Firmware features are listed in Table 2-6 and Table 2-7, respectively. 11

###### 12 Table 2-6: Accelerator Hardware Feature List

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Item Name** | **Description** |
| PCIe | Gen3 x16 |
| Form factor | HHHL |
| DDR | DDR4 (64-bit +ECC), 2667Mbps Interface for HARQ buffering |
| Board Management Controller | Telemetry, Security. |
| Power | <35W |

</div>

13

14

1

###### Table 2-7: Accelerator Firmware Feature List

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Item Name** | **Description** |
| Queuing | 64 Queues supported equally split between UL & DL. |
| LDPC Acceleration | NR LDPC Encoding with, interleaving and rate-matching.  NR LDPC Decoding with sub-block de-interleaving function of reverse rate matching.  Early Termination, CRC attachment and HARQ buffering. 5G Throughput: DL 23Gbps, UL 8Gbps |
| Load Balancing (channel coding) | Load balancer distributes the pending encoder/decoder requests to encoder/decoders |
| Descriptor Format (channel coding) | Code block and transport block based interface. Software enablement by BBDEV API (DPDK) https://[www.dpdk.org/](http://www.dpdk.org/)  https://doc.dpdk.org/guides/prog\_guide/bbdev.html |

</div>

3

1. *b. Accelerator Design*
2. The following diagram shows the structured ASIC based accelerator design. 6

PCIe Gen 3x16 Or lower (100G)

**Structured ASIC**

LDPC

Code/Transport Block

**Digital**

**Processing Unit**

L3,L2,L1(part)

7

1. **Figure 2-6: Structured ASIC Accelerator Design**
2. 2.2.3.3 Baseboard Management Controller
3. BMC is used to perform hardware power control (power on, power off and power cycle), monitor hardware status
4. (temperatures, voltages, etc), monitor Basic I/O System (BIOS)/ Unified Extensible Firmware Interface (UEFI)
5. firmware status, and log system events. It provides remote access via shared or dedicated NIC. System user can do
6. console access via serial or physical/Kernel-based Virtual Machine (KVM). The BMC has dedicated RAM and flash
7. memory. It provides access via serial port or Ethernet port. Figure 2-2 describes the BMC connections with related
8. components.

### 2.2.4 Synchronization and Timing

1. 2.2.4.1 Synchronization and Timing Design 1
2. This section describes the synchronization and timing mechanism that is used in the O-DU7-2.
3. *a. Hardware Requirements*
4. The O-DU7-2 shall support following timing synchronization methods:
5. 1. GPS Synchronization
6. 2. Ethernet based IEEE1588V2 Synchronization
7. 3. BeiDou Synchronization
8. 4. BeiDou and GPS switching
9. **b. *Hardware Design***
10. Depending on the timing distribution topologies used, the O-DU7-2 system clock is able to synchronize with
11. the Grand Master Clock (GMC) using IEEE1588 via either the front haul NIC or backhaul NIC, or
12. synchronizing timing using Global Navigation Satellite System (GNSS). In the case of IEEE1588, the
13. Physical Hardware Clock (PHC) within the NIC is synchronized with the GMC first, then the O-DU7-2 system
14. clock is synchronized with the PHC. The O-DU7-2 is also capable to provide clock to the O-RU7-2 via front
15. haul if needed. When GNSS becomes available to O-DU7-2, it will be able to synchronize the system clock to
16. Coordinated Universal Time (UTC). Figure 2-7 outlines the O-DU7-2 timing synchronization mechanisms.

![]({{site.baseurl}}/assets/images/f0c47b4c0bb4.png)![]({{site.baseurl}}/assets/images/6ba64864b837.png)![]({{site.baseurl}}/assets/images/3db2b2f5ed0d.png)![]({{site.baseurl}}/assets/images/5cd522dd33f7.png)![]({{site.baseurl}}/assets/images/9c87a7806d18.png)![]({{site.baseurl}}/assets/images/88d7f20d9020.png)![]({{site.baseurl}}/assets/images/435a7574313d.png)![]({{site.baseurl}}/assets/images/69bf537e10f9.png)![]({{site.baseurl}}/assets/images/8930c2c21592.png)![]({{site.baseurl}}/assets/images/74922325eb4c.png)![]({{site.baseurl}}/assets/images/f3f409e460e3.png)![]({{site.baseurl}}/assets/images/0ff0069001dd.png)

1pps

PHC

System Clock

PHC

NIC

Backhaul

NIC

Fronthaul

GNSS

18

###### 19 Figure 2-7: O-DU7-2 Timing Synchronization

20

1. 2.2.4.2 Synchronization and Timing Design 2
2. This section describes the synchronization and timing mechanism that is used in the hardware accelerator board.
3. *a. Hardware Requirements*
4. Each hardware accelerator board that supports connectivity functions (e.g., O-RAN fronthaul) in O-DU7-2
5. must be able to support external synchronization I/O and to receive or transmit 1 PPS reference clock source
6. in order to ensure synchronization across network.
7. *b. Hardware Design*
   1. The accelerator board can operate in the master or slave mode when supporting IEEE 1588v2
   2. timing/synchronization. It can generate 1 PPS reference clock for synchronization in the master mode and can
   3. receive the 1 PPS reference clock in the slave mode for internal synchronization. The timing circuitry of the
   4. accelerator board is shown in Figure 2-8. Two FPGA SerDes transceivers are used to receive and transmit
   5. SyncE TX and RX clocks. 6

7

SyncE RX Clock

SyncE TX Clock

TCXO/OCXO Reference

PLL

1 PPS

GPS (1 PPS)

Other Clocks

SerDes

SerDes FPGA

(IEEE 1588v2

Stack)

8

9 **Figure 2-8: HW Acceleration Board Timing and Synchronization**

### 2.2.5 External Interface Ports

1. The external interfaces of O-DU7-2 are described below.
2. *a. Hardware Requirements*
3. The following table shows the external ports or slots that the system provided.

##### Table 2-8: External Port List

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Item Name** | **Description** |
| Ethernet | Octave Gigabit Ethernet LAN connectors |
| Dual 10GbE Base-T Ethernet connectors |
| Dual 10GbE SFP+ Faber Ethernet connectors |
| 2x100G QSFP28 or 2x25G SFP28 |
| USB | 2 USB 3.0 ports |
| Serial Port | 1 COM port via RJ45 |
| Antenna port | 1 SMA connector for GNSS |

</div>

15

###### *b.* Hardware Design

1. The digital processing unit is a SOC device which provides the external ports described in the hardware
2. requirement section. The system includes 2 USB 3.0 ports, and the serial RS232 port that can be used for
3. Console Redirection, e.g. Out-of-Band Management. The system provides eight 1Gbps and four 10Gbps
4. Ethernet ports. There are two or four 25G eCPRI ports in system depends on the accelerator card used. The
5. system also provides a RF interface to connect GNSS antenna. The following diagram outlines the external
6. interfaces that supported.

1

![]({{site.baseurl}}/assets/images/b236af201067.png)![]({{site.baseurl}}/assets/images/0989c440d1f9.png)![]({{site.baseurl}}/assets/images/7c059ba0e0a0.png)![]({{site.baseurl}}/assets/images/8ef97a475722.png)![]({{site.baseurl}}/assets/images/88428decc750.png)

Ethernet

Ports

Serial Port

2 USB 3.0

Ports

GNSS

Antenna Port

O-DU7-2

* 1. **Figure 2-9: External interfaces reference design**

### 2.2.6 O-DU7-2 Firmware

* 1. BIOS and BMC firmware are needed in the system and shall be installed.

### 2.2.7 Mechanical

* 1. The mechanical design for mother board, chassis, and cooling are listed in this section.

##### ? Mother Board

* 1. The mechanical layout of the mother board shows the location of major components and interface ports. The
  2. following diagram also provides the dimension of the board.

10

11

![]({{site.baseurl}}/assets/images/7f5c6929fd3b.jpg)

1

2

1. ? Chassis

###### Figure 2-10: Mother Board Layout Diagram

1. The 1U rack mount chassis contains the layout of the power supply, Solid State Drive (SSD) and fans. The
2. chassis dimension is showed in following figure.

![]({{site.baseurl}}/assets/images/01d7ff6a12b0.jpg)1

###### 2 Figure 2-11: Chassis Mechanical Diagram

3

4

##### c. Cooling

1. The system installs 4x 40x28mm PWM fans for the cooling. Up to 6 fans can be installed if needed.

### 2.2.8 Power Unit

1. In a fully loaded system with two PCIe slots populated with 75W each, the system power consumption should be less
2. than 400W. The total system power requirement shall be kept less than 80% of the power supply capacity.
3. *a. Hardware Requirements*
4. The power is provided by 500W High-Efficiency power supply with Power Management Bus (PMBus) 1.2.
5. The power support input and output power rails are listed below.

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| 13 | AC Input: | 100-240V, 50-60Hz, 6.6A max |
| 14 | DC Output: | +3.3V: 12A |
| 15 |  | +5V: 15A |
| 16 |  | +5V standby: 3A |
| 17 |  | +12V: 41A |
| 18 |  | -12V: 0.2A |

</div>

19 *b. Hardware Requirements*

1. The O-DU7-2 chassis includes one 500W power supply unit. The power supply unit is auto-switching capable,
2. which enables it to automatically sense and operate at a 100v to 240v input voltage. The power supply unit
3. features are listed in the following table.
4. **Table 2-9: Power supply unit feature list**

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Item Name** | **Description** |
| Output connectors | 24pin/8pin/4+4pin/HDD/I2C |
| Dimension (W x D x H) | 3.9 x 7.1 x 1.6 inch |
| Maximum Output Power | +3.3V: 12A |
|  | +5V: 15A |
|  | +12V: 41A |
|  | -12V: 0.2A |
|  | +5Vsb: 3A |
| Rated Input Voltage/Current | 100-240Vac / 6.6A max |
| Rated Input Frequency | 50-60HZ |
| Inrush current | Less than 30A |

</div>

### 2.2.9 Thermal

1. Active cooling with up to 6 fans is integrated in the chassis.
2. The hardware acceleration cards described in Section 2.2.2.2 use passive cooling and a custom heatsink and is equipped
3. with temperature sensors. It is designed to operate in temperatures ranging from -5?C to +55?C.

### 2.2.10 Environmental and Regulations

1. The O-DU7-2 hardware system is RoHS Compliant. The power supply unit is EMC FCC/CISPR Class B compliant.
2. Table 2-10 lists the environmental related features and parameters.

###### Table 2-10: Environmental Features

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Item Name** | **Description** |
| Operating Temperature | -5?C to +55?C |
| Non-operating Temperature | -40?C to 70?C |
| Operating Relative Humidity | 8% to 90% (non-condensing) |
| Non-operating Relative Humidity | 5% to 95% (non-condensing) |

</div>

1. The hardware accelerator described in Section 2.2.2.2 is designed to operate in indoor environments and in
2. temperatures ranging from -5?C to +55?C.

1

1

## 2.3 O-RU7-2 Hardware Reference Design

1. In this section we describe, the HW reference design of all O-RU7-2 components including block diagram, HW
2. components, synchronization and timing, mechanical design, power supply, thermal, and environment requirements.

### 2.3.1 O-RU7-2 High-Level Functional Block Diagram

1. Figure 2-12 provides a high-level functional block diagram depicting the major HW/SW components. It also highlights
2. the internal/external interfaces that are required. This document shows how to implement the system defined by the
3. IPC-HAR [6] document.

To/From

![]({{site.baseurl}}/assets/images/f5de4c4111ef.png)![]({{site.baseurl}}/assets/images/df5e8664f619.png)![]({{site.baseurl}}/assets/images/d20a829c41d2.png)![]({{site.baseurl}}/assets/images/86ce43d1b443.png)![]({{site.baseurl}}/assets/images/15a3996566fa.png)![]({{site.baseurl}}/assets/images/88f6edc50d28.png)![]({{site.baseurl}}/assets/images/efc74b173f95.png)![]({{site.baseurl}}/assets/images/f354d1d31ec1.png)![]({{site.baseurl}}/assets/images/e4f667d3b394.png)

O-RU7-2

O-RAN FH

eCPRI

Digital Processing Unit

Local timing from CDR

GNSS

(optional)

Local timing from GNSS or equivalent

Timing Unit

Power Unit

RF

Processing

Unit

#### O-DU7-2

9

* 1. **Figure 2-12: High-Level Functional Block Diagram**

### 2.3.2 O-RU7-2 Hardware Components

* 1. General block diagrams for 2T2R and 4T4R O-RU7-2 examples are shown subsequently.
  2. **Error! Reference source not found.** shows a 2T2R implementation and **Error! Reference source not found.** shows
  3. an 4T4R implementation. In each of these diagrams, the Digital Processing Unit is further detailed in **Error!**
  4. **Reference source not found.**. Items under the umbrella of RF Processing Unit, including the Transceiver, RFFE and
  5. other RF items are reviewed in additional detail in **Error! Reference source not found.**. Clock and Synchronization

1 are reviewed in **Error! Reference source not found.**. The Power Unit is detailed in **Error! Reference source not**

2 **found.**.

Port A

![]({{site.baseurl}}/assets/images/51f6823f26cd.png)![]({{site.baseurl}}/assets/images/424813c7b8cc.png)![]({{site.baseurl}}/assets/images/1d0928f4ad21.png)![]({{site.baseurl}}/assets/images/7e2b10febd73.png)![]({{site.baseurl}}/assets/images/1d0928f4ad21.png)![]({{site.baseurl}}/assets/images/8ea90abb6fd2.png)![]({{site.baseurl}}/assets/images/f1520fdf91bb.png)![]({{site.baseurl}}/assets/images/e2cc51230e69.png)![]({{site.baseurl}}/assets/images/21899d1d047a.png)![]({{site.baseurl}}/assets/images/7e74d4640776.png)

**TR Tx Rx**

**control enable enable**

**Rx0**

**bypas s enable**

RFFE

**Tx0**

**enable**

**PA**

**SERDES**

Digital Processing Unit

**ORx0**

**ORx1**

**SPI**

**Tx1**

**enable**

**PA**

RFFE

**Network SPI**

**Clock**

**Clean**

**Clock**

**Rx1**

**bypas s**

**enable**

Clock

Transceiver

Synchronizer

Power Unit

3

**TRx Reference**

###### 4 Figure 2-13: 2T2R General Block Diagram with TR switch

![]({{site.baseurl}}/assets/images/4deab3db599d.png)![]({{site.baseurl}}/assets/images/65d3332af353.png)![]({{site.baseurl}}/assets/images/4cd96b4a1596.png)![]({{site.baseurl}}/assets/images/f765e4694f97.png)![]({{site.baseurl}}/assets/images/0513f8da3afd.png)![]({{site.baseurl}}/assets/images/7f4afadcfc45.png)![]({{site.baseurl}}/assets/images/0513f8da3afd.png)![]({{site.baseurl}}/assets/images/981a1b5c7fc5.png)![]({{site.baseurl}}/assets/images/d5ba93103c6f.png)![]({{site.baseurl}}/assets/images/556be1045ef0.png)![]({{site.baseurl}}/assets/images/908ec3867721.png)![]({{site.baseurl}}/assets/images/e248a8c04b5f.png)![]({{site.baseurl}}/assets/images/e2cc51230e69.png)![]({{site.baseurl}}/assets/images/d67594cc4ec7.png)![]({{site.baseurl}}/assets/images/21899d1d047a.png)![]({{site.baseurl}}/assets/images/403a4e75b567.png)![]({{site.baseurl}}/assets/images/637fc4bc384c.png)![]({{site.baseurl}}/assets/images/00f5626059d0.png)

**TR**

**control**

**Tx Rx**

**enable enable**

**Rx0**

**bypas s enable**

RFFE

**Tx0**

**enable**

**PA**

**SERDES**

Digital Processing Unit

**ORx0**

**ORx1**

**SPI**

**Tx1**

**enable**

**PA**

RFFE

**Network SPI Clock**

**Clean Clock**

**Rx1**

**bypas s**

**enable**

Clock

Transceiver

Port A

**bypas s enable**

**Rx0**

RFFE

**Tx0**

**PA**

**enable**

**ORx0**

Synchronizer

**ORx1**

**Tx1**

**enable**

**PA**

RFFE

**bypas s**

**enable**

Power Unit

**Rx1**

5

**TRx**

**Reference**

###### 6 Figure 2-14: 4T4R General Block Diagram with TR switch

7

1. In following section, we describe their functionality, interfaces and performance of every block in the RF Processing
2. Unit. Since device integration is an ongoing activity, chip boundaries may be fluid and some functionalities may move
3. from one block to another or entire functionalities may be absorbed into other blocks. The sections below describe the
4. functional blocks independent of which physical device they may reside in.
5. 2.3.2.1 Digital Processing Unit
6. The digital processing unit of O-RU7-2 is mainly for performing tasks related to FH interface, lower L1, RF interface,
7. and OAM.
8. *i. FPGA Solution Design 1*
9. The digital processing unit of O-RU7-2 is mainly for performing FH interface, lower L1, RF interface, and OAM
10. functions.
11. *a. FPGA Requirement*
12. The following items are the main requirement for the O-RU7-2:
13. ? Interface requirement: One lane of bi-direction Serdes targeting eCPRI will be @10Gbps for FH split
14. option 7-2. Four lanes of bi-direction JESD204B Serdes will be used for 2T2R. Eight lanes of bi-
15. direction JESD204B Serdes will be used for 4T4R
16. ? Resource requirement: FPGA resource requirements for 2T2R and 4T4R are shown in Table 2-11 and
17. Table 2-12.

###### Table 2-11: Resource requirement for 2T2R O-RU7-2

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| Module | FF | LUT | BRAM18 | DSP |
| Model A | 343800 | 171900 | 1000 | 900 |
| IFFT & CP+ | 7763 | 5323 | 27 | 23 |
| IFFT & CP- | 7763 | 5323 | 27 | 23 |
| PRACH frontend | 4000 | 3000 | 32 | 50 |
| DUC | 4820 | 4346 | 0 | 108 |
| DDC | 4820 | 4346 | 0 | 108 |
| CFR | 11470 | 6136 | 22 | 36 |
| DPD | 34269 | 13250 | 188 | 87 |
| JESD204B | 4314 | 4285 | 0 | 0 |
| Fronthaul(eCPRI) | 10000 | 8000 | 1 | 0 |
| Other | 8000 | 5000 | 100 | 12 |
| Total | 97219 | 59009 | 397 | 447 |

</div>

19

###### 20 Table 2-12: Resource requirement for 4T4R O-RU7-2

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| Module | FF | LUT | DSP | BRAM18 |
| Resource Mapping | 10000 | 8000 | 0 | 102 |
| PreCoding & pilot lns | 5000 | 4000 | 16 | 4 |
| IFFT+CP | 6466 | 3952 | 15 | 75 |
| Resource De-Mapping | 10000 | 8000 | 0 | 181 |
| FFT+CP | 6466 | 3952 | 15 | 75 |
| PRACH Filtering | 8000 | 6000 | 36 | 16 |
| Sub-Total | 45932 | 33904 | 82 | 453 |
| ChFIR | 2832 | 2686 | 84 | 0 |
| DUC | 5148 | 3756 | 36 | 0 |
| CFR | 25676 | 12372 | 96 | 48 |
| DPD | 45770 | 17643 | 105 | 217 |
| AGC | 1000 | 600 | 8 | 4 |
| DDC | 1716 | 1252 | 12 | 0 |
| UL\_ChFIR | 2832 | 2686 | 84 | 0 |
| JESD2048 | 9900 | 11127 | 0 | 0 |
| eCPRI | 15000 | 14000 | 0 | 50 |
| total | 155806 | 100026 | 507 | 772 |

</div>

1

1. ? Processor requirement: For device model A, the processor will be used, one is used for device control
2. and management plane functions, the other one is for Digital Pre-Distortion (DPD) feedback path. For
3. device model C, dual-core ARM cortex-A53 will be used, similarly one is used for device control and
4. management plane functions, the other one is for DPD feedback path.
5. ![]({{site.baseurl}}/assets/images/813f88cfda40.jpg)? Power requirement: Power estimations for 2T2R and 4T4R are shown in Figure 2-15 and Figure 2-16.

7

###### ![]({{site.baseurl}}/assets/images/6b7c7905d5fb.jpg)Figure 2-15: Power estimation for 2T2R O-RU7-2

2

###### Figure 2-16: Power estimation for 4T4R O-RU7-2

1. ? Speed grade, environmental requirement: -2L, 0? to 110?
2. *b. FPGA Design*
3. This solution of the digital processing unit incorporates FPGA and a processor. The FPGA handles high
4. speed digital processing such as low L1, FH, DDC, DUC, CFR and so on. All functions are listed in the
5. previous section. The processor is used for hardware device configuration and the OAM function. The FPGA
6. and the processor core can be integrated into one SOC or implemented into two devices. Here the FPGA and
7. the processor core are integrated into one SOC device.

![]({{site.baseurl}}/assets/images/08a514af5a66.png)![]({{site.baseurl}}/assets/images/11f77c4ed30c.png)![]({{site.baseurl}}/assets/images/399420f97011.png)![]({{site.baseurl}}/assets/images/43923ce637f9.png)![]({{site.baseurl}}/assets/images/a9d7aca82eb0.png)![]({{site.baseurl}}/assets/images/7c9d4280cefa.png)![]({{site.baseurl}}/assets/images/6889570cc3b0.png)![]({{site.baseurl}}/assets/images/84e5c7bbdc59.png)![]({{site.baseurl}}/assets/images/191e9e1f1444.png)![]({{site.baseurl}}/assets/images/2613259291db.png)![]({{site.baseurl}}/assets/images/3c1941091554.png)![]({{site.baseurl}}/assets/images/d7b3d10da54f.png)![]({{site.baseurl}}/assets/images/c36b516db102.png)![]({{site.baseurl}}/assets/images/edc05232d898.png)![]({{site.baseurl}}/assets/images/29146954dd4b.png)![]({{site.baseurl}}/assets/images/95cc1663b846.png)![]({{site.baseurl}}/assets/images/43cbdbef472e.png)![]({{site.baseurl}}/assets/images/1eaf73ed5fc5.png)![]({{site.baseurl}}/assets/images/d17d3fe53219.png)![]({{site.baseurl}}/assets/images/888fe1827416.png)![]({{site.baseurl}}/assets/images/e5845ca36d2d.png)![]({{site.baseurl}}/assets/images/cd8d1fb0f4de.png)![]({{site.baseurl}}/assets/images/619dff7e8cce.png)![]({{site.baseurl}}/assets/images/c6517d1dbc38.png)![]({{site.baseurl}}/assets/images/614c2d138ce0.png)![]({{site.baseurl}}/assets/images/286656f3779d.png)![]({{site.baseurl}}/assets/images/ee8ccaa29aaa.png)![]({{site.baseurl}}/assets/images/29689a583b52.png)

MIG

JESD204B

Transceiver

Flash

SPI

SPI

FPGA

Debug

245.76MHz

1.92MHz

156.25MHz

PLL

IIC

SFP+

Power:3.3V 2.5V 1.8V 1.35V 1.2V 0.9V

Processor

DDR

11

###### Figure 2-17: FPGA Reference Design Diagram

1. For the processor portion, the internal RAM resource may not be enough. So the external DDR is needed to
2. let the processor handle more RAM consuming functions such as operation system or stack protocols like
3. Network Configuration Protocol (NetConf) Client. For the O-RU7-2 design, the DDR3 with 256Mb\*16bit
4. memory capacity is enough. The interface between the DDR and processor can be memory interface
5. generator (MIG).The external Flash is used to store operation system related files, calibration information
6. of the RF portion, NetConf related files, FPGA firmware and so on. For this O-RU7-2 design, the flash with
7. 2Gb memory capacity is enough. The online debug function is performed by external Ethernet PHY with
8. an RJ45 connector. This allows the administrator to visit the internal function of the O-RU7-2 and control it.
9. The interface between the DDR and processor can be Media-Independent interface (MII). The Ethernet
10. PHY device can be very general 100M Ethernet Transceiver. The FPGA has one serdes lane connected to
11. optical module to perform the fronthaul link between O-RU7-2 and O-DU7-2 /FHM7-2.Another 4 serdes lanes
12. of the FPGA are needed to connect one transceiver of the O-RU7-2 to transmit or receive IQ sample by the
13. interface of JESD204B while the FPGA needs synchronized clock signals to work well. The interface
14. between PLL and FPGA should be Low-Voltage Differential Signaling (LVDS).
15. 2.3.2.2 RF Processing Unit
16. For the RF processing unit of O-RU7-2, it will perform functionalities of ADC, DAC, LO, down converter, up converter
17. and etc.
18. 2.3.2.2.1 Transceiver Reference Design
19. For the O-RU7-2 the sampling function and frequency conversion function can be performed by transceiver. The
20. purpose of using the transceiver is to saving power and size of the PCB. The Transceiver is to convert between high
21. speed baseband data and a low-level RF for both transmit and receive signal chain. In addition, the transceiver is
22. responsible for orchestration of control signals not limited to the PA enable, LNA enable, LNA bypass as well as other
23. required system level signals.
24. *a. Hardware Requirements*
25. Include the requirements for this component.
26. ? Interface Requirements: The interface requirements for the Transceivers are list in Table 2-13.

###### Table 2-13: Interface requirements of the Transceiver

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Item Name** | **Description** |
| High Speed Data | High speed data represents the baseband information being transmitted or received. Depending on the configuration of the ORAN device, various bandwidths may be supported leading to a range of payload rates. Options for data include parallel data paths, JESD204B and JESD204C. Up to 8 lanes in each direction may be supported although fewer is preferred. Options such as DPD and numeric precision will impact the payload rate. Several options are shown in the following table. All data represents IQ 16-bit (N=16) precision. Some devices support IQ 12 bit (N'=12) which may reduce the required data rates accordingly. The tables below assume 1 ORx for 2 TRx. From Table 2-14 and Table 2-15, the number of lanes required may be determined by dividing the total bit rates shown by the capacity of a lane, typically 12.5 GBPS for JESD204B and 25 GBPS for JESD204C. |
| Reference Clock (Device Clock) | The transceiver should receive a reference for internal clock and LO synthesis needs. This reference clock can function as the JESD204 Device Clock where the interface is by  SERDES. The specific clock frequency is determined by the operation mode of the |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
|  | transceiver and may range from 1Hz upward. |
| SYSREF | If the transceiver supports SERDES, then it should accept a SYSREF signal from the clock or data source as appropriate. The number and configuration for the SYSREF is dependent on the operating mode of the transceiver. |
| SYNCB | If the transceiver supports SERDES, then it should also support a SYNCB for each link as appropriate. |
| Control | Control of the transceiver is by way of 3 or 4 wire SPI or IIC functioning as a slave. Support for 1.8V control is required and tolerance of 3.3V is preferred. The transceiver may optionally include a separate SPI master for control of peripheral devices as required. |
| GPIO | The transceiver may optionally include GPIO for controlling peripherals including but not limited to PAs, LNAs and other devices. These GPIOs should at a minimum support 1.8V outputs but the specifics will be determined by the connected devices. The GPIO should also support input from peripheral devices. Input should at a minimum support 1.8V logic with tolerance of 3.3V preferred. |
| Tx Enable | The transceiver should provide an output to support enabling and disabling the external devices in the transmit chain such as a TxVGA (optional) and PA. |
| Rx Enable | The transceiver should provide an output to support enabling and disabling the external devices in the transmit chain such as a RF Front End Module or LNA. |
| LNA Bypass | The transceiver should provide an output to support bypassing the LNA appropriately in the condition of a large blocker if so required. |
| RF Outputs | RF outputs including the main Tx signal should support 50 ohm or 100 ohms signalling. These outputs can be either single ended or differential. |
| RF Inputs | RF inputs including the main Rx and the Observation Rx (ORx) (for DPD) should support 50 ohm or 100 ohms signalling. These inputs can be either single ended or differential.  The device should support at least 1 ORx. |

</div>

1

###### Table 2-14: Payload with DPD in Digital Device (GBPS Rx/Tx)

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- |
| **Bandwidth (MHz)** | **Parallel** | **JESD204B** | **JESD204C** | **Parallel** | **JESD204B** | **JESD204C** |
|  | 2T2R | | | 4T4R | | |
| **20** | 2.95/5.9 | 3.69/7.37 | 3.04/6.08 | 5.9/11.8 | 7.37/14.75 | 6.08/12.17 |
| **50** | 5.9/11.8 | 7.37/14.75 | 6.08/12.17 | 11.8/23.59 | 14.75/29.49 | 12.17/24.33 |
| **100** | 11.8/23.59 | 14.75/29.49 | 12.17/24.33 | 23.59/47.19 | 29.49/58.98 | 24.33/48.66 |

</div>

3

###### 4 Table 2-15: Payload with DPD in Transceiver (GBPS Rx/Tx)

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- |
| **Bandwidth (MHz)** | **Parallel** | **JESD204B** | **JESD204C** | **Parallel** | **JESD204B** | **JESD204C** |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- |
|  | 2T2R | | | 4T4R | | |
| **20** | 1.97/1.97 | 2.46/2.46 | 2.03/2.03 | 3.93/3.93 | 4.92/4.92 | 4.06/4.06 |
| **50** | 3.93/3.93 | 4.92/4.92 | 4.06/4.06 | 7.86/7.86 | 9.83/9.83 | 8.11/8.11 |
| **100** | 7.86/7.86 | 9.83/9.83 | 8.11/8.11 | 15.73/15.73 | 19.66/19.66 | 16.22/16.22 |

</div>

1. ? Algorithm Requirements: The transceiver is required to provide appropriate algorithms to sustain RF
2. operation including but not limited to Rx AGC, Tx Power control. DPD and CFR may be included
3. either in the transceiver or in the digital baseband device making the trade-offs in Payload shown in
4. Table 2-11 and Table 2-12.
5. ? Device Configuration: The transceiver should support either 2T2R or 4T4R. In addition, at least one
6. ORx path should be supported. Additional ORx paths are allowed as required for the application.
7. ? Power Dissipation: Total dissipation of the TRx should be less than 6W for 4T4R.
8. ? RF Specifications are given in Table 2-16.

9

###### Table 2-16: RF specifications in Transceiver

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- |
| **Parameter** | **Symbol** | **Min** | **Typ** | **Max** | **Unit** | **Test Conditions/Comments** |
| TRANSMITTERS  Center Frequency Transmitter Synthesis  Bandwidth  Transmitter Large Signal Bandwidth  Transmitter Attenuation Power Control Range  Transmitter Attenuation Power Control Resolution  Adjacent Channel Leakage Ratio (ACLR) |  | 650 |  | 6000 | MHz |  |
|  |  | 450 | MHz |  |
|  |  | 200 | MHz |  |
| 0 |  | 32 | dB | Signal-to-noise ratio (SNR) |
|  |  |  |  | maintained for attenuation between |
|  |  |  |  | 0 dB and 20 dB |
|  | 0.05 |  | dB |  |
|  |  |  |  | 20 MHz LTE at -12 dBFS |
|  | -66 |  | dB | 75 MHz < f <= 2800 MHz |
| In Band Noise Floor |  |  | | |  | 0 dB attenuation; in band noise falls 1 dB for each dB of attenuation for attenuation  between 0 dB and 20 dB |
|  |  | -154.5 | | | dBm/Hz | 600 MHz < f <= 3000 MHz |
| Out of Band Noise Floor |  |  | | |  | 0 dB attenuation; 3 x bandwidth/2 offset |
|  |  | -153 | | | dBm/Hz | 600 MHz < f <= 3000 MHz |
| Maximum Output Power |  |  | | |  | 0 dBFS, continuous wave tone into 50 ? load, 0 dB transmitter attenuation |
|  |  | 6 | | | dBm | 600 MHz < f <= 3000 MHz |
| Third Order Output Intermodulation | OIP3 |  | | |  | 0 dB transmitter attenuation |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- |
| **Parameter** | **Symbol** | **Min** | **Typ** | **Max** | **Unit** | **Test Conditions/Comments** |
| Intercept Point |  | 27 | | | dBm | 600 MHz < f <= 5700 MHz |
| Error Vector Magnitude (Third Generation Partnership Project  (3GPP) Test Signals) | EVM |  | | |  |  |
| 1900 MHz LO |  | 0.6 | | | % | 50 kHz RF PLL loop bandwidth |
| 3800 MHz LO |  | 0.53 | | | % | 300 kHz RF PLL loop bandwidth |
| OBSERVATION RECEIVER  Center Frequency Gain Range  Analog Gain Step  Receiver Bandwidth Maximum Useable  Input Level  Integrated Noise  Third-Order Input Intermodulation Intercept Point  Narrow Band  1900 MHz  2600 MHz  3800 MHz | ORx |  |  |  |  |  |
|  | 450 |  | 6000 | MHz |  |
|  |  | 30 |  | dB | IIP3 improves decibel for decibel |
|  |  |  |  |  | for the first 18 dB of gain |
|  |  |  |  |  | attenuation; QEC performance |
|  |  |  |  |  | optimized for 0 dB to 6 dB of |
|  |  |  |  |  | attenuation only |
|  |  | 0.5 |  | dB | For attenuator steps from 0 dB to |
|  |  |  |  |  | 6 dB |
|  |  |  | 450 | MHz |  |
| PHIGH |  |  |  |  | 0 dB attenuation; increases |
|  |  |  |  |  | decibel |
|  |  |  |  |  | for decibel with attenuation; |
|  |  |  |  |  | continuous wave corresponds to |
|  |  |  |  |  | -1 dBFS at ADC |
|  |  | -11 |  | dBm | 75 MHz < f <= 3000 MHz |
|  |  | -58.5 |  | dBFS | 450 MHz integration bandwidth |
|  |  | -57.5 |  | dBFS | 491.52 MHz integration |
|  |  |  |  |  | bandwidth |
| IIP3 |  |  |  |  | Maximum observation receiver |
|  |  |  |  |  | gain; test condition: PHigh - 11 |
|  |  |  |  |  | dB/tone |
|  |  | 15 |  | dBm |  |
|  |  | 16.5 |  | dBm |  |
|  |  | 18 |  | dBm |  |
| Wide Band  1900 MHz  2600 MHz  38000 MHz  Third-Order Intermodulation Product |  |  | | |  | IM3 products>130 MHz at |
|  | 13 | | | dBm | baseband; test condition: PHigh - |
|  | 11 | | | dBm | 11 dB/tone ; 491.52 MSPS |
|  | 13 | | | dBm |  |
| IM3 |  | | |  |  |
|  | -70 | | | dBc | 600 MHz < f <= 3000 MHz |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **Parameter** | **Symbol** | **Min Typ** | **Max** | **Unit** | **Test Conditions/Comments** |
| Spurious-Free Dynamic Range | SFDR | 64 | | dB | Non IMx related spurs, does not include HDx; (PHIGH - 11) dB input signal |
| Harmonic Distortion |  |  | |  | (PHIGH - 11) dB input signal |
| Second Order Harmonic Distortion Product | HD2 | -80 | | dBc | In band HD falls within +-100 MHz |
|  |  | -73 | | dBc | Out of band HD falls within +-225 MHz |
| Third-Order Harmonic Distortion Product | HD3 | -70 | | dBc | In band HD falls within +-100 MHz |
|  |  | -65 | | dBc | Out of band HD falls within +-225 MHz |
| RECEIVERS  Center Frequency Gain Range Analog Gain Step  Receiver Bandwidth Maximum Useable  Input Level |  |  | 6000 | MHz |  |
|  | 30 |  | dB |  |
|  | 0.5 |  | dB | Attenuator steps from 0 dB to 6 |
|  |  |  |  | dB |
|  | 1 |  | dB | Attenuator steps from 6 dB to 30 |
|  |  |  |  | dB |
|  |  | 200 | MHz |  |
| PHIGH |  |  |  | 0 dB attenuation, increases |
|  |  |  |  | decibel |
|  |  |  |  | for decibel with attenuation; |
|  |  |  |  | continuous wave = 1800 MHz; |
|  |  |  |  | corresponds to -1 dBFS at ADC |
|  | -11 |  | dBm | 75 MHz < f <= 3000 MHz |
| Noise Figure | NF |  | |  | 0 dB attenuation, at receiver port |
|  |  | 12 | | dB | 600 MHz < f <= 3000 MHz |
| Input Third-Order Intercept Point | IIP3 |  | |  |  |
| Difference Product, 2600 MHz (Wideband)  2600 MHz (Midband) | IIP3, d | 17  21 | | dBm dBm | Two (PHIGH - 9) dB tones near band edge |
| Sum Product, | IIP3, s |  | |  |  |
| 2600 MHz (Wideband\_ |  | 20 | | dBm | Two (PHIGH - 9) dB tones, at bandwidth/6 offset from the LO |
| HD3 | HD3 |  | |  | (PHIGH - 6) dB continuous wave tone at bandwidth/6 offset from the LO |
|  |  | -66 | | dBc | 600 MHz < f <= 4800 MHz |

</div>

1

* 1. *b. Hardware Design*
  2. For the O-RU7-2 the sampling function and frequency conversion function can be performed by transceiver.
  3. Usually the transceiver is integrated by ADC, DAC, LO, down converter, up converter and so on. The block
  4. diagram of transceiver design is shown in Figure 2-18.

REF Clock In SYSREF

SPI Port

SCLK CSB SDO SDIO

CPIO1 GPIO2 GPIO3

GPIO#

Receiver Block 2 Receiver Block 1

Rx3

Rx2

Rx1

ADC

Decimation pFIR AGC

Tuning RSSI

Overload

Device Managemen t

SYNCIN

Transmit Block 1

SERDES Out

JESD204B/C

Serial Interface

SERDES In

Tx3

Tx2

Interpolation

pFIR

Tuning

Device Managemen t

SYNC OUT

Tx1

DAC

Observation

Receiver

ADC

Decimation pFIR AGC

Tuning

RSSI

Overload

Device Managemen t

DPD Engine

Transmit Block 2

Transmit Block 3

Transmit Block 4

Receiver Block 3

Receiver Block 4

Con trol

Interface

Clock,

Synchronization

& Synthesis

Optional

Features

Ext LO/Clock In

Rx4

Decimation pFIR AGC

Tuning

RSSI

Overload

evice Management

D

ADC

Decimation pFIR AGC

Tuning

RSSI

Overload

Device Managemen t

ADC

Decimation pFIR AGC

Tuning RSSI

Overload

Device Managemen t

ADC

Tx4

Interpolation

pFIR

Tuning

evice Management

D

DAC

Interpolation

pFIR

Tuning

Device Managemen t

DAC

Interpolation

pFIR

Tuning

Device Managemen t

DAC

ORx1

ORx2

ORx3

ORx4

1

###### Figure 2-18: Transceiver Reference Design Diagram (Optional elements are highlighted in Grey)

1. The definition of the input/output lines are as follows:
2. ? REF Clock In is the differential reference input to the on-chip synthesizer. This may also function as the
3. SERDES Device Clock.
4. ? SYSREF is a JESD204B/C differential synchronization signal.
5. ? Ext LO/Clock Input is an optional input that can be used as an alternate LO or clocking signal.
6. ? Rx1 through Rx4 are differential receiver inputs to their respective cores.
7. ? Tx1 through Tx4 are differential transmitter output from their respective cores.
8. ? ORx1 through ORx4 are differential observation receiver inputs.
9. ? SCLK is the serial control clock input.
10. ? CSB is the active low device select for the control interface.
11. ? SDO is the serial data output for the control interface. This pin may be omitted for 3-pin control
12. implementations.
13. ? SDIO is a bidirectional serial data interface. In 4-pin mode, this pin functions as the serial data input.
14. ? GPIO1 - GPIO# are general purpose IO signals used for interrupts, enables, test mode and resets. These
15. are used as interface and control for peripheral devices including controllers, TxVGAs, PA, LNA and
16. similar devices where SPI control is too slow.
17. ? SYNCIN are differential pins associated with the receiver channels of the JESD204 interface. In not
18. used, they are typically grounded. Up to 4 pair may be supported.
19. ? SERDES Out are differential JESD204B/C data output interfaces. Up to 8 lanes may be active.
20. ? SERDES In are differential JESD204B/C data input interfaces. Up to 8 lanes may be active.
21. ? SYNCOUT are differential pins associated with the transmitter channels of the JESD204 interface. If
22. not used, do not connect. Up to 4 pair may be supported.
23. 2.3.2.2.2 Power Amplifier (PA) Reference Design
24. The Power Amplifier boosts the RF output to the level required for the base station class.
25. *a. Hardware Requirements*
26. The PA should have large enough gain to reduce the need for an additional driver. This will reduce cost and
27. PCB space. The output power should be at least 27dBm (30dBm for 500mW/port to compensate for the loss of
28. switch and antenna filter). The ACLR should be greater than 47dBc according to the related 3GPP test mode.
29. DPD is needed to reduce the power consumption. The P1 dB requirement is closely related to the DPD
30. algorithm.

###### Table 2-17: PA Requirements

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **Frequency band** | **Band41** | **Band78** | **Additional Information** |
| Gain | >33dB | >33dB |  |
| P3dB | >34dBm | >34dBm  >37dBm(500mW/port) | ACLR>=47dBc with DPD@100MHz NR  27dBm (30dBm for 500mW/port) |
| Input return loss | <-15dB | <-15dB |  |
| Output return loss | <-15dB | <-15dB |  |
| Switching Speed | <1us | <1us |  |
| HD2 | >28dBc | >28dBc | CW 27dBM |
| HD3 | >30dBc | >30dBc | CW 27dBm |

</div>

13

14

1

2 ? Interface Require

3 The interface requirements of the transmit PA are listed in Table 2-18. 4

###### 5 Table 2-18: Interface requirements of the transmit PA

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Item Name | Description |
| Enable | The enable input should be compatible with 1.8V logic and tolerate 3.3V as required. A logic high enables the PA. A logic low disables the device and places it in a minimum dissipation mode. |
| RF Outputs | RF outputs support 50-ohm single ended to properly interface to a directional coupler, isolator, switch or antenna. |
| RF Inputs | RF inputs should support 50 ohm, single ended match to the transceiver output or preamp. |
| RF power detector | Power detector (optional) |

</div>

6

7 ? Power Dissipation: Dissipation while enabled should not exceed ~3W.

8

1. *b. Hardware Design*
2. RFin is the input to the PA, RFout is the output of the PA. Vcc and Vbias are the power inputs of the PA. PAEN is
3. the control pin to disable or enable the PA. The input and output should match to 50 ohm as much as possible
4. to reduce the reflection. Vcc and Vbias need capacitors to reduce the DC power ripples and give a short route to
5. reduce the RF energy leakage. Figure 2-19 shows the details.

![]({{site.baseurl}}/assets/images/982e63b0dc83.png)

RFEN

RFin

RFout

Vcc

14

15 **Figure 2-19: PA Reference Design Diagram**

1. 2.3.2.2.3 Low Noise Amplifier (LNA) Reference Design
2. The purpose of the LNA is to boost the Rx signal to a level that can nominally interface directly to the transceiver. This
3. block will typically be a 2-stage amplifier with a 2nd stage bypass. The frontend will also include a TR switch to shunt
4. any Tx signal to a termination away from the amplifier.
5. *a. Hardware Requirements*
6. The requirements of the LNA are listed here.
7. ? Interface Requirements: The interface requirements of the transmit LNA are listed in Table 2-19.

###### Table 2-19: One stage LNA Requirements

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **Parameter** | **Band 41** | **Band 78** | **Additional Information** |
| NF | <1dB | <1dB |  |
| Gain | >15dB | >15dB |  |
| P1dB | >18dBm | >18dBm |  |
| Input return loss | <-12dB | <-12dB |  |
| Output return loss | <-15dB | <-15dB |  |
| Switching Speed | <1us | <1us |  |
| IP3 | >30dBm | >30dBm | 2 Tone CW -15dBm |
| K | >1 | >1 | up to f = 12.5 GHz |
| Max input power | >15dBm | >15dBm |  |

</div>

9

1. ? Device Configuration: Single or dual device.
2. ? Power Dissipation: Less than 500 mW for a dual when device is fully enabled in receive mode.
3. ? RF Specifications: For LNA unit, it should have larger enough gain to reduce extra driver amplifier for
4. cost and PCB space. The NF figure of LNA should small enough to overcome the loss of switch and
5. filter.

###### Table 2-20: Two stage LNA Requirements

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **Frequency band** | **Band41** | **Band78** | **Additional Information** |
| NF | <1 dB | <1.5 dB |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| Gain | High gain >=32 dB  Low gain >=16 dB | High gain >=32 dB  Low gain >=16 dB |  |
| P1dB | >18dBm | >18dBm |  |
| Input return loss | <-12dB | <-12dB |  |
| Output return loss | <-15dB | <-15dB |  |
| Switching Speed | <1us | <1us |  |
| IP3 | >30dBm | >30dBm | 2 Tone CW -15dBm |
| K | >1 | >1 | up to f = 12.5 GHz |
| Max input power | >15dBm | >15dBm |  |

</div>

1

* 1. *b. Hardware Design*
  2. The reference designs for one stage LNA and two-stage LNA are given.
  3. ? One stage LNA
  4. RFin is the input port of the LNA. RFout is the output of the LNA. Vcc is the power input of the LNA. LNA
  5. EN is the control pin to disable or enable the LNA. The input match to 50 ohm as much as possible to
  6. reduce the reflection. But for output of the LNA, it is hard to get best Noise figure and the output return loss.
  7. Compromise is needed between NF and return loss. Usually the return loss should be around -10dB or -
  8. 12dB. Also is should be very careful to assure the stability of the LNA in a large bandwidth. Vcc needs
  9. capacitors to reduce the DC power ripples and give a short route to reduce the RF energy leakage. Figure
  10. 2-20 shows the details.

![]({{site.baseurl}}/assets/images/9a687778feff.png)

LNAEN

RFin

RFout

Vcc

12

13

1. ? Two stage LNA

###### Figure 2-20: One Stage LNA Diagram

1. RFin is the input port of the LNA. RFout is the output of the LNA. Vcc is the power input of the LNA. LNA
2. EN is the control pin to disable or enable the LNA. The input matches to 50 ohm as much as possible to
3. reduce the reflection. But for output of the LNA, it is hard to get best Noise figure and the output return loss.
4. Compromise is needed between NF and return loss. Usually the return loss should be around -10dB or -
5. 12dB. Also is should be very careful to assure the stability of the LNA in a large bandwidth. Vcc needs
6. capacitors to reduce the DC power ripples and give a short route to reduce the RF energy leakage. Figure
7. 2-21 shows the details.

![]({{site.baseurl}}/assets/images/81a991b4bc52.png)![]({{site.baseurl}}/assets/images/fa9357f66c65.png)

LNAbypass

LNAEN

RFin

RFout

Vcc

Vcc

8

9 **Figure 2-21: Two-Stage LNA Diagram**

1. 2.3.2.2.4 RF Switch Reference Design
2. For TDD use, the TX and RX links work spiritedly by time duplex. The switch is used to change the RF link according
3. to the TDD duplex. In the TDD TX mode, the switch is switched to connect PA and antenna. In TDD RX mode, the
4. switch is switched to LNA and antenna.
5. *a. Hardware Requirements*
6. The requirements of the RF switch are listed here.
7. ? Interface Requirements
8. The interface requirements of the switch are listed in Table 2-21.

###### Table 2-21: Interface requirements of the RF switch

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Item Name** | **Description** |
| Control | Control the switch working mode |
| RF COM | The port connected to the antenna  RF inputs should support 50 ohm, single ended to match the antenna. |
| RF Outputs | The port connected to the LNA.  RF inputs should support 50 ohm, single ended to match the LNA. |
| RF Inputs | The port connected to the PA. |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
|  | RF inputs should support 50 ohm, single ended to match the PA output. |

</div>

1

* 1. ? RF Specifications
  2. For switch, it should have larger P1dB to not degrade the ACLR or damage the switch itself. The output
  3. power should be at least 26dBm (29dBm for 500mW/port) count on the loss of antenna filter so it must
  4. have low loss. Also the isolation needs to be high to protect the LNA. Higher HD2 and HD3 are needed to
  5. reduce the out of band emissions.

###### Table 2-22: RF Switch Requirements

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| Frequency band | Band 41 | Band 78 | **Additional Information** |
| Loss | <0.8dB | <0.8dB |  |
| P1dB | >36dBm | >36dBm  >39dBm(500mW/port) |  |
| Input return loss | <-15dB | <-15dB |  |
| Output return loss | <-15dB | <-15dB |  |
| Switching Speed | <1us | <1us |  |
| Isolation | >30dB | >30dB |  |
| HD2 | >70dBc | >70dBc | CW 27dBm |
| HD3 | >70dBc | >70dBc | CW 27dBm |

</div>

8

1. *b. Hardware Design*
2. RF Com is the input port of the switch, also can be the output of the switch. RF in is the input of the switch.
3. RF out is the output of the switch. Control 1 and control 2 are the control pin to switch the RFin to RF Com or
4. from RF Com to RF out. Figure 2-22 shows the details.

![]({{site.baseurl}}/assets/images/f14a836ba38b.jpg)

Control1

1

![]({{site.baseurl}}/assets/images/993569014e36.png)![]({{site.baseurl}}/assets/images/618109b04415.png)

RFout

RF com

RFin

Control2

* 1. **Figure 2-22: RF Switch Reference Design Diagram**
  2. 2.3.2.2.5 Antenna Reference Design
  3. The antenna is used to radiate the TX power on to the air and receive the RX power from the air. For indoor Picocell
  4. scenario, the isotropic antenna is the first choice.
  5. *a. Hardware Requirements*
  6. The following table shows the antenna requirement for the O-RU7-2.

8

###### 9 Table 2-23: Antenna Requirements

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| Frequency band | Band 41 | Band 78 |
| VSWR | <=1.8 | <=1.8 |
| Power capacity | >=1 W | >=2 W |
| Gain | >=2 dBi | >=2.5 dBi |
| Beam width on vertical direction | >=35? | >=35? |
| pattern roundness on horizontal direction | +-3 dB | +-3 dB |

</div>

10

1. *b. Hardware Design*
2. One possible choice of the isotropic antenna is the whip antenna. Following figure shows a design of one kind
3. of whip antenna. 2

3

**Figure 2-23: Whip Antenna**

### 2.3.3 Synchronization and Timing

1. The purpose of the Clocking device is to accept the network reference clock, typically 1 pps, and generate a jitter free
2. reference clock(s) for other devices in the system including the RF transceiver and digital block. The clock is typically
3. part of an IEEE 1588 implementation either controlled by an external stack or implemented in the clock device itself
4. which could be part of the baseband implementation.
5. *a. Hardware Requirements*
6. Hardware requirements are:
7. ? Interface Requirements: The interface requirements of the transmit Clocking are listed in Table

12 2-24.

13

###### 14 Table 2-24: Interface requirements of the clocking

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Item Name** | **Description** |
| Reference Clock Input | The clock device should receive a network reference clock from the FPGA/ASIC. This typically could be a 1pps, 10 MHz or other standard reference as determined by the specific implementation. More than one input is allowed that may be selected between when the reliability of one reference is compromised. Standard differential clocking should be used to preserve signal integrity. |
| Control | Control of the transceiver is by way of 3 or 4 wire SPI or IIC functioning as a slave. Support for 1.8V control is required and tolerance of 3.3V is preferred. Typically, the clock devices will be part of an IEEE1588v2 protocol loop controlled by way of this control interface or other GPIO lines as required by the hardware implementation. |
| Clock Outputs | One or more clock outputs are required to drive the digital device and transceiver clock inputs. Each output should be independently programmable in frequency to suit the application. The outputs should nominally be differential to preserve clocking edge and to maximize tolerance of high common mode signals. |
| RF Inputs | RF inputs should support 50 ohm or 100 ohms, single ended or differential signalling to match the transceiver output. |

</div>

15

1. ? Power Dissipation: Total dissipation should be about less than 2W.
2. ? RF Specifications: Clocking RF requirements are given in the following table.

###### Table 2-25: Clocking RF requirements

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Absolution Phase Noise, Dual Loop** | **Typical** | **Additional Information** |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Mode - LVDS OUTPUT** |  |  |
| fOUT = 122.88 MHz |  | Example is using an external 122.88 MHz VCXO (Crystek CVHD-950); reference =  122.88 MHz; channel divider = 10 or 1; PLL2 loop bandwidth (LBW) = 450 kHz. |
| 10 Hz Offset | -86 dBc/Hz |  |
| 100 Hz Offset | -106 dBc/Hz |  |
| 1 kHz Offset | -126 dBc/Hz |  |
| 10 kHz Offset | -135 dBc/Hz |  |
| 100 kHz Offset | -139 dBc/Hz |  |
| 800 kHz Offset | -147 dBc/Hz |  |
| 1 MHz Offset | -148 dBc/Hz |  |
| 10 MHz Offset | -157 dBc/Hz |  |
| 40 MHz Offset | -158 dBc/Hz |  |
| Absolute Phase Noise, Single Loop Mode - LVDS OUTPUT | Typical |  |
| LVDS OUTPUT |  |  |
| fOUT = 122.88 MHz |  | Example is using an external 122.88 MHz reference (SMA100A generator); reference  = 122.88 MHz; channel divider = 10; PLL2 LBW = 450 kHz. |
| 10 Hz Offset | -111 dBc/Hz |  |
| 100 Hz Offset | -113 dBc/Hz |  |
| 1 kHz Offset | -123 dBc/Hz |  |
| 10 kHz Offset | -135 dBc/Hz |  |
| 100 kHz Offset | -140 dBc/Hz |  |
| 800 kHz Offset | -147 dBc/Hz |  |
| 1 MHz Offset | -148 dBc/Hz |  |
| 10 MHz Offset | -157 dBc/Hz |  |
| 40 MHz Offset | -157 dBc/Hz |  |
| CLOCK OUTPUT ADDITIVE TIME JITTER (BUFFER MODE) | Typical | Example is using an external 122.88 MHz source driving VCXO inputs (distribution section only, does not include PLL and VCO) |
| fOUT = 122.88 MHz | 79 fS  101 fS | Integrated BW = 200 kHz to 5 MHz  Integrated BW = 200 kHz to 10 MHz |
|  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
|  | 140 fS  187 fS  189 fS  176 fS | Integrated BW = 12 kHz to 20 MHz Integrated BW = 10 kHz to 40 MHz Integrated BW = 1 kHz to 40 MHz  Integrated BW = 1 MHz to 40 MHz |
|  |
|  |
|  |

</div>

1

2

1

1. *b. Hardware Design*
2. For the clocking function, it is usually performed by a synchronization IC which may include one or more
3. PLLs. And it also can supply numbers of output port to support different frequency clocking.

REFA

REF\_SEL

REFB

SYSREF

OUT0

OUT1

![]({{site.baseurl}}/assets/images/26b23e579d50.png)![]({{site.baseurl}}/assets/images/d5e2219710fd.png)![]({{site.baseurl}}/assets/images/e4238490094b.png)![]({{site.baseurl}}/assets/images/475ba1dab50f.png)![]({{site.baseurl}}/assets/images/14d33dea84bf.png)![]({{site.baseurl}}/assets/images/91366a1e77fc.png)![]({{site.baseurl}}/assets/images/9daad09a77cf.png)

**VCX**

**O**

LF2\_EXT\_CAP LDO\_VCO

LF1

VCXO VT

VCXO

VCXO

PLL 1

D Q

Fine

delay

10-bit

Divider

8-bit Divider w/ Coarse Delay

SYNC

D Q

Fine delay

Switch-

over Lock

control Det

Loop

filter

PLL 2

8-bit Divider w/ Coarse

Delay

SYNC

10-bit

Divider

P F D

Charge

Pump

5-bit

Divider

PFD Charge Loop

Divider

Pump filter VCO /3, /4, /5

x2

10-bit

Divider

8-bit

Divider

SYNC

D Q

8-bit Divider w/ Coarse

Delay

SYNC

Fine

delay

D Q

8-bit Divider

w/ Coarse

Delay

SYNC

Fine delay

D Q D Q

Control Interface (SPI & I2C)

SYS\_REF

Generation

Trigger

D Q

SPI\_SYS\_REF

Request

Lock Detect

OUT2 to OUT 11

...

...

...

OUT12

OUT13

SDIO SDO SCLK

CS RESET

Status\_0,1

Status Monitor Lock Detect/ Serial Port Address

/SP0,1

SY SREF

REQUEST (CMOS)

5

6

###### Figure 2-24: PLL Reference Design Diagram

1. REFA and REFB are differential reference clock inputs from the source to be cleaned up and used as the
2. system reference. REF\_SEL is the control pin used to select between REFA and REFB signals. LF1 is PLL1
3. external loop filter. VCXO\_VT is the VCXO control voltage. This pin is connected to the voltage control pin
4. of the external VCXO. VCXO\_IN are differential signals from the external VCXO. These typically can be
5. configured for single ended operation as well. LF2\_CAP is the external loop filter capacitor for loop 2. This
6. cap is connected between this pin and LDO\_VCO pin. LDO\_VCO is the onchip LDO regular decoupling for
7. the VCO. RESET(bar) is an active low pin to reset the internal logic to their default states. CS(bar) is an
8. active low chip select for serial control. SCLK/SCL is a serial control port clock for both SPI and I2C.
9. SDIO/SDA is a bidirectional serial data pin for both SPI and I2C. SDO is the serial data out pin for 4-wire
10. mode. OUT0 through OUT13 are differential programmable output clock signals. These are the primary
11. outputs of this device and provide high performance clock signals to the transceiver, baseband device and
12. other key elements. This device is also responsible for providing SYSREF to various devices in the system if
13. required. It may also use an external SYSREF as a source that may be retimed for local timing if necessary.
14. STATUS0/SP0 is a lock detect and other status signal. STATIS1/SP1 is a lock detect and other status signal.
15. SYSREF\_IN is an external SYSREF input clock is a differential input representing the JESD204
16. synchronization from the external source.

### 2.3.4 External Interface Ports

1. *a. Hardware Requirements*
   1. The following table shows the external ports or slots provided by O-RU7-2.

###### Table 2-26: External Port List

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Port Name** | **Feature Description** |
| Fronthaul interface | One 10Gbps SFP+ transceiver interface |
| Or one RJ45 Ethernet interface |
| Debug interface | RJ45 for debug usage |
| Power interface | Two-pin male plug for power cable |

</div>

3

1. *b. Hardware Design*
2. ? SFP+ case and connector: The SFP+ case and connector are standardized component on the market;
3. following figure describe the form factor of one SFP case which is integrated with connector.

![]({{site.baseurl}}/assets/images/313481aec91e.jpg)

###### Figure 2-26: SFP+ case and connector

7

1. ? RJ45 Ethernet interface: The RJ45 Ethernet interface is standardized component on the market; following
2. figure describe the form factor of one RJ45 interface.

![]({{site.baseurl}}/assets/images/ee19e15d61f5.jpg)

10

11 **Figure 2-26: RJ45 interface**

### 2.3.5 Mechanical

1. The shell of O-RU7-2 is showing in the following figure. The O-RU7-2 should be quiet, so it depends on the natural heat
2. dissipation method. Usually the bottom of the shell is built by metal. All hot component should make its surfaces
3. contact to metal shell through thermal pad.

5

![]({{site.baseurl}}/assets/images/8c8db689d940.jpg)

###### 6 Figure 2-27: O-RU7-2 Shell Mechanical Diagram

7

8 .

### 2.3.6 Power Unit

1. For Picocell, for the power solution of the O-RU7-2 can be over Ethernet cable (cat5E, cat6A) by POE (POE+, POE++)
2. or directly power cable with fibre. And for the board power solution, LDO and DCDC can be used.
3. *a. Hardware Requirements*
4. For PA unit, it should have larger enough gain to reduce extra driver amplifier for cost and PCB space. The
5. output power should be at least 27dBm count on the loss of switch and antenna filter. The ACLR should larger
6. than 47dBc according to the related 3GPP test mode. To reduce the power consumption, DPD is needed. And
7. the P1 dB requirement is closely related to the DPD algorithm.

###### Table 2-27: power unite requirement for 2T2R and 4T4R O-RU7-2

Module

Power consumption

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
|  | 2T2R | 4T4R | Unit |  |
| FPGA | 9 | 11 | W |  |
| Transceiver | 5.74 | 11.48 | W |  |
| PLL | 1.78 | 1.78 | W |  |
| PA | 5 | 10 | W | 0.75 TDD ratio |
| LAN | 0.15 | 0.3 | W | 0.25 TDD ratio |
| Ethernet PHY | 1 | 1 | W |  |
| DDR | 0.9 | 0.9 | W |  |
| Flash | 0.1 | 0.1 | W |  |
| others | 1.65 | 1.65 | W |  |
| component total power consumption | 25.3 | 38 | W |  |
| O-RU7-2 power consumption | 29.7 | 45 | W | on board power efficiency 0.85 |

</div>

1

###### Table 2-28: Power unite function

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| Function | Priority |  |
| Enable/Disable | Mandatory |  |
| Power good | Optional |  |
| Input voltage | Mandatory | 48V |
| Output voltage | Mandatory | 0.85V 1.2V 1.3V 1.5V 1.8V  2.5V 3.3V 5V 12V etc. |

</div>

3

4

1. *b. Hardware Design*
2. The block diagram of POE reference design is shown in Figure 2-28. Data Pair and Spare Pair are the POE
3. connections on the data transformers used to source the power over Ethernet. VAUX is a local backup power
4. source if desired. Isolated Output is the isolated raw output from the PoE sub-circuit. 9

![]({{site.baseurl}}/assets/images/851094ba07b1.png)![]({{site.baseurl}}/assets/images/35ffd88112b3.png)![]({{site.baseurl}}/assets/images/feb7736e36ce.png)![]({{site.baseurl}}/assets/images/5dba57ae8927.png)![]({{site.baseurl}}/assets/images/2cd306081e62.png)![]({{site.baseurl}}/assets/images/9b04ade6ac10.png)![]({{site.baseurl}}/assets/images/9205cb177064.png)![]({{site.baseurl}}/assets/images/0b348c07a14b.png)

CPORT

DATA PAIR

V

PORT

CPD 0.1uF

3.3k

SPARE

~

PAIR ~

+

-

47nF

VIN

Isolated Power Supply

Isolated

Output

VPORT HSGATE

HSSRC

AUX

PWRGD

Run

Power over Ethernet Controller

GND

~ +

~ -

1

2

### 2.3.7 Thermal

###### Figure 2-28: PoE Reference Design Diagram

![]({{site.baseurl}}/assets/images/1f453db2f1e5.png)

VAUX (9V to 60V)

* 1. O-RU7-2 will use passive cooling.

### 2.3.8 Environmental and Regulations

* 1. The O-RU7-2 hardware system is RoHS Compliant. The power supply unit is EMC FCC/CISPR Class B compliant.
  2. Table 2-29 lists the environmental related features and parameters.

###### Table 2-29: Environmental Features

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Item Name** | **Description** |
| Operating Temperature | -5?C to +55?C |
| Non-operating Temperature | -40?C to 70?C |
| Operating Relative Humidity | 8% to 90% (non-condensing) |
| Non-operating Relative Humidity | 5% to 95% (non-condensing) |

</div>

9

## 2.4 FHM7-2 Hardware Reference Design

1. The FHM7-2 is used to bridge the connation between O-DU7-2 and O-RU7-2. It needs to power the O-RU7-2 and
2. reduces the front haul bandwidth.

### 2.4.1 FHM7-2 High-Level Functional Block Diagram

1. Figure 2-29 shows the FHM7-2 block diagram for this reference design. Following sections below describe the
2. functionality, interface and performance for each respective block of the Digital Processing Unit. As device integration
3. is an ongoing activity, chip boundaries may be fluid and some functionality may move from one block to another or
4. entire functionalities may be absorbed into other blocks. The sections below describe the functional blocks independent
5. of which physical device they may reside in.

7

RS232

FPGA+ARM

Flash

CLK

Serdes

10G SFP+.1

?

Serdes

RJ45

10G SFP+.8

FAN

DDR

25G

SFP+

25G

SFP+

Uplink

Cascade

220V

AC

Power

8

?

Power interface8

48V

Power interface1

###### Figure 2-29: FHM7-2 General Block Diagram

10

### 2.4.2 FHM7-2 Hardware Components

1. 2.4.2.1 Digital Processing Unit
2. The FHM7-2 need a lot of high speed interface. And for the shared cell application, the uplink need combining function.
3. *i. FPGA Solution Design 1*
4. In this section, the requirement and reference design based on FPGA are described.
5. *a. FPGA Requirement*
6. The requirements are as follows:
7. ? Interface requirement are shown in Table 2-30

###### Table 2-30: Interface requirements of the FPGA

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Serdes lane | At least 8 lanes of bi-direction10Gb Serdes |
| At least 2 lanes of bi-direction25Gb Serdes |

</div>

5

1. *b. FPGA Design*
2. This unit handles multiple high speed interfaces and the digital signal processing. The main chipset is based on
3. FPGA with ARM multi-core processor while FPGA is responsible for high speed data processing and ARM cores
4. are mainly for configuration and management.
5. The FPGA function is shown below:
6. For the uplink processing, the eCPRI interface module is used to receiver eCPRI link form O-RU7-2 and generate
7. the reference frequency and time slot for time and frequency synchronization. Then the eCPRI de-frame module
8. get the uplink IQ bit stream of the time domain the carrier from O-RU7-2. If the uplink IQ stream is compressed,
9. then it needs the de-compression module to translate them into original bit width.
10. After that all the O-RU7-2 uplink IQ streams are combined together and the precondition for the combine function is
11. that each stream from different O-RU7-2 are aligned in time domain.
12. Then the time domain IQ date go to the Low PHY function module to change to frequency domain IQ samples by
13. FFT. Other function is not detailed at here.
14. If the FHM7-2 can support two separate cells then the two cell uplink signal should be aggregated or interleaved
15. together. Then capture the IQ streams in the eCPRI frame and transmitted by eCPRI interface to the O-DU7-2.
16. For the downlink processing, the procedure is much the same with uplink but with an inverse sequence. The
17. difference is that the downlink signal is duplicated with 8 copies and sends to different O-RU7-2.
18. There is also a eCPRI OAM module; actually this module will work with the processor (Arm) to accommodate the
19. OAM of different O-RU7-2 and the FHM7-2 itself.

eCPRI

interface

1

eCPRI

frame

eCPRI

frame

eCPRI

frame

I/Q mux

Buffer

Buffer

eCPRI

interface

Buffer

eCPRI

interface

Buffer

eCPRI

interface

Buffer

Other cell aggregati on

Ethernet

OAM

eCPRI

de-frame

De-

compress

eCPRI

de-frame

De-

compress

eCPRI

de-frame

De-

compress

I/Q combiniti on

Other cell aggregati on

eCPRI

interface

Buffer

Compress

ion

eCPRI

i e

nterfac

eCPRI

frame

eCPRI

interface

Other cell

eCPRI de-

frame

eCPRI

interface

###### Figure 2-30: FHM7-2 Digital Processing Block Diagram

* 1. The resource needed for the FPGA is listed below:

###### Table 2-31: FPGA Resource usage for FHM7-2

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **Device** | **FF** | **LUT** | **URAM** | **BRAM** | **DSP** |
| IQ MUX | 1000 | 1000 | 0 | 0 | 0 |
| Cascade | 2000 | 2000 | 0 | 0 | 0 |
| IQ combine | 2000 | 2000 | 0 | 32 | 0 |
| eCPRI deframe\*9 | 63000 | 63000 | 0 | 180 | 0 |
| eCPRI frame\*9 | 63000 | 63000 | 0 | 180 | 0 |
| Fronthaul(eCPRI)x  10 | 100000 | 80000 | 0 | 10 | 0 |
| compress\*1 | 3000 | 3000 | 0 | 24 | 32 |
| de\_compress\*8 | 24000 | 24000 | 0 | 192 | 208 |
| ethernet\_cm | 3000 | 3000 | 0 | 15 | 0 |
| Other | 20000 | 15000 | 0 | 200 | 0 |

</div>

5

6

### 2.4.3 Synchronization and Timing

1. In this section we describe the internal and external timing and synchronization that are managed by this
2. entity.
3. ***a. Hardware Requirements***
4. ? CLK requirement
5. The FHM7-2 may support some kinds of synchronization method:
6. 1) IEEE 1588/SyncE
7. 2) Support GPS/GLONASS/GALILEO/BEIDOU
8. So the PLL must support 1pps or eCPRI CDR as the reference frequency.

###### Table 2-32: Requirements of the PLL device

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Device** | **Description** |
| 1PPS | Supported |
| Synchronizer number | at least 1 |
| Output channel | At least 5 |
| VCO  integrated | Supported |

</div>

11

1. *b. Hardware Design*
2. This unit is to recover clock from external source and generate the synchronized clock to other devices. Upon
3. scenarios, there will be external sync source via eCPRI.

Reference clock from FPGA 390.625MHz

CLK

156.25MHz

125MHz

390.625MHz

156.25MHz

250MHz

To FPGA 25G Serdes To FPGA 10 Serdes0 To FPGA 10G Serdes1

For FPGA sys

For DDR function

15

###### Figure 2-31: CLK reference design for FHM7-2

1. For general FPGA device, each bank may have 4 Serdes channel. It is better to have separated clk to each bank.
2. So two clk of 156.25 MHz are needed for the FHM7-2, which is used for the 8 10G serdes interfaces with O-
3. RU7-2. One 390.625MHz is used for 2 25G serdes interface with O-DU7-2 or cascaded FHM7-2. One 125MHz is
4. used for FPGA system. One 250MHz clk for DDR device function. One 390.625MHz is used for 25G eCPRI
5. interface between O-DU7-2 and FHM7-2. The input of the CLK module comes from FPGA CDR function which
6. get reference clk from the eCPRI line rate. Usually, one PLL device which is integrated with VCO is needed.

### 2.4.4 External Interface Ports

1. List and provide description of all external interfaces.
2. *a. Hardware Requirements*
3. The following table shows the external ports or slots provided by FHM7-2.

###### Table 2-33: External Port List

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Port Name** | **Feature Description** |
| Fronthaul interface | Eight 10Gbps SFP+ transceiver interfaces |
| Two 25Gbps SFP+ transceiver interfaces |
| Debug interface | RJ45 for debug usage |
| Power interface | PLUG AC FEMALE for power cable |

</div>

9

1. *b. Hardware Design*
2. ? SFP+ case and connector
3. The SFP+ case and connector are standardized component on the market; following figure describes the form
4. factor of one SFP case which is integrated with connector. 14

15

![]({{site.baseurl}}/assets/images/313481aec91e.jpg)

16

1. ? RJ45 Ethernet interface

###### Figure 2-32: SFP+ case and connector

1. The RJ45 Ethernet interface is standardized component on the market; following figure describes the form
2. factor of one RJ45 interface. 20

21

22

![]({{site.baseurl}}/assets/images/83d4093ec0ad.jpg)

1

2

1. ? Power interface

###### Figure 2-33: RJ45 interface

1. The 220V AC power connector is standardized component on the market; following figure describes the form
2. factor of one 220V AC power connector. 6

![]({{site.baseurl}}/assets/images/d6c4745fe1e8.jpg)

7

8

### 2.4.5 Mechanical

###### Figure 2-34: AC power interface

1. The 1U rack mount chassis can contains the layout of the power unit and processing unit. The shell of FHM7-2 is
2. showing in the following figure. The power consumption of FHM7-2 is huge, so it may need a fan to accelerate the heat
3. dissipation.

![]({{site.baseurl}}/assets/images/bec291489624.jpg)

1

### 2.4.6 Power

**Figure 2-35: Shell Mechanical Diagram**

1. At minimum, fully describe the power consumptions for this white box. Include all AC/DC input or outputs
2. and their ratings. Not mandatory but if you like you can add summary of all component's power requirement
3. and overall white box.
4. ***a. Hardware Requirements***
5. ? Power requirement: The power solution is divided into two parts.
6. 1. Input power module: This power module must support AC to DC conversion. Usually
7. it converts 220V AC to 48V DC.
8. 2. Output power module: It will supply power to the O-RU7-2 connected to the FHM7-2 and
9. also the device on the FHM7-2 itself.

12

###### Table 2-34: Requirements of the power unit

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Item** | **Description** |
| Input voltage | AC:100V~264V |
| Output voltage | DC: 48V |
| Output power | At least 600W |

</div>

1. ***b. Hardware Design***
2. Describe hardware reference design for this power unit.
3. This unit has two main functions which are internal power supply and external/remote power supply. The input
4. power is normally AC (100V to 250V) but DC input could be optional. For remote power supply, it will support
5. -48V DC via either standalone cable or cat-6A cable.
6. Usually a separated AC-DC power supply is used for the 220V to 48V conversion. It is very common power
7. supply on the market.
8. It should have fan to cool itself and handle for easy plug in and out.
9. Then the output power is divided into two portions. One for O-RU7-2 power supply, the other is for the device
10. on the FHM7-2 board.
11. For the on-board power solution, 48V to 12V converter is needed as standard 1/8 brick module. Then the power
12. voltage is further changer to lower level such as 5V, 3.3V, 1.1V, 1.0V and so on by DC/DC or LDO devices.

### 2.4.7 Thermal

1. Active cooling.

### 2.4.8 Environmental and Regulations

1. The FHM7-2 will fulfil the requirement in 4.6.3 of [6].

## 2.5 FHGW7-2->8 Hardware Reference Design

1. The FHGW7-2->8 is used to bridge the connation between O-DU7-2 and O-RU8. It needs to power the O-RU8 and reduces
2. the front haul bandwidth.

### 2.5.1 FHGW7-2->8 High-Level Functional Block Diagram

1. Figure 2-36 depicts the FHGW7-2->8 block diagram for this reference design. Following sections will describe the
2. functionality, interface and performance for each respective block within the figure. Since device integration is an
3. ongoing activity, chip boundaries may be fluid and some functionality may move from one block to another or entire
4. functionalities may be absorbed into other blocks. The descriptions below describe the functional blocks independent
5. of which physical device they may reside in.

12

RS232

FPGA+Processor

Flash

CLK

Serdes

10G SFP+.1

?

Serdes

RJ45

10G SFP+.8

FAN

DDR

25G

SFP+

25G

SFP+

Uplink

Cascade

220V

AC

Power

13

?

Power interface8

48V

Power interface1

###### Figure 2-36: FHGW7-2->8 General Block Diagram

1

### 2.5.2 FHGW7-2->8 Hardware Components

* 1. 2.5.2.1 Digital Processing Unit
  2. The FHGW7-2->8 need a lot of high speed interface. It would need the function of transforming the FH protocol with
  3. split Option 8 to one of with split Option 7-2. This requires availability of the Low PHY function as required by option
  4. 7-2. For the shared cell application, the uplink will also need a combining function for aggregation and dis aggregation
  5. of data.
  6. *i. FPGA Design Solution 1*
  7. In this section, the requirement and reference design based on FPGA are described.
  8. *a. FPGA Requirement*
  9. ? Interface requirement: Interface requirements for this FPGA design solution are provided in the
  10. following table.

###### Table 2-35: Interface Requirements of the FPGA

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Item Name** | **Description** |
| Serdes lane | At least 8 lanes of bi-direction10Gb Serdes |
| At least 2 lanes of bi-direction25Gb Serdes |

</div>

14

1. *b. FPGA Design*
2. This unit handles multiple high speed interfaces and the digital signal processing. The main chipset is based
3. on FPGA with multi-core processor while FPGA is responsible for high speed data processing and processor
4. cores are mainly for configuration and management.
5. The FPGA function is shown below:
6. For the uplink processing, the CPRI interface module is used to receive CPRI link from O-RU8 for
7. generation of the reference frequency and time slot for time and frequency synchronization. Then the CPRI
8. de-frame module gets the uplink IQ bit stream of the time domain the carrier from O-RU8. If the uplink IQ
9. stream is compressed, then it needs the de-compression module to translate them into original bit width. All
10. the O-RU8 uplink IQ streams are combined and the precondition for the combine function is that each stream
11. from different O-RU8 are aligned in time domain. Then the time domain IQ data go to the Low PHY
12. function module to change to frequency domain IQ samples by performing FFT function.
13. If the FHGW7-2-->8 can support two separate cells then the two cell uplink signal should be aggregated or
14. interleaved together. Then FHGW7-2-->8 should capture the IQ streams in the eCPRI frame and transmit it via
15. eCPRI interface to the O-DU7-2. For the downlink processing, the procedure is very much the same as uplink
16. but in reverse order. The difference is that the downlink signal is duplicated with 8 copies and transmits that
17. to different O-RU8. There is also one eCPRI/CPRI OAM module. Actually this module will work with the
18. processor to accommodate the OAM of different O-RU8 and the FHGW7-2-->8 itself.

FHGW 7-2-8

eCPRI

interface

CPRI

interface

I/Q combiniti on

Buffer

CPRI

in ce

terfa

CPRI

interface

Other cell

Buffer

Buffer

Ethernet

OAM

CPRI

de-frame

De-

compress

CPRI

de-frame

De-

compress

CPRI

de-frame

De-

compress

Low - PHY

Other cell aggregati on

Compress

ion

eCPRI

frame

Buffer

Buffer

3

eCPRI de-

frame

eCPRI

interface

Low - PHY

Other cell aggregati on

I/Q mux

CPRI

frame

CPRI

interface

CPRI

frame

CPRI

interface

CPRI

frame

CPRI

interface

Buffer

###### Figure 2-37: FHGW7-2->8 Digital Processing Block Diagram

1. The FPGA resource needed for the FPGA is listed below:

###### Table 2-36: FPGA Resource Usage for FHGW7-2-->8

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **Device** | **FF** | **LUT** | **URAM** | **BRAM** | **DSP** |
| IQ MUX | 1000 | 1000 | 0 | 0 | 0 |
| Cascade | 2000 | 2000 | 0 | 0 | 0 |
| IQ combine | 2000 | 2000 | 0 | 32 | 0 |
| eCPRI deframe\*2 | 14000 | 14000 | 0 | 40 | 0 |
| eCPRI frame\*2 | 14000 | 14000 | 0 | 40 | 0 |
| CPRI deframe\*8 | 40000 | 40000 | 0 | 0 | 0 |
| CPRI frame\*8 | 40000 | 40000 | 0 | 0 | 0 |
| Fronthaul(eCPRI)x2 | 20000 | 16000 | 0 | 2 | 0 |
| Fronthaul(CPRI)x8 | 37890 | 24804 | 0 | 8 | 0 |
| compress\*1 | 3000 | 3000 | 0 | 24 | 32 |
| de\_compress\*8 | 24000 | 24000 | 0 | 192 | 208 |
| Ethernet CM | 3000 | 3000 | 0 | 15 | 0 |
| iFFT & CP+ | 7763 | 5323 | 0 | 27 | 23 |
| FFT & CP- | 7763 | 5323 | 0 | 27 | 23 |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| PRACH front end | 4000 | 3000 | 0 | 32 | 50 |
| Other | 20000 | 15000 | 0 | 200 | 0 |

</div>

1

### 2.5.3 Synchronization and Timing

1. This section describes the synchronization and timing mechanism that is used in the FHGW7-2->8.
2. *a. Hardware Requirements*
3. ? CLK requirement
4. The FHGW7-2->8 may support some kinds of synchronization method:
5. 1) IEEE 1588/SyncE
6. 2) Support GPS/GLONASS/GALILEO/BEIDOU
7. So the PLL must support 1pps or eCPRI CDR as the reference frequency.

###### Table 2-37: Requirements of the PLL device

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Item Name** | **Description** |
| 1PPS | Supported |
| Synchronizer number | at least 1 |
| Output channel | At least 6 |
| VCO  integrated | Supported |

</div>

11

1. *b. Hardware Design*
2. This unit is to recover clock from external source and generate the synchronized clock to other devices. Upon
3. scenarios, there will be external sync source via eCPRI.

Reference clock from FPGA 390.625MHz

CLK

122.88MHz

125MHz

122.88MHz

15

390.625MHz

122.88MHz

250MHz

To FPGA 25G Serdes To FPGA 10 Serdes0 To FPGA 10G Serdes1

For FPGA sys

For DDR function

For Low PHY function

###### 16 Figure 2-38: CLK reference design for FHGW7-2->8

1. For general FPGA device, each bank may have four Serdes channels. It is better to have separated CLK signal to
2. each bank. Three CLK signals of 122.88MHz are needed for the FHGW7-2->8. One CLK signal of 125MHz is
3. used for FPGA system, while one CLK signal of 250MHz is used for DDR device function. One CLK signal of
4. 390.625MHz is used for 25G eCPRI interface between O-DU7-2 and FHGW7-2->8, and one CLK signal of
5. 122.8MHz is used for low PHY function. The input of the CLK module comes from FPGA CDR function which
6. can get reference CLK from the sync-plane of eCPRI. Usually, one PLL device integrated with VCO and two
7. separated synthesizers is needed.

### 2.5.4 External Interface Ports

1. This section describes the external interface ports that are needed in the FHGW7-2->8.
2. *a. Hardware Requirements*
3. The following table shows the external ports or slots provided by FHGW7-2->8.
4. **Table 2-38: External Port List**

##### Port Name Feature Description

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Fronthaul interface | Eight 10Gbps SFP+ transceiver interfaces |
| Two 25Gbps SFP+ transceiver interfaces |
| Debug interface | RJ45 for debug usage |
| Power interface | PLUG AC FEMALE for power cable |

</div>

13

1. *b. Hardware Design*
2. ? SFP+ case and connector
3. The SFP+ case and connector are standardized component on the market; following figure describes the
4. form factor of one SFP case which is integrated with connector. 18

![]({{site.baseurl}}/assets/images/313481aec91e.jpg)

###### Figure 2-39: SFP+ case and connector

1. ? RJ45 Ethernet interface
2. The RJ45 Ethernet interface is standardized component on the market; following figure describes the form
3. factor of one RJ45 interface.

![]({{site.baseurl}}/assets/images/83d4093ec0ad.jpg)

1

2

1. ? Power interface

###### Figure 2-40: RJ45 interface

1. The 220V AC power connector is standardized component on the market; following figure describes the
2. form factor of one 220V AC power connector. 6

![]({{site.baseurl}}/assets/images/d6c4745fe1e8.jpg)

###### Figure 2-41: AC power interface

8

### 2.5.5 Mechanical

1. The 1U rack mount chassis can contain the layout of the power unit and processing unit. The shell of FHGW7-2->8 is
2. showing in the following figure. The power consumption of FHGW7-2->8 is huge, so it may need a fan to accelerate the
3. heat dissipation.

![]({{site.baseurl}}/assets/images/bec291489624.jpg)

5

6

### 2.5.6 Power

###### Figure 2-42: Shell Mechanical Diagram

1. At minimum, fully describe the power consumptions for this white box. Include all AC/DC input or outputs and their
2. ratings. Not mandatory but if you like you can add summary of all component's power requirement and overall white
3. box.
4. *a. Hardware Requirements*
5. ? Power requirement: The power solution is divided into two parts.
6. 1. Input power module
7. This power module must support AC to DC conversion. Usually it converts 220V AC to 48V DC.
8. 2. Output power module
9. It will supply power to the O-RU8 connected to the FHGW7-2?8 and also the device on the FHGW7-2->8
10. itself.

18

19

1

2

###### 3 Table 2-39: Power Unit Requirements

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Item Name** | **Description** |
| Input voltage | AC:100V~264V |
| Output voltage | DC: 48V |
| Output power | At least 600W |

</div>

4

1. *b. Hardware Design*
2. This unit has two main functions which are internal power supply and external/remote power supply. The input
3. power is normally AC (100V to 250V) but DC input could be optional. For remote power supply, it will support
4. -48V DC via either standalone cable or cat-6A cable. Usually a separated AC-DC power supply is used for the
5. 220V to 48V conversion. It is very common power supply on the market. It should have fan to cool itself and
6. handle for easy plug in and out. Then the output power is divided into two portions. One for O-RU8 power
7. supply, the other is for the device on the FHGW7-2->8 board. For the on board power solution, 48V to 12V
8. converter is needed as standard 1/8 brick module. Then the power voltage is further changer to lower level such
9. as 5V, 3.3V, 1.1V, 1.0V and so on by DC/DC or LDO devices.

### 2.5.7 Thermal

1. Active cooling shall be used for this fronthaul gateway.

### 2.5.8 Environmental and Regulations

1. This FHGW7-2->8 will fulfil the requirements as described in 4.6.3 of [6]. 18

# 1 Annex 1: Parts Reference List

1. According to WG7 scope and charter, component selection for example implementation of white box hardware is
2. allowed for WG7 but would not be mandatory in any Specification.
3. Recommended O-DU7-2 parts reference is given in table below:

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **No.** | **Part Number** | **Descriptions** |
| 1 | Intel(R) Xeon(R) Processor D-2183IT | Intel(R) Xeon(R) Skylake D D-2100 SoC processor |
| 2 | Intel(R) I350 | Intel(R) 1GbE x4 Ethernet controller |
| 3 | Intel(R) X557-AT2 | Intel(R) 10GbE x2 Ethernet controller |
| 4 | Intel(R) I210 | Intel(R) 1GbE Ethernet controller |
| 5 | ASPEED(R) AST-2500 | ASPEED(R) BMC controller |
| 6 | UniIC(R) SCQ08GU03H1F1C-26V | UniIC(R) DDR4 8GB |
| 7 | Powerleader(R) MTFDDAK480TDC- 1AT1ZABYY | Powerleader(R) SSD 480GB |
| 8 | Accelink(R) RTXM228-551 | Accelink(R) 10Gbps Optical module |

</div>

5

6

7

1

# 2 Annex 2 FHGW7-2->8 Option 8 CPRI specification reference

3 design

1. Please refer to "Annex2 - CPRI specification reference design" in O-RAN.WG7.IPC-HRD-Opt8.0-v03.00,
2. https://[www.o-ran.org/specifications,](http://www.o-ran.org/specifications) reuse all contents except to replace the O-DU8 with O-DU7-2, and replace the
3. FHM8 with FHGW7-2->8 .

7

# 8 Annex 3 FHGW7-2->8 Option 8 CPRI spec reference design -

9 Management plane

1. Please refer to "Annex3 - Option 8 CPRI spec reference design - Management plane" in O-RAN.WG7.IPC-HRD-
2. Opt8.0-v02.00,https://[www.o-ran.org/specifications,](http://www.o-ran.org/specifications) reuse all contents except to replace the O-DU8 with O-DU7-2, and
3. replace the FHM8 with FHGW7-2->8.

13

# 14 Annex 4 FHGW7-2->8 management plane reference design

15

## A4.1 Scope

1. This document specifies the management plane reference design for FHGW7-2->8. Except content specify here,
2. other management function is based ORAN WG4 Management Plane Specification and reuse it.

## A4.2 Reference

1. The following documents contain provisions which, through reference in this text, constitute provisions of the
2. present document.
3. - References are either specific (identified by date of publication, edition number, version number, etc.) or
4. non-specific.
5. - For a specific reference, subsequent revisions do not apply.
6. - For a non-specific reference, the latest version applies. In the case of a reference to a 3GPP document (including
7. a GSM document), a non-specific reference implicitly refers to the latest version of that document in Release 15.
   1. [1] 3GPP TR 21.905: "Vocabulary for 3GPP Specifications"
   2. [2] Interface Specification: "CPRI Specification Common Public Radio Interface (CPRI)", V7.0, October 2015.
   3. [3] ORAN-WG4.CUS.0-v03.00 Technical Specification, 'O-RAN Fronthaul Working Group Control, User and
   4. Synchronization Plane Specification'. https://[www.o-ran.org/specifications](http://www.o-ran.org/specifications)
   5. [4] ORAN-WG4.MP.0-v03.00 Technical Specification, 'O-RAN Fronthaul Working Group Control, Management
   6. Plane Specification'. https://[www.o-ran.org/specifications](http://www.o-ran.org/specifications) 7

## A4.3 Definitions and Abbreviations

1. For the purposes of the present document, the terms and definitions given in 3GPP TR 21.905 [1] and the
2. following apply. A term defined in the present document takes precedence over the definition of the same term, if any,
3. in 3GPP TR 21.905 [1].

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Abbreviations | Full name |
| C&M | Control and Management |
| CPRI | Common Public Radio Interface |
| LOF | Lost of Frame |
| LOS | Lost of Signal |
| LSB | Least Significant Bit |
| M-Plane | Management Plane |
| MSB | Most Significant Bit |
| O-DU7-2 | O-RAN Distributed Unit with split option 7-2 |
| FHGW7-2->8 | FHGW between O-DU7-2 and O-RU8 |
| O-RU8 | O-RAN Radio Unit with split option 8 |
| RAI | Remote Alarm Indication |
| S-Plane | Synchronization Plane |
| SAP | Service Access Point |
| SDI | SAP Defect Indication |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| U-Plane | User Plane |

</div>

1

* 1. Note: If without clear clarification in this Annex, O-DU always refer to O-DU7-2, FHGW always refers to FHGW7-
  2. 2->8, O-RU always refers to O-RU8.

## A4.4 High Level Description

* 1. This specification refers to following architecture model.
  2. From the perspective of the lower layer connection protocol, as shown in the following figure, the architecture model
  3. includes:
  4. - Ethernet/VLAN protocol connection is applied between O-DU7-2 and FHGW7-2->8
  5. - Ethernet/VLAN protocol connection is applied between FHGW7-2->8 and FHGW7-2->8
  6. ![]({{site.baseurl}}/assets/images/1b44f8f01c31.png)- CPRI protocol connection is applied between FHGW7-2->8 and O-RU8

11

###### Figure 1 Architecture-lower layer connection

1. From M-Plane perspective, as shown in the figure below, this architecture model includes:
2. - NETCONF client is deployed in O-DU7-2
3. - NETCONF server is deployed in FHGW7-2->8 and O-RU8
4. - O-DU and FHGW7-2->8 are connected with NETCONF management protocol
5. - O-DU and O-RU8 are connected with NETCONF management protocol

![]({{site.baseurl}}/assets/images/c46ebb29d93b.png)1

* 1. Figure 2 Architecture M-Plane connection
  2. From C-Plane & U-Plane perspective, as shown in the figure below, this architecture model includes:
  3. - High-PHY is deployed in O-DU7-2
  4. - Low-PHY is deployed in O-RU8
  5. - The O-DU and FHGW7-2->8 connect with e-CPRI protocol and split with Option7-2.
  6. - The FHGW7-2->8 and FHGW7-2->8 connect with e-CPRI protocol and split with Option7-2.
  7. - The FHGW7-2->8 and O-RU8 connect with CPRI protocol and split with Option8.

![]({{site.baseurl}}/assets/images/eafcf7feb066.png)1

1. Figure 3 Architecture C&U-Plane connection
2. The content of this chapter includes the management of FHGW7-2->8 in accordance with the description of the previous
3. architecture model chapter

## A4.5 Interface Management

### A4.5.1 CPRI Interface Management

1. The basic properties management of the CPRI interface are in the following section, while the details of U-Plane data
2. flow and transceiver parameter acquisition are in the specification of section 4.3.1.

### A4.5.1.1 CPRI Interface YANG model

1. Yang model: o-ran-interfaces-cpri.yang
2. The basic properties management of CPRI Interface includes:
3. - The configuration of CPRI protocol version
4. - The configuration of CPRI interface model
5. - The configuration of CPRI line speed rate
6. - The configuration of CPRI link coding parameter
7. - CPRI start pointer configuration of C-Plane and M-Plane
8. - read CPRI status
9. To make it simple, there are some working assumption about the basic property's management:
10. 1) CPRI interface mode. It is agreed that the northward interface of CPRI link is the master port mode, and the
11. southward interface is the slave port mode. For example, in the case of direct connection, O-DU or FHGW7-2->8
12. southward CPRI interface is master port mode, O-RU8 port is slave port mode; while in the case of cascading, the
13. northward port at the level above the O-RU8 cascade is configured with slave port mode, and the southward port at
14. the level below the O-RU8 concatenation is configured with master port mode.
15. 2) CPRI physical layer is in state A when it is ready. To ensure that CPRI link can reach state B and is in physical
16. layer synchronization state, CPRI port shall be configured as follows:
17. a) CPRI line rate configuration is as follows:

###### Table 4 The configuration of CPRI line rate

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| CPRI line bit  rate [Mbit/s] | Z | X | W | Y | B |
| 10137.6 | 0, 1, ..., 149 | 0, 1, ..., 255 | 0, 1, ..., 15 | 0, 1, 2, ... , 19 | 0, 1, ... , 159 |
| 12165.12 | 0, 1, 2, ... , 23 | 0, 1, ... , 191 |
| 24330.24 | 0, 1, 2, ... , 47 | 0, 1, ... , 383 |

</div>

1. b) IQ sampling bits width

###### Table 5 IQ sampling bits width

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| Direction of link | Symbol for sample width | Range[bits] |
| Downlink | M | 16 |
| Downlink | M | 8(with compression algorithm) |
| Uplink | M' | 16 |
| Uplink | M' | 8(with compression algorithm) |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| 13 | c) | CPRI link coding |
| 14 | 1. | Link encoding can be configured as: |
| 15 | 2. | 64B/66B |
| 16 | 3. | 64B/66B RS-FEC(optional) |
| 17 | d) | CPRI protocol version |
| 18 |  | In order to ensure that the CPRI master and slave ports enter the state C, both ends of the CPRI agreement |
| 19 |  | shall use the CPRI protocol version No. 1. "Protocol Version" is defined in the chapter "L1 Inband Protocol" |
| 20 |  | of the CPRI specification. |

</div>

1. Note: The difference between Protocol Version 1 and 2 is that when Protocol Version = 2, all data (except subchannel
2. Ns = 0 control word BYTES #Z.X.Y Y<=1 and subchannel Ns = 2) need to add perturbation before linear encoding.
3. With Protocol Version = 1, perturbation is not required. For simplicity, use the Protocol Version = 1 configuration.
4. 3) To ensure that the master and slave ports of CPRI enter the state D, the control and management channel
5. conventions are configured as follows:
6. a) the control management channel, namely Ethernet channel rate configuration is as follows:

###### Table6 Ethernet channel rate configuration

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| CPRI line bit rate[Mbit/s] | Length of control word[bit] | Control word consisting of BYTES# | Minimum ethernet bit rate[Mbit/s](# Z.194.0=rr111 111) | Maximum ethernet bit rate[Mbit/s](# Z.194.0=rr010 100) |
| 10137.6 | 128 | #Z.X.0,#Z.X.1,#Z.X.2,#Z.X.3,#Z. | 7.68 | 337.92 |
|  |  | X.4,#Z.X.5,#Z.X.6,#Z.X.7,#Z.X.8, |  |  |
|  |  | #Z.X.9,#Z.X.10,#Z.X.11,#Z.X.12, |  |  |
|  |  | #Z.X.13,#Z.X.14,#Z.X.15 |  |  |
| 12165.12 | 128 | #Z.X.0,#Z.X.1,#Z.X.2,#Z.X.3,#Z. | 7.68 | 337.92 |
|  |  | X.4,#Z.X.5,#Z.X.6,#Z.X.7,#Z.X.8, |  |  |
|  |  | #Z.X.9,#Z.X.10,#Z.X.11,#Z.X.12, |  |  |
|  |  | #Z.X.13,#Z.X.14,#Z.X.15 |  |  |
| 24330.24 | 128 | #Z.X.0,#Z.X.1,#Z.X.2,#Z.X.3,#Z. | 7.68 | 337.92 |
|  |  | X.4,#Z.X.5,#Z.X.6,#Z.X.7,#Z.X.8, |  |  |
|  |  | #Z.X.9,#Z.X.10,#Z.X.11,#Z.X.12, |  |  |
|  |  | #Z.X.13,#Z.X.14,#Z.X.15 |  |  |

</div>

* 1. b) CPRI C-Plane and M-Plane pointer, pointing to the starting location for fast control and management of
  2. Ethernet channels. The Ethernet Pointer is configured as 20
  3. 4) To ensure that the master and slave ports of CPRI enter state E and State F, the O-RU8 slave port can use the
  4. established Ethernet control and management channel to execute the NETCONF Call Home procedure in Chapter
  5. 4?
  6. 5) CPRI state conventions
  7. 1) CPRI starting state
  8. A. Standby
  9. B. L1 Synchronization and Rate Negotiation
  10. C. Protocol Setup
  11. D. C&M Plane (L2+) Setup
  12. E. Interface and Vendor specific Negotiation
  13. F. Operation
  14. 4. Based on the above CPRI startup states, the M-Plane defines quarriable CPRI startup states, including
  15. ENABLE and DISABLE. When the equipment at both ends of the CPRI link enters the F state, the startup
  16. state of CPRI is ENABLE state, and the startup state of CPRI is DISABLE state if it is in the A-E state.
  17. 2) CPRI link status
  18. CPRI specification defines the following alarms:
  19. A. LOS
  20. B. LOF
  21. C. SDI
  22. D. RAI
  23. 5. Based on the above CPRI link alarms, the quarriable CPRI link states, including NORMAL and
  24. ABNORMAL, are defined at the time of the alarms. If have alarm for the ABNORMAL, otherwise
  25. NORMAL.

1

### A4.5.1.2 Initialization CPRI Interface

###### Pre-condition:

* + 1. The M-Plane connection between O-DU and FHGW7-2->8 is established, and the FHGW7-2->8 southward CPRI
    2. interface initialization begins.

###### Post-condition:

* + 1. At the end of this procedure, the initialization configuration from the FHGW7-2->8 southward to the CPRI interface
    2. is completed.

###### Procedure:

* + 1. 1) In the startup phase, according to the definition in the o-ran-interfaces-cpri.yang model, the NETCONF client
    2. completed the initialization configuration of basic parameters such as line-bit-rate, sample width, Protocol
    3. Version, Pointer P for each FHGW7-2->8 southward CPRI interface.
    4. 2) During the link establishment procedure of CPRI, Protocol Version, Pointer P and other information are included
    5. in the control word of CPRI and sent to O-RU8.

### A4.5.1.3 Retrieve Transceiver infomation

###### Pre-condition:

* + 1. The M-Plane connection between O-DU and FHGW7-2->8 is established.

###### Post-condition:

* + 1. At the end of this procedure, O-DU obtains the information of FHGW7-2->8 transceiver module.

###### Procedure:

* + 1. 1) During startup or hot plug, The FHGW7-2->8 detects transceiver modules and stores data information
    2. from transceiver modules in files;
    3. 2) The NETCONF client obtains the file according to the netconf-yang file upload procedure.
    4. 3) Exception:
    5. ? If transceiver module is inserted during the file upload procedure, the contents of files before the
    6. procedure or failure will be provided.
    7. ? If FHGW7-2->8 can not read data from transceiver module, or file does not exist, then FHGW7-2->8
    8. does not create file or delete the file created before (note: Te file upload will failure because the
    9. file does not exist during the file upload procedure.).

### A4.5.1.4 Configuration CPRI Interface for U-Plane

###### Pre-condition:

* + 1. The M-Plane connection between O-DU and FHGW7-2->8 is established.

###### Post-condition:

* + - 1. At the end of this procedure, the U-Plane from the FHGW7-2->8 side is managed and configured. Configuration of
      2. the U-Plane data flow path between O-DU and FHGW7-2->8 is completed.

###### Procedure:

* + - 1. 1) The NETCONF client will configure and manage the U-Plane configuration of the FHGW7-2->8
      2. southward CPRI interface according to the newly added transport-flow type in the o-ran-processing-
      3. element.yang model. and set the transport-flow-type to "CPRI INTERFACE ", and carry out
      4. corresponding CPRI interface configuration of U-Plane.
      5. 2) eaxc-id identifies the end-to-end data flow from the processing end of the O-DU to the end of the O-
      6. RU8 antenna. Configure the data flow path between O-DU and FHGW7-2->8 according to eaxc
      7. information.
      8. 3) The FHGW7-2->8 side completes the mapping from eaxc to the FHGW7-2->8 southward CPRI port. The
      9. specific CPRI interface IQ configuration information includes whether to compress IQ data, starting bit
      10. position of IQ data, starting bit position of compression information, AGC bit position etc. After
      11. completing the IQ configuration procedure of the CPRI interface, the CPRI mapping relationship on the
      12. southward CPRI interface is determined. In the case of different cell bandwidth and antenna
      13. configuration, different IQ configuration is required on the CPRI interface.

## A4.6 FHGW7-2->8 U-Plane Routing and Carrier Configuration

* + - 1. The target of this chapter is similar to "Chapter 12 Details of O-RU8 Operations" of [4].
      2. U-Plane configuration in this chapter specifically refers to the U-Plane configuration of Option 7-2. Based
      3. on the architectural model in Chapter 2. Indoor Pico Cell have a Low PHY function (FFT/iFFT), as well as
      4. copy and combine functions, which U-Plane configuration described in this chapter.
      5. This chapter presents the configuration of U-Plane message routing between O-DU and FHGW7-2->8. After
      6. completing the U-Plane configuration, routing is established between the O-DU and the FHGW7-2->8's U-Plane
      7. application endpoints, and IQ data can be exchanged using the U-Plane application protocol defined by [3].
      8. The U-Plane message routing configuration includes:
      9. 1) eaxc-id address format definition
      10. 2) U-Plane endpoint addressing
      11. 3) U-Plane message routing configuration procedure 30

### A4.6.1 General Description

1. A4.6.1.1 YANG Model Files
2. o-ran-uplane-conf-hub.yang: defining the U-Plane configuration capability of the FHGW7-2->8 .

### A4.6.1.2 Specific Conventions

* 1. Table 8

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
|  | O-RAN M-plane Specification | This Specification |
| eAxC\_ID subfield bit width | Not fixed | Fixed |
| Non-delay management service | supported | Not supported |

</div>

3

### A4.6.1.3 YANG Model Detail

1. U-Plane configuration model is a user plane configuration of the Low PHY deployed in FHGW7-2->8. The
2. YANG model is defined in o-ran-uplane-conf-hub.yang, which mainly includes:
3. ? List of multiple static TX endpoints: static-low-level-tx-endpoints
4. ? List of multiple static RX endpoints: static-low-level-rx-endpoints
5. ? List of multiple configurable TX endpoints: low-level-tx-endpoints. Each configurable TX endpoint
6. low-level-tx-endpoint map to a static TX endpoint static-low-level-tx-endpoint.
7. ? List of multiple configurable RX endpoints: low-level-rx-endpoints. Each configurable RX endpoint
8. low-level-rx-endpoint map to a static RX endpoint static-low-level-rx-endpoint.
9. ? List of multiple TX links: low-level-tx-links. Each low-level-tx-link, One end link e-CPRI data flow
10. model eth-flow defined in the o-ran-processing-element.yang, the other end link to configurable TX
11. endpoint low-level-tx-endpoint.
12. ? List of multiple RX links: low-level-rx-links. Each RX link low-level-rx-link, one end link to e-CPRI
13. data flow model eth-flow defined in the o-ran-processing-element.yang, the other end link to
14. configurable TX endpoint low-level-rx-endpoint. 19

![]({{site.baseurl}}/assets/images/89f3ac7dbee0.png)1

* 1. **Figure 1 FHGW7-2->8 U-Plane Configuration**

### A4.6.2 Format of eAxC\_ID

* 1. As defined in [3], eAxC\_ID consists of four parameters: DU-PORT, RU-PORT, CC-ID and BAND-
  2. SECTOR-ID. The sequence of parameters in eAxC\_ID must obey the CUS interface specification definition.
  3. In this specification, eAxC\_ID is 16 bit, Each subfield is configured with a fixed length: [DU-
  4. PORT]:[BAND-SECTOR]:[CCID]:[RU-PORT] = 2:6:4:4.
  5. <**du-port-bitmask**> 1100000000000000 </**du-port-bitmask**>
  6. <**band-sector-bitmask**> 0011111100000000 </**band-sector-bitmask**>
  7. <**ccid-bitmask**> 0000000011110000 </**ccid-bitmask**>
  8. <**ru-port-bitmask**> 0000000000001111 </**ru-port-bitmask**>

12

13

### 14 A4.6.3 U-Plane Endpoint Addressing

1. For FHGW7-2->8 based on e-CPRI Option7-2 to CPRI Option8, eaxc-id is used for resource mapping and U-
2. Plane endpoint addressing.
3. Different eaxc-id correspond to different logical functions, such as cell, carrier, air separation data flow, etc. It
4. identifies the end-to-end data flow from the processing end of the O-DU to the end of the O-RU8 antenna.
5. During the configuration procedure:
6. O-DU should configure the eaxc-id for FHGW7-2->8 U-Plane endpoints.so as to realize the mapping between
7. logical functions and FHGW7-2->8 physical resources. Refer to the YANG model **low-level-tx-endpoint** and
8. **low-level-rx-endpoint** in the o-ran-uplane-conf-hub.yang.
9. O-DU should configure the relation between the U-Plane endpoint and the northward e-CPRI data flow for the
10. FHGW7-2->8, to realize the mapping between the northward e-CPRI data flow and the O-RU8 physical resources.
11. O-DU should configure the relation between the U-Plane endpoint and the southward e-CPRI data flow for
12. the FHGW7-2->8, to realize the mapping between the data flow to e-CPRI and the physical resources of O-RU8.
13. See 15.2.4 shared cell for details.
14. O-DU should configure the relation between the U-Plane endpoint and the southward CPRI data flow for the
15. FHGW7-2->8, to realize the mapping between the southward CPRI data flow and the O-RU8 physical resource.
16. See 15.2.4 shared cell for details.
17. In the procedure of data transmission, combined with the 15.2.1.1 CPRI U-Plane data flow model:
18. In the downlink direction, the FHGW7-2->8 obtains the e-CPRI data flow from the e-CPRI interface, finds the
19. corresponding U-Plane Tx endpoint(**low-level-tx-endpoint**) according to eaxc-id, and sends the processed data
20. to the CPRI data flow on the corresponding CPRI interface.
21. In the uplink direction, after the FHGW7-2->8 receives the CPRI data flow from the CPRI interface, it finds the
22. corresponding U-Plane Rx endpoint(**low-level-rx-endpoint**), according to eaxc-id, and sends the processed data
23. to the e-CPRI data flow on the corresponding e-CPRI interface.

24

1. The rules for configuring eaxc-id by O-DU are as follows:
2. - For the same uplink U-Plane data flow,
3. ? The low level TX endpoint (**low-level-tx-endpoint**) in FHGW7-2->8 should be configured with the same
4. eaxc-id with TX endpoint (tx-endpoint) in O-RU8;
5. - For the same downlink U-Plane data flow,
6. ? The low level RX endpoint (**low-level-rx-endpoint**) in FHGW7-2->8 should be configurated with the same
7. eaxc-id with the RX endpoint (rx-endpoint) in O-RU8;
8. The FHGW7-2->8 should reject configuration requests that violate the above rules.

33

* 1. The diagram below shows an example of eaxc-id assignment in the architecture converting from eCPRI
  2. Option7 to CPRI Option8.

![]({{site.baseurl}}/assets/images/32c53c298b1c.png)3

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| 4 |  | |
| 5 |  | **Figure 2 Examples of eaxc-id assignment** |
| 6 |  |  |
| 7 | A4.6.4 | U-Plane Routing and Carrier Configuration |

</div>

1. The list YANG model of **low-level-tx-endpoints** and **low-level-rx-endpoints** in the o-ran-uplane-conf-
2. hub.yang, represent the collection of FHGW7-2->8 U-Plane endpoints. Each element of the list represents a TX
3. endpoint or RX endpoint. The endpoint parameter (eaxc-id) represents the local address of the endpoint, It's an
4. unsigned 16-bit integer, and follows the eaxc-id address format defined above.
5. The NETCONF client is responsible for correlation all to the same interface, and a unique eaxc-id address
6. assigned by the **low-level-rx-endpoint** element and the **low-level-tx-endpoint** element referenced by the **level-**

###### rx-link/the level-tx-link.

1. Note:
2. ? The **low-level-rx-endpoint** and the **low-level-tx-endpoint** can be assigned to the same eaxc-id.
3. ? The NETCONF server should reject configuration requests that violate the above rules.
4. ? The default eaxc-id parameter has a value of 0. 19

###### Pre-condition:

1. ? The M-Plane connection between the NETCONF client and the NETCONF server is established.

###### Post-condition:

* 1. ? Assign eaxc-id to the U-Plane transceiver endpoint.
  2. ? Carrier creation can be further performed.

###### Procedure:

* 1. 1) The NETCONF client determines the following elements whether exist provided by the NETCONF server:
  2. ? **low-level-tx-endpoint** element: by reading o-ran-uplane-conf-hub.yang of the **static-low-level-tx-**
  3. **endpoints** list;
  4. ? **low-level-rx-endpoint** element: by reading o-ran-uplane-conf-hub.yang of the **static-low-level-rx-**
  5. **endpoints** list;
  6. ? **interface** elements: by reading o-ran-interfaces.yang **interface** list.
  7. 2) The NETCONF client determines the ability and parameters of O-RU8 exposure through the following
  8. nodes:
  9. ? the **static-low-level-tx-endpoints** and the **static-low-level-rx-endpoints** exposed ability.
  10. ? the **endpoint-types** and the **endpoint-capacity-sharing-groups** exposed ability,

###### Note 1 :

* 1. ? The information above shall be considered when the NETCONF client concatenates **low-level-t/rx-**
  2. **endpoints** (where the argument **name** points to **static-level-t/rx-endpoints**).
  3. 3) For the elements identified in Step 1), the NETCONF client checks the following relationships:
  4. ? **static-low-level-tx-endpoint** element and **interface** element;
  5. ? **static-low-level-rx-endpoint** element and **interface** element.
  6. 4) For **static-low-level-rx-endpoint**, the NETCONF client determines its ability to support time-
  7. management-free and/or time-managed:
  8. ? The information of the delay service type supported by the endpoint is exposed through the parameter
  9. **delayed-data-transfer-supported** under **static-low-level-rx-endpoint.** and Supporting time
  10. management is a mandatory feature.
  11. ? Configure the non-time-managed-delay-enabled parameter of low-level-rx-endpoint. the default value
  12. of this parameter is FLASE, namely the endpoint support time management service by default.
  13. ***5)*** The NETCONF client can optionally check the transmission connection of the NETCONF server, as
  14. described in Chaper 4.6 in [3].
  15. **Note** 2:
  16. ? After this step completes smoothly, the NETCONF client knows which NETCONF servers provide
  17. the l**ow-level-tx-endpoint** and **low-level-rx-endpoint elements** that the Tx/Rx endpoint of the
  18. NETCONF client service has access to.
  19. 6) The NETCONF client determines accessible the **low-level-rx-endpoint** elements and the **low-level-tx-**
  20. **endpoint** elements, suitable for the target cell configuration (that is, connected to a specific antenna array
  21. and able to support the target business type).
  22. 7) The NETCONF client assigns an unique eaxc-id to the endpoint identified in Step 1).

###### Note 3:

* 1. ? For all endpoints connected to the same **interface** element, the eaxc-id is enforced to be unique. and
  2. is associated with either the **lower-level-rx-endpoint element** or the **lower-level-tx-endpoint**
  3. element.

![]({{site.baseurl}}/assets/images/195da0d47a17.png)

1

###### 2 Figure 3 FHGW7-2->8 U-Plane Configuration Procedure

1

## A4.7 FHGW7-2->8 Delay Management

1. The fronthaul interface between O-DU and FHGW7-2->8 adopts e-CPRI based on Option 7-2x function split
2. defined by ORAN-WG4.CUS.0-v03.00. Its delay management complies with the technical requirements in Section
3. 11.3, "Delay Management of shared Cell".

### A4.7.1 Convention

1. The current delay measurement and management model is implemented according to the FHGW7-2->8 functional
2. model given in Section 15.2.4. The functional model supports the following combine types:
3. **Combine type1:** Uplink data from southward CPRI interfaces are combined in CPRI domain, after processed by
4. the Low PHY and output in the format of Option7-2x at the FHGW7-2->8 northward interface, namely uplink data of
5. CPRI domain combined within the FHGW7-2->8.
6. **Combine type 2:** Southward Option7-2x port (e-CPRI) Northward data can be combined in the 7-2x data domain.
7. This mode is the FHM mode of O-RAN Option7-2x shared cell. This method supports the combine of 1~n sub-FHGW7-
8. 2->8 uplinked data at the FHGW7-2->8.
9. Corresponding to **Combine type 1**, the combine delay of Option8 field is reflected as a part of TBDelayUL.
10. Corresponding to **Combine type 2**, the combine delay of option7-2x field is reflected as T\_Comb.

###### Unsupported combines:

1. Data combine between Option8 southward port and Option7-2X southward port is not currently supported.

19

### A4.7.2 Delay Parameters

1. Based on e-CPRI's definition of reference points, take the 2-level FHGW7-2->8 cascade as an example, and the
2. delay reference points are shown in the figure below.

![]({{site.baseurl}}/assets/images/5eed3ee776cf.png)![]({{site.baseurl}}/assets/images/292eb9d33336.png)![]({{site.baseurl}}/assets/images/5b425c7799a8.png)![]({{site.baseurl}}/assets/images/daf9bae01e38.png)![]({{site.baseurl}}/assets/images/27d8ed5cae9c.png)![]({{site.baseurl}}/assets/images/4120d6c80005.png)![]({{site.baseurl}}/assets/images/11ca36164a41.png)![]({{site.baseurl}}/assets/images/125afc079495.png)![]({{site.baseurl}}/assets/images/4901964c1c70.png)![]({{site.baseurl}}/assets/images/b1a59075e523.png)![]({{site.baseurl}}/assets/images/5cf8028365be.png)![]({{site.baseurl}}/assets/images/b5dd997cffd2.png)![]({{site.baseurl}}/assets/images/06a220fe379a.png)![]({{site.baseurl}}/assets/images/876c679860b4.png)![]({{site.baseurl}}/assets/images/125afc079495.png)![]({{site.baseurl}}/assets/images/4901964c1c70.png)![]({{site.baseurl}}/assets/images/4120d6c80005.png)![]({{site.baseurl}}/assets/images/11ca36164a41.png)![]({{site.baseurl}}/assets/images/d879d3b488d6.png)![]({{site.baseurl}}/assets/images/f12ccbe583b5.png)![]({{site.baseurl}}/assets/images/9bca0595670d.png)![]({{site.baseurl}}/assets/images/83b5bd1fa1f8.png)![]({{site.baseurl}}/assets/images/c36b1d1e6da4.png)![]({{site.baseurl}}/assets/images/82e302345887.png)![]({{site.baseurl}}/assets/images/5ceebeec0a01.png)![]({{site.baseurl}}/assets/images/73cef781e5cf.png)![]({{site.baseurl}}/assets/images/0a5d75bf94ab.png)![]({{site.baseurl}}/assets/images/d9301b516455.png)![]({{site.baseurl}}/assets/images/dffe1e06ccc4.png)![]({{site.baseurl}}/assets/images/81e33c4154c5.png)![]({{site.baseurl}}/assets/images/86b0014eece8.png)![]({{site.baseurl}}/assets/images/82a3afa3eead.png)![]({{site.baseurl}}/assets/images/4778f5acc4c5.png)![]({{site.baseurl}}/assets/images/2cc38cab6073.png)![]({{site.baseurl}}/assets/images/65285ab8c3aa.png)![]({{site.baseurl}}/assets/images/6c1fb4a8f3cf.png)![]({{site.baseurl}}/assets/images/7bc7689c0b0b.png)![]({{site.baseurl}}/assets/images/de4a4e0af243.png)![]({{site.baseurl}}/assets/images/21690cb2cef3.png)![]({{site.baseurl}}/assets/images/7e8e3cd5a8ce.png)![]({{site.baseurl}}/assets/images/2cc38cab6073.png)![]({{site.baseurl}}/assets/images/65285ab8c3aa.png)![]({{site.baseurl}}/assets/images/b3bdc4cd6575.png)![]({{site.baseurl}}/assets/images/efd0f36dfc9b.png)![]({{site.baseurl}}/assets/images/49dd3a7207d8.png)![]({{site.baseurl}}/assets/images/65285ab8c3aa.png)![]({{site.baseurl}}/assets/images/0ae8cc133229.png)![]({{site.baseurl}}/assets/images/7bd2c2d31877.png)![]({{site.baseurl}}/assets/images/b4abd03d8ea3.png)![]({{site.baseurl}}/assets/images/a42937e1c42e.png)![]({{site.baseurl}}/assets/images/c7b0ded97bbb.png)![]({{site.baseurl}}/assets/images/ed1118686446.png)![]({{site.baseurl}}/assets/images/6100b560155d.png)![]({{site.baseurl}}/assets/images/7bd2c2d31877.png)![]({{site.baseurl}}/assets/images/b4abd03d8ea3.png)![]({{site.baseurl}}/assets/images/7784e9995d54.png)![]({{site.baseurl}}/assets/images/dfa312df6622.png)![]({{site.baseurl}}/assets/images/0c883018d19f.png)![]({{site.baseurl}}/assets/images/126555059f0b.png)![]({{site.baseurl}}/assets/images/f3eb8baab006.png)![]({{site.baseurl}}/assets/images/4ae2ad2a031c.png)![]({{site.baseurl}}/assets/images/4470b8e965f5.png)![]({{site.baseurl}}/assets/images/c9ae007001d6.png)![]({{site.baseurl}}/assets/images/2bc783c818b2.png)![]({{site.baseurl}}/assets/images/46d134351708.png)![]({{site.baseurl}}/assets/images/a8461c8504cd.png)![]({{site.baseurl}}/assets/images/60acdbe11f9f.png)![]({{site.baseurl}}/assets/images/973828301a9a.png)![]({{site.baseurl}}/assets/images/63403bb7de90.png)

23

###### ![]({{site.baseurl}}/assets/images/a2ae5b183ea6.png)![]({{site.baseurl}}/assets/images/5bc4eff449dd.png)![]({{site.baseurl}}/assets/images/ba7bfd5553ad.png)24 Figure 4 Definition I of Time delay reference point and delay parameter

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| N FHGW7-2->8  cascades | symbols of figure | | Time delay parameter model | | Specification |
| DL | UL |
| e-CPRI  network transmission delay  (For the NTH fronthaul connection,  n=1...N) | T12\_n T34\_n | | T12\_n\_min T12\_n\_max | T34\_n\_min T34\_n\_max | Configure parameters.  O-DU parameter acquisition method: Method 1: Predefined  Method 2: Delay measurement Notify O-RU8 via M-Plane |
| O-DU TX/RX  window | T1a Ta4 | C Plane | T1a\_min\_cp\_dl T1a\_max\_cp\_dl | T1a\_min\_cp\_ul T1a\_max\_cp\_ul | Intermediate values.  According to the receive/send window of FHGW7-2->8 and network transmission delay calculation |
| U  Plane | T1a\_min\_up  T1a\_max\_up | Ta4\_min  Ta4\_max |
| O-DU delay profile | NA | | T1a\_max\_upO-  DU  TXmaxO-DU | Ta4\_maxO-DU RXmaxO-DU | The capability parameter of O-DU. O-DU can be told to O-RU8 via M-Plane |
| FHGW7-2->8#1  Copy/combine processing delay on southward cascade port | T\_Copy T\_Comb | | T\_Copy | T\_Comb | Capability parameters (not configurable).  The FHGW7-2->8 is reported to the O-DU via the M-Plane |
| NA | | NA | Ta3\_prime\_max T\_Waiting | Configure parameters.  O-DU is configured to the FHGW7-2->8 via the M-Plane |
| FHGW7-2->8#2  Processing delay on southward directly connected port FHGW7-2->8  delay profile | TBDel ayDL  TBDel ayUL | C Plane | TBDelay\_min\_c p\_dl TBDelay\_max\_ cp\_dl | TBDelay\_min\_cp\_ul TBDelay\_max\_cp\_ul | Capability parameters (not configurable). Set values for bandwidth, subcarrier intervals, and ports  It may include:  The IQ data received from the northward interface in the cache is extracted to the Low PHY processing unit;  Low PHY treatment  Make a copy of the data to send to the southward interface |
| U Plane | TBDelay\_min\_u p\_dl TBDelay\_max\_ up\_dl | TBDelay\_min\_up\_ul TBDelay\_max\_up\_ul |
| NA | | Tcp\_adv\_dl |  | Capability parameters (not configurable) The descending C-Plane is relative to the advance of the -U-Plane  Make a copy of the data to send to the  southward interface |
| FHGW7-  2->8#2+O-RU8  equivalent delay | TB2a TBa3 | C Plane | TB2a\_min\_cp\_d l TB2a\_max\_cp\_ dl | TB2a\_min\_cp\_ul TB2a\_max\_cp\_ul | Intermediate values. |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
|  |  | U Plane | TB2a\_min\_up  TB2a\_max\_up | TBa3\_min  TBa3\_max |  |

</div>

![]({{site.baseurl}}/assets/images/05733eb5f7d4.png)![]({{site.baseurl}}/assets/images/edb5b1c4263a.png)![]({{site.baseurl}}/assets/images/3f75537e73c5.png)![]({{site.baseurl}}/assets/images/fe1947923924.png)![]({{site.baseurl}}/assets/images/5f9005505f1a.png)![]({{site.baseurl}}/assets/images/4ea22f55d2db.png)![]({{site.baseurl}}/assets/images/a53509bbcad7.png)![]({{site.baseurl}}/assets/images/2c51e1a4a96f.png)![]({{site.baseurl}}/assets/images/686df2852681.png)![]({{site.baseurl}}/assets/images/b2535c0d3d03.png)![]({{site.baseurl}}/assets/images/4dd4a6d7d367.png)![]({{site.baseurl}}/assets/images/3eafabd94688.png)![]({{site.baseurl}}/assets/images/e0f8cf5ab2cf.png)![]({{site.baseurl}}/assets/images/70373ec733e0.png)![]({{site.baseurl}}/assets/images/4ea22f55d2db.png)![]({{site.baseurl}}/assets/images/a53509bbcad7.png)![]({{site.baseurl}}/assets/images/2c51e1a4a96f.png)![]({{site.baseurl}}/assets/images/686df2852681.png)![]({{site.baseurl}}/assets/images/6d5010adc8a6.png)![]({{site.baseurl}}/assets/images/ca622f8fb1af.png)![]({{site.baseurl}}/assets/images/011eb669ed4a.png)![]({{site.baseurl}}/assets/images/8e9060cb0c9f.png)![]({{site.baseurl}}/assets/images/f4dc35d568c8.png)![]({{site.baseurl}}/assets/images/c12ddcb190f6.png)![]({{site.baseurl}}/assets/images/d31c8435136a.png)![]({{site.baseurl}}/assets/images/3e5f681e5700.png)![]({{site.baseurl}}/assets/images/5b6325e39496.png)![]({{site.baseurl}}/assets/images/091aec04a607.png)![]({{site.baseurl}}/assets/images/1afe2af8a715.png)![]({{site.baseurl}}/assets/images/933d9232f241.png)![]({{site.baseurl}}/assets/images/c2dad7b5e1bf.png)![]({{site.baseurl}}/assets/images/2c20eb83c922.png)![]({{site.baseurl}}/assets/images/5df0fc3539d9.png)![]({{site.baseurl}}/assets/images/21c7d1424195.png)![]({{site.baseurl}}/assets/images/f6a60cb614f4.png)![]({{site.baseurl}}/assets/images/52779de9beba.png)![]({{site.baseurl}}/assets/images/e9480f6d54e3.png)![]({{site.baseurl}}/assets/images/4a968a1a7f4e.png)![]({{site.baseurl}}/assets/images/913f66118b96.png)![]({{site.baseurl}}/assets/images/e8d4fb61d805.png)![]({{site.baseurl}}/assets/images/6b4448dc8a98.png)![]({{site.baseurl}}/assets/images/91d5c0b9dec1.png)![]({{site.baseurl}}/assets/images/ae4072684bf0.png)![]({{site.baseurl}}/assets/images/dee916aac1bb.png)![]({{site.baseurl}}/assets/images/73e04406e61c.png)![]({{site.baseurl}}/assets/images/47122f561ce2.png)![]({{site.baseurl}}/assets/images/59a1bcc97e84.png)![]({{site.baseurl}}/assets/images/f29ccb539464.png)![]({{site.baseurl}}/assets/images/3938b66db2e3.png)![]({{site.baseurl}}/assets/images/0db977b4be36.png)![]({{site.baseurl}}/assets/images/be97a06a7be5.png)![]({{site.baseurl}}/assets/images/5aba4b88c6be.png)![]({{site.baseurl}}/assets/images/3f1cb76df91d.png)![]({{site.baseurl}}/assets/images/0d40ae40928b.png)![]({{site.baseurl}}/assets/images/d901f11766b9.png)![]({{site.baseurl}}/assets/images/440b986418a4.png)![]({{site.baseurl}}/assets/images/db0b55568b92.png)![]({{site.baseurl}}/assets/images/c6d7803abe85.png)![]({{site.baseurl}}/assets/images/e72e187a8d11.png)![]({{site.baseurl}}/assets/images/b4dff2903dd7.png)![]({{site.baseurl}}/assets/images/25f3e4f427a9.png)![]({{site.baseurl}}/assets/images/9366deb04b23.png)![]({{site.baseurl}}/assets/images/9af8fc71f3ae.png)![]({{site.baseurl}}/assets/images/034ef9904767.png)![]({{site.baseurl}}/assets/images/cdc78db2be9f.png)![]({{site.baseurl}}/assets/images/152f3d276b64.png)![]({{site.baseurl}}/assets/images/bdc1d40c89b4.png)![]({{site.baseurl}}/assets/images/9c5c32c643c9.png)![]({{site.baseurl}}/assets/images/c07f130e6eef.png)![]({{site.baseurl}}/assets/images/66da04982a10.png)![]({{site.baseurl}}/assets/images/7a1de05e396a.png)![]({{site.baseurl}}/assets/images/5012d1b788ef.png)![]({{site.baseurl}}/assets/images/4d377c55eae7.png)![]({{site.baseurl}}/assets/images/6316d8c90358.png)![]({{site.baseurl}}/assets/images/6b31dc99ca05.png)![]({{site.baseurl}}/assets/images/ad00b5f60919.png)

1

###### Figure 5 Definition II of delay reference point and delay parameter

1. The time of delay in Option 7-2 fronthaul changes within a certain range,because of transmission changes in the
2. packet switching network, includes:
3. **Table 1 Delay Parameters**

6

### A4.7.3 Relation of Delay Parameters

###### Table 2 Relation of delay parameters

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
|  | DL | UL |
| CPRI Optical  fiber delay calculation | T12\_3 = T34\_3 = (T14-Toffset)/2 | |
| e-CPRI MSG5  delay measurement | tD = (t2-tCV2)-(t1+tCV1) | |
| O-DU TX/RX  window calculation | T1a\_max\_up <= TB2a\_max\_up+ T12\_min T1a\_min\_up >= TB2a\_min\_up + T12\_max T1a\_max\_cp\_dl <= TB2a\_max\_cp\_dl + T12\_min  T1a\_min\_cp\_dl >= TB2a\_min\_cp\_dl +  T12\_max | Ta4min <= TBa3min + T34min Ta4max >= TBa3max + T34max T1a\_min\_cp\_ul >= TB2a\_min\_cp\_ul + T12\_max  T1a\_max\_cp\_ul <= TB2a\_max\_cp\_ul  + T12\_min |
| O-DU delay profile constraints | T1a\_max\_up-T1a\_min\_up>=TXmaxO-DU T1a\_max\_upO-DU>=T1a\_max\_up | RXmaxO-DU>=Ta4\_max-Ta4\_min Ta4\_maxO-DU>=Ta4\_max |
| Shared cell | T\_Copy < T\_Comb | |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| hypothesis |  | |
| Shared cell configuration parameter relationships |  | See section 3.14.4.4 |

</div>

1

### A4.7.4 Timing Relations in Uplink and Downlink

1. The following examples is figure of timing relationships of the U-Plane data transmission.

### A4.7.4.1 Timing Relations in Uplink

O-DU

Option7-2

FHGW#1

Option7-2

FHGW#2

Option8

O-RU

5

###### Figure 6 An example of uplink U-Plane (IQ) data timing

![]({{site.baseurl}}/assets/images/b0907f3e764d.png)![]({{site.baseurl}}/assets/images/3f531d68068f.png)

t=0

Symbol#0 IQ DATA

T34\_3

CPRI IQ

CPRI IQ

Ta3+T\_Cal\_UL

T\_CPRI

Symbol#0

**Option8**

Send Window(UL)

U

TBDelay\_max\_up\_ul

TBDelay\_min\_up\_ul

T34\_2\_max

T34\_2\_min

T\_Comb

Ta3\_prime\_max

T\_Comb

T34\_1\_max

T34\_1\_min

Receive Window(UL)

U

Ta4\_min

Ta4\_max

**Option7-2**

1. UL delay model parameters are shown in the figure above, and the conditions for the time series relationships to be
2. established are as follows:

###### Condition 1: The introduction of a cascade of FHGW7-2->8s does not change the total delay between O-DU

1. **and O-RU8**
2. Because the processing delay of uplink U-Plane message combining is added to the total prequel delay between O-DU
3. and O-RU8, the distance between O-DU and O-RU8 must be reduced in order to maintain the same delay between O-
4. DU and O-RU8 compared with the cascade node, so as to ensure that O-DU receives UL U-Plane messages in the O-
5. DU receiving window. In other words, the prequel configuration should satisfy:

15 T34\_max>=T34\_1\_max+T\_Comb(for FHGW7-2->8#1)+T34\_2\_max

1. Generalize to the case that there are N FHGW7-2->8 cascading in the fronthaul network,

! !%$

* 1. ! T34\_i\_max <= T34\_max - ! T\_Comb(for O - Hub#i)

"#$ "#$

* 1. Among which:
  2. - T34\_n\_max is the maximum transmission delay between FHGW7-2->8#1 and O-DU (n=1), and the maximum
  3. transmission delay between FHGW7-2->8#n and FHGW7-2->8#n-1 (n=2..., N);
  4. - T\_comb is the processing delay of FHGW7-2->8 up-combine procedure, which depends on the capability of
  5. FHGW7-2->8 and is reported through M-Plane.
  6. - T34\_max is the maximum uplink transmission delay between O-DU and the final FHGW7-2->8 .
  7. 6.

###### Condition 2: UL U-Plane data sent by The FHGW7-2->8 to the northward node for combining does not exceed

* 1. **Ta3\_prime\_max at the latest.**
  2. In order to ensure that O-DU receives UL U-Plane messages in the O-DU receiving window, the latest time that
  3. FHGW7-2->8#1 can send to UL U-Plane messages combined with O-DU is "Ta4\_max-T34\_1\_max". Because
  4. T34\_1\_max depends on the location of FHGW7-2->8#1, you need to tell FHGW7-2->8#1 the latest time to send. This time
  5. is defined as Ta3\_prime\_max, which needs to be configured to FHGW7-2->8#1 through M-Plane, and satisfies:
  6. Ta3\_prime\_max (for FHGW7-2->8#1)<=Ta4\_max-T34\_1\_max
  7. Generalize to the case that there are N FHGW7-2->8 cascaded in the fronthaul network,
  8. Ta3\_prime\_max (Cascading FHGW7-2->8#n)

&

&%$

* 1. <= Ta4\_max - ! T34\_i\_max - :! T\_Comb (for cascading FHGW7-2->8#i) , n >= 2

"#$

"#$

0, n = 1

19

###### Condition 3: The FHGW7-2->8's wait time for combine processing should be greater than or equal to the time

1. **it receives all UL data**
2. Consider T\_Comb, receiving UL U-Plane messages before "Ta3\_prime\_max-T\_comb" is limited to UL message
3. combination. In other words, even if FHGW7-2->8#1 did not receive all UL U-Plane messages before "Ta3\_prime\_max-
4. t\_comb", FHGW7-2->8#1 should combine any UL messages received and send them to O-DU before
5. Ta3\_prime\_max.This time "Ta3\_prime\_max (configuration) -T\_comb (ability)" is defined as T\_Waiting and is counted
6. in FHGW7-2->8#1.In order to combine all UL U-Plane messages, the configured Ta3\_prime\_max should meet the
7. following criteria:
8. T\_Waiting = Ta3\_prime\_max (for FHGW7-2->8#1) - t\_comb (for FHGW7-2->8#1)>=TBa3\_max+ T\_34\_2\_max
9. Generalize to the case that there are N FHGW7-2->8 cascading in the fronthaul network,

! !%$

1. TBa3\_max + ! T34\_i\_max + ! T\_Comb (for FHGW7-2->8#i) <= Ta3\_prime\_max (for FHGW7-2->8#n)

"#&'$ "#&

1

### 2 A4.7.4.2 Timing Relations in Downlink

![]({{site.baseurl}}/assets/images/db5e80c9d664.png)

**Option7-2**

t=0

Send window(DL)

U

Symbol#0

U plane date

T12\_1\_min

T\_Copy

T\_Copy

T12\_2\_min

T12\_2\_max

U

Receive Window(DL)

TBDelay\_max\_up\_dl

CPRI IQ

T12\_3

Symbol#0

IQ DATA

CPRI IQ

T2a+T\_Cal\_DL

T\_CPRI

Symbol#0

TBDelay\_min\_up\_dl

T12\_1\_max

T1a\_min\_up

T12\_max\_up

O-DU

Option7-2

FHGW#1

Option7-2

FHGW#2

Option8

O-RU

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| 3 |  | **Option8** |
| 4 |  | **Figure 7 Example of timing sequence of downlink U-Plane (IQ) data** |
| 5 | 7. | The DL temporal relationship as shown in the figure above is valid under the following conditions: |
| 6 | **8.** | **Condition 1: The maximum transmission delay of uplink and downlink is equal, namely,** |
| 7 |  | 9. T12\_max=T34\_max |
| 8 |  | 10. T12\_i\_max=T34\_i\_max (*i=*1~N) |
| 9 | **11.** | **Condition 2: T\_Comb>T\_Copy, the uplink combine delay is greater than the downlink copy delay** |
| 10 |  | Let's say that the UL combine is larger than the DL copy delay. Therefore, as long as the existing network and the |

</div>

1. group of the FHGW7-2->8#1 configuration meets the UL delay management requirements, the DL delay management of
2. the shared cell does not require additional requirements, which is that the downlink data can be received in the receiving
3. window of the FHGW7-2->8#2. Although DL does not need additional requirements, the O-DU knows that T\_Copy is
4. beneficial to the optimization of the O-DU fan window. Therefore, T\_Copy is defined as the ability parameter of the
5. FHGW7-2->8.

16

### A4.7.5 Delay Management Procedure

1. The procedure of delay management is shown in the figure below.

1

Get HUB unit capability parameters

T\_Copy/Comb Get HUB unit capability parameters

? TBDelayDL/UL

Get RRU capability parameters

T\_Cal\_DL/UL\_max/Toffset/T2a/Ta3/N

"

?

Get HUB Delay Parameter T14

?

Measure delay of eCPRI

?

Measure delay of eCPRI

?

?

alt [UP]

?

\*

Config Time Parameter T3a\_prime\_max

(11)

(12)

Configure delay compensation value T\_Cal\_DL/T\_Cal\_UL

M

Plane

waiting

Calc T\_

M

Plane

c T3a\_prime\_max

Cal

and received Windows

c send

Cal

\_1,T12\_2,T34\_1,T34\_2

lc T12

Ca

\_3,T34\_3,T\_Cal\_DL/UL

lc T12

Ca

M

Plane

tal Delay(T\_CPRI) for CPRI

ure To

Config

Measure T14 of CPRI

?

M

Plane

NETCONF

Server

NETCONF

Server

NETCONF

Server

NETCONF

Client

O-HUB#1

O-HUB#1

O-HUB#1

O-DU

1. **Figure 8 Delay management procedure**

### A4.7.6 Key Points in CPRI Domain Delay Management

1. CPRI domain uses a strict time delay adjustment approach and is less flexible than the window approach of e-
2. CPRI domain.

###### Downlink direction:

1. Section 4.9 DL\_Offset parameter in Option8 O-RU8 delay management model determines the "data/time"
2. relationship at the FHGW7-2->8 CPRI outlet. DL\_Offset, CPRI domain T12 of O-RU8, T\_Cal\_DL of O-RU8, T2a of O-
3. RU8, these four parameters determine the occurrence of air port delay of downlink signals in an additive way. Under the
4. current condition of indoor, DL\_Offset is required to have a certain margin because it involves the copy, summations
5. and air port alignment between O-RU8, so that the increase or deletion of O-RU8 in the same copy domain will not
6. cause the delay adjustment of other O-RU8 in the same cell. Specifically, the delay manager (O-DU) is required to
7. reserve sufficient margin when constructing DL\_Offset. The implementation methods are as follows:
   1. 1) Reserve enough delay amplification (such as adding the delay corresponding to X KM fiber by default in the
   2. indoor scene);
   3. 2) Increase the delay margin corresponding to x KM fiber based on the measurement and calculation of the first
   4. O-RU8 found in topology;
   5. 3) Select the maximum delay range after finding all O-RU8;
   6. 4) The delay is adjusted when O-RU8 is added and not adjusted when O-RU8 is withdrawn,

###### Uplink direction:

* 1. The principle is similar to the downlink case, except that the T\_Cal\_UL setting only involves O-RU8.

### A4.7.7 YANG Model File

* 1. o-ran-delay-management-hub.yang
  2. o-ran-shared-cell.yang

## A4.8 FHGW7-2->8 Shared Cell Configuration

### A4.8.1 General Description

14

### A4.8.2 YANG Model File

1. The FHGW7-2->8 in the architecture of e-CPRI Option7-2 to CPRI Option8 needs to support two type of shared cell
2. configurations at the same time:
3. - FHGW7-2->8 directly connected to O-RU8 shared cell configuration
4. - FHGW7-2->8 cascade FHGW7-2->8 shared cell configuration

![]({{site.baseurl}}/assets/images/fd7498523796.png)

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| 1 |  | |
| 2 |  | **Figure 9 Example of shared cell data flow** |
| 3 |  |  |
| 4 | A4.8.2.1 | Overview of FHGW7-2->8 Connect to O-RU8 |

</div>

1. In this specification, O-RU8 under the same FHGW7-2->8 can be configured for cell combination. In this
2. configuration, the FHGW7-2->8 shared cell information model consists of the following parts:
3. ? northward e-CPRI U-Plane interface
4. ? U-Plane configuration, configure the Low PHY
5. ? copy and combine FHGW7-2->8 direct O-RU8, is used to configure radio unit via CPRI interface connection,
6. and the radio unit combination constitutes the first share of data copy and combine the data model
7. ? southward CPRI U-Plane interface

![]({{site.baseurl}}/assets/images/22b8ce51e62c.jpg)1

###### 2 Figure 10 FHGW7-2->8 directly connecting O-RU8 Information

3

1. A4.8.2.2 Overview of FHGW7-2->8 Cascade to FHGW7-2->8
2. In this specification, FHGW7-2->8 cascading is supported. O-RU8 under cascading FHGW7-2->8s and directly
3. connected O-RU8 at the same level are not required to be configured for cell combining. In this configuration, the
4. shared cell information model includes the following parts:
5. ? northward e-CPRI U-Plane interface
6. ? copy and combine of FHGW7-2->8 cascade to FHGW7-2->8
7. ? southward e-CPRI U-Plane interface

![]({{site.baseurl}}/assets/images/0d739760e855.png)1

* 1. **Figure 11 FHGW7-2->8 cascade to FHGW7-2->8 Information**

3

### A4.8.2.3 YANG Model of Northward e-CPRI U-Plane Interface

1. The FHGW7-2->8 northward U-Plane interface YANG model is based on Ethernet and e-CPRI, refer to Chapter 4 of O-
2. RAN.WG4.MP.0-v03.00

### A4.8.2.4 YANG Model of Southward e-CPRI U-Plane Interface

1. The FHGW7-2->8 southward cascading FHGW7-2->8 U-Plane interface YANG model is based on Ethernet and e-CPRI,
2. refer to Chapter 4 of O-RAN.WG4.MP.0-v03.00

### A4.8.2.5 YANG Model of Southward CPRI U-Plane Interface

1. The FHGW7-2->8 southward CPRI U-Plane interface YANG model is based on CPRI, see 3.3.2 for details

### A4.8.2.6 YANG Model of U-Plane Configuration

1. The U-Plane configuration of the FHGW7-2->8 contains two parts.
2. One is Low PHY U-Plane level configuration. In the architecture of this specification, the Low PHY is deployed in the
3. FHGW7-2->8 and the High PHY is deployed in the O-DU, so the U-Plane configuration of the Low PHY is required.
4. Please see the details in 15.2.2.3.
5. Another is shared cell U-Plane configuration. This part similar to the U-Plane configuration in the shared cell section of
6. the O-RAN specification, which is mainly contains the configuration of U-Plane parameters such as eaxc-id related to
7. downlink copy and uplink combine.
8. To avoid misunderstanding, if not specifically mentioned, U-Plane configuration means Low PHY U-Plane
9. configuration.

### A4.8.2.7 YANG Model of Shared Cell Configuration

1. Two type of shared cell configurations:
2. - Shared cell configuration of FHGW7-2->8 connect to O-RU8, add a new YANG model file:o-ran-shared-cell-ecpri7-
3. to-cpri8.yang
4. - Shared cell configuration of FHGW7-2->8 cascade FHGW7-2->8, reuse the existing YANG mode file:o-ran-shared-
5. cell.yang

15

1. Each type of shared cell contains three parts: the parameters of shared cell capability, the parameters of shared cell
2. downlink copy and the parameters of shared cell uplink combine. The following tables compare the main relations and
3. differences between above two type of shared cell configuration with the option7-2 to Option7-2 FHM shared cell
4. configuration in O-RAN specification.
5. The parameters of shared cell capability,shared-cell-module-cap:

###### Table 3 Comparison of parameters of shared cell capability

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| YANG model of shared cell in ORAN- WG4.MP.0-v03.00 | FHGW7-2->8 cascade  FHGW7-2->8 in this Annex | FHGW7-2->8 connect to O-RU8 in this chapter |
| t-copy | reuse | Not needed. Reuse the TBDelay-\*\*\* in o-ran-delay- management.yang |
| t-combine | reuse | Not needed. Reuse the TBDelay-\*\*\* in o-ran-delay- management.yang |
| ta3-prime-max-upper-range | reuse | Not needed. The delay of CPRI fronthaul is consistent. |
| max-number-node-copy-and-combine | reuse | reuse |
| max-number-eaxcid-copy | reuse | reuse |
| max-number-eaxcid-combine | reuse | reuse |
| compression-method-supported | reuse | reuse |

</div>

22

23 Share cell downlink copy parameters,shared-cell-copy-entities:

###### Table 4 Comparison of parameters of shared cell downlink copy

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| YANG model of shared cell in ORAN- WG4.MP.0-v03.00 | FHGW7-2->8 cascade  FHGW7-2->8 in this Annex | FHGW7-2->8 connect to O-RU8 in this chapter |
| north-node-processing-element | reuse | low-level-tx-endpoint |
| south-node-processing-element | reuse,note 1 | south-node-processing-element-cpri |
| tx-eaxc-id | reuse | Necessary but no need to define, refer to the definition in o-ran-uplane-conf-hub.yang |
| rx-eaxc-id | reuse | No |
| downlink-radio-frame-offset | reuse | Necessary but no need to define, refer to the definition in o-ran-uplane-conf-hub.yang |
| downlink-sfn-offset | reuse | Necessary but no need to define, refer to the definition in  o-ran-uplane-conf-hub.yang |

</div>

2

* 1. Note 1:
  2. In the case that inter-stage RF combine is not supported, in the shared-cell-copy-entity of each copy rule, a
  3. northward node processes the element north-node-processing-element, and a southward node processes the element
  4. south-node-processing-element.

7

1. Shared cell uplink combines parameters,shared-cell-combine-entities:
2. **Table 5 Comparison of parameters of shared cell uplink combine**

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| YANG model of shared cell in ORAN- WG4.MP.0-v03.00 | FHGW7-2->8 cascade  FHGW7-2->8 in this Annex | FHGW7-2->8 connect to O-RU8 in this chapter |
| north-node-processing-element | reuse | low-level-rx-endpoint |
| south-node-processing-element | reuse | south-node-processing-element-cpri |
| rx-eaxc-id | reuse | o-ran-uplane-conf-hub.yang |
| compression-format | reuse | reuse |
| ta3-prime-max | reuse | No |
| downlink-radio-frame-offset | reuse | o-ran-uplane-conf-hub.yang |
| downlink-sfn-offset | reuse | o-ran-uplane-conf-hub.yang |
| n-ta-offset | reuse | o-ran-uplane-conf-hub.yang |
| number-of-prb | reuse | No |

</div>

### A4.8.3 Details of Operation

1. This section describes the operation details of the shared cell.

### A4.8.3.1 Topology Discovery

* 1. O-DU can obtain the O-RU8 topological relation (adjacency relation) of a shared cell. The shared cell topology
  2. discovery procedure is filled in to the ethernet forwarding Information Base (FIB) using the LBM/LBR connection
  3. check procedure running at the Ethernet layer as defined in Section 3.3.1.5 Connectivity Detection, and FIB is obtained
  4. based on O-DU. The difference is that, since the FHGW7-2->8 southward is based on CPRI IQ link, only the Ethernet
  5. network-based M-Plane has MAC address, therefore, the LBM/LBR procedure in the 3.3.1.5 Connectivity detection
  6. section, the FHGW7-2->8 southward is based on M-Plane. Transparent bridge functionality is used for O-RU8 with
  7. shared cell functionality running in FHGW7-2->8 and/or cascading mode.
  8. O-DU determines the topology by the following two-step procedure:
  9. 1) In the first phase, the procedure of using the 3.3.1.5 connectivity detection section is used to execute the
  10. Ethernet connection monitoring for all the discovered O-RU8 MAC addresses. The echo of the Ethernet
  11. loopback from the found MAC address should ensure that the transparent bridge in the FHGW7-2->8 and
  12. the cascading mode is automatically learning to pass the MAC addresses of these devices
  13. Note: In addition to Ethernet connection monitoring, DHCP discovery, Call Home and M-Plane connection
  14. establishment can also be used to fill in information in FIB, so maybe O-RU8 has a northward port to do the above.
  15. 2) In the second phase, O-DU uses the o-ran-ethernet-forwarding.yang model to discovery which MAC
  16. addresses have been learned by the ethernet bridge function. O-DU uses each Ethernet forwarding entry
  17. to determine adjacency relationships
  18. The following figure shows an example of the MAC address configuration of the FHGW7-2->8 mode and the FHGW7-2->8
  19. operation pattern configuration, and the relevant transparent bridge fib table.

![]({{site.baseurl}}/assets/images/2cc73be829e4.png)1

1. **Figure 12 topology discovery**

### A4.8.3.2 Configuration of Shared Cell

1. The FHGW7-2->8 needs to support two type of shared cell configurations. So does the downlink copy configuration.
2. - Shared cell downlink configuration of FHGW7-2->8 connect to O-RU8
3. - Shared cell downlink configuration of FHGW7-2->8 cascade to FHGW7-2->8
4. Examples are shown in the figure below

**Cell#1 option7-2**

**eCPRI Inform of U plane**

**Cell#1 option8**

**CPRI Inform of U plane**

**Cell#2 option7-2**

1. **eCPRI Inform of U plane**

3

4

###### Figure 13 Shared cell downlink copy

![]({{site.baseurl}}/assets/images/763c8aa00c89.png)![]({{site.baseurl}}/assets/images/62b362e181e4.png)![]({{site.baseurl}}/assets/images/98665b00ec61.png)![]({{site.baseurl}}/assets/images/8ce6360145a3.png)![]({{site.baseurl}}/assets/images/e7263059b6b7.png)![]({{site.baseurl}}/assets/images/2873c54cb059.png)![]({{site.baseurl}}/assets/images/d92d56f030d3.png)![]({{site.baseurl}}/assets/images/c5e0fe80f0fc.png)

U-Plane of Low PHY

shared cell

downlink copy of FHGW connect to O-RU

southward eCPRI

interface #N

southward eCPRI

interface #1

southward CPRI

interface #N

southward CPRI

interface #1

shared cell downlink copy of FHGW cascade to

FHGW

Interface of northward eCPRI U-Plane

1. The FHGW7-2->8 needs to support two type of shared cell configurations. So does the uplink combine configuration.
2. - Shared cell uplink combine configuration of FHGW7-2->8 connect to O-RU8
3. - Shared cell uplink combine configuration of FHGW7-2->8 cascade to FHGW7-2->8
4. Examples are shown in the figure below

1

**Cell#1 option7-2**

**eCPRI Inform of U plane**

**Cell#1 option8**

**CPRI Inform of U plane**

**Cell#2 option7-2**

2 **eCPRI Inform of U plane**

3

4

**Figure 14 Shared cell uplink combine**

![]({{site.baseurl}}/assets/images/763c8aa00c89.png)![]({{site.baseurl}}/assets/images/62b362e181e4.png)![]({{site.baseurl}}/assets/images/8c65a5285470.png)![]({{site.baseurl}}/assets/images/8ce6360145a3.png)![]({{site.baseurl}}/assets/images/e7263059b6b7.png)![]({{site.baseurl}}/assets/images/2873c54cb059.png)![]({{site.baseurl}}/assets/images/d92d56f030d3.png)![]({{site.baseurl}}/assets/images/c5e0fe80f0fc.png)

shared cell uplink combine of FHGW connect to O-RU

southward eCPRI

interface #N

southward eCPRI

interface #1

southward CPRI

interface #N

southward CPRI

interface #1

U Plane of Low PHY

shared cell uplink combine of FHGW cascade to FHGW

northward eCPRI

interface

### A4.8.3.3 Configuration of FHGW7-2->8 Connect to O-RU8

1. For the configuration of FHGW7-2->8 connect to O-RU8, add a new YANG model file, o-ran-shared-cell-ecpri7-to-
2. cpri8.yang, and eCPRI7-to-CPRI8 mode was added for the shared-cell-copy-combine mode in o-ran-shared-cell.yang,
3. which is used for the configuration of FHGW7-2->8 connect to O-RU8.
4. - COMMON
5. - SELECTIVE
6. - eCPRI7-to-CPRI8

12

1. The function of downlink copy of shared-cell-copy-entities-ecpri7-to-cpri8 is configured in two parts.
2. 1) low-level-tx-endpoint
3. This parameter identifies the data source of the downlink copy of the shared cell, points to the Tx endpoint in the Low
4. PHY U-Plane configuration.
5. 2) south-node-processing-elements-cpri
6. This parameter identifies the data destination of downlink copy of the shared cell, points to the CPRI flow, which is
7. defined in the CPRI interface YANG model.

20

21 The function of uplink combination of shared-cell-combine-entities-option8-cpri is configured in two parts

1. 1) low-level-rx-endpoint
2. This parameter identifies the data destination of the shared cell uplink combine and points to the Rx endpoint in the
3. Low PHY U-Plane configuration.
4. 2) south-node-processing-elements-cpri
5. This parameter identifies the data source of the downlink copy data of the shared cell and points to the CPRI-Flow
6. defined in the FHGW7-2->8 southward CPRI interface model.

7

1. Note: In contrast to the shared cell in O-RAN specification, the downlink copy and uplink combine configuration do not
2. define the shared cell U-Plane configuration part. This is because all the U-Plane configuration information (such as
3. eaxc-id, downlink-radio-frame-offset, downlink-sfn-offset, and N-TA-Offset of uplink only parameter) is fully defined
4. in the low-level-tx-endpoint of Low PHY U-Plane configuration, and the shared cell part does not need to define it
5. again.

### A4.8.3.4 Configuration of FHGW7-2->8 Cascade to FHGW7-2->8

1. For the configuration of **FHGW7-2**->**8 cascade to FHGW7-2**->**8**, continue to reuse the COMMON mode of YANG model
2. of shared-cell-copy-combine in the o-ran-shared-cell.yang. Which consistent with the configuration method of FHM
3. shared cell in the O-RAN specification

## A4.9 FHGW7-2->8 Startup Example

###### Table 6 FHGW7-2->8 Startup Procedure

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| FHGW7-2->8  Initialization Procedure | Description | Referred Sections |
| Initialization of M- Plane network layer connection | Initialization of M-Plane network layer connection | Chapter 3.1 of [4] |
| Clock synchronization | Clock synchronization  The M-Plane connection has not been fully established at this stage, and clock synchronization should avoid to depend on configurable parameters, or should use default parameter. | Chapter 10 of [4] |
| M-Plane Call Home | M-Plane Call Home | Chapter 3.2 of [4] |
| Establishment of M- plane SSH  connection | Establishment of management plane SSH connection | Chapter 3.3 of [4] |
| Retrieve NETCONF capability set of M-  plane | Retrieve NETCONF capability set of M- plane | Chapter 3.5 of [4] |
| Keeping alive for M-  Plane NETCONF connection | Keeping alive for M-Plane NETCONF connection | Chapter 3.6 of [4] |
| Retrieve the FHGW7- 2->8 parameters | Retrieve the FHGW7-2->8 parameters | Chapter 6 of [4] |
| Software | Software management | Chapter 5 of [4] |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| management |  |  |
| clock synchronization | clock synchronization | Chapter 10 of [4] |
| CPRI interface initialization in  FHGW7-2->8 | CPRI interface initialization in FHGW7-2->8 | A2.5 |
| Keeping alive for U-  Plane connection | Keeping alive for U-Plane connection in FHGW7-2->8 | Chapter 4.10 of [4] |
| Shared cell and U- Plane configuration | Topology discovery of FHGW7-2->8 Read Delay Profile of FHGW7-2->8  Northward e-CPRI interface configuration of FHGW7-2->8 U-Plane configuration of FHGW7-2->8  Shared cell configuration of FHGW7-2->8 connect to O-RU8 Shared Cell (optional) of FHGW7-2->8 cascade to FHGW7-2->8 Southward e-CPRI interface configuration of FHGW7-2->8 (optional)  Southward CPRI interface configuration of FHGW7-2->8 | A2.8 |
| Fault management  initialization | Fault management initialization | Chapter 8 of [4] |
| Read status information of the  FHGW7-2->8 | Read status information of the FHGW7-2->8. | Chapter 6 of [4] |
| Configure runtime parameters of the  FHGW7-2->8 | Configure runtime parameters of the FHGW7-2->8 | Chapter 6 of [4] |

</div>

1

## A4.10Appendix - YANG Model Tree Diagram

* 1. This appendix lists YANG model tree diagrams that are newly defined or modified by this
  2. specification; refer to the O-RAN specification for other YANG models.

### A4.10.1 o-ran-uplane-conf-hub Module

6

module: o-ran-uplane-conf-hub

+--rw eaxc-id-group-configuration {mcap:EAXC-ID-GROUP-SUPPORTED}?

<div class="table-wrapper" markdown="block">

| +--rw max-num-tx-eaxc-id-groups? -> /mcap:module-capability/ru-capabilities/eaxcid-grouping-capabilities/max-num-tx-eaxc-id-groups

</div>

<div class="table-wrapper" markdown="block">

| +--rw max-num-tx-eaxc-ids-per-group? -> /mcap:module-capability/ru-capabilities/eaxcid-grouping-capabilities/max-num-tx-eaxc-ids-per-group

</div>

<div class="table-wrapper" markdown="block">

| +--rw max-num-rx-eaxc-id-groups? -> /mcap:module-capability/ru-capabilities/eaxcid-grouping-capabilities/max-num-rx-eaxc-id-groups

</div>

<div class="table-wrapper" markdown="block">

| +--rw max-num-rx-eaxc-ids-per-group? -> /mcap:module-capability/ru-capabilities/eaxcid-grouping-capabilities/max-num-rx-eaxc-ids-per-group

</div>

<div class="table-wrapper" markdown="block">

| +--rw tx-eaxc-id-group\* [representative-tx-eaxc-id]

</div>

<div class="table-wrapper" markdown="block">

| | +--rw representative-tx-eaxc-id uint16

</div>

<div class="table-wrapper" markdown="block">

| | +--rw member-tx-eaxc-id\*

</div>

uint16

7

8

9

10

11

12

13

14

<div class="table-wrapper" markdown="block">

1. | +--rw rx-eaxc-id-group\* [representative-rx-eaxc-id]
2. | +--rw representative-rx-eaxc-id uint16
3. | +--rw member-rx-eaxc-id\* uint16

</div>

4 +--rw user-plane-configuration

5 +--rw low-level-tx-links\* [name]

<div class="table-wrapper" markdown="block">

* 1. | +--rw name string
  2. | +--rw processing-element -> /o-ran-pe:processing-elements/ru-elements/name
  3. | +--rw low-level-tx-endpoint -> /user-plane-configuration/low-level-tx-endpoints/name

</div>

9 +--rw low-level-rx-links\* [name]

<div class="table-wrapper" markdown="block">

1. | +--rw name string
2. | +--rw processing-element -> /o-ran-pe:processing-elements/ru-elements/name
3. | +--rw low-level-rx-endpoint -> /user-plane-configuration/low-level-rx-endpoints/name
4. | +--rw user-plane-uplink-marking? -> /o-ran-pe:processing-elements/enhanced-uplane-mapping/uplane-mapping/up-marking-name

</div>

14 +--ro endpoint-types\* [id]

<div class="table-wrapper" markdown="block">

1. | +--ro id uint16
2. | +--ro supported-section-types\* [section-type]
3. | | +--ro section-type uint8
4. | | +--ro supported-section-extensions\* uint8
5. | +--ro supported-frame-structures\* uint8
6. | +--ro managed-delay-support? enumeration
7. | +--ro multiple-numerology-supported? boolean
8. | +--ro max-numerology-change-duration? uint16
9. | +--ro max-control-sections-per-data-section? uint8
10. | +--ro max-sections-per-symbol? uint16
11. | +--ro max-sections-per-slot? uint16
12. | +--ro max-remasks-per-section-id? uint8
13. | +--ro max-beams-per-symbol? uint16
14. | +--ro max-beams-per-slot? uint16

</div>

\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_

<div class="table-wrapper" markdown="block">

1. | +--ro max-prb-per-symbol? uint16
2. | +--ro prb-capacity-allocation-granularity\* uint16
3. | +--ro max-numerologies-per-symbol? uint16

</div>

4 +--ro endpoint-capacity-sharing-groups\* [id]

<div class="table-wrapper" markdown="block">

1. | +--ro id uint16
2. | +--ro max-control-sections-per-data-section? uint8
3. | +--ro max-sections-per-symbol? uint16
4. | +--ro max-sections-per-slot? uint16
5. | +--ro max-remasks-per-section-id? uint8
6. | +--ro max-beams-per-symbol? uint16
7. | +--ro max-beams-per-slot? uint16
8. | +--ro max-prb-per-symbol? uint16
9. | +--ro max-numerologies-per-symbol? uint16
10. | +--ro max-endpoints? uint16
11. | +--ro max-managed-delay-endpoints? uint16
12. | +--ro max-non-managed-delay-endpoints? uint16

</div>

17 +--ro endpoint-prach-group\* [id]

<div class="table-wrapper" markdown="block">

1. | +--ro id uint16
2. | +--ro supported-prach-preamble-formats\* prach-preamble-format

</div>

20 +--ro static-low-level-tx-endpoints\* [name]

<div class="table-wrapper" markdown="block">

1. | +--ro name string
2. | +--ro restricted-interfaces\* -> /if:interfaces/interface/name
3. | +--ro endpoint-type? -> ../../endpoint-types/id
4. | +--ro capacity-sharing-groups\* -> ../../endpoint-capacity-sharing-groups/id

</div>

25 +--ro static-low-level-rx-endpoints\* [name]

<div class="table-wrapper" markdown="block">

1. | +--ro name string
2. | +--ro restricted-interfaces\* -> /if:interfaces/interface/name
3. | +--ro endpoint-type? -> ../../endpoint-types/id

</div>

\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_

<div class="table-wrapper" markdown="block">

1. | +--ro capacity-sharing-groups\* -> ../../endpoint-capacity-sharing-groups/id
2. | +--ro prach-group? -> ../../endpoint-prach-group/id

</div>

3 +--rw low-level-tx-endpoints\* [name]

<div class="table-wrapper" markdown="block">

1. | +--rw name -> /user-plane-configuration/static-low-level-tx-endpoints/name
2. | +--rw compression!
3. | | +--rw iq-bitwidth? uint8
4. | | +--rw compression-type enumeration
5. | | x--rw bitwidth? uint8
6. | | +--rw (compression-format)?
7. | | +--:(no-compresison)
8. | | +--:(block-floating-point)
9. | | | +--rw exponent? uint8
10. | | +--:(block-floating-point-selective-re-sending)
11. | | | +--rw sres-exponent? uint8
12. | | +--:(block-scaling)
13. | | | +--rw block-scalar? uint8
14. | | +--:(u-law)
15. | | | +--rw comp-bit-width? uint8
16. | | | +--rw comp-shift? uint8
17. | | +--:(beam-space-compression)
18. | | | +--rw active-beam-space-coeficient-mask\* uint8
19. | | | +--rw block-scaler? uint8
20. | | +--:(modulation-compression)
21. | | | +--rw csf? uint8
22. | | | +--rw mod-comp-scaler? uint16
23. | | +--:(modulation-compression-selective-re-sending)
24. | | +--rw sres-csf? uint8
25. | | +--rw sres-mod-comp-scaler? uint16

</div>

\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| 1 | | | +--rw frame-structure? | uint8 |
| 2 | | | +--rw cp-type? | enumeration |
| 3 | | | +--rw cp-length | uint16 |
| 4 | | | +--rw cp-length-other | uint16 |
| 5 | | | +--rw offset-to-absolute-frequency-center int32 | |
| 6 | | | +--rw number-of-prb-per-scs\* [scs] | |
| 7 | | | | +--rw scs mcap:scs-config-type | |
| 8 | | | | +--rw number-of-prb uint16 | |
| 9 | | | +--rw e-axcid | |
| 10 | | | | +--rw o-du-port-bitmask uint16 | |
| 11 | | | | +--rw band-sector-bitmask uint16 | |
| 12 | | | | +--rw ccid-bitmask uint16 | |
| 13 | | | | +--rw ru-port-bitmask uint16 | |
| 14 | | | | +--rw eaxc-id uint16 | |
| 15 | | | +--rw downlink-radio-frame-offset uint32 | |

</div>

16

<div class="table-wrapper" markdown="block">

| +--rw downlink-sfn-offset

</div>

int16

+--rw low-level-rx-endpoints\* [name]

<div class="table-wrapper" markdown="block">

| +--rw name

</div>

-> /user-plane-configuration/static-low-level-rx-endpoints/name

<div class="table-wrapper" markdown="block">

| +--rw compression

</div>

<div class="table-wrapper" markdown="block">

| | +--rw iq-bitwidth?

</div>

uint8

<div class="table-wrapper" markdown="block">

| | +--rw compression-type

</div>

enumeration

<div class="table-wrapper" markdown="block">

| | x--rw bitwidth?

</div>

uint8

<div class="table-wrapper" markdown="block">

| | +--rw (compression-format)?

</div>

<div class="table-wrapper" markdown="block">

| | +--:(no-compresison)

</div>

<div class="table-wrapper" markdown="block">

| | +--:(block-floating-point)

</div>

<div class="table-wrapper" markdown="block">

| | | +--rw exponent?

</div>

uint8

<div class="table-wrapper" markdown="block">

| | +--:(block-floating-point-selective-re-sending)

</div>

<div class="table-wrapper" markdown="block">

| | | +--rw sres-exponent?

</div>

uint8

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

\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_

\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| 1 | | | | | +--:(block-scaling) |  |
| 2 | | | | | | +--rw block-scalar? | uint8 |
| 3 | | | | | +--:(u-law) |  |
| 4 | | | | | | +--rw comp-bit-width? | uint8 |
| 5 | | | | | | +--rw comp-shift? | uint8 |
| 6 | | | | | +--:(beam-space-compression) |  |
| 7 | | | | | +--rw active-beam-space-coeficient-mask\* uint8 | | |
| 8 | | | | | +--rw block-scaler? uint8 | | |
| 9 | | | | +--:(modulation-compression) | | |
| 10 | | | | | +--rw csf? uint8 | | |
| 11 | | | | | +--rw mod-comp-scaler? uint16 | | |
| 12 | | | | +--:(modulation-compression-selective-re-sending) | | |
| 13 | | | | +--rw sres-csf? uint8 | | |
| 14 | | | | +--rw sres-mod-comp-scaler? uint16 | | |
| 15 | | | +--rw frame-structure? uint8 | | |
| 16 | | | +--rw cp-type? enumeration | | |
| 17 | | | +--rw cp-length uint16 | | |
| 18 | | | +--rw cp-length-other uint16 | | |
| 19 | | | +--rw offset-to-absolute-frequency-center int32 | | |
| 20 | | | +--rw number-of-prb-per-scs\* [scs] | | |
| 21 | | | | +--rw scs mcap:scs-config-type | | |
| 22 | | | | +--rw number-of-prb uint16 | | |
| 23 | | | +--rw ul-fft-sampling-offsets\* [scs] | | |
| 24 | | | | +--rw scs mcap:scs-config-type | | |
| 25 | | | | +--rw ul-fft-sampling-offset? uint16 | | |
| 26 | | | +--rw e-axcid | | |
| 27 | | | | +--rw o-du-port-bitmask uint16 | | |
| 28 | | | | +--rw band-sector-bitmask uint16 | | |

</div>

1

<div class="table-wrapper" markdown="block">

| | +--rw ccid-bitmask

</div>

uint16

<div class="table-wrapper" markdown="block">

| | +--rw ru-port-bitmask uint16

</div>

<div class="table-wrapper" markdown="block">

| | +--rw eaxc-id

</div>

uint16

<div class="table-wrapper" markdown="block">

| +--rw non-time-managed-delay-enabled? boolean

</div>

<div class="table-wrapper" markdown="block">

| +--rw downlink-radio-frame-offset

</div>

uint32

<div class="table-wrapper" markdown="block">

| +--rw downlink-sfn-offset

</div>

int16

<div class="table-wrapper" markdown="block">

| +--rw n-ta-offset

</div>

uint32

+--rw general-config

+--rw regularization-factor-se-configured? boolean

+--rw little-endian-byte-order?

boolean

2

3

4

5

6

7

8

9

10

### A4.10.2 o-ran-shared-cell-ecpri7-to-cpri8 Module

12

module: o-ran-shared-cell-ecpri7-to-cpri8

+--rw shared-cell-cpri7-to-cpri8

+--ro shared-cell-module-cap-ecpri7-to-cpri8

<div class="table-wrapper" markdown="block">

| +--ro max-number-node-copy-and-combine uint8

</div>

<div class="table-wrapper" markdown="block">

| +--ro max-number-eaxcid-copy

</div>

uint8

<div class="table-wrapper" markdown="block">

| +--ro max-number-eaxcid-combine

</div>

uint8

<div class="table-wrapper" markdown="block">

| +--ro compression-method-supported\* [] {FHM-eCPRI7-to-CPRI8}?

</div>

+--rw shared-cell-config

+--rw (shared-cell-copy-combine-mode)?

+--:(COMMON)

<div class="table-wrapper" markdown="block">

| +--rw shared-cell-copy-entities\* [name]

</div>

<div class="table-wrapper" markdown="block">

| | +--rw name

</div>

string

<div class="table-wrapper" markdown="block">

| | +--rw north-node-processing-element? -> /o-ran-pe:processing-elements/ru-elements/name

</div>

<div class="table-wrapper" markdown="block">

| | +--rw south-node-processing-elements\* -> /o-ran-pe:processing-elements/ru-elements/name

</div>

<div class="table-wrapper" markdown="block">

| | +--rw shared-cell-copy-uplane-config {FHM}?

</div>

<div class="table-wrapper" markdown="block">

| | +--rw tx-eaxc-id\* [eaxc-id]

</div>

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

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| 1 | | | | | | +--rw eaxc-id uint16 |
| 2 | | | | | +--rw rx-eaxc-id\* [eaxc-id] |
| 3 | | | | | | +--rw eaxc-id uint16 |
| 4 | | | | | +--rw downlink-radio-frame-offset uint32 |
| 5 | | | | | +--rw downlink-sfn-offset int16 |

</div>

<div class="table-wrapper" markdown="block">

1. | +--rw shared-cell-combine-entities\* [name]
2. | +--rw name string
3. | +--rw north-node-processing-element? -> /o-ran-pe:processing-elements/ru-elements/name
4. | +--rw south-node-processing-elements\* -> /o-ran-pe:processing-elements/ru-elements/name
5. | +--rw ta3-prime-max? uint32
6. | +--rw shared-cell-combine-uplane-config {FHM}?
7. | +--rw rx-eaxc-id\* [eaxc-id]
8. | | +--rw eaxc-id uint16

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| 14 | | | | | +--rw comression-method |  |
| 15 | | | | | +--rw iq-bitwidth? | uint8 |
| 16 | | | | | +--rw compression-type | enumeration |
| 17 | | | | | x--rw bitwidth? | uint8 |
| 18 | | | | | +--rw (compression-format)? |  |
| 19 | | | | | +--:(no-compresison) |  |
| 20 | | | | | +--:(block-floating-point) |  |
| 21 | | | | | | +--rw exponent? | uint8 |
| 22 | | | | | +--:(block-floating-point-selective-re-sending) | |
| 23 | | | | | | +--rw sres-exponent? uint8 | |
| 24 | | | | | +--:(block-scaling) | |
| 25 | | | | | | +--rw block-scalar? uint8 | |
| 26 | | | | | +--:(u-law) | |
| 27 | | | | | | +--rw comp-bit-width? uint8 | |

</div>

<div class="table-wrapper" markdown="block">

28 | | | +--rw comp-shift? uint8

</div>

\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| 1 | | | | | +--:(beam-space-compression) |
| 2 | | | | | | +--rw active-beam-space-coeficient-mask\* uint8 |
| 3 | | | | | | +--rw block-scaler? uint8 |
| 4 | | | | | +--:(modulation-compression) |
| 5 | | | | | | +--rw csf? uint8 |
| 6 | | | | | | +--rw mod-comp-scaler? uint16 |
| 7 | | | | | +--:(modulation-compression-selective-re-sending) |
| 8 | | | | | +--rw sres-csf? uint8 |

</div>

<div class="table-wrapper" markdown="block">

1. | | +--rw sres-mod-comp-scaler? uint16
2. | +--rw downlink-radio-frame-offset uint32
3. | +--rw downlink-sfn-offset int16
4. | +--rw n-ta-offset uint32
5. | +--rw number-of-prb uint16

</div>

14 +--:(SELECTIVE)

15

16 augment /sc:shared-cell/sc:shared-cell-config/sc:shared-cell-copy-combine-mode:

17 +--:(eCPRI7-to-CPRI8)

18 +--rw shared-cell-copy-entities-ecpri7-to-cpri8\* [name]

<div class="table-wrapper" markdown="block">

1. | +--rw name string
2. | +--rw low-level-tx-endpoint? -> /uc-hub:user-plane-configuration/low-level-tx-endpoints/name
3. | +--rw south-node-processing-elements-cpri\* -> /o-ran-pe:processing-elements/ru-elements/name

</div>

22 +--rw shared-cell-combine-entities-ecpri7-to-cpri8\* [name]

23 +--rw name string

24 +--rw low-level-rx-endpoint? -> /uc-hub:user-plane-configuration/low-level-tx-endpoints/name

25 +--rw south-node-processing-elements-cpri\* -> /o-ran-pe:processing-elements/ru-elements/name

26

27

28

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

# 14 Annex ZZZ: O-RAN Adopter License Agreement

1. BY DOWNLOADING, USING OR OTHERWISE ACCESSING ANY O-RAN SPECIFICATION, ADOPTER
2. AGREES TO THE TERMS OF THIS AGREEMENT.
3. This O-RAN Adopter License Agreement (the "Agreement") is made by and between the O-RAN Alliance and the
4. entity that downloads, uses or otherwise accesses any O-RAN Specification, including its Affiliates (the "Adopter").
5. This is a license agreement for entities who wish to adopt any O-RAN Specification.

## Section 1: DEFINITIONS

1. 1.1 "Affiliate" means an entity that directly or indirectly controls, is controlled by, or is under common control with
2. another entity, so long as such control exists. For the purpose of this Section, "Control" means beneficial ownership of
3. fifty (50%) percent or more of the voting stock or equity in an entity.
4. 1.2 "Compliant Implementation" means any system, device, method or operation (whether implemented in hardware,
5. software or combinations thereof) that fully conforms to a Final Specification.
6. 1.3 "Adopter(s)" means all entities, who are not Members, Contributors or Academic Contributors, including their
7. Affiliates, who wish to download, use or otherwise access O-RAN Specifications.
8. 1.4 "Minor Update" means an update or revision to an O-RAN Specification published by O-RAN Alliance that does
9. not add any significant new features or functionality and remains interoperable with the prior version of an O-RAN
10. Specification. The term "O-RAN Specifications" includes Minor Updates.
11. 1.5 "Necessary Claims" means those claims of all present and future patents and patent applications, other than design
12. patents and design registrations, throughout the world, which (i) are owned or otherwise licensable by a Member,
13. Contributor or Academic Contributor during the term of its Member, Contributor or Academic Contributorship; (ii)
14. such Member, Contributor or Academic Contributor has the right to grant a license without the payment of
15. consideration to a third party; and (iii) are necessarily infringed by a Compliant Implementation (without considering
16. any Contributions not included in the Final Specification). A claim is necessarily infringed only when it is not possible
17. on technical (but not commercial) grounds, taking into account normal technical practice and the state of the art
18. generally available at the date any Final Specification was published by the O-RAN Alliance or the date the patent
19. claim first came into existence, whichever last occurred, to make, sell, lease, otherwise dispose of, repair, use or operate
20. a Compliant Implementation without infringing that claim. For the avoidance of doubt in exceptional cases where a
21. Final Specification can only be implemented by technical solutions, all of which infringe patent claims, all such patent
22. claims shall be considered Necessary Claims.
23. 1.6 "Defensive Suspension" means for the purposes of any license grant pursuant to Section 3, Member, Contributor,
24. Academic Contributor, Adopter, or any of their Affiliates, may have the discretion to include in their license a term
25. allowing the licensor to suspend the license against a licensee who brings a patent infringement suit against the
26. licensing Member, Contributor, Academic Contributor, Adopter, or any of their Affiliates.

## Section 2: COPYRIGHT LICENSE

1. 2.1 Subject to the terms and conditions of this Agreement, O-RAN Alliance hereby grants to Adopter a nonexclusive,
2. nontransferable, irrevocable, non-sublicensable, worldwide copyright license to obtain, use and modify O-RAN
3. Specifications, but not to further distribute such O-RAN Specification in any modified or unmodified way, solely in
4. furtherance of implementations of an O-RAN
5. Specification.
6. 2.2 Adopter shall not use O-RAN Specifications except as expressly set forth in this Agreement or in a separate written
7. agreement with O-RAN Alliance.

## Section 3: FRAND LICENSE

1. 3.1 Members, Contributors and Academic Contributors and their Affiliates are prepared to grant based on a separate
2. Patent License Agreement to each Adopter under Fair Reasonable And Non- Discriminatory (FRAND) terms and
3. conditions with or without compensation (royalties) a nonexclusive, non-transferable, irrevocable (but subject to
4. Defensive Suspension), non-sublicensable, worldwide patent license under their Necessary Claims to make, have made,
5. use, import, offer to sell, lease, sell and otherwise distribute Compliant Implementations; provided, however, that such
6. license shall not extend: (a) to any part or function of a product in which a Compliant Implementation is incorporated
7. that is not itself part of the Compliant Implementation; or (b) to any Adopter if that Adopter is not making a reciprocal
8. grant to Members, Contributors and Academic Contributors, as set forth in Section 3.3. For the avoidance of doubt, the
9. foregoing licensing commitment includes the distribution by the Adopter's distributors and the use by the Adopter's
10. customers of such licensed Compliant Implementations.
11. 3.2 Notwithstanding the above, if any Member, Contributor or Academic Contributor, Adopter or their Affiliates has
12. reserved the right to charge a FRAND royalty or other fee for its license of Necessary Claims to Adopter, then Adopter
13. is entitled to charge a FRAND royalty or other fee to such Member, Contributor or Academic Contributor, Adopter and
14. its Affiliates for its license of Necessary Claims to its licensees.
15. 3.3 Adopter, on behalf of itself and its Affiliates, shall be prepared to grant based on a separate Patent License
16. Agreement to each Members, Contributors, Academic Contributors, Adopters and their Affiliates under Fair
17. Reasonable And Non-Discriminatory (FRAND) terms and conditions with or without compensation (royalties) a
18. nonexclusive, non-transferable, irrevocable (but subject to Defensive Suspension), non-sublicensable, worldwide patent
19. license under their Necessary Claims to make, have made, use, import, offer to sell, lease, sell and otherwise distribute
20. Compliant Implementations; provided, however, that such license will not extend: (a) to any part or function of a
21. product in which a Compliant Implementation is incorporated that is not itself part of the Compliant Implementation; or
22. (b) to any Members, Contributors, Academic Contributors, Adopters and their Affiliates that is not making a reciprocal
23. grant to Adopter, as set forth in Section 3.1. For the avoidance of doubt, the foregoing licensing commitment includes
24. the distribution by the Members', Contributors', Academic Contributors', Adopters' and their Affiliates' distributors
25. and the use by the Members', Contributors', Academic Contributors', Adopters' and their Affiliates' customers of such
26. licensed Compliant Implementations.

## Section 4: TERM AND TERMINATION

1. 4.1 This Agreement shall remain in force, unless early terminated according to this Section 4.
2. 4.2 O-RAN Alliance on behalf of its Members, Contributors and Academic Contributors may terminate this Agreement
3. if Adopter materially breaches this Agreement and does not cure or is not capable of curing such breach within thirty
4. (30) days after being given notice specifying the breach.
5. 4.3 Sections 1, 3, 5 - 11 of this Agreement shall survive any termination of this Agreement. Under surviving Section 3,
6. after termination of this Agreement, Adopter will continue to grant licenses (a) to entities who become Adopters after
7. the date of termination; and (b) for future versions of ORAN Specifications that are backwards compatible with the
8. version that was current as of the date of termination.

## Section 5: CONFIDENTIALITY

1. Adopter will use the same care and discretion to avoid disclosure, publication, and dissemination of O-RAN
2. Specifications to third parties, as Adopter employs with its own confidential information, but no less than reasonable
3. care. Any disclosure by Adopter to its Affiliates, contractors and consultants should be subject to an obligation of
4. confidentiality at least as restrictive as those contained in this Section. The foregoing obligation shall not apply to any
5. information which is: (1) rightfully known by Adopter without any limitation on use or disclosure prior to disclosure;
6. (2) publicly available through no fault of Adopter; (3) rightfully received without a duty of confidentiality; (4) disclosed
7. by O-RAN Alliance or a Member, Contributor or Academic Contributor to a third party without a duty of
8. confidentiality on such third party; (5) independently developed by Adopter; (6) disclosed pursuant to the order of a
9. court or other authorized governmental body, or as required by law, provided that Adopter provides reasonable prior
10. written notice to O-RAN Alliance, and cooperates with O-RAN Alliance and/or the applicable Member, Contributor or
11. Academic Contributor to have the opportunity to oppose any such order; or (7) disclosed by Adopter with O-RAN
12. Alliance's prior written approval.

## Section 6: INDEMNIFICATION

* 1. Adopter shall indemnify, defend, and hold harmless the O-RAN Alliance, its Members, Contributors or Academic
  2. Contributors, and their employees, and agents and their respective successors, heirs and assigns (the "Indemnitees"),
  3. against any liability, damage, loss, or expense (including reasonable attorneys' fees and expenses) incurred by or
  4. imposed upon any of the Indemnitees in connection with any claims, suits, investigations, actions, demands or
  5. judgments arising out of Adopter's use of the licensed O-RAN Specifications or Adopter's commercialization of
  6. products that comply with O-RAN Specifications.

## Section 7: LIMITATIONS ON LIABILITY; NO WARRANTY

* 1. EXCEPT FOR BREACH OF CONFIDENTIALITY, ADOPTER'S BREACH OF SECTION 3, AND ADOPTER'S
  2. INDEMNIFICATION OBLIGATIONS, IN NO EVENT SHALL ANY PARTY BE LIABLE TO ANY OTHER
  3. PARTY OR THIRD PARTY FOR ANY INDIRECT, SPECIAL, INCIDENTAL, PUNITIVE OR CONSEQUENTIAL
  4. DAMAGES RESULTING FROM ITS PERFORMANCE OR NON-PERFORMANCE UNDER THIS AGREEMENT,
  5. IN EACH CASE WHETHER UNDER CONTRACT, TORT, WARRANTY, OR OTHERWISE, AND WHETHER OR
  6. NOT SUCH PARTY HAD ADVANCE NOTICE OF THE POSSIBILITY OF SUCH DAMAGES. O-RAN
  7. SPECIFICATIONS ARE PROVIDED "AS IS" WITH NO WARRANTIES OR CONDITIONS WHATSOEVER,
  8. WHETHER EXPRESS, IMPLIED, STATUTORY, OR OTHERWISE. THE O-RAN ALLIANCE AND THE
  9. MEMBERS, CONTRIBUTORS OR ACADEMIC CONTRIBUTORS EXPRESSLY DISCLAIM ANY WARRANTY
  10. OR CONDITION OF MERCHANTABILITY, SECURITY, SATISFACTORY QUALITY, NONINFRINGEMENT,
  11. FITNESS FOR ANY PARTICULAR PURPOSE, ERROR-FREE OPERATION, OR ANY WARRANTY OR
  12. CONDITION FOR O-RAN SPECIFICATIONS.

## Section 8: ASSIGNMENT

* 1. Adopter may not assign the Agreement or any of its rights or obligations under this Agreement or make any grants or
  2. other sublicenses to this Agreement, except as expressly authorized hereunder, without having first received the prior,
  3. written consent of the O-RAN Alliance, which consent may be withheld in O-RAN Alliance's sole discretion. O-RAN
  4. Alliance may freely assign this Agreement.

## Section 9: THIRD-PARTY BENEFICIARY RIGHTS

* 1. Adopter acknowledges and agrees that Members, Contributors and Academic Contributors (including future Members,
  2. Contributors and Academic Contributors) are entitled to rights as a third-party beneficiary under this Agreement,
  3. including as licensees under Section 3.

## Section 10: BINDING ON AFFILIATES

* + 1. Execution of this Agreement by Adopter in its capacity as a legal entity or association constitutes that legal entity's or
    2. association's agreement that its Affiliates are likewise bound to the obligations that are applicable to Adopter hereunder
    3. and are also entitled to the benefits of the rights of Adopter hereunder.

## Section 11: GENERAL

* + 1. This Agreement is governed by the laws of Germany without regard to its conflict or choice of law provisions.
    2. This Agreement constitutes the entire agreement between the parties as to its express subject matter and expressly
    3. supersedes and replaces any prior or contemporaneous agreements between the parties, whether written or oral, relating
    4. to the subject matter of this Agreement.
    5. Adopter, on behalf of itself and its Affiliates, agrees to comply at all times with all applicable laws, rules and
    6. regulations with respect to its and its Affiliates' performance under this Agreement, including without limitation, export
    7. control and antitrust laws. Without limiting the generality of the foregoing, Adopter acknowledges that this Agreement
    8. prohibits any communication that would violate the antitrust laws.
    9. By execution hereof, no form of any partnership, joint venture or other special relationship is created between Adopter,
    10. or O-RAN Alliance or its Members, Contributors or Academic Contributors. Except as expressly set forth in this
    11. Agreement, no party is authorized to make any commitment on behalf of Adopter, or O-RAN Alliance or its Members,
    12. Contributors or Academic Contributors.
    13. In the event that any provision of this Agreement conflicts with governing law or if any provision is held to be null,
    14. void or otherwise ineffective or invalid by a court of competent jurisdiction, (i) such provisions will be deemed stricken
    15. from the contract, and (ii) the remaining terms, provisions, covenants and restrictions of this Agreement will remain in
    16. full force and effect.

22
---

- View in [GitHub Mode]({{site.github_page_url}}/O-RAN.WG7.IPC-HRD-Opt7-2.0-v03.00.docx.md).
- Go back to [Table of Contents]({{site.baseurl}}/).
- Download the [Original Document]({{site.download_url}}/O-RAN.WG7.IPC-HRD-Opt7-2.0-v03.00.docx).

---

* toc
{:toc}
