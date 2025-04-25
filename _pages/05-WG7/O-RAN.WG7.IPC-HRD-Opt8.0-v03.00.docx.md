---
title: O-RAN.WG7.IPC-HRD-Opt8.0-v03.00.docx.md
author: O-RAN Alliance, WG7
layout: post
---

- View in [GitHub Mode]({{site.github_page_url}}/O-RAN.WG7.IPC-HRD-Opt8.0-v03.00.docx.md).
- Go back to [Table of Contents]({{site.baseurl}}/).
- Download the [Original Document]({{site.download_url}}/O-RAN.WG7.IPC-HRD-Opt8.0-v03.00.docx).

---

* toc
{:toc}

---

**O-RAN WG7**

**Hardware Reference Design Specification for Indoor Picocell**

**(FR1) with Split Architecture Option 8**

##### This is a re-published version of the attached final specification.

###### For this re-published version, the prior versions of the IPR Policy will apply, except that the previous requirement for Adopters (as defined in the earlier IPR Policy) to agree to an O-RAN Adopter License Agreement to access and use Final Specifications shall no longer apply or be required for these Final Specifications after 1st July 2022.

The copying or incorporation into any other work of part or all of the material available in this specification in any form without the prior written permission of O-RAN ALLIANCE e.V. is prohibited, save that you may print or download extracts of the material on this site for your personal use, or copy the material on this site for the purpose of sending to individual third parties for their information provided that you acknowledge O-RAN ALLIANCE as the source of the material and that you inform the third party that these conditions apply to them and that they must comply with them.

**O-RAN WG7**

**Hardware Reference Design Specification for Indoor Picocell**

**(FR1) with Split Architecture Option 8**

Copyright (C) 2021 by O-RAN ALLIANCE e.V.

By using, accessing or downloading any part of this O-RAN specification document, including by copying, saving, distributing, displaying or preparing derivatives of, you agree to be and are bound to the terms of the O-RAN Adopter License Agreement contained in the Annex ZZZ of this specification. All other rights reserved.

O-RAN ALLIANCE e.V.

Buschkauler Weg 27, 53347 Alfter, Germany Register of Associations, Bonn VR 11238 VAT ID DE321720189

Coyright (C) 2021 O-RAN ALLIANCE e.V. All Rights Reserved 1

# 1 Revision History

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **Date** | **Revision** | **Author** | **Description** |
| 07/12/2021 | v03.00 | WG7 | Final Published Version |

</div>

2

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
10. 2.2 O-DU8 Hardware Reference Design 13
11. 2.2.1 O-DU8 High-Level Functional Block Diagram 13
12. 2.2.2 O-DU8 Hardware Design Description 14
13. 2.2.3 O-DU8 Hardware Components 15
14. 2.2.3.1 Digital Processing Unit 15
15. 2.2.3.2 Hardware Accelerator 16
16. 2.2.3.2.1 Accelerator Design Solution 1 16
17. 2.2.3.2.2 Accelerator Design Solution 2 20
18. 2.2.3.2.3 Accelerator Design Solution 3 23
19. 2.2.3.2.4 Accelerator Design Solution 4 26
20. 2.2.3.3 Baseboard Management Controller 27
21. 2.2.4 Synchronization and Timing 27
22. 2.2.4.1 Synchronization and Timing Design 1 27
23. 2.2.4.2 Synchronization and Timing Design 2 28
24. 2.2.5 External Interface Ports 29
25. 2.2.6 O-DU8 Firmware 30
26. 2.2.7 Mechanical 31
27. 2.2.8 Power Unit 32
28. 2.2.9 Thermal 34
29. 2.2.10 Environmental and Regulations 34
30. 2.3 O-RU8 Hardware Reference Design 35
31. 2.3.1 O-RU8 High-Level Functional Block Diagram 35
32. 2.3.2 O-RU8 Hardware Components 35
33. 2.3.2.1 Digital Processing Unit 37
34. 2.3.2.2 RF Processing Unit 40
35. 2.3.2.2.1 Transceiver Reference Design 40
36. 2.3.2.2.2 Power Amplifier (PA) Reference Design 46
37. 2.3.2.2.3 Low Noise Amplifier (LNA) Reference Design 48
38. 2.3.2.2.4 RF Switch Reference Design 50
39. 2.3.2.2.5 Antenna Reference Design 53
40. 2.3.3 Synchronization and Timing 53
41. 2.3.4 External Interface Ports 58
42. 2.3.5 Mechanical 59
43. 2.3.6 Power Unit 60
44. 2.3.7 Thermal 61
45. 2.3.7.1 Environmental and Regulations 61
46. 2.4 FHGW8 Hardware Reference Design 62
47. 2.5 FHGW8 High-Level Functional Block Diagram 62
48. 2.6 FHGW8 Hardware Components 63
49. 2.6.1 Digital Processing Unit 63
50. 2.6.2 Synchronization and Timing 65
51. 2.6.3 External Interface Ports 66
52. 2.6.4 Mechanical 68

1 2.6.5 Power 68

1. 2.6.6 Thermal 69
2. 2.6.7 Environmental and Regulations 69
3. Annex 1 Parts Reference List 70
4. Annex 2 CPRI specification reference design Error! Bookmark not defined.
5. Annex 3 Option 8 CPRI spec reference design - Management plane 86
6. Annex ZZZ O-RAN Adopter License Agreement 179
7. Section 1: DEFINITIONS 179
8. Section 2: COPYRIGHT LICENSE 180
9. Section 3: FRAND LICENSE 180
10. Section 4: TERM AND TERMINATION 181
11. Section 5: CONFIDENTIALITY 181
12. Section 6: INDEMNIFICATION 181
13. Section 7: LIMITATIONS ON LIABILITY; NO WARRANTY 181
14. Section 8: ASSIGNMENT 182
15. Section 9: THIRD-PARTY BENEFICIARY RIGHTS 182
16. Section 10: BINDING ON AFFILIATES 182
17. Section 11: GENERAL 182

19

20 Tables

1. Table 2-1: The Processor Feature List 15
2. Table 2-2: The Memory Channel Feature List 15
3. Table 2-3: Accelerator Hardware Component List 17
4. Table 2-4: Accelerator Hardware Feature List 23
5. Table 2-5: Accelerator Firmware Feature List 24
6. Table 2-6: Accelerator Hardware Feature List 26
7. Table 2-7: Accelerator Firmware Feature List 26
8. Table 2-8: External Port List 29
9. Table 2-9: Power supply unit feature list 34
10. Table 2-10: Environmental Features 34
11. Table 2-11: Resource requirement for 2T2R O-RU8 37
12. Table 2-12: Resource requirement for 4T4R O-RU8 37
13. Table 2-13: Interface requirements of the Transceiver 40
14. Table 2-14: Payload with DPD in Digital Device (GBPS Rx/Tx) 41
15. Table 2-15: Payload with DPD in Transceiver (GBPS Rx/Tx) 41
16. Table 2-16: RF specifications in Transceiver 42
17. Table 2-17: PA Requirements 46
18. Table 2-18: Interface requirements of the transmit PA 47
19. Table 2-19: One stage LNA Requirements 48
20. Table 2-20: Two stage LNA Requirements 48
21. Table 2-21: Interface requirements of the RF switch 50
22. Table 2-22: RF Switch Requirements 51
23. Table 2-23: Antenna Requirements 53
24. Table 2-24: Interface requirements of the clocking 55
25. Table 2-25: Clocking RF requirements 55
26. Table 2-26: External Port List 58
27. Table 2-27: Power unit requirement for 2T2R and 4T4R O-RU8 60
28. Table 2-28: Power unit function 60
29. Table 2-29: Environmental Features 61
30. Table 2-30: Interface requirements of the FPGA 63
31. Table 2-31: FPGA Resource usage for FHGW8 64
32. Table 2-32: Requirements of the PLL device 65
33. Table 2-33: External Port List 66
34. Table 2-34: Requirements of the power unit 68

26

27 **Figures**

1. Figure 2-1: O-DU8 Functional Block Diagram 14
2. Figure 2-2: O-DU8 Hardware Block Diagram 15
3. Figure 2-3: Example 2-chip FPGA-based Hardware Acceleration in O-DU8 19
4. Figure 2-4: Example of 1-chip FPGA-based Hardware Acceleration in O-DU8 20
5. Figure 2-5: Example of Accelerator Design 22
6. Figure 2-6: Accelerator Design 1 without optional NIC Device 25
7. Figure 2-7: Accelerator Design 1 with optional NIC Device 25
8. Figure 2-8: Structured ASIC Accelerator Design 26
9. Figure 2-9: Structured ASIC Accelerator Design 27
10. Figure 2-10: O-DU8 Timing Synchronization 28
11. Figure 2-11: HW Acceleration Board Timing and Synchronization 29
12. Figure 2-12: External interfaces reference design 30
13. Figure 2-13: Mother Board Layout Diagram 31
14. Figure 2-14: Chassis Mechanical Diagram 32
15. Figure 2-15: High-Level Functional Block Diagram 35
16. Figure 2-16: 2T2R General Block Diagram with TR switch 36
17. Figure 2-17: 4T4R General Block Diagram with TR switch 36
18. Figure 2-18: Power estimation for 2T2R O-RU8 38
19. Figure 2-19: Power estimation for 4T4R O-RU8 38
20. Figure 2-20: FPGA Reference Design Diagram 39
21. Figure 2-21: Transceiver Reference Design Diagram (Optional elements are highlighted in Grey) 45
22. Figure 2-22: PA Reference Design Diagram 47
23. Figure 2-23: One Stage LNA Diagram 49
24. Figure 2-24: Two-Stage LNA Diagram 50
25. Figure 2-25: RF Switch Reference Design Diagram 52
26. Figure 2-26: Whip Antenna 53
27. Figure 2-27: PLL Reference Design Diagram 57
28. Figure 2-28: SFP+ case and connector 58
29. Figure 2-29: RJ45 interface 59
30. Figure 2-30: O-RU8 Shell Mechanical Diagram 59
31. Figure 2-31: POE Reference Design Diagram 61
32. Figure 2-32: FHM8 General Block Diagram 62
33. Figure 2-33: FHM8 Digital Processing Block Diagram 64
34. Figure 2-34: CLK reference design for FHM8 65
35. Figure 2-35: SFP+ case and connector 66
36. Figure 2-36: RJ45 interface 67
37. Figure 2-37: AC power interface 67
38. Figure 2-38: Shell Mechanical Diagram 68

27

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

## 1.2 References

1. The following documents contain provisions which, through reference in this text, constitute provisions of the present
2. document.
3. [1] ORAN-WG7.DSC.0-V01.00 Technical Specification, 'Deployment Scenarios and Base Station Classes for White
4. Box Hardware'. <https://www.o-ran.org/specifications>
5. [2] 3GPP TR 21.905: "Vocabulary for 3GPP Specifications".
6. [3] 3GPP TR 38.104: "NR; Base Station (BS) radio transmission and reception".
7. [http://www.3gpp.org/ftp//Specs/archive/38\_series/38.104/38104-g10.zip](http://www.3gpp.org/ftp/Specs/archive/38_series/38.104/38104-g10.zip)
8. [4] ORAN-WG4.CUS.0-v03.00 Technical Specification, 'O-RAN Fronthaul Working Group Control, User and
9. Synchronization Plane Specification'. <https://www.o-ran.org/specifications>
10. [5] 3GPP TS 38.113:"NR: Base Station (BS) Electromagnetic Compatibility (EMC)".
11. [http://www.3gpp.org/ftp//Specs/archive/38\_series/38.113/38113-f80.zip](http://www.3gpp.org/ftp/Specs/archive/38_series/38.113/38113-f80.zip)
12. [6] ORAN-WG7. IPC. HAR-v01.00 Technical Specification, 'Indoor Pico Cell Hardware Architecture and
13. Requirement Specification'. [https://www.o-ran.org/specifications.](https://www.o-ran.org/specifications)
    1. [7] ORAN.WG7. IPC-HRD-Opt7-2.0-v03.00 Technical Specification, 'Indoor Pico Cell BS Hardware Reference
    2. Design Specifications with Fronthaul Split Option 7-2 and FR1'. <https://www.o-ran.org/specifications> 3

## 1.3 Definitions and Abbreviations

### 1.3.1 Definitions

1. For the purposes of the present document, the terms and definitions given in 3GPP TR 21.905 [1] and the following
2. apply. A term defined in the present document takes precedence over the definition of the same term, if any, in 3GPP
3. TR 21.905 [2]. For the base station classes of Pico, Micro and Macro, the definitions are given in 3GPP TR 38.104 [3].
4. **Carrier Frequency:** Center frequency of the cell.
5. **F1 interface:** The open interface between O-CU and O-DU8 as defined by 3GPP TS 38.473 between CU and DU.
6. **Integrated architecture:** In the integrated architecture, the O-RU and O-DUx are implemented on one platform. Each
7. O-RU and RF front end is associated with one O-DU8. They are then aggregated to O-CU and connected by F1
8. interface.
9. **Split architecture:** The O-RUx and O-DUx are physically separated from one another in this architecture. A switch

15 may aggregate multiple O-RUxs to one O-DUx. O-DUx switch and O-RUxs are connected by the fronthaul interface as

1. defined in WG4.
2. **Transmission Reception Point (TRxP**): Antenna array with one or more antenna elements available to the network
3. located at a specific geographical location for a specific area.

### 1.3.2 Abbreviations

1. For the purposes of the present document, the abbreviations given in [2] and the following apply. An abbreviation
2. defined in the present document takes precedence over the definition of the same abbreviation, if any, as in [2].
3. 7-2 Fronthaul interface split option as defined by O-RAN WG4, also referred to as 7-2x
4. 3GPP Third Generation Partnership Project
5. 5G Fifth-Generation Mobile Communications
6. 5GC 5G Core
7. ACS Adjacent Channel Selectivity
8. ADC Analog to Digital Converter
9. ASIC Application Specific Integrated Circuit
10. ATA Advanced Technology Attachment
11. BBDEV Baseband Device
12. BH Backhaul
13. BMC Baseboard Management Controller
14. BPSK Binary Phase Shift Keying
15. BS Base Station

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| 1 | CISPR | International Special Committee on Radio Interference |
| 2 | CFR | Crest Factor Reduction |
| 3 | CU | Centralized Unit as defined by 3GPP |
| 4 | COM | Cluster Communication |
| 5 | CPRI | Common Public Radio Interface |
| 6 | CPU | Central Processing Unit |
| 7 | CRC | Cyclic Redundancy Check |
| 8 | DAC | Digital to Analog Converter |
| 9 | DDC | Digital Down Conversion |
| 10 | DDR | Double Data Rate |
| 11 | DIMM | Dual-Inline-Memory-Modules |
| 12 | DL | Downlink |
| 13 | DPD | Digital Pre-Distortion |
| 14 | DPDK | Data Plane Development Kit |
| 15 | DSP | Digital Signal Processor |
| 16 | DU | Distributed Unit as defined by 3GPP |
| 17 | DUC | Digital Up Conversion |
| 18 | ECC | Error Correcting Code |
| 19 | eCPRI | evolved Common Public Radio Interface |
| 20 | EMC | Electro Magnetic Compatibility |
| 21 | EVM | Error Vector Magnitude |
| 22 | FCC | Federal Communications Commission |
| 23 | FEC | Forward Error Correction |
| 24 | FFT | Fast Fourier Transform |
| 25 | FH | Fronthaul |
| 26 | FHGW | Fronthaul Gateway |
| 27 | FHMx | Fronthaul Multiplexer with no FH protocol translation, supporting an O-DUx with split option x |
| 28 |  | and an O-RUx with split option x, with currently available options 6?6, 7-2?7-2 and 8?8 |
| 29 | FHGWx?y | Fronthaul Gateway that can translate fronthaul protocol from an O-DUx with split option x to an |
| 30 |  | O-RUy with split option y, with currently available option 7-2?8. |
| 31 | FHHL | Full Height Half Length |
| 32 | FPGA | Field Programmable Gate Array |
| 33 | GbE | Gigabit Ethernet |
| 34 | GNSS | Global Navigation Satellite System |
| 35 | GPP | General Purpose Processor |
| 36 | GPS | Global Positioning System |
| 37 | HARQ | Hybrid Automatic Repeat request |
| 38 | HHHL | Half Height Half Length |
| 39 | IEEE | Institute of Electrical and Electronics Engineers |
| 40 | IFFT | Inverse Fast Fourier Transform |
| 41 | IMD | Inter Modulation Distortion |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| 1 | I/O | Input/Output |
| 2 | JTAG | Joint Test Action Group |
| 3 | L1 | Layer 1 |
| 4 | LDPC | Low-Density Parity Codes |
| 5 | LRDIMM | Load-Reduced Dual In-line Memory Module |
| 6 | LTE | Long Term Evolution |
| 7 | LVDS | Low-Voltage Differential Signaling |
| 8 | MAC | Media Access Control |
| 9 | MCP | Multi-Chip Package |
| 10 | MH | Midhaul |
| 11 | MIG | Memory Interface Generator |
| 12 | MII | Media-Independent interface |
| 13 | MIMO | Multiple Input Multiple Output |
| 14 | MU-MIMO | Multiple User MIMO |
| 15 | NEBS | Network Equipment-Building System |
| 16 | NetConf | Network Configuration Protocol |
| 17 | NFV | Network Functions Virtualization |
| 18 | NIC | Network Interface Controller |
| 19 | NR | New Radio |
| 20 | O-CU | O-RAN Centralized Unit as defined by O-RAN |
| 21 | O-DUx | A specific O-RAN Distributed Unit having fronthaul split option x where x may be 6, 7-2 (as |
| 22 |  | defined by WG4) or 8 |
| 23 | O-RUx | A specific O-RAN Radio Unit having fronthaul split option x, where x is 6, 7-2 (as defined by |
| 24 |  | WG4) or 8, and which is used in a configuration where the fronthaul interface is the same at the O- |
| 25 |  | DUx |
| 26 | OCXO | Oven Controlled Crystal Oscillator |
| 27 | PCIe | Peripheral Component Interface Express |
| 28 | PDCP | Packet Data Convergence Protocol |
| 29 | PHY | Physical Layer |
| 30 | PMBus | Power Management Bus |
| 31 | POE | Power over Ethernet |
| 32 | PPS | Pulse Per Second |
| 33 | PRACH | Physical Random Access Channel |
| 34 | QAM | Quadrature Amplitude Modulation |
| 35 | QPSK | Quadrature Phase Shift Keying |
| 36 | QSFP | Quad Small Form-factor Pluggable |
| 37 | RAN | Radio Access Network |
| 38 | RDIMM | Registered Dual In-line Memory Module |
| 39 | RF | Radio Frequency |
| 40 | RoE | Radio over Ethernet |
| 41 | RU | Radio Unit as defined by 3GPP |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| 1 | RX | Receiver |
| 2 | SATA | Serial ATA |
| 3 | SDU | Service Data Unit |
| 4 | SFP | Small Form-factor Pluggable |
| 5 | SFP+ | Small Form-factor Pluggable plus |
| 6 | SOC | System On Chip |
| 7 | SPI | Serial Peripheral Interface |
| 8 | SSD | Solid State Drive |
| 9 | TCXO | Temperature Compensate Crystal Oscillator |
| 10 | TDP | Thermal Design Power |
| 11 | TR | Technical Report |
| 12 | TS | Technical Specification |
| 13 | TX | Transmitter |
| 14 | UL | Uplink |
| 15 | USB | Universal Serial Bus |
| 16 | WG | Working Group |

</div>

# 1 Chapter 2 Hardware Reference Design 1

1. This chapter describes a white box hardware reference design example for indoor Picocell deployment scenario. It
2. includes O-CU, O-DU8 O-RU8, and FHM8 for IPC deployment scenario.

## 2.1 O-CU Hardware Reference Design

1. The O-CU white box hardware is the platform that perform the O-CU function of upper l2 and l3. The hardware
2. systems specified in this document meet the computing, power and environmental requirements of use cases
3. configurations and feature sets of RAN physical node. These requirements are described in the hardware architecture
4. and requirement specification [6] as well as in the use cases document [1]. The O-CU hardware includes the chassis
5. platform, mother board, peripheral devices and cooling devices. The mother board contains processing unit, memory,
6. the internal I/O interfaces, and external connection ports. The midhaul (MH) and backhaul (BH) interface are used to
7. carry the traffic between O-CU and O-DU8 as well as O-CU and core network. The other hardware functional
8. components include: the storage for software, hardware and system debugging interfaces, board management controller,
9. just to name a few; the O-CU designer will make decision based on the specific needs of the implementation.
10. The HW reference design of O-CU is the same as o-du8 except for the need of HW accelerator, thus detail design will
11. be described in o-du8 section 2.2.

## 2.2 O-DU8 Hardware Reference Design

1. The O-DU8 white box hardware is the platform that performs the DU function of L1 and lower L2. The hardware
2. systems specified in this document meet the computing, power and environmental requirements of use cases
3. configurations and feature sets of RAN physical node. These requirements are described in the early hardware
4. requirement specification as well as in the use cases document. The O-DU8 hardware includes the chassis platform,
5. mother board, peripheral devices and cooling devices. The mother board contains processing unit, memory, the internal
6. I/O interfaces, and external connection ports. The fronthaul and backhaul interface are used to carry the traffic between
7. O-RU8/FHM8 and O-DU8 as well as O-CU and O-DU8. The O-DU8 design may also provide an interface for hardware
8. accelerator if that option is preferred. The other hardware functional components include: the storage for software,
9. hardware and system debugging interfaces, board management controller, just to name a few; the O-DU8 designer will
10. make decision based on the specific needs of the implementation.
11. Note that the O-DU8 HW reference design is also feasible for O-CU and integrated O-CU/ O-DU8.

### 2.2.1 O-DU8 High-Level Functional Block Diagram

1. Figure 2-1 shows the major functional blocks of O-DU8. The digital processing unit handles the baseband processing
2. workload. To make the processing more efficient, an accelerator can be used to assist with the baseband workload
3. processing. The memory devices include the random-access memory (RAM) for temporary storage of data while flash
4. memory is used for codes and logs. The storage device is for persistent storage. The external network cards can be used
5. for fronthaul or backhaul connection. The baseboard management controller (BMC) is a microcontroller which
6. monitors hardware operation on motherboard. The clock circuits provide digital processing unit with required clock
7. signals.

![]({{site.baseurl}}/assets/images/7c5a80db746c.png)![]({{site.baseurl}}/assets/images/569dbd266214.png)![]({{site.baseurl}}/assets/images/d23919fbc240.png)![]({{site.baseurl}}/assets/images/e9b7d3fc4718.png)![]({{site.baseurl}}/assets/images/c64b4c623264.png)![]({{site.baseurl}}/assets/images/a2908beb63d9.png)![]({{site.baseurl}}/assets/images/bf3a97744524.png)![]({{site.baseurl}}/assets/images/7a73164a69d3.png)![]({{site.baseurl}}/assets/images/ee514d7e9e98.png)

Clock

Ethernet Card

Storage Drives

Baseboard Management Controller

Flash Memory

DDR RAM

Accelerator

Digital Processing Unit

4

1. **Figure 2-1: O-DU8 Functional Block Diagram.**

### 2.2.2 O-DU8 Hardware Design Description

1. ![]({{site.baseurl}}/assets/images/3a6ed5a17dcc.jpg)Figure 2-2 describes the components and connections inside the O-DU8 white box.

8

1. Figure 2-2: O-DU8 Hardware Block Diagram
2. As described in the previous section, the O-DU8 hardware can be implemented with difference design choices. Here, a
3. system-on-a-chip (SoC) based design is presented as an example which processes most of the O-DU8 workload. The
4. accelerator can be used to perform some O-DU8 workload functions based on the overall performance requirement.
5. Several Ethernet controllers are used for front haul link, back haul link and remote console control connection. The
6. other parts include: RAM, flash memory, and hard drive storage. The JTAG and USB ports are provided for hardware
7. debug and local connection if needed. Figure 2-2 describes the components and connections of O-DU8 hardware.
8. Finally, BMC block is mainly responsible for monitoring the hardware status.

### 2.2.3 O-DU8 Hardware Components

1. In this section, the details of the O-DU8 hardware component's requirements, features and parameters are described.
2. The components selection is based on the use case requirements which are listed in the hardware architecture and
3. requirements document [6].
4. 2.2.3.1 Digital Processing Unit
5. This example of the digital processing unit in O-DU8 is based on the General Purpose Processor (GPP).
6. ***a. Digital Processing Unit Requirement***
7. The GPP requirements are listed in the following table.
8. Table 2-1: The Processor Feature List

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Item Name** | **Description** |
| # of Cores | 16 |
| # of Threads | 32 |
| Base Frequency | 2.20 GHz |
| Max Turbo Frequency | 3.00 GHz |
| Cache | 22 MB |
| Thermal Design Power (TDP) | 100W |
| Max Memory Size (dependent on memory type) | 512 GB |
| Memory Types | DDR4 |
| Max # of Memory Channels | 4 |

</div>

18

1. The interface specifications on the main board are as follows:
2. **Memory Channel Interfaces:** The system memory capacity, type and related information are described in the
3. following table.

22

23 Table 2-2: The Memory Channel Feature List

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Item Name** | **Description** |
| Memory Types | DDR4 |
| # of Memory Channels | 4 |
| ECC LRDIMM | Up to 512GB |
| ECC RDIMM | Up to 256GB |
| Memory Speed | 2666/2400/2133MHz |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| DIMM Sizes | 128GB, 64GB, 32GB, 16GB |
| Memory Voltage | 1.2 V |

</div>

1

1. **PCIe:** PCIe Gen 3 should be supported by the processor. There are total of 32 PCIe lanes with 128 Gb/s
2. bandwidth. The 32 PCIe lanes can be divided into two x16 slots by using a riser card.
3. **Ethernet:** The system should be capable to offer aggregated 48 Gb/s Ethernet bandwidth. The breakout the
4. ports are discussed in later section. When higher Ethernet bandwidth required, an Ethernet card can be
5. installed in one of the PCIe slot.
6. ***b. Digital Processing Unit Design***
7. The digital processing unit is a SoC device which is a 64-bit multi-core server class processor. This SoC
8. includes an integrated Platform Controller Hub (PCH), integrated high-speed I/O, Integrated Memory
9. Controllers (IMC), and four integrated 10 Gigabit Ethernet ports.
10. The SOC supports 512-bit wide vector processing instruction set. It also supports hardware virtualization to
11. enable dynamic provisioning of services as communication service providers extend network functions
12. virtualization (NFV). Figure 2-2 shows the major functional blocks of the digital processing unit.
13. 2.2.3.2 Hardware Accelerator
14. Hardware accelerators can be used in O-DU8 to offload computationally intensive functions and to optimize the
15. performance under varying traffic and loading conditions. The acceleration functional requirements and implementation
16. are system designer's choice; however, the O-DU8 shall meet the minimum system performance requirements under
17. various loading and deployment conditions. In most cases, a Field Programmable Gate Array (FPGA) or Application
18. Specific Integrated Circuit (ASIC) based PCIe card can be used to optimize the system performance. The FPGA(s) are
19. part of a Network Interface Controller (NIC) that further provides connectivity services.

###### 2.2.3.2.1 Accelerator Design Solution 1

1. The O-DU8 system is typically implemented using a multi-core processor and one or more hardware accelerators. Parts
2. of O-DU8 protocol stack can be implemented in software running on the multi-core processors, some of the
3. computationally intensive L1 and L2 functions are offloaded to FPGA-based or similar hardware accelerators. This is a
4. programmable hardware, which provides both flexibility and high computing capabilities.
5. *a. Accelerator Requirements*
6. The accelerator unit comprises one or more FPGAs (e.g., two FPGAs), sufficient amount of DDR4 memory,
7. and synchronization circuitry where one of FPGAs is used for L1 functional offload and the other one is used
8. to perform fronthaul connectivity functions/protocols. The FPGA for L1 offload uses dedicated cores for
9. channel encoding/decoding as well as FPGA and processing resources for running L1 functions such as but not
10. limited to rate matching and de-matching, interleaving and scrambling, demodulation and HARQ buffer
11. management as well as OFDM modulation/demodulation and channel estimation.
12. Key features of the FPGA-based accelerator include:
13. ? 2X10/25G CPRI or RoE fronthaul interface
14. ? Built-in SyncE/IEEE1588v2 synchronization + external reference timing
15. ? L1 offloading options
16. - LDPC encoding and decoding
17. - Polar encoding and decoding
18. - HARQ management with on board DDR memory (including DDR controller and interfaces)
19. - Other L1 offloading candidates include PRACH detection, MIMO encoding and decoding,
20. channel estimation
21. - Partial or full L1 functions can be offloaded. It is recommended to offload the user-plane
22. channel coding chain and part of or the entire control-plane channel coding chain to the
23. hardware accelerator.
24. ? PCIe Gen3 x16, two Gen4 x8, or PCIe Gen3 x16 bifurcated to two Gen3 x8
25. ? GPP supported
26. ? Standard PCIe FHHL card (It is assumed that the hardware accelerators further perform NIC functions).
27. ? 8GB DDR4 memory for buffering
28. ? Power consumption not to exceed 75W
29. The accelerator requirements in hardware have been summarized inTable 2-3.
30. Table 2-3: Accelerator Hardware Component List

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Item Name** | **Description for FPGA 1** | **Description for FPGA 2** |
| SoC Resources | System Logic cells - 930K CLB LUT - 425K  SDFEC -8  DSP Slices - 4,272 BRAM - 38.0Mb URAM - 22.5Mb | System Logic cells - 1,143K CLB LUT - 523K  CLB Flip-Flops -1,045K DSP Slices - 1,968 BRAM - 34.6Mb  URAM - 36.0Mb |
| Form Factor | FHHL PCIe Form Factor | |
| PCIe Interface | x8 Gen1, Gen2, Gen3 interface to FPGA2 and  x8 Gen1, Gen2, Gen3 interface to FPGA1 have x16 to two x8 bifurcation | |
| On Board Memory | FPGA1 | FPGA2 |
| Total Capacity 4 GB in PL, upgradeable to 8GB Total Capacity 2 GB in PS, upgradeable to 4GB | Total Capacity 4 GB in PL, upgradeable to 8GB Total Capacity 2 GB in PS, upgradeable to 4GB |
| Network Interface(s) | N/A | 2xSFP28 optical interfaces to FPGA2  (User Configurable, includes 10/25 Ethernet) |
| Other External Interface(s) | Micro USB for JTAG support (FPGA programming and debug) and access to BMC | |
| Graphical User interface | GUI for monitoring the basic board parameters, monitoring temperature alerts, firmware upgrades for BMC | |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Board Management Controller | * Power sequencing and reset * Field upgrades * FPGA configuration and control * Clock configuration * I2C bus access * USB 2.0 |
| Operating Temperature | -5?C - 55?C |
| Power | < 75 W |
| Clocking Options | Low-Jitter, configurable clock ranging from10MHz to 750MHz  1 PPS input and output with assembly option for OCXO and TCXO |

</div>

1

* 1. The following are the accelerator requirements in function and interface.
  2. **Functional offload requirements**
  3. One of the candidate functions for offloading is the LDPC encoder and decoder, which typically consists of
  4. computationally intensive and relatively highly power-consuming functions. It must be noted that neither
  5. software implementation in CPU nor soft FPGA logic implementation would provide a highly power-efficient
  6. solution while meeting/exceeding 3GPP NR user-plane encoder/decoder throughput and latency requirements,
  7. rather a hardened implementation of the FEC functions would be very power efficient. Downlink and uplink
  8. throughputs of up to 40Gbps and 18Gbps, respectively, are shown feasible with this architecture. Other
  9. candidate L1 functions for acceleration include CRC generation, segmentation, bit-level/sub-block interleaving
  10. and scrambling as well as FFT/IFFT processing, for which an FPGA can be used.
  11. For other symbol processing L1 functions, which require heavy multiply and accumulation operations, FPGAs
  12. 1 and 2 have DSP blocks that can efficiently perform these operations. Polar encoding and/or decoding on the
  13. control-plane can also be offloaded to FPGA1 resulting in high throughputs and low latencies.
  14. **Interface requirements**
  15. **- PCIe:** PCIe interface is widely used to provide interface between the GPP and hardware accelerators. FPGA
  16. devices have dedicated PCIe hard IP which facilitate implementation and quick setup of PCIe interface. They
  17. support both PCIe Gen3 x16 or PCIe Gen4 x8, which allow the FPGA device to interface with any GPP
  18. supporting either PCIe Gen3 x16 or PCIe Gen4 x8 interface.
  19. **- Fronthaul:** FPGA devices can support various speed grades and any fronthaul protocols, customers can use
  20. off-the-shelf CPRI or RoE IPs to quickly implement and configure any fronthaul interface protocol.
  21. **- Serial transceivers:** FPGA devices have SerDes resources to implement various connectivity speeds (e.g.,
  22. 33 Gb/s) per SerDes, 10G/25G CPRI, 10G/25G/50G/100G Ethernet connections can use these SerDes
  23. resources.
  24. **- Ethernet MAC speed:** FPGA devices have hardened implementations of Ethernet MAC that support speeds
  25. of 100 Gb/s and above. The Ethernet MAC IP allows power-efficient implementation of high speed Ethernet
  26. connectivity. In the example shown in Figure 2-3, FPGA 1 and FPGA 2 can use the hard 100Gbps MAC IPs to
  27. connect each other, allowing the L1 and fronthaul functions to be distributed across these two FPGAs with less

1. connectivity overhead. For other Ethernet MACs such as 10G/25G Ethernet, they provide soft Ethernet MAC
2. IPs, so when implementing CPRI or RoE fronthaul functions, 10G/25G Ethernet MAC can be used.
3. *b. Accelerator Design*
4. The hardware accelerator supports GPP. Figure 2-3 illustrates a two-chip acceleration architecture comprising
5. two FPGAs with multi-lane PCIe interfaces toward the CPU and external connectivity toward O-RU8(s) via
6. CPRI/RoE and O-CU(s) through GbE connectivity. The example architecture further depicts multi-lane Gen3
7. or Gen4 PCIe interfaces between each FPGA and the CPU. The FPGAs communicate through high-bandwidth
8. Ethernet (GbE) transport.

**CPU**

**(L2 and L1)**

t

F1 Interface

GbE (10/25G)

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **FPGA1**  **(L1 Offload)** | |
|  | Inter-Chip Interface 100G Etherne |
| **FPGA2**  **(Connectivity)** | |

</div>

PCIe Interface PCIe Gen3x16 (Gen4x8)

9 100G

Fronthaul Interface 10/25G CPRI/RoE

10 **Figure 2-3: Example 2-chip FPGA-based Hardware Acceleration in O-DU8**

###### 2.2.3.2.2 Accelerator Design Solution 2

1. This section illustrates a one-chip acceleration architecture comprising one FPGA with PCIe interfaces toward the CPU
2. and external connectivity toward O-RU8(s). The example architecture further depicts Gen3 PCIe interfaces (for
3. example, or Gen4) between FPGA and the CPU.
4. An example one-chip FPGA-based hardware acceleration architecture is shown in Figure 2-4.

![]({{site.baseurl}}/assets/images/e51c878b7bfd.png)![]({{site.baseurl}}/assets/images/74751df5d972.png)![]({{site.baseurl}}/assets/images/192f6bd56162.png)![]({{site.baseurl}}/assets/images/14fdd547b193.png)![]({{site.baseurl}}/assets/images/71f6d9d1a41f.png)![]({{site.baseurl}}/assets/images/99be0a5f3cca.png)![]({{site.baseurl}}/assets/images/307711c7ec4c.png)![]({{site.baseurl}}/assets/images/4bd9459684de.png)![]({{site.baseurl}}/assets/images/12d4a3a9b54c.png)![]({{site.baseurl}}/assets/images/c282cbc5c99a.png)

O-DU

CPU

FPGA

PCIe Interface

Gen3x16

Fronthaul Interface

CPRI(25G/10G)

Backhaul Interface

10G

Accelerator

extra power supply

12V (possible)

GNSS

1588+syncE

POWER UNIT

6

1. Figure 2-4: Example of 1-chip FPGA-based Hardware Acceleration in O-DU8
2. *a. Accelerator Requirement*
3. The accelerator unit comprises one or more FPGAs (e.g., two FPGAs), sufficient amount of DDR4 memory,
4. and synchronization circuitry where one of FPGAs is used for L1 functional offload and the other one is used
5. to perform fronthaul connectivity functions/protocols. The FPGA for L1 offload uses dedicated cores for
6. channel encoding/decoding as well as FPGA and processing resources for running L1 functions such as but not
7. limited to rate matching and de-matching, interleaving and scrambling, demodulation and HARQ buffer
8. management as well as OFDM modulation/demodulation and channel estimation.
9. Key features of the FPGA-based accelerator include:
10. ? 4X25G/10G CPRI optical interface
11. ? 1x10G Ethernet optical interface
12. ? Support GNSS/IEEE1588v2+syncE reference timing
13. ? L1 offloading options
14. - LDPC encoding and decoding
15. - HARQ management
16. - Other optional L1 offloading such as FFT/IFFT, CP, CRC, rate matching, PRACH detection.
17. ? PCIe Gen3X16, 4 hard IP blocks
18. ? FHHL form factor and operation temperature from -5? to +55?
19. ? 2GB DDR4 memory for Buffering
20. ? Specific power supply design is required with 1-chip FPGA, since the maximum power consumption of
21. PCIe specification (75w) could be exceeded, additional external auxiliary power may be required.
22. **Functional offload requirements**
23. **- L1 offloading:** One of the functions for L1 offloading is the LDPC encoder and decoder, which typically
24. consists of computationally-intensive and relatively highly power-consuming functions. Other L1 functions for
25. acceleration include CRC generation, CP, PRACH detection and rate matching as well as FFT/IFFT
26. processing.
27. **- Fronthaul:** The data transmission and protocol processing of fronthaul interface is completed on the FPGA
28. device.
29. **Interface requirements**
30. **- PCIe:** PCIe interface is widely used to provide interface between the CPU and hardware accelerators. FPGA
31. device has dedicated PCIe hard IP which facilitate implementation and quick setup of PCIe interface. FPGA
32. support PCIe Gen3 x16, which allow the FPGA device to interface with any CPU supporting either PCIe Gen3
33. x16 interface.
34. **- Fronthaul:** FPGA device can support various speed grades and CPRI protocol for fronthaul interface
35. between O-DU8 and O-RU8.
36. **- Backhaul:** FPGA device can support backhaul interface between O-DU8 and core network function with an
37. 10G optical interface.
38. **- Synchronization:** Accelerator has external interfaces to support synchronization, including GNSS,
39. IEEE1588v2 and SyncE reference timing.
    1. *b. Accelerator Design*

2

![]({{site.baseurl}}/assets/images/4439acc1e3c2.png)![]({{site.baseurl}}/assets/images/2ceada5cd3c4.png)![]({{site.baseurl}}/assets/images/3167043a53db.png)![]({{site.baseurl}}/assets/images/c01dfd09f8ac.png)![]({{site.baseurl}}/assets/images/d5b7761ea982.png)![]({{site.baseurl}}/assets/images/98edde84b043.png)![]({{site.baseurl}}/assets/images/e62419b6f13f.png)![]({{site.baseurl}}/assets/images/dfee35744ad7.png)![]({{site.baseurl}}/assets/images/043cb8e117f0.png)![]({{site.baseurl}}/assets/images/b566be06d8e8.png)![]({{site.baseurl}}/assets/images/1ee029cabe2b.png)![]({{site.baseurl}}/assets/images/964a1a309696.png)![]({{site.baseurl}}/assets/images/dcc159af3cad.png)![]({{site.baseurl}}/assets/images/708e73a0ad99.png)![]({{site.baseurl}}/assets/images/6e9c830d1b41.png)![]({{site.baseurl}}/assets/images/977d8706ad2f.png)![]({{site.baseurl}}/assets/images/b69c38246150.png)![]({{site.baseurl}}/assets/images/68e47a27eaf9.png)![]({{site.baseurl}}/assets/images/30ab937b128d.png)![]({{site.baseurl}}/assets/images/e0219465ad5f.png)![]({{site.baseurl}}/assets/images/9827a6040f2d.png)![]({{site.baseurl}}/assets/images/3107fae54ae9.png)![]({{site.baseurl}}/assets/images/d922f21df575.png)![]({{site.baseurl}}/assets/images/837e6c07203f.png)![]({{site.baseurl}}/assets/images/3d6fd0cdae9d.png)![]({{site.baseurl}}/assets/images/d42f7e2cea9f.png)![]({{site.baseurl}}/assets/images/e1ee508725c5.png)![]({{site.baseurl}}/assets/images/b3d1310fa49e.png)![]({{site.baseurl}}/assets/images/386cb6ba7a35.png)![]({{site.baseurl}}/assets/images/e15a57e21f8a.png)![]({{site.baseurl}}/assets/images/389f6446fad6.png)

1588/GPS

1PPS

PCIE

PCIe

AUX\_POWER

12V

12V

DC/DC

Positive hot swap controller

EN

GNSS ANT

SMA

OSC

JTAG

Mixer

QSPI\_Flash

Clock Chip

DDR4

FPGA

1PPS

Power Supply Sequencer and Monitor

MCU

RJ45

LED

4\*25G

Fronthaul

10G

Backhaul

**O-DU server**

3 Figure 2-5: Example of Accelerator Design

1. Figure 2-5 shows the accelerator design, description of block diagram of board card:
2. **12V power:** The maximum power consumption of the whole card is estimated to exceed 75W. The PCIe
3. cannot meet the power consumption demand, so it needs an external 12V auxiliary power supply. The extra
4. power consumption can be included by the power unit of O-DU8. Only power cord is needed, and it has no
5. effect on the whole machine design. This part is not necessary if there are future optimizations.
6. **DC/DC:** The module contains all the power sources used in the system.
7. **Power Supply Sequencer and Monitor:** Since the system has the power on timing requirement, this module
8. controls the output of each DC/DC to realize the normal power on/off of the system.
9. **Mixer and GNSS antenna:** The system uses an external antenna, which can be placed outdoors to improve
10. the receiving sensitivity of synchronizing signal. After mixer's processing of the received signal, the signal
11. source of 1pps is output to clock chip for system input synchronous clock signal.
12. **MCU (micro control unit):** As the auxiliary processor of the board card, MCU realizes the temperature
13. detection of the board card, the operation state indication and the configuration of power monitor and clock
14. chip in the initialization process, and real-time monitoring of the working state of each module, exception
15. handling and other functions.
16. **Clock chip:** The chip realizes system-level clock input, which can synchronously output all kinds of clocks for
17. clock synchronization of subordinate modules.
18. **FPGA:** As the core chip of the board card, FPGA forwards the data of the downlink of the core network and
19. the uplink data gathered at the O-RU8(s), and interacts with the O-DU8 server through PCIe x16 to complete
20. the calculation of 5G NR data.

###### 2.2.3.2.3 Accelerator Design Solution 3

1. Channel coding for LDPC and fronthaul compression requires a significant amount of bit level processing and is well
2. suited to a fine-grained FPGA architecture and/or low cost/power structured ASIC. Options include:
3. ? Look-aside FEC: LDPC (de)coding, Polar (de)coding, Rate (De)Matcher, (De) Interleaver, CRC, HARQ
4. ? L1 Processing: (i)FFT & CP+/-, PRACH, channel estimation & beamforming
5. ? Bump-in-wire Fronthaul: compression / decompression for latency and bandwidth reduction
6. *a. Accelerator Requirement*
7. Hardware requirements are listed in Table 2-4.
8. Table 2-4: Accelerator Hardware Feature List

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Item Name** | **Description** |
| PCIe (Interface with digital processing unit) | Gen4 x16 (and lower) |
| Form factor | FHHL |
| Connectivity | 2x QSFP28/56 |
| FPGA | Logic Elements: 1437K  M20K Memory: 139Mb |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
|  | Quad-core GPP Hard Processor Sub-system |
| NIC Device | 100Gb xHAUL for FH, BH & MH traffic shaping. Optional FPGA co-processing. |
| DDR Main | 8+8+1GB DDR4 |
| Flash (FPGA images) | >=1 Gbit |
| BMC | Telemetry, Security, remote upgrade |
| Clocking | For O-RAN C1, C2, C3 & C4 |
| Fronthaul | CPRI |
| GPS | SMA for 1PPS & 10MHz (in/out) |
| Operating Temperature (ambient) | NEBS Compliant |
| Power | <75W (without optional NIC device) |
| Clock Accuracy | Low-Jitter, configurable clock ranging from 10MHz to 750MHz. Option for OCXO (TCXO as standard) |

</div>

1

* 1. Firmware Requirements are listed in Table 2-5.
  2. Table 2-5: Accelerator Firmware Feature List

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Item Name** | **Description** |
| Remote system upgrade | Securely upgradable FPGA flash image |
| Queuing | 64 Queues supported equally split between UL & DL. |
| LDPC Acceleration | NR LDPC Encoding with, interleaving and rate-matching.  NR LDPC Decoding with sub-block de-interleaving function of reverse rate matching.  Early Termination, CRC attachment and HARQ buffering. 5G Throughput: DL 14.8Gbps, UL 3.2Gbps |
| Load Balancing (channel coding) | Load balancer distributes the pending encoder/decoder requests to encoder/decoders |
| Descriptor Format (channel coding) | Code block based interface.  Software enablement by BBDEV API (DPDK) <https://www.dpdk.org/> <https://doc.dpdk.org/guides/prog_guide/bbdev.html> |
| Fronthaul Compression | In-line compression/decompression for Mu-Law, block-floating point and quantization according to the O-RAN WG4 specification. |
| Open programmable acceleration | Support for: |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| environment | * FPGA Flashing upgrade * Firmware version reporting * PCIe diagnostics * Ethernet diagnostics * Temperature and voltage telemetry information |

</div>

1

1. *b. Accelerator Design*
2. Accelerator design solution 3 has 2 options as shown in the figures below.

PCIe Gen 4x16 Or lower (200G)

**FPGA**

Connectivity & L1 Processing.

C1,2,3,4 Sync

**Digital Processing Unit**

L3,L2,L1(part)

FH 2x2x56Gbps Or lower

1PPS & 10MHz SMA

4

5 Figure 2-6: Accelerator Design 1 without optional NIC Device

6

1. The accelerator with optional NIC device.

FH 2x2x56Gbps Or lower

**FPGA**

PCIe

Gen4x16

PCIe Gen 4x8

Or lower (100G)

Connectivity & L1 Processing.

C1,2,3,4 Sync

1PPS & 10MHz

SMA

100Gb

**NIC**

**Digital Processing Unit**

L3,L2,L1(part)

PCIe Gen 4x8 Or lower (100G)

8

1. Figure 2-7: Accelerator Design 1 with optional NIC Device

1

PCIe Gen 3x16 Or lower (100G)

**Structured ASIC**

LDPC

Code/Transport Block

**Digital Processing Unit**

L3,L2,L1(part)

2

1. **Figure 2-8: Structured ASIC Accelerator Design**

###### 2.2.3.2.4 Accelerator Design Solution 4

1. Channel coding for LDPC and fronthaul compression requires a significant amount of bit level processing and is well
2. suited to a fine-grained structured ASIC. Features include:
3. ? Look-aside FEC: Turbo (de)coding, LDPC (de)coding, Rate (De)Matcher, (De) Interleaver, CRC, HARQ
4. retransmission & (de)interleaver.
5. *a. Accelerator Requirement*
6. Hardware features are listed in Table 2-6.
7. Table 2-6: Accelerator Hardware Feature List

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

12

1. Firmware Requirements are listed in Table 2-7.
2. Table 2-7: Accelerator Firmware Feature List

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Item Name** | **Description** |
| Queuing | 64 Queues supported equally split between UL & DL. |
| LDPC Acceleration | NR LDPC Encoding with, interleaving and rate-matching.  NR LDPC Decoding with sub-block de-interleaving function of reverse rate matching. |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
|  | Early Termination, CRC attachment and HARQ buffering.  5G Throughput: DL 23Gbps, UL 8Gbps |
| Load Balancing (channel coding) | Load balancer distributes the pending encoder/decoder requests to encoder/decoders |
| Descriptor Format (channel coding) | Code block and transport block based interface. Software enablement by BBDEV API (DPDK) <https://www.dpdk.org/>  <https://doc.dpdk.org/guides/prog_guide/bbdev.html> |

</div>

1

* 1. *b. Accelerator Design*
  2. The following diagram shows the structured ASIC based accelerator design. 4

PCIe Gen 3x16 Or lower (100G)

**Structured ASIC**

LDPC

Code/Transport Block

**Digital Processing Unit**

L3,L2,L1(part)

5

6 Figure 2-9: Structured ASIC Accelerator Design

7

1. 2.2.3.3 Baseboard Management Controller
2. BMC is used to perform hardware power control (power on, power off and power cycle), monitor hardware status
3. (temperatures, voltages, etc.), monitor Basic I/O System (BIOS)/ Unified Extensible Firmware Interface (UEFI)
4. firmware status, and log system events. It provides remote access via shared or dedicated NIC. System user can do
5. console access via serial or physical/Kernel-based Virtual Machine (KVM). The BMC has dedicated RAM and flash
6. memory. It provides access via serial port or Ethernet port. Figure 2-2 describes the BMC connections with related
7. components.

15

### 2.2.4 Synchronization and Timing

1. 2.2.4.1 Synchronization and Timing Design 1
2. This section describes the synchronization and timing mechanism that is used in the O-DU8.
   1. *a. Hardware Requirements*
   2. The O-DU8 shall support following timing synchronization methods:
   3. 1. GPS Synchronization
   4. 2. Ethernet based IEEE1588v2 Synchronization
   5. 3. BeiDou Synchronization
   6. 4. BeiDou and GPS switching
   7. **b. *Hardware Design***
   8. Depending on the timing distribution topologies used, the O-DU8 system clock is able to synchronize with the
   9. Grand Master Clock (GMC) using IEEE1588 via either the front haul NIC or backhaul NIC. O-DU8 can also
   10. synchronize timing using Global Navigation Satellite System (GNSS). In the case of IEEE1588, the Physical
   11. Hardware Clock (PHC) within the NIC is synchronized with the GMC first, then the O-DU8 system clock is
   12. synchronized with the PHC. The O-DU8 is also capable to provide clock to the O-RU8 via front haul if needed.
   13. When GNSS becomes available to O-DU8, it will be able to synchronize the system clock to Coordinated
   14. Universal Time (UTC). Figure 2-10 outlines the O-DU8 timing synchronization mechanisms.

![]({{site.baseurl}}/assets/images/51857521e220.png)![]({{site.baseurl}}/assets/images/6339c62fb503.png)![]({{site.baseurl}}/assets/images/8b89fa1b5567.png)![]({{site.baseurl}}/assets/images/10c8a77b4756.png)![]({{site.baseurl}}/assets/images/e8b65f6adba3.png)![]({{site.baseurl}}/assets/images/6399af24b502.png)![]({{site.baseurl}}/assets/images/550d630dacfe.png)![]({{site.baseurl}}/assets/images/2f5e922f1769.png)![]({{site.baseurl}}/assets/images/ea4e783e4f9d.png)![]({{site.baseurl}}/assets/images/987a641087b7.png)![]({{site.baseurl}}/assets/images/fd370b6d3fdd.png)![]({{site.baseurl}}/assets/images/c66d04c9d8bb.png)

1pps

PHC

System

Clock

PHC

NIC NIC

Backhaul

Fro nthaul

GNSS

15

16 Figure 2-10: O-DU8 Timing Synchronization

17

1. 2.2.4.2 Synchronization and Timing Design 2
2. This section describes the synchronization and timing mechanism that is used in the hardware accelerator board.
3. *a. Hardware Requirements*
4. Each hardware accelerator board that supports connectivity functions in O-DU8 must be able to support
5. external synchronization I/O and to receive or transmit 1 PPS reference clock source in order to ensure
6. synchronization across network.
7. *b. Hardware Design*
8. The accelerator board can operate in the master or slave mode when supporting IEEE 1588v2
9. timing/synchronization. It can generate 1 PPS reference clock for synchronization in the master mode and can
10. receive the 1 PPS reference clock in the slave mode for internal synchronization. The timing circuitry of the
11. accelerator board is shown in Figure 2-11. Two FPGA SerDes transceivers are used to receive and transmit
12. SyncE TX and RX clocks. 30

1

SyncE RX Clock TCXO/OCXO Reference

SerDes

SerDes FPGA (IEEE 1588v2

Stack)

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| PLL | SyncE TX Clock  1 PPS |
| Other Clocks |
|  |

</div>

GPS (1 PPS)

2

* 1. **Figure 2-11: HW Acceleration Board Timing and Synchronization**

### 2.2.5 External Interface Ports

* 1. The external interfaces of O-DU8 are described below.
  2. *a. Hardware Requirements*
  3. The following table shows the external ports or slots that the system provided.
  4. Table 2-8: External Port List

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

9

1. *b.* Hardware Design
2. The digital processing unit is a SoC device which provides the external ports described in the hardware
3. requirement section. The system includes 2 USB 3.0 ports, and the serial RS232 port that can be used for
4. Console Redirection, e.g. Out-of-Band Management. The system provides eight 1Gbps and four 10Gbps
5. Ethernet ports. There are two or four 25G CPRI ports in system depends on the accelerator card used. The
6. system also provides a RF interface to connect GNSS antenna. The following diagram outlines the external
7. interfaces that supported.

1

![]({{site.baseurl}}/assets/images/001c86c0b4de.png)![]({{site.baseurl}}/assets/images/4c05e8b1bbc8.png)![]({{site.baseurl}}/assets/images/f67d232c26aa.png)![]({{site.baseurl}}/assets/images/823122492058.png)![]({{site.baseurl}}/assets/images/5479bcb4903c.png)![]({{site.baseurl}}/assets/images/45adbbc1545a.png)

Ethernet Ports

Serial Port

2 or 4

25G CRPI

Ports

2 USB 3.0

Ports

GNSS

Antenna Port

O-DU8

* 1. **Figure 2-12: External interfaces reference design**

### 2.2.6 O-DU8 Firmware

* 1. BIOS and BMC firmware are needed in the system and shall be installed.

5

### 2.2.7 Mechanical

1. The mechanical design for mother board, chassis, and cooling are listed in this section.

##### ? Mother Board

1. The mechanical layout of the mother board shows the location of major components and interface ports. The
2. following diagram also provides the dimension of the board.

6

7

![]({{site.baseurl}}/assets/images/dbab9e49d570.jpg)

8

* 1. Figure 2-13: Mother Board Layout Diagram

1. ? **Chassis**
2. The 1U rack mount chassis contains the layout of the power supply, Solid State Drive (SSD) and fans. The
3. chassis dimension is showed in following figure.

4

5

1. ? **Cooling**

![]({{site.baseurl}}/assets/images/614020b0fae5.jpg)Figure 2-14: Chassis Mechanical Diagram

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
| 14 | AC Input: | 100-240V, 50-60Hz, 6.6A max |
| 15 | DC Output: | +3.3V: 12A |
| 16 |  | +5V: 15A |
| 17 |  | +5V standby: 3A |
| 18 |  | +12V: 41A |
| 19 |  | -12V: 0.2A |

</div>

1

* 1. *b. Hardware Requirements*
  2. The O-DU8 chassis includes one 500W power supply unit. The power supply unit is auto-switching capable,
  3. which enables it to automatically sense and operate at a 100v to 240v input voltage. The power supply unit
  4. features are listed in the following table.
  5. **Table 2-9: Power supply unit feature list**

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Item Name** | **Description** |
| Output connectors | 24pin/8pin/4+4pin/HDD/I2C |
| Dimension (W x D x H) | 3.9 x 7.1 x 1.6 inch |
| Maximum Output Power | +3.3V: 12A  +5V: 15A  +12V: 41A  -12V: 0.2A  +5Vsb: 3A |
| Rated Input Voltage/Current | 100-240Vac / 6.6A max |
| Rated Input Frequency | 50-60HZ |
| Inrush current | Less than 30A |

</div>

### 2.2.9 Thermal

* 1. Active cooling with up to 6 fans is integrated in the chassis.
  2. The hardware acceleration cards described in Section 2.2.3.2 use passive cooling and a custom heatsink and is equipped
  3. with temperature sensors. It is designed to operate in temperatures ranging from -5?C to +55?C.

### 2.2.10 Environmental and Regulations

* 1. The O-DU8 hardware system is RoHS Compliant. The power supply unit is EMC FCC/CISPR Class B compliant. Table
  2. 2-10 lists the environmental related features and parameters.
  3. Table 2-10: Environmental Features

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Item Name** | **Description** |
| Operating Temperature | -5?C to +55?C |
| Non-operating Temperature | -40?C to 70?C |
| Operating Relative Humidity | 8% to 90% (non-condensing) |
| Non-operating Relative Humidity | 5% to 95% (non-condensing) |

</div>

* + 1. The hardware accelerator described in Section 2.2.3.2 is designed to operate in indoor environments and in
    2. temperatures ranging from -5?C to +55?C.

## 2.3 O-RU8 Hardware Reference Design

* + 1. In this section we describe, the HW reference design of all O-RU8 components including block diagram, HW
    2. components, synchronization and timing, mechanical design, power supply, thermal, and environment requirements.

### 2.3.1 O-RU8 High-Level Functional Block Diagram

* + 1. Figure 2-15 provides a high-level functional block diagram depicting the major HW/SW components. It also highlights
    2. the internal/external interfaces that are required. This document shows how to implement the system defined by the
    3. IPC-HAR [6] document.

To/From O-DU8

![]({{site.baseurl}}/assets/images/3724fb190b0c.png)![]({{site.baseurl}}/assets/images/9878ee00a700.png)![]({{site.baseurl}}/assets/images/ea913d3ee25d.png)![]({{site.baseurl}}/assets/images/2507dbd54be9.png)![]({{site.baseurl}}/assets/images/9a7b923614d7.png)![]({{site.baseurl}}/assets/images/487c015d4e05.png)![]({{site.baseurl}}/assets/images/936924ff65ac.png)![]({{site.baseurl}}/assets/images/1b3328cfe2d2.png)![]({{site.baseurl}}/assets/images/1ddd55fd1f97.png)

O-RU8

O-RAN

FH

CPRI

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

1. **Figure 2-15: High-Level Functional Block Diagram**

### 2.3.2 O-RU8 Hardware Components

1. General block diagrams for 2T2R and 4T4R O-RU8 examples are shown.
2. Figure 2-16 shows a 2T2R implementation and Figure 2-17 shows an 4T4R implementation. In each of
3. these diagrams, the Digital Processing Unit is further detailed in 2.3.2.1. Items under the umbrella of RF

1 Processing Unit, including the Transceiver, RFFE and other RF items are reviewed in additional detail in

2 2.3.2.2. Clock and Synchronization are reviewed in 2.3.3. The Power Unit is detailed in 2.3.6.

Port A

![]({{site.baseurl}}/assets/images/bf833e3f9c49.png)![]({{site.baseurl}}/assets/images/ff287a887615.png)![]({{site.baseurl}}/assets/images/7c35bd58e2a4.png)![]({{site.baseurl}}/assets/images/25b96b5e1640.png)![]({{site.baseurl}}/assets/images/6d2e35091aa8.png)![]({{site.baseurl}}/assets/images/938c30d013f8.png)![]({{site.baseurl}}/assets/images/e5e3bed9b3be.png)![]({{site.baseurl}}/assets/images/e5e3bed9b3be.png)![]({{site.baseurl}}/assets/images/b5eb17ab37c6.png)![]({{site.baseurl}}/assets/images/3f2c857402ba.png)

**TR**

**control**

**Tx Rx**

**enable enable**

**bypas s**

**enable**

**Rx0**

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

**Rx1**

**Network**

**Clock**

**SPI**

**bypas s**

**enable**

Clock

Transceiver

Synchronizer

Power Unit

**Clean Clock**

3

**TRx**

**Reference**

4 Figure 2-16: 2T2R General Block Diagram with TR switch

5

**TRx**

**Reference**

![]({{site.baseurl}}/assets/images/ea626ae07832.png)![]({{site.baseurl}}/assets/images/9fe4e56d419a.png)![]({{site.baseurl}}/assets/images/bfbd79dc7d7e.png)![]({{site.baseurl}}/assets/images/92d29fe8ec2a.png)![]({{site.baseurl}}/assets/images/365c590983b7.png)![]({{site.baseurl}}/assets/images/52eb8cab2246.png)![]({{site.baseurl}}/assets/images/aea4a831dafe.png)![]({{site.baseurl}}/assets/images/2fccba504989.png)![]({{site.baseurl}}/assets/images/dd7870b2faf5.png)![]({{site.baseurl}}/assets/images/33cc38f1b21d.png)![]({{site.baseurl}}/assets/images/2d50a6fc0d09.png)![]({{site.baseurl}}/assets/images/2d50a6fc0d09.png)![]({{site.baseurl}}/assets/images/2d50a6fc0d09.png)![]({{site.baseurl}}/assets/images/2d50a6fc0d09.png)![]({{site.baseurl}}/assets/images/b5eb17ab37c6.png)![]({{site.baseurl}}/assets/images/f4bba0fa87f6.png)![]({{site.baseurl}}/assets/images/b96508ad52bc.png)![]({{site.baseurl}}/assets/images/461badd0c709.png)

**TR Tx Rx**

**control enable enable**

**bypas s**

**enable**

**Rx0**

RFFE

**enable**

**Tx0**

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

**Rx1**

**Network**

**Clock**

**SPI**

**bypas s**

**enable**

Clock

Transceiver

Port A

**bypas s**

**enable**

**Rx0**

RFFE

**Tx0**

**PA**

**enable**

**ORx0**

Synchronizer

**ORx1**

**enable**

**Tx1**

**PA**

RFFE

**bypas s**

**enable**

Power Unit

**Rx1**

**Clean Clock**

6 Figure 2-17: 4T4R General Block Diagram with TR switch

1. In following section, we describe their functionality, interfaces and performance of every block in the RF Processing
2. Unit. Since device integration is an ongoing activity, chip boundaries may be fluid and some functionalities may move
3. from one block to another or entire functionalities may be absorbed into other blocks. The sections below describe the
4. functional blocks independent of which physical device they may reside in.
5. 2.3.2.1 Digital Processing Unit
6. The digital processing unit of O-RU8 is mainly for performing tasks related to FH interface, RF interface, and OAM.
7. *i. FPGA Solution Design 1*
8. The digital processing unit of O-RU8 is mainly for performing FH interface, RF interface, and OAM functions.
9. *a. FPGA Requirement*
10. The following items are the main requirement for the O-RU8:
11. ? Interface requirement: One lane of bi-direction SerDes targeting CPRI will be @10Gbps for FH split
12. option 8. Four lanes of bi-direction JESD204B SerDes will be used for 2T2R. Eight lanes of bi-direction
13. JESD204B SerDes will be used for 4T4R
14. ? Resource requirement: FPGA resource requirements for 2T2R and 4T4R are shown in Table 2-11 and
15. Table 2-12.
16. Table 2-11: Resource requirement for 2T2R O-RU8

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| Module | FF | LUT | BRAM18 | DSP |
| DUC | 4820 | 4346 | 0 | 108 |
| DDC | 4820 | 4346 | 0 | 108 |
| CFR | 11470 | 6136 | 22 | 36 |
| DPD | 34269 | 13250 | 188 | 87 |
| JESD204B | 4314 | 4285 | 0 | 0 |
| Fronthaul(CPRI) | 4210 | 2756 | 1 | 0 |
| Other | 8000 | 5000 | 100 | 12 |
| Total | 71903 | 40119 | 311 | 351 |

</div>

17

18 Table 2-12: Resource requirement for 4T4R O-RU8

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| Module | FF | LUT | BRAM18 | DSP |
| ChFIR | 2832 | 2686 | 0 | 84 |
| DUC | 5148 | 3756 | 0 | 36 |
| CFR | 25676 | 12372 | 48 | 96 |
| DPD | 45770 | 17643 | 217 | 105 |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| AGC | 1000 | 600 | 4 | 8 |
| DDC | 1716 | 1252 | 0 | 12 |
| UL\_ChFIR | 2832 | 2686 | 0 | 84 |
| JESD2048 | 9900 | 11127 | 0 | 0 |
| CPRI | 10080 | 8960 | 32 | 0 |
| Total | 104954 | 61082 | 301 | 425 |

</div>

1

1. ? Processor requirement: For device model A, the processor will be used, one is used for device control
2. and management plane functions, the other one is for Digital Pre-Distortion (DPD) feedback path. For
3. device model C, dual-core ARM cortex-A53 will be used, similarly one is used for device control and
4. management plane functions, the other one is for DPD feedback path.
5. ![]({{site.baseurl}}/assets/images/6c1367afd55a.jpg)? Power requirement: Power estimations for 2T2R and 4T4R are shown in Figure 2-18 and Figure 2-19.

7

![]({{site.baseurl}}/assets/images/d999f84a77d1.jpg)8 Figure 2-18: Power estimation for 2T2R O-RU8

9

* + 1. Figure 2-19: Power estimation for 4T4R O-RU8
       1. ? Speed grade, environmental requirement: -2L, 0? to 110?
       2. *b. FPGA Design*
       3. This solution of the digital processing unit incorporates FPGA and a processor. The FPGA handles high
       4. speed digital processing such as FH, DDC, DUC, CFR and so on. All functions are listed in the previous
       5. section. The processor is used for hardware device configuration and the OAM function. The FPGA and the
       6. processor core can be integrated into one SoC or implemented into two devices. Here the FPGA and the
       7. processor core are integrated into one SoC device.

8

![]({{site.baseurl}}/assets/images/494472deefa9.png)![]({{site.baseurl}}/assets/images/897dfccb69af.png)![]({{site.baseurl}}/assets/images/6da32fbac183.png)![]({{site.baseurl}}/assets/images/05863d98766a.png)![]({{site.baseurl}}/assets/images/bad2078347d4.png)![]({{site.baseurl}}/assets/images/5321271e10dc.png)![]({{site.baseurl}}/assets/images/b634817cdc9f.png)![]({{site.baseurl}}/assets/images/28a14f1ca2de.png)![]({{site.baseurl}}/assets/images/bad2078347d4.png)![]({{site.baseurl}}/assets/images/4e476fbb26dc.png)![]({{site.baseurl}}/assets/images/3aa2bcad5c11.png)![]({{site.baseurl}}/assets/images/3d440a78c5dc.png)![]({{site.baseurl}}/assets/images/3c07f1a11019.png)![]({{site.baseurl}}/assets/images/ba91e8e5a860.png)![]({{site.baseurl}}/assets/images/9c3a9b597d6e.png)![]({{site.baseurl}}/assets/images/c73d2b008a8f.png)![]({{site.baseurl}}/assets/images/a027e615d31d.png)![]({{site.baseurl}}/assets/images/d359897d5a8c.png)![]({{site.baseurl}}/assets/images/b8ad66aa9d2c.png)![]({{site.baseurl}}/assets/images/e2940bc04b4d.png)![]({{site.baseurl}}/assets/images/4ed77373411e.png)![]({{site.baseurl}}/assets/images/50131bd56ee9.png)![]({{site.baseurl}}/assets/images/5d8734a632fb.png)![]({{site.baseurl}}/assets/images/e4aa0597ffa8.png)![]({{site.baseurl}}/assets/images/c013d6253bef.png)![]({{site.baseurl}}/assets/images/a987b480a868.png)![]({{site.baseurl}}/assets/images/4a90ae2e5675.png)![]({{site.baseurl}}/assets/images/2741a3947cb3.png)

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

122.88MHz

PLL

IIC

SFP+

Power:3.3V 2.5V 1.8V 1.35V 1.2V 0.9V

Processor

DDR

1. Figure 2-20: FPGA Reference Design Diagram
2. For the processor portion, the internal RAM resource may not be enough. So the external DDR is needed to
3. let the processor handle more RAM consuming functions such as operation system or stack protocols like
4. Network Configuration Protocol (NetConf) Client. For the O-RU8 design, the DDR3 with 256Mb\*16bit
5. memory capacity is enough. The interface between the DDR and processor can be memory interface
6. generator (MIG).The external Flash is used to store operation system related files, calibration information
7. of the RF portion, NetConf related files, FPGA firmware and so on. For this O-RU8 design, the flash with
8. 2Gb memory capacity is enough. The online debug function is performed by external Ethernet PHY with
9. an RJ45 connector. This allows the administrator to visit the internal function of the O-RU8 and control it.
10. The interface between the DDR and processor can be Media-Independent interface (MII). The Ethernet
11. PHY device can be very general 100M Ethernet Transceiver. The FPGA has one SerDes lane connected to
12. optical module to perform the fronthaul link between O-RU8 and O-DU8 /FHM8. Another 4 SerDes lanes of
13. the FPGA are needed to connect one transceiver of the O-RU8 to transmit or receive IQ sample by the
14. interface of JESD204B while the FPGA needs synchronized clock signals to work well. The interface
15. between PLL and FPGA should be Low-Voltage Differential Signaling (LVDS).
    1. 2.3.2.2 RF Processing Unit
    2. For the RF processing unit of O-RU8, it will perform functionalities of ADC, DAC, LO, down converter, up converter
    3. and etc.

###### 2.3.2.2.1 Transceiver Reference Design

* 1. For the O-RU8 the sampling function and frequency conversion function can be performed by transceiver. The purpose
  2. of using the transceiver is to saving power and size of the PCB. The Transceiver is to convert between high speed
  3. baseband data and a low-level RF for both transmit and receive signal chain. In addition, the transceiver is responsible
  4. for orchestration of control signals not limited to the PA enable, LNA enable, LNA bypass as well as other required
  5. system level signals.
  6. *a. Hardware Requirements*
  7. Include the requirements for this component.
  8. ? Interface Requirements: The interface requirements for the Transceivers are list in Table 2-13.
  9. Table 2-13: Interface requirements of the Transceiver

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Item Name** | **Description** |
| High Speed Data | High speed data represents the baseband information being transmitted or received. Depending on the configuration of the O-RAN device, various bandwidths may be supported leading to a range of payload rates. Options for data include parallel data paths, JESD204B and JESD204C. Up to 8 lanes in each direction may be supported although fewer is preferred. Options such as DPD and numeric precision will impact the payload rate. Several options are shown in the following table. All data represents IQ 16-bit (N=16) precision. Some devices support IQ 12 bit (N'=12) which may reduce the required data rates accordingly. The tables below assume 1 ORx for 2 TRx. From Table 2-14 and Table 2-15, the number of lanes required may be determined by dividing the total bit rates shown by the capacity of a lane, typically 12.5 GBPS for JESD204B and 25 GBPS for JESD204C. |
| Reference Clock (Device Clock) | The transceiver should receive a reference for internal clock and LO synthesis needs. This reference clock can function as the JESD204 Device Clock where the interface is by SERDES. The specific clock frequency is determined by the operation mode of the transceiver and may range from 1Hz upward. |
| SYSREF | If the transceiver supports SERDES, then it should accept a SYSREF signal from the clock or data source as appropriate. The number and configuration for the SYSREF is dependent on the operating mode of the transceiver. |
| SYNCB | If the transceiver supports SERDES, then it should also support a SYNCB for each link as appropriate. |
| Control | Control of the transceiver is by way of 3 or 4 wire SPI or IIC functioning as a slave. Support for 1.8V control is required and tolerance of 3.3V is preferred. The transceiver may optionally include a separate SPI master for control of peripheral devices as required. |
| GPIO | The transceiver may optionally include GPIO for controlling peripherals including but not limited to PAs, LNAs and other devices. These GPIOs should at a minimum support 1.8V outputs but the specifics will be determined by the connected devices. The GPIO should |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
|  | also support input from peripheral devices. Input should at a minimum support 1.8V logic with tolerance of 3.3V preferred. |
| Tx Enable | The transceiver should provide an output to support enabling and disabling the external devices in the transmit chain such as a TxVGA (optional) and PA. |
| Rx Enable | The transceiver should provide an output to support enabling and disabling the external devices in the transmit chain such as a RF Front End Module or LNA. |
| LNA Bypass | The transceiver should provide an output to support bypassing the LNA appropriately in the condition of a large blocker if so required. |
| RF Outputs | RF outputs including the main Tx signal should support 50 ohm or 100 ohms signalling. These outputs can be either single ended or differential. |
| RF Inputs | RF inputs including the main Rx and the Observation Rx (ORx) (for DPD) should support 50 ohm or 100 ohms signalling. These inputs can be either single ended or differential. The device should support at least 1 ORx. |

</div>

1

2 Table 2-14: Payload with DPD in Digital Device (GBPS Rx/Tx)

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

1. Table 2-15: Payload with DPD in Transceiver (GBPS Rx/Tx)

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- |
| **Bandwidth (MHz)** | **Parallel** | **JESD204B** | **JESD204C** | **Parallel** | **JESD204B** | **JESD204C** |
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
   1. ? Power Dissipation: Total dissipation of the TRx should be less than 6W for 4T4R.
   2. ? RF Specifications are given in Table 2-16 3

4 Table 2-16: RF specifications in Transceiver

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- |
| **Parameter** | **Symbol** | **Min** | **Typ** | **Max** | **Unit** | **Test Conditions/Comments** |
| TRANSMITTERS |  |  |  |  |  |  |
| Center Frequency | 650 |  | 6000 | MHz |
| Transmitter Synthesis Bandwidth |  |  | 450 | MHz |
| Transmitter Large Signal Bandwidth |  | 200 | | | MHz |  |
| Transmitter Attenuation Power Control Range |  | 0 |  | 32 | dB | Signal-to-noise ratio (SNR)  maintained for attenuation between 0 dB and 20 dB |
| Transmitter Attenuation  Power Control Resolution |  | 0.05 |  | dB |  |
| Adjacent Channel  Leakage Ratio (ACLR) |  |  |  |  | 20 MHz LTE at -12 dBFS |
|  | -66 |  | dB | 75 MHz < f <= 2800 MHz |
| In Band Noise Floor | OIP3 |  |  |  |  | 0 dB attenuation; in band noise falls 1 dB for each dB of attenuation for attenuation between 0 dB and 20 dB |
|  |  | -154.5 |  | dBm/Hz | 600 MHz < f <= 3000 MHz |
| Out of Band Noise Floor |  |  |  |  | 0 dB attenuation; 3 x bandwidth/2 offset |
|  |  | -153 |  | dBm/Hz | 600 MHz < f <= 3000 MHz |
| Maximum Output Power |  |  |  |  | 0 dBFS, continuous wave tone  into 50 ? load, 0 dB transmitter attenuation |
|  |  | 6 |  | dBm | 600 MHz < f <= 3000 MHz |
| Third Order Output Intermodulation Intercept Point |  |  |  |  | 0 dB transmitter attenuation |
|  | 27 |  | dBm | 600 MHz < f <= 5700 MHz |
| Error Vector Magnitude (Third Generation Partnership Project (3GPP) Test Signals) | EVM |  |  |  |  |  |
| 1900 MHz LO |  | 0.6 |  | % | 50 kHz RF PLL loop bandwidth |
| 3800 MHz LO |  | 0.53 |  | % | 300 kHz RF PLL loop bandwidth |
| OBSERVATION RECEIVER | ORx |  |  |  |  | IIP3 improves decibel for decibel for the first 18 dB of gain attenuation; QEC performance optimized for 0 dB to 6 dB of |
| Center Frequency | 450 |  | 6000 | MHz |
| Gain Range |  | 30 |  | dB |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- |
| **Parameter** | **Symbol** | **Min** | **Typ** | **Max** | **Unit** | **Test Conditions/Comments** |
|  | PHIGH |  |  |  |  | attenuation only |
| Analog Gain Step |  | 0.5 |  | dB | For attenuator steps from 0 dB to 6 dB |
| Receiver Bandwidth |  |  | 450 | MHz |  |
| Maximum Useable Input Level |  |  |  |  | 0 dB attenuation; increases decibel  for decibel with attenuation; continuous wave corresponds to  -1 dBFS at ADC |
|  |  | -11 |  | dBm | 75 MHz < f <= 3000 MHz |
| Integrated Noise |  | -58.5 |  | dBFS | 450 MHz integration bandwidth |
|  |  | -57.5 |  | dBFS | 491.52 MHz integration bandwidth |
| Third-Order Input  Intermodulation Intercept Point | IIP3 | 15  16.5  18 | | | dBm dBm dBm | Maximum observation receiver gain; test condition: PHigh - 11 dB/tone |
| Narrow Band  1900 MHz  2600 MHz  3800 MHz |
| Wide Band |  |  |  |  |  | IM3 products>130 MHz at baseband; test condition: PHigh - 11 dB/tone ; 491.52 MSPS |
| 1900 MHz  2600 MHz  38000 MHz |  |  | 13  11  13 |  | dBm dBm  dBm |
| Third-Order Intermodulation Product | IM3 |  | -70 |  | dBc | 600 MHz < f <= 3000 MHz |
| Spurious-Free Dynamic Range | SFDR |  | 64 |  | dB | Non IMx related spurs, does not include HDx; (PHIGH - 11) dB input  signal |
| Harmonic Distortion |  |  |  |  |  | (PHIGH - 11) dB input signal |
| Second Order Harmonic Distortion Product | HD2 |  | -80 |  | dBc | In band HD falls within +-100 MHz |
|  |  |  | -73 |  | dBc | Out of band HD falls within +-225 MHz |
| Third-Order Harmonic Distortion Product | HD3 |  | -70 |  | dBc | In band HD falls within +-100 MHz |
|  |  |  | -65 |  | dBc | Out of band HD falls within +-225 MHz |
| RECEIVERS |  |  |  |  |  | Attenuator steps from 0 dB to 6 |
| Center Frequency |  |  | 6000 | MHz |
| Gain Range |  | 30 |  | dB |
| Analog Gain Step |  | 0.5 |  | dB |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- |
| **Parameter** | **Symbol** | **Min** | **Typ** | **Max** | **Unit** | **Test Conditions/Comments** |
|  | PHIGH |  |  |  |  | dB |
|  |  | 1 |  | dB | Attenuator steps from 6 dB to 30 dB |
| Receiver Bandwidth |  |  | 200 | MHz |  |
| Maximum Useable Input Level |  |  |  |  | 0 dB attenuation, increases decibel  for decibel with attenuation; continuous wave = 1800 MHz;  corresponds to -1 dBFS at ADC |
|  |  | -11 |  | dBm | 75 MHz < f <= 3000 MHz |
| Noise Figure | NF | 12 | | | dB | 0 dB attenuation, at receiver port |
| Input Third-Order Intercept Point | IIP3 | 600 MHz < f <= 3000 MHz |
| Difference Product, 2600 MHz (Wideband)  2600 MHz (Midband) | IIP3, d | 17  21 | | | dBm dBm | Two (PHIGH - 9) dB tones near band  edge |
| Sum Product,  2600 MHz (Wideband\_ | IIP3, s |  | 20 |  | dBm | Two (PHIGH - 9) dB tones, at  bandwidth/6 offset from the LO |
| HD3 | HD3 |  |  |  |  | (PHIGH - 6) dB continuous wave  tone at bandwidth/6 offset from the LO |
|  |  |  | -66 |  | dBc | 600 MHz < f <= 4800 MHz |

</div>

1

2

1

1. *b. Hardware Design*
2. For the O-RU8 the sampling function and frequency conversion function can be performed by transceiver.
3. Usually the transceiver is integrated by ADC, DAC, LO, down converter, up converter and so on. The block
4. diagram of transceiver design is shown in Figure 2-21.

REF Clock In SYSREF

SPI Port

SCLK

CSB

SDO SDIO

Clock,

Synchronization & Synthesis

Con trol

Interface

CPIO1

GPIO2

GPIO3 GPIO#

Receiver Block 4

Receiver Block 3 Receiver Block 2

Receiver Block 1

Rx3

Rx2

Rx1

ADC

Decimation

pFIR AGC

Tuning RSSI

Overload Device Management

Transmit Block 4

Transmit Block 3

Transmit Block 2

Transmit Block 1

SYNCIN

SERDES Out

JESD204B/C

Serial Interface

SERDES In

Tx3

Tx2

Interpolation

pFIR

Tuning

Device Management

SYNC OUT

Tx1

DAC

DPD Engine

Obs ervation

Receiver

ADC

Decimation

pFIR AGC

Tuning RSSI

Overload Device Management

Optional Features

Ext LO/Clock In

Rx4

Decimation

pFIR AGC

Tuning RSSI

Overload Device Management

ADC

Decimation

pFIR AGC

Tuning RSSI

Overload Device Management

ADC

Decimation

pFIR AGC

Tuning RSSI

Overload Device Management

ADC

Tx4

Interpolation

pFIR

Tuning

Device Management

DAC

Interpolation

pFIR

Tuning

Device Management

DAC

Interpolation

pFIR

Tuning

Device Management

DAC

ORx1 ORx2

ORx3 ORx4

6

1. Figure 2-21: Transceiver Reference Design Diagram (Optional elements are highlighted in Grey)
2. The definition of the input/output lines are as follows:
3. ? REF Clock In is the differential reference input to the on-chip synthesizer. This may also function as the
4. SerDes Device Clock.
5. ? SYSREF is a JESD204B/C differential synchronization signal.
6. ? Ext LO/Clock Input is an optional input that can be used as an alternate LO or clocking signal.
7. ? Rx1 through Rx4 are differential receiver inputs to their respective cores.
8. ? Tx1 through Tx4 are differential transmitter output from their respective cores.
9. ? ORx1 through ORx4 are differential observation receiver inputs.
10. ? SCLK is the serial control clock input.
11. ? CSB is the active low device select for the control interface.
12. ? SDO is the serial data output for the control interface. This pin may be omitted for 3-pin control
13. implementations.
14. ? SDIO is a bidirectional serial data interface. In 4-pin mode, this pin functions as the serial data input.
15. ? GPIO1 - GPIO# are general purpose IO signals used for interrupts, enables, test mode and resets. These
16. are used as interface and control for peripheral devices including controllers, TxVGAs, PA, LNA and
17. similar devices where SPI control is too slow.
18. ? SYNCIN are differential pins associated with the receiver channels of the JESD204 interface. In not
19. used, they are typically grounded. Up to 4 pair may be supported.
20. ? SerDes Out are differential JESD204B/C data output interfaces. Up to 8 lanes may be active.
21. ? SerDes In are differential JESD204B/C data input interfaces. Up to 8 lanes may be active.
22. ? SYNCOUT are differential pins associated with the transmitter channels of the JESD204 interface. If
23. not used, do not connect. Up to 4 pair may be supported.

###### 2.3.2.2.2 Power Amplifier (PA) Reference Design

1. The Power Amplifier boosts the RF output to the level required for the base station class.
2. *a. Hardware Requirements*
3. The PA should have large enough gain to reduce the need for an additional driver. This will reduce cost and
4. PCB space. The output power should be at least 27dBm (30dBm for 500mW/port to compensate for the loss of
5. switch and antenna filter). The ACLR should be greater than 47dBc according to the related 3GPP test mode.
6. DPD is needed to reduce the power consumption. The P1 dB requirement is closely related to the DPD
7. algorithm.
8. Table 2-17: PA Requirements

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **Frequency band** | **Band41** | **Band78** | **Additional Information** |
| Gain | >33dB | >33dB |  |
| P3dB | >34dBm | >34dBm  >37dBm(500mW/port) | ACLR>=47dBc with DPD@100MHz NR 27dBm  (30dBm for 500mW/port) |
| Input return loss | <-15dB | <-15dB |  |
| Output return loss | <-15dB | <-15dB |  |
| Switching Speed | <1us | <1us |  |
| HD2 | >28dBc | >28dBc | CW 27dBM |
| HD3 | >30dBc | >30dBc | CW 27dBm |

</div>

19

20

1

2 ? Interface Requirements:

3 The interface requirements of the transmit PA are listed in Table 2-18. 4

5 Table 2-18: Interface requirements of the transmit PA

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
5. reduce the RF energy leakage. Figure 2-22 shows the details.

![]({{site.baseurl}}/assets/images/8ed448622e00.png)

RFEN

RFin

RFout

Vcc

14

15 **Figure 2-22: PA Reference Design Diagram**

###### 2.3.2.2.3 Low Noise Amplifier (LNA) Reference Design

1. The purpose of the LNA is to boost the Rx signal to a level that can nominally interface directly to the transceiver. This
2. block will typically be a 2-stage amplifier with a 2nd stage bypass. The frontend will also include a TR switch to shunt
3. any Tx signal to a termination away from the amplifier.

5

1. *a. Hardware Requirements*
2. The requirements of the LNA are listed here.
3. ? Interface Requirements: The interface requirements of the transmit LNA are listed in Table 2-19.
4. Table 2-19: One stage LNA Requirements

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

10

1. ? Device Configuration: Single or dual device.
2. ? Power Dissipation: Less than 500 mW for a dual when device is fully enabled in receive mode.
3. ? RF Specifications: For LNA unit, it should have larger enough gain to reduce extra driver amplifier for
4. cost and PCB space. The NF figure of LNA should small enough to overcome the loss of switch and
5. filter.
6. Table 2-20: Two stage LNA Requirements

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **Frequency band** | **Band41** | **Band78** | **Additional Information** |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| NF | <1 dB | <1.5 dB |  |
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

1. *b. Hardware Design*
2. The reference designs for one stage LNA and two-stage LNA are given.
3. ? One stage LNA
4. RFin is the input port of the LNA. RFout is the output of the LNA. Vcc is the power input of the LNA. LNA
5. EN is the control pin to disable or enable the LNA. The input match to 50 ohm as much as possible to
6. reduce the reflection. But for output of the LNA, it is hard to get best Noise figure and the output return loss.
7. Compromise is needed between NF and return loss. Usually the return loss should be around -10dB or -
8. 12dB. Also is should be very careful to assure the stability of the LNA in a large bandwidth. Vcc needs
9. capacitors to reduce the DC power ripples and give a short route to reduce the RF energy leakage. Figure
10. 2-23 shows the details.

![]({{site.baseurl}}/assets/images/1050bda5db82.png)

LNAEN

RFin

RFout

Vcc

12

13 Figure 2-23: One Stage LNA Diagram

1

1. ? Two stage LNA
2. RFin is the input port of the LNA. RFout is the output of the LNA. Vcc is the power input of the LNA. LNA
3. EN is the control pin to disable or enable the LNA. The input matches to 50 ohm as much as possible to
4. reduce the reflection. But for output of the LNA, it is hard to get best Noise figure and the output return loss.
5. Compromise is needed between NF and return loss. Usually the return loss should be around -10dB or -
6. 12dB. Also is should be very careful to assure the stability of the LNA in a large bandwidth. Vcc needs
7. capacitors to reduce the DC power ripples and give a short route to reduce the RF energy leakage. Figure
8. 2-24 shows the details.

![]({{site.baseurl}}/assets/images/48db7b0c864b.png)![]({{site.baseurl}}/assets/images/a00492d74134.png)

LNAbypass

LNAEN

RFin

RFout

Vcc

Vcc

10

1. **Figure 2-24: Two-Stage LNA Diagram**

###### 2.3.2.2.4 RF Switch Reference Design

1. For TDD use, the TX and RX links work spiritedly by time duplex. The switch is used to change the RF link according
2. to the TDD duplex. In the TDD TX mode, the switch is switched to connect PA and antenna. In TDD RX mode, the
3. switch is switched to LNA and antenna.
4. *a. Hardware Requirements*
5. The requirements of the RF switch are listed here.
6. ? Interface Requirements
7. The interface requirements of the switch are listed in Table 2-21.
8. Table 2-21: Interface requirements of the RF switch

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Item Name** | **Description** |
| Control | Control the switch working mode |
| RF COM | The port connected to the antenna  RF inputs should support 50 ohm, single ended to match the antenna. |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| RF Outputs | The port connected to the LNA.  RF inputs should support 50 ohm, single ended to match the LNA. |
| RF Inputs | The port connected to the PA.  RF inputs should support 50 ohm, single ended to match the PA output. |

</div>

1

* 1. ? RF Specifications
  2. For switch, it should have larger P1dB to not degrade the ACLR or damage the switch itself. The output
  3. power should be at least 26dBm (29dBm for 500mW/port) count on the loss of antenna filter so it must
  4. have low loss. Also the isolation needs to be high to protect the LNA. Higher HD2 and HD3 are needed to
  5. reduce the out of band emissions.

7

8 Table 2-22: RF Switch Requirements

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

9

1. *b. Hardware Design*
2. RF Com is the input port of the switch, also can be the output of the switch. RF in is the input of the switch.
3. RF out is the output of the switch. Control 1 and control 2 are the control pin to switch the RFin to RF Com or
4. from RF Com to RF out. Figure 2-25 shows the details.

Control1

1

![]({{site.baseurl}}/assets/images/2e490860ca14.png)![]({{site.baseurl}}/assets/images/f168a91baca2.png)

Control2

RFout

RF com

RFin

2 Figure 2-25: RF Switch Reference Design Diagram

3

###### 2.3.2.2.5 Antenna Reference Design

1. The antenna is used to radiate the TX power on to the air and receive the RX power from the air. For indoor Picocell
2. scenario, the isotropic antenna is the first choice.
3. *a. Hardware Requirements*
4. The following table shows the antenna requirement for the O-RU8. 6

7 Table 2-23: Antenna Requirements

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

8

1. *b. Hardware Design*
2. One possible choice of the isotropic antenna is the whip antenna. Following figure shows a design of one kind
3. ![]({{site.baseurl}}/assets/images/da68a4a4045d.jpg)of whip antenna. 12
4. **Figure 2-26: Whip Antenna**

### 2.3.3 Synchronization and Timing

1. The purpose of the Clocking device is to accept the network reference clock, typically 1 PPS, and generate a jitter free
2. reference clock(s) for other devices in the system including the RF transceiver and digital block. The clock is typically
3. part of an IEEE 1588 implementation either controlled by an external stack or implemented in the clock device itself
4. which could be part of the baseband implementation.
5. *a. Hardware Requirements*
6. Hardware requirements are:
7. ? Interface Requirements: The interface requirements of the transmit Clocking are listed in
8. Table 2-24.
9. Table 2-24: Interface requirements of the clocking

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Item Name** | **Description** |
| Reference Clock Input | The clock device should receive a network reference clock from the FPGA/ASIC. This typically could be a 1pps, 10 MHz or other standard reference as determined by the specific implementation. More than one input is allowed that may be selected between when the reliability of one reference is compromised. Standard differential clocking should be used to preserve signal integrity. |
| Control | Control of the transceiver is by way of 3 or 4 wire SPI or IIC functioning as a slave. Support for 1.8V control is required and tolerance of 3.3V is preferred. Typically, the clock devices will be part of an IEEE1588v2 protocol loop controlled by way of this control interface or other GPIO lines as required by the hardware implementation. |
| Clock Outputs | One or more clock outputs are required to drive the digital device and transceiver clock inputs. Each output should be independently programmable in frequency to suit the application. The outputs should nominally be differential to preserve clocking edge and to maximize tolerance of high common mode signals. |
| RF Inputs | RF inputs should support 50 ohm or 100 ohms, single ended or differential signalling to match the transceiver output. |

</div>

6

1. ? Power Dissipation: Total dissipation should be about less than 2W.
2. ? RF Specifications: Clocking RF requirements are given in the following table.
3. Table 2-25: Clocking RF requirements

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Absolution Phase Noise, Dual Loop Mode - LVDS OUTPUT** | **Typical** | **Additional Information** |
| fOUT = 122.88 MHz |  | Example is using an external 122.88 MHz VCXO (Crystek CVHD-950); reference =  122.88 MHz; channel divider = 10 or 1; PLL2 loop bandwidth (LBW) = 450 kHz. |
| 10 Hz Offset | -86 dBc/Hz |  |
| 100 Hz Offset | -106 dBc/Hz |  |
| 1 kHz Offset | -126 dBc/Hz |  |
| 10 kHz Offset | -135 dBc/Hz |  |
| 100 kHz Offset | -139 dBc/Hz |  |
| 800 kHz Offset | -147 dBc/Hz |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
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
| fOUT = 122.88 MHz | 79 fS | Integrated BW = 200 kHz to 5 MHz |
|  | 101 fS | Integrated BW = 200 kHz to 10 MHz |
|  | 140 fS | Integrated BW = 12 kHz to 20 MHz |
|  | 187 fS | Integrated BW = 10 kHz to 40 MHz |
|  | 189 fS | Integrated BW = 1 kHz to 40 MHz |
|  | 176 fS | Integrated BW = 1 MHz to 40 MHz |

</div>

1

2

1. *b. Hardware Design*
2. For the clocking function, it is usually performed by a synchronization IC which may include one or more
3. PLLs. And it also can supply numbers of output port to support different frequency clocking.

REFA

REF\_SEL

REFB

SYSREF

OUT0

OUT1

![]({{site.baseurl}}/assets/images/57f95089cdec.png)![]({{site.baseurl}}/assets/images/e6ad6126f7cd.png)![]({{site.baseurl}}/assets/images/bd56c4b4bf01.png)![]({{site.baseurl}}/assets/images/220111760f7e.png)![]({{site.baseurl}}/assets/images/2231a73092f5.png)![]({{site.baseurl}}/assets/images/6e47eb020100.png)

**VCX O**

LF2\_EXT\_CAP LDO\_VCO

LF1

VCXO VT

VCXO

VCXO

PLL 1

D Q

Fine delay

10-bit Divider

8-bit Divider w/ Coarse Delay

SYNC

D Q

Fine delay

Switch-

over Lock

control Det

Loop filter

PLL 2

8-bit Divider w/ Coarse

Delay

SYNC

10-bit Divider

P F D

Charge Pump

5-bit Divider

PFD Charge Loop Divider

Pump filter VCO /3, /4, /5

x2

10-bit Divider

8-bit Divider

SYNC

D Q

8-bit Divider w/ Coarse

Delay

SYNC

Fine delay

D Q

8-bit Divider w/ Coarse

Delay

SYNC

Fine delay

D Q D Q

Lock Detect

Control Interface (SPI & I2C)

SYS\_REF

Generation Trigger

D Q

SPI\_SYS\_REF

Request

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

REQUEST (CMO S)

4

5

Figure 2-27: PLL Reference Design Diagram

1. REFA and REFB are differential reference clock inputs from the source to be cleaned up and used as the
2. system reference. REF\_SEL is the control pin used to select between REFA and REFB signals. LF1 is PLL1
3. external loop filter. VCXO\_VT is the VCXO control voltage. This pin is connected to the voltage control pin
4. of the external VCXO. VCXO\_IN are differential signals from the external VCXO. These typically can be
5. configured for single ended operation as well. LF2\_CAP is the external loop filter capacitor for loop 2. This
6. cap is connected between this pin and LDO\_VCO pin. LDO\_VCO is the on-chip LDO regular decoupling for
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

22

### 2.3.4 External Interface Ports

* 1. *a. Hardware Requirements*
  2. The following table shows the external ports or slots provided by O-RU8.
  3. Table 2-26: External Port List

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Port Name** | **Feature Description** |
| Fronthaul interface | One 10Gbps SFP+ transceiver interface |
| Or one RJ45 Ethernet interface |
| Debug interface | RJ45 for debug usage |
| Power interface | Two-pin male plug for power cable |

</div>

5

1. *b. Hardware Design*
2. ? SFP+ case and connector: The SFP+ case and connector are standardized component on the market;
3. following figure describe the form factor of one SFP case which is integrated with connector.

![2006728111141319.jpg ]({{site.baseurl}}/assets/images/313481aec91e.jpg)

9

1. Figure 2-28: SFP+ case and connector

11

12

* 1. ? RJ45 Ethernet interface: The RJ45 Ethernet interface is standardized component on the market; following
  2. figure describe the form factor of one RJ45 interface.

![timg (1).jpg ]({{site.baseurl}}/assets/images/467975ab40a7.jpg)

3

4

### 2.3.5 Mechanical

Figure 2-29: RJ45 interface

* 1. The shell of O-RU8 is showing in the following figure. The O-RU8 should be quiet, so it depends on the natural heat
  2. dissipation method. Usually the bottom of the shell is built by metal. All hot component should make its surfaces
  3. contact to metal shell through thermal pad.

9

![????_20200215202458.png ]({{site.baseurl}}/assets/images/0f1047140fbf.png)

10 Figure 2-30: O-RU8 Shell Mechanical Diagram

11

### 2.3.6 Power Unit

1. For Picocell, for the power solution of the O-RU8 can be over Ethernet cable (cat5E, cat6A) by POE (POE+, POE++) or
2. directly power cable with fibre. And for the board power solution, LDO and DCDC can be used.
3. *a. Hardware Requirements*
4. For PA unit, it should have larger enough gain to reduce extra driver amplifier for cost and PCB space. The
5. output power should be at least 27dBm count on the loss of switch and antenna filter. The ACLR should larger
6. than 47dBc according to the related 3GPP test mode. To reduce the power consumption, DPD is needed. And
7. the P1 dB requirement is closely related to the DPD algorithm.
8. Table 2-27: Power unit requirement for 2T2R and 4T4R O-RU8

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| Module | Power consumption | | |  |
| 2T2R | 4T4R | Unit |
| FPGA | 8 | 9 | W |  |
| Transceiver | 5.74 | 11.48 | W |  |
| PLL | 1.78 | 1.78 | W |  |
| PA | 5 | 10 | W | 0.75 TDD ratio |
| LAN | 0.15 | 0.3 | W | 0.25 TDD ratio |
| Ethernet PHY | 1 | 1 | W |  |
| DDR | 0.9 | 0.9 | W |  |
| Flash | 0.1 | 0.1 | W |  |
| others | 1.65 | 1.65 | W |  |
| component total power consumption | 24.3 | 36.2 | W |  |
| O-RU8 power consumption | 28.6 | 42.6 | W | on board power efficiency 0.85 |

</div>

10

11 Table 2-28: Power unit function

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| Function | Priority |  |
| Enable/Disable | Mandatory |  |
| Power good | Optional |  |
| Input voltage | Mandatory | 48V |
| Output voltage | Mandatory | 0.85V 1.2V 1.3V 1.5V 1.8V  2.5V 3.3V 5V 12V etc. |

</div>

1. *b. Hardware Design*
2. The block diagram of POE reference design is shown in Figure 2-31. Data Pair and Spare Pair are the POE
3. connections on the data transformers used to source the power over Ethernet. VAUX is a local backup power
4. source if desired. Isolated Output is the isolated raw output from the POE sub-circuit. 5

![]({{site.baseurl}}/assets/images/8094ad8db702.png)

VAUX (9V to 60Vi

![]({{site.baseurl}}/assets/images/ebb11dd66a35.png)![]({{site.baseurl}}/assets/images/1eb238c1d153.png)![]({{site.baseurl}}/assets/images/feb7736e36ce.png)![]({{site.baseurl}}/assets/images/86ff170e0cd0.png)![]({{site.baseurl}}/assets/images/4846e5ebe48f.png)![]({{site.baseurl}}/assets/images/ae09232c8bfc.png)![]({{site.baseurl}}/assets/images/ba92a107040a.png)![]({{site.baseurl}}/assets/images/8094ad8db702.png)

CPORT

DATA

PAIR

V

issu

CPD

0.1lay

3.3k

ppi

VIN

47nF

U8

PAIR

~

~

+

-

Isolated

Power Supply

Isolated

Output

VPORT HSGATE

HSSRC

AUX

PWRGD

Run

Power over Ethernet

Controller

GND

+

-

~

ma

6

7 Figure 2-31: POE Reference Design Diagram

8

### 2.3.7 Thermal

* 1. O-RU8 will use passive cooling.
  2. 2.3.7.1 Environmental and Regulations
  3. The O-RU8 hardware system is RoHS Compliant. The power supply unit is EMC FCC/CISPR Class B compliant. Table
  4. 2-29 lists the environmental related features and parameters.
  5. Table 2-29: Environmental Features

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Item Name** | **Description** |
| Operating Temperature | -5?C to +55?C |
| Non-operating Temperature | -40?C to 70?C |
| Operating Relative Humidity | 8% to 90% (non-condensing) |
| Non-operating Relative Humidity | 5% to 95% (non-condensing) |

</div>

1

## 2.4 FHM8 Hardware Reference Design

* + 1. The FHM8 is used to bridge the connation between O-DU8 and O-RU8. It needs to power the O-RU8 and reduces the
    2. front haul bandwidth.

## 2.5 FHM8 High-Level Functional Block Diagram

* + 1. Figure 2-32 shows the FHM8 block diagram for this reference design. Following sections below describe the
    2. functionality, interface and performance for each respective block of the Digital Processing Unit. As device integration
    3. is an ongoing activity, chip boundaries may be fluid and some functionality may move from one block to another or
    4. entire functionalities may be absorbed into other blocks. The sections below describe the functional blocks independent
    5. of which physical device they may reside in.

11

RS232

FPGA+ARM

CLK

Serdes

10G

SFP+.1

...

Serdes

Flash

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

12

...

Power interface8

48V

Power

interface1

13 Figure 2-32: FHM8 General Block Diagram

14

## 2.6 FHM8 Hardware Components

### 2.6.1 Digital Processing Unit

1. The FHM8 need a lot of high speed interface. And for the shared cell application, the uplink need combining function.
2. *i. FPGA Solution Design 1*
3. In this section, the requirement and reference design based on FPGA are described.
4. *a. FPGA Requirement*
5. The requirements are as follows:
6. ? Interface requirement
7. Table 2-30: Interface requirements of the FPGA

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Item Name** | **Description** |
| SerDes lane | At least 8 lanes of bi-direction10Gb SerDes |
| At least 2 lanes of bi-direction25Gb SerDes |

</div>

10

* + 1. *b. FPGA Design*
    2. This unit handles multiple high speed interfaces and the digital signal processing. The main chipset is based on
    3. FPGA with ARM multi-core processor while FPGA is responsible for high speed data processing and ARM cores
    4. are mainly for configuration and management.
    5. The FPGA function is shown below:
    6. For the uplink processing, the CPRI interface module is used to receiver CPRI link form O-RU8 and generate the
    7. reference frequency and time slot for time and frequency synchronization. Then the CPRI de-frame module get the
    8. uplink IQ bit stream of the time domain the carrier from O-RU8. If the uplink IQ stream is compressed, then it
    9. needs the de-compression module to translate them into original bit width.
    10. After that all the O-RU8 uplink IQ streams are combined together and the precondition for the combine function is
    11. that each stream from different O-RU8 are aligned in time domain.
    12. If the FHM8 can support two separate cells then the two cell uplink signal should be aggregated or interleaved
    13. together. Then capture the IQ streams in the CPRI frame and transmitted by CPRI interface to the O-DU8.
    14. For the downlink processing, the procedure is much the same with uplink but with an inverse sequence. The
    15. difference is that the downlink signal is duplicated with 8 copies and sends to different O-RU8.
    16. There is also a CPRI OAM module; actually this module will work with the processor (Arm) to accommodate the
    17. OAM of different O-RU8 and the FHM8 itself.

CPRI

interface

1

CPRI

frame

CPRI

frame

CPRI

frame

I/Q mux

Other cell aggregati on

Buffer

Buffer

CPRI

interface

Buffer

CPRI de-

frame

Ethernet OAM

CPRI

de-frame

De- compress

Buffer

CPRI

de-frame

CPRI

interface

Buffer

CPRI

interface

De- compress

Buffer

I/Q combiniti on

Other cell aggregati on

CPRI

interface

CPRI

interface

Compress ion

CPRI

frame

CPRI

interface

De- compress

Other cell

CPRI

de-frame

CPRI

interface

* + - 1. Figure 2-33: FHM8 Digital Processing Block Diagram
      2. The resource needed for the FPGA is listed below:
      3. **Table 2-31: FPGA Resource usage for FHM8**

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **Device** | **FF** | **LUT** | **URAM** | **BRAM** | **DSP** |
| IQ MUX | 1000 | 1000 | 0 | 0 | 0 |
| Cascade | 2000 | 2000 | 0 | 0 | 0 |
| IQ combine | 2000 | 2000 | 0 | 32 | 0 |
| CPRI deframe\*9 | 45000 | 45000 | 0 | 0 | 0 |
| CPRI frame\*9 | 45000 | 45000 | 0 | 0 | 0 |
| Fronthaul(CPRI)x1  0 | 47500 | 31000 | 0 | 10 | 0 |
| compress\*1 | 3000 | 3000 | 0 | 24 | 32 |
| de\_compress\*8 | 24000 | 24000 | 0 | 192 | 208 |
| ethernet\_cm | 3000 | 3000 | 0 | 15 | 0 |
| Other | 20000 | 15000 | 0 | 200 | 0 |

</div>

### 2.6.2 Synchronization and Timing

###### In this section we describe the internal and external timing and synchronization that are managed by this

1. entity.

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| 4 | ***a.*** | ***Hardware Requirements*** |
| 5 |  | * CLK requirement |
| 6 |  | The FHM8 may support some kinds of synchronization method: |
| 7 |  | 1) Support GPS/GLONASS/GALILEO/BEIDOU |
| 8 |  | So the PLL must support 1pps or CPRI CDR as the reference frequency. |
| 9 |  | **Table 2-32: Requirements of the PLL device** |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Device** | **Description** |
| 1PPS | Supported |
| Synchronizer number | at least 1 |
| Output channel | At least 5 |
| VCO  integrated | Supported |

</div>

10

1. *b. Hardware Design*
2. This unit is to recover clock from external source and generate the synchronized clock to other devices. Upon
3. scenarios, there will be external sync source via CPRI.

Reference clock from FPGA 122.88MHz

125MHz

CLK

122.88MHz

122.88MHz

122.88MHz

250MHz

To FPGA 25G Serdes To FPGA 10 Serdes0 To FPGA 10G Serdes1

For FPGA sys For DDR function

14

1. Figure 2-34: CLK reference design for FHM8
2. For general FPGA device, each bank may have four SerDes channels. It is better to have separated CLK signal to each
3. bank. Three CLK signals of 122.88MHz are needed for the FHM8. One CLK signal of 125MHz is used for FPGA
4. system, while one CLK signal of 250MHz is used for DDR device function. The input of the CLK module comes from
5. FPGA CDR function which can get reference CLK from the CPRI line rate. Usually, one PLL device integrated with
6. VCO is needed.

### 2.6.3 External Interface Ports

1. List and provide description of all external interfaces.
2. *a. Hardware Requirements*
3. The following table shows the external ports or slots provided by FHM8. 5
4. Table 2-33: External Port List

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Port Name** | **Feature Description** |
| Fronthaul interface | Eight 10Gbps SFP+ transceiver interfaces |
| Two 25Gbps SFP+ transceiver interfaces |
| Debug interface | RJ45 for debug usage |
| Power interface | PLUG AC FEMALE for power cable |

</div>

7

1. *b. Hardware Design*
2. ? SFP+ case and connector
3. The SFP+ case and connector are standardized component on the market; following figure describes the form
4. factor of one SFP case which is integrated with connector. 12

13

![2006728111141319.jpg ]({{site.baseurl}}/assets/images/313481aec91e.jpg)

1. Figure 2-35: SFP+ case and connector

15

* 1. ? RJ45 Ethernet interface
  2. The RJ45 Ethernet interface is standardized component on the market; following figure describes the form
  3. factor of one RJ45 interface. 4

![timg (1).jpg ]({{site.baseurl}}/assets/images/0fb3f11872aa.jpg)

5

6

1. ? Power interface

Figure 2-36: RJ45 interface

1. The 220V AC power connector is standardized component on the market; following figure describes the form
2. ![C:\Users