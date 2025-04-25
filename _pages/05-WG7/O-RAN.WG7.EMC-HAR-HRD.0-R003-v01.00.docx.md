---
title: O-RAN.WG7.EMC-HAR-HRD.0-R003-v01.00.docx.md
author: O-RAN Alliance, WG7
layout: post
---

- View in [GitHub Mode]({{site.github_page_url}}/O-RAN.WG7.EMC-HAR-HRD.0-R003-v01.00.docx.md).
- Go back to [Table of Contents]({{site.baseurl}}/).
- Download the [Original Document]({{site.download_url}}/O-RAN.WG7.EMC-HAR-HRD.0-R003-v01.00.docx).

---

* toc
{:toc}

---

![webwxgetmsgimg (7).jpeg]({{site.baseurl}}/assets/images/9c69df009b87.jpg)O-RAN.WG7.EMC-HAR-HRD.0-R003-v01.00

*Technical Specification*

**O-RAN Work Group 7 White-box Hardware Hardware Architecture, Requirements and Reference Design**

**Specification for Enterprise Microcell**

Copyright (C) 2023 by the O-RAN ALLIANCE e.V.

The copying or incorporation into any other work of part or all of the material available in this specification in any form without the prior written permission of O-RAN ALLIANCE e.V. is prohibited, save that you may print or download extracts of the material of this specification for your personal use, or copy the material of this specification for the purpose of sending to individual third parties for their information provided that you acknowledge O-RAN ALLIANCE as the source of the material and that you inform the third party that these conditions apply to them and that they must comply with them.

O-RAN ALLIANCE e.V., Buschkauler Weg 27, 53347 Alfter, Germany Register of Associations, Bonn VR 11238, VAT ID DE321720189

Contents

List of figures 4

List of tables 4

Foreword 6

Modal verbs terminology 6

1. Scope 7
2. References 7
   1. Normative references 7
   2. Informative references 7
3. Definition of terms, symbols and abbreviations 8
   1. Terms 8
   2. Symbols 8
   3. Abbreviations 8
4. Deployment Scenarios and White Box Base Station Architecture 11
   1. Deployment Scenarios 11
   2. White Box Base Station Architecture 12
5. Hardware Architecture 12
   1. O-CU Hardware Architecture 12
      1. O-CU Architecture Diagram 13
      2. O-CU Functional Module Description 13
      3. O-CU Interfaces 13
   2. O-DU7-2x Hardware Architecture 13
      1. O-DU7-2x Architecture Diagram 13
      2. O-DU7-2x Functional Module Description 14
      3. O-DU7-2x Interfaces 15
   3. O-RU7-2x Hardware Architecture 15
      1. O-RU7-2x Architecture Diagram 16
      2. O-RU7-2x Functional Module Description 16
6. Hardware Requirements 17
   1. O-CU Requirements 17
   2. O-DUx Common Requirements 17
      1. Performance 17
      2. Interfaces 18
      3. Environmental and EMC 18
      4. Mechanical, Thermal and Power 18
   3. O-DUx Split Option Specific Requirements 19
   4. O-RUx Requirements 19
      1. Performance 20
      2. Interfaces 21
      3. Environmental and EMC 21
      4. Mechanical, Thermal and Power 21
   5. O-RUx Split Option Specific Requirements 22
7. Hardware Reference Design 22
   1. O-CU Hardware Reference Design 22
   2. O-DU7-2x Hardware Reference Design 1 23
      1. O-DU7-2x High-Level Functional Block Diagram 23
      2. O-DU7-2x Hardware Components 24
      3. Synchronization and Timing 26
      4. External Interface Ports 26
      5. O-DU7-2x Firmware 27
      6. Mechanical 27
      7. Power Unit 28
      8. Thermal 29
      9. Environmental and Regulations 29
   3. O-DU7-2x Hardware Reference Design 2 29
      1. O-DU7-2x High-Level Functional Block Diagram 29
      2. O-DU7-2x Hardware Components 30
      3. Synchronization and Timing 31
      4. External Interface Ports 31
      5. O-DU7-2x Firmware 31
      6. Mechanical 31
      7. Power Unit 33
      8. Thermal 33
      9. Environmental and Regulations 33
   4. O-RU7-2x Hardware Reference Design 34
      1. O-RU7-2x High-Level Functional Block Diagram 34
      2. O-RU7-2x Hardware Components 34
      3. Synchronization and Timing 41
      4. External Interface Ports 44
      5. Mechanical 44
      6. Power Unit 45
      7. Thermal 46
      8. Environmental and Regulations 46

History 47

# List of figures

Figure 4.2-1: Split Architecture 12

Figure 5.1-1: O-CU White Box Hardware Block Diagram 13

Figure 5.2-1: O-DU7-2x with Split Physical Layer Function 14

Figure 5.2-2: O-DU7-2x Functional Block and Interface Diagram 15

Figure 5.3-1 O-RU7-2x Architecture Diagram 16

Figure 5.3-2: O-RU7-2x Functional Module Diagram 17

Figure 7.2-1 O-DU7-2x Functional Block Diagram 23

Figure 7.2-2 Single-chip FPGA-based Hardware Acceleration in O-DU7-2x 26

Figure 7.2-3 HW Accelerator Timing and Synchronization 26

Figure 7.2-4 Mother Board Layout Diagram 28

Figure 7.3-1 O-DU7-2x Hardware Block Diagram 30

Figure 7.3-2: Mother Board Layout Diagram 32

Figure 7.3-3: Chassis Mechanical Diagram 33

Figure 7.4-1 O-RU7-2x High-Level Functional Block Diagram 34

Figure 7.4-2 Digital Processing Unit Block Diagram 35

Figure 7.4-3 Power Amplifier Reference Design 39

Figure 7.4-4 LNA Reference Design 40

Figure 7.4-5 Circulator Reference Design 41

Figure 7.4-6: PLL Reference Design Diagram 43

Figure 7.4-7 Mechanical Enclosure Diagram 44

Figure 7.4-8 Power Unit Design 46

# List of tables

Table 6.2-1: O-DU7-2x Performance Requirements 17

Table 6.2-2: O-DU7-2x Interface Requirements 18

Table 6.2-3: O-DU7-2x EMC Requirements 18

Table 6.2-4: O-DU7-2x Mechanical Requirements 19

Table 6.2-5: O-DU7-2x Thermal Requirements 19

Table 6.2-6: O-DU7-2x Power Requirements 19

Table 6.4-1: O-RU7-2x Performance Requirements 20

Table 6.4-2: O-RU7-2x Interface Requirements 21

Table 6.4-3: O-RU7-2x Environmental and EMC Requirements 21

Table 6.4-4: O-RU7-2x Mechanical, Thermal and Power Requirements 22

Table 7.2-1 Processor Feature List 24

Table 7.2-2 Memory Channel Feature List 24

Table 7.2-3 Accelerator Hardware Features 25

Table 7.2-4 Hardware Accelerator Firmware Features 25

Table 7.2-5 External Port List 27

Table 7.2-6 O-DU7-2x Power Requirements 29

Table 7.2-7 Environmental Features 29

Table 7.3-1: The Processor Feature List 30

Table 7.3-2: The Memory Channel Feature List 30

Table 7.3-3: External Port List 31

Table 7.3-4: Power supply unit feature list 33

Table 7.3-5: Environmental Features 33

Table 7.4-1 FPGA Resource Requirements 35

Table 7.4-2 RF Requirements 35

Table 7.4-3 Power Amplifier Interface Requirements 38

Table 7.4-4 Power Amplifier RF Requirements 38

Table 7.4-5 LNA Interfaces Requirements 39

Table 7.4-6 LNA RF Requirements 40

Table 7.4-7 Circulator RF Requirements 41

Table 7.4-8: Interface requirements of the clocking 41

Table 7.4-9: Clocking RF requirements 42

Table 7.4-10 External Port List 44

Table 7.4-11 Digital Processing Unit Power Requirements 45

Table 7.4-12 RF Processing Unit Power Requirements 45

Table 7.4-13 Environmental Features 46

# Foreword

This Technical Specification (TS) has been produced by O-RAN Alliance.

# Modal verbs terminology

In the present document "**shall**", "**shall not**", "**should**", "**should not**", "**may**", "**need not**", "**will**", "**will not**", "**can**" and "**cannot**" are to be interpreted as described in clause 3.2 of the O-RAN Drafting Rules (Verbal forms for the expression of provisions).

"**must**" and "**must not**" are **NOT** allowed in O-RAN deliverables except when used in direct citation.

# Scope

The contents of the present document are subject to continuing work within O-RAN and may change following formal O-RAN approval. Should the O-RAN Alliance modify the contents of the present document, it will be re- released by O-RAN with an identifying change of version date and an increase in version number as follows:

version xx.yy.zz where:

xx:the first digit-group is incremented for all changes of substance, i.e. technical enhancements, corrections, updates, etc. (the initial approved document will have xx=01). Always 2 digits with leading zero if needed.

yy: the second digit-group is incremented when editorial only changes have been incorporated in the document. Always 2 digits with leading zero if needed.

zz: the third digit-group included only in working versions of the document indicating incremental changes during the editing process. External versions never include the third digit-group. Always 2 digits with leading zero if needed.

The present document specifies system requirements, high-level architecture and hardware reference design for the Enterprise Microcell deployment scenario as specified in the Deployment Scenarios and Base Station Classes document[1].

# References

## Normative references

References are either specific (identified by date of publication and/or edition number or version number) or non-specific. For specific references, only the cited version applies. For non-specific references, the latest version of the referenced document (including any amendments) applies.

NOTE: While any hyperlinks included in this clause were valid at the time of publication, O-RAN cannot guarantee their long term validity.

The following referenced documents are necessary for the application of the present document.

1. O-RAN.WG7.DSC.0-v04.00, "O-RAN Deployment Scenarios and Base Station Classes 4.0".
2. 3GPP TR 21.905, "Vocabulary for 3GPP Specifications".
3. 3GPP TS 38.104, "NR; Base Station (BS) radio transmission and reception".
4. O-RAN.WG4.CUS.0-v10.00, "O-RAN Control, User and Synchronization Plane Specification 10.0".
5. O-RAN.WG4.MP.0-v10.00, "O-RAN Management Plane Specification 10.0".
6. 3GPP TS 38.113, "NR: Base Station (BS) Electromagnetic Compatibility (EMC)".
7. O-RAN.WG1.O-RAN-Architecture-Description-v07.00, "O-RAN Architecture Description 7.0".

## Informative references

References are either specific (identified by date of publication and/or edition number or version number) or non-specific. For specific references, only the cited version applies. For non-specific references, the latest version of the referenced document (including any amendments) applies.

NOTE: While any hyperlinks included in this clause were valid at the time of publication, O-RAN cannot guarantee their long term validity.

The following referenced documents are not necessary for the application of the present document but they assist

the user with regard to a particular subject area.

# Definition of terms, symbols and abbreviations

## Terms

For the purposes of the present document, the terms and definitions given in [2] and the following apply. A term defined in the present document takes precedence over the definition of the same term, if any, in [2].

**Carrier Frequency**: Center frequency of the cell.

**F1 interface**: The open interface between O-CU and O-DU defined by 3GPP TS 38.473.

**Frequency Band**: A designated frequency range for the operation of the base station and the UE radios. 5G NR frequency bands are divided into two different frequency ranges: Frequency Range 1 (FR1) that mainly includes sub-6GHz frequency bands, some of which are bands traditionally used by previous standards but has been extended to cover potential new spectrum offerings from 410MHz to 7125MHz; Frequency Range 2 (FR2) that includes frequency bands from 24.25 GHz to 52.6 GHz. Bands in this millimeter wave range have shorter range but higher available bandwidth than bands in the FR1.

**Frequency Range**: It refers to bandwidth defined by the frequency range within which the Base Station can be operated, defined by the band-pass filter of the BS; e.g., 3.4 - 3.8 GHz (400 MHz)

**Occupied Bandwidth (OBW)**: It refers to the bandwidth occupied by the base station when operated, defined by the sum of the active bandwidths of the band allocation(s) operated. As defined by 3GPP TS 34.121 section 5.8, occupied bandwidth is the bandwidth containing 99% of the total integrated power of the transmitted spectrum, centered on the assigned channel frequency. The bandwidth between the 0.5% power frequency points is the occupied bandwidth.

**Instantaneous Bandwidth (IBW)**: It refers to the bandwidth in which all frequency components can be simultaneously analyzed. It is defined by the frequency boundaries of the operating band(s).

**Fronthaul Gateway (FHGW)**: A fronthaul gateway is a physical entity that is located between a distributed unit and one or more radio units where it distributes, aggregates, and/or converts fronthaul protocols between the distributed unit and multiple radio units.

**gNB**: A RAN node providing NR user plane and control plane protocol terminations towards the UE, and connected via the NG interface to the 5GC

**Integrated architecture**: In the integrated architecture, the O-RU and O-DU are implemented on one platform. Each O-RU and RF front end is associated with one O-DU. They are then aggregated to O-CU and connected by F1 interface.

**Split architecture**: The O-RU and O-DU are physically separated from one another in this architecture. A switch may aggregate multiple O-RUs to one O-DU. O-DU, switch and O-RUs are connected by the fronthaul interface as defined in WG4.

## Symbols

## Abbreviations

For the purposes of the present document, the abbreviations given in [2] and the following apply. An abbreviation defined in the present document takes precedence over the definition of the same abbreviation, if any, as in [2].

7-2x Fronthaul interface split option as defined by O-RAN WG4, also referred to as 7-2 3GPP Third Generation Partnership Project

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| 5G | Fifth-Generation [Mobile Communications] |
| 5GC | 5G Core |
| ACS | Adjacent Channel Selectivity |
| ADC | Analog to Digital Converter |
| AFE | Analog Front End |
| AFU | Antenna Filter Unit |
| ASIC | Application Specific Integrated Circuit |
| BH | Backhaul |
| BMC | Baseboard Management Controller |
| BPSK | Binary Phase Shift Keying |
| BS | Base Station |
| CFR | Crest Factor Reduction |
| CISPR | International Special Committee on Radio Interference |
| CLK | Clock |
| CPU | Central Processing Unit |
| CRC | Cyclic Redundancy Check |
| CU | Central Unit |
| DAC | Digital to Analog Converter |
| DDC | Digital Down Conversion |
| DDR | Double Data Rate |
| DFE | Digital Front End |
| DIMM | Dual-Inline-Memory-Modules |
| DL | Downlink |
| DPD | Digital Pre-Distortion |
| DSP | Digital Signal Processor |
| DU | Distributed Unit |
| DUC | Digital Up Conversion |
| eCPRI | Enhanced Common Public Radio Interface |
| ECC | Error Correcting Code |
| EMC | ElectroMagnetic Compatibility |
| EVM | Error Vector Magnitude |
| FCC | Federal Communications Commission |
| FEC | Forward Error Correction |
| FFT | Fast Fourier Transform |
| FH | Fronthaul |
| FHGW | Fronthaul Gateway |
| FPGA | Field Programmable Gate Array |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| GbE | Gigabit Ethernet |
| GNSS | Global Navigation Satellite System |
| GPP | General Purpose Processor |
| GPS | Global Positioning System |
| IEEE | Institute of Electrical and Electronics Engineers |
| IFFT | Inverse Fast Fourier Transform |
| IMD | InterModulation Distortion |
| IP | Internet Protocol |
| I/O | Input/Output |
| JTAG | Joint Test Action Group |
| L1 | Layer 1, also referred to as PHY or Physical Layer |
| L2 | Layer 2, also referred to as Data Link layer in OSI model |
| L3 | Layer 3, also referred to as Network layer in OSI model |
| LDPC | Low-Density Parity Codes |
| LDO | Low dropout |
| LLS | Lower Layer Split |
| LRDIMM | Load-Reduced Dual In-line Memory Module |
| LNA | Low Noise Amplifier |
| LTE | Long Term Evolution |
| LVDS | Low-Voltage Differential Signaling |
| MAC | Media Access Control |
| MIMO | Multiple Input Multiple Output |
| MCP | Multi-Chip Package |
| NG | Next Generation |
| NR | New Radio |
| OAM | Operations, Administrations and Maintenance |
| O-CU | O-RAN Centralized Unit as defined by O-RAN |
| O-DU | O-RAN Distributed Unit as defined by O-RAN |
| O-DUx | A specific O-RAN Distributed Unit having fronthaul split option x where x may be 6, 7-2x (as defined by WG4) or 8 |
| O-RU | O-RAN Radio Unit as defined by O-RAN |
| O-RUx | A specific O-RAN Radio Unit having fronthaul split option x, where x is 6, 7-2x (as defined by WG4) or 8, and which is used in a configuration where the fronthaul interface is the same at |
|  | the O-DUx |
| OCXO | Oven Controlled Crystal Oscillator |
| ORx | Observation Receiver |
| PA | Power Amplifier |
| PCIe | Peripheral Component Interface Express |

</div>

PDCP Packet Data Convergence Protocol

PHY Physical Layer, also referred as L1

PLL Phase Locked Loop

QAM Quadrature Amplitude Modulation

QPSK Quadrature Phase Shift Keying

QSFP Quad Small Form-factor Pluggable

RAN Radio Access Network

RF Radio Frequency

RLC Radio Link Controller

RRC Radio Resource Controller

RU Radio Unit as defined by 3GPP

RX Receiver

SATA Serial ATA

SDU Service Data Unit

SFP Small Form-factor Pluggable

SFP+ Small Form-factor Pluggable Transceiver

SoC System on Chip

SPI Serial Peripheral Interface

SSD Solid State Drive

TCXO Temperature Compensated Crystal Oscillator TDP Thermal Design Power

TR Technical Report

TS Technical Specification

TX Transmitter

UL Uplink

USB Universal Serial Bus

WG Working Group

# Deployment Scenarios and White Box Base Station Architecture

This chapter consists of two parts: the deployment scenario and the white box architecture. The deployment scenarios outline more specific functional requirements of the base station. All the reference designs shall meet these requirements in order to comply with O-RAN white box standard. In the white box hardware architecture section, it describes the overall gNB hardware architecture and function partition that meet the design requirements. The details on each of these topics are described in the following sections.

## Deployment Scenarios

The specification here addresses a specific deployment scenario defined by the white box Deployment Scenarios and Base Station Classes document [1]. Its requirements are also defined in [1]. Some of the key requirements described in that document are highlighted below:

* Cell type: Enterprise Microcell
* Mounting Options: Rooftop, side of building/wall, pole
* Possible Carrier Frequency Bands: n41, n78
* [Instantaneous] Bandwidth: Up to 100 MHz
* Antennas Configuration: Up to 8T8R
* Conducted Power: up to 20W per port
* Fronthaul Type: O-RAN FH (WG4) split option 7-2x
* Architecture: Split architecture

## White Box Base Station Architecture

In general, the base station hardware architecture can be classified by using different criteria. The physical partition method is adopted by O-RAN; hence, the base station architecture is divided into two categories namely split and integrated. In split architecture, the fronthaul interface determines the gNB functions location. Here we refer to the two partitions as O-DUx and O-RUx; where the "x" is split option number. In case the O-RAN WG4 defined fronthaul interface is used, these two partitions are called O-DU7-2x and O-RU7-2x. For a more complete description of the terminology used, refer to the Deployment Scenarios and Base Station Classes Document [1].

For this implementation of Enterprise Microcell, the split architecture is used. With split architectures, the O-CU and O-DUx are integrated into one Whitebox, as shown in Figure 4.2-1. Optionally, a second O-RU may be cascaded to the first O-RUx via the FH interface. The FH interface between the two cascaded O-RUs shall be the same as the FH interface between the O-DUx and the first O-RUx.

FH Interfacex Via Fiber Bypass

FH

![]({{site.baseurl}}/assets/images/8dc70e0ececc.png)![]({{site.baseurl}}/assets/images/7bd221330cae.png)![]({{site.baseurl}}/assets/images/59ffb31f4f06.png)![]({{site.baseurl}}/assets/images/48905915e208.png)![]({{site.baseurl}}/assets/images/f45dbc01ac51.png)![]({{site.baseurl}}/assets/images/c74bfa388f4e.png)![]({{site.baseurl}}/assets/images/ff9f045c88c0.png)![]({{site.baseurl}}/assets/images/ff9f045c88c0.png)

F1 Interface

O-CU & O-DUx are integrated into one Whitebox

O-DUx

O-CU

O-RUx

FH

Interfacex

O-RUx

O-RUx

Interfacex

Figure 4.2-1 Split Architecture

# Hardware Architecture

In the white box hardware architecture section, it describes the overall gNB hardware architecture and function partition that meet the design requirements. The details on each of these topics are described in the following sections.

## O-CU Hardware Architecture

In a 3GPP system architecture, the gNB Central Unit (CU) communicates to the Distribution Unit (DU) via an F1 interface. This interface has been adopted by O-RAN Alliance for O-CU and O-DUx connection. F1 is an IP based protocol interface, which offers more flexibility in the O-CU platform design.

### O-CU Architecture Diagram

The O-CU can be implemented with any General-Purpose Processor (GPP) based platform having an optional hardware accelerator block. The O-CU functions can be implemented either on separated hardware platforms or on the same hardware platforms integrated with O-DUx functions. In either case, the O-CU hosts L2/L3 functions, whereas O-DU hosts L2/L1 functions which require different CPU, Storage, Acceleration and Networking capabilities. Figure 5.1-1 shows the hardware blocks and interfaces within the O-CU white box.

![]({{site.baseurl}}/assets/images/e0cd1ce2e29b.png)![]({{site.baseurl}}/assets/images/64b073a6c115.png)![]({{site.baseurl}}/assets/images/7ca891e764b1.png)![]({{site.baseurl}}/assets/images/319fa29d3ba3.png)![]({{site.baseurl}}/assets/images/57095bf7a151.png)

Ethernet Interface

Digital Processing Unit

Hardware Accelerator (Optional)

Backhaul (Ethernet)

##### O-CU

Ethernet Interface

F1

Interface (Ethernet)

Figure 5.1-1 O-CU White Box Hardware Block Diagram

### O-CU Functional Module Description

The O-CU functional architecture comprises Digital Signal Processing, optional HW Acceleration, and Connectivity units as well as memory and storage units as shown in Figure 5.1-1.

### O-CU Interfaces

The O-CU interfaces through backhaul with the 5GC core network and via F1 interface with the O-DU7-2x. The backhaul and the F1 interfaces are typically implemented with GbE transport/connections.

## O-DU7-2x Hardware Architecture

For a split RAN architecture, the functional blocks of the RAN physical layer are divided into two parts - high PHY and low PHY. The O-RAN lower layer split is defined in O-RAN WG4 fronthaul interface specification [4]. It also provides the details of the interface protocol as well as function partitions.

### O-DU7-2x Architecture Diagram

Depending on the 3GPP standards and category of the radio unit, the split function blocks within O-DU7-2x and O- RU7-2x may vary accordingly. The O-RAN fronthaul C/U/S-plane specification [4] provides comprehensive information on this topic. The hardware functional partition architecture is shown in Figure 5.2-1.

![]({{site.baseurl}}/assets/images/5286fd83c42b.png)![]({{site.baseurl}}/assets/images/3736179bf00b.png)![]({{site.baseurl}}/assets/images/03d448bc7a43.png)![]({{site.baseurl}}/assets/images/1ec0e8c558e1.png)![]({{site.baseurl}}/assets/images/5c88f93a98a2.png)![]({{site.baseurl}}/assets/images/682de709ad1d.png)![]({{site.baseurl}}/assets/images/9bd0e390b0f0.png)

F1

Interface

O-RAN FH

Interface

1 PPS (IN or OUT)

O-DU7-2x

Timing and Synchronization (IEEE 1588)

Ethernet Interface

Digital Processing Unit

O-RU7-2

Ethernet Interface

Hardware Accelerator

Figure 5.2-1 O-DU7-2x with Split Physical Layer Function

### O-DU7-2x Functional Module Description

The choice of O-DU7-2x hardware components depends on the product design requirements and is outside the scope of this specification. Figure 5.2-2 shows the main components of O-DU7-2x. Their descriptions and requirements are as follows:

Digital Processing Unit

The processing unit can be any GPP or digital signal processor (DSP), with I/O chipset. It may also be in the form of System-On-Chip (SOC), or Multi-Chip Package (MCP).

Memory

DDR memory devices are used to store the runtime data and software for the processing unit.

Flash Memory

On board non-volatile storage device is used to store the firmware and non-volatile data, such as log data.

Board Management Controller

The controller is used to manage/control the power and monitors the operational status of the board.

Storage Device

The storage device such as hard drive is used to store OS, driver and applications software.

Ethernet Controller

The Ethernet ports transport the fronthaul or backhaul traffic according to the gNB hardware node requirements. The Ethernet device shall support IEEE1588 based timing synchronization.

Hardware Accelerator

The hardware accelerator is an optional device. For performance improvement, the hardware accelerator can be used to process computationally-intensive functions (e.g., Forward Error Correction (FEC)) and to offload the processor.

![]({{site.baseurl}}/assets/images/9bb9023d3899.png)![]({{site.baseurl}}/assets/images/c7613cc9f63b.png)![]({{site.baseurl}}/assets/images/4ac37f5200fb.png)![]({{site.baseurl}}/assets/images/c645b36bc48b.png)![]({{site.baseurl}}/assets/images/ea0a54097aa2.png)![]({{site.baseurl}}/assets/images/3fbeb56122b8.png)![]({{site.baseurl}}/assets/images/7ecf8ea347eb.png)![]({{site.baseurl}}/assets/images/7a2b23657086.png)![]({{site.baseurl}}/assets/images/ea0a54097aa2.png)![]({{site.baseurl}}/assets/images/30a21eca1afc.png)![]({{site.baseurl}}/assets/images/fd47728c02f6.png)![]({{site.baseurl}}/assets/images/e28c79c95b03.png)![]({{site.baseurl}}/assets/images/a3fe495d2907.png)

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

Figure 5.2-2 O-DU7-2x Functional Block and Interface Diagram.

* + 1. O-DU7-2x Interfaces

The O-DU7-2x supported interfaces described below are also shown in Figure 5.2-2.

Memory Channel Interface

Support DDR4 and later memory interface.

PCIe Interface

Support for PCIe Gen3 x16 and later interface versions; the bandwidth depends on the use cases, and it can be used to connect an accelerator device or network card.

Ethernet Interfaces

Supports any one or combination of GbE/10GbE/25GbE/40GbE links.

Serial ATA Interface

SATA3 shall be supported in case of software storage, such as hard drive.

SPI Interface

The SPI interface connects the processor with flash type of device for firmware.

Video Interface

Video interface is optional

USB Interface

Used to connect with local device for debug or on-board firmware update.

Miscellaneous Interface

Other interfaces that may be needed such as serial port, JTAG, etc.

## O-RU7-2x Hardware Architecture

This section provides the high-level architecture and functional module description of O-RU7-2x.

### O-RU7-2x Architecture Diagram

O-RU7-2x consists of five modules, namely fronthaul processing unit, digital processing unit, RF processing unit, timing unit, and power unit, as shown in Figure 5.3-1. The digital processing unit handles all digital signals, and the RF processing unit handling all analog signals. There is a data conversion block for each transceiver path after the digital processing block which converts between digital signals and analog signals. The FH processing unit complies with O-RAN WG4 open fronthaul interface. There is at least two interface port available, one for connecting with O-DU7-2x, and the other for O-RU cascading.

To/From O-DU7-2x

![]({{site.baseurl}}/assets/images/fc9d42a323cf.png)![]({{site.baseurl}}/assets/images/a449f10f5553.png)![]({{site.baseurl}}/assets/images/fe4c730dbafc.png)![]({{site.baseurl}}/assets/images/ca270c0b6513.png)![]({{site.baseurl}}/assets/images/b0299f467d7f.png)![]({{site.baseurl}}/assets/images/ac607bc4a782.png)![]({{site.baseurl}}/assets/images/0c70a9ec00de.png)

O-RU7-2x

O-RAN FH

O-RAN Processing

FH Interface Unit

Digital

Processing Unit

Local timing

from CDR

Local timing

from GNSS or

equivalent

Timing Unit

Power Unit

SS

onal)

GN

(opti

RF

Processing Unit

To/From Cascaded O-RU7-2x

To/From Antenna

Figure 5.3-1 O-RU7-2x Architecture Diagram

### O-RU7-2x Functional Module Description

Figure 5.3-2 illustrates O-RU7-2x functional blocks that support O-RAN FH with split option 7-2x. The digital processing unit block of O-RU7-2x is responsible for low-PHY functions such as FFT/iFFT, CP addition/removal, and PRACH filtering. Digital Down Converter (DDC), Digital Up Converter (DUC), Crest Factor Reduction (CFR) and Digital Pre-Distortion (DPD) functions are also performed in digital processing unit. For bandwidth reduction, O-RU7-2x architecture also supports the optional compression and decompression functions of FH interface. The ADC and DAC are mixed signal devices responsible for conversion of data between the digital and analog domains. As such, this block can be included as part of the either the digital processing unit or the RF processing unit. The RF Processing Unit consists of an optional frequency converter (mixer), Power Amplifier (PA)/ Low Noise Amplifier (LNA) and TX/RX filters. An antenna module follows that comprises physical antennae, RF feed distribution/aggregation network, and calibration network. The timing unit includes any clock and frequency synthesis required as well as other timing and synchronization circuits. In any given implementation, the physical boundaries between blocks may be slightly different, but the logical interfaces will generally follow those shown in Figure 5.3-2.

Figure 5.3-2 O-RU7-2x Functional Module Diagram

**FH Processing Unit**

**Digital Processing Unit**

**RF Processing Unit**

**O-RAN FH/**

**IEEE 1588v2**

**(De-)**

**Compression Low-PHY**

**DDC/**

**DUC**

**CFR/DPD**

**ADC/**

**DAC**

**Mixer**

**Timing Unit**

**O-RU7-2x**

**Power Unit**

**Antenna**

**Module**

**PA/LNA/ and**

**TX/RX Filters**

**eCPRI**

Optical Interface

# Hardware Requirements

This chapter provides the requirements for various white boxes used within the Enterprise Microcell base station. These white boxes are O-CU, O-DUx and O-RUx. In this version of the specification, the O-CU and O-DUx are implemented in an integrated fashion into one white box hardware. The reference design based on specification shall meet all these requirements based on their priority as specified by operators.

## O-CU Requirements

The requirement for O-CU portion is captured in the following O-DUx section.

## O-DUx Common Requirements

The common requirements apply to all the O-DUx regardless of the split option. However, in this version of the specification, the focus will be on O-DU7-2x. If more options get standardized in a future version of this document, some of these common requirements may be moved to the specific sub-sections in section 6.3.

### Performance

The performance requirements of the O-DU7-2x for Enterprise Microcell are listed in Table 6.2-1, including the channel bandwidth, antenna configuration, transmission distance, synchronization, etc.

Table 6.2-1 O-DU7-2x Performance Requirements

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **Parameter** | **Requirement** | **Description** | **Priority** |
| Channel Bandwidth | <=200 MHz OBW | RF Bandwidth | High |
| Antenna Configuration (Number of  Transceivers) | up to 8T8R | Tx/Rx antenna number | High |
| Transmission distance | >2 km | Distance between O-DU and O-RU | High |
| Synchronization | Support 1588v2 Synchronization | Timing synchronization | High |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
|  | Support GPS Synchronization | method | High |
| Support BeiDou Synchronization | High |
| Support Galileo Synchronization | Low |
| Support GLONASS Synchronization | Low |
| Support switching between 1588v2 and GNSS | High |
| Support SyncE | Low |
| Sync. between BS <= +-1.5 us; Carrier freq. error within one subframe <+-0.05 PPM | High |
| Capacity/MIMO | Support at least 4 100MHz bandwidth 4T4R cells | MIMO related capability | High |
| Peak Rate | With 100MHz bandwidth and 64% for DL, the peak throughput of one cell: DL: 1.5Gbps (4 layers, 256QAM) UL: 280Mbps (2 layers, 64QAM) | Peak data rate | High |
| Modulation | DL: QPSK, 16QAM, 64QAM, 256QAM UL: ?/2-bpsk, QPSK, 16QAM, 64QAM | Modulation schemes | High |
| UL: 256QAM | Medium |
| Latency | Control Plane< 10ms (def: Msg1 to Msg5) User Plane DL < 4ms UL< 4ms (def: PDCP SDU-> PDCP SDU) | Control/user plane Latency | High |

</div>

### Interfaces

The interface requirements of the O-DU7-2x are listed in Table 6.2-2.

Table 6.2-2 O-DU7-2x Interface Requirements

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **Parameter** | **Requirement** | **Description** | **Priority** |
| Transport Interface | 10 GbE or 25GbE NG interface to connect with 5G core | transport links | High |
| At least 4 fronthaul interfaces connected with O-RU7-2x | High |

</div>

### Environmental and EMC

The EMC requirements of the O-DU7-2x are listed in Table 6.2-3.

Table 6.2-3 O-DU7-2x EMC Requirements

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **Parameter** | **Requirement** | **Description** | **Priority** |
| EMC | Complying with the requirements of 3GPP TS 38.113 (2017- 12R15) [6] for equipment used in telecommunication room | Electromagnetic Compatibility  requirement | High |

</div>

### Mechanical, Thermal and Power

The mechanical requirements of the O-DU7-2x are listed in Table 6.2-4.

Table 6.2-4 O-DU7-2x Mechanical Requirements

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **Parameter** | **Requirement** | **Description** | **Priority** |
| Dimension | Built in any 19" standard rack, or stand alone, and the height does not exceed 2U, the depth (including the connector) must be less than 750mm. | Measurement in three dimensions | High |
| Status Indicator LED | At least include the following status indicators:  ---1 indicating on/off status of the power supply  ---1 indicating on/off status of the transmission link | Indicator lights | High |

</div>

The thermal requirements of the O-DU7-2x are listed in Table 6.2-5.

Table 6.2-5 O-DU7-2x Thermal Requirements

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **Parameter** | **Requirement** | **Description** | **Priority** |
| Temperature and Humidity | The O-DU7-2x shall operate steadily and reliably over a long period of time under the following environmental conditions for data center:  Operating Temperature: -5 ? ~ + 55 ?  Relative humidity: 15% ~ 85% | Environmental requirements for reliability | High |
| The solution should support extended temperature range (- 40? to +65 ?) and humidity (5%-95%) if implemented outdoors. | Environmental requirements for reliability | Low |

</div>

The power requirements of the O-DU7-2x are listed in Table 6.2-6.

Table 6.2-6 O-DU7-2x Power Requirements

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **Parameter** | **Requirement** | **Description** | **Priority** |
| Power Supply | DC -48 VDC (-40V ~ -57V) (can be connected to AC/DC converter) or AC 220V power supply, voltage range of 140V~ 300V, frequency range of 45Hz ~ 65Hz. | Power supply | High |
| Power  Dissipation | < 480 W, with full load operation | Power  Requirement | Medium |

</div>

## O-DUx Split Option Specific Requirements

'This section intentionally left blank'.

## O-RUx Requirements

The common requirements apply to all the O-RUx regardless of the split option. However, in this version of the specification, the focus will be on O-RU7-2x. If more options get standardized in a future version of this document, some of these common requirements may be moved to the specific sub-sections in section 6.5.

### Performance

The O-RU7-2x performance requirements cover all the aspects of radio unit including frequency bands, antenna configurations, power efficiency, etc. Table 6.4-1 lists the performance parameters related to O-RU7-2x for Enterprise Microcell.

Table 6.4-1 O-RU7-2x Performance Requirements

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **Parameter** | **Requirement** | **Description** | **Priority** |
| Operating band | n78, n41 | Radio frequency band | High |
| [Occupied] Bandwidth | <=200 MHz | Frequency bandwidth | High |
| Antenna Configuration  (Number of  Transceivers) | Up to 8T8R | Tx/Rx Antenna numbers | High |
| Output Power Accuracy | Under normal condition: +-2dB | Power accuracy | High |
| Tx off Power Level | less than -85dBm/MHz; See section 6.4.1 in 3GPP TS 38.104 [3]. | Tx power level during an off period | High |
| EVM at maximum output power | 64QAM: EVM smaller than 5%  256QAM: EVM smaller than 3.5% | Max output power | High |
| Operating band unwanted emissions | The Operating band unwanted emissions shall satisfy the Category B limit defined by the section 6.6.4.2.4 in 3GPP TS 38.104 [3]. | RF operation band unwanted emissions requirement | High |
| Transmitter spurious emissions | The Operating band unwanted emissions shall satisfy the Category B limit defined by the section 6.6.4.2.4 in [3]. | Deliberately  generated RF signal by transmitter | High |
| Receiver Sensitivity | The throughput shall be >= 95% of the maximum throughput of the reference measurement channel of G-FR1-A1-5; the reference sensitivity levels shall be better than -95.6dBm. | The weakest signal the receiver can identify and process | High |
| Blocking | In Channel selection, ACS, In-band blocking, out- band blocking, IMD and other receiver specification shall follow the 3GPP guidelines in [3], the reference sensitivity is allowed to degrade at most 6dB under all kinds of interference signal and corresponding level. | Channel selection related requirement | High |
| Other specifications | Except for all the RF specifications listed above, other RF specifications shall follow the requirement in [3]. | Additional standard to comply | High |
| Downlink modulation Mode | QPSK?16-QAM?64-QAM?256-QAM | DL Modulation schemes | High |
| Uplink modulation | ?/2-BPSK?QPSK?16-QAM?64-QAM | UL Modulation | High |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| mode | 256QAM | schemes | Medium |
| Conducted Power | Up to 20W per port | RF power | High |
| EIRP | NA |  |  |

</div>

### Interfaces

The interface related requirements of the O-RU7-2x are listed in Table 6.4-2.

Table 6.4-2 O-RU7-2x Interface Requirements

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **Parameter** | **Requirement** | **Description** | **Priority** |
| Interface Number | The O-RU7-2x shall have one fronthaul interface based on the split option supported | Number of fronthaul links | High |
| The O-RU7-2x shall have one optical interface for cascade | Number of transport links | High |

</div>

### Environmental and EMC

The environmental and EMC requirements of the O-RU7-2x are listed in Table 6.4-3.

Table 6.4-3 O-RU7-2x Environmental and EMC Requirements

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **Parameter** | **Requirement** | **Description** | **Priority** |
| Mounting method | Rooftop, side of building/wall or pole | Mounting  requirement | High |
| Grounding | The O-RU7-2x shall support Joint Grounding Method and shall work normally when the grounding resistor is less than 10?. | Grounding requirement | High |
| EMC | The O-RU7-2x shall comply with the requirements of 3GPP TS 38.113 [6]. | Electromagnetic Compatibility  requirement | High |

</div>

### Mechanical, Thermal and Power

The mechanical, thermal and power requirements of the O-RU7-2x are listed in Table 6.4-4.

Table 6.4-4 O-RU7-2x Mechanical, Thermal and Power Requirements

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **Parameter** | **Requirement** | **Description** | **Priority** |
| Weight | The gross weight of the O-RU7-2x shall be <12Kg | Weight  requirement | High |
| Dimension/Volume | The volume of the O-RU7-2x shall be <12L | Dimensional Measurements | High |
| Stability | The MTBF shall be >200000 hours | Mean Time Between Failures | High |
| Power Consumption | At full load, the power consumption shall not exceed 200W | Power requirement | High |
| Power supply | DC -48 VDC (-40v ~ -57v) (can be connected to AC/DC converter) or AC 220V power supply, voltage range of 140V~ 300V, frequency range of 45Hz ~ 65Hz. | Power Support Requirement | High |
| Level of protection | The protection level of the O-RU7-2x shall be equivalent to the IP65 standard. | Protection level | High |
| Temperature and Humidity | The O-RU7-2x shall operate at the temperature range of -40? to +55? with both cold start and hot start options. Humidity:5%~95% | Ambient  temperature and moisture  requirement | High |
| Atmospheric pressure | The O-RU7-2x shall operate normally under atmospheric pressure between 70 to 106Kpa. | Operational atmospheric pressure  requirement | High |
| Cooling mode | Passive cooling | System cooling requirement | High |

</div>

## O-RUx Split Option Specific Requirements

'This section intentionally left blank'.

# Hardware Reference Design

This chapter describes one example of white box hardware reference design including O-CU, O-DU and O-RU.

## O-CU Hardware Reference Design

The O-CU white box hardware is the platform that perform the O-CU function of upper L2 and L3. The hardware systems specified in this document meet the computing, power and environmental requirements of use cases configurations and feature sets of RAN physical node. These requirements are described in chapter 6 of this document. For enterprise scenarios, the UPF and/or MEC platform can also be deployed in the O-CU hardware in

order to meet various industrial requirements.

The O-CU hardware includes the chassis platform, mother board, peripheral devices, and cooling devices. The mother board contains processing unit, memory, the internal I/O interfaces, and external connection ports. The midhaul (MH) and backhaul (BH) interface are used to carry the traffic between O-CU and O-DU as well as O-CU and core network. The other hardware functional components include: the storage for software, hardware and system debugging interfaces, board management controller, just to name a few; the O-CU designer will make decision based on the specific needs of the implementation.

The HW reference design of O-CU is the same as O-DU except for the need of HW accelerator, thus detail design will be described in the next section.

## O-DU7-2x Hardware Reference Design 1

The O-DU7-2x white box hardware is the platform that performs the O-DU7-2x functions such as upper L1 and lower L2 functions. The hardware systems specified in this document meet the computing, power and environmental requirements of use case's configurations and feature sets of RAN physical node. These requirements are described in chapter 6 of this document. The O-DU7-2x hardware includes the chassis platform, mother board, peripheral devices, and cooling devices. The mother board contains processing unit, memory, the internal I/O interfaces, and external connection ports. The fronthaul and backhaul interface are used to carry the traffic between O-RU7-2x and O-DU7-2x as well as O-CU and O-DU7-2x. The O-DU7-2x design may also provide an interface for hardware accelerator if that option is preferred. The other hardware functional components include: the storage for software, hardware and system debugging interfaces, board management controller, just to name a few. The O-DU7-2x designer will make decisions based on the specific needs of the implementation.

Note that the O-DU7-2x HW reference design is also feasible for O-CU and integrated O-CU/O-DU7-2x.

### O-DU7-2x High-Level Functional Block Diagram

For this example, a dual-socket platform is used. In the following O-DU7-2x mother board functional block diagram, it shows the interconnections of the major components and external interfaces. The digital processing unit or CPU handles the baseband processing workload. To make the processing more efficient, an accelerator can be used to assist with the baseband workload processing. The memory devices include the random-access memory (RAM) for temporary storage of data while flash memory is used for codes and logs. The storage device is for persistent storage. The external network cards can be used for fronthaul or backhaul connection. The baseboard management controller (BMC) is a microcontroller which monitors hardware operation on motherboard.

UPI 9.6GT/s

PCIe 3.0

PCH

SATA/NVMe

PCIe 3.0

DDR

NVMe

PCIe 3.0

DDR

UPI 9.6GT/s

Ethernet

Transceiver

LAN port \*4

SPI Flash

DDR4

CPU 2

PCIe 3.0

PCIe 3.0

PCIe 3.0

CPU 1

VGA

COM

LAN

BMC

USB \*6

Figure 7.2-1 O-DU7-2x Functional Block Diagram

### O-DU7-2x Hardware Components

#### Digital Processing Unit

The example of general-purpose processor performances and other related information are list in the following table.

Table 7.2-1 Processor Feature List

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Item Name** | **Description** |
| # of Cores | 16 |
| # of Threads | 32 |
| Base Frequency | 2.30 GHz |
| Max Turbo Frequency | 3.70 GHz |
| Cache | 22 MB |
| TDP | 110W |
| Max Memory Size (dependent on memory type) | 1 TB |
| Memory Types | DDR4 |
| Max # of Memory Channels | 6 |
| Sockets Supported | LGA-3647 |

</div>

The interface specifications on the main board are as follows:

**Memory Channel Interfaces:** The system memory capacity, type and related information is described in the following table.

Table 7.2-2 Memory Channel Feature List

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Item Name** | **Description** |
| Memory Types | DDR4 RDIMM/LRDIMM |
| # of Memory Channels | 6 |
| Support ECC | Yes |
| Maximum Memory Speed | 2667 MHz |
| Memory Voltage | 1.2 V |

</div>

**PCIe:** PCIe Gen 3 is supported by the processor. There are total of 48 PCIe lanes for each processor.

**Ethernet:** The system provides 4\*1Gbps Ethernet ports. When higher Ethernet bandwidth required, an Ethernet card can be installed in one of the PCIe slot.

#### Hardware Accelerator

Hardware accelerators can be used in O-DU7-2x to offload computationally intensive functions and to optimize the performance under varying traffic and loading conditions. While the hardware acceleration functional

requirements and implementation are system designer's choice, the O-DU7-2x is required to meet the minimum system performance requirements under various loading conditions and deployment scenarios.

For this example, the accelerator comprises a single FPGA for L1 offload and the fronthaul connectivity. The accelerator hardware and firmware features are listed in Table 7.2-3 and Table 7.2-4.

Table 7.2-3 Accelerator Hardware Features

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| SoC Resources | System Logic cells - 2,586 K CLB LUT - 1,182K  CLB Flip-Flops -2,364K DSP Slices - 6,840  BRAM - 75.9Mb URAM - 270Mb |
| Form Factor | HHHL PCIe Form Factor |
| PCIe Interface | Gen 3 x16 |
| Memory | 8 GB DDR4 |
| Fronthaul interface | 4\*10G/25G eCPRI interfaces |
| Timing Interface | SMA port for GNSS antenna;  optical port for IEEE1588v2 synchronization; 2\*RJ45 port for 1PPS&TOD (in & out) |
| Other External Interface(s) | Micro USB for JTAG support (FPGA programming and debug) and access to BMC |
| Board Management Controller | Telemetry, Security, Remote Upgrade |
| Operating Temperature (ambient) | -5?C to +55?C |
| Power | < 110 W |

</div>

Table 7.2-4 Hardware Accelerator Firmware Features

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Remote System Upgrade | Securely upgradable FPGA flash image |
| L1 Acceleration | 5G NR LDPC encoding/decoding with interleaving/de-interleaving and rate- matching/rate-de-matching along with early termination, CRC attachment,  and HARQ management |
| Fronthaul Protocols | Support O-RAN FH (WG4) split option 7-2x |
| Synchronization | Support synchronization and timing |
| Open Programmable Acceleration Environment | Support for:   * FPGA flashing upgrade * Firmware version reporting * PCIe diagnostics * Ethernet diagnostics * Temperature and voltage telemetry information |

</div>

Figure 7.2-2 illustrates the single-chip acceleration architecture comprising one FPGA with Gen3 x16 PCIe interfaces toward the Digital Processing Unit.

Digital Processing Unit

(L2 and Partial L1)

FPGA

(L1 Offload, Connectivity & Sync)

F1 Interface 10G/25G Ethernet

![]({{site.baseurl}}/assets/images/b1750394a1c8.png)![]({{site.baseurl}}/assets/images/b1c5c7ec47bf.png)

PCIe Interface Gen3 \*16

Clock Signals

Fronthaul Interface eCPRI

Figure 7.2-2 Single-chip FPGA-based Hardware Acceleration in O-DU7-2x

### Synchronization and Timing

This section describes the synchronization and timing mechanism that is used in the hardware accelerator.

Each hardware accelerator that supports connectivity functions (e.g., O-RAN fronthaul) in O-DU7-2x must be able to support external synchronization I/O and to receive or transmit 1 PPS reference clock source in order to ensure synchronization across network.

The accelerator has a built-in DPLL, it can support GNSS, IEEE1588v2 or external reference signals as clock inputs, and output accurate frequency and synchronization signals to internal and external devices. When all reference inputs failed, the OCXO module can assist the accelerator to maintain high precision output signals for a certain period of time. Figure 7.2-3 describes the synchronization mechanisms of the accelerator.

![]({{site.baseurl}}/assets/images/8886d21543c1.png)

Figure 7.2-3 HW Accelerator Timing and Synchronization

### External Interface Ports

The following table shows the external ports or slots that the system provided.

Table 7.2-5 External Port List

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Port Name** | **Feature Description** |
| Ethernet | 1 x 1GbE RJ45 for management |
| 4 x 1GbE RJ45 |
| PCIe | 4 PCIe 3.0 x16 slots  1 PCIe 3.0 x8 slots  2 PCIe 3.0 x16 slots (with riser) |
| Storage | 6 SAS/SATA/NVMe ports |
| USB | 4 USB 3.0 ports  2 USB 2.0 ports |
| VGA | 1 VGA port |
| Serial Port | 1 COM port |

</div>

* + 1. O-DU7-2x Firmware

BIOS and BMC firmware are needed in the system and shall be installed.

### Mechanical

#### Mother Board

The mechanical layout of the mother board shows the location of major components and interface ports.

ATX12V

ATX PWR

VGA

FAN4

FAN3

BHC

FAN1 FAN2

PCIe 1

PCIe 2

S

A T A

M.2

PCIe 3

PCIe 4

PCH

U S B

M.2

PCIe 5

DDR

PCIe 6

DDR

DDR

DDR

DDR

DDR

U S B

LAN3

LAN4

CPU2

DDR

LAN1

LAN2

DDR

DDR

IMPI

USB

CPU1

DDR

VGA

COM

DDR

DDR

ATX12V

Figure 7.2-4 Mother Board Layout Diagram

#### Chassis

The 2U rack mount chassis contains the layout of the power supply, storage, and fans. The dimension of the hardware system is 450\*446\*87 (mm), and the weight is less than 25kg.

#### Cooling

The system installs 4x 80\*38 PWM fans for the cooling.

### Power Unit

In a fully loaded system, including the hardware acceleration card, the system power consumption should be less than 480W. The total system power shall be kept at less than 80% of the power supply capacity.

The power is provided by 1+1 CPRS 550W/800W (80Plus Platinum) power supply. Table 7.2-6 lists the power requirements of O-DU7-2x.

Table 7.2-6 O-DU7-2x Power Requirements

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Supply Domain** | **Requirements** |
| AC Input | 100-240V, 50-60Hz |
| DC Input | 240VDC |
| Support -48V |

</div>

### Thermal

Active cooling with up to 4 fans is integrated in the chassis.

The hardware acceleration cards use passive cooling and a custom heatsink and is equipped with temperature sensors. It is designed to operate in temperatures ranging from -5?C to +55?C.

### Environmental and Regulations

The O-DU7-2x hardware system is RoHS Compliant. The power supply unit is EMC FCC/CISPR Class B compliant. Table 7.2-7 lists the environmental related features and parameters.

Table 7.2-7 Environmental Features

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Item Name** | **Description** |
| Operating Temperature | -5?C to +55?C |
| Non-operating Temperature | -40?C to 70?C |
| Operating Relative Humidity | 8% to 90% (non-condensing) |
| Non-operating Relative Humidity | 5% to 95% (non-condensing) |

</div>

The hardware accelerator described in Section 7.2.2.2 is designed to operate in indoor environments and in temperatures ranging from -5?C to +55?C.

## O-DU7-2x Hardware Reference Design 2

### O-DU7-2x High-Level Functional Block Diagram

Figure 7.3-1 describes the components and connections inside the O-DU7-2x white box. As described in the previous section, the O-DU7-2x hardware can be implemented with difference design choices. Here, a system design is presented as an example which processes most of the O-DU7-2x workload. The accelerator can be used to perform some O-DU7-2x workload functions based on the overall performance requirement. Several Ethernet controllers are used for front haul link, back haul link and remote console control connection. The other parts include: RAM, flash memory, and hard drive storage. The USB ports are provided for hardware debug and local connection if needed. Finally, BMC block is mainly responsible for monitoring the hardware status.

The digital processing unit is a system which includes a 64-bit multi-core server class processor, integrated high- speed I/O, Integrated Memory Controllers (IMC), a PCIe Switch, and a BMC. The system supports double channel 128-bit wide processing instruction set. It also supports hardware virtualization to enable dynamic provisioning of services as communication service providers extend network functions virtualization (NFV). Figure 7.3-1 shows the major functional blocks of the digital processing unit.

![]({{site.baseurl}}/assets/images/b7387c0c238f.jpg)

Figure 7.3-1 O-DU7-2x Hardware Block Diagram

### O-DU7-2x Hardware Components

#### Digital Processing Unit

This example of the digital processing unit in O-DU7-2x is based on the General Purpose Processor (GPP). The GPP requirements are listed in the following table.

Table 7.3-1 The Processor Feature List

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Item Name** | **Description** |
| # of Cores | 64 |
| Base Frequency | 2.20 GHz |
| L2 Cache | 32 MB |
| Thermal Design Power (TDP) | 100W |
| Max Memory Size (dependent on memory type) | 1TB |
| Memory Types | DDR4 |
| Max # of Memory Channels | 8 |

</div>

The interface specifications on the main board are as follows:

**Memory Channel Interfaces:** The system memory capacity, type and related information are described in the following table.

Table 7.3-2 The Memory Channel Feature List

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Item Name** | **Description** |
| Memory Types | DDR4 |
| # of Memory Channels | 8 |
| Max Memory Speed | 3200MHz |

</div>

**PCIe:** PCIe Gen 3 should be supported by the processor. There are total of 33 PCIe lanes.

#### Hardware Accelerator

Refer to section 7.2.2.2.

#### Baseboard Management Controller

BMC is used to perform hardware power control (power on, power off and power cycle), monitor hardware status (temperatures, voltages, etc.), monitor Basic I/O System (BIOS)/ Unified Extensible Firmware Interface (UEFI) firmware status, and log system events. It provides remote access via shared or dedicated NIC. System user can do console access via serial or physical/Kernel-based Virtual Machine (KVM). The BMC has dedicated RAM and flash memory. It provides access via serial port or Ethernet port. Figure 7.3-1 describes the BMC connections with related components.

### Synchronization and Timing

Refer to section 7.2.3.

### External Interface Ports

The following table shows the external ports or slots that the system provided.

Table 7.3-3 External Port List

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Item Name** | **Description** |
| Ethernet | 4x Gigabit Ethernet LAN connectors |
| 1GbE IPMI RJ45 port |
| Dual 10GbE SFP or Dual 25GE SFP28 Faber Ethernet connectors |
| 6x25G SFP28 or 6x10G SFP |
| USB | 5 USB 3.0 ports |
| Serial Port | 1 DB9 COM port |
| Antenna port | 1 SMA connector for GNSS |
| VGA | 1 VGA port |

</div>

* + 1. O-DU7-2x Firmware

BIOS and BMC firmware are needed in the system and shall be installed.

### Mechanical

The mechanical design for mother board, chassis, and cooling are listed in this section.

#### Mother Board

The mechanical layout of the mother board shows the location of major components and interface ports. The following diagram also provides the dimension of the board is standard E-ATX/EEB/CEB (13\*12 inch).

![]({{site.baseurl}}/assets/images/1c9d2ac57449.jpg)

Figure 7.3-2 Mother Board Layout Diagram

#### Chassis

The 2U rack mount chassis contains the layout of the power supply which support 2 CRPS power supply, Hard disk drive and Solid State Drive (SSD) and fans. The chassis dimension is showed in following figure.

![]({{site.baseurl}}/assets/images/156c41d76282.jpg)

Figure 7.3-3 Chassis Mechanical Diagram

#### Cooling

The system installs 4\* 80x38mm PWM fans for the cooling. (Support 4 pcs 80x38 fan is standard configuration, and 4 pcs 80\*56mm system as optional)

### Power Unit

In a fully loaded system which 3 PCIe slots, which contain 1 PCIe X16 slot support 75W power is standard power configuration, and system power supply have additional power 8pin/6pin cable to support special PCIe device which need more than 75W, and the other 2 PICE X8 slot can support 25W is compliant to standard PCIe Criteria.

1. The X16 PCIe card support full high full long dimension. (DWFHFL)
2. The 2 X8 PCIe card support full high half long dimension (SWFHHL),
3. Additional, if X16 card is double size, there only one PCIe X8 supported.
4. The Unit support 2 CRPS 800W high-efficiency Power supply, redundancy design.

The O-DU7-2x chassis includes two 550W/800W CRPS power supply unit (Support 1+1 redundancy design). The power supply unit is auto-switching capable, which enables it to automatically sense and operate at a 100v to 240v input voltage. The power supply unit features are listed in the following table.

Table 7.3-4 Power supply unit feature list

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Item Name** | **Description** |
| Output connectors | 24pin/8pin/4pin/I2C |
| Dimension (W x D x H) | 77 x 225 x 84 mm(CRPS criteria) |
| Maximum Output Power | +3.3V: 25A  +5V: 25A  +12V: 65A  -12V: 0.5A  +5Vsb: 3A |
| Rated Input Voltage/Current | 100-240Vac / 10-5A |
| Rated Input Frequency | 50/60HZ |
| Inrush current | Less than 30A |

</div>

### Thermal

Active cooling with up to 4 fans is integrated in the chassis.

The hardware acceleration cards use passive cooling and a custom heatsink and is equipped with temperature sensors. It is designed to operate in temperatures ranging from -5?C to +55?C.

### Environmental and Regulations

The O-DU7-2x hardware system is RoHS Compliant. The power supply unit is EMC FCC/CISPR Class B compliant. Table 7.3-5 lists the environmental related features and parameters.

Table 7.3-5 Environmental Features

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Item Name** | **Description** |
| Operating Temperature | -5?C to +45?C |
| Non-operating Temperature | -20?C to +60?C |
| Operating Relative Humidity | 8% to 90% (non-condensing) |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Non-operating Relative Humidity | 5% to 95% (non-condensing) |

</div>

The hardware accelerator is designed to operate in indoor environments and in temperatures ranging from -5?C to

+55?C.

## O-RU7-2x Hardware Reference Design

### O-RU7-2x High-Level Functional Block Diagram

Figure 7.4-1 provides a high-level functional block diagram depicting the major HW/SW components. It also highlights the internal/external interfaces that are required.

To/From O-DU7-2x

![]({{site.baseurl}}/assets/images/fc9d42a323cf.png)![]({{site.baseurl}}/assets/images/a449f10f5553.png)![]({{site.baseurl}}/assets/images/fe4c730dbafc.png)![]({{site.baseurl}}/assets/images/ca270c0b6513.png)![]({{site.baseurl}}/assets/images/b0299f467d7f.png)![]({{site.baseurl}}/assets/images/ac607bc4a782.png)![]({{site.baseurl}}/assets/images/0c70a9ec00de.png)

O-RU7-2x

O-RAN FH

O-RAN Processing

FH Interface Unit

Digital

Processing Unit

Local timing

from CDR

Local timing

from GNSS or

equivalent

Timing Unit

Power Unit

SS

onal)

GN

(opti

RF

Processing Unit

To/From Cascaded O-RU7-2x

To/From Antenna

Figure 7.4-1 O-RU7-2x High-Level Functional Block Diagram

### O-RU7-2x Hardware Components

#### O-RAN Fronthaul Processing Unit

The O-RAN Fronthaul Processing Unit receives eCPRI frames from the O-RAN fronthaul and process the control/data packets.

#### Digital Processing Unit

The digital processing unit of O-RU7-2x is mainly for performing Low-PHY, DDC, DUC, CFR, DPD and synchronization. In this implementation, the ADC and DAC functions are also included in the digital processing unit.

This solution of the digital processing unit incorporates FPGA and a processor. The FPGA handles high speed digital processing, and the processor is used for hardware device configuration and the OAM function. The FPGA and the processor core can be integrated into one SoC or implemented into two devices. Here the FPGA and the processor core are integrated into one SoC device.

![]({{site.baseurl}}/assets/images/03d1127ce460.jpg)

Figure 7.4-2 Digital Processing Unit Block Diagram

The FPGA resource requirements are shown in Table 7.4-1.

Table 7.4-1 FPGA Resource Requirements

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| System Logic cells | 489 K |
| CLB Flip-Flops | 447 K |
| CLB LUT | 223 K |
| Distributed RAM | 6.9 Mb |
| Block RAM | 22.8 Mb |
| UltraRAM (Mb) | 45 Mb |
| DSP Slices | 1872 |
| GTY Transceivers | 8 |

</div>

The RF requirements of O-RU7-2x are listed in Table 7.4-2

Table 7.4-2 RF Requirements

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- |
| **Parameter** | **Symbol** | **Min** | **Typ** | **Max** | **Unit** | **Test Condition/Comment** |
| **Transmitters** |  |  |  |  |  |  |
| Centre Frequency |  | 650 |  | 6000 | MHz |  |
| Transmitter Synthesis Bandwidth |  |  |  | 450 | MHz |  |
| Transmitter Large Signal Bandwidth |  |  |  | 200 | MHz |  |
| Transmitter Attenuator Power Control Range |  | 0 |  | 32 | dB | Signal to noise ratio (SNR) maintained for attenuation between 0 and 20 dB |
| Transmitter Attenuation Power Control Resolution |  |  | 0.05 |  | dB | 20 MHz LTE/NR at -12 dBFS |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- |
| **Parameter** | **Symbol** | **Min** | **Typ** | **Max** | **Unit** | **Test Condition/Comment** |
| Adjacent Channel  Leakage Ratio (ACLR) |  |  | -66 |  | dB | 75 MHz <f<=2800 MHz |
| In Band Noise Floor |  |  | -154.5 |  | dBm/Hz | 0 dB attenuation; in band noise falls 1 dB for each dB of attenuation for attenuation between 0 dB and 20 dB |
| Out of Band Noise Floor |  |  | -153 |  | dBm/Hz | 600 MHz < f <= 3000 MHz |
| Maximum Output Power |  |  | 6 |  | dBm | 0 dB attenuation; 3 x bandwidth/2 offset |
| Third Order Output Intermodulation Intercept Point | OIP3 |  | 27 |  | dBm | 600 MHz < f <= 3000 MHz |
| Error Vector  Magnitude (3GPP Test Signals) | EVM |  |  |  |  |  |
| 1900 MHz LO | 0.6 | % | 50 kHz RF PLL loop bandwidth |
| 3800 MHz LO | 0.53 | % | 300 kHz RF PLL loop bandwidth |
| **Observation Receivers** | ORx |  |  |  |  |  |
| Center Frequency |  | 450 |  | 6000 | MHz |  |
| Gain Range |  |  | 30 |  | dB | IIP3 improves dB for dB for the first 18 dB of gain attenuation; QEC performance optimized for 0 dB to 6 dB of attenuation only. |
| Analog Gain Step |  |  | 0.5 |  | dB | For attenuation steps from 0 dB to 6 dB |
| Receiver Bandwidth |  |  |  | 450 | MHz |  |
| Maximum Usable Input Level | PHIGH |  | -11 |  | dBm | 0 dB attenuation; increases dB for dB with attenuation. |
| Integrated Noise |  |  | -58.7 |  | dBFS | 450 MHz Integration bandwidth |
|  |  | -57.5 |  | dBFS | 491.52 MHz Integration bandwidth |
| Third Order Input Intermodulation Intercept Point | IIP3 |  |  |  |  | Maximum observation receiver gain; test condition: PHIGH-11 dB/tone |
| Narrow Band |  |  |  |  |  |  |
| 1900 MHz | 15 | dBm |
| 2600 MHz | 16.5 | dBm |
| 3800 MHz | 18 | dBm |
| Wide Band |  |  |  |  |  | IM3 products>130 MHz at baseband; test condition: PHIGH - 11 dB/tone; |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- |
| **Parameter** | **Symbol** | **Min** | **Typ** | **Max** | **Unit** | **Test Condition/Comment** |
| 1900 MHz |  |  | 13 |  | dBm | 491.52 MSPS |
| 2600 MHz | 11 | dBm |
| 3800 MHz | 13 | dBm |
| Third Order  Intermodulation Product | IM3 |  | -70 |  | dBc | 600 MHz < f <= 3000 MHz |
| Spurious Free Dynamic Range | SFDR |  | 64 |  | dB | Non IMx related spurs, does not include HDx; (PHIGH - 11) dB input signal |
| Harmonic Distortion |  |  |  |  |  | (PHIGH - 11) dB input signal |
| Second Order Harmonic Distortion Product | HD2 |  | -80 |  | dBc | In band HD falls within +-100 MHz |
| -73 |  | dBc | Out of band HD falls within +-225 MHz |
| Third Order Harmonic Distortion Product | HD3 |  | -70 |  | dBc | In band HD falls within +-100 MHz |
| -65 |  | dBc | Out of band HD falls within +-225 MHz |
| **Receivers** |  |  |  |  |  |  |
| Center Frequency |  |  |  | 6000 | MHz |  |
| Analog Gain Step |  |  | 30 |  | dB | Attenuator steps from 0 dB to 6 dB |
|  |  | 1 |  | dB | Attenuator steps from 6 dB to 30 dB |
| Receiver bandwidth |  |  |  | 200 | MHz |  |
| Maximum Usable Input Level | PHIGH |  | -11 |  | dBm | 0 dB attenuation; increase dB for dB with attenuation; continuous wave = 1800 MHz; corresponds to -1 dBFS at ADC 75 MHz <f<=3000 MHz |
| Noise Figure | NF |  | 12 |  | dB | 0 dB attenuation at receiver port 600 MHz <f<=3000 MHz |
| Input Third Order Intercept Point | IIP3 |  |  |  |  |  |
| Difference Product | IIP3, d |  |  |  |  | Two (PHIGH - 9) dB tones near band edge |
| 2600 MHz  (Wideband) | 17 | dBm |
| 2600 MHz (Midband) | 21 | dBm |
| Sum Product | IIP3, s |  | 20 |  | dBm | Two (PHIGH - 9) dB tones, at bandwidth/6 offset from the LO |
| 2600 MHz  (Wideband) |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- |
| **Parameter** | **Symbol** | **Min** | **Typ** | **Max** | **Unit** | **Test Condition/Comment** |
| HD3 | HD3 |  | -66 |  | dBc | (PHIGH - 6) dB continuous wave tone at bandwidth/6 offset from the LO 600 MHz < f <= 4800 MHz |

</div>

#### RF Processing Unit

###### Power Amplifier (PA) Reference Design

The Power Amplifier boosts the RF output to the level required for the base station class.

Hardware Requirements

Interface Requirements

The interface requirements of the transmit PA are listed in Table 7.4-3

Table 7.4-3 Power Amplifier Interface Requirements

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Item Name** | **Description** |
| RF Enable | The enable input should be compatible with 1.8V logic and tolerate 3.3V as required. A logic high enables the PA. A logic low disables the device and  places it in a minimum dissipation mode. |
| RF Output | RF outputs support 50-ohm single ended to properly interface to a directional coupler, isolator, switch or antenna. |
| RF Input | RF inputs should support 50-ohm, single ended match to the transceiver output or preamp. |

</div>

Power Requirements

RF output power required is nominally 5 W (37 dBm). DC power is driven by efficiency of the PA and should not be more than 17W and the efficiency should be greater than 30%.

RF Requirements

The PA and driver should have enough gain to boost the transceiver output to the rated power level. The output power should be at least 5W (37 dBm) including the loss of the circulator and antenna filter. The ACLR with DPD and CFR should be better than 47dBc according to the related 3GPP test models.

Table 7.4-4 Power Amplifier RF Requirements

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Item Name** | **n 78** |
| Gain | >60 dB including driver |
| P3dB | 47 dBm |
| Input Return Loss | <-15 dB |
| Output Return Loss | <-15 dB |
| Switching Speed | <1uS |
| HD2 | >28 dBc |
| HD3 | >30 dBc |

</div>

Hardware Design

RFin is the input of the PA, RFout is the output of the PA. Vdd and Vbias are the power input of the PA. RFen is the control pin to disable or enable the PA. The input and output should be matched to 50 ohms to optimize return loss as much as possible. Proper decoupling shall be provided to minimize impact of supply ripple on the RF output.

RFen

RFout

RFin

Vbias

Vdd

Figure 7.4-3 Power Amplifier Reference Design

###### Low Noise Amplifier (LNA) Reference Design

Hardware Requirements

Interface Requirements

The interface requirements of the transmit LNA are listed in Table 7.4-5.

Table 7.4-5 LNA Interfaces Requirements

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Item Name** | **Description** |
| Enable | The enable input should be compatible with 1.8V logic and tolerate 3.3V as required. A logic high enables the LNA. A logic low disables the device and places it in a minimum dissipation mode. |
| LNA Bypass | The LNA Bypass skips the second stage LNA effectively reducing the overall gain. This would be selected when the input signal compromises the linearity of the amplifier. |
| RF Out | RF outputs support 50-ohm single ended to properly interface to the RF  filtering and Rx input port of transceiver. |
| TR Switch | The TR switch is used to shunt any reflected RF power that reaches the LNA to a shunt load during the transmit period. |
| RF Input | RF inputs should support 50-ohm, single ended match to circulator. |
| Termination | This RF output port shunts any reflected transmit power to an appropriate load during the Transmit period to protect the input of the LNA. |

</div>

Power Requirements

DC power per channel should not exceed 0.5W.

RF Performance Requirements

Table 7.4-6 LNA RF Requirements

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Item Name** | **n 78** |
| Gain (High/Low) | 34/17 dB |
| NF (High/Low) | 1.6/1.6 dB |
| OIP3 (High/Low) | 34/34 dBm |
| OP1dB (High/Low) | 19/15 dBm |
| TR Switch Time | <1uS |

</div>

Hardware Design

Figure 7.4-4 shows the configuration for a dual-stage LNA. The RF inputs and outputs should be properly matched to optimize the noise performance and flatness of the amplifier. The input switch is used to forward any reflected transmit energy to an external load during the transmit period to protect the LNA from damage. The DC supply voltage, VCC, should be properly filtered to prevent power supply noise from entering the LNA and reducing performance.

![]({{site.baseurl}}/assets/images/126ab9f51a8f.png)

VCC

RFout

Terminationext

LNAEN

RFin

TR

LNAbypass

Figure 7.4-4 LNA Reference Design

###### Circulator Reference Design

For TDD use, the Tx and Rx links work in time duplex. To properly couple the Tx energy to the antenna and the Rx signal to the LNA input, a circulator is used to perform this function given the potentially high RF power being processed through this device. The circulator can be configured as a clockwise or counterclockwise device depending on the layout details.

Hardware Requirements

Interface Requirements

The circulator includes 3 ports that can function as in input or an output. If the device is labelled clockwise, then for each input, its nominal output is the next pin rotating right around the device. If it is counterclockwise, the nominal output is the next pin rotating to the left around the device.

RF Requirements

Table 7.4-7 Circulator RF Requirements

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Item Name** | **n 78** |
| Rotation | CW or CCW |
| Average Power | Up to 43 dBm |
| Peak Power | 50 dBm |
| Impedance | 50 ohms |
| Insertion Loss | -0.3 dB |
| Isolation | 20 dB |
| Return Loss | 22 dB |

</div>

Hardware Design

The example on the left in Figure 7.4-5 is a clockwise oriented device. The RF input enters pin 1 and exits pin 2. Pin 2 can also be used as an input and its output is pin 3. Finally pin 3 can also function as an input with pin 1 being the output. The device on the right is counterclockwise oriented and the signal flow is the in the opposite direction.

![]({{site.baseurl}}/assets/images/7e28ecd17081.png)

1

3

2

![]({{site.baseurl}}/assets/images/078436ce9669.png)

1

3

2

Figure 7.4-5 Circulator Reference Design

### Synchronization and Timing

The purpose of the clocking device is to accept the network reference clock, typically 1 pps, and generate a jitter free reference clock(s) for other devices in the system. The clock is typically part of an IEEE 1588 implementation either controlled by an external stack or implemented in the clock device itself which could be part of the baseband implementation.

#### Hardware Requirements

* Interface Requirements

The interface requirements of the transmit clocking are listed in Table 7.4-8.

Table 7.4-8 Interface requirements of the clocking

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Item Name** | **Description** |
| Reference Clock Input | The clock device should receive a network reference clock from the FPGA/ASIC. This typically could be a 1pps, 10 MHz or other standard reference as determined by the specific implementation. More than one input is allowed that may be selected between when the reliability of one reference is compromised. Standard differential  clocking should be used to preserve signal integrity. |
| Control | Control of the transceiver is by way of 3 or 4 wire SPI or IIC functioning as a slave. Support for 1.8V control is required and tolerance of 3.3V is preferred. Typically, the clock devices will be part of an IEEE1588v2 protocol loop controlled by way of this  control interface or other GPIO lines as required by the hardware implementation. |
| Clock Outputs | One or more clock outputs are required to drive the digital device and transceiver clock |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
|  | inputs. Each output should be independently programmable in frequency to suit the application. The outputs should nominally be differential to preserve clocking edge and to maximize tolerance of high common mode signals. |
| RF Inputs | RF inputs should support 50 ohm or 100 ohms, single ended or differential signalling  to match the transceiver output. |

</div>

* Power Dissipation

Total dissipation should be about less than 2W.

* RF Requirements

Clocking RF requirements are given in the following table.

Table 7.4-9 Clocking RF requirements

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

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
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

#### Hardware Design

For the clocking function, it is usually performed by a synchronization IC which may include one or more PLLs. It also can supply numbers of output port to support different frequency clocking.

![]({{site.baseurl}}/assets/images/b6f5fd25d2a0.jpg)

Figure 7.4-6 PLL Reference Design Diagram

CLK0 and CLK1 are differential reference clock inputs from the source to be cleaned up and used as the system reference. OSCI/OSCO should be connected to a crystal, and it also accepts a reference from a clock oscillator or a

fundamental mode parallel-resonant crystal. XO\_DPLL is single-ended signal from the external TCXO. RESET(bar) is an active low pin to reset the internal logic to their default states. CS(bar) is an active low chip select for serial control. SCLK/SCL is a serial control port clock for both SPI and I2C. SDIO/SDA is a bidirectional serial data pin for both SPI and I2C. SDO is the serial data out pin for 4-wire mode. Q0 through Q11 are differential programmable output clock signals. These are the primary outputs of this device and provide high performance clock signals to the transceiver, baseband device and other key elements. This device is also responsible for providing SYSREF to various devices in the system if required. It may also use an external SYSREF as a source that may be retimed for local timing if necessary. GPIO0~9 are GPIO signals. The GPIO signals are intended to provide a user with a flexible method to manage the control and status of the part via pins without providing dedicated pins for each possible function that may be wasted in a lot of applications. The GPIOs are fully configurable so that any GPIO can perform any function on any target logic block.

### External Interface Ports

The following table shows the external ports or slots provided by the O-RU7-2x. External connections can be aggregated into a composite connector to minimize the points of environmental ingress as required for a specific deployment.

Table 7.4-10 External Port List

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Port Name** | **Feature Description** |
| Fronthaul interface | One 25Gbps optical interface to connect with O-  DU7-2x |
| One 25Gbps optical interface for cascade |
| Debug interface | RJ45 for debug usage |
| Power interface | Two-pin male plug for power cable |

</div>

### Mechanical

One such mechanical structure is shown in Figure 7.4-7. The shell should provide appropriate environmental protection, RF shielding and passive thermal dissipation. Internally, thermal pads are used to contact local heat sources and transfer that heat to the frame which in turn dissipates the heat through bulk metal and fins used to increase the effective surface area. Other enclosures are possible.

![]({{site.baseurl}}/assets/images/68a879b387e5.jpg)

Figure 7.4-7 Mechanical Enclosure Diagram

### Power Unit

For the power solution of the O-RU7-2x can be over power cable. And for the board power solution, LDO and DC- DC can be used.

#### Hardware Requirements

The power unit is responsible for isolating and converting the telco supply to appropriate voltages for distribution to individual supply domains in the O-RU7-2x. The typical dissipation is outlined below. The RF front end is broken out separately since different deployment scenarios will require different frequencies and power levels resulting is significantly different total dissipation. Total Power is the sum of the two sections below.

Table 7.4-11 Digital Processing Unit Power Requirements

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Module** | **8T8R(W)** | **Notes** |
| FPGA | 40 |  |
| PLL | 1.5 |  |
| Ethernet PHY | 1 |  |
| DDR | 1 |  |
| SFP+ Module | 1.5 | 1 module installed |
| Others | 3 |  |
| Total device consumption | 48 |  |
| O-RU7-2x digital processing unit power consumption | 56.5 | on board power efficiency 0.85 |

</div>

Table 7.4-12 RF Processing Unit Power Requirements

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Module** | **8T8R(W)** | **Notes** |
| PA | 150 | 75% Tx,Max RF. 5W rms output@100MHz |
| PA Drive Amp | 12 |  |
| LNA | 5 | 28% Rx |
| Others | 3 | Bias generators and controller |
| Total device consumption | 170 |  |
| O-RU7-2x RF processing unit power consumption | 200 | on board power efficiency 0.85 |

</div>

#### Hardware Design

The block diagram of the power unit is shown in Figure 7.4-8, which depict the power distribution to various functional modules such as PA board and FPGA/RF SoC board(Digital) along with approximate power requirements.

![]({{site.baseurl}}/assets/images/9fe39e29ff80.jpg)

Figure 7.4-8 Power Unit Design

### Thermal

The O-RU7-2x will use passive cooling.

### Environmental and Regulations

The O-RU7-2x hardware system is RoHS Compliant.

Table 7.4-13 Environmental Features

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Item Name** | **Description** |
| Operating Temperature | -40?C to +55?C |
| Storage Temperature | -45?C to +70?C |
| Humidity | 2% to 95% |
| Atmospheric Pressure | 70kPa to 106kPa |

</div>

# History

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Date** | **Revision** | **Description** |
| 2022.11.08 | 01.00.00 | Published as final version 01.00 |

</div>
---

- View in [GitHub Mode]({{site.github_page_url}}/O-RAN.WG7.EMC-HAR-HRD.0-R003-v01.00.docx.md).
- Go back to [Table of Contents]({{site.baseurl}}/).
- Download the [Original Document]({{site.download_url}}/O-RAN.WG7.EMC-HAR-HRD.0-R003-v01.00.docx).
