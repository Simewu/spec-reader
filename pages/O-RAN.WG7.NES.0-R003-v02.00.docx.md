## O-RAN.WG7.NES.0-R003-v02.00.docx

- View in [Reader Mode](https://simewu.com/spec-reader/pages/06-WG7/O-RAN.WG7.NES.0-R003-v02.00.docx).
- Go back to [Table of Contents](../README.md).
- Download the [Original Document](https://github.com/Simewu/spec-reader/raw/refs/heads/main/documents/O-RAN.WG7.NES.0-R003-v02.00.docx).

---

![webwxgetmsgimg (7).jpeg](../assets/images/9c69df009b87.jpg)O-RAN.WG7.NES.0-v02.00

Technical Report

< >

**O-RAN Work Group 7 (White-box Hardware Workgroup)**

**Network Energy Savings Procedures and Performance Metrics**

Copyright (C) 2024 by the O-RAN ALLIANCE e.V.

The copying or incorporation into any other work of part or all of the material available in this report in any form without the prior written permission of O-RAN ALLIANCE e.V. is prohibited, save that you may print or download extracts of the material of this report for your personal use, or copy the material of this report for the purpose of sending to individual third parties for their information provided that you acknowledge O-RAN ALLIANCE as the source of the material and that you inform the third party that these conditions apply to them and that they must comply with them.

O-RAN ALLIANCE e.V., Buschkauler Weg 27, 53347 Alfter, Germany

Contents

List of figures 4

List of tables 4

Foreword 5

Modal verbs terminology 5

Executive summary 5

1. Scope 6
2. References 6
   1. Normative references 6
   2. Informative references 7
3. Definition of terms, symbols and abbreviations 7
   1. Terms 7
   2. Symbols 9
   3. Abbreviations 9
4. Overview of Network Energy Savings Scenarios 11
   1. Deployment Scenarios 11
   2. Carrier On/Off Network Energy Savings 13
      1. Disabling all the component carriers (CCs) and RF bands used at the O-RU site. 13
      2. Disabling at least one of the multiple RF bands used at the O-RU site 15
      3. Disabling usage of one or more CCs within a band at the O-RU site. 16
   3. RF Channel Reconfiguration Network Energy Savings 17
   4. Active Low Power Mode 18
      1. Benefit and trade-offs 20
   5. TRX Control and Advanced Sleep modes (ASM) 21
5. Network Energy Savings KPIs and Figures of Merit 23
   1. Discussion of Energy Efficiency KPIs relevant to this NES report. 23
   2. Discussion of O-RU-specific KPIs relevant to Network energy Savings 25
      1. Expected O-RU or O-RU/DU Network energy Savings Percentage 25
      2. Diurnal O-RU power calculator 26
      3. Open-MOU Energy KPIs and requirements 28
      4. O-RU Power calculation tool 28
6. Mapping of low power modes to M-Plane or C-Plane commands 30
   1. Feature to Command mapping table 30
   2. Detailed discussion of command mapping 31
      1. Disabling all RF bands 31
      2. Disabling one or more bands within an O-RU 31
      3. Disabling one or more CCs in a band within an O-RU 31
      4. RF Channel Reconfiguration 31
      5. Active Low Power mode 32
      6. Advanced Sleep mode 32
7. O-RU Hardware changes required for NES support 32
   1. RF Processing Unit changes 32
   2. Digital Processing Unit and Timing Unit changes 32
   3. Energy Monitoring HW and data collection 33
      1. Exemplary O-RU Power Delivery Network Architecture 35
8. Annex A: NES-related components for Power Monitoring 37
9. Revision history 40

# List of figures

Figure 4-1 O-DU and O-RU architecture with interfaces 12

Figure 4-2: O-RU architecture 12

Figure 4-3: Energy Savings for O-RU Fully Disabled 14

Figure 4-4: Energy Savings for O-RU Band Disable 15

Figure 4-5: Energy Savings for O-RU CC Disable: two CCs active (top figure), and one CC active (bottom) 16

Figure 4-6 Active Low Power mode high level functional block diagram 20

Figure 5-1: O-RU diagram showing metrics for E2E latency, PRB count, and power consumption 24

Figure 7-1: Power monitoring timing 33

Figure 7-2: Exemplary O-RU Power Delivery Network support NES 35

Figure 7-3: Exemplary O-RU Temperature Sensor Architecture supporting NES 36

# List of tables

Table 4-1 O-RU Deployment options to which NES applies 13

[Table 4-2: Some of the actions of RF Channel Reconfiguration 11] 18

Table 5-1 O-RU NES Mechanisms and their impact 26

Table 6-1 NES features and mapping to M-Plane or C-Plane commands 30

Table 8-1: Catalog parts for input power monitoring 38

# Foreword

This Technical Report (TR) has been produced by O-RAN Alliance.

# Modal verbs terminology

In the present document "**shall**", "**shall not**", "**should**", "**should not**", "**may**", "**need not**", "**will**", "**will not**", "**can**" and "**cannot**" are to be interpreted as described in clause 3.2 of the O-RAN Drafting Rules [14] (Verbal forms for the expression of provisions).

"**must**" and "**must not**" are **NOT** allowed in O-RAN deliverables except when used in direct citation.

# Executive summary

This technical report describes functional procedures for Network Energy Savings, with focus on the O-RU. Energy savings KPIs and estimated power reductions are also presented. The mapping of energy savings to existing M-Plane and C-Plane commands is discussed, with gaps noted (i.e., new command capabilities requiring development in O-RAN WG4.) In follow-on versions, there will be elaboration on Advanced Sleep modes, and details on O-RU hardware and firmware impact will also be covered.

# Scope

The contents of the present document are subject to continuing work within O-RAN and may change

following formal O-RAN approval. Should the O-RAN Alliance modify the contents of the present document, it will be re-released by O-RAN with an identifying change of version date and an increase in version

number as follows: version xx.yy.zz where:

xx: the first digit-group is incremented for all changes of substance, i.e. technical enhancements, corrections, updates, etc. (the initial approved document will have xx=01). Always 2 digits with leading zero if needed.

yy: the second digit-group is incremented when editorial only changes have been incorporated in the document. Always 2 digits with leading zero if needed.

zz: the third digit-group included only in working versions of the document indicating incremental changes during the editing process. External versions never include the third digit-group. Always 2 digits with leading zero if needed.

The present document describes Network Energy Savings methods and requirements associated mainly with the O-RU. The O-DU or CU are referenced with respect to commands from these entities, or data exchanged between O-RU and O-DU pertaining to NES. Both TDD and FDD deployments are covered as well as FR1 and FR2.

The NES mechanisms described herein do not assume a shared O-RU architecture. Such an arrangement adds complexity to the low power control, as multiple O-DUs or O-CUs would be sharing a single O-RU. NES requirements and functionality in a shared O-RU scenario is a topic for future study.

# References

## Normative references

References are either specific (identified by date of publication and/or edition number or version number) or non-specific. For specific references, only the cited version applies. For non-specific references, the latest version of the referenced document (including any amendments) applies.

NOTE: While any hyperlinks included in this clause were valid at the time of publication, O-RAN cannot guarantee their long-term validity.

The following referenced documents are necessary for the application of the present document.

1. ORAN-WG7.DSC.0-V02.00 Technical Specification, 'Deployment Scenarios and Base Station Classes for White Box Hardware'.
2. 3GPP TR 21.905: "Vocabulary for 3GPP Specifications".
3. 3GPP TS 38.104: "NR; Base Station (BS) radio transmission and reception". (Rel-16.3.0)
4. ORAN-WG4.CUS.0-v04.00 Technical Specification, 'O-RAN Fronthaul Working Group Control, User and Synchronization Plane Specification'.
5. ETSI ES 202 706-1 V1.7.0 (2022-06), "Metrics and measurement method for energy efficiency of wireless access network equipment; Part 1: Power consumption - static measurement method"
6. O-RAN Architecture Description, O-RAN-WG1-O-RAN Architecture Description - v01.00.00
7. O-RAN WG6, Cloud Architecture and Deployment Scenarios for O-RAN Virtualized RAN.
8. ORAN-WG4.MP.0-v04.00 Technical Specification, WG4 O-RAN Management Plane Specification'.
9. O-RAN TIFG O-RAN End-to-End System Testing Framework v1.0.
10. O-RAN White Box Hardware Working Group Outdoor Macrocell Hardware Reference Design Specification
11. O-RAN.WG1.Network-Energy-Savings-Technical-Report-R003-v01.00
12. 3GPP TS 28.310 Technical Specification "Group Services and System Aspects; Management and orchestration; Energy efficiency of 5G", V17.4.0
13. ETSI ES 203 228, "Environmental Engineering (EE); Assessment of mobile network energy efficiency", V1.3.1
14. O-RAN Drafting rules: [https://oranalliance.atlassian.net/wiki/download/attachments/2203189326/O-](https://oranalliance.atlassian.net/wiki/download/attachments/2203189326/O-RAN.TSC.Drafting-Rules.0-v01.00.docx?api=v2)

[RAN.TSC.Drafting-Rules.0-v01.00.docx?api=v2](https://oranalliance.atlassian.net/wiki/download/attachments/2203189326/O-RAN.TSC.Drafting-Rules.0-v01.00.docx?api=v2)

1. ETSI TS 138 141-1, 5G; NR; Base Station (BS) conformance testing Part 1: Conducted conformance testing
2. https://oranalliance.atlassian.net/wiki/download/attachments/2336817208/O-RAN.WG1.Network- Energy-Savings-Technical-Report-R003-v02.00.pdf?api=v2

## Informative references

References are either specific (identified by date of publication and/or edition number or version number) or non-specific. For specific references, only the cited version applies. For non-specific references, the latest version of the referenced document (including any amendments) applies.

NOTE: While any hyperlinks included in this clause were valid at the time of publication, O-RAN cannot guarantee their long-term validity.

The following referenced documents are not necessary for the application of the present document but they assist the user with regard to a particular subject area.

[1] <https://telecominfraproject.com/wp-content/uploads/OpenRANTechnicalPriorityDocument-Rel3.xlsx>.

# Definition of terms, symbols and abbreviations

## Terms

For the purposes of the present document, the following terms apply:

**Active Mode reference power consumption:** this refers to the O-RU (or O-RU/DU combo box) power consumption while user PRBs are being transmitted or received. Unless otherwise noted, for a TDD

configuration we will define this to be the average O-RU power consumption for a continuous 75/25 DL/UL duty cycle, with allowance for PDCCH and PUCCH traffic as well as required symbol gaps. By default, it assumes that all available RF signal chains are enabled, for a given band, at the max bandwidth supported by the O-RU.

**Advanced Sleep Mode reference power consumption:** this refers to the O-RU or (O-RU/DU combo box) power consumption when configured in one of the four defined sleep modes SM0-SM3. Note that a given

O-RU may support only a subset of sleep modes SM0-SM3, or none at all. By default, the ASM reference power consumption is expressed in Watts, but a relative % reduction of power, vs the Active Mode

reference power consumption above, is also acceptable.

**Beam:** main lobe of a radiation pattern from an AAS BS

NOTE: For certain AAS BS antenna array, there may be more than one beam.

**Beamwidth**: In a radiation-pattern cut containing the direction of the maximum of a lobe, the angle

between the two directions in which the radiation intensity is one-half the maximum value, also called as half power beamwidth.

**Carrier aggregation:** aggregation of two or more NR or E-UTRA component carriers in order to support

wider transmission bandwidths. Within a band, component carriers can be adjacent (contiguous) or non- contiguous. If multiple component carriers are sent in different bands, this corresponds to inter-band

carrier aggregation.

**Carrier Frequency:** Center frequency of the cell.

**F1 interface:** The standard interface between an O-CU and an O-DUx specified in [8].

**Integrated architecture:** An architecture wherein the O-RUx and O-DUx are implemented on one platform. Each O-RUx and RF frontend are associated with one O-DUx and are connected to O-CU via F1 interface

**Split architecture:** An architecture wherein the O-RUx and O-DUx are physically separated from one another. A switch may aggregate multiple O-RUx (s) to one O-DUx. The O-DUx, switch and O-RUx (s) are connected by the fronthaul interface as defined in [4].

**Transmission Reception Point (TRxP**): Antenna array with one or more antenna elements available to the network located at a specific geographical location for a specific area.

**Occupied Bandwidth (OBW)**: It refers to the bandwidth occupied by the base station when operated, defined by the sum of the active bandwidths of the band allocation(s) operated. As defined by 3GPP TS 34.121 section 5.8, occupied bandwidth is the bandwidth containing 99% of the total integrated power of the transmitted spectrum, centered on the assigned channel frequency. The bandwidth between the 0.5% power frequency points is the occupied bandwidth.

**Instantaneous Bandwidth (IBW)**: It refers to the bandwidth in which all frequency components can be simultaneously analyzed. It is defined by the frequency boundaries of the operating band(s).

**Frequency Range**: It refers to bandwidth defined by the frequency range within which the Base Station can be operated, defined by the band-pass filter of the BS, e.g., 3.4 - 3.8 GHz (400 MHz)

**gNB**: A RAN node providing NR user plane and control plane protocol terminations towards the UE, and connected via the NG interface to the 5GC

**Frequency Band:** A designated frequency range for the operation of the base station and the UE radios. 5G NR frequency bands are divided into two different frequency ranges: Frequency Range 1 (FR1) that mainly includes sub-6GHz frequency bands, some of which are bands traditionally used by previous standards but has been extended to cover potential new spectrum offerings from 410MHz to 7125MHz; Frequency Range 2 (FR2) that includes the FR2-1 frequency bands from 24.25 GHz to 52.6 GHz, as well as the FR2-2 bands covering 52.6 to 71 GHz. Bands in this millimeter wave range have shorter range but higher available bandwidth than bands in the FR1.

**Fronthaul Gateway (FHGW)**: A fronthaul gateway is a physical entity that is located between a distributed unit and one or more radio units where it distributes, aggregates, and/or converts fronthaul protocols

between the distributed unit and multiple radio units.

## Symbols

For the purposes of the present document, the following symbols apply:

NRB Transmission bandwidth configuration, expressed in units of resource blocks (for E-UTRA and NR)

## Abbreviations

For the purposes of the present document, the [following] abbreviations [given in ... and the following] apply:

Fronthaul interface split option as defined by O-RAN WG4, also referred to as 7-2x 3GPP Third Generation Partnership Project

5G Fifth Generation [Mobile Communications]

5GC 5G Core

AAS Active Antenna System

ACLR Adjacent Channel Leakage Ratio

ACS Adjacent Channel Selectivity

ADC Analog to Digital Converter

AFE Analog Front End

AFU Antenna Filter Unit

ASM Advanced Sleep Mode(s)

BF Beamforming

BMCA Best Master Clock Algorithm

BPSK Binary Phase Shift Keying

BS Base Station

C2C Chip to Chip Interface

CA Carrier Aggregation

CAL Calibration

CC Component Carrier

CFR Crest Factor Reduction

CLK Clock

CPRI Common Public Radio Interface

CU Central Unit

DAC Digital to Analog Converter

DDC Digital Down Conversion

DDR Double Data Rate

DFE Digital Front End

DL Downlink

DPD Digital Pre-Distortion

DSP Digital Signal Processor

DU Distributed Unit

DUC Digital Up Conversion

eCPRI Enhanced Common Public Radio Interface eNB e-NodeB=LTE Base Station

gNB g-NodeB=NR Base Station

EMC ElectroMagnetic Compatibility

ES Energy Savings

EVM Error Vector Magnitude

FAPI Functional Application Platform Interface

FEC Forward Error Correction

FFT Fast Fourier Transform

FH Fronthaul

FHGW Fronthaul Gateway

FHGWx?y Fronthaul Gateway that can translate FH protocol from an O-DUx with split option x to an O-RUy with split option y, with currently available option 7-2?8.

FHM Fronthaul gateway with no FH protocol translation, supporting an O-DU with split option x and an O-RU with split option x, with currently available options 6?6, 7-2?7.2, 8?8

FPGA Field Programmable Gate Array

GbE Gigabit Ethernet

GPP General Purpose Processor

IEEE Institute of Electrical and Electronics Engineers IMD InterModulation Distortion

IP Internet Protocol

I/O Input/Output

JTAG Joint Test Action Group

L1 Layer 1, also referred to as PHY or Physical Layer

L2 Layer 2, also referred to as Data Link layer in OSI model L3 Layer 3, also referred to as Network layer in OSI model LLS Lower Layer Split

LNA Low Noise Amplifier

LTE Long Term Evolution

MAC Media Access Control

MIMO Multiple Input Multiple Output mMIMO Massive Multiple Input Multiple Output MCP Multi-Chip Package

nFAPI Network Functional Application Platform Interface NES Network Energy Savings

NC-CA Non-contiguous Carrier Aggregation NG Next Generation

NR New Radio

OAM Operations, Administrations and Maintenance O-CU O-RAN Centralized Unit as defined by O-RAN O-DU O-RAN Distributed Unit as defined by O-RAN

O-DUx A specific O-RAN Distributed Unit having fronthaul split option x where x may be 6, 7-2 (as defined by WG4) or 8

O-RU O-RAN Radio Unit as defined by O-RAN

O-RUx A specific O-RAN Radio Unit having fronthaul split option x, where x is 6, 7-2 (as defined by WG4) or 8, and which is used in a configuration where the fronthaul interface is the same at the O-DUx

PA Power Amplifier

PCIe Peripheral Component Interface Express

PDCP Packet Data Convergence Protocol

PHY Physical Layer, also referred as L1

PLL Phase Locked Loop

POE Power over Ethernet

QAM Quadrature Amplitude Modulation

QPSK Quadrature Phase Shift Keying

RAN Radio Access Network

RF Radio Frequency

RFIC Radio Frequency Integrated Circuit RFSoC Radio Frequency System on Chip RLC Radio Link Controller

RRC Radio Resource Controller

RU Radio Unit as defined by 3GPP

RX Receiver

SDU Service Data Unit

SFP Small Form-factor Pluggable

SFP+ Small Form-factor Pluggable Transceiver SoC System on Chip

SPI Serial Peripheral Interface

SSB Synchronization Signal Block

ST Section Type

TR Technical Report

TS Technical Specification

TX Transmitter

UL Uplink

WG Working Group

# Overview of Network Energy Savings Scenarios

The NES methods and requirements documented here can, in general, apply to all forms of O-RU

deployment. Some specific Network Energy savings mechanisms may, however, not be relevant to certain O-RU architecture deployments.

## Deployment Scenarios

An O-DU can interface to multiple O-RUs, as shown in the figure below. When Network Energy Savings modes are applied based on traffic reduction, as is often the case, both the O-DU and O-RU power consumption can be expected to decrease, but this document will focus on O-RU Network Energy Savings.

eNB/gNB

O-DU

LLS-C LLS-U

LLS-C LLS-U

...

O-RU

O-RU

#### Figure 4-1 O-DU and O-RU architecture with interfaces

The document ORAN-WG7.OMAC.HRD-v01.00, which provides the Hardware Reference Design spec for a Split 7-2 Outdoor Macro Cell, gives the figure below in section 2.3.1. Generally speaking, all of the sub-blocks below are subject to Network Energy Savings as a function of traffic or operational scenarios.

![](../assets/images/b2e1da7ee69e.jpg)

#### Figure 4-2: O-RU architecture

The NES techniques described herein can apply to FR1 and FR2 deployments. In general, the methods for energy savings can apply to both TDD and FDD. The FDD forms will be inherently different, however, and will be described in a separate section.

|  |  |
| --- | --- |
| Cell type | OMAC, OMC, and EMC |
| Frequency Band | Any valid FR1 or FR2 band |
| Instantaneous Bandwidth | As documented in OMC, OMAC, and EMC HRDs |
| Occupied Bandwidth | As documented in OMC, OMAC, and EMC HRDs |
| Inter site distance | As documented in OMC, OMAC, and EMC HRDs |
| Antenna Configuration | 4T4R ~ 64T64R |
| Fronthaul Type | O-RAN FH, Split Option 7.2x CAT-A and CAT-B Radio Units |
| Midhaul | Split Option 2 |

#### Table 4-1 O-RU Deployment options to which NES applies

## Carrier On/Off Network Energy Savings

From WG7 point of view, carrier Off/On means disabling or enabling a tx/rx Array carrier. The feature aims at reducing O-RU power consumption by switching off/on one or more carriers of the radio access network.

Carrier switch off/on has two modes of operation: (i) Energy savings mode in which the radio's power amplifiers remain with minimum current draw, and (ii) complete switch off (M-Plane enabled).

In the frequency domain, there are at least three forms of carrier switch-off:

1. Disabling all the component carriers (CCs) and RF bands used at the O-RU site.
2. Disabling at least one of the multiple RF bands used at the O-RU site
3. Disabling usage of one or more CCs within a band at the O-RU site.

All of the above actions shall allow for power reductions in the O-RU, with item (a) realizing the greatest reduction.

### Disabling all the component carriers (CCs) and RF bands used at the O-RU site.

In this scenario, the cell or cell sector is disabled for some duration, e.g., several hours, and does not transmit or receive an RF signal for any of its supported Radio Access Technologies (RATs). It is still

necessary for the O-RU to keep at least some of the fiber or wired links to the O-DU active, in order to receive M-Plane messages to resume operation, or report other management parameters.

During this O-RU\_Full\_Disable state, the actual power savings will be vendor-dependent. The figure below provides an exemplary depiction of which O-RU sub-blocks would be in the lowest power states.

![](../assets/images/a9dcf3707f6c.jpg)

#### Figure 4-3: Energy Savings for O-RU Fully Disabled

The descriptors "Lowest Power State" and "Lower Power state" relate to the degree of functionality of each sub-block, which corresponds to the level of energy savings possible. Each sub-block will now be discussed:

* + - 1. RF Processing Unit. Since the O-RU is in a state where all carriers for all RATs are disabled, no RF functionality is needed. Thus all RF blocks can be in the lowest power state. Specific supply rails from the Power Unit may potentially be disabled.
      2. Digital Processing Unit. In this context, the Digital Processing Unit relates to functionality directly associated with the RF signals, such as DFE, DPD, DDC/DUC, etc. Therefore, it can also be put into the lowest power state. Some supply rails may be disabled, or lowered in voltage to support retention of digital content.
      3. Power Unit. As mentioned above, some supply rails can be disabled, or reconfigured to a more efficient mode associated with lower load currents.
      4. Timing Unit. Power consumption may be lowered by disabling buffers or PLLs used to generate clocks for the RF Processing and Digital Processing Units. O-RU timing and frequency

synchronization, as per IEEE 1588, should still be preserved.

* + - 1. eCPRI Unit. C-Plane and U-Plane message handling functionality can be disabled, but M-Plane message processing support will still be needed.
      2. O-RAN FH. Some of the fiber link optical modules (e.g., QSFP) can be disabled since user plane data capacity is reduced to zero. The corresponding PHY transceivers that connect to the QSFPs can also be disabled. If instead wired Ethernet links are used instead of fiber, these unneeded Ethernet links can be put into one of the pre-defined Ethernet PHY low power modes.

The wake-up time for this O-RU\_Full\_Disable state would be the longest of any of the Carrier Disable

modes, since all RF-related functionality is disabled; C-Plane message processing may also be disabled. The wake-up time needed to get at least some of the carriers back on the air is expected to take 10s or 100s of msec.

### Disabling at least one of the multiple RF bands used at the O-RU site

In this O-RU\_Band\_Disable scenario, the RF functionality for at least one of the operational bands is disabled. RF traffic on the other operational bands would continue, but it is anticipated that overall user traffic would be less, as this would be the normal pre-condition for disabling one of the RF bands.

![](../assets/images/68c6d56b7d9c.jpg)

#### Figure 4-4: Energy Savings for O-RU Band Disable

The diagram above shows one example scenario where, for an O-RU supporting NR TDD bands n78 and n41, one of the bands (n78 in the diagram) is disabled during lower traffic scenario. The architecture shown has dedicated XCVRs for n78 and n41, but it could be one transceiver with only the n78 RF paths disabled.

In the figure, the n41 XCVR and associated RF front-end is shaded red to indicate full power operation. The n78 RF portion is shaded green to indicate it's in its lowest power state. The Digital Baseband Unit is assumed to be one SOC or board that services both RF bands, and is shaded yellow to indicate it's

processing less digital traffic. In another form, there could be separate Digital Baseband Units for each RF band, in which case the n41 Baseband would be shaded red, and the n78 one shaded green.

The recovery time to bring the disabled RF band back on the air is expected to be 10s of msec, but details depend on what sub-blocks were disabled in the RF XCVR. Data traffic can continue on the operational band, while the other band is being re-activated.

### Disabling usage of one or more CCs within a band at the O-RU site.

In this O-RU\_CC\_disable scenario, the number of active component carriers (CCs) in a band are reduced, but the band still stays in operation. For example, as overall user traffic abates in the evening, the O-RU configuration could be modified to use two 50 MHz CCs instead of four.

![](../assets/images/0789b22e8618.jpg)![](../assets/images/4e56799add35.jpg)

#### Figure 4-5: Energy Savings for O-RU CC Disable: two CCs active (top figure), and one CC active (bottom)

The two figures above show a case where two CCs are used initially, then the O-RU reconfigures to use only one CC when user traffic diminishes. In the top figure, all sub-blocks are operating at the nominal power

level required for two CC operation. In the lower figure, the digital baseband and XCVR are in a lower

power state, as fewer CCs are being processed. The actual power savings for the digital baseband and XCVR block depend on implementation details such as which sub-component performs CC combining and

splitting, whether contiguous or non-contiguous CA is used, etc.

Note that, in the RF front end diagram in the lower portion, all sub-components are shown as red except for the PA. The other components will draw nearly the same power regardless of how many CCs are being sent. The RF PA, however, would be operating at approximately 3 dB lower output power (in the example above, and assuming full RB allocation for the two CC and one CC cases), so some reduction in energy consumption is expected.

The recovery time to re-activate the disabled CCs requires further study. A closely related aspect is whether data traffic can continue on the already active CCs while the other CCs are being re-enabled. If so, then more time can be allowed to re-activate the dormant CCs. The details will be implementation dependent.

## RF Channel Reconfiguration Network Energy Savings

The scope of RF Channel reconfiguration includes following actions

1. O-RU Array Rx/Tx ON/OFF e.g., 64Tx/Rx to 32Tx/Rx
2. Modify SU/MU MIMO spatial streams or data layers.
3. Modify number of SSB beams.
4. Modify O-RU Antenna Transmit power

In mobile networks mMIMO radio unit has integrated antenna system that offers Single/Multiuser MIMO and beamforming capabilities to enhance cell capacity & throughput. The beamforming is achieved by exciting the array elements with appropriate weights. With this technique multiple uncorrelated beams can be generated, through which multiple data streams can be transmitted/received to/from UE during high- capacity requirement scenarios. In low-capacity scenario, i.e., when the expected traffic volume or number of connected users are lower than the configured threshold, energy savings can be achieved by reducing the power consumption of O-RUs by switching off certain Tx/Rx RF channels that are connected to the respective mMIMO array antenna elements/sub array. For example, 32 out of 64 RF channels connected to Tx/Rx Arrays of an O-RU can be switched off in a digital mMIMO architecture and correspondingly the number of spatial layers and SSBs can be reduced. The procedure (involvement of respective O-RAN

interfaces) of the RF Channel Reconfiguration depends on the management architecture model (hybrid or hierarchical) and the deployment option. The off/on switch decision can be made by an AI/ML model within the inference host deployed at the non-RT RIC (denoted as deployment Option 1), or at the Near-RT RIC (denoted as deployment option 2) [11]. Among others the AI/ML models may include prediction of future

traffic, user mobility, and resource usage and may also predict expected energy efficiency enhancements, resource usage, and network performance for different ES optimization states.

The main aim of RF Channel Reconfiguration is to perform O-RU Tx/Rx Array selection. However, Tx/Rx Array reselection may require modifying the maximum number of spatial streams, the number of SSB beams or

the O-RU Antenna transmit power. Hence the overall scope of RF Channel Reconfiguration includes the actions listed in Table 4.3-1.

|  |  |  |
| --- | --- | --- |
| Action Name | Explanation | Possible Implementation Method |
| O-RU Tx/Rx Array selection | O-RU Tx/Rx Array selection means  switching off certain Tx/Rx Arrays or Array elements to reduce power consumption of O-RU.  Reselecting Rx/Tx Arrays may impact cell coverage. | * O-RU reports all supported Tx/Rx Array selections to O-DU or to SMO via Open FH M-Plane. * Based on traffic load and user distribution the Non-RT/Near RT RIC will optimize Tx/Rx Array   selection. |
| Modification of number of SU/MU MIMO spatial  streams or data layers | The maximum number of spatial  streams may depend on the O-RU Tx/Rx Array selection, and it may be necessary | - O-RU may report the maximum number of supported spatial  streams for each Tx/Rx Array |

|  |  |  |
| --- | --- | --- |
|  | to be modified along with a new Tx/Rx Array selection.  A reduction of the number of spatial  streams without Tx/Rx Array selection is not excluded as in certain scenarios the energy consumption of O-RU and/or O-  DU may be reduced by turning off  certain processing units of FPGA/GPUs, by running at a lower clock speed or turning off CPU/GPU cores along with reduced processing requirements. | selection. For example, 16 spatial streams for 64 Tx/Rx and 8 spatial Layers for 32 Tx/Rx.  - Based on the traffic load and the user distribution the O-RU will be instructed about the maximum number of spatial streams to be used. Hence, the O-RU and/or O- DU may be able turn off certain processing units that would be required to processing a higher number of spatial streams. |
| Modification of the number of SSB beams | The number of SSB beams may depend on the O-RU Tx/Rx Array selection and the number of spatial streams. Hence it may be necessary to adapt the number of SSB beams. | - The number of SSB beams is  controlled by the O-DU. Hence the O-DU can be instructed via Non- RT/Near-RT RIC to set the number of SSB beams based on Tx/Rx  Array selection. |
| Modify the O-RU Antenna Transmit power | The maximum O-RU total transmit power may depend upon the O-RU Tx/Rx Array selection; hence it may need to be modified along with Tx/Rx Array selection to compensate for reduced coverage in the downlink. | - The O-RU power is configured per Tx Array. Hence, the modification may not be required when changing the O-RU Antenna  selection from 64 Tx/Rx to 32 Tx/Rx. However, if possible, O-RU Tx power can be increased to compensate for reduced coverage. |

#### Table 4-2: Some of the actions of RF Channel Reconfiguration [11]

## Active Low Power Mode

Most of the Network Energy Savings mechanisms described so far lead to an explicit or implicit decrease in peak capacity due to the disablement of component carriers, MIMO/mMIMO data layers, number of antenna beams, and RF channel reconfiguration. These mechanisms are justified due to a decrease in

network traffic or a change in the network operating environment. Another energy saving method i.e., "Active Low Power mode" can be employed by considering the reduction of the active mode power of the O-RU components, based on determining from network conditions and performance KPIs that such a change will not be deleterious to overall network performance. The rated O-RU traffic capacity would not change as all current active RF chains remain fully functional. Some examples of Active Low Power mode reductions are:

1. Reduce RF transmitter chain power consumption at least in multiple Watts, at the expense of relaxed ACLR, based on determining that nearby channels' performance would not be impacted by such a parametric change in the transmit chain.
2. Reduce RF receiver front-end power consumption at least in hundreds of milli Watts, at the expense of relaxed front-end linearity (IP3), based on determining that average RX input levels have

decreased. The average RX input levels can decrease due to reduced uplink traffic and/or decreased presence of "rogue" interfering signals.

1. Reduce RF receiver power consumption, at the expense of relaxed adjacent channel selectivity (ACS), based on determining that RF blockers are not present in sufficient magnitude to warrant full ACS performance.

To determine if the RF chain power reductions have network performance impact, data exchange with the upper O-DU and CU layers may be needed. For example, the network would assess whether the O-RU power consumption reduction caused any degradation to the following KPIs, for both DL and UL traffic

directions:

* 1. HARQ retry rates
  2. Average MCS used
  3. Average throughput per RB sent
  4. Average energy per bit,

If it is determined that these metrics were not impacted in a statistically significant way, then the lower power O-RU mode could be considered safe for continued operation. If, however, a degradation in these metrics was observed, then the RF chain configuration would revert to the full performance/default mode, or an intermediate mode. The KPIs would be assessed independently for UL and DL directions, as the low power modes may be applied separately to the RX and TX signal flows. For an O-RU supporting multiple bands, these Active Low Power mode power reductions can be applied independently to each band.

The figure below shows the high-level functional block diagram of Active Low Power (ALP) mode

implementation. Based on sensing RF and traffic metrics, the O-DU or CU would command the O-RU to enter a lower power mode for the RX or TX paths, or both. Performance data is periodically exchanged between O-RU and CU/DU to assess whether the power reductions negatively impact performance data. Some of the initial measurements to determine if the low power modes could be performed within the O-

RU itself, e.g., average RX input power, incidence rate of signal overload events, etc. While normally the O- DU would command the O-RU to enter the Active Low Power mode, the O-RU could potentially engage this mode autonomously. This is certainly true in the case of an integrated O-RU/DU where the combined function box could autonomously determine network impact.

![](../assets/images/641b4b34d144.png)

#### Figure 4-6 Active Low Power mode high level functional block diagram

### Benefit and trade-offs:

* + - 1. A significant benefit of Active Low Power mode is that, as the name implies, power is reduced while DL or UL traffic is active. Thus, the power reduction is not directly dependent on decreased user

traffic.

* + - 1. Another benefit is that the network conditions supporting the use of Active Low Power (ALP) mode would be expected to persist for several hours or even days. For example, late at night, the average user traffic would decrease, leading to statistically lower DL and UL RF levels being sent or received. On weekends, smaller "booster cells" associated with downtown business districts would be shut

down or process much less traffic, potentially allowing ALP mode to be applied during the whole weekend.

* + - 1. The decisions process and feedback mechanisms to support ALP mode are very amenable to AI and Machine Learning algorithms, as well as statistical hypothesis testing methods.

One drawback is that the procedure is somewhat empirical in that any network performance

degradation cannot necessarily be predicted in advance. Thus, some short-term network impact could be seen when Active LP mode is first engaged, but the AI/ML "tuning" procedures could prevent this

from happening in the long run. Additionally, network simulation models can also be used to predict the likelihood that any O-RU mode change would cause performance degradation.

## TRX Control and Advanced Sleep modes (ASM)

In initial MVP-C proposals, Advanced Sleep modes were suggested as real-time messages to activate low power modes for durations on the order of multiple frames or slots. As per NES development in WG4,

there are now four sleep modes, denoted as SM0, SM1, SM2, and SM3. An O-RU may support all of these sleep modes, a subset, or none at all.

The O-RAN CUS-plane spec, Rel. 13, incorporates new features and commands enabling TRX Control and Advanced Sleep modes. These were developed in WG4 NES Phase 2 sessions during the period January through July 2023. The released WG4 CUS-plane spec is available at

<https://orandownloadsweb.azurewebsites.net/specifications>

The NES ST4 (Section Type 4) commands are issued by the O-DU and processed by the O-RU; the ST8 (Section Type 8) command is sent in the opposite direction. The table below summarizes the salient features of these commands.

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **NES**  **command- Section type** | **Cmd Scope** | **Sleep depth options** | **Sleep Duration** | **Wake-up time** | **Comment** |
| TRX\_control- ST4 | ARRAY | SM0-  1  SM3 | 28  1 to (2 -1)  slots, or  2  Indefinite | 32  1 to (2 -1)  usec for each of  3  SM0-SM3 |  |
| Advanced Sleep Mode (ASM)- ST4 | ARRAY, CARRIER, O-RU | SM0-  1  SM3 | 28  1 to (2 -1)  slots, or  2  Indefinite | 32  1 to (2 -1)  usec for each of  3  SM0-SM3 |  |
| Ready-ST8 | Any of Above | Any of Above | Any of Above | Any of above | Required only if wake-up time is minimum rather than guaranteed |

#### Table 4-2: WG4 CUS plane command summary table

1. Note 1: An O-RU may implement any subset of SM0-SM3, including all or none.
2. Note 2: An indefinite sleep duration is terminated by a subsequent wake-up command.
3. Note 3: Wake-up times are pre-defined, and read from o-ran-module-cap.yang. They can be guaranteed, or minimum. In the latter case, ST8 Ready message is used to tell O-DU that wake-up is complete.

A brief discussion of the WG4 NES changes, relative to the Rel. 12 CUS-plane spec, is provided below:

* 1. In section 7.2.9.2.3 of the Rel. 13 CUS-plane spec, the TRX CONTROL Section Type 4 command is defined, with detailed description in sections 7.4.6 and 16.2. This command supports only ARRAY- COMMAND scope. It provides for a portion of the targeted antenna array to be put into one of the four sleep modes described below.
  2. In section 7.2.9.2.4, the Advanced Sleep Mode (ASM) Section Type 4 command is defined, with detailed description 7.4.6 and 16.3. The scope of an ASM command can be an antenna array (ARRAY-COMMAND scope), an array carrier (CARRIER-COMMAND scope), or the entire O-RU (O-RU- COMMAND scope).
  3. In section 16.1, a table of four sleep modes SM0-SM3 is shown. These command names apply to both TRX-CONTROL and ASM commands, but the wake-up times will vary depending on the target of the command. Below is the table included in v13 CUS plane spec, section 16.1.

|  |  |  |  |
| --- | --- | --- | --- |
|  | **TRX CONTROL wake-up duration** | **ASM wake-up duration** | **NOTE** |
| sleep mode 0 | TRXC-mode0-wake-up-duration | ASM-mode0-wake-up-duration |  |
| sleep mode 1 | TRXC-mode1-wake-up-duration | ASM-mode1-wake-up-duration | L |
| sleep mode 2 | TRXC-mode2-wake-up-duration | ASM-mode2-wake-up-duration | M |
| sleep mode 3 | TRXC-mode3-wake-up-duration | ASM-mode3-wake-up-duration | N |
| NOTE: within clause 16 the shorter terms L, M, and N are sometimes used for these durations (either command) | | | |

#### Table 4-3: WG4 CUS plane command Sleep mode wake-up duration table

* + 1. It is required that the wake-up times comply with the following inequality: Sleep Mode 0 wake-up duration <L<M<N . Accordingly, it is expected that, for the same command object, ASM mode 3 saves the most power, and ASM mode 0 saves the least. (This is not a mandatory requirement, however.)
    2. Note that, for any of the four sleep modes, applied as either a TRX\_CONTROL or ASM command, the object of the command (array, carrier, or entire O-RU) will become non- functional and not be able to receive or transmit RF signals.
    3. The amount of power saved in each sleep mode is O-RU implementation dependent.
  1. The Section Type 8 command "ready" field is used by the O-RU to indicate to the O-DU that the wake-up procedure is completed, in the case where the wake-up time is a minimum, rather than guaranteed. The minimum duration mode may apply for cases where the wake-up time may be extended by the need for perform a sub-system recalibration, e.g., if the temperature varied by a certain amount during the sleep interval.
  2. In section 16.12, an Emergency wake-up command is defined. This applies when a TRX\_CONTROL or ASM sleep mode command is issued for a defined duration, but the O-DU later determines that it must wake-up the O-RU earlier. In this case, an M-Plane command is issued.

More details regarding the TRX CONTROL and ASM Sleep mode commands are provided in sections 16.6 through 16.13 of the latest CUS-plane specification. Some practical examples are given in section 16.11.

# Network Energy Savings KPIs and Figures of Merit

In section 2.1, the listed references [5], [12], and [13] all describe KPIs relating to Network Energy Efficiency, and associated measurement methods. Generally speaking, the Energy Efficiency equation has the

following general form:

**Equation 5-1:** Network\_efficiency\_KPI = (Network\_parameter/Energy\_Consumption)

where both Network\_parameter and Energy\_Consumption are measured over a prescribed time interval. The convention is that "larger is better", i.e., the Network\_parameter should be as high as possible with Energy Consumption as low as possible.

Also, the scope of these energy metrics is typically the entire network, e.g., the gNB, backhaul, core

network, and the link from the core network to the Internet or Cloud network. In this report, however, we will focus on KPIs pertaining to the O-RU, whenever possible. (Some KPIs may not be easy to measure at an O-RU level.)

## Discussion of Energy Efficiency KPIs relevant to this NES report.

In section 5.3 of [13], three mobile network KPIs are discussed, relating to total user data volume, coverage area, and latency. The most direct measure is the KPI relating to data volume:

**Equation 5-2:** Data\_energy\_efficiency (DEE) =

(Total\_user\_data\_volume/Total\_energy\_Consumption)=(DVMN/ECMN) where

DV=User Data Volume (both UL and DL), EC=Energy Consumption, and MN= Mobile Network.

An O-RU-oriented version of this metric would measure only the O-RU energy consumption as well as the user data passing through the O-RU. While the O-RU energy consumption can easily be measured, it is not as straightforward to measure the O-RU data volume. This would require counting the PDSCH and PUSCH RBs sent, while also knowing the MCS used for each. HARQ retry RBs would also have to be accounted for.

It is possible to make some reasonable assumptions regarding the HARQ\_retry RBs, as the MCS adjustment procedure in LTE and NR is designed to achieve a certain retry%, e.g., 10%. Regarding the MCS, with an integrated O-DU/O-RU deployment, the user downlink data volume is known since the O-DU function

receives the actual user data units (PDUs). Based on these observations, we propose the following O-RU- centric Data Energy Efficiency metric:

**Equation 5-3:** Data\_energy\_efficiency\_RU (DEERU) =

(Total\_num\_PRBs/Total\_energy\_ConsumptionRU)=(PRBVRU/ECRU) where PRBVRU is the volume of PRBs sent or received by the O-RU in a certain observation interval, and ECRU is the energy consumption of the O-RU in that interval. The correspondence between the PRB volume (PRBVRU) and the actual user data will be the subject of further study.

Another KPI given in [13] is the Latency energy efficiency:

**Equation 5-4:** Latency\_energy\_efficiency (LEE) =

1/(Avg\_end\_to\_end\_latency\*Total\_energy\_Consumption)=1/( Te2e \*ECMN) where Te2e is the average latency for user data packets traversing the network from the radio to the Internet. Note that both terms are in the denominator, since these KPIs follow the rule "larger is better".

An O-RU-specific version of this metric is proposed:

**Equation 5-5:** Latency\_energy\_efficiency\_RU (LEERU) =

1/(Avg\_end\_to\_end\_latencyRU\*Total\_energy\_Consumption\_RU)=1/(Te2e\_RU \* ECRU) where Te2e\_RU is the average latency for user data packets flowing through the O-RU in a reference observation interval, and

ECRU is the energy consumption of the O-RU in that interval. The O-RU latency in the DL direction would be measured as the latency between when a user PRB arrives over the fiber link, in the form of an O-RAN User Plane data message, to the time that the corresponding RF I/Q data is sent out the TX antenna. Similarly, O- RU latency in the UL direction would be measured as the time between received RF I/Q samples at the antenna to corresponding PRB sent via User Plane message to the fiber.

**Equation 5-6** DL Energy Efficiency = Total\_RF\_pwr\_into\_antennas/Total\_O-RU\_pwr\_consumption

which would be measured during symbols where 100% of the RBs are transmitted. The KPI is adopted from the Open RAN MOU requirements [17] as discussed in section 5.2.3. The numerator quantity could be

interpreted as the conducted RF power fed to the antenna port, for a BS Type 1-C interface as described in section 4.3.1 of [3], or as radiated power measured at the Radiated Interface Boundary (BS Type 1-H as per 4.3.2 of [3]).

Measurement of the total RF pwr into the antennas cannot practically be performed during live operation. Therefore, it would either be:

1. measured in a controlled laboratory environment, with the value stored in each O-RU's non-volatile memory, or
2. declared as the rated RF power for the O-RU. A single, fixed number would be used for each O-RU, but it shall be consistent with lab measurements for a sample population of O-RU.

![A diagram of a computer  Description automatically generated](../assets/images/2c957694a18a.jpg)

#### Figure 5-1: O-RU diagram showing metrics for E2E latency, PRB count, and power consumption

In Figure 5-1 above, the relevant O-RU metrics associated with the latency, PRB traffic count, and O-RU power consumption are shown. The figure shows a -48V powered O-RU but alternative sources such as AC

or +12V supply inputs are possible. The O-RU power consumption can be measured at the -48V input using the power monitoring unit shown above. The DL and UL PRBs could also be monitored via PRB counters in the digital processing unit, or the O-DU could keep a record of allocated DL and UL PRBs. With an

integrated O-DU, user data packets could be monitored, which will be a more direct measurement than PRBs.

While the end-to-end latency (shown above for DL traffic case) is easy to visualize, it may not be easy to measure in practice. More likely it would be characterized by design.

## Discussion of O-RU-specific KPIs relevant to Network energy Savings

Here we provide a general discussion of the attributes or parameters associated with a given Network Energy saving mechanism. These may or may not impact the energy efficiency metrics discussed in the previous section.

### Expected O-RU or O-RU/DU Network energy Savings Percentage

The basic expectation is that the Network Energy Savings methods described in section 4 all will reduce O- RU power consumption. The amount of savings will be implementation dependent, and O-RU or O-RU/DU vendors can differentiate their offerings by the degree of savings offered.

Even so, it is useful to state the amount of energy savings or power reduction expected by each method, as a percentage of some reference value of energy or power consumption.

The Carrier On/Off methods of Section 4.2 and the RF Channel Reconfiguration procedures of Section 4.3 will all reduce the Active mode reference power consumption of the O-RU, which is defined in section 3.1

for TDD mode as the average O-RU or O-RU+DU power for a 75/25 DL/UL symbol ratio, with no symbol gaps other than those needed for UE timing advance.

The following table summarizes the various Phase 1 Energy Savings mechanisms, and their impact on the O- RU sub-blocks. In the last column, a rough estimate of total O-RU % power savings is offered.

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **NES**  **Mechanism** | **Traffic Capacity Impact** | **Wake- up**  **Latency** | **Traffic**  **Disruption during re- activation of disabled resources** | **% Energy Savings range vs. Active Mode Ref. Power Consumption** | **Comment** |
| **All RF** | No user | 100s of | N/A (already no | 80-99% |  |
| **carriers** | Data | msec | traffic) |  |
| **shutoff** | traffic | or |  |  |
|  |  | several |  |  |
|  |  | secs |  |  |

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **RF Band shutoff** | Yes1 |  | No | 40-50% | Entire front end for disabled RF band can be put in very low power state |
| **CC shutoff within a band** | Yes1 |  | FFS | Few % | Limited reduction in RF Front-end power; main power reduction will be via reducing JESD bandwidth and DUC/DDC filtering |
| **RX/TX**  **Array order reduction** | Some  impact2 | msecs or 10s of msec | Likely | 10s of % | Reducing number of RF front-end chains will directly reduce front- end power, which is dominant power consumer for medium and wide-area base stations |
| **Reduced # of MIMO spatial layers** | Likely |  |  | Unclear | Any change in # of antennas required could be offset by need for additional data symbols in  time domain |

#### Table 5-1 O-RU NES Mechanisms and their impact

Note 1: Traffic capacity impact should be directly related to the amount of RF spectrum removed from service.

Note 2: Traffic capacity impact depends on specifics of RF array re-configuration, e.g., reduction in # of beams could lead to reduced antenna gain, coverage range and DL/UL MCS utilized.

### Diurnal O-RU power calculator

In references [5] and [15], methods for characterizing an NR FR1 base station power consumption in a defined set of test conditions are given. The base station activity model allows for three different loading states: (a) Low Load, (b) Medium Load, and (c) Busy Hour load. Additionally, as per Annex E of [5], user

traffic is represented as a percentage of available PDSCH resources, and PUSCH is not explicitly accounted for. While these procedures are useful for measuring a candidate O-RU in a controlled lab environment, without having to generate simulated UE PRACH or PUSCH traffic, it may not fully represent the real-world network environment.

For actual network scenarios, we propose an O-RU diurnal energy calculator based on the actual Downlink, Uplink, and SM0-SM3 power state percentages. The general format is shown in the table below. As energy cost per kW-hr may vary versus time of day, it is also shown as a variable. The daily totals of interest will be total energy consumed, and total energy cost. Average time spent in each of the power states can also be computed. This power compute framework has multiple benefits:

1. Initially, during O-RU or network development, existing models of network traffic can be used to predict DL and UL percentages, with blank symbol periods then allocated to one of the four

Advanced Sleep Modes SM0-SM3. Based on O-RU design targets for the different power states, total daily energy usage can be computed accordingly, along with trade-offs of network latency as a function of each sleep mode.

1. Later, in actual deployment, O-RU energy metrics can be captured in real time, along with the power state percentages[1], and uploaded periodically to the upper network management functions. AI and Machine Learning techniques can be used to tune the network sleep mode behavior so as to

minimize total energy cost, while still achieving acceptable network latency, user perceived throughput, and other network performance metrics.

|  |  |  |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| **Duration** | **DL %** | **UL %** | **SM0 %** | **SM1 %** | **SM2%** | **SM3%** | **Energy usage**  **(kW-hr)** | **Energy Cost per**  **kW-Hr** | **Total Cost** |
| 00:00-01:00 |  |  |  |  |  |  |  |  |  |
| 01:00-02:00 |  |  |  |  |  |  |  |  |  |
| 02:00-03:00 |  |  |  |  |  |  |  |  |  |
| 03:00-04:00 |  |  |  |  |  |  |  |  |  |
| 04:00-05:00 |  |  |  |  |  |  |  |  |  |
| 05:00-06:00 |  |  |  |  |  |  |  |  |  |
| 06:00-07:00 |  |  |  |  |  |  |  |  |  |
| 07:00-08:00 |  |  |  |  |  |  |  |  |  |
| 08:00-09:00 |  |  |  |  |  |  |  |  |  |
| 09:00-10:00 |  |  |  |  |  |  |  |  |  |
| 10:00-11:00 |  |  |  |  |  |  |  |  |  |
| 11:00-12:00 |  |  |  |  |  |  |  |  |  |
| 12:00-13:00 |  |  |  |  |  |  |  |  |  |
| 13:00-14:00 |  |  |  |  |  |  |  |  |  |
| 14:00-15:00 |  |  |  |  |  |  |  |  |  |
| 15:00-16:00 |  |  |  |  |  |  |  |  |  |
| 16:00-17:00 |  |  |  |  |  |  |  |  |  |
| 17:00-18:00 |  |  |  |  |  |  |  |  |  |
| 18:00-19:00 |  |  |  |  |  |  |  |  |  |
| 20:00-21:00 |  |  |  |  |  |  |  |  |  |
| 21:00-22:00 |  |  |  |  |  |  |  |  |  |
| 22:00-23:00 |  |  |  |  |  |  |  |  |  |
| 23:00-00:00 |  |  |  |  |  |  |  |  |  |
| **TOTAL** |  |  |  |  |  |  | Total  daily energy |  | Total daily cost |
|  |  |  |  |  |  |  |  |  |  |

The table above can be enhanced to include other refinements, such as DL and UL PRB utilization

percentage for the used PDSCH and PUSCH symbols, PRACH and SRS symbol percentage, # of TRs activated, etc.

1. The O-RU energy consumption would be reported by O-RU to O-DU periodically. The O-DU should know the percentages for each power state (DL, UL, SM0-DM3), so the O-RU need not track these.

### Open-MOU Energy KPIs and requirements

The Open RAN MOU group, consisting of five European operators[**2**], is not directly affiliated with the O-RAN Alliance. Its members are, however, part of O-RAN and have been working closely with the O-RAN Sustainability Focus Group (SuFG) to promote the Open RAN MOU requirements [1]. In particular, there are nine energy efficiency requirements (rel1\_O-RU\_26 through rel1\_O-RU\_34).

For example, rel1\_O-RU\_26 reads as follows "Energy Efficiency of RRH in 2T2R / 4T4R / 8T8R configurations shall be at least 40% (with 100% traffic load)". In discussions with SuFG, it came out that the definition is

this KPI is really:

DL\_O-RU\_Energy\_Efficiency = Total\_RF\_pwr\_into\_antennas/Total\_O-RU\_pwr\_consumption

where the measurement is conducted with 100% of the total DL PRBs for the enabled carriers being

transmitted. This KPI is now included in section 5.2.1, but O-RAN WG7 does not mandate any expected efficiency target.

### O-RU Power calculation tool

WG7 has developed an Excel calculation tool to estimate O-RU power consumption, as well as the DL\_Energy\_Efficiency metric cited above. The tool will be located in the ZIP file containing this v2.0 technical report. Some snippets from the tool output are shown below. Some key points:

1. Normative Reference [16] provides some typical numbers for baseband and e-CPRI blocks, as well as PA output powers. Values similar to these are used in the O-RU Power calculation tool.
2. In the total output power roll-up in the right portion of the tool, for the TX power column, the DL energy efficiency power metric is computed.
3. While some of the detailed parameters such as PA efficiency, LNA power consumption, etc., are aligned with currently available RF Front end components, in no case were vendor power consumption values used literally.
4. The power for the baseband and e-CPRI components will depend on whether an FPGA or a dedicated ASIC is used, with the latter expected to draw less power.

Most importantly, the tool's purpose is to allow operators, RAN vendors, or SOC suppliers to estimate total O-RU power consumption and efficiency in different configurations. Each O-RU design will have a unique component set and thus different power consumption.

1. [OpenRAN MoU Group - Telecom Infra Project](https://telecominfraproject.com/openran-mou-group/)

![](../assets/images/0700d0d798ee.png)![](../assets/images/1c3de2c8465f.png)

# Mapping of low power modes to M-Plane or C-Plane commands

The Network Energy Savings features described in Section 4 will ultimately be mapped to M-Plane or C- Plane commands in actual implementation. If the commands already exist, then this section will describe a general procedure for using the commands to realize the specific NES low power feature from Section 4. If the commands do not exist, then we discuss the basic requirements of the new command needed for

effective NES feature implementation.

## Feature to Command mapping table

The following table provides a high-level summary of the commands needed for each NES feature.

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **NES Feature** | **Document section** | **M-Plane or C- Plane control** | **Commands exist?** | **Comment/Follow- up** |
| **Disabling all RF bands** | 4.2.1 | M-Plane | Yes | As per M-Plane section 15.3.2 |
| **Disabling one or more bands in an O-RU** | 4.2.2 | M-Plane | Yes | As per M-Plane section 15.3.2 |
| **Disabling one or more CCs in an O- RU band** | 4.2.3 | M-Plane | Yes | As per M-Plane section 15.3.2 |
| **RF Channel Reconfiguration** | 4.3 | M-Plane, possibly C-Plane | No | WG4 discussion topic1 |
| **Active Low Power Mode** | 4.4 | M-Plane | No | M-Plane command proposal pending1 |
| **Advanced Sleep Mode** | 4.5 | C-Plane, M-Plane | No | Command formats now in WG4 discussion1 |

#### Table 6-1 NES features and mapping to M-Plane or C-Plane commands

Note 1: Specifically, as of this version 1.00 publication date, command formats for RF Channel

Reconfiguration and Advanced Sleep Modes were being discussed in O-RAN WG4. The M-Plane command CR for Active Low Power mode is also pending as of this 1.00 publication date.

## Detailed discussion of command mapping

Here we discuss the NES features listed above, and the M-Plane or C-Plane commands required to activate each NES mechanism. The discussion will be limited to providing general references to the M-Plane or C- command types involved, rather than outlining a very specific procedure. If in fact there are gaps, i.e., the necessary M-Plane or C-Plane commands do not exist, that is also noted.

Some of the capabilities referenced below may be optional O-RU features, e.g., the hardware-state feature. The required features will not be referenced explicitly in the NES capability discussion below, but the associated M-Plane or C-Plane sections should be consulted to identify any optional features or capabilities required to realize the NES functionality.

### Disabling all RF bands

The first step is de-activating all the antenna carriers in the O-RU. This is already supported in the M-Plane and Yang model when all carriers, in all bands, have been placed in the inactive state. Section 15.3.2 of the latest M-Plane spec discusses carrier de-activation procedures. Then, via the NETCONF procedures

described in M-Plane spec section 9.1.3, the O-RU Controller can place the O-RU into the global SLEEPING power state[**3**], where all O-RU functionality not needed for M-Plane support can be disabled. In this state, C- Plane commands to the O-RU cannot be guaranteed to produce a response, as the C-Plane command processor may itself be disabled.

To bring the O-RU out of the SLEEPING power state, the O-RU Controller can execute the NETCONF procedure to transition the O-RU into the AWAKE power state.

### Disabling one or more bands within an O-RU

This amounts to de-activating all the antenna carriers for a specific RF band, while leaving other bands

active. The O-RU is thus still capable of processing user data traffic. The NETCONF client can place all tx-

array-carrier and rx-array-carrier elements in the band into either the INACTIVE or SLEEP state, as discussed in M-Plane spec 15.3.2.

### Disabling one or more CCs in a band within an O-RU

This means de-activating one or more antenna carriers within an active RF band, while leaving other carriers within that band active. The O-RU is still capable of processing user data traffic within that band, using the remaining CCs. The NETCONF client can place the unneeded tx-array-carrier and rx-array-carrier elements in the band into either the INACTIVE or SLEEP state, as discussed in M-Plane spec 15.3.2.

### RF Channel Reconfiguration

RF Channel Reconfiguration amounts to de-activating groups of antenna carriers within an array, e.g.,

reconfiguring an rx or tx array from 64 elements to 32 elements. The purpose of such a reconfiguration may be to reduce the number of spatial streams/data layers, or reduce the number of antenna beams, or reduce the directivity of the existing beams.

1. See Yang module o-ran-hardware.yang

The capabilities described in M-Plane spec 15.4.2 and 15.4.3 may be used here, but it is unclear if these are sufficient. O-RAN Work Group 4 is evaluating additional CRs that will facilitate RF Channel reconfiguration.

### Active Low Power mode

Active Low Power mode is intended as a persistent low power mode that can be applied to the RX and/or TX sub-components within an active RF band, while RF receive or transmit is occurring. An M-Plane command will be used to enable it, but this command is still to be defined**4**. The scope of the command is expected to be all RX or TX chains within an array, but finer granularity may be possible.

### Advanced Sleep mode

Advanced Sleep mode is intended to put RF and baseband processing chains within the O-RU into a low power state, for durations spanning one or more slots, sub-frames, or frames. The exact format of the Advanced Sleep mode commands is, as of this writing, now being developed in WG4.

Note that PRB and TX symbol blanking is already described in the C-Plane specification, sections 8.4.2.2 and

8.4.2.3. Additionally, section 7.7.7 SE7 describes how to aggregate multiple endpoints together for

transmission blanking for Section type 0. Thus, multiple symbols for multiple endpoints (carriers) can be blanked using existing commands, but only within a slot.

# O-RU Hardware changes required for NES support

The Network Energy Savings features described in this document may imply changes to the O-RU hardware architecture, and associated firmware, in order to provide an effective low power solution. In this Phase 1 TR, these are discussed at a high level.

## RF Processing Unit changes

Referencing Figure 4-2, the RF Processing Unit may require the following changes to support significant power reductions:

1. Ability to quickly disable and enable the front-end RF PA, PA driver, and LNA blocks. Typical control interfaces could be GPIO, SPI, I2C or MIPI RFFE.
2. Ability to quickly disable and enable the RF transceiver chains that interface to the front end. The transceiver sub-components involved may include the ADCs and DACs, PLLs, mixers, channel

filters, DFEs, I/Q interfaces[**5**], CPUs, etc.

## Digital Processing Unit and Timing Unit changes

Referencing Figure 4-2, the Digital Processing Unit and the Timing Unit may require the following changes to support effective power reductions:

1. (As of the publication date of the 1.00 NES specification release)
2. I/Q data formats could be based on JESD, UCIe, or other formats
   1. Ability to quickly disable and enable the Digital Processing Unit sub-components. This may include I/Q interfaces[**6**], Beam Forming HW or SW functions, FFT/iFFT HW or SW functions, PRACH processing functions, O-RAN CU-plane processing functions, fiber interfaces, etc.
   2. Ability to quickly disable and enable the Timing Unit sub-components. This may include PLLs, clock distribution buffers, etc.

## Energy Monitoring HW and data collection

The M-Plane data object epe-stats includes data fields for voltage, temperature, current, and power[7]. It can represent current/voltage/power for the entire O-RU or a sub-component. Figure 5-1 in section 5.1 shows

the presence a power monitoring unit for measuring and recording the input power consumption. Some ICs that may be suitable for such a functionality are listed in Annex A.

Any power-monitoring chip suitable for O-RU will have an ADC capable of sampling input voltage and current, and computing power consumption. Additionally, digital averaging of voltage/current/power samples is typically provided.

![A graph with a green bar and black text  Description automatically generated](../assets/images/50452ad80ef9.png)

#### Figure 7-1: Power monitoring timing

The figure above shows an O-RU network traffic pattern example, with the power monitoring IC's ADC

sample intervals shown. In the ideal case, we could have the ADC power sampling intervals be aligned in time with network traffic, producing a power reading per symbol, as shown in the second timeline. In

practice, the power monitor's ADC timing may not be aligned with network timing, as shown in the bottom timeline, and the sampling intervals may be longer than one symbol or slot. Furthermore, the ADC sample timing may drift over temperature, if not synchronized with network clocks derived via SyncE protocols or other methods. To address this, coarser averaging can be performed, such that O-RU power data records spanning longer intervals, with fewer data points, can be uploaded to the O-DU. For example, a 1 Hz power sampling frequency can be considered, and reports uploaded every hour over M-Plane. If the amount of

1. I/Q data formats could be based on JESD, UCIe, or other formats
2. See M-Plane specification O-RAN.WG4.MP.0-R003-v12.00 or later, section 17.4 and Table B.1-1

data per sample is 64 bits, this would result in an hourly data report size (excluding overhead) of 3600\*64/ (1024\*8) = 28.1 kBytes.

To avoid the impact of ADC sample drift, a power monitoring IC that accepts an external clock, derived from network timing, can be used. This ensures that a given number of ADC samples taken by the power

monitoring IC always represents the same time interval.

Generally speaking, if epe-stats based monitoring is implemented in the O-RU, the following operating principles are recommended:

1. Power monitoring shall be supported for at least the O-RU input power feed.
2. The power monitoring IC sample clock should be synchronized to a clock related to Network timing.
3. No time gaps in the power monitoring shall be allowed.

### Exemplary O-RU Power Delivery Network Architecture

To support O-RU NES monitoring and reporting capabilities, an example O-RU Power Delivery Network (PDN) is shown in Figure 7-2. The Telecom backplane of -48 Volts is used with Input Protection and Hot-

swap capability for ease of insertion at the O-RU site. The Power Monitoring of current, voltage and power can be achieved by various methods, including DC-DC Converter, Switched Mode Power Supplies or Low Drop-out regulators with PGOOD (Power Good), IMON (Current Monitoring) and VMON (Voltage

Monitoring) capabilities as well as power monitoring and sequencing ICs that individually control the sequencing of O-RU intermediate rails and their various power consumption metrics. The power monitoring information can be communicated back to the system digital processor via GPIO and low pin count communications buses such as PMBus or I2C/SPI. Additionally, support for the O-RU Alarm of a Dying Gasp event, is included in this example hardware design to keep the O-RU power alive long enough for the O-RU to communicate via M-plane that it has experienced a critical power failure. Please see Annex A for a list of possible part numbers to implement NES support.

![A computer screen shot of a diagram  Description automatically generated](../assets/images/c0358fc7dd06.jpg)

#### Figure 7-2: Exemplary O-RU Power Delivery Network support NES

* + 1. Exemplary O-RU Temperature Sensor Architecture

To support environmental O-RU reporting for M-Plane data models such as epe-stats, an example

temperature sensing architecture is shown in Figure 7-3. In this example, an eight channel temperature sensor IC with remote diode connected transistors is used to measure the temperature distributed

throughout the O-RU in major subsystems such as digital processor, clocks, power delivery network, optical transceiver, DDR and other memories, RF transceiver, and RF Front-End components such as Power

Amplifier and Low Noise Amplifiers. Similar to the power monitoring architecture, the temperature is reported back to the O-RU's digital processor via a low pin count communications bus such as SMbus, I2C, or SPI. Please see Annex A for a list of possible part numbers to implement NES support.

![A diagram of a temperature sensor  Description automatically generated](../assets/images/8aa215af74d8.jpg)

#### Figure 7-3: Exemplary O-RU Temperature Sensor Architecture supporting NES

# Annex A: NES-related components for Power Monitoring

The table below lists some exemplary components that can be considered for O-RU power monitoring. The list is not intended to be complete, and equivalent ICs from other suppliers are likely available.

|  |  |  |
| --- | --- | --- |
| **P/N** | Description | Comment |
| **Analog Devices ADM1075** | -48V Power Monitor IC with Hot Swap support | 5 kHz sample rate for input voltage and current; up to 128  readings can be averaged |
| Maxim 78M6613 | Single Phase AC Power Monitor IC | Measures or computes AC voltage,  current, line freq, real and reactive power |
| **Analog Devices ADM1266** | Cascadable Super Sequencer with Margin Control and Fault  Recording | Power supply supervision and sequencing up to 17 supplies. |
| **Analog Devices LTC3351** | Hot  Swappable Supercapacitor Charger,  Backup  Controller and System  Monitor | Used to keep O-RU power up while Dying Gasp issued to M- plane. |

|  |  |  |
| --- | --- | --- |
| **Analog Devices LTC2980** | Sequence,  Trim, Margin, and Supervise Power  Supplies | Multi- Channel PMBUS  Power System Manager. |
| **Flex BMR457**  **Series** | Fully regulated Advanced Bus Converters | Measures and  Monitors Current,  Voltage, and Power. |
| **Analog Devices MAX6581** | 8 Channel  Temperature Sensor | Temperature Management & Alerts via SMBus. |

#### Table 8-1: Catalog parts for input power monitoring

Additional P/Ns will be added if they provide differentiating features.

# Revision history

|  |  |  |
| --- | --- | --- |
| **Date** | **Revision** | **Description** |
| 2023.06.13 | 01.00 | Initial release of v1.0 NES specification |
| 2024.07.16 | 02.00 | V2.0. Candidate submission |
---

- View in [Reader Mode](https://simewu.com/spec-reader/pages/06-WG7/O-RAN.WG7.NES.0-R003-v02.00.docx).
- Go back to [Table of Contents](../README.md).
- Download the [Original Document](https://github.com/Simewu/spec-reader/raw/refs/heads/main/documents/O-RAN.WG7.NES.0-R003-v02.00.docx).
