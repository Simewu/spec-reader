---
title: O-RAN.WG8.AAD.0-R004-v14.00.docx.md
author: O-RAN Alliance
layout: post
---

- View in [GitHub Mode]({{site.github_page_url}}/O-RAN.WG8.AAD.0-R004-v14.00.docx.md).
- Go back to [Table of Contents]({{site.baseurl}}/).
- Download the [Original Document]({{site.download_url}}/O-RAN.WG8.AAD.0-R004-v14.00.docx).

---

* toc
{:toc}

---

![webwxgetmsgimg (7).jpeg]({{site.baseurl}}/assets/images/bea03973c631.jpg) O-RAN.WG8.AAD.0-R004-v14.00

Technical Specification

O-RAN Working Group 8

Base Station O-DU and O-CU Software Architecture and APIs

Copyright (C) 2025 by the O-RAN ALLIANCE e.V.

The copying or incorporation into any other work of part or all of the material available in this specification in any form without the prior written permission of O-RAN ALLIANCE e.V. is prohibited, save that you may print or download extracts of the material of this specification for your personal use, or copy the material of this specification for the purpose of sending to individual third parties for their information provided that you acknowledge O-RAN ALLIANCE as the source of the material and that you inform the third party that these conditions apply to them and that they must comply with them.

O-RAN ALLIANCE e.V., Buschkauler Weg 27, 53347 Alfter, Germany

O-RAN ALLIANCE e.V., Buschkauler Weg 27, 53347 Alfter, Germany.

Contents

Foreword 14

Modal verbs terminology 14

1. Scope 15

2. References 15

2.1 Normative references 15

3. Definitions of terms, symbols and abbreviations 17

3.1 Terms 17

3.2 Symbols 17

3.3 Abbreviations 17

4. RAN Deployment Scenarios and Requirements 19

4.1 Deployment Scenario - Example 19

4.2 Requirements 19

5. RAN Architecture 21

5.1 O-CU/O-DU Lower Layer Split Architecture 22

6. O-DU Software Architecture 23

6.1 O1 Interface 23

7. O-DU L1 Functional Blocks 24

7.1 Physical Uplink Shared Channel 24

7.2 Uplink Control Channels 25

7.3 Uplink Reference Signals 25

7.4 Physical Downlink Shared Channel 25

7.5 Physical Downlink Control Channel 26

7.6 Downlink Reference Signals 26

7.7 Physical Broadcast Channel 27

7.8 Physical Random Access Channel 27

7.9 L1 Tasks Processing Flow 28

7.10 Front Haul Module 29

7.11 O-DU Timing Synchronization 30

7.12 Accelerator Abstraction Layer (AAL) 31

7.13 AAL Lookaside Profile 32

7.13.1 Lookaside FEC Profile 32

7.13.2 FEC APIs 32

7.14 Massive MIMO Optimization 32

7.15 Fronthaul M-Plane Processing 33

7.16 Energy Saving Processing 34

7.16.1 Energy Saving Feature Capability and Configuration 34

7.16.2 Cell/Carrier Power Control 34

7.16.3 RF Channel Reconfiguration 35

7.16.4 Advanced Sleep Mode 36

7.17 DMRS-BF 37

7.17.1 DMRS-BF Initialization 37

7.17.2 DMRS-BF Operation 38

8. O-DU L2 Functional Blocks 39

8.1 L2 MAC Scheduler 41

8.2 Supporting E2 service models 42

8.3 O-DU Cloudification 43

8.4 O-DU Security 43

9. O-CU Software Architecture 43

9.1 O1 Interface 44

9.2 F1 Interface 44

9.3 E2 Interface 45

9.4 O-CU Cloudification Aspects 45

10. O-CU Functional Blocks 45

10.1 O-CU-CP Functional Blocks 45

10.1.1 O-CU-CP-OAM-Agent 45

10.1.2 gNB Procedure Management 46

10.1.3 Cell Procedure Management 46

10.1.4 UE Procedure Management 46

10.1.5 RRC Encoder and Decoder 47

10.1.6 NGAP Encoder and Decoder 47

10.1.7 XnAP Encoder and Decoder 47

10.1.8 F1AP Encoder and Decoder 47

10.1.9 O-CU-UP Control 47

10.2 Mobility 48

10.2.1 Inter-O-CU Handover 48

10.2.2 Inter-O-DU Handover within an O-CU 51

10.3 O-CU-UP Functional Blocks 54

10.3.1 O-CU-UP-OAM-Agent and data models 54

10.3.2 eGTPu 54

10.3.3 NR PDCP 55

10.3.4 SDAP 56

11. O-DU Interfaces 56

11.1 L1/L2 Interface 56

11.2 L2 Interfaces 57

11.2.1 O-DU-OAM-Agent -MAC Interface 57

11.2.1.1 NR Cell Configuration 57

11.2.1.2 Slice Configuration 73

11.2.2 MAC - O-DU-OAM-Agent Interface 74

11.2.3 RLC-MAC Interface 74

11.2.3.1 Data Transfer (DL) 75

11.2.3.2 Data Transfer (UL) 75

11.2.3.3 Schedule Result Reporting (DL) 76

11.2.3.4 Buffer Status Report (DL) 76

11.2.4 MAC - Scheduler Interface 76

11.2.4.1 Common Information Elements in MAC-Scheduler APIs 79

11.2.4.1.1 Air Interface Time 79

11.2.4.1.2 (Debug) Timing Information 79

11.2.4.2 MAC to Scheduler APIs 80

11.2.4.2.1 Cell Configuration Request 80

11.2.4.2.2 Cell Delete Request 81

11.2.4.2.3 Slice Configuration Request 81

11.2.4.2.4 Slice Reconfiguration Request 82

11.2.4.2.5 Add UE Configuration Request 83

11.2.4.2.6 Modify UE Reconfiguration Request 87

11.2.4.2.7 Delete UE Request 90

11.2.4.2.8 DL HARQ Indication 90

11.2.4.2.9 UL HARQ (CRC) Indication 90

11.2.4.2.10 UL Channel Quality Information 91

11.2.4.2.11 DL Channel Quality Information 91

11.2.4.2.12 RACH Indication Contents 92

11.2.4.2.13 Paging Indication Contents 92

11.2.4.2.14 RACH Resource Request 92

11.2.4.2.15 RACH Resource Release 93

11.2.4.2.16 DL RLC Buffer Status Information 93

11.2.4.2.17 Scheduling Request Indication 94

11.2.4.2.18 UL Buffer Status Report Indication 94

11.2.4.2.19 Power Headroom Indication 94

11.2.4.3 Scheduler to MAC APIs 95

11.2.4.3.1 Cell Configuration Response 95

11.2.4.3.2 Cell Deletion Response 95

11.2.4.3.3 Slice Configuration Response 96

11.2.4.3.4 Slice Reconfiguration Response 96

11.2.4.3.5 UE Configuration Response 97

11.2.4.3.6 UE Reconfiguration Response 97

11.2.4.3.7 UE Deletion Response 98

11.2.4.3.8 DL Scheduling Information 98

11.2.4.3.9 UL Scheduling Information 115

11.2.4.3.10 RAR Information 119

11.2.4.3.11 Downlink Control Channel Information 120

11.2.4.3.12 Downlink Broadcast Allocation 123

11.2.4.3.13 Downlink Paging Allocation 125

11.2.4.3.14 Downlink HARQ Release 127

11.2.5 F1AP handler - MAC Interface 127

11.2.5.1.1 Cell Start 129

11.2.5.1.2 Cell Stop 129

11.2.5.1.3 Cell Delete Request 129

11.2.5.1.4 Cell Delete Response 129

11.2.5.1.5 Slice Configuration Request 130

11.2.5.1.6 Slice Configuration Response 131

11.2.5.1.7 Slice ReConfiguration Request 131

11.2.5.1.8 Slice ReConfiguration Response 132

11.2.5.1.9 UE Create Request 132

11.2.5.1.10 UE Create Response 134

11.2.5.1.11 UE Reconfiguration Request 134

11.2.5.1.12 UE Reconfiguration Response 137

11.2.5.1.13 UE Delete Request 137

11.2.5.1.14 UE Delete Response 138

11.2.5.1.15 RACH Resource Request 138

11.2.5.1.16 RACH Resource Response 138

11.2.5.1.17 RACH Resource Release 139

11.2.5.1.18 UE Reset Request 139

11.2.5.1.19 UE Reset Response 139

11.2.5.1.20 UE Sync Status Indication 140

11.2.5.1.21 UL CCCH Indication 140

11.2.5.1.22 DL CCCH Indication 140

11.2.5.1.23 DL PCCH Indication 141

11.2.5.1.24 DL Broadcast Request 141

11.2.6 F1AP Handler - RLC Interface 141

11.2.6.1 UE Create 143

11.2.6.2 UE Create Response 144

11.2.6.3 UE Reconfiguration 145

11.2.6.4 UE Reconfiguration Response 146

11.2.6.5 UE Delete 146

11.2.6.6 UE Delete Response 147

11.2.6.7 DL RRC Message Transfer 147

11.2.6.8 DL RRC Message Response 147

11.2.6.9 UL RRC Message Transfer 148

11.2.6.10 UL RRC Message Delivery Report 148

11.2.6.11 RLC Max Retransmission Reached 148

11.2.6.12 UL RLC Re-establishment Request 149

11.2.6.13 UE RLC Re-establishment Response 149

11.2.6.14 UL User Data 149

11.2.6.15 DL User Data 149

11.2.7 RLC - O-DU-OAM-Agent Interface 150

11.2.7.1 PM Slice throughput Event 150

11.3 O1 Interface and data model 150

11.4 E2 Interface 151

12. O-CU Interface 151

12.1 RRC-SDAP Interface 151

12.1.1 QoS Flow to DRB Mapping 151

12.1.2 DRB Release 152

12.2 SDAP-PDCP Interface 152

12.2.1 Transfer Data PDU (DL) 152

12.2.2 Transfer Data PDU (UL) 152

12.2.3 End-marker Control PDU (DL) 153

12.3 RRC-PDCP Interface 153

12.3.1 PDCP Entity Establishment 153

12.3.2 PDCP Entity Re-establishment 154

12.3.3 SRB Data Request 154

12.3.4 SRB Data Indication 154

12.4 SDAP-eGTPU Interface 154

12.4.1 Transfer Data SDAP SDU (UL) 155

12.4.2 Transfer Data SDAP SDU (DL) 155

12.4.3 PDCP-eGTPU Interface 155

12.4.4 Transfer Data PDCP PDU (DL) 156

12.4.5 Transfer Data PDCP PDU (UL) 156

12.5 Ciphering and Integrity Protection 156

12.6 Header Compression 156

13. Use-Cases Enhancements 157

13.1 Non-GoB mMIMO optimization 157

13.2 Shared O-RU 158

13.3 RAN Analytics 160

13.4 RAN Slicing 161

13.5 Fronthaul M-Plane 162

13.6 Network Energy Savings 163

13.6.1 NES: RIC Control 164

13.6.2 NES: PHY-MAC interactions 164

13.7 O-CU/O-DU Energy Optimization 166

13.7.1 O-CU/O-DU Power Management Architecture 166

13.7.2 O-CU/O-DU Demand Based Power Management Flow 167

13.7.3 L1/L2 Collaboration on Power Management 168

13.8 DMRS Beamforming 169

Annex A (Informative) 170

L1 APIs 170

A.1.1 Scrambling procedure as defined in TS38.211 [4] 171

Call Flows 172

F1 Startup and Cells Activation 172

UE registration 172

RACH procedure 175

SR procedure 175

UL Grant procedure 176

PDU Session Establishment 176

Revision history 178

# Foreword

This Technical Specification (TS) has been produced by O-RAN Alliance.

# Modal verbs terminology

In the present document "**shall**", "**shall not**", "**should**", "**should not**", "**may**", "**need not**", "**will**", "**will not**", "**can**" and "**cannot**" are to be interpreted as described in clause 3.2 of the O-RAN Drafting Rules (Verbal forms for the expression of provisions).

"**must**" and "**must not**" are **NOT** allowed in O-RAN deliverables except when used in direct citation.

# Scope

This Technical Specification has been produced by the O-RAN Alliance.

The contents of the present document are subject to continuing work within O-RAN and may change following formal O-RAN approval. Should O-RAN modify the contents of the present document, it will be re-released by O-RAN with an identifying change of release date and an increase in version number as follows:

Version x.y.z

where:

x the first digit is incremented for all changes of substance, i.e. technical enhancements, corrections, updates, etc. (the initial approved document will have x=01).

y the second digit is incremented when editorial only changes have been incorporated in the document.

z the third digit included only in working versions of the document indicating incremental changes during the editing process.

This document contains RAN Requirements, reference O-CU and O-DU Software Architecture, Functional Blocks and API definitions. O-RU and Low-PHY references in this document are only informational to complete the architecture description. All hardware and/or software implementations of O-RU and Low-PHY are not in the scope of this document.

# References

### Normative references

The following documents contain provisions which, through reference in this text, constitute provisions of the present document.

1. 3GPP TR 21.905: Vocabulary for 3GPP Specifications
2. 3GPP TS 29.281: "General Packet Radio System (GPRS) Tunneling Protocol User Plane (GTPv1-U)".
3. 3GPP TR 38.104: "NR; Base Station (BS) radio transmission and reception".
4. 3GPP TS 38.211: "NR; Physical channels and modulation".
5. 3GPP TS 38.212: "NR; Multiplexing and channel coding".
6. 3GPP TR 38.300: "NR; NR and NG-RAN Overall Description".
7. 3GPP TR 38.321: "NR; Medium Access Control (MAC) protocol specification".
8. 3GPP TR 38.322: "NR; Radio Link Control (RLC) protocol specification".
9. 3GPP TR 38.323: "NR; Packet Data Convergence Protocol (PDCP) specification".
10. 3GPP TR 37.324: "NR; Service Data Adaptation Protocol (SDAP) specification".
11. 3GPP TS 38.331: "NR; Radio Resource Control (RRC) Protocol specification".
12. 3GPP TS 38.401: "NG-RAN; Architecture description".
13. 3GPP TS 38.413: "NG-RAN; NG Application Protocol (NGAP)".
14. 3GPP TS 38.423: "NG-RAN; Xn Application Protocol (XnAP)".
15. 3GPP TS 38.425: "NG-RAN; NR user plane protocol".
16. 3GPP TS 38.470: "NG-RAN; F1 general aspects and principles".
17. 3GPP TS 38.472: "NG-RAN; F1 signaling transport".
18. 3GPP TS 38.473: "NG-RAN; F1 Application Protocol (F1AP)".
19. 3GPP TS 38.474: "NG-RAN; F1 data transport".
20. 3GPP TS 28.541: "5G Network Resource Model (NRM)"
21. 3GPP TS 28.552: "Management and Orchestration, 5G Performance Management"
22. ORAN-WG4.CUS.0-R004-v16.00, Technical Specification, 'O-RAN Fronthaul Working Group Control, User and Synchronization Plane Specification'.
23. O-RAN.WG4.MP.0-R004-v16.00, Technical Specification, 'O-RAN Fronthaul Working Group Management Plane Specification'.
24. ORAN-WG1 Technical Specification, 'O-RAN Working Group 1 Architecture Description'
25. ORAN-WG7-DSC.0-v01.00 Technical Specification, "Deployment Scenarios and Base Station Classes for White Box Hardware"
26. O-RAN.WG5.O-DU-O1.0-v04.00 Technical Specification, "O1 Interface specification for O-DU"
27. O-RAN.WG3.E2GAP-v01.01 Technical Specification, "Near-Real-time RAN Intelligent Controller Architecture & E2 General Aspects and Principles"
28. O-RAN.WG3.E2AP-v01.01 Technical Specification, "Near-Real-time RAN Intelligent Controller E2 Application Protocol (E2AP)"
29. SCF Release 10.0, Document 222.07.00, 5G FAPI: PHY API Specification, August 2023
30. SCF Release 1.0, Document SCF225.3.0, 5G nFAPI Specifications, July 2022
31. [O-RAN.WG1.Use-Cases-mMIMO-TR-v00.11\_clean\_FixedNumbering.docx](https://oranalliance.atlassian.net/wiki/download/attachments/2221670469/O-RAN.WG1.Use-Cases-mMIMO-TR-v00.11_clean_FixedNumbering.docx?api=v2), TR for Massive MIMO optimization usecases.
32. INT.AO-2021.12.09-WG3-WID-mMIMO\_draft v06 , TR for WG3 WID to support Massive MIMO optimization feature.
33. O-RAN.WG5.O-CU-O1.0-v03.00 Technical Specification, "O1 Interface specification for O-CU-UP and O-CU-CP"
34. O-RAN.WG6.AAL-GAnP.0-v03.00 Technical Specification, "O-RAN Acceleration Abstraction Layer General Aspects and Principles"
35. O-RAN.WG6.AAL Common API v02.00 Technical Specification, "Acceleration Abstraction Layer Common API"
36. O-RAN.WG6.AAL-FEC.0-v03.00 Technical Specification, "Acceleration Abstraction Layer FEC Profiles"
37. O-RAN.WG6.CAD.0-v04.00 Technical Report, "Cloud Architecture and Deployment Scenarios for O-RAN Virtualized RAN"
38. O-RAN.WG6.O-Cloud Notification API -v02.01 Technical Specification, "O-Cloud Notification for Event Consumers"
39. O-RAN.WG11.SecProtSpecs.O-R004-v10.00Technical Specification, "Security Protocols Specifications"
40. O-RAN.WG1.Use-Cases-Detailed-Specification -R003-v14.00, "O-RAN Working Group 1 Use Cases Detailed Specification"
41. O-RAN.WG3.UCR-R003-v05.00, "O-RAN Working Group 3 Near-Real-time RAN Intelligent Controller Use Cases and Requirements"
42. O-RAN.WG3.E2SM-KPM-R003-v05.00 . Technical Specification, "Near-Real-time RAN Intelligent Controller E2 Service Model (E2SM) KPM"
43. O-RAN.WG3.E2SM-RC-R004v06.00.03. Technical Specification, "Near-Real-time RAN Intelligent Controller E2 Service Model (E2SM), RAN Control"
44. O-RAN.WG3.E2SM-CCC-R003-v04.00, Technical Specification, " E2 Service Model (E2SM) Cell Configuration Control"

# Definitions of terms, symbols and abbreviations

### Terms

For the purposes of the present document, the terms and definitions given in 3GPP TR 21.905 [1] and the following apply. A term defined in the present document takes precedence over the definition of the same term, if any, in 3GPP TR 21.905 [1]. For the base station classes of Pico, Micro and Macro, the definitions are given in 3GPP TR 38.104 [3].

**O-CU:** O-RAN Control Unit - a logical node hosting PDCP, RRC, SDAP and other control functions.

**O-DU:** O-RAN Distributed Unit: a logical node hosting RLC, MAC, and High-PHY layers based on a lower layer functional split.

**O-RU:** O-RAN Radio Unit: a logical node hosting Low-PHY layer and RF processing based on a lower layer functional split.

**E1 interface:** The interface defined by 3GPP TS 38.460, 3GPP TS 38.462 and 3GPP TS 38.463 between CU control plane and CU user plane.

**F1 interface:** The interface defined by 3GPP TS 38.470 [16], 3GPP TS 38.472 [17] and 3GPP TS 38.473 [18], to be further interpreted as per O-RAN WG5 specification for interoperability between O-CU and O-DU from different vendors.

**E2 interface:** The interface is defined by O-RAN WG3 Near RT-RIC Architecture & E2 General Aspects and Principles that is connecting the near RT-RIC and one or more O-CU-CPs, one or more O-DUs and one or more O-eNBs.

### Symbols

### Abbreviations

For the purposes of the present document, the abbreviations given in 3GPP TR 21.905 [1] and the following apply.
An abbreviation defined in the present document takes precedence over the definition of the same abbreviation, if any, in 3GPP TR 21.905 [1].

3GPP Third Generation Partnership Project

5G Fifth-Generation Mobile Communications

AMC Adaptive Modulation and Coding

BWP Bandwidth Part

CCCH Common Control Channel

CORESET Control Resource Set

CSI Channel State Information

CU Centralized Unit as defined by 3GPP

DCI Downlink Control Information

DPDK Data Plane Development Kit

DL Downlink

DRB Dedicated Radio Bearer

DMRS Demodulation Reference Signal

DU Distributed Unit as defined by 3GPP

E1AP E1 Application Protocol

FAPI Functional Application Platform Interface

F1AP F1 Application Protocol

FDD Frequency Division Duplex

FFT Fast Fourier Transform

FSM Finite State Machine

GMC Grand Master Clock

HARQ Hybrid Automatic Repeat Request

IE Information Element

LCID Logical Channel Identifier

LDPC Low Density Parity Check code

LLR Log Likelihood Ratio

MAC Medium Access Control protocol

MAC CE MAC Control Element

MIMO Multiple Input Multiple Output

mMIMO Massive MIMO

MT Mobile-Termination

MU-MIMO Multiple User MIMO

NG-RAN Next Generation Radio Access Network

NIC Network Interface Card

nFAPI Network Functional Application Platform Interface

NGAP NG Application Protocol

NR New Radio

O-CU O-RAN Centralized Unit as defined by O-RAN

O-DU O-RAN Distributed Unit as defined by O-RAN

OFH Open Front Haul protocol defined by O-RAN

OFH-C OFH Control plane

OFH-U OFH User plane

O-RU O-RAN Radio Unit as defined by O-RAN

PBCH Physical Broadcast Channel

PDCCH Physical Downlink Control Channel

PDCP Packet Data Control Protocol

PF Proportional Fair (scheduling algorithm)

PHC PTP Hardware Clock

PHR Power Headroom Report

PHY Physical (L1) access layer of RAN

PRACH Physical Random Access Channel

PRB Physical Resource Block

PUCCH Physical Uplink Control Channel

PUSCH Physical Uplink Shared Channel

PSS Primary Synchronization Signal

PTRS Phase Tracking Reference Signal

QAM Quadrature Amplitude Modulation

QPSK Quadrature (Quaternary) Phase Shift Keying

QoS Quality of Service

RACH Random Access Channel

RAN Radio Access Network

Rel-x Release number: where x is the actual release number

RF Radio Frequency

RLC Radio Link Control protocol

RRC Radio Resource Control protocol

RU Radio Unit as defined by 3GPP

Rx Receiver

SCS Sub-Carrier Spacing

SDAP Service Data Adaptation Protocol

SDU Service Data Unit

SLA Slice Level Agreement

SRIOV Single Root Input/Output Virtualization

SRB Signalling Radio Bearer

SRS Sounding Reference Signal

SSS Secondary Synchronization Signal

SSB SS Block

SU-MIMO Singer User MIMO

TA Timing Advance

TB Transport Block

TDD Time Division Duplex

TS Technical Specification

TTI Transmission Time Interval

Tx Transmitter

UE User Equipment

UL Uplink

URLLC Ultra-Reliable Low Latency Communication

WG Working Group

FCAPS Fault, Configuration, Accounting, Performance and Security

# RAN Deployment Scenarios and Requirements

### Deployment Scenario - Example

The reference design of the O-CU and O-DU is specified in this document to support all deployment scenarios. In this version, the deployment scenario of indoor pico cell is used as an example.

### Requirements

Table 4-1 lists the features and requirements supported by the reference design based on the target release specification. Requirements marked "R1" and 'R2" are addressed in this release of the document. Requirements below are aligned to deployment requirements in [25].

Table - Requirements

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| Feature | | Requirement | WG8 Specification Release |
| L1 | Carrier BW | 100MHz | R1 |
| Subcarrier Spacing | 30kHz, 120kHz | R1 |
| Number of carriers | 1 | R1 |
| Frame structural format | Static TDD | R1 |
| Number of spatial streams (after precoder) | 2T2R | R1 |
| 4T4R | R1 |
| Numerology/BWP number | 1 | R1 |
| 4 | R3 |
| BWP change | RRC signaling | R3 |
| MAC CE | R3 |
| MIMO | 30K   DL:2\*2MIMO   UL:2\*2MIMO | R1 |
| 30K DL:4\*4MIMO   UL:2\*2MIMO | R1 |
| Modulation | DL: QPSK,16QAM,64QAM,256QAM UL: ?/2-bpsk, QPSK, 16QAM, 64QAM | R1 |
|  | UL: 256QAM | R2 |
| Capacity | Support at least 4 100MHz bandwidth 2T2R TrxPs | R1 |
|  | Support at least 2 100MHz bandwidth 4T4R TrxPs | R3 |
|  | Support at least 8 100MHz bandwidth 2T2R TrxPs | R2 |
|  | Support at least 4 100MHz bandwidth 4T4R TrxPs | R3 |
| Peak Data Throughput | With 100MHz bandwidth and TDD frames DL: UL (1:1), the DL peak throughput of one cell shall not be lower than 750 Mbps and the UL peak throughput of one cell shall not be lower than 250 Mbps. (2T2R) | R3 |
| Data Compression | Support | R3 |
| PRACH Format | Format 0 | R1 |
| Format B4 | R1 |
| Format C2 | R1 |
| PDCCH Format | DCI 0-0 | R1 |
| DCI 0-1 | R1 |
| DCI 1-0 | R1 |
| DCI 1-1 | R1 |
| PUCCH Format | Format0 | R1 |
| Format1 + Format2 | R1 |
| Format 3 | R2 |
| SCS of PBCH | 30 kHz | R1 |
| Power control | Enable | R2 |
| L2 | HARQ | Enable | R1 |
| AMC | Enable | R1 |
| SRS | Enable | R2 |
| Scheduling algorithm | Round Robin | R1 |
| PF (Proportional Fair) | R1 |
| Slice aware | R5 |
| Latency | Control Plane: 10 ms  User Plane DL: 4 ms (eMBB) | R1 |
|  | Inter-NR Handover |  | R3 |
| L3 | Intra-NR Handover |  | R5 |
| Paging |  | R3 |
| F1AP |  | R1 |
| E1AP |  | R3 |

</div>

# RAN Architecture

3GPP specifies the 5G RAN architecture and interfaces between the logical functional blocks. The following diagram presents the overall 5G network architecture [12] as well as the logical partition of the main functions.

![]({{site.baseurl}}/assets/images/21a091037deb.emf.png)

Figure 5-1 3GPP RAN Architecture

As specified by 3GPP in [12] a gNB may consist of a gNB-CU-CP, multiple gNB-CU-UPs and multiple gNB-DUs. The gNB-CU-CP is connected to the gNB-DU through the F1-C interface. The gNB-CU-UP is connected to the gNB-DU through the F1-U interface. The gNB-CU-UP is connected to the gNB-CU-CP through the E1 interface. One gNB-DU is connected to only one gNB-CU-CP. One gNB-CU-UP is connected to only one gNB-CU-CP.

The following diagram represents the separation of the CU control plane and user plane.

![]({{site.baseurl}}/assets/images/4322410799b7.png)

Figure 5-2 Overall architecture for separation of gNB-CU-CP and gNB-CU-UP

As shown in Figure 5-3 [24], O-RAN defines the RAN architecture with a focus on new, open interfaces between the logical nodes and physical partitions of the RAN functions.

![]({{site.baseurl}}/assets/images/7835eef03080.png)

Figure 5-3 O-RAN Architecture and Interfaces

### O-CU/O-DU Lower Layer Split Architecture

In some RAN deployment scenarios, e.g., a microcell, the physical layer is split between the O-DU and O-RU. O-RAN WG4 defines the open front haul interface which is adopted in the split architecture as shown in Figure 5-3. The O-DU contains the higher physical layer High-PHY functions while the O-RU contains the lower physical layer Low-PHY functions as specified in [22]. The fronthaul software interface is discussed in section 7.10 of this specification.

![]({{site.baseurl}}/assets/images/6a9abed73c0f.emf.png)

Figure 5-4 O-CU, O-DU and O-RU (Control and user plane)

# O-DU Software Architecture

The O-DU software architecture is illustrated in Figure 5-1. The O-DU is composed of L1 and L2 functional blocks which interface through the FAPI interface [29]. The functional blocks are further described in the following sections.

![]({{site.baseurl}}/assets/images/5573ec682439.png)

Figure 6-1 O-DU functional blocks

### O1 Interface

The O-DU O1 interface supports the following management capabilities:

* Transport establishment, startup sequence and heartbeat management
* Software management
* Performance (KPIs) management
* Fault management
* File management
* Provisioning management
* Synchronization
* Fronthaul delay management

The protocol stack for this interface is shown in Figure 6-2

![]({{site.baseurl}}/assets/images/a2dc4099eef2.emf.png)

Figure 6-2 O1 interface protocol stack

The O1 interface needs to be secured as specified in [39].

# O-DU L1 Functional Blocks

In O-RAN architecture (refer to Figure 5-2), PHY layer functionality is realized as High-PHY in O-DU and Low-PHY in O-RU. Some of the PHY functionalities may be realized using hardware acceleration.

Below is a list of PHY related functional blocks.

* PUSCH, PUCCH, PRACH
* PDSCH, PDCCH, PBCH
* UL/DL Reference Signals (DMRS, PTRS, SRS, PSS, SSS)
* Fronthaul handler
* FAPI handler
* Hardware accelerator handler
* Timing sync
* L1 Task Control Module

In the following sections, the functional blocks are described in detail.

### Physical Uplink Shared Channel

The uplink physical layer processing of transport channels consists of the following steps as described in [6]:

* Transport Block CRC attachment
* Code Block segmentation and Code Block CRC attachment
* Channel coding: LDPC coding
* Physical layer hybrid-ARQ processing
* Rate matching
* Scrambling
* Modulation: ?/2 BPSK (with transform precoding only), QPSK, 16QAM, 64QAM and 256QAM
* Layer mapping, transform precoding (enabled/disabled by configuration), and precoding
* Mapping to assigned resources and antenna ports

The frequency domain IQ data received by the fronthaul module are sent to the L1 PUSCH processing functions and the output of the PUSCH is the user bit stream. Figure 7-1 illustrates the PUSCH functional blocks.

![]({{site.baseurl}}/assets/images/015b37e6bba8.emf.png)

Figure 7-1 PUSCH functional blocks

**Resource Element (RE) Demapper:** The RE Demapper function separates the DMRS REs and the user data REs. The DMRS REs are provided to the channel estimation function.

**Channel Estimation:** The channel estimation functional block provides a channel estimate based on the DMRS of resource elements of the user data.

**MIMO Equalizer:** The MIMO equalizer function processes the received IQ data signals to reverse the distortion incurred during the signal transmission over the air. Using the channel information acquired via the channel estimation, the equalizer tries to restore the IQ symbol sent by the transmitter. The symbols may be conveyed as log-likelihood ratios (LLRs) for use by the LDPC decoder.

**Rate Dematching:** The rate dematching function performs the reverse operation steps of rate matching for LDPC code in clause 5.4.2 in 3GPP TS38.212 [5].

**LDPC Decoder:** The LDPC decoder function uses received log-likelihood ratios (LLRs) to compute the data bits based on selected decoder algorithm. The selection of the decoder algorithm is out of scope of this specification.

**CRC Check:** The CRC function block checks the parity bits using the generator polynomials in Subclause 5.1 of 3GPP TS38.212 [5]. Refer to the 3GPP specification for details.

### Uplink Control Channels

Physical Uplink Control Channel (PUCCH) conveys Uplink Control Information (UCI) and supports all the formats defined in clause 6.3.2 of 3GPP TS38.211 specification [4]. Refer to this specification for details of the formats as well as the control message including:

* HARQ-ACK (Hybrid Automated Repeat Request Acknowledgement).
* Scheduling Request (SR)
* Channel State Information (CSI)

### Uplink Reference Signals

5G NR introduces the following reference signals.

* Demodulation Reference Signal (DMRS) for PUSCH and PUCCH
* Phase Tracking Reference Signal (PTRS)
* Sounding Reference Signal (SRS)

Refer to clause 6.4.1 in 3GPP TS38.211 specification [4] for more details of the reference signals.

### Physical Downlink Shared Channel

The downlink physical layer processing of transport channels consists of the following steps as described in [6]:

* Transport Block CRC attachment
* Code Block segmentation and Code Block CRC attachment
* Channel coding: LDPC coding
* Physical-layer hybrid-ARQ processing
* Rate matching
* Scrambling
* Modulation: QPSK, 16QAM, 64QAM and 256QAM
* Layer mapping
* Mapping to assigned resources and antenna ports

Figure 7-2 illustrates the functional blocks of the PDSCH for Category A and Category B radio.

In Category A radio, the precoder function is located in O-DU; In Category B radio, the precoder function is located in O-RU.

![]({{site.baseurl}}/assets/images/cd0afea910ae.emf.png)

![]({{site.baseurl}}/assets/images/1d0fa2c296ab.emf.png)

Figure 7-2 PDSCH Functional Blocks

**Cyclic Redundancy Check Generation**: The CRC function block computes the parity bits using the generator polynomials in Subclause 5.1 of 3GPP TS38.212 [5]. Refer to the 3GPP specification for details.

**Segmentation**: The transport block is segmented when it exceeds the code block size specified by 3GPP TS38.212 [5]. Refer to Subclause 7.2.3 for details.

**LDPC Encoder**: Refer to Subclause 5.3.2 in 3GPP TS38.212 [5] for details.

**Rate Matching**: Refer to Subclause 5.4.2 in 3GPP TS38.212 [5] for details.

**Scrambler**: Refer to Subclause 7.3.1.1 in 3GPP TS38.211 [4] for details.

**Modulation Mapper**: Refer to Subclause 7.3.1.2 in 3GPP TS38.211 [4] for details.

**Layer Mapper:** Refer to Subclause 7.3.1.3 in 3GPP TS38.211 [4] for details.

**RE Mapper**: Refer to Subclause 7.3.1.5 and Subclause 7.3.1.6 in 3GPP TS38.211 [4] for details.

### Physical Downlink Control Channel

A Physical Downlink Control Channel (PDCCH) carries control information (DCI) such as scheduling information and resource grant to UEs. The PDCCH includes one or more Control Channel Elements (CCE, consists of 6 resource element group) based on the aggregation level defined by 3GPP specification [4]. The PDCCH processing flow is similar to the PDSCH. The PDCCH uses a polar code instead of LDPC. QPSK modulation is the designated modulation scheme for the PDCCH bits block.

### Downlink Reference Signals

The Downlink Reference Signals include:

* Demodulation Reference Signal (DMRS) for PDSCH, PDCCH and PBCH.
* Phase Tracking Reference Signal (PTRS)
* Channel State Information Reference Signal (CSI-RS)
* Primary Synchronization Signal (PSS)
* Secondary Synchronization Signal (SSS)

Refers to clause 7.4.1 in 3GPP TS38.211 specification [4] for more details related to the reference signals. The PSS and SSS combined with PBCH is known as SS/PBCH block, which consists of:

* 1 symbol PSS, 1 symbol SSS and 2 symbol PBCH.

### Physical Broadcast Channel

PBCH carries 5G NR system information for UEs. UEs need to decode the PBCH information in order to access the 5G cell. PBCH information includes: downlink bandwidth, SFN, timing information in radio frame and SS burst periodicity. Polar codes are used as error correcting code for PBCH.

![]({{site.baseurl}}/assets/images/8d1b01c832fc.emf.png)

Figure -: PBCH processing flow diagram

**PBCH Payload Generation:** Creates the PBCH payload message, Refer to Subclause 7.1.1 in 3GPP TS38.212 [5] for details.

**Scrambling**: Refer to Subclause 7.1.2 in 3GPP TS38.212 [5] for details.

**CRC attachment**: Refer to Subclause 7.1.3 in 3GPP TS38.212 [5] for details.

**Channel Encoding**: Refer to Subclause 7.1.4 in 3GPP TS38.212 [5] for details.

**Rate Matching**: Refer to Subclause 7.1.5 in 3GPP TS38.212 [5] for details.

**Data Scrambling**: Refer to Subclause 7.3.1.3 in 3GPP TS38.211 [4] for details.

**Data Modulation**: Refer to Subclause 7.3.3.2 in 3GPP TS38.211 [4] for details.

**Resource Element Mapping**: Refer to Subclause 7.3.3.3 in 3GPP TS38.211 [4] for details.

**DMRS Sequence Generation**: Refer to Subclause 7.4.1.4 in 3GPP TS38.211 [4] for details.

**DMRS Scrambling**: Refer to Subclause 7.4.1.4 in 3GPP TS38.211 [4] for details.

**DMRS Modulation**: Refer to Subclause 7.3.3.2 in 3GPP TS38.211 [4] for details.

### Physical Random Access Channel

Physical Random Access Channel (PRACH) is used to carry preamble from UE to gNB. Based on PRACH, gNB is able to calculate the timing advance of each UE and make adjustments on Rx timing for all UEs. PRACH adopts ZC (Zero Correlation) sequences as preamble. It supports two sequence lengths (139 and 839) with various formats targeted for different deployment scenarios. As O-RAN fronthaul separates the PRACH processing into two parts, the CP removal, frequency shift, samples decimation/filter, FFT and de-mapping function are handled by O-RU; the O-DU PRACH processing flow is shown in Figure 7-4.

![]({{site.baseurl}}/assets/images/5726bcb8884d.emf.png)

Figure -: PRACH processing flow diagram

Each O-DU PRACH processing function blocks are described below. The details of the PRACH signal generation, formats are described in 3GPP specifications.

**Root Sequence Generation**: Refer to Subclause 6.3.3.1 in 3GPP TS38.211 [4] for details.

**Correlation**: Perform correlation operation between root sequence and received signals.

**iFFT**: Perform the iFFT operation of received signals.

**Antenna Combination**: Combine the received signals from all the antennas.

**Noise Estimation**: Perform the noise estimation operation

**Peak Search**: Detect the peak for different root sequences.

**Preamble Detection and Timing Advance (TA) Estimation**: Determine the preamble sequence and timing advance estimation.

### L1 Tasks Processing Flow

The L1 function processes are described in previous sections. Those processing blocks focus on specific task that needs to be completed in a timely fashion. Figure 7-5 shows the L1 related task processing blocks.

![]({{site.baseurl}}/assets/images/213107bd84aa.emf.png)

Figure -: L1 tasks processing diagram

**L2 FAPI processing:** Handle L2 interface request/response based on FAPI protocol. And triggers additional processing task if required.

**Timing events processing:** Handle timing related operations and triggers any prescheduled periodic tasks.

**FEC acceleration processing:** Handle FEC related operations and passes the FEC request to hardware and invokes call back function when the acceleration processing is completed.

**Front haul processing:** Handle all the front haul related Tx/Rx operations, and queue task if further processing is needed.

**UL task scheduling:** Manage all queued UL tasks and starts the processing operation accordingly.

**DL task scheduling:**Manage all queued DL tasks and starts the processing operation accordingly.

**PUSCH processing:** Process the PUSCH related tasks, refer to section 7.1 for details of processing requirements.

**PUCCH processing:** Process the PUCCH related tasks, refer to section 7.2 **Error! Reference source not found.** for details of processing requirements.

**PRACH processing:** Process the PRACH related tasks, refer to section 7.8 for details of processing requirements.

**PDSCH processing:** Process the PDSCH related tasks, refer to section 7.4 for details of processing requirements.

**PDCCH processing:** Process the PDCCH related tasks, refer to section 7.5**Error! Reference source not found.** for details of processing requirements.

**PBCH processing:** Process the PBCH related tasks, refer to section 7.7 for details of processing requirements.

**M-Plane processing:** Process the fronthaul M-plane related task for O-RU configuration, management, and operation control.

**Energy Saving processing:** Process the O-RAN energy saving related power capability configuration and power control using M-plane and CUS-plane messages.

### Front Haul Module

The fronthaul module supports the open fronthaul interface specified by O-RAN Fronthaul Specification [22] lower level split distributed gNB architecture [22]. The detailed requirements and control and data plane protocols are described in O-RAN Fronthaul CUS-plane specification. The module is responsible for communication between the O-DU and O-RU. The fronthaul module processes incoming O-RAN Fronthaul CUS-plane packets and constructs outgoing CUS-plane packets. Figure 7-6 illustrates an example implementation of hardware accelerated packet processing related to the fronthaul interface.

![]({{site.baseurl}}/assets/images/aa457e4a4fb8.emf.png)

Figure -: Fronthaul library and interfaces

The FH library APIs are listed in the following table.

Table - Fronthaul library APIs

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **API Name** | **Parameters** | **Description** |
| FH Init | Returns handle which is used later | Instantiate the lib memory model and thread |
| FH start | FH handle | Start processing front haul packets for DL and UL |
| FH stop | FH handle | Stop processing of DL and UL |
| FH close | FH handle | Remove usage of front haul resources |
| FH mm destroy | FH handle | Destroy memory structure |

</div>

### O-DU Timing Synchronization

In order to meet the timing accuracy in microsecond to sub-microsecond precision requirement over the air interface, O-DU clock needs to synchronize with the Grand Master Clock (GMC). The location of GMC and its connectivity to DU is out of scope of this specification. Please refer to Chapter 9 of [22] for details of S-plane (synchronization) aspects.

O-RAN fronthaul defines several timing distribution network topologies. IEEE1588 is used for O-RAN nodes timing synchronization protocol. GNSS based timing synchronization is another option for O-DU acquiring high accuracy timing. With GNSS based timing synchronization, first, the satellite timing messages are decoded by GNSS receiver, then the 1PPS output signal is generated. As described in O-RAN white box hardware reference specification, the 1PPS signal is connected with the PHC on fronthaul NIC. The O-DU is able to choose either IEEE1588 or GNSS synchronization method. Or it can use either one as primary timing synchronization source while keeping the other one as the backup. Here, a LinuxPTP based timing synchronization method is shown as an example. It may be used for O-DU to synchronize with GMC and distribute the clock to O-RU.

![]({{site.baseurl}}/assets/images/5cfd76ad8895.emf.png)

Figure -: O-DU Timing Synchronization

In Figure 7-7, first, O-DU syncs up backhaul NIC PHC with GMC; second, the system clock syncs up with backhaul PHC using PHC2Sys; then the O-DU software (fronthaul library) gets the system clock using Linux kernel function call. The fronthaul NIC PHC syncs up with system clock through PTP4L. The O-DU becomes boundary clock and is able to distribute the clock through front haul network to O-RU.

In case of loss of PTP sync in a vO-DU (Cloudified O-DU), the O-Cloud is notified using an event trigger as described in 7.2.3 of [38].

### Accelerator Abstraction Layer (AAL)

In previous sections, the focus is on running a complete L1 layer data on general purpose processor. In certain use cases, a dedicated hardware is used along with host processor to fulfil specific requirements on latency, power efficiency, etc. The hardware accelerator can be implemented on many types of devices such as GPU, FPGA, or ASIC. The accelerator hardware is implementation dependent and is out of scope of this specification. Even so, it is necessary to define a standardized interface to hardware accelerator, which will make the software stack portable with different hardware platform. Based on the data processing flow, the hardware accelerators are categorized into two models: lookaside and inline. In the lookaside model, an accelerator is invoked by the L1 host application to offload designated functions; when acceleration functions are completed, the results are sent back to the host application. With the inline acceleration model, the host processor invokes the accelerator to offload the data processing work, however the result is not sent back to the host. The following figures illustrates L1 processing flow based on these two types of hardware acceleration models.

1. Lookaside accelerator processing flow

![]({{site.baseurl}}/assets/images/21c36e795fdd.emf.png)

Figure -: Lookaside Accelerator Model

1. Inline accelerator processing flow

![]({{site.baseurl}}/assets/images/7c5fde504eaf.emf.png)

Figure -: Inline Accelerator Model

Figure 5.8 shows the lookaside acceleration model. For the uplink data processing, the host receives the data from O-RAN via fronthaul interface; for the downlink processing, the host processor receives the data from L2 via L1/L2 interface. When either uplink or downlink data needs to be processed by accelerator, the host processor handovers the workload to the accelerator; after the data processing is completed, the results are turn over to the host. Figure 5-9 shows the inline accelerator model. In this case, the accelerator directly receives the uplink data from O-RU via front haul interface. When the L1 process is completed, the result is sent to the host via AAL in order to continue the L2 processing. For the downlink process, the finished L2 data is sent to the accelerator via AAL for L1 processing. When the L1 downlink is completed, the results are sent to O-RU.

### AAL Lookaside Profile

### Lookaside FEC Profile

In general, any combination of L1 functions can be offload to the accelerator. In real deployment, only those functions take more computing power will be offloaded to the accelerator. The accelerator design is implementation specific. To better represent accelerator's functional capabilities, AAL profile is used to differentiate the combination of accelerator architecture and functions. AAL lookaside profile indicates the accelerator adopted the lookaside processing model. The AAL lookaside processing flows are explained in the early section. During the L1 process, the host application initiates the offload work to accelerator, meanwhile the host may perform other work in parallel, it retrieves the result once the work is complete. The AAL FEC Profile includes both uplink and downlink function of PDSCH and PUSCH. The downlink functions are CRC Generation, LDPC Encoding, Rate Matching. The uplink functions are Rate De-matching, LDPC Decoder, CRC Check. These functions can be invoked sequentially or individually.

![]({{site.baseurl}}/assets/images/94ace10d529b.emf.png)

Figure -: Lookaside FEC Accelerator

### FEC APIs

Refer to the O-RAN OSC for FEC APIs details.

### Massive MIMO Optimization

The Massive MIMO (mMIMO) technology is adopted to improve the wireless performance, coverage and the QoS. The beamforming method is the essential element of mMIMO which greatly affects the throughput of wireless network. To optimize the mMIMO beamforming, the non-RT and near-RT RIC utilize the UE/BS channel condition, mobility, and measured performance data to assisted beamforming mode selection. The Grid-of-Beam (GoB) [40] and non-Grid-of-Beam (non-GoB) [41] are two different approaches of beamforming methods that can be used in the O-RAN system [40]. In case of non-GoB, the beamforming weights are generated dynamically in real time instead of using predefined beam set. As O-RAN does not standardize the beamforming algorithm, there are many algorithms that vendors can chose for non-GoB BF weight calculate. The SRS based dynamic BF weight generation is commonly used for non-GoB beamforming weight calculation. There are many factors (SRS periodicity, channel estimation and BF weight calculation algorithms) will affect the effectiveness of non-GoB performance, and the combination of these factors corresponding a BF mode. Various non-GoB modes can be designed to meet the requirements of different UE locations and channel situations [42]. Figure 7-11 diagram describes the SRS based non-GoB operation flow.

![]({{site.baseurl}}/assets/images/4ae72f46caa9.emf.png)

**Figure 7-11 Non-GoB mMIMO operation flow**

When non-GoB is used, the L1 and L2 need to share the information entities such as BF mode configuration, UE performance measurement KPIs to facilitate the AI/ML model training and inference operations . The following information listed in the Table 7-2.

**Table 7-2 L1/L2 Information Entities List**

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Info Name** | **Info type** | **Description/Notes** |
| Supported Non-GoB Beamforming Modes [42] | Number of BF mode > 1 (Numeric number)  Optional BF mode Index & description | L1 reports supported beamforming configurations modes and related info when requested via O1 interface |
| DL Synchronization Signal based Reference Signal Received Power (SS-RSRP) [42] |  | Reports the linear average of the DL SS-RSRP (in [W]) from UEs in the cell when SS-RSRP is used |
| DL Synchronization Signal based Signal to Noise and Interference Ratio (SS-SINR) [42] |  | Reports the linear average of the DL SS-SINR (in [W]) from UEs in the cell |
| UL Sounding Reference Signal based Reference Signal Received Power (SRS-RSRP) [42] |  | Reports the linear average of the UL SRS-RSRP (in [W]) measured for UEs in the cell. |
| Non-GoB BF Mode Configuration [43] | BF mode index (Numeric number) | Index represents a vendor defined proprietary Non-GoB BF algorithm. This index is within the range of Supported Non-GoB Beamforming Modes. |

</div>

### Fronthaul M-Plane Processing

The fronthaul M-plane is responsible for O-RU configuration management, performance management, software/file management, and fault management. NETCONF/Yang model is used for the fronthaul M-plane protocol. Refer to the WG4 Management Plane Specification for details.

![]({{site.baseurl}}/assets/images/898304631f60.emf.png)

**Figure 7-12 Fronthaul M-Plane Processing**

**Figure 7-12** shows the fronthaul M-plane processing flow which includes the protocol processing, message parsing and preparation, and the M-plane message execution operation.

### Energy Saving Processing

Energy saving (ES) is one of the key features of sustainable mobile network. The O-RAN energy saving function is achieved by utilizing the AI/ML technology to facilitate the ES operation. To optimize decision making, AI/ML model within Non-RT RIC/ Near-RT RIC predicts traffic, user mobility, and resource usage based on the RAN network status info and AI model. The non-RT RIC and near-RT RIC energy saving application determine the proper time to put the RAN operation in different energy saving modes and resume the normal operation when needed. The following sections describes energy saving operations to fulfill different use case scenarios.

### Energy Saving Feature Capability and Configuration

The O-RU reports energy saving capability, configurations to O-DU via M-plane during initialization. The capabilities include carrier deactivation for energy saving, TRX control module capabilities, ASM module capabilities, and energy saving capability common information. This information will be used by O-DU to setup the O-RU into proper energy saving state when it is required. The details of ES capabilities are described in the O-RAN fronthaul M-plane specification.

### Cell/Carrier Power Control

When the mobile network traffic volume is low, it is possible for RAN to get into save energy mode by switching off carrier(s) or entire cell without impairing the user experience. The handover may be required before bringing down carrier or cell.

The cell/carrier power control is done via M-plane message and operation procedure is provided below.

Power Off Cell/Carrier:

o The L1 function set the parameters energy-saving-enabled to "TRUE" and send M-plane message to O-RU

o L1 receives Cell/Carrier power off command from L2

o L1 set parameter [tr]x-array-carrier::deactive for correspond cell or carrier, and send the M-plane message to O-RU.

o If the O-RU fails to change the cell/carriers power state, an error message is sent to O-DU by O-RU

Power On Cell/Carrier:

o The L1 function set the parameters energy-saving-enabled to "TRUE" and send M-plane message to O-RU

o L1 receives Cell/Carrier power off command from L2

o L1 set parameter [tr]x-array-carrier:: active for correspond cell or carrier, and send the M-plane message to O-RU.

o If the O-RU fails to power on the cell/carriers power state, an error message is sent to O-DU by O-RU

### RF Channel Reconfiguration

In 5G mobile networks, when mMIMO is used to enhance the network performance on capacity, it requires more power for the RF channels. To create a green mobile network, during a low network traffic period, the O-RU can reduce the power consumption by switching off some Tx/Rx arrays. The RF Channel Reconfiguration operation procedure can be triggered by RIC xApp.

Before the RF Channel Reconfiguration can be performed, the O-DU gathers the O-RU supported antenna pattern via M-plane message, then the O-DU will send the TRX\_CONTROL command to the O-RU to disable a set of the antenna arrays.

![]({{site.baseurl}}/assets/images/5289d7160fdb.emf.png)

**Figure 7-13 RF channel reconfiguration** **Processing**

RF Reconfiguration Operation flow:

1. Receives RF reconfiguration from RIC energy saving application.

2. O-DU sends TRX control C-plane message with new antenna carrier pattern to O-RU.

3. Case 1, step1: For defined sleep period case, the O-RU configures the antennas and disable certain designated antennas and set sleep timer for specified period time at sleep start time.

4. Case 1, step2: O-RU will wake up and resume to normal operation state after sleep period.

5. Case 1, step3: O-RU may send Ack/Nack message to O-DU if the TRX message includes request for Ack/Nack.

6. Case 2, step1: For undefined sleep period case, the O-RU configures the antennas and disable certain designated antennas and enter sleep state at sleep start time.

7. Case 2, step2: O-RU receives second TRX control C-plane message with a set of antennas pattern.

8. Case 2, step3: O-RU set the antenna pattern and enable specified antennas.

### Advanced Sleep Mode

This energy saving feature is based on the capability of the O-RU. During system initialization phase, the O-RU reports its capable of supporting the ASM feature, which includes the number of sleep modes. Based on the policy and trained model, when the network traffic is low, RIC ES app can put the RAN into different level of sleep mode. The O-DU will take action to put the O-RU into sleep mode after receiving instruction from Near-RT RIC xApp.

the Advanced Sleep Mode operation processing flow show in **Figure 7-14**.

![]({{site.baseurl}}/assets/images/bd326763e04a.emf.png)

**Figure 7-14 Advanced sleep mode** **Processing**

Advanced Sleep Mode Operation flow:

1. Receives Advanced Sleep Mode request from RIC energy saving application.

2. O-DU sends ASM C-plane message to O-RU.

3. Case 1, step1: For defined sleep period case, the O-RU enters the sleep state for specified period time at sleep start time.

4. Case 1, step 2: O-RU will wake up and resume to normal operation state after sleep timer expired.

5. Case 1, step 3: O-RU may send Ack/Nack message to O-DU if the ASM message includes request for Ack/Nack.

6. Case 2, step 1: For undefined sleep period case, the O-RU enters the sleep state at sleep start time.

7. Case 2, step 2: O-RU receives second ASM control C-plane message to wake up O-RU.

8. Case 2, step 3: O-RU wake up.

### DMRS-BF

DMRS-based beamforming uses DMRS to calculate beamforming weights in the O-RU. The O-DU provides DMRS configurations of UEs/UE group to the O-RU. Upon receiving I/Q data via air interface, the O-RU uses DMRS for channel estimation, computes beamforming weights, and applies them to both PUSCH and DMRS data. This technique dynamically adjusts beam direction based on frequent DMRS updates, making it ideal for high mobility environments. It may also complete the equalization process within O-RU.

This method excels in tracking fast-moving UEs, ensuring stable, high-quality connections. By focusing energy on the UE, it improves signal quality, reduces interference, increases system capacity, and optimizes energy use. Thus, DMRS-based beamforming enhances network performance, supports high mobility, and optimizes signal direction for better efficiency and connectivity.

### DMRS-BF Initialization

The initialization process for DMRS-based beamforming begins by obtaining the DMRS-BF configuration information via the M-plane. Once the configuration is retrieved, the system checks whether DMRS-BF-EQ or DMRS-BF-NEQ is supported by both the O-DU and O-RU. If any one type of DMRS-BF is supported, the O-DU and O-RU are initialized accordingly, enabling channel estimation and beamforming based on the DMRS data. However, if DMRS-BF is not supported by either unit, the system automatically configures an alternative beamforming method, such as SRS-based or codebook-based beamforming, provided those methods are supported. This ensures that even in the absence of DMRS-BF capabilities, the system can still achieve optimized beamforming through other available techniques.

![]({{site.baseurl}}/assets/images/c67daff1e7a0.emf.png)

**Figure 7-15** DMRS-BF Initialization Process

### DMRS-BF Operation

In **DMRS-based beamforming,** the O-RU begins by collecting I/Q data from the antennas, which records both the amplitude and phase of the signal. The **DMRS** is then used to estimate channel conditions using various techniques and calculate beamforming weights. The details of techniques used in channel estimation and weights calculation are beyond the scope of this specification. These weights are applied to the I/Q data to improve signal quality by enhancing its directionality and reducing interference. This involves adjusting the phase and amplitude of signals from each antenna for optimal beamforming.

In the follow-on processing of O-DU, it may be desired to receive certain symbols first, so I would better process the data, e.g, receiving the DMRS signal for channel estimation. If necessary, the O-RU reorders the beamformed data to match the O-DU's data transmission requirements, as defined during initialization, ensuring seamless data handling. The processed **PUSCH** data is then transmitted to the O-DU over the fronthaul interface.

When the O-DU receives the data, it reassembles it if it had been reordered by the O-RU. Using the DMRS data, the O-DU performs channel estimation, determining how the channel has affected the signal. Equalization weights are then calculated and applied to the PUSCH data to correct any signal distortions caused by the channel.

After applying these equalization adjustments, the PUSCH data moves through further processing stages like decoding and error correction, ensuring the accuracy and reliability of the uplink transmission.

![]({{site.baseurl}}/assets/images/51ce6acde0c9.emf.png)

**Figure 7-16** PUSCH DMRS-BF Processing

# O-DU L2 Functional Blocks

Figure 8-1 illustrates the L2 functional blocks of O-DU as a reference design. An implementation may specify the modules differently.

**![]({{site.baseurl}}/assets/images/97a7595ae085.png)**

Figure 8-1 O-DU L2 functional blocks

**O-DU-OAM-Agent**: This module terminates O1 interface from the SMO or the management system. The OAM agent module:

* performs startup and registration procedure with SMO
* establishes and maintains transport and NETCONF connections
* handles configuration and reconfiguration messages on O1
* stores the latest configuration
* relays configuration parameters to appropriate L1 (High-PHY) and L2 modules
* receives and relays notifications over O1
* handles software management for O-DU and O-RU
* collects and send performance data files for O-DU and O-RU performance counters

The procedures and call flows for the above operations are described in [26]. The management plane for fronthaul supports only hierarchical mode as defined currently in [26].

**E2 handler**: This module terminates E2 interface from near real-time RIC. This module handles the following:

* E2/SCTP interface termination
* E2AP protocol message send/receive
* Configure appropriate KPI measurements in L2 and L1 modules
* Report metrics over E2
* Actions to be relayed to other modules (based on E2 messages)
* Relaying response over E2

The E2 global procedures and functional procedures are defines in [27] and [28] respectively. The E2 service models for different use case implemented by following the generic design described in 8.2.

**F1 Control Plane interface handling modules (F1AP handler)**: It consists of tasks related to cell management, UE management and semi-static Air Interface Resource Management at the cell level. It does tasks defined in 3GPP TS 38.473 [18].

1. Cell State Manager: It handles all the tasks related to the handling of cells at O-DU Cell Start, Cell Stop, etc. It also manages a Finite State Machine (FSM) for handling cell specific procedures. This includes maintaining the cell broadcast information. There would be per cell FSM which would run independently of another cell's FSM.
2. UE State Manager: It handles the procedures related to a UE, e.g., SRB packet transfer, UE Context Setup, Release procedure, UE Context Modification procedure, etc. It also manages an internal state machine for handling UE specific procedures. It interacts with other layers like RLC/MAC/F1U for UE level interactions and signaling.
3. F1AP Interface Manager: This interacts with the O-CU-CP (Control Unit) to control communication setup, and it exchanges F1AP messages over SCTP interface. It also decodes/encodes the messages and exchanges the same messages with other tasks.
4. Resource Manager: This block performs tasks like Admission Control, Bearer Control, etc. It also takes care of managing all the air interface resources for a UE, e.g., physical level resource allocation (SR, CSI resources), etc.

**F1 User Plane interface handling modules**: It consists of tasks related to Tunnel management, DL and UL Data and Downlink flow control. It does tasks defined in 3GPP TS 29.281 [2] and TS 38.425 [15].

1. Data Plane Application: Handles DL Data packets received within 3GPP TS 29.281 [2] defined NR RAN Container and performs UL Data packet transmission for packets received from RLC. This Application invokes eGTPU encapsulation/decapsulation functionality for eGTPU header processing.
2. eGTPU encaps/decaps: This functional block performs eGTPU header decapsulation and processing in DL and eGTPU header encapsulation for the UL packets at F1-U.
3. Downlink Flow Control: Downlink Data Delivery Status generation with feedback received from RLC.

**RLC Protocol modules**: These modules handle processing related to SRB and DRB plane. It does tasks defined in 3GPP TS 38.322 [8]. RLC uses the logical channel for data transfer. MAC layer indicates the downlink data notification request for a logical channel along with the desired RLC PDU size. RLC segments (optionally) the SDUs depending upon the size requested from MAC and sends the RLC PDUs to MAC. MAC layer also indicates uplink data by sending RLC PDUs. RLC layer forms SDUs by reassembling the received PDUs and transmits SDUs to upper Layer via F1 interface. It does tasks defined in 3GPP TS 38.322 [8].

1. UE and Bearer Context management
2. RLC Mode Receiver and Transmitter
   1. TM Mode
   2. UM Mode
   3. AM Mode

**MAC Protocol modules**: MAC modules include RACH management, HARQ Management, DL and UL Data, BCCH/PCCH/CCCH processing, MAC Transport Block formation, etc. It does tasks defined in 3GPP TS 38.321 [7].

1. UE and Bearer Context Management: Stores the semi-static information on air interface resources for the UE. It keeps the QoS related information for the scheduler.
2. HARQ Management: Performs DL and UL HARQ management by keeping track of HARQ feedback, HARQ timer and providing free HARQ processes information to the scheduler.
3. RACH Manager: RACH (Preamble) resource management, CRNTI Assignment, Message-2,3,4 resource allocation and handling.
4. CCCH Manager: Handles the DL and UL CCCH message and corresponding HARQ.
5. Resource Assign: PDCCH, PDSCH, PUCCH and PUSCH Resource Assignment based on resource allocation schedule from the scheduler.
6. MAC Encoder: It creates MAC Transport block based on input from the scheduler. It interfaces with RLC to get RLC PDUs.
7. Demultiplexer: Demultiplexing UL Transport block containing MAC CE and RLC PDUs and sends it to respective tasks.
8. CSI Manager: Configuration of "Channel State Information" and informing the CSI feedback from UE to the scheduler.
9. PHY-MAC Interface: Receive and transmit the L1-L2 interface messages.
10. Beam Failure Detection and Recovery: Beam failure detection in the UE based on the configured beam failure detection reference signal by the gNB and beam failure recovery by performing contention free RACH procedure to the suitable candidate beam.

### L2 MAC Scheduler

Figure 8-2 illustrates the MAC scheduler components present in O-DU architecture. It is assumed that the DU includes complete MAC and scheduler functions implemented in the same physical platform.

NR Scheduler

UL Resource Scheduler

DL Resource Scheduler

DL Link Adaptation

UL Tx Power Control

UL Link Adaptation

DL MIMO Mode Control

TA Manager

UL MIMO Mode Control

Figure 8-2 L2 MAC scheduler components

NR Scheduler functional block has been further expanded into indicative smaller functional sub-blocks to capture the scheduler functionality.

Note: An actual implementation may divide the scheduler into functional sub-blocks differently.

* DL/UL Resource Scheduler: This corresponds to functionality of time-domain and frequency domain scheduling in DL and UL, respectively. Resource scheduling is performed per scheduling period and may be performed for a single slot or multiple slots. Massive MIMO focuses on beamforming for capacity enhancement with full digital array structure for frequency<6GHz and hybrid/analog architecture for frequency >6GHz. It is also feasible to have single beam approach for low carrier frequency, however multi-beam approach is desirable for higher carrier frequency. It may include functions such as beam selection, selecting of UEs and associated bearers per scheduling period, allocation of radio resources for PDCCH, PUSCH, PDSCH and associated channels like DMRS. The beam selection is based on various beamforming method supported in the gNB system. In the case of predefined beamforming method, an index called "beamId" indicates the specific beam pre-defined in the O-RU to use in case of hybrid architecture. However, in case of Hierarchical architecture, the beam indices are pre-defined in the O-DU as defined by O-RAN Fronthaul M-Plane specification [21]. The beam selection function selects beam indices "beamId" that is applied to DL or UL data. In the case of dynamic beamforming, the beamforming weights are given to be applied as defined in the O-RAN Fronthaul CUS Plane specification [20]. It may also include functions/algorithm to support slice differentiation as specified by RRMpolicy for the resource type (PRB) so as to meet the specific SLA. It may also include the slice metric so as to prioritize the specific slice scheduling in a particular TTI that enables the gNB DU system to meet the slice level agreement.
* DL/UL Link Adaptation (LA): This functionality performs per UE Link Adaptation in DL and UL, respectively. Link Adaptation may be performed based on channel quality reported by UE or estimated at gNB corrected by BLER. LA would return effective MCS to be used for channel allocation to the UE.
* UL Tx Power Control: Performs Closed loop UL power control for PUSCH, SRS and PUCCH. It may estimate the UL Tx power based on UE feedback (e.g.: Power Headroom Report) or measured UL channels.
* DL/UL MIMO Mode Control: Determines per UE the MIMO mode, in DL and UL, respectively, to be used along with the corresponding precoding matrix.
* TA Manager: Estimating the TA Command for UE based on feedback from L1 using PUSCH, PUCCH and SRS.

Performance metrics (Capacity, throughput etc.) will be dependent on software implementation and underlying hardware.

### Supporting E2 service models

E2 service models are supported as per call flows as per specifications from O-RAN WG5. Each service model enables a use case across O-RAN nodes. The following generic design in O-DU and O-CU supports any service model with report/insert/control/policy services with the neat real-time RIC.

![]({{site.baseurl}}/assets/images/9c82d0677ac4.png)

Figure 8-3 E2 service model support in O-DU

When an E2 message is received at O-DU, the E2 handler module interacts with SM (Service Model) Fanout module to deliver the messages to internal module related to the service model. The SM fanout module consults the SM catalog module and finds the SM specific modules and APIs to be invoked the SM-Service-API-Table module contains maps the following:

* SM service, E2 messages corresponding
* Receiver module(s) for each E2 message and the message contents to be relayed

When the O-DU sends an E2 message, it is sent through the E2 Sender module which consults SM Catalog module and maps the respective E2 message API. The E2 sender uses KPIs in KPI module when KPIs are reported in an E2 message.

O-DU handles E2 messages and performs control or reporting actions as per he service models defined by O-RAN WG3. The following service modules are currently defined

E2SM-KPM: Refer to [42]

E2SM-RC: Refer to [43]

E2SM-CCC: Refer to [44]

### O-DU Cloudification

Please refer to O-RAN WG6 specifications for cloud deployment of O-DU. The network functions need to be secured with cryptographic protection as specified in [39].

### O-DU Security

All the O-DU interfaces need to be secured as specified in [39].

# O-CU Software Architecture

O-CU node interacts with one or more O-DU nodes through F1 interface.

![]({{site.baseurl}}/assets/images/11535759325c.png)

![A diagram of a diagram  Description automatically generated]({{site.baseurl}}/assets/images/26d42544935b.png)

Figure 9-1 O-CU interfaces

### O1 Interface

O1 interface is an interface between management entities in Service Management and Orchestration Framework and O-CU. It is used for operation and management, by which FCAPS management, Software management, File management is achieved.

### F1 Interface

F1 interface supports control plane and user plane separation. The following describe the functions supported over F1-C and F1-U.

The main services and functions of F1-C:

* F1 interface management function
* System Information management function
* F1 UE context management function
* RRC message transfer function
* Paging function
* Warning messages information transfer function

The main services and functions of F1-U:

* Transfer of user data
* Flow control function

### E2 Interface

A near real-time RIC can configure and control an O-CU via the E2 interface, based on the service models defined. The service models and E2 messages are defined in O-RAN WG3 specifications.

### O-CU Cloudification Aspects

Please refer to O-RAN WG6 specifications for cloud deployment of O-CU.

# O-CU Functional Blocks

Figure 10-1 below outlines the O-CU functional blocks. An implementation may specify the modules differently.

![]({{site.baseurl}}/assets/images/86f62b665d3b.png)

Figure 10-1 O-CU Functional Blocks

The O-CU comprises of O-CU-CP and O-CU-UP.

### O-CU-CP Functional Blocks

O-CU-CP handles the control plane functionality of O-CU.

### O-CU-CP-OAM-Agent

O-CU-CP-OAM-Agent manages following services of O-CU-CP:

* Configuration and Control Management
* Performance Counter Management
* Fault Management

O-CU-CP-OAM receives the configuration for O-CU-CP and configures all the modules of O-CU-CP. It may perform operations like spawning of O-CU-CP modules, and software downloading for O-CU-CP.

O-CU-CP-OAM collects the performance counters of O-CU-CP and reports it to performance management entity present in the network.

O-CU-CP-OAM manages the faults and alarms raised at O-CU-CP and reports it to fault management entity present in the network.

### gNB Procedure Management

Figure 10-2 shows the detailed view of gNB Procedure Management functional block. gNB Procedure Management manages the non-UE associated NGAP and XnAP procedures like NG/Xn Interface Management and Configuration Transfer procedures as defined in 3GPP TS 38.413 [13], TS 38.423 [14] and TS 38.473 [18]. The functional sub-blocks shown in figure below are indicatively used to capture the functionality of gNB Procedure Management functional block and could be realized differently.

NGAP Interface Procedure Management

F1AP Interface Procedure Management

gNB Multi-cell Procedure Management

XnAP Interface Procedure Management

Figure 10-2 gNB Procedure Management Functional Blocks

**Procedure Management**: This functionality handles procedures and business logic involving application of the procedure across multiple cells of the gNB. For example, reset triggered due to NGAP link down involving coordination among multiple cells and UE specific paging as described in 3GPP TS 38.413 [12].

**NGAP Interface Management**: This functionality manages Interface Management procedures, Configuration Transfer procedures, and Warning Message Transmission Procedures over NGAP interface with AMFs as described in 3GPP TS 38.413 [12]. It establishes the association with AMFs. It monitors the association with AMFs. It also maintains context for each AMF with which O-CU is connected and stores information like link status with AMF.

**XnAP Interface Management**: This functionality manages the Global procedures over XnAP interface with peer O-CUs as described in 3GPP TS 38.423 [13]. It establishes the association with peer O-CUs and also accepts association requests from peer O-CUs based on configuration provided by higher layers. It monitors the association with peer O-CUs. It also maintains context for each peer O-CU with which O-CU is connected and stores information like link status with peer O-CU.

**F1AP Interface Procedure Management**: This functionality manages Interface Management procedures over F1AP interface with O-DUs as described in 3GPP TS 38.470 [16] and 38.473 [18]. It establishes the association with O-DUs and also accepts association requests from O-DUs based on configuration provided by higher layers. It monitors the association with O-DUs. It also maintains context for each O-DU with which O-CU is connected and stores information like link status with O-DU.

### Cell Procedure Management

Cell Procedure Management manages the cell level procedures at O-CU like system information management described in 3GPP TS 38.331, procedures for dual connectivity, global procedures like Cell Activation described in 3GPP TS 38.423 [13], Warning Message Transmission procedures, and System Information Procedures described in 3GPP TS 38.473 [18].

It maintains multiple state machines to handle various cell level procedures. It may have separate state machines for various cell procedures like Cell Setup, Cell Delete, Cell Start, Cell Stop, and Cell Reconfiguration. It also maintains context of each cell to store information like cell state, number of UEs served by the cell, and cell broadcast information.

It manages the cell level performance counters and provides this information to O-CU-CP-OAM.

### UE Procedure Management

UE Procedure Management manages the UE Access Control and signalling procedures at O-CU by binding together UE associated RRC, NGAP, XnAP, and F1AP signalling transactions into end-to-end procedures.

This functionality binds together the following signalling procedures on different 3GPP interfaces:

* 3GPP TS 38.331 defined procedures like RRC Connection Control, Inter-RAT mobility, Measurements, UE capabilities and other UE associated procedures.
* 3GPP TS 38.413 [12] defined procedures like UE Context Management procedures, UE Mobility Management procedures, PDU Session Management procedures, Transport of NAS Messages procedures, Trace Procedures, Location Reporting procedures, UE Radio Capability Management procedures, and Data Usage Reporting Procedures.
* 3GPP TS 38.423 [13] defined inter-gNB procedures for Basic mobility and for gNB-gNB Dual Connectivity.
* 3GPP TS 38.473 [18] defined procedures like UE Context Management procedures, and RRC Message Transfer procedures.

This functionality maintains multiple state machines to handle various UE associated procedures. It may have separate state machines for different UE procedures like UE attach, UE handover, UE context modification, and UE measurement. The single FSM handles NGAP and RRC messages involved in a UE associated procedure, coordinating among AMF, UE, O-DU and other modules of O-CU. It also maintains context of each UE to store information like UE state, various UE AP Ids, and ongoing procedure related information.

### RRC Encoder and Decoder

RRC Encoder and Decoder encodes and decodes all RRC ASN content as described in 3GPP TS 38.331. RRC ASN encoding is performed for sending message to UE and for preparing containers to be exchanged during handover, etc. RRC ASN decoding is performed on receiving messages from UE and on receiving containers exchanged during handover, etc. RRC Encoder and Decoder is accessed by Cell Procedure Management and UE Procedure Management functional blocks. Cell Procedure Management accesses it for RRC ASN encoding of broadcast messages and paging message. UE Procedure Management accesses it for encoding and decoding of all the messages exchanged with UE and for populating the RRC ASN content in handover containers.

### NGAP Encoder and Decoder

NGAP Encoder and Decoder encodes and decodes all NGAP ASN message as described in 3GPP TS 38.413 [12]. NGAP ASN encoding is be performed for sending message to AMF. NGAP ASN decoding is performed on receiving messages from AMF. NGAP Encoder and Decoder is accessed by gNB Procedure Management and UE Procedure Management functional blocks. gNB Procedure Management accesses it for non-UE associated procedures between O-CU and AMF. UE Procedure Management accesses it for encoding and decoding of all the UE associated messages exchanged with AMF.

### XnAP Encoder and Decoder

XnAP Encoder and Decoder encodes and decodes all XnAP ASN message as described in 3GPP TS 38.423 [13]. XnAP ASN encoding is performed for sending message to peer O-CU. XnAP ASN decoding is performed on receiving messages from peer O-CU. XnAP Encoder and Decoder is accessed by gNB Procedure Management and UE Procedure Management functional blocks. gNB Procedure Management accesses to perform non-UE associated procedures with peer O-CU. UE Procedure Management accesses it for encoding and decoding of all the UE associated messages exchanged with peer O-CU.

### F1AP Encoder and Decoder

F1AP Encoder and Decoder encodes and decodes all F1AP ASN content at O-CU as described in 3GPP TS 38.473 [18]. F1AP ASN encoding is performed for sending message to O-DU. F1AP ASN decoding is performed on receiving messages from O-DU. F1AP Encoder and Decoder is accessed by gNB Procedure Management and UE Procedure Management functional blocks. gNB Procedure Management accesses it to perform non-UE associated procedures with O-DU. UE Procedure Management accesses it for encoding and decoding of all the UE associated messages exchanged with O-DU.

### O-CU-UP Control

O-CU-UP Control function configures and controls the CU User Plane entities as per the E1 interface defined by 3GPP. This function is invoked primarily by the UE Procedure Management functionality though the non-UE associated procedures would be invoked by the gNB and Cell Procedure Management functionality.

### Mobility

### Inter-O-CU Handover

Handover between O-CUs is described in the call flow below.

Figure 10-3 Inter NG-RAN NG based handover (C-Plane Handling)

F1AP

PDCP

O-DU

NGU

RRC

F1AP

PDCP

F1U

NGU

RRC

AMF

Source gNB

Target gNB

1. Handover Decision

2. HO Preparation Info Request

3. HO Preparation Info Response

5. UE Context Modification Request

4. UE Context Modification Request

6. UE Context Modification Response

7. UE Context Modification Response

8. Start TNGRELOCprep Timer

9. Handover Required

10. Handover Request

11. Admission Control

12. PDCP Entity Establishment Request

13. PDCP Entity Establishment Response

14. F1U Entity Establishment Request

15. F1U Entity Establishment Response

16. UE Context Setup Request

17. UE Context Setup Request

18. UE Context Setup Response

19. UE Context Setup Response

20. F1U Entity Reconfigure Request

21. F1U Entity Reconfigure Response

22. NGU Entity Establishment Request

23. NGU Entity Establishment Response

24. Handover Request Acknowledge

25. Handover Command

26. Stop TNGRELOCprep and Start TNGRELOCoverall

29. NGU Entity Reconfiguration Request

30. NGU Entity Reconfiguration Response

32. UE Context Modification Request

31. UE Context Modification Request

34. UE Context Modification Response

35. UE Context Modification Response

33. Downlink Data Delivery Status

36. RAN Status Transfer Request

37. RAN Status Transfer Response

38. Uplink RAN Status Transfer

39. Downlink RAN Status Transfer

40. RAN Status Transfer Indication

43. SRB Data Request

41. UL RRC Message Transfer

42. UL RRC Message Transfer

46. UE Context Release Command

47. UE Context Release Procedure

48. UE Context Release Complete

44. Data Buffer Stop Indication

45. Handover Notify

27. PDCP Entity Suspend Request

28. PDCP Entity Suspend Response

O-CU

O-CU

O-DU

1. The source gNB RRC decides for handover.
2. Source gNB RRC requests PDCP to provide HO preparation info by sending message *HO Preparation Info Request*. In this message, RRC provides target Cell Id and may provide list of cells under control of target gNB, required for potential re-establishment by the UE in these cells to succeed.
3. PDCP sends *HO Preparation Info Response* to RRC containing list of ShortMAC-I prepared for the cell list received in *HO Preparation Info Request*. PDCP may also report ue-InactiveTime.
4. RRC sends *UE Context Modification Request* to GNB CU F1AP to query gNB DU configuration.
5. GNB CU F1AP sends *UE Context Modification Request* to DU to query gNB DU configuration by setting GNB-DU Configuration Query to TRUE.
6. gNB DU provides CellGroupConfig in DU to CU RRC Information IE in *UE Context Modification Response* to gNB CU F1AP.
7. gNB CU F1AP provides the information received from DU to RRC in *UE Context Modification Response*.

Note: If RRC maintains the DU CellGroupConfig then steps 4 to 7 are not required.

1. Starts TNGRELOCprep timer.
2. Source gNB RRC sends *Handover Required* message to the AMF.
3. Target gNB RRC receives *Handover Request* from AMF.
4. RRC performs UE admission control and allocates resources for the UE.
5. RRC creates UE entity at PDCP by sending message *PDCP Entity Establishment Request*.
6. After creating UE entity, PDCP sends response message *PDCP Entity Establishment Response* to RRC.
7. RRC creates UE entity at F1U by sending message *F1U Entity Establishment Request*.
8. After creating UE entity, F1U sends response message *F1U Entity Establishment Response* to RRC. This message includes UL tunnel information for each DRB to be shared with DU to receive uplink data from DU.
9. RRC sends *UE Context Setup Request* message to F1AP to create UE entity at DU.
10. F1AP sends *UE Context Setup Request* message to DU to create UE entity at DU.
11. After creating UE entity at DU, sends *UE Context Setup Response* message to F1AP. This message includes DL tunnel information for each DRB to be shared with gNB CU F1U to receive downlink data from CU.
12. F1AP sends *UE Context Setup Response* message to RRC.
13. RRC reconfigures UE entity at F1U by sending message *F1U Entity Reconfigure Request*. In this, RRC provides the DL tunnel information received from DU.
14. After reconfiguring UE entity, F1U sends response message *F1U Entity Reconfigure Response* to RRC.
15. RRC creates UE entity at NGU by sending message *NGU Entity Establishment Request*. RRC will also provide forwarding tunnels configuration to NGU, if required.
16. After creating UE entity, NGU sends response message *NGU Entity Establishment Response* to RRC.
17. After preparing the target gNB for UE, RRC sends *Handover Request Acknowledge* message to AMF. This message also contains HandoverCommand IE for UE.
18. Source gNB RRC receives *Handover Command* message from target gNB.
19. Source gNB RRC stops TNGRELOCprep timer and start TNGRELOCOverall timer.
20. RRC sends *PDCP Entity Suspend Request* to suspend data in downlink for the UE.
21. After suspending the data, PDCP sends *PDCP Entity Suspend Response* to RRC.
22. RRC reconfigures NGU with message *NGU Entity Reconfiguration Request* to configure forwarding tunnels for DRBs for which target gNB has provided DL Forwarding UP TNL Information or UL Forwarding UP TNL Information or both.
23. NGU sends *NGU Entity Reconfiguration Response* after configuring the forwarding tunnels. After this, source gNB will start forwarding data to target gNB.

Note: If target gNB does not provide DL Forwarding UP TNL Information or UL Forwarding UP TNL Information, data forwarding will not be configured. In that case, step 29 and step 30 is not be performed.

1. RRC sends *UE Context Modification Request* to GNB CU F1AP to stop DL data transmission.
2. gNB CU F1AP sends *UE Context Modification Request* to DU which includes RRCReconfiguration message and indicates to stop the data transmission for the UE.
3. DU may indicate RRCReconfiguration message delivery to UE status to gNB CU F1AP.
4. DU responds with *UE Context Modification Response* to gNB CU F1AP.
5. gNB CU F1AP responds with *UE Context Modification Response* to RRC.
6. RRC requests PDCP to provide uplink PDCP-SN and HFN receiver status and the downlink PDCP SN and HFN transmitter status of RLC AM DRBs for which PDCP status preservation applies in message *RAN Status Transfer Request* so that same can be provided to target gNB.
7. PDCP reports uplink PDCP-SN and HFN receiver status and the downlink PDCP SN and HFN transmitter status of RLC AM DRBs in *RAN Status Transfer Request* message.
8. RRC provides uplink PDCP-SN and HFN receiver status and the downlink PDCP SN and HFN transmitter status of RLC AM DRBs to target gNB in *Uplink RAN Status Transfer* message. After sending this, source gNB RRC waits for *UE Context Release Command* message from AMF.
9. Target gNB receives source gNB *Downlink RAN Status Transfer* for RLC AM DRBs on which PDCP status preservation applies.
10. RRC sends RAN Status Transfer Indication to PDCP to provide uplink PDCP-SN and HFN receiver status and the downlink PDCP SN and HFN transmitter status of RLC AM DRBs received from source gNB via AMF.

Note: If RLC AM DRB is not configured, steps 36 to 40 is not be performed. In that case, source gNB RRC can receive UE Context Release Command from AMF any time after performing step 32.

1. After handover execution at source gNB, UE sends RRCReconfigurationComplete to target gNB DU which target gNB DU sends to target gNB CU F1AP in *UL RRC Message Transfer* message.
2. gNB CU F1AP sends the received RRCReconfigurationComplete message to PDCP in *UL RRC Message Transfer* message for decryption and deciphering.
3. PDPC decrypt and decipher RRCReconfigurationComplete and sends it to RRC as payload in *SRB Data Request* message.
4. On receiving RRCReconfigurationComplete, RRC sends *Data Buffer Stop Indication* to PDCP so that PDCP can process the buffered data and resume the data at target gNB.
5. Target gNB RRC sends *Handover Notify* to AMF to indicate successful completion of handover procedure at target gNB.
6. After successful handover of UE at target gNB, AMF sends *UE Context Release Command* to source gNB which is handled by source gNB RRC.
7. Source gNB initiates local UE release procedure.
8. After completion of UE release, source gNB RRC sends *UE Context Release Complete* message to AMF.

### Inter-O-DU Handover within an O-CU

This procedure is defined for the use case when UE moves from one gNB-DU to another gNB-DU within the same gNB-CU during NR operation.

This message descriptions are captured high level with the intend to specify the inter-layer messages interaction on top of 3gpp messages. FAPI messages are not detailed here (Reference for FAPI specification [29], [30]).

![]({{site.baseurl}}/assets/images/63fd0605854a.png)

![]({{site.baseurl}}/assets/images/c112b26b9060.png)

![]({{site.baseurl}}/assets/images/1c1d681a0078.png)

Figure 10-4 Inter NG-RAN NG based handover (C-Plane Handling)

**Assumption: UE is RRC connected with gNB and PDU data session is active.**

* The UE sends Measurement Report message to the source gNB-DU. gNB-DU receives the UL Information Transfer message and it send the PUSCH message to the MAC/RLC layer.
* The UL RRC message transfer message is sent by RLC to F1AP over RLC-F1AP interface, later O-DU/F1AP layer sends the UL RRC Message Transfer to F1AP layer at O-CU to convey the UE Measurement Report message.
* F1AP later at O-CU sends the UL RRC Message Transfer message to RRC layer via PDCP interface.
* The gNB-CU makes an handover decision to the another cell belonging to the target gNB-DU.
* Optionally the gNB-CU may send an UE CONTEXT MODIFICATION REQUEST message to the source gNB-DU to query the latest configuration. Optionally the source gNB-DU sends the UE Reconfiguration Request to MAC/RLC layer and get the UE Reconfiguration Response from the respective protocol layers in case gNB-DU application does not store the latest configuration.
* The source gNB-DU responds with an UE CONTEXT MODIFICATION RESPONSE message that includes latest full configuration information.
* The gNB-CU sends an UE CONTEXT SETUP REQUEST message to the target gNB-DU to create an UE context and setup one or more data bearers. The UE CONTEXT SETUP REQUEST message includes HandoverPreparationInformation. The target gNB-DU sends the UE Create Request to the MAC and RLC layer to create the UE context with radio resources and receives UE Create Response from the respective protocol layers.
* The target gNB-DU responds with an UE CONTEXT SETUP RESPONSE message if the target gNB-DU can admit resources for the handover.
* The gNB-CU sends an UE CONTEXT MODIFICATION REQUEST message to the source gNB-DU, which includes RRCReconfiguration message towards the UE. The gNB-CU also indicates the source gNB-DU to stop the data transmission for the UE.
* The source gNB-DU sends the UE Reconfiguration Request to MAC/Scheduler and RLC layer and get the UE Reconfiguration Response from the respective protocol layers.
* The source gNB-DU optionally sends a Downlink Data Delivery Status frame to inform the gNB-CU about the downlink data PDUs that could not be successfully transmitted to the UE.
* The source gNB-DU forwards the received RRCReconfiguration message to the UE.
* The source gNB-DU responds to the gNB-CU with UE CONTEXT MODIFICATION RESPONSE message.
* UE triggers Random Access procedure at the target gNB-DU.
* Optionally the target gNB-DU sends Downlink Data Delivery Status frame to the gNB-CU.
* The gNB-CU sends the target gNB-DU with the PDCP PDUs that are not successfully transmitted in the source gNB-DU.
* The UE responds to the target gNB-DU with an RRCReconfigurationComplete message.
* The target gNB-DU sends UL RRC MESSAGE TRANSFER message to the gNB-CU to convey the received RRCReconfigurationComplete message.
* The downlink and uplink data packets are sent to/from the UE through the target gNB-DU.
* The gNB-CU sends an UE CONTEXT RELEASE COMMAND message to the source gNB-DU.
* The source gNB-DU sends UE DELETE REQUEST to MAC/RLC layer to release the UE context in the respective protocol layer and receives UE DELETE RESPONSE message.
* The source gNB-DU responds the gNB-CU with an UE CONTEXT RELEASE COMPLETE message.

### O-CU-UP Functional Blocks

O-CU-UP handles the user plane functionality at O-CU.

### O-CU-UP-OAM-Agent and data models

O-CU-UP-OAM-Agent manages following services of O-CU-UP:

* Configuration and Control Management
* Performance Counter Management
* Fault Management

O-CU-UP-OAM receives the configuration for O-CU-UP and configures all the modules of O-CU-UP. It may perform operations like spawning of O-CU-UP modules and software downloading for O-CU-UP.

O-CU-UP-OAM collects the performance counters of O-CU-UP and reports it to performance management entity present in the network.

O-CU-UP-OAM manages the faults and alarms raised at O-CU-UP and reports it to fault management entity present in the network.

For O-CU data models, please refer to O-RAN WG5 data models [33].

### eGTPu

Figure 10-5 shows the detailed view of eGTPu functional block.

Data Application

NGU

eGTPu encaps & decaps

XnU

F1U

Figure 10-5 eGTPu Functional Blocks

**eGTPu encaps and decaps**: It handles the eGTPu protocol stack. It performs eGTPu encapsulation and decapsulation as described in 3GPP TS 29.281 [2] and TS 38.425 [15].

**Data Application**: This function receives the data packet from UPF, peer O-CU and O-DU over eGTPu interface. It calls eGTPu encaps and decaps to remove the eGTPu header. It identifies the corresponding UE and DRB Id based on mapping of TEID and IP address maintained at eGTPu. It then forwards the data packet to SDAP, which maps the PDU Session to appropriate DRB and passes data to NR PDCP along with information of UE and DRB Id. While sending packet to NR PDCP, it also indicates from which interface this packet has been received, i.e., from UPF or from peer O-CU or from O-DU.

Data Application also processes the data packets received from SDAP. On receiving data packet, it adds the eGTPu header by calling eGTPu encaps and decaps. On the basis of destination, UE and DRB Id received from NR PDCP, packet relay fetches the TEID and IP address from the mapping maintained at eGTPu and sends the data packet to the destination provided by NR PDCP.

**NGU**: It exchanges ECHO request and response over NGU interface. It takes care of the error handling on NGU interface.

**XnU**: It exchanges ECHO request and response over XnU interface. It takes care of the error handling on XnU interface. It also takes care of data flow control on XnU interface.

**F1U**: It exchanges ECHO request and response over F1U interface defined in [19]. It takes care of the error handling on F1U interface. It also takes care of data flow control on F1U interface.

### NR PDCP

NR PDCP transfers user plane and control plane data. It maintains PDCP SNs of 12 bits or 18 bits for DRBs and 12 bits for SRBs. It performs header compression and decompression, integrity protection and verification, ciphering and deciphering, timer based SDU discard, routing for split bearers, duplication, reordering and in-order delivery, out of order delivery, and duplicate discarding as described in 3GPP TS 38.323 [9].

![A diagram of a system  Description automatically generated]({{site.baseurl}}/assets/images/5f33a59f915d.png)

Figure 10-5 PDCP Functional Blocks

The PDCP layer provides its services to the RRC or SDAP layers. The following services are provided by PDCP to upper layers:

* Transfer of user plane data
* Transfer of control plane data
* Header compression
* Ciphering
* Integrity protection.

A PDCP entity expects the following services from lower layers per RLC entity:

* Acknowledged data transfer service, including indication of successful delivery of PDCP PDUs
* Unacknowledged data transfer service.

### SDAP

It performs QoS flow to DRB mapping and implements the procedure described in 3GPP TS 37.324 [10]. In case of a DRB where SDAP header to/from UE is not configured, SDAP entity may not be present.

![A diagram of a radio interface  Description automatically generated]({{site.baseurl}}/assets/images/30ccc91fd2a9.png)

Figure 10-5 SDAP Functional Blocks

The following services are provided by SDAP to upper layers:

* Transfer of user plane data

An SDAP entity expects the following services from lower layers:

* User plane data transfer service
* In-order delivery except when out of order delivery is configured by RRC

# O-DU Interfaces

### L1/L2 Interface

MAC and Scheduler in Layer 2 (L2) and High-PHY (L1) in O-DU use the APIs defined SCF 5G FAPI specifications [29]. In implementations where L2 and L1 of O-DU are on different hosts, a network FAPI (nFAPI) interface is used.

SCF FAPI includes the following interfaces:

* P5: PHY control interface
* P7: Main data path interface

Please refer to SCF specifications for implementation details of FAPI and nFAPI messages. Some of the FAPI messages are illustrated in the call flows for UE registration in Annex A.

### L2 Interfaces

It is expected that the software implementation of the APIs defined in this section will be in conformance with the API message definition and the fields or message elements. Data types and encoding/decoding of the message contents will be implementation dependent. Message elements (IEs) referring to definitions in 3GPP specifications are italicized for ease of reference.

### O-DU-OAM-Agent -MAC Interface

### NR Cell Configuration

The following table details the configurations between O-DU-OAM-Agent and MAC for config parameter exchanges.

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| Carrier Configuration | struct | Configuration of each transmission point associated to the corresponding cell(s). This includes different physical antennas, different frequencies, bandwidths. The NR sector-carrier can have downlink, uplink or both as specified by txDirection. It also applies the carrier configurations like numTxAnt , numRxAnt, sdlFrequency, uplinkFrequency, dlBandwidth or uplinkBandwidth. |
| Cell Configuration | struct | This contains the configuration parameters relating cell configuration. This also contains the list of slices to be supported in the Tracking area per PLMN. |
| SSB Configuration | struct | This contains the configuration parameters relating SSB/PBCH configuration as defined in 38.331 CSI-MeasConfig. |
| CSI-RS Configuration | struct | This contains the configuration parameters relating CSI-RS configuration. |
| PRACH Configuration | struct | This contains the configuration parameters relating to RACH.s |
| TDD Configuration |  | This contains the TDD pattern specific information along with TDD periodicity. |
| Precoding Configuration | struct | This contains the configuration parameters used for storing a TDD pattern (up to 63 SSB) |
| Beamforming Configuration | struct | This contains beamforming parameters. |

</div>

Table - Carrier Configuration Table

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| carrier-bandwidth | uint16\_t | Carrier bandwidth for DL in MHz [38.104, sec 5.3.2] Values: 5, 10, 15, 20, 25, 30, 40,50, 60, 70, 80,90,100,200,400  Width of this carrier in number of PRBs (using the subcarrierSpacing defined for this carrier) (see TS 38.211 [16], clause 4.4.2) |
| arfcnDL | uint32\_t | NR Absolute Radio Frequency Channel Number (NR-ARFCN) point A in kHz for downlink ([38.104, sec5.4.2 and 38.211 sec 4.4.4.2] Value: 82000 -> 2489166) |
| bSChannelBwUL | uint32\_t | Base station channel bandwidth for UL in MHz [38.104, sec 5.3.2] Values: 5, 10, 15, 20, 25, 30, 40,50, 60, 70, 80,90,100,200,400 |
| arfcnUL | uint32\_t | NR Absolute Radio Frequency Channel Number (NR-ARFCN) point A in kHz for uplink ([38.104, sec5.2 and 38.211 sec 4.4.4.2] Value: 82000 -> 2489166) |
| numTxAnt | uint16\_t | Number of Tx antennas Value: 0 ->65355 |
| numRxAnt | uint16\_t | Number of Rx antennas Value: 0 ->65355 |

</div>

Table - Cell Configuration Table

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| operationalState | uint8\_t | Operational state of the cell [Value: ENABLED, DISABLED]  It indicates the operational state of the NRCellDU instance. It describes whether the resource is installed and partially or fully operable (Enabled) or the resource is not installed or not operable (Disabled) |
| administrativeState | uint8\_t | Administrative state of the cell [Value: LOCKED, SHUTTING DOWN, UNLOCKED]  It indicates the administrative state of the NRCellDU. It describes the permission to use or prohibition against using the cell, imposed through the OAM services |
| cellState | uint16\_t | Usage state of the cell [Value: IDLE, INACTIVE, ACTIVE]  It indicates the usage state of the NRCellDU instance. It describes whether the cell is not currently in use (Idle), or currently in use but not configured to carry traffic (Inactive) or is currently in use and is configured to carry traffic (Active) |
| **pLMNInfoList** | uint64\_t | The list of PLMNs that can be served by the cell, and which S-NSSAs can be supported by the NR cell for corresponding PLMN in case of network slicing feature is supported. The pLMNId of the first entry of the list is the PLMNId used to construct the nCGI for the NR cell. |
| >> pLMNId |  | This represent the PLMN Identity. |
| >> sNSSAIList |  | This represent the list of S-NSSAI supported in the PLMN. This is a conditional mandatory parameter if network slicing feature is supported. |
| nRPCI | uint16\_t | Physical Cell ID, NID cell [38.211, sec 7.4.2.1] Value: 0 ->1007  It uniquely identifies a NR cell within a PLMN |
| nRTAC | uint64\_t / string | This information element is used to identify a configured EPS Tracking Area Code in order to enable application of Roaming and Access Restrictions for EN-DC as specified in TS 37.340 [7]. This IE is configured for the cell, but not broadcast |
| ssbFrequency | uint32\_t | Indicates cell defining SSB frequency domain position  Frequency of the cell defining SSB transmission. The frequency provided in this attribute identifies the position of resource element RE=#0 (subcarrier #0) of resource block RB#10 of the SS block. The frequency must be positioned on the NR global frequency raster, as defined in TS 38.101-1 [42] subclause 5.4.2. and within bSChannelBwDL.  Values: 0->3279165 |
| Subcarrier-spacing | uint16\_t | This is used for SSB synchronization. See subclause 5 in TS 38.104 [12]. Its units are in kHz.  Values: {15, 30, 120, 240}.  Note that the allowed values of SSB used for representing data, by e.g. a BWP, are: 15, 30, 60 and 120 in units of kHz.  Subcarrier spacing of this carrier. It is used to convert the offsetToCarrier into an actual frequency. Only the values 15 kHz, 30 kHz or 60 kHz (FR1), and 60 kHz or 120 kHz (FR2) are applicable |
| DuplexType | uint8\_t | Frame duplex type  Value:0 = FDD  1 = TDD |
| **Sib1CfgAndInfo** |  |  |
| > PdcchCfgSib1  {CoresetZeroIndex,  SearchSpaceZroIndex} |  |  |
| > \*sib1Pdu | uint8\*t |  |
| > Sib1PduLen | uint16\_t |  |
| > pagingCfg  { numPO/ Ns,  poPresent,  pagingOcc[MAX\_PO\_PER\_PF = 4] |  |  |
| Initial  DL BWP | struct | Spec 38.331 DownlinkConfigCommonSIB |
| Initial  UL Bwp | struct | Spec 38.331 UplinkConfigCommonSIB |

</div>

Table - SSB Configuration Table

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| ssPbchPower | uint32\_t | SSB Block Power Value: s (-60...50 dBm) |
| subcarrier-spacing | uint8\_t | subcarrierSpacing for common, used for initial access and broadcast message. [38.211 sec 4.2] Value:0->3  Subcarrier spacing of this carrier. It is used to convert the offsetToCarrier into an actual frequency. Only the values 15 kHz, 30 kHz or 60 kHz (FR1), and 60 kHz or 120 kHz (FR2) are applicable |
| offset-to-carrier | uint16\_t | Offset of lowest subcarrier of lowest resource block used for SS/PBCH block. Given in PRB [38.211, section 4.4.4.2] Value: 0->2199  Offset in frequency domain between Point A (lowest subcarrier of common RB 0) and the lowest usable subcarrier on this carrier in number of PRBs (using the subcarrierSpacing defined for this carrier). The maximum value corresponds to 275\*8-1. See TS 38.211 [16], clause 4.4.2 |
| SsbPeriod | uint8\_t | SSB periodicity in msec Value: 0: ms5 1: ms10 2: ms20 3: ms40 4: ms80 5: ms160 |
| SsbSubcarrierOffset | uint8\_t | ssbSubcarrierOffset or kSSB (38.211, section 7.4.3.1) Value: 0->31 |
| SsbMask[SSB\_MAX\_SIZE] | uint32\_t[2] | Bitmap for actually transmitted SSB.  As per Spec SCF222, Table 3-46 'SSB\_resource Configuration', This is the array of size SSB\_MAX\_SIZE=2  MSB->LSB of first 32 bit number corresponds to SSB 0 to SSB 31  MSB->LSB of second 32 bit number corresponds to SSB 32 to SSB 63  Value for each bit:  o 0: not transmitted  o 1: transmitted |
| BeamId [64] | uint8\_t | BeamID for each SSB in SsbMask. For example, if SSB mask bit 26 is set to 1, then BeamId [26] will be used to indicate beam ID of SSB 26. Value: from 0 to 63 |
| betaPss | uint8\_t | PSS EPRE to SSS EPRE in a SS/PBCH block [38.213, sec 4.1] Values: 0 = 0dB 1 = 3dB |
| bchPayloadFlag | uint8\_t | bchPayload to determine how it its generated, req by FAPI  0: MAC generates the full PBCH payload  1: PHY generates the timing PBCH bits  2: PHY generates the full PBCH payload |
| bchPayload | uint8\_t |  |
| dmrsTypeAPos | uint8\_t | The position of the first DM-RS for downlink and uplink. Value: 0 -> 1 |

</div>

Table - PRACH Configuration

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| prachSequenceLength | uint8\_t | RACH sequence length. Long or Short sequence length. Only short sequence length is supported for FR2. [38.211, sec 6.3.3.1]  Value: 0 = Long sequence 1 = Short sequence |
| prachSubCSpacing | uint8\_t | Subcarrier spacing of PRACH. [38.211 sec 4.2Tables 6.3.3.1-2 and 6.3.3.1-7]  Value:0->34 |
| numPrachFdOccasions | uint8\_t | Number of RACH frequency domain occasions. Corresponds to the parameter M in [38.211, sec 6.3.3.2] which equals the higher layer parameter msg1FDM  Value: 1,2,4,8 |
| prachConfigIndex[] | uint8\_t | PRACH configuration index.  Following parameters will be having unique values for each instances of PRACH Frequency occasion. The array size will be 'numPrachFdOccasions'  MAX size of array is 8.  Value: from 0 to 255 |
| >prachRootSequenceIndex | uint16\_t | Starting logical root sequence index, i, equivalent to higher layer parameter prach-RootSequenceIndex [38.211, sec 6.3.3.1]  Value: 0 -> 837 |
| >numRootSequences | uint8\_t | Number of root sequences for a particular FD occasion that are required to generate the necessary number of preambles |
| >k1 | uint16\_t | Frequency offset (from UL bandwidth part) for each FD. [38.211, sec 6.3.3.2]  Value: from 0 to 272 |
| >prachZeroCorrConf | uint8\_t | PRACH Zero CorrelationZone Config which is used to derive Ncs [38.211, sec 6.3.3.1]  Value: from 0 to 15 |
| restrictedSetConfig | uint8\_t | PRACH restricted set config  Value:  0: unrestricted  1: restricted set type A  2: restricted set type B |
| ssbPerRach | uint8\_t | SSB-per-RACH-occasion Value: 0: 1/8  1:1/4,  2:1/2  3:1  4:2  5:4,  6:8  7:16 |
| numCbPreamblePerSsb | uint8\_t | Number of CBRA  preamble per SSB |
| raRspWReqindow | uint8\_t | RA response window  Msg2 (RAR) window length in number of slots. |
| Msg1FreqStart | uint8\_t | Offset of lowest PRACH transmission occasion in frequency domain with respective to PRB 0. The value is configured so that the corresponding RACH resource is entirely  within the bandwidth of the UL BWP. (see TS 38.211 [16], clause 6.3.3.2). |
| totalNumRaPreamble | uint8\_t | Total number of preambles used for contention based and contention free 4-step or 2-step random access in the RACH resources |

</div>

Table - TDD Configuration

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| dl-ul-transmission-periodicity | uint8\_t  /enumeration | "Periodicity of the DL-UL pattern, see TS 38.213 [13], clause 11.1. If the dl-UL-TransmissionPeriodicity-v1530 is signalled, UE ignores the dl-UL-TransmissionPeriodicity (without suffix).".  DL UL Transmission Periodicity Value: 0: ms0p5  1: ms0p625  2: ms1  3: ms1p25  4: ms2  5: ms2p5  6: ms5  s7: ms10 |
| nr-of-downlink-slots | uint16\_t | Number of consecutive full DL slots at the beginning of each DL-UL pattern, see TS 38.213 [13], clause 11.1. In this release, the maximum value for this field is 80. |
| nr-of-downlink-symbols | uint8\_t | Number of consecutive DL symbols in the beginning of the slot following the last full DL slot (as derived from nrofDownlinkSlots). The value 0 indicates that there is no partial-downlink slot. (see TS 38.213 [13], clause 11.1) |
| nr-of-uplink-slots | uint16\_t | Number of consecutive full UL slots at the end of each DL-UL pattern, see TS 38.213 [13], clause 11.1. In this release, the maximum value for this field is 80 |
| nr-of-uplink-symbols | uint8\_t | Number of consecutive UL symbols in the end of the slot preceding the first full UL slot (as derived from nrofUplinkSlots). The value 0 indicates that there is no partial-uplink slot. (see TS 38.213 [13], clause 11.1) |
| ~~SlotConfig~~ | ~~uint8\_t~~ | ~~For each symbol in each slot within max TDD periodicity a uint8\_t value is provided indicating: 0: DL slot~~  ~~1: UL slot~~  ~~2: Guard slot~~ |

</div>

Table - Precoding Configuration

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| numLayers | uint16\_t | Number of ports at the precoder input  Value: 0->8 |
| numAntPorts | uint16\_t | Number of ports at the precoder output  sValue: 0->64 |

</div>

Table - Beamforming Configuration (Reference: TS 28.541 NRM section 4.3.40)

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| numofBeams | uint16\_t | Number of beams  Value: 0->64 |
| numTXRUs | uint16\_t | Number of ports  Value: 0->64 |
| beamIndex | uint16\_t | For each beam  Identifying number for the beam index  Value: 0->64 |
| beamType | uint16\_t | For each beam  The type of the beam.  Values: "SSB-BEAM" |
| beamAzimuth | uint32\_t | For each beam  sThe azimuth of a beam transmission, which means the horizontal beamforming pointing angle (beam peak direction) in the (Phi) ?-axis in 1/10th degree resolution. See subclauses 3.2 in TS 38.104 [12] and 7.3 in TS 38.901 [53] as well as TS 28.662 [11]. The pointing angle is the direction equal to the geometric center of the half-power contour of the beam relative to the reference plane. Zero degree implies explicit antenna bearing (boresight). Positive angle implies clockwise from the antenna bearing.  Values: [-1800 ...1800] 0.1 degree |
| beamTilt | uint32\_t | For each beam  The tilt of a beam transmission, which means the vertical beamforming pointing angle (beam peak direction) in the (Theta) ?-axis in 1/10th degree resolution. See subclauses 3.2 in TS 38.104 [12] and 7.3 in TS 38.901 [53] as well as TS 28.662 [11]. The pointing angle is the direction equal to the geometric center of the half-power contour of the beam relative to the reference plane. Positive value implies downtilt.  Values: [-900...900] 0.1 degree |
| beamHorizWidth | uint32\_t | For each beam  The Horizontal beamWidth of a beam transmission, which means the horizontal beamforming half-power (3dB down) beamwidth in the (Phi) ?-axis in 1/10th degree resolution. See subclauses 3.2 in TS 38.104 [12] and 7.3 in TS 38.901 [53].  Values: [0...3599] 0.1 degree |
| beamVertWidth | uint32\_t | For each beam  The Vertical beamWidth of a beam transmission, which means the vertical beamforming half-power (3dB down) beamwidth in the (Theta) ?-axis in 1/10th degree resolution. See subclauses 3.2 in TS 38.104 [12] and 7.3 in TS 38.901 [53].  Values: [0...1800] 0.1 degree |
| coverageShape | uint32\_t | Identifies the sector carrier coverage shape described by the envelope of the contained SSB beams. The coverage shape is implementation dependent.  Values: 0: 65535 |
| digitalTilt | uint32\_t | Digitally controlled tilt through beamforming. It represents the vertical pointing direction of the antenna relative to the antenna bore sight, representing the total non-mechanical vertical tilt of the selected coverageShape. Positive value gives downwards tilt and negative value gives upwards tilt.  Values: [-900...900] 0.1 degree |
| digitalAzimuth | uint32\_t | Digitally controlled azimuth through beamforming. It represents the horizontal pointing direction of the antenna relative to the antenna bore sight, representing the total non-mechanical horizontal pan of the selected coverageShape. Positive value gives azimuth to the right and negative value gives an azimuth to the left.  allowed Values: [-1800 ...1800] 0.1 degree |

</div>

In case of hierarchical architecture, O-DU receives the aggregated RU configuration, disaggregate the RU configuration per each RU instance and send the specific configurations towards O-RU. The below table captures the beam forming configuration towards O-RU applicable for hierarchical approach.

Beamforming configuration as per O-RAN Fronthaul M-plane specification [21]

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **per-band-config** |  |  |
| > band-number | uint16 | Band number supported at O-RU |
| > tx-array | uint16 | Tx path |
| > rx-array | uint16 | Rx path |
| > **static-properties** |  |  |
| >> rt-bf-weights-update-support | boolean | Real time beam forming weight update if supported at O-RU in case of digital beamforming. |
| >> beamforming-type |  |  |
| >>> **frequency** |  | if the beam forming type is frequency domain |
| >>>> frequency-domain-beams |  |  |
| >>>> max-number-of-beam-ids | uint16 | Maximum number of beams supported in frequency domain |
| >>>> initial-beam-id | uint16 | Beam index |
| >>>> iq-bitwidth | uint8 |  |
| >>>> compression-type | enumeration |  |
| >>>> bitwidth | uint8 |  |
| >>>> compression-format |  |  |
| >>>> additional-compression-method-supported |  |  |
| >>> **time** |  |  |
| >>>> time-domain-beams |  | if the beam forming type is time domain |
| >>>> max-number-of-beam-ids | uint16 | Maximum number of beams supported in time domain |
| >>>> initial-beam-id | uint16 |  |
| >>>> frequency-granularity | enumeration |  |
| >>>> time-granularity | enumeration |  |
| >>>> iq-bitwidth | uint8 |  |
| >>>> compression-type | enumeration |  |
| >>>> bitwidth | uint8 |  |
| >>>> compression-format |  |  |
| >>>> additional-compression-method-supported |  |  |
| >>> **hybrid** |  | Hybrid architecture is preferred for frequencies > 6GHz |
| >>>> hybrid-beams |  | if the beam forming type is hybrid domain |
| >>>> max-number-of-beam-ids | uint16 | Maximum number of beams supported in hybrid domain |
| >>>> initial-beam-id | uint16 |  |
| >>>> frequency-granularity | enumeration |  |
| >>>> time-granularity | enumeration |  |
| >>>> iq-bitwidth | uint8 |  |
| >>>> compression-type | enumeration |  |
| >>>> bitwidth | uint8 |  |
| >>>> compression-format |  |  |
| >> number-of-beams | uint16 | Number of beams supported in the O-RU |
| > **beam-information** |  |  |
| >> number-of-beamforming-properties | uint16 | Beam forming properties for each beam |
| >> **beamforming-properties** |  |  |
| >>> beam-id | uint16 |  |
| >>> **beamforming-property** |  |  |
| >>>> beam-type | enumeration |  |
| >>>> beam-group-id | uint16 |  |
| >>>> coarse-fine-beam-relation |  |  |
| >>>> neighbor-beams |  |  |
| >>>> coarse-fine-beam-capability-based-relation |  |  |
| >>>> neighbor-beams-capability-based |  |  |
| **capabilities-group** | uint16 |  |
| > band-number | uint16 |  |
| > tx-array | uint16 |  |
| > rx-array | uint16 |  |
| > **static-properties** |  |  |
| >> rt-bf-weights-update-support | boolean |  |
| >> beamforming-type |  |  |
| >>> **frequency** |  |  |
| >>>> frequency-domain-beams |  |  |
| >>>> max-number-of-beam-ids | uint16 |  |
| >>>> initial-beam-id | uint16 |  |
| >>>> iq-bitwidth | uint8 |  |
| >>>> compression-type | enumeration |  |
| >>>> bitwidth | uint8 |  |
| >>>> compression-format |  |  |
| >>>> additional-compression-method-supported |  |  |
| >>> **time** |  |  |
| >>>> time-domain-beams |  |  |
| >>>> max-number-of-beam-ids | uint16 |  |
| >>>> initial-beam-id | uint16 |  |
| >>>> frequency-granularity | enumeration |  |
| >>>> time-granularity | enumeration |  |
| >>>> iq-bitwidth | uint8 |  |
| >>>> compression-type | enumeration |  |
| >>>> bitwidth | uint8 |  |
| >>>> compression-format |  |  |
| >>>> additional-compression-method-supported\* |  |  |
| >>> **hybrid** |  |  |
| >>>> hybrid-beams |  |  |
| >>>> max-number-of-beam-ids | uint16 |  |
| >>>> initial-beam-id | uint16 |  |
| >>>> frequency-granularity | enumeration |  |
| >>>> time-granularity | enumeration |  |
| >>>> iq-bitwidth | uint8 |  |
| >>>> compression-type | enumeration |  |
| >>>> bitwidth | uint8 |  |
| >>>> compression-format |  |  |
| >>>> additional-compression-method-supported |  |  |
| >> number-of-beams | uint16 |  |
| > **beam-information** |  |  |
| >> number-of-beamforming-properties | uint16 |  |
| >> **beamforming-properties** |  |  |
| >>> beam-id |  |  |
| >>> **beamforming-property** |  |  |
| >>>> beam-type | enumeration |  |
| >>>> beam-group-id | uint16 |  |
| >>>> coarse-fine-beam-relation |  |  |
| >>>> neighbor-beams |  |  |
| > **ue-specific-beamforming** |  |  |
| >> max-number-of-ues | uint8 |  |
| > **operational-properties** |  |  |
| >> number-of-writeable-beamforming-files | uint8 |  |
| >> update-bf-non-delete | boolean |  |
| >> persistent-bf-files | boolean |  |
| > beamforming-trough-attributes-supported | boolean |  |
| > beamforming-trough-ue-channel-info-supported | boolean |  |
| > **beam-tilt** |  |  |
| >> **predefined-beam-tilt-offset-information** |  |  |
| >>> band-number |  |  |
| >>> elevation-tilt-granularity | uint8 |  |
| >>> azimuth-tilt-granularity | uint8 |  |
| >>> minimum-supported-elevation-tilt | int16 |  |
| >>> maximum-supported-elevation-tilt | int16 |  |
| >>> minimum-supported-azimuth-tilt | int16 |  |
| >>> maximum-supported-azimuth-tilt | int16 |  |
| >>> run-time-tilt-offset-supported | boolean |  |
| >> **predefined-beam-tilt-state** |  |  |
| >>> band-number | int16 |  |
| >>> offset-elevation-tilt-angle | int16 |  |
| >>> offset-azimuth-tilt-angle | int16 |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| > **activate-beamforming-config** | rpcs | Modify beam forming configuration if supported at O-RU |
| > **beamforming-information-update** | notifications | Notify beam forming information update |

</div>

Table - CSI-RS Configuration (Reference: 38.331 CSI-MeasConfig.)

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| csirsfrequencyDomainAllocation | BIT STRING | CHOICE {        row1     BIT STRING (SIZE (4)),        row2     BIT STRING (SIZE (12)),        row4     BIT STRING (SIZE (3)),        other    BIT STRING (SIZE (6))     }, |
| csirsnrofPorts | uint8\_t | ENUMERATED {p1,p2,p4,p8,p12,p16,p24,p32}, |
| csirsfirstOFDMSymbolInTimeDomain | uint8\_t | INTEGER (0..13), |
| csirsfirstOFDMSymbolInTimeDomain2 | uint8\_t | INTEGER (2..12) |
| csirscdm-Type | uint8\_t | ENUMERATED {noCDM, fd-CDM2, cdm4-FD2-TD2, cdm8-FD2-TD4} |
| Csirsdensity | uint8\_t | CHOICE {       dot5      ENUMERATED {evenPRBs, oddPRBs},       one       NULL,       three     NULL,       spare     NULL     }, |
| csirsdensitydot5 | uint8\_t | ENUMERATED {evenPRBs, oddPRBs}, |
| powerControlOffset | uint8\_t | INTEGER (-8..15) |
| powerControlOffsetSS | uint8\_t | ENUMERATED{db-3, db0, db3, db6} |
| periodicityAndOffset | uint16\_t | slots4 INTEGER (0..3),  slots5 INTEGER (0..4),  slots8 INTEGER (0..7),  slots10 INTEGER (0..9),  slots16 INTEGER (0..15),  slots20 INTEGER (0..19),  slots32 INTEGER (0..31),  slots40 INTEGER (0..39),  slots64 INTEGER (0..63),  slots80 INTEGER (0..79),  slots160 INTEGER (0..159),  slots320 INTEGER (0..319),  slots640 INTEGER (0..639) |

</div>

Table - SRS Configuration

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| nrofSymbols | uint8\_t | ENUMERATED {n1, n2, n4}, |
| resourceType | uint8\_t | CHOICE {aperiodic, semi-persistent, periodic} |
| transmissionComb | uint8\_t | CHOICE { n2, n4 } |
| p0 | int32\_t | INTEGER (-202..24) |

</div>

### Slice Configuration

Table - Slice Configuration

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **RRMPolicyList** |  | List of RRM policy in case of multiple dedicated slices |
| > resourceType | uint16\_t | This defines type of resource (PRB, RRC connected users, DRB usage) that is subject to policy. Valid values are 'PRB', 'RRC' or 'DRB' |
| > **rRMPolicyMemberList** |  | It represents the list of RRMPolicyMember(s) that include the PLMNId and S-NSSAI |
| **>>** RRMPolicyMember |  |  |
| >>> pLMNId | uint16\_t | It defines the PLMN identifier. |
| >>> sNSSAI | uint32\_t | This constitute of SST and SD value. |
| **> RRMPolicyRatio** |  |  |
| >> rRMPolicyMaxRatio | uint8\_t | This attribute specifies the maximum percentage of radio resource that can be used by the associated rRMPolicyMemberList/SNSSAI. The maximum percentage of radio resource include at least one of the shared resources, prioritized resources and dedicated resources. The sum of the rRMPolicyMaxRatio values assigned to all slices can be greater than 100. |
| >> rRMPolicyMinRatio | uint8\_t | This attribute specifies the minimum percentage of radio resources that can be used by the associated rRMPolicyMemberList/sNSSAI. The minimum percentage of radio resources including at least one of prioritized resources and dedicated resources. The sum of the rRMPolicyMinRatio values assigned to all slices be less than or equal to100. |
| >> rRMPolicyDedicatedRatio | uint8\_t | This attribute specifies the percentage of radio resource that dedicatedly used by the associated rRMPolicyMemberList/sNSSAI. The sum of the rRMPolicyDeidctaedRatio values assigned to all slices be less than or equal to100. |

</div>

### MAC - O-DU-OAM-Agent Interface

The following table details the performance statistics for various features to be reported from MAC layer towards the O-DU OAM agent. The cell specific measurements or the distribution of UE statistics received by the gNB from UEs in that cell (Reference [21] and reference [26] ) are reported in these interface functions.

The below MU-MIMO feature related statistics helps to fix and improve the MU-MIMO algorithms in the Non RT-RIC/rAPPs which is AI/ML driven and optimize the specific MU-MIMO configuration towards the gNB system.

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Direction** | **Message/API** | **Description** |
| MAC to O-DU-OAM-Agent | RSRP/RSRQ/SINR measurements | API to transfer the performance metric for the SS-RSRP distribution per SSB, SS-RSRQ distribution per SSB and SS-SINR distribution per SSB in the cell for the GoB use case. |
| MAC to O-DU-OAM-Agent | Measurement for the SSB beam switch | API to transfer the performance metrics for Beam switching and beam switching interval per cell for the GoB use case. |
| MAC to O-DU-OAM-Agent | Beam Failure statistics per cell per beam | API to transfer the performance metrics for beam failure statistics per cell per beam for the GoB use case. |
| MAC to O-DU-OAM-Agent | UL SRS RSRP measurement | API to transfer the performance metrics for SRS RSRP in the UL for non GoB use case. |

</div>

### RLC-MAC Interface

The following table details the interactions between RLC and MAC for data transfer and reporting operations.

Table - RLC-MAC Interface

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Direction** | **Message/API** | **Description** |
| RLC to MAC | Data transfer (DL) | API to transfer downlink data |
| MAC to RLC | Data transfer (UL) | API to transfer uplink data |
| MAC to RLC | Schedule result reporting (DL) | DL schedule result Reporting to RLC |
| RLC to MAC | Buffer status reporting (DL) | DL data volume in the RLC entity |

</div>

Note:

DL:

1. RLC -> MAC: The Buffer status in RLC
2. MAC -> RLC: the schedule result Reporting to RLC, then RLC decide how to implement the RLC segment.
3. RLC->MAC: DL data

UL:

1. MAC-> RLC: UL data

### Data Transfer (DL)

Table - RLC-MAC Data transfer (DL) message contents

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Element** | **Presence** | **Description** |
| Frame Number | M | Air interface time |
| Slot Number | M | Air interface time |
| Cell Index | M | Identification of the Cell |
| UE Index | M | Identification of the UE |
| Number of RLC PDUs | M | Number of RLC PDUs to be sent |
| RLC PDU info (RB Type, LCID, PDU LEN, RLC PDU) | M | Radio Bearer type, LCID and length for the RLC PDU, RLC PDU data |
| numLC | M |  |
| Buffer Occupancy[numLC] | M | This is the buffer occupancy information for the logical channel that needs to be informed to scheduler. |

</div>

### Data Transfer (UL)

Table - RLC-MAC Data transfer (UL) message contents

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Element** | **Presence** | **Description** |
| Frame Number | M | Air interface time |
| Slot Number | M | Air interface time |
| Cell Index | M | Identification of the Cell |
| UE Index | M | Identification of the UE |
| Number of RLC PDUs | M | Number of RLC PDUs receive from MAC |
| RLC PDU info (RB Type, RB id, PDU LEN, RLC PDU) | M | Radio Bearer type, Radio Bearer ID, LCID and length for the RLC PDU, RLC PDU data |

</div>

### Schedule Result Reporting (DL)

Table - RLC-MAC Schedule result reporting (DL) message contents

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Element** | **Presence** | **Description** |
| Frame Number | M | Air interface time |
| Slot Number | M | Air interface time |
| Cell Index | M | Identification of the Cell |
| UE Index | M | Identification of the UE |
| Number of RB | M | Number of RBs to send |
| RLC PDU info (RB id, overall length for each RB) | M | RB id and length overall length for each RB |

</div>

### Buffer Status Report (DL)

Table - RLC-MAC Buffer Status reporting (DL) message contents

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Element** | **Presence** | **Description** |
| Cell Index | M | Identification of the Cell |
| UE Index | M | Identification of the UE |
| Number of RLC PDU | M | Number of RLC PDU in RLC buffer |
| RLC PDU info (RB id, PDU LEN) | M | LCID and length for each RLC PDU. |

</div>

### MAC - Scheduler Interface

5G NR MAC and scheduler modules interact via well-defined APIs. The APIs ensure any scheduler implementation interworks with MAC. This ensures the freedom of choice for OEMs and operators to plug in a scheduler implementation of choice from a third-party vendor in O-DU.

The functionalities of the scheduler module are restricted to optimal allocation of radio resources at every TTI while catering to the need of gNB for transmission of:

* UE specific UL/DL data and signalling messages and
* broadcast messages

To achieve the above objective, the APIs defined below abstract the scheduler of any protocol specific operations like handling payloads. The interfaces shown below and the APIs may evolve/change further in future releases of this document to achieve a more optimized scheduler implementation.

![]({{site.baseurl}}/assets/images/7cf4ae9e7e48.png)

Figure 11-13 MAC-Scheduler interface

The MAC-Scheduler interface includes the slice related information (sNSSAI) associated with the logical channel, that helps the scheduler in multiplexing of MAC SDUs from one or different logical channel onto transport blocks (TB) to be delivered to the physical layer on transport channels. The slice id/sNSSAI associated with the logical channel and its slice priority (defined by the operator) derives a slice metric in the PF scheduler to do logical channel prioritization and radio resource selection so as to meet the slice SLA.

The following tables detail the interactions between MAC and scheduler both for configuration and data transfer operations.

Table - MAC to Scheduler APIs

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Direction** | **Message/API** | **Description** |
| MAC to SCH | Cell configuration Request | MAC provides SCH the cell configuration |
| MAC to SCH | Cell Delete Request | MAC initiates deletion of a cell at SCH |
| MAC to SCH | Add UE configuration Request | MAC provides SCH the configuration/capabilities of a UE |
| MAC to SCH | Modify UE configuration Request | MAC provides SCH the re-configuration of UE, also used to add/release/modify existing bearers |
| MAC to SCH | Delete UE Request | MAC initiates deletion of a UE at SCH |
| MAC to SCH | DL HARQ Indication | Contains the list of UEs for which DL HARQ ACK / NACK received from UE in a given TTI.  **Note**: It is the responsibility of the SCH to associate the DL HARQ ACK/NACKs received in a TTI to the corresponding HARQ process Ids. |
| MAC to SCH | UL HARQ Indication | Contains the list of UEs for which UL Data on PUSCH was received. Per UE, indication of CRC check success or failure is sent by MAC to SCH based on CRC Indication received from L1.  **Note**: It is the responsibility of the SCH to associate the UL HARQ Indication received in a TTI to the corresponding HARQ process Ids. |
| MAC to SCH | Uplink channel quality information | MAC provides SCH channel condition (including RI, PMI, CQI) information for UEs for scheduling UL |
| MAC to SCH | Downlink channel quality information | MAC provides SCH channel condition (including RI, PMI, CQI) information for UEs for scheduling DL |
| MAC to SCH | RACH Indication Contents | MAC receives the RACH Indication and shares the contents with SCH |
| MAC to SCH | Paging Indication Contents | MAC indicates Paging message (F1AP Paging) contents to scheduler |
| MAC to SCH | RACH Resource Request | This API is used to get CRNTI, preamble information from MAC for Contention Free Random Access |
| MAC to SCH | RACH Resource Release | This API is used to release the Contention Free RACH Resources at MAC |
| MAC to SCH | RLC Buffer Status Info | DL data volume in the RLC entity |
| MAC to SCH | Scheduling request indication | MAC provides SCH scheduling request information for UL |
| MAC to SCH | UL Buffer status report indication | MAC provides SCH buffer status report for UL scheduling |
| MAC to SCH | UL Power headroom indication | MAC provides SCH power headroom for UL scheduling |

</div>

Table - Scheduler to MAC APIs

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Direction** | **Message/API** | **Description** |
| SCH to MAC | UE configuration Response | SCH provides response to MAC for a UE configuration Request |
| SCH to MAC | UE Reconfiguration Response | SCH provides response to MAC for a UE Reconfiguration Request |
| SCH to MAC | Cell configuration Response | SCH provides response to MAC for a Cell configuration Request |
| SCH to MAC | Cell Deletion Response | SCH provides response to MAC for a Cell Deletion Request |
| SCH to MAC | UE Deletion Response | SCH provides response to MAC for a UE Deletion Request |
| SCH to MAC | DL Scheduling Information | SCH provides scheduling information for a given TTI for scheduling DL data. The scheduling information provides time and frequency domain resources to be scheduled with a list of Logical Channels (LC) and transport block size opportunity per LC. |
| SCH to MAC | UL Scheduling Information | SCH provides scheduling information for a given TTI for scheduling UL data. The scheduling information provides time and frequency domain resources to be scheduled based on the LC Group (LCG) buffer status or Scheduling Request from UE. |
| SCH to MAC | RAR Information | SCH shares the RAR and uplink scheduling and Msg3 scheduling information with MAC |
| SCH to MAC | Downlink control channel information | SCH provides to MAC information for DCI scheduling on PDCCH |
| SCH to MAC | Downlink Broadcast Allocation | Scheduling information for broadcasting SIB1 and other system information |
| SCH to MAC | Downlink Paging Allocation | Scheduling information for paging message on a paging channel |

</div>

### Common Information Elements in MAC-Scheduler APIs

### Air Interface Time

This is the timing information over the air interface in terms of system frame number and slot.

Table - Air interface time

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Element** | **Presence** | **Description** |
| SFN | M | System Frame number {0...1023} |
| Slot | M | *Slot number {0...319}* per 38.211 and FAPI specification  This value wraps around in accordance with the configured numerology in use  e.g.  for m = 3 the wrap around would be mod 80  \*\* 80 is the number of slots per system frame for 120 kHz SCS |

</div>

### (Debug) Timing Information

Additional timing information might be present in the APIs between MAC and scheduler to help troubleshoot issues. This is an optional information element in the APIs below. This timing information is defined below.

Table - Debug timing information

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Element** | **Presence** | **Description** |
| SFN | M | System Frame number {0...1023} |
| Slot | M | *Slot number {0...319}* per 38.211 and FAPI specification  This value wraps around in accordance with the configured numerology in use  e.g.  for m = 3 the wrap around would be mod 80  \*\* 80 is the number of slots per system frame for 120 kHz SCS |
| System Time Stamp | M | Time Stamp of the system; equivalent to Linux timeval structure (tv\_sec, tv\_usec) |

</div>

### MAC to Scheduler APIs

### Cell Configuration Request

When MAC layer receives configuration to create a new cell, this API is invoked.

Table - Cell Configuration Request

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Element** | **Presence** | **Description** |
| Debug Time Info | O | This is an optional IE and may be provided on availability |
| Cell Index | M | Identification of the Cell. 2-byte integer allocated by DU |
| numOfBeams | M | Number of beams  Value: 0->64 |
| numLayers | M | Number of layers  Value: 0->8 |
| numAntPorts | M | Number of Antennae ports  Value: 0->64 |
| Physical Cell Identity | M | *PCI* per TS 38.331 |
| PLMN Information List | M | It defines which PLMNs that can be served by the NR cell, and which S-NSSAIs can be supported by the NR cell for corresponding PLMN in case of network slicing feature is supported. The pLMNId of the first entry of the list is the PLMNId used to construct the nCGI for the NR cell. |
| >PLMNid | M | PLMN identifier served by the cell |
| >S-NSSAIlist | CM | List of S-NSSAIs supported in the cell corresponding to the PLMN. |
| Duplex Mode | M | FDD or TDD mode of operation for the cell |
| DL Cell Bandwidth | M | Total DL Cell Bandwidth |
| UL Cell Bandwidth | M | Total UL Cell Bandwidth |
| **downlinkConfigCommon** | M | See TS 38.331 *DownlinkConfigCommonSIB* |
| >frequencyInfoDL | M | See TS 38.331 *FrequencyInfoDL-SIB* |
| >initialDownlinkBWP | M | See TS 38.331 *BWP-DownlinkCommon* |
| >BCCH-Config | M | See TS 38.331 *BCCH-Config* |
| >PCCH-Config | M | See TS 38.331 PCCH-Config |
| uplinkConfigCommon | M | See TS 38.331 UplinkConfigCommonSIB |
| **tdd-UL-DL-ConfigurationCommon** | M | See TS 38.331 *TDD-UL-DL-ConfigCommon* |
| >initialUplinkBWP | M | See TS 38.331 *UplinkConfigCommonSIB* |
| SSB PositionsInBurst | M | See TS 38.331 *ssb-PositionsInBurst* |
| SSB periodicityServingCell | M | See TS 38.331 *ssb-periodicityServingCell* |
| DMRS TypeA Position | M | See TS 38.331 *dmrs-TypeA-Position* |
| SSB Subcarrier Spacing | M | See TS 38.331 *ssbSubcarrierSpacing* |
| PDCCH Config SIB1 | M | See TS 38.331 *pdcch-ConfigSIB1* |
| SS PBCH BlockPower | M | See TS 38.331 *ss-PBCH-BlockPower* |
| SSB Frequency | M | Indicates cell defining SSB frequency domain position  Frequency of the cell defining SSB transmission in kHz |
| ssbSubOffset | M | See TS 38.331 ssb-SubcarrierOffset |
| Sib1PduLen | M |  |

</div>

### Cell Delete Request

When MAC layer receives configuration to create a new cell, this API is invoked.

Table - Cell Delete Request

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Element** | **Presence** | **Description** |
| Debug Time Info | O | This is an optional IE and may be provided on availability |
| Cell Index | M | Identification of the Cell. 2-byte integer allocated by DU |

</div>

### Slice Configuration Request

Slice Configuration Request is sent to configure the MAC/Scheduler with the rRMPolicyRatio for each of the slices supported in the cell.

Table - Slice Configuration Request

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Element** | **Presence** | **Description** |
| S-NSSAI List |  | This defines the list of S-NSSAIs supported in the PLMN belonging to the cell. This is to be included if network slicing is supported. |
| > S-NSSAI | M | Identification of the slice. |
| > RRMPolicyRatio | M | rRMPolicy for the slice if network slicing feature is supported. This policy is for the resource type "PRB" and applicable to gNB-DU. The other resource type " DRB" and "RRCConnected" are applicable to gNB-CU. |
| >> rRMPolicyMaxRatio | uint8\_t | This attribute specifies the maximum percentage of radio resource that can be used by the associated rRMPolicyMemberList/SNSSAI. The maximum percentage of radio resource include at least one of the shared resources, prioritized resources and dedicated resources. The sum of the rRMPolicyMaxRatio values assigned to all slices can be greater than 100. |
| >> rRMPolicyMinRatio | uint8\_t | This attribute specifies the minimum percentage of radio resources that can be used by the associated rRMPolicyMemberList/sNSSAI. The minimum percentage of radio resources including at least one of prioritized resources and dedicated resources. The sum of the rRMPolicyMinRatio values assigned to all slices be less than or equal to100. |
| >>s rRMPolicyDedicatedRatio | uint8\_t | This attribute specifies the percentage of radio resource that dedicatedly used by the associated rRMPolicyMemberList/sNSSAI. The sum of the rRMPolicyDeidctaedRatio values assigned to all slices be less than or equal to100. |

</div>

### Slice Reconfiguration Request

Slice Reconfiguration Request is sent to re-configure the MAC/Scheduler with the rRMPolicyRatio for the slices for which the rRMPolicy is updated/modified over O1 interface.

Table - Slice Reconfiguration Request

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Element** | **Presence** | **Description** |
| S-NSSAI List |  | This defines the list of S-NSSAIs supported in the PLMN belonging to the cell. This is to be included if network slicing is supported. |
| > S-NSSAI | M | Identification of the slice. |
| > **RRMPolicyRatio** | M | rRMPolicy for the slice if network slicing feature is supported. This policy is for the resource type "PRB" and applicable to gNB-DU. The other resource type " DRB" and "RRCConnected" are applicable to gNB-CU. |
| >> rRMPolicyMaxRatio | uint8\_t | This attribute specifies the maximum percentage of radio resource that can be used by the associated rRMPolicyMemberList/SNSSAI. The maximum percentage of radio resource include at least one of the shared resources, prioritized resources and dedicated resources. The sum of the rRMPolicyMaxRatio values assigned to all slices can be greater than 100. |
| >> rRMPolicyMinRatio | uint8\_t | This attribute specifies the minimum percentage of radio resources that can be used by the associated rRMPolicyMemberList/sNSSAI. The minimum percentage of radio resources including at least one of prioritized resources and dedicated resources. The sum of the rRMPolicyMinRatio values assigned to all slices be less than or equal to100. |
| >>s rRMPolicyDedicatedRatio | uint8\_t | This attribute specifies the percentage of radio resource that dedicatedly used by the associated rRMPolicyMemberList/sNSSAI. The sum of the rRMPolicyDeidctaedRatio values assigned to all slices be less than or equal to100. |

</div>

### Add UE Configuration Request

This API is invoked by MAC layer to create a new UE in the scheduler, including the details of logical channels associated with the UE.

Table - Add UE Configuration Request

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Element** | **Presence** | **Description** |
| Debug Time Info | O | This is an optional IE and may be provided on availability |
| Cell Index | M | Identification of the Cell. 2-byte integer allocated by DU |
| beamIndex | M | Index of the beam.  For example, please see subclause 6.6.2 of TS 38.331 [54] where the ssb-Index in the rsIndexResults element of MeasResultNR is defined. |
| CRNTI | M | See TS 38.331 *RNTI-Value*. Allocated by MAC.  CRNTI shall be included only in case of SA |
| mac-CellGroupConfig (schedulingRequestConfig, tag-Config, phr-Config,DRX-Config) | M | See TS 38.331 *MAC-CellGroupConfig* |
| physicalCellGroupConfig (pdsch-HARQ-ACK-Codebook, p-NR-FR1) | M | See TS 38.331 *PhysicalCellGroupConfig* |
| **spCellConfig** | M | See TS 38.331 *SpCellConfig* |
| >servCellIndex | M | See TS 38.331 *ServCellIndex* |
| **>ServingCellConfigInfo** | M | See TS 38.331 *ServingCellConfig* |
| >>initialDownlinkBWP (pdcch-Config, pdsch-Config) | M | See TS 38.331 *BWP-DownlinkDedicated* in *ServingCellConfig*. |
| >>> radioLinkMonitoringConfig | M | *RadioLinkMonitoringConfig* is used to configure radio link monitoring for detection of beam- and/or cell radio link failure. See also TS 38.321 [3], clause 5.1.1 |
| >>Number of DL BWP To Add | M | The number of dedicated DL BWP To Add |
| >>downlinkBWP-ToAddModList (bwp-Id, bwp-Common, bwp-Dedicated) | M | See TS 38.331 *BWP-Downlink* in *ServingCellConfig* |
| >>firstActiveDownlinkBWP-Id | M | See TS 38.331 *ServingCellConfig* |
| >>defaultDownlinkBWP-Id | M | See TS 38.331 *ServingCellConfig* |
| >>bwp-InactivityTimer | M | See TS 38.331 *ServingCellConfig* |
| >>>pdsch-ServingCellConfig (maxMIMO-Layers, nrofHARQ-ProcessesForPDSCH, codeBlockGroupTransmission, xOverhead) | M | See TS 38.331 *PDSCH-ServingCellConfig* in *ServingCellConfig* |
| >>initialUplinkBWP (pucch-Config, pusch-Config) | M | See TS 38.331 *BWP-UplinkDedicated* in *ServingCellConfig* |
| >>>beamFailureRecoveryConfig | M | The IE *BeamFailureRecoveryConfig* is used to configure the UE with RACH resources and candidate beams for beam failure recovery in case of beam failure detection. See also TS 38.321 [3], clause 5.1.1 |
| >>Number of UL BWP To Add | M | The number of UL BWP To Add |
| >>uplinkBWP-ToAddModList (bwp-Id, bwp-Common, bwp-Dedicated) | M | See TS 38.331 *BWP-Uplink* in *ServingCellConfig* |
| >>firstActiveUplinkBWP-Id | M | See TS 38.331 *ServingCellConfig* |
| UE Aggregate  Maxim-um Bit Rate Uplink | **M** | See TS 38.473 gNB-DU UE Aggregate Maximum Bit Rate Uplink |
| dlModInfo {modOrder, mcsIndex , mcsTable} | M |  |
| ulModInfo  {modOrder,  mcsIndex,  mcsTable} | M |  |
| Number of LC To Add | M | The number of Logical Channel To Add |
| >logicalChannelIdentity | M | See TS 38.331 *logicalChannelIdentity* |
| Qos (5Qi, GBR Qos Info, NG-RAN Allocation and Retention Priority, GBR QoS Flow Information, PDU Session ID, UL PDU Session Aggregate Maximum Bit Rate) | M | See TS 38.473 DRB QoS in UE CONTEXT MODIFICATION REQUEST |
| >S-NSSAI | M | See TS 38.473 Section 9.2.2.1 DRB Information |
| >DL LogicalChannelConfig (Lc priority) | M | See TS 38.321 *Logical channel priority* |
| >UL LogicalChannelConfig (priority, logicalChannelGroup, schedulingRequestID, prioritisedBitRate, bucketSizeDuration) | M | See 38.331 *LogicalChannelConfig* |

</div>

### Modify UE Reconfiguration Request

MAC layer invokes this API to modify an existing UE context also to add/release/modify existing logical channels.

Table - Modify UE Configuration Request

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Element** | **Presence** | **Description** |
| Debug Time Info | O | This is an optional IE and may be provided on availability |
| Cell Index | M | Identification of the Cell |
| beamIndex | M | Index of the beam.  For example, please see subclause 6.6.2 of TS 38.331 [54] where the ssb-Index in the rsIndexResults element of MeasResultNR is defined. |
| CRNTI | M | See TS 38.331 *RNTI-Value* |
| mac-CellGroup-Reconfig (schedulingRequest-Reconfig, tag-Reconfig) | M | See TS 38.331 *MAC-CellGroupConfig* |
| physicalCellGroup-Reconfig (pdsch-HARQ-ACK-Codebook, p-NR-FR1) | M | See TS 38.331 *PhysicalCellGroupConfig* |
| **spCell-Reconfig** | M | See TS 38.331 *SpCellConfig* |
| >servCellIndex | M | See TS 38.331 *ServCellIndex* |
| >ServingCell-ReconfigInfo | M | See TS 38.331 *ServingCellConfig* |
| >>initialDownlinkBWP-Reconfig (pdcch-Config, pdsch-Config) | M | See TS 38.331 *BWP-DownlinkDedicated* in *ServingCellConfig* |
| >>> radioLinkMonitoringConfig | M | *RadioLinkMonitoringConfig* is used to configure radio link monitoring for detection of beam- and/or cell radio link failure. See also TS 38.321 [3], clause 5.1.1 |
| >>Number of DL BWP To Add or Modify | M | The number of dedicated DL BWP To Add or Modify |
| >>downlinkBWP-ToAddModList (bwp-Id, bwp-Common, bwp-Dedicated) | M | See TS 38.331 *BWP-Downlink* in *ServingCellConfig* |
| >>Number of DL BWP To Release | M | The number of dedicated DL BWP to remove |
| >>downlinkBWP-ToReleaseList (bwp-Id) | M | See TS 38.331 *downlinkBWP-ToReleaseList* in ServingCellConfig |
| >>firstActiveDownlinkBWP-Id | M | See TS 38.331 *ServingCellConfig* |
| >>defaultDownlinkBWP-Id | M | See TS 38.331 *ServingCellConfig* |
| >>bwp-InactivityTimer | M | See TS 38.331 *ServingCellConfig* |
| >>pdsch-ServingCell-Reconfig (maxMIMO-Layers, nrofHARQ-ProcessesForPDSCH, codeBlockGroupTransmission, xOverhead) | M | See TS 38.331 *PDSCH-ServingCellConfig* |
| >>initialUplinkBWP-Reconfig (pucch-Config, pusch-Config) | M | See TS 38.331 *BWP-UplinkDedicated* in *ServingCellConfig* |
| >>>beamFailureRecoveryConfig | M | The IE *BeamFailureRecoveryConfig* is used to configure the UE with RACH resources and candidate beams for beam failure recovery in case of beam failure detection. See also TS 38.321 [3], clause 5.1.1 |
| >>Number of UL BWP To Add or Modify | M | The number of dedicated UL BWP To Add or Modify |
| >>uplinkBWP-ToAddModList (bwp-Id, bwp-Common, bwp-Dedicated) | M | See TS 38.331 BWP-Uplink in *ServingCellConfig* |
| >>Number of UL BWP To Release | M | The number of dedicated UL BWP to remove |
| >>uplinkBWP-ToReleaseList (bwp-Id) | M | See TS 38.331 *uplinkBWP-ToReleaseList* in *ServingCellConfig* |
| >>firstActiveUplinkBWP-Id | M | See TS 38.331 *ServingCellConfig* |
| UE Aggregate Maximum Bit Rate Uplink | M | See TS 38.473 *gNB-DU UE Aggregate Maximum Bit Rate Uplink* |
| dlModInfo {modOrder, mcsIndex , mcsTable} | M |  |
| ulModInfo  {modOrder,  mcsIndex,  mcsTable} | M |  |
| Number of LC To Add | M | The number of Logical Channel to Add |
| logicalChannelIdentity | M | See TS 38.331 *logicalChannelIdentity* |
| Qos (5Qi, GBR Qos Info, NG-RAN Allocation and Retention Priority, GBR QoS Flow Information, PDU Session ID, UL PDU Session Aggregate Maximum Bit Rate) | M | See TS 38.473 DRB QoS in UE CONTEXT MODIFICATION REQUEST |
| S-NSSAI | M | See TS 38.473 *S-NSSAI* in UE CONTEXT MODIFICATION REQUEST |
| DL LogicalChannelConfig (Lc priority) | M | See TS 38.321 *Logical channel priority* |
| UL LogicalChannelConfig (priority, logicalChannelGroup, schedulingRequestID, prioritisedBitRate, bucketSizeDuration) | M | See 38.331 *LogicalChannelConfig* |
| **Number of LC To Delete** | M | The number of Logical Channel to Delete |
| >logicalChannelIdentity | M | See TS 38.331 *logicalChannelIdentity* |
| >Number of LC To Modified | M | The number of Logical Channel To Modified |
| >Logical Channel Identity | M | See TS 38.331 *logicalChannelIdentity* |
| >Qos(5Qi , GBR Qos Info, NG-RAN Allocation and Retention Priority, GBR QoS Flow Information, PDU Session ID, UL PDU Session Aggregate Maximum Bit Rate) | M | See TS 38.473 *DRB QoS* in UE CONTEXT MODIFICATION REQUEST |
| >S-NSSAI | M | See TS 38.473 *S-NSSAI* in UE CONTEXT MODIFICATION REQUEST |
| >DL LogicalChannelConfig (Lc priority) | M | See TS 38.321 *Logical channel priority* |
| >UL LogicalChannelConfig (priority, logicalChannelGroup, schedulingRequestID, prioritisedBitRate, bucketSizeDuration) | M | See 38.331 *LogicalChannelConfig* |
| drxConfigIndictorRelease | M | As per Spec 38.473, CU sends this parameter in 'UE Context Mod req' to indicate whether to release UE or not  Value: ENUM(release,..) |

</div>

### Delete UE Request

MAC indicates to Scheduler to Delete an existing UE using this API.

Table - Delete UE Request

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Element** | **Presence** | **Description** |
| Debug Time Info | O | This is an optional IE and may be provided on availability |
| Cell Index | M | Identification of the Cell. 2-byte integer allocated by DU |
| CRNTI | M | See TS 38.331 *RNTI-Value* |

</div>

### DL HARQ Indication

MAC informs Scheduler on reception and Decoding of received DL HARQ feedback from the UE. Feedback itself might have been received either on PUSCH or PUCCH, decoding of feedback is done at MAC/L1.

Table - DL HARQ Indication

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Element** | **Presence** | **Description** |
| Cell Index | M | Identification of the Cell. 2-byte integer allocated by DU |
| CRNTI | M | See TS 38.331 *RNTI-Value* |
| Timing Information | M | Timing information for this message. |
| **Number of HARQ feedback Reported** | M | Number of HARQ feedback bits reported |
| >harq payload bits | M | Bitmap of length = MAX\_HARQ\_BITS per 38.213 |

</div>

### UL HARQ (CRC) Indication

This API is invoked by MAC to inform Scheduler the CRC decode results of PUSCH.

Table - UL HARQ (CRC) Indication

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Element** | **Presence** | **Description** |
| Cell Index | M | Identification of the Cell. 2-byte integer allocated by DU |
| CRNTI | M | See TS 38.331 *RNTI-Value* |
| Timing Information | M | Timing information for this message. |
| **Number of CRC Indication Reported** | M | Number of CRC Indication reported |
| >CRC Indication | M | {0...MAX\_NUMBER\_OF\_CRC\_IND\_BITS} for UL SISO there would be just 1 bit  0: PASS  1: FAILURE  For the case of UL MIMO 1 bit per TB would convey the feedback |

</div>

### UL Channel Quality Information

MAC informs Scheduler using this API the UL Channel Quality Indication of PUSCH/PUCCH

Table - UL Channel Quality Information

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Element** | **Presence** | **Description** |
| Cell Index | M | Identification of the Cell. 2-byte integer allocated by DU |
| CRNTI | M | See TS 38.331 *RNTI-Value* |
| Timing Information | M | Timing information for this message. |
| **Number of UL CQI Indication Reported** | M | Number of UL CQI Indication reported |
| >Type of Report | M | {PUCCH, PUSCH} |
| >UL\_CQI | M | 0-255 in steps of 0.5 dB {-64 dB, ... 63 dB} |
| >Timing Advance | M | TA measured for 38.213 section 4.2 |

</div>

### DL Channel Quality Information

This API is invoked by MAC to report to Scheduler the DL Channel Quality delivered on PUSCH/PUCCH

Table - DL Channel Quality Information

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Element** | **Presence** | **Description** |
| Cell Index | M | Identification of the Cell. 2-byte integer allocated by DU |
| CRNTI | M | See TS 38.331 *RNTI-Value* |
| Timing Information | M | Timing information for this message. |
| **Number of DL CQI Indication Reported** | M | Number of UL CQI Indication reported |
| >Type of Report | M | Bitmap for CQI, PMI, RI, CRI report |
| > CQI | O | CQI report on PUCCH/PUSCH |
| >PMI | O | PMI report on PUCCH/PUSCH |
| >CRI | O | CQI report on PUCCH/PUSCH |
| >RI | O | RI report on PUCCH/PUSCH |

</div>

### RACH Indication Contents

MAC receives the RACH Indication and shares the contents with the scheduler.

Table - RACH Indication Contents

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Element** | **Presence** | **Description** |
| Cell Index | M | Identification of the Cell. 2-byte integer allocated by DU |
| CRNTI | M | See TS 38.331 *RNTI-Value* |
| Timing Information | M | Timing information for this message. |
| Slot Index | M | Index of the First Slot where RACH was detected |
| Symbol Index | M | Index of the first OFDM Symbol where RACH was detected |
| Frequency Index | M | Index of the Frequency where RACH was detected. 38.211 |
| Preamble ID | M | Preamble ID that was detected |
| Timing Advance | M | Timing Advance that was detected and reported to MAC |

</div>

### Paging Indication Contents

MAC indicates Paging message (F1AP Paging) contents to scheduler.

Table - Paging Indication Contents

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Element** | **Presence** | **Description** |
| Cell Index | M | Identification of the Cell. 2-byte integer allocated by DU |
| Paging Frame | M | One Paging Frame (PF) is one Radio Frame and may contain one or multiple PO(s) or starting point of a PO. |
| Paging Occasion | M | A PO is a set of PDCCH monitoring occasions and can consist of multiple time slots (e.g. subframe or OFDM symbol) where paging DCI can be sent] |
| Number of Paging Retries | O | Number of times the paging message is to be transmitted. This decision may be a higher/RRM decision hence relayed to Scheduler. |
| Paging message | M | Bit string. Paging messages need to transfer |

</div>

### RACH Resource Request

When contention free random access is initiated by a UE, MAC shares the CRNTI and SSB resource allocation information with the scheduler through this API.

Table - RACH Resource Request

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Element** | **Presence** | **Description** |
| Frame Number | M | Time indication |
| Slot Number | M | Time indication |
| Cell Index | M | Identification of the Cell |
| CRNTI | M | The CRNTI allocated by MAC for the UE |
| **Number of SSB** | M | The number of ssb for which CFRA resource allocation is requested. |
| >ssb | M | See TS 38.331 *SSB-Index* |

</div>

### RACH Resource Release

MAC indicates to scheduler through this API when RACH resources associated with a UE have to be released.

Table - RACH Resource Release

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Element** | **Presence** | **Description** |
| Frame Number | M | Time indication |
| Slot Number | M | Time indication |
| Cell Index | M | Identification of the Cell |
| CRNTI | M | The CRNTI allocated by MAC for the UE |
| **CFRA-SSB-Resource** | M | See TS 38.331 *CFRA-SSB-Resource* |
| >Ssb index | M | See TS 38.331 *SSB-Index* |
| >ra preamble index | M | The RA preamble index to be used in the RA occasions associated with this SSB. |

</div>

### DL RLC Buffer Status Information

This API is used by RLC for reporting data volume per UE for multiple LCs. This can be used in two different ways depending on the QoS/latency requirements.

1. Data Volume reports are aggregated per UE (at an aggregation point such as slot indication)
   1. This adds latency however it reduces message exchange traffic between SCHED and MAC
2. Data Volume is reported per LC as soon as it is received at MAC
   1. This adds to the message exchange traffic however it would be perfect for Low Latency Usecases

Implementor of this API can choose either one of the above approaches.

Table - DL RLC Buffer Status Information

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Element** | **Presence** | **Description** |
| Debug Time Info | O | This is an optional IE and may be provided on availability |
| Cell Index | M | Identification of the Cell. 2-byte integer allocated by DU |
| CRNTI | M | See TS 38.331 *RNTI-Value* |
| **Number of DL LCs to be Reported** | M | Number of LC for which DL Buffer Occupancy/Data Volume is being reported |
| **>logicalChannelIdentity** | M | {1...32} SRB/DRB logical channel identity |
| **>>** S-NSSAI | M | Slice identifier associated to the logical channel |
| >> dataVolume | M | Integer representing number of Cumulative Bytes for the logical channel |

</div>

### Scheduling Request Indication

MAC indicates to scheduler through this API when UE has to be scheduled for uplink grant.

Table - Scheduling Request Indication

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **Element** |  | **Presence** | **Description** |
| Cell Index |  | M | Identification of the Cell. 2-byte integer allocated by DU |
| CRNTI |  | M | See TS 38.331 *RNTI-Value* |
| Timing Information |  | M | Timing information for this particular message. |
| Number of SR Bits |  | M | {0..7} number of SR bits reported |
| SR Payload |  | M | Bitmap equal to the MAX\_SR\_BIT |

</div>

### UL Buffer Status Report Indication

This API is invoked by MAC on reception and Decoding of received BSR from the UE.

Table - Buffer Status Report Indication

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Element** | **Presence** | **Description** |
| Cell Index | M | Identification of the Cell. 2-byte integer allocated by DU |
| CRNTI | M | See TS 38.331 *RNTI-Value* |
| BSR Type | M | Enumeration of {SHORT\_BSR, LONG\_BSR, SHORT\_TRUNCATED\_BSR, LONG\_TRUNCATED\_BSR} |
| **Number of UL LCGs Reported** | M | Number of UL LCGs carried in the BSR |
| **>logicalChannelGroupId** | M | {0...7} logical channel Group identity |
| >> dataVolume | M | Integer representing number of reported Bytes |

</div>

### Power Headroom Indication

MAC invokes this API to inform Scheduler on reception and decoding of received PHR from the UE.

Table - Power Headroom Indication

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Element** | **Presence** | **Description** |
| Cell Index | M | Identification of the Cell. 2-byte integer allocated by DU |
| CRNTI | M | See TS 38.331 *RNTI-Value* |
| PHR Type | M | Enumeration of {SINGLE\_ENTRY\_PHR, MULTIPLE\_ENTRY\_PHR} |
| **>Single Entry PHR** | O | Present if the PHR Type == SINGLE\_ENTRY\_PHR |
| >>Power Head Room | M | 1 Byte - Reported Power Head Room as per 38.321 Section 6.1.3.8 |
| >> PCMAX, f, c | M | This field indicates the PCMAX, f, c (as specified in TS 38.213) used for calculation of the preceding PH field. |
| >Multiple Entry PHR | O | Present if PHR Type == MULTIPLE\_ENTRY\_PHR |
| >>Number of Reports | M | Number of PHRs reported in this instance. Range as specified in TS 38.321 |
| **>>PH Type** | M | Enumeration {PH\_TYPE\_1, PH\_TYPE\_2} |
| >>>Power Head Room | M | 1 Byte - Reported Power Head Room as per 38.321 Section 6.1.3.8 |
| >>> PCMAX, f, c | M | This field indicates the PCMAX, f, c (as specified in TS 38.213) used for calculation of the preceding PH field. |

</div>

### Scheduler to MAC APIs

### Cell Configuration Response

This API is invoked by scheduler to respond to a Cell configuration request.

Table - Cell Configuration Response

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Element** | **Presence** | **Description** |
| Cell Index | M | Identification of the Cell. 2-byte integer allocated by DU |
| Response | M | Response that maybe used to identify failure/success  OK - Success  NOK - Failure |
| Error Cause | O | If Response == NOK  This field describes the cause of the failure. |

</div>

### Cell Deletion Response

This API is invoked by scheduler to respond to a Cell Deletion request.

Table - Cell Deletion Response

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Element** | **Presence** | **Description** |
| Cell Index | M | Identification of the Cell. 2-byte integer allocated by DU |
| Response | M | Response that maybe used to identify failure/success  OK - Success  NOK - Failure |
| Error Cause | O | If Response == NOK  This field describes the cause of the failure. |

</div>

### Slice Configuration Response

This API is invoked by scheduler to respond to a Slice Configuration request.

Table - Slice Configuration Response

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Element** | **Presence** | **Description** |
| Slice Index | M | Identification of the Slice. This constitute of SST of 8-bit and SD of 24-bit value. |
| Response | M | Response that maybe used to identify failure/success in case the slice configuration is accepted by the scheduler.  OK - Success  NOK - Failure |
| Error Cause | O | If Response == NOK  This field describes the cause of the failure. The cause can be specific to Vendor's implementation. |

</div>

### Slice Reconfiguration Response

This API is invoked by scheduler to respond to a Slice Reconfiguration request.

Table - Slice Reconfiguration Response

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Element** | **Presence** | **Description** |
| Slice Index | M | Identification of the Slice. This constitute of SST of 8-bit and SD of 24-bit value. |
| Response | M | Response that maybe used to identify failure/success in case the slice reconfiguration request is accepted by the scheduler.  OK - Success  NOK - Failure |
| Error Cause | O | If Response == NOK  This field describes the cause of the failure. The cause can be specific to Vendor's implementation. |

</div>

### UE Configuration Response

This response API is used by scheduler to respond to a UE configuration request from MAC.

Table - UE Configuration Response

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Element** | **Presence** | **Description** |
| Cell Index | M | Identification of the Cell. 2-byte integer allocated by DU |
| beamIndex | M | Index of the beam.  For example, please see subclause 6.6.2 of TS 38.331 [54] where the ssb-Index in the rsIndexResults element of MeasResultNR is defined. |
| CRNTI | M | See TS 38.331 *RNTI-Value* |
| Response | M | Response that maybe used to identify failure/success  OK - Success  NOK - Failure |
| Error Cause | O | If Response == NOK  This field describes the cause of the failure. |

</div>

### UE Reconfiguration Response

This response API is used by scheduler to respond to a UE reconfiguration request from MAC.

Table - UE Reconfiguration Response

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Element** | **Presence** | **Description** |
| Cell Index | M | Identification of the Cell. 2-byte integer allocated by DU |
| beamIndex | M | Index of the beam.  For example, please see subclause 6.6.2 of TS 38.331 [54] where the ssb-Index in the rsIndexResults element of MeasResultNR is defined. |
| CRNTI | M | See TS 38.331 *RNTI-Value* |
| Response | M | Response that maybe used to identify failure/success  OK - Success  NOK - Failure |
| Error Cause | O | If Response == NOK  This field describes the cause of the failure. |

</div>

### UE Deletion Response

Scheduler responds with this API to a UE deletion request from MAC.

Table - UE Deletion Response

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Element** | **Presence** | **Description** |
| Cell Index | M | Identification of the Cell. 2-byte integer allocated by DU |
| CRNTI | M | See TS 38.331 *RNTI-Value* |
| Response | M | Response that maybe used to identify failure/success  OK - Success  NOK - Failure |
| Error Cause | O | If Response == NOK  This field describes the cause of the failure. |

</div>

### DL Scheduling Information

Scheduler provides scheduling information for a given TTI for downlink data. Downlink data can either be a Broadcast message or RAR or MSG4 or Grant for the BSR response or a Dedicated downlink message. Scheduling information contains timing information, time and frequency domain resources to be scheduled with a list of logical channels and TBS opportunity per LC, BWP information along with PDCCH and PDSCH configuration. Additionally, SCH also provides a list of MAC CEs that are scheduled for a specific transmission opportunity. MAC is supposed to encode these CEs into the MAC PDU.

Table - DL Scheduling Information

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Element** | **Presence** | **Description** |
| Cell Index | M | Identification of the Cell. 2-byte integer allocated by DU |
| Timing Information | M | Timing information for this message (SFN/Slot). |
| CRNTI | M | See TS 38.331 *RNTI-Value*. This may be SI-RNTI or C-RNTI or RA-RNTI. |
| Broadcast Presence | M | If DL scheduling is for broadcast message |
| **Downlink Broadcast Allocation** | O | DL Resource allocation for Broadcast message conditionally present when Broadcast Presence is true. |
| >SSB Transmission Mode | M | SSB Transmission mode as follows:  { \* 0 : No transmission  \* 1 : SSB Transmission  \* 2 : SSB Repetition } |
| >Supported SSB Index | M | Supported SSB Index |
| >**SSB Information** | M | SSB Resource information |
| >>SSB Index | M | SS/PBCH block index within an SSB burst set [TS38.211, section 7.3.3.1]. Required for PBCH DMRS scrambling. Value: 0->63 (Lmax) |
| **>>TimeDomainAllocation** | M | Time Domain resources allocation [TS38.211 section 7.4.3.1] |
| >>>StartSymbolNumber | M | OFDM symbol number |
| >>>Number of Symbols | M | Number of Symbols |
| **>>FrequencyDomainAllocation** | M | Frequency Domain resources allocation [TS38.211 section 7.4.3.1] |
| >>>StartPRB | M | PRB start number |
| >>>NoOfPRBs | M | Number of PRBs |
| > System information indicator | M | {0 - 1}. Specifies SIB1 or SI message; as defined in 38.212 Table 7.3.1.2.1-2 |
| > SI Content | M | Byte Array [MAX\_BYTES\_FOR\_SI]; this carries the ASN.1 encoded System Information Messages that Scheduler wants to transmit to the UE; as defined in 38.331 *SIB1* or *SystemInformation*. Maximum TB size is 2976 bytes as per 38.214 section 5.1.3.2 |
| > SIB1 Transmission Mode | M | SIB1 transmission mode |
| **> SIB1 Allocation Information** | O | SIB1 Resource Allocation Information |
| >> BWP Configuration | M | Specifies the BWP information for Scheduling Broadcast data, Refer Table 9-34 BWP Configuration |
| >> **PDCCH Configuration** | M | Specifies the CORESET and DL DCI(s) information. |
| >>> CORESET Configuration | M | CORESET Configuration. Refer Table 9-35 CORESET Configuration. |
| >>> **NumberOfDLDCI** | M | Number of DL DCIs |
| >>> DLDCI | O | DL DCI Information, Refer Table 9-39 DL DCI Configuration |
| **Random Access Response Allocation** | O | DL Resource allocation for Random Access Response message conditionally present when RAR Presence is true. |
| **> RAR Information** |  |  |
| >>RAPID | M |  |
| >>TA | M | timing advance command [11, TS 38.321], ![]()(Failed to render image, unsupported type: x-wmf)). Refer TS 38.321 section 4.2 |
| **>>msg3FreqAlloc** | M | Frequency Domain resource allocation for msg3 |
| >>>StartPRB | M | BWPStart: bandwidth part start RB index from reference CRB [TS38.213 sec 12] Value: 0->274 |
| >>>NoOfPRBs | M | BWPSize: Bandwidth part size [TS38.213 sec12]. Number of contiguous PRBs allocated to the BWP Value: 1->275 |
| >>TC\_RNTI | M | See TS 38.331 *RNTI-Value* |
| >>rarPDULen | M | RAR PDU Length |
| >>rarPDU | M | RAR PDU |
| > BWP Configuration | M | Specifies the BWP information for Scheduling Random Access Response. Refer Table 9-34 BWP Configuration. |
| > **PDCCH Configuration** | M | Specifies the CORESET and DL DCI(s) information. |
| >> CORESET Configuration | M | CORESET Configuration. Refer Table 9-35 CORESET Configuration. |
| >> NumberOfDLDCI | M | Number of DL DCIs |
| >> DLDCI | M | DL DCI and DL SCH Information. Refer Table 9-39 DL DCI Configuration. |
| **DCI Information** | O | Downlink Control Information for UL grant |
| > BWP Configuration | M | Specifies the BWP information for Downlink control data. Refer Table 9-34 BWP Configuration. |
| > CORESET Configuration | M | CORESET Configuration . Refer Table 9-35 CORESET Configuration. |
| > **DCI Format Type** | M | DCI Format as defined in TS 38.212 section 7.3.1 |
| >> Format 0\_0 |  | DCI format for scheduling PUSCH in one cell, Refer Table 9-36 DCI Format 0\_0 Configuration. |
| >> Format 0\_1 |  | DCI format for scheduling one or multiple PUSCH in one cell, Refer Table 9-37 DCI Format 0\_0 Configuration. |
| > DLDCI | M | DL DCI and DL SCH Information |
| **Downlink Message Allocation** | O | DL data Allocation |
| > DCIFormatID | M | Value: 1 bit, the value of this bit field is always set to 1, indicating a DL DCI format |
| > harqProcessID | M | HARQ process number 4 bits [TS38.212, sec 7.3.1.2], it should match value sent in DCI Value: 0 ->15 |
| > VRB-PRBMapping | M | Value: 1, According to 38.212 Table 7.3.1.1.2-33       0: Non-Interleaved       1: Interleaved |
| > DownlinkAssignmentIndex | M | Value:2 bits [TS38.214, sec 7.3.1.1.2] |
| > tpcCommand | O | TPC command for scheduled PUSCH, TS 38.213-table 7.1.1-1 |
| > PUCCHResourceIndicator | M | Given by higher layer parameter PUCCHResourceSet defined in PUCCH-Config, else as defined in TS 38.213 table -1. |
| > PDSCH-to-HARQ\_feedback timing indicator | O | Value: 3 bits. maps to maps to k1= {1,2,3,4,5,6,7,8}. |
| >>dlMsgPDU | M | DL Message PDU |
| >>dlMsgPDULen | M | DL Msg PDU Length |
| **Frequency Domain Allocation** | M | Frequency Domain resource assignment; as defined in 38.214 |
| >resource allocation type | M | *{Type-0, Type-1}* from 38.214 |
| **>resourceAllocationType-0** | O | Conditional presence on the resource allocation type value |
| >>rbBitMap | M | Resource allocation Type-0 bit map |
| **>resourceAllocationType-1** | O | Conditional presence on the resource allocation type value |
| >>Start RB | M | Starting Resource Block for the allocation |
| >>Number of RBs | M | Number of allocated Resource Blocks |
| **Time Domain Allocation** | M | Specifies the time domain allocation for this transmission |
| >Start Symbol Index | M | Specifies the index of the starting symbol of the allocation  {0...13} |
| >Number of Symbols | M | Specifies the number of contiguous symbols allocated for this transmission  {1...14} |
| Number of TBs | M | Number of scheduled Transportblocks |
| **TB1** | M | Transport Block#1 |
| >MCS | M | {0...31} per 38.214 |
| >NDI | M | New Data Indicator (toggled if a new transmission) |
| >RV | M | *Redundancy Version {0, 2, 3, 1}* per 38.212 |
| >TB Size | M | Transport Block Size in Bytes {0...65535} |
| >Number of DL CEs Scheduled | M | Number of DL CEs Scheduled {0...32} |
| >>CE Content | M | Information for the CE carried in non-encoded format.  Refer the table below for details |
| **>Number of DL LCs Scheduled** | M | Number of DL LCs Scheduled {0...32}; includes both SRBs and DRBs |
| >>DL LCID | M | DL LCs ID {0...32} |
| >>Number of Scheduled Bytes | M | Number of Scheduled Bytes for this specific Logical Channel  {0...65535} |
| **TB2** | O | Transport Block # 2 |
| >MCS | M | {0...31} per 38.214 |
| >NDI | M | New Data Indicator (toggled if a new transmission) |
| >RV | M | *Redundancy Version {0, 2, 3, 1}* per 38.212 |
| >TB Size | M | Transport Block Size in Bytes {0...65535} |
| **>Number of DL CEs Scheduled** | M | Number of DL CEs Scheduled {0...32} |
| >>CE LCID | M | Corresponds to CEs LCID as per 38.321 |
| >>CE Content | M | Byte Array [MAX\_BYTES\_PER\_CE]; this carries the CE content (not encoded) that Scheduler wants to transmit to the UE. MAC takes this content and encode per the formats defined in 38.321 |
| **>Number of DL LCs Scheduled** | M | Number of DL LCs Scheduled {0...32}; includes both SRBs and DRBs |
| >>DL LCID | M | DL LCs ID {0...32} |
| **>>Number of Scheduled** Bytes | M | Number of Scheduled Bytes for this specific Logical Channel  {0...65535} |
| > BWP Configuration | M | Specifies the BWP information for Downlink control data. Refer Table 9-34 BWP Configuration. |
| > **PDCCH Configuration** | M | Specifies the CORESET and DL DCI(s) information. |
| >> CORESET Configuration | M | CORESET Configuration, Refer Table 9-35 CORESET Configuration. |
| >> NumberOfDLDCI | M | Number of DL DCIs |
| >> DLDCI | M | DL DCI and DL SCH Information. Refer Table 9-39 DL DCI Configuration. |

</div>

Table - MAC CE Information

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Element** | **Presence** | **Description** |
| CE LC\_ID | M | Corresponds to CEs LCID as per 38.321 |
| Contention Resolution Identity CE | O | If LC\_ID corresponds to UE Contention Resolution Identity CE. No content is sent from Scheduler to MAC as the contents of Msg3 are to be buffered at MAC |
| **Timing Advance Command CE** | O | If LC\_ID corresponds to Timing Advance Command CE |
| >TAG ID | M | *Timing Advance Group ID* as per 38.321 |
| >Timing Advance | M | Index value of TA per 38.321 and 38.213 |
| **SCell Activation/Deactivation CE** | O | If LC\_ID Corresponds to SCell Activation/Deactivation CE |
| >Number of SCells | M | Number of SCells being addressed in this IE |
| >act\_deact\_val [MAX\_NUMBER OF\_SCELLS] | M | An Array of values corresponding to the index of the SCell as configured per 38.331.  Value at each index ***i*** corresponds to  0 - Deactivation  1 - Activation  MAX\_NUMBER\_OF\_SCELL = 31 per 38.321 current specification, subject to change with newer specification versions. |
| **BFR MAC CE** | O |  |
| >SP | M | Beam failure detection for the SpCell of this MAC entity as per TS 38.321 section 6.1.3. |
| > Ci | M | Beam failure detection (as specified in TS 38.321 clause 5.17) and the presence of an octet containing the AC field for the SCell with *ServCellIndex* i as specified in TS 38.331. |
| > AC | M | Indicates the presence of the Candidate RS ID field in this octet as per TS 38.321 section 6.1.3. |
| > Candidate RS ID | M | Index of an SSB with SS-RSRP above *rsrp-ThresholdBFR* amongst the SSBs in *candidateBeamRSSCellLis*t or to the index of a CSI-RS with CSI-RSRP above *rsrp-ThresholdBFR* amongst the CSI-RSs in *candidateBeamRSSCellLis*t. Index of an SSB or CSI-RS is the index of an entry in *candidateBeamRSSCellLis*t corresponding to the SSB or CSI-RS. |
| >R | M | Reserved bit, set to 0. |

</div>

Table - BWP Information

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Element** | **Presence** | **Description** |
| BWP | M | Specifies the DL DCI Coreset and Search Space for Scheduling DCI for Broadcast data. |
| >Subcarrierspacing | M | subcarrierSpacing [TS38.211 sec 4.2] Value:0->4 |
| >CyclicPrefix | M | Cyclic prefix type [TS38.211 sec 4.2] 0: Normal; 1: Extended |
| **>Frequency Domain Resources** | M | Frequency Domain resources allocation |
| >>StartPRB | M | BWPStart: bandwidth part start RB index from reference CRB [TS38.213 sec 12] Value: 0->274 |
| >>NoOfPRBs | M | BWPSize: Bandwidth part size [TS38.213 sec12]. Number of contiguous PRBs allocated to the BWP Value: 1->275 |

</div>

Table - CORESET Configuration

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Element** | **Presence** | **Description** |
| CORESET | M | Specifies the CORESET Information. Refer [TS38.211 sec 7.3.2.2] |
| > CORESET Size | M | Coreset size, {One CORESET, Two CORESET ,} |
| > StartSymbolIndex | M | Starting OFDM symbol for the CORESET Value: 0->13 |
| > DurationSymbols | M | Contiguous time duration of the CORESET in number of symbols. Corresponds to L1 parameter Nsymb CORESET [TS38.211 sec 7.3.2.2] Value: 1,2,3 |
| > FrequencyDomainResource | M | Resource location in frequency domain. This IE is a bitmap, similar to Type1 frequency domain allocation. |
| > CceRegMappingType | M | CORESET-CCE-to-REG-mapping-type [TS38.211 sec 7.3.2.2] 0: non-interleaved 1: interleaved |
| >> RegBundleSize | M | The number of REGs in a bundle. Must be 6 for cceRegMappingType = nonInterleaved. For cceRegMappingType = interleaved, must belong to {2,6} if duration = 1,2 and must belong to {3,6} if duration = 3. Corresponds to parameter L. [TS38.211 sec 7.3.2.2] Value: 2,3,6 |
| >>InterleaverSize | M | The interleaver size. For interleaved mapping belongs to {2,3,6} and for non-interleaved mapping is NA. Corresponds to parameter R. [TS38.211 sec 7.3.2.2] Value: 2,3,6 |
| >>ShiftIndex | M | [TS38.211 sec 7.3.2.2] Not applicable for non-interleaved mapping. For interleaved mapping and a PDCCH transmitted in a CORESET configured by the PBCH or SIB1 this should be set to phy cell ID. Value: 10 bits Otherwise, for interleaved mapping this is set to 0-> max num of PRBs. Value 0-> 275 |
| > CORESETType | M | [TS38.211 sec 7.3.2.2 and sec 7.4.1.3.2] 0: CORESET is configured by the PBCH or SIB1 (subcarrier 0 of CRB0 for DMRS mapping) 1: otherwise (subcarrier 0 of CORESET) |
| > CoresetPoolIndex | O | The index of the CORESET pool for this CORESET as specified in TS 38.213 [13] (clauses 9 and 10) and TS 38.214 [19] (clauses 5.1 and 6.1).  With two different values of *CORESETPoolIndex* in *ControlResourceSet*, the UE may expect to receive multiple PDCCHs scheduling fully/partially/non-overlapped PDSCHs in time and frequency domain. The UE may expect the reception of full/partially-overlapped PDSCHs in time only when PDCCHs that schedule two PDSCHs are associated to different *ControlResourceSets* having different values of *CORESETPoolIndex*. |
| > PrecoderGranularity | M | Granularity of precoding [TS38.211 sec 7.3.2.2] 0: sameAsRegBundle 1: allContiguousRBs |
| > CCEIndex | M | CCE start Index used to send the DCI Value: 0->135 |
| > AggregationLevel | M | Aggregation level used [TS38.211, sec 7.3.2.1] Value: 1,2,4,8,16 |

</div>

Table - DCI Format0\_0 Configuration

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Element** | **Presence** | **Description** |
| FORMAT0\_0 | M | Specifies the DCI format 0\_0 [TS38.212 sec 7.3.1.1.1] |
| > resourceAlloc | M | Resource Allocation Type [TS38.214, sec 6.1.2.2] 0: Type 0 1: Type 1 |
| > **Frequency Domain Allocation** | M | Frequency Domain resources allocation |
| >>resource allocation type | M | *{Type-0, Type-1}* from 38.214 |
| **>>resourceAllocationType-0** | O | Conditional presence on the resource allocation type value |
| >>>rbBitMap | M | Resource allocation Type-0 bit map |
| **> >resourceAllocationType-1** | O | Conditional presence on the resource allocation type value |
| >>> StartPRB | M | BWPStart: bandwidth part start RB index from reference CRB [TS38.213 sec 12] Value: 0->274 |
| >>> NoOfPRBs | M | BWPSize: Bandwidth part size [TS38.213 sec12]. Number of contiguous PRBs allocated to the BWP Value: 1->275 |
| **>TimeDomainAllocation** | M | 4 bits as defined in Clause 6.1.2.1 of [6, TS 38.214] |
| >> StartSymbolNumber | M | OFDM symbol number |
| >> Number of Symbols | M | Number of Symbols |
| > Row | M | Row entry to pusch-AllocationList, Time Domain resource allocation for PUSCH based on 38.214 - 6.1.2.1 Resource allocation in time domain |
| > mcs | M | mcsIndex uint8\_t MCS index [TS38.214, sec 6.1.4, & 5.1.3.1], Value: 0->31 |
| > harqProcessID | M | HARQ process number [TS38.212, sec 7.3.1.1], it should match value sent in DCI Value: 0 ->15 |
| > FrequencyHopping | M | For resource allocation type 1. [TS38.212, sec 7.3.1.1] [TS38.214, sec 6.3] Indicates if frequency hopping is enabled Value: 0: disabled |
| > newDataIndicator | M | Indicates if this new data or a retransmission [TS38.212, sec 7.3.1.1]  Value: 0: retransmission 1: new data |
| > rvIndex | M | Redundancy version index [TS38.214, sec 6.1.4], it should match value sent in DCI Value: 0->3 |
| > tpcCommand | M | TPC command for scheduled PUSCH, TS 38.213-table 7.1.1-1 |
| > SULIndicator | M | SUL Configuration,  0 bit: SUL not figured  1 bit: SUL configured |

</div>

Table - DCI Format0\_1 Configuration

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Element** | **Presence** | **Description** |
| FORMAT0\_1 | M | Specifies the DCI format 0\_1 [TS38.212 sec 7.3.1.1.2] |
| > carrierIndicator | M | Indicator to the carrier, 0 or 3 bits, as defined in Clause 10.1 of [5, TS38.213] |
| > SULIndicator | M | SUL Configuration,  0 bit: SUL not figured  1 bit: SUL configured |
| > BWPIndicator | M | Bits-0,1,2. Determined by [BandwidthPart-Config](https://www.sharetechnote.com/html/5G/5G_CarrrierBandwidthPart.html#RRC_Parameters_BandwidthPart_Configuration) in higher layer message and [38.212 - Table 7.3.1.1.2-1](https://www.sharetechnote.com/html/5G/5G_DCI.html#Format_0_1_38_212_Table_7_3_1_1_2_1) |
| > resourceAlloc | M | Resource Allocation Type [TS38.214, sec 6.1.2.2] 0: Type 0 1: Type 1 |
| > **Frequency Domain Allocation** | M | Frequency Domain resources allocation |
| >> StartPRB | M | BWPStart: bandwidth part start RB index from reference CRB [TS38.213 sec 12] Value: 0->274 |
| >> NoOfPRBs | M | BWPSize: Bandwidth part size [TS38.213 sec12]. Number of contiguous PRBs allocated to the BWP Value: 1->275 |
| **>TimeDomainAllocation** | M | 4 bits as defined in Clause 6.1.2.1 of [6, TS 38.214] |
| >> StartSymbolNumber | M | OFDM symbol number |
| >> Number of Symbols | M | Number of Symbols |
| > Row | M | Row entry to pusch-AllocationList, Time Domain resource allocation for PUSCH based on 38.214 - 6.1.2.1 Resource allocation in time domain |
| > mcs | M | mcsIndex uint8\_t MCS index [TS38.214, sec 6.1.4, & 5.1.3.1], Value: 0->31 |
| > harqProcessID | M | HARQ process number [TS38.212, sec 7.3.1.1], it should match value sent in DCI Value: 0 ->15 |
| > FrequencyHopping | M | For resource allocation type 1. [TS38.212, sec 7.3.1.1] [TS38.214, sec 6.3] Indicates if frequency hopping is enabled Value: 0: disabled |
| > newDataIndicator | M | Indicates if this new data or a retransmission [TS38.212, sec 7.3.1.1]  Value: 0: retransmission 1: new data |
| > rvIndex | M | Redundancy version index [TS38.214, sec 6.1.4], it should match value sent in DCI Value: 0->3 |
| > 1stDownlinkAssignmentIndex | M | Value:1, 2 or 4 bits [TS38.214, sec 7.3.1.1.2] |
| > 2ndDownlinkAssignmentIndex | M | Value:0, 2 or 4 bits [TS38.214, sec 7.3.1.1.2] |
| > tpcCommand | M | TPC command for scheduled PUSCH, TS 38.213-table 7.1.1-1 |
| >SRSResourceSetIndicator | M | 0 or 2 bits, 2 bits according to Table 7.3.1.1.2-36 in TS 38.212 0 bit otherwise.  The SRS resource set applicability is configured by the higher layer parameter *usage* in *SRS-ResourceSet.* When the higher layer parameter *usage* is set to 'beamManagement'*,* only one SRS resource in each of multiple SRS sets may be transmitted at a given time instant, but the SRS resources in different SRS resource sets with the same time domain behaviour in the same BWP may be transmitted simultaneously. |
| > SRSResourceIndicator |  | Given by higher layer parameter *srs-ResourceSetToAddModList* |
| > TPMI | O | Value: 0,2,3,4,5,6. Determined by [ulTxConfig, Number of Antenna ports, PUSCH-tp, ULmaxRank](https://www.sharetechnote.com/html/5G/5G_DCI.html#Format_0_1_PrecodingInformation) |
| > AntennaPorts | M | Value: 2,3,4,5. Determined by [PUSCH-tp, DL-DMRS-config-type, DL-DMRS-config-max-len, Rank](https://www.sharetechnote.com/html/5G/5G_DCI.html#Format_0_1_Antenna_ports) |
| > SRS Request | O | SRS Request Field, TS 38.212 Table 7.3.1.1.2-24 |
| > CSI Request | O | Value: 0,1,2,3,4,5,6, Determined by ReportTriggerSize in RRC message.See [Configure Aperiodic Trigger](https://www.sharetechnote.com/html/5G/5G_CSI_Report.html#How_to_configure_Aperiodic_Report_Trigger) section for the details. |
| > CBG Transmission Information | O | Value: 0, 2,4, 6,8. Determined by maxCodeBlockGroupPerTransportblock in RRC message, |
| > PTRS-DMRS | O | Value: 0,2. Determined by [UL-PTRS-present, PUSCH-tp](https://www.sharetechnote.com/html/5G/5G_DCI.html#Format_0_1_PTRS_DMRS_Association) in RRC Message |
| > beta-offsetIndicator | O | Value: 0,2. 0 - if uci-on-PUSCH.dynamic = Not Configured  2 - otherwise |
| > DMRS Sequence Initialization | O | Value: 0,1. 0 - if PUSCH-tp=Disabled  1 - if PUSCH-tp=Enabled |
| > UL-SCH Indicator | O | Value: 0, 1. 0 - UL-SCH is not transmitted on the PUSCH  1 - UL-SCH is transmitted on the PUSCH |

</div>

Table - DCI Format1\_0 Configuration

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Element** | **Presence** | **Description** |
| FORMAT1\_0 | M | Specifies the DCI format 1\_0 [TS38.212 sec 7.3.1.2.1] |
| > **Frequency Domain Allocation** | M | Frequency Domain resources allocation |
| >> StartPRB | M | BWPStart: bandwidth part start RB index from reference CRB [TS38.213 sec 12] Value: 0->274 |
| >> NoOfPRBs | M | BWPSize: Bandwidth part size [TS38.213 sec12]. Number of contiguous PRBs allocated to the BWP Value: 1->275 |
| **>TimeDomainAllocation** | M | 4 bits as defined in Clause 6.1.2.1 of [6, TS 38.214] |
| >> StartSymbolNumber | M | OFDM symbol number |
| >> Number of Symbols | M | Number of Symbols |
| > VRB-PRBMapping | M | Value: 1, According to 38.212 Table 7.3.1.1.2-33       0: Non-Interleaved       1: Interleaved |
| > mcs | M | mcsIndex uint8\_t MCS index [TS38.214, sec 6.1.4, & 5.1.3.1], Value: 0->31 |
| > harqProcessID | M | HARQ process number [TS38.212, sec 7.3.1.1], it should match value sent in DCI Value: 0 ->15 |
| > newDataIndicator | M | Indicates if this new data or a retransmission [TS38.212, sec 7.3.1.1]  Value: 0: retransmission 1: new data |
| > rvIndex | M | Redundancy version index [TS38.214, sec 6.1.4], it should match value sent in DCI Value: 0->3 |
| > DownlinkAssignmentIndex | M | Value:2 bits [TS38.214, sec 7.3.1.1.2] |
| > tpcCommand | M | TPC command for scheduled PUSCH, TS 38.213-table 7.1.1-1 |
| > PUCCHResourceIndicator | M | Given by higher layer parameter PUCCHResourceSet defined in PUCCH-Config, else as defined in TS 38.213 table -1. |
| > PDSCH-to-HARQ\_feedback timing indicator | O | Value: 3 bits. maps to maps to k1= {1,2,3,4,5,6,7,8}. |

</div>

Table - DCI Format1\_1 Configuration

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Element** | **Presence** | **Description** |
| FORMAT1\_1 | M | Specifies the DCI format 1\_1 [TS38.212 sec 7.3.1.2.2] |
| > carrierIndicator | M | Indicator to the carrier, 0 or 3 bits, as defined in Clause 10.1 of [5, TS38.213] |
| > BWPIndicator | M | Bits-0,1,2. Determined by [BandwidthPart-Config](https://www.sharetechnote.com/html/5G/5G_CarrrierBandwidthPart.html#RRC_Parameters_BandwidthPart_Configuration) in higher layer message and [38.212 - Table 7.3.1.1.2-1](https://www.sharetechnote.com/html/5G/5G_DCI.html#Format_0_1_38_212_Table_7_3_1_1_2_1) |
| > resourceAlloc | M | Resource Allocation Type [TS38.214, sec 6.1.2.2] 0: Type 0 1: Type 1 |
| > **Frequency Domain Allocation** | M | Frequency Domain resources allocation |
| >> StartPRB | M | BWPStart: bandwidth part start RB index from reference CRB [TS38.213 sec 12] Value: 0->274 |
| >> NoOfPRBs | M | BWPSize: Bandwidth part size [TS38.213 sec12]. Number of contiguous PRBs allocated to the BWP Value: 1->275 |
| **>TimeDomainAllocation** | M | 4 bits as defined in Clause 6.1.2.1 of [6, TS 38.214] |
| >> StartSymbolNumber | M | OFDM symbol number |
| >> Number of Symbols | M | Number of Symbols |
| > VRB-PRBMapping | M | Value: 1, According to 38.212 Table 7.3.1.1.2-33       0: Non-Interleaved       1: Interleaved |
| > mcs | M | mcsIndex uint8\_t MCS index [TS38.214, sec 6.1.4, & 5.1.3.1], Value: 0->31, Applicable for transport block#1 and transport block#2 |
| > harqProcessID | M | HARQ process number [TS38.212, sec 7.3.1.1], it should match value sent in DCI Value: 0 ->15 |
| > newDataIndicator | M | Indicates if this new data or a retransmission [TS38.212, sec 7.3.1.1] . Applicable for transport block#1 and transport block#2  Value: 0: retransmission 1: new data |
| > rvIndex | M | Redundancy version index [TS38.214, sec 6.1.4], it should match value sent in DCI Value: 0->3. Applicable for transport block#1 and transport block#2 |
| > DownlinkAssignmentIndex | M | Value:2 bits [TS38.214, sec 7.3.1.1.2] |
| > tpcCommand | M | TPC command for scheduled PUSCH, TS 38.213-table 7.1.1-1 |
| >SecondtpcComand | O | 2 bits as defined in Clause 7.2.1 of [5, TS 38.213] if higher layer parameter SecondTPCFieldDCI-1-1 is configured; 0 bit otherwise |
| > PUCCHResourceIndicator | M | Given by higher layer parameter PUCCHResourceSet defined in PUCCH-Config, else as defined in TS 38.213 table -1. |
| > PDSCH-to-HARQ\_feedback timing indicator | O | Value: 3 bits. maps to maps to k1= {1,2,3,4,5,6,7,8}. |
| > AntennaPorts | M | 4, 5, or 6 bits as defined by Tables 7.3.1.2.2-1/2/3/4 and Tables 7.3.1.2.2-1A/2A/3A/4A in TS 38.312. |
| > TransmissionConfigurationIndication | O | 0 bit if higher layer parameter *tci-PresentInDCI* is not enabled; otherwise 3 bits as defined in Clause 5.1.5 of [6, TS38.214].  The UE may expect to be indicated with one or two TCI states in a codepoint of the DCI field *'Transmission Configuration Indication'* together with the DCI field "*Time domain resource assignment*' indicating an entry in *pdsch-TimeDomainAllocationList* |

</div>

Table - DL-DCI Configuration

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Element** | **Presence** | **Description** |
| DL DCI | M | Specifies the DL DCI Coreset and Search Space for Scheduling DCI for Broadcast data. |
| > C-RNTI | M | The RNTI used for identifying the UE when receiving the PDU Value: 1 -> 65535 |
| > ScramblingID | M | For a UE-specific search space it equals the higherlayer parameter PDCCH-DMRS-Scrambling-ID if configured, otherwise it should be set to the phy cell ID. [TS38.211, sec 7.3.2.3] Value: 0->65535 |
| > ScramblingRNTI | M | For a UE-specific search space where PDCCH-DMRSScrambling-ID is configured This param equals the CRNTI. Otherwise, it should be set to 0. [TS38.211, sec 7.3.2.3] Value: 0 -> 65535 |
| > CCEIndex | M | CCE start Index used to send the DCI Value: 0->135 |
| > AggregationLevel | M | Aggregation level used [TS38.211, sec 7.3.2.1] Value: 1,2,4,8,16 |
| > **BeamformingInfo** | O |  |
| >> numPRGs | M | Number of PRGs spanning this allocation. Value: 1->275 |
| >> prgSize | M | Size in RBs of a precoding resource block group (PRG) - to which same precoding and digital beamforming gets applied. Value: 1->275 |
| >> digBFInterfaces | M | Number of STD ant ports (parallel streams) feeding into the digBF Value: 0->255 |
| >> **PRGInfo** | O |  |
| >>> PMidx | M | Index to precoding matrix (PM) pre-stored at cell configuration. Note: If precoding is not used this parameter should be set to 0. Value: 0->65535. |
| >>> beamIdx | M | For each digBFInterface, Index of the digital beam weight vector pre-stored at cell configuration. The vector maps this input port to output TXRUs. Value: 0->65535 |
| > **TxPowerPDCCHInfo** |  |  |
| >> beta\_PDCCH\_1\_0 | M | PDCCH power value used for PDCCH Format 1\_0 with CRC scrambled by SI-RNTI, PI-RNTI or RA-RNTI. This is ratio of SSB/PBCH EPRE to PDCCH and PDCCH DMRS EPRE [TS38.213, sec 4.1] Value :0->17 representing -8 to 8 dB in 1dB steps |
| >>PowerControlOffsetSS | M | PDCCH power value used for all other PDCCH Formats. This is ratio of SSB/PBCH block EPRE to PDCCH and PDCCH DMRS EPRE [TS38.214, sec 4.1] Values: 0: -3dB, 1: 0dB, 2: 3dB, 3: 6dB |
| > PDSCH Configuration |  | PDSCH configuration for DL SCH data. Refer Table 9-40 DL SCH Configuration. |

</div>

Table - PDSCH Configuration

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Element** | **Presence** | **Description** |
| DL SCH | O | Conditional presence on Short Message Indicator value for broadcasting data. Present in case Short Message Indicator is 1 or 3; as defined in 38.212 Table 7.3.1.2.1-1. Mandatory for other DL data. |
| > pduBitmap | O | Bitmap indicating presence of optional PDUs Bit 0: pdschPtrs - Indicates PTRS included (FR2) Bit 1: cbgRetxCtrl (Present when CBG based retransmit is used) All other bits reserved |
| > C-RNTI | M | The RNTI used for identifying the UE when receiving the PDU Value: 1 -> 65535 |
| > pduIndex | M | PDU index incremented for each PDSCH PDU sent in TX control message. This is used to associate control information to data and is reset every slot. Value: 0 -> 65535 |
| > NrOfCodewords | M | Number of code words for this RNTI (UE) Value: 1 -> 2 |
| > **CodewordInfo** | M | For each codeword |
| >> targetCodeRate | M | Target coding rate [TS38.212 sec 5.4.2.1 and 38.214 sec 5.1.3.1]. This is the number of information bits per 1024 coded bits expressed in 0.1-bit units |
| >>qamModOrder | M | QAM modulation [TS38.212 sec 5.4.2.1 and 38.214 sec 5.1.3.1] Value: 2,4,6,8 |
| >>mcsIndex | M | MCS index [TS38.214, sec 5.1.3.1], should match value sent in DCI Value: 0->31 |
| >> mcsTable | M | MCS-Table-PDSCH [TS38.214, sec 5.1.3.1] 0: notqam256 1: qam256 2: qam64LowSE |
| >> rvIndex | M | Redundancy version index [TS38.212, Table 5.4.2.1-2 and 38.214, Table 5.1.2.1-2], should match value sent in DCI Value: 0->3 |
| >> TBSize | M | Transmit block size (in bytes) [TS38.214 sec 5.1.3.2] Value: 0->65535 |
| > dataScramblingId | O | dataScramblingIdentityPdsch [TS38.211, sec 7.3.1.1] It equals the higher-layer parameter dataScramblingIdentityPDSCH [TS 38.331 PDSCH-Config] if configured and the RNTI equals the C-RNTI, otherwise L2 needs to set it to physical cell id. Value: 0->65535 |
| > nrOfLayers | M | Number of layers [TS38.211, sec 7.3.1.3] Value: 1->8 |
| > transmissionScheme | M | PDSCH transmission schemes [TS38.214, sec 5.1.1] only one transmission scheme (transmission scheme 1) for 0: Up to 8 transmission layers |
| > refPoint | M | Reference point for PDSCH DMRS "k" - used for tone mapping [TS38.211, sec 7.4.1.1.2] Resource block bundles [TS38.211, sec 7.3.1.6]. Value: 0 -> 1 If 0, the 0-reference point for PDSCH DMRS is at Point A [TS38.211 sec 4.4.4.2]. Resource block bundles generated per sub-bullets 2 and 3 in [TS38.211, sec 7.3.1.6]. For sub-bullet 2, the start of bandwidth part must be set to the start of actual bandwidth part +NstartCORESET and the bandwidth of the bandwidth part must be set to the bandwidth of the initial bandwidth part. If 1, the DMRS reference point is at the lowest VRB/PRB of the allocation. Resource block bundles generated per sub-bullets 1 [TS38.211, sec 7.3.1.6] |
| **> DMRS** | M |  |
| >> dlDmrsSymbPos | M | DMRS symbol positions [TS38.211, sec 7.4.1.1.2 and Tables 7.4.1.1.2-3 and 7.4.1.1.2-4] Bitmap occupying the 14 LSBs with:  bit 0: first symbol  and for each bit  0: no DMRS 1: DMRS |
| >> dmrsConfigType | O | DL DMRS config type [TS38.211, sec 7.4.1.1.2] given by the higher-layer parameter *[TS 38.331 DMRS-DownlinkConfig: dmrs-Type]*  0: type 1 1: type 2 |
| >> dlDmrsScramblingId | O | DL-DMRS-Scrambling-ID [TS38.211, sec 7.4.1.1.2 ] If provided by the higher-layer [ TS 38.331, DMRS-DownlinkConfig: scramblingID0,  *scramblingID1*] and the PDSCH is scheduled by PDCCH with CRC scrambled by C-RNTI or CS-RNTI, otherwise, L2 should set this to physical cell id. Value: 0->65535 |
| >> SCID | M | DMRS sequence initialization [TS38.211, sec 7.4.1.1.2]. Should match what is sent in DCI 1\_1, otherwise set to 0. Value: 0->1 |
| >> numDmrsCdmGrps NoData | O | Number of DM-RS CDM groups without data [TS38.212 sec 7.3.1.2.2] [TS38.214 Table 4.1-1] it determines the ratio of PDSCH EPRE to DM-RS EPRE. Value: 1->3 |
| >> dmrsPorts | M | DMRS ports. [TS38.212 7.3.1.2.2] provides description between DCI 1-1 content and DMRS ports. Bitmap occupying the 11 LSBs with: bit 0: antenna port 1000 bit 11: antenna port 1011 and for each bit  0: DMRS port not used 1: DMRS port used |
| >> MappingType | M | Selection of the DMRS type to be used for DL. Configuration type 1 or configuration type 2 as given by the higher-layer parameter *dmrs-Type.* |
| >> NumberOfDMRSSymbols | O | The maximum number of OFDM symbols for DL front loaded DMRS data [TS38.212 sec 7.4.1.1.2], provided by higher-layer [TS 38.331 DMRS-DownlinkConfig: maxLength] len1 corresponds to value 1. len2 corresponds to value 2. If the field is absent, the UE applies value len1. If set to len2, the UE determines the actual number of DM-RS symbols by the associated DCI. |
| >> DMRSAddPostion | O | Position for additional DM-RS in DL, see Tables 7.4.1.1.2-3 and 7.4.1.1.2-4 in TS 38.211 [16]. |
| **>PDSCHFrequencyAllocation** | M | PDSCH resource allocation in frequency domain [TS38.214, sec 5.1.2.2] |
| >> resourceAlloc | M | Resource Allocation Type [TS38.214, sec 5.1.2.2]  0: Type 0 1: Type 1 |
| >> rbBitmap | O | Conditionally included for resource alloc type 0. TS 38.212 V15.0.x, 7.3.1.2.2 bitmap of RBs, 273 rounded up to multiple of 32. This bitmap is in units of VRBs. LSB of byte 0 of the bitmap represents the first RB of the bwp |
| >> rbStart | O | Conditionally included for resource allocation type 1. [TS38.214, sec 5.1.2.2.2] The number of resource block within for this PDSCH.  Value: 1->275 |
| >> rbSize | O | Conditionally included for resource allocation type 1. [TS38.214, sec 5.1.2.2.2] The number of resource block within for this PDSCH. Value: 1->275 |
| >> VRBtoPRBMapping | O | VRB-to-PRB-mapping [TS38.211, sec 7.3.1.6] 0: non-interleaved 1: interleaved with RB size 2 2: Interleaved with RB size 4 |
| **> PDSCHTimeAllocation** | M | Resource Allocation in time domain [TS38.214, sec 5.1.2.1] |
| >> StartSymbolIndex | M | Start symbol index of PDSCH mapping from the start of the slot, S. [TS38.214, Table 5.1.2.1-1]  Value: 0->13 |
| >> NrOfSymbols | M | PDSCH duration in symbols, L [TS38.214, Table 5.1.2.1-1] Value: 1->14 |
| **> beamPDSCHInfo** | O | Beamforming information in PDSCH |
| >> numPRGs | O | Number of PRGs spanning this allocation. Value: 1->275 |
| >> prgSize | O | Size in RBs of a precoding resource block group (PRG) - to which same precoding and digital beamforming gets applied. Value: 1->275 |
| >> digBFInterfaces | O | Number of STD ant ports (parallel streams) feeding into the digBF Value: 0->255 |
| **>> prgInfo** | O | For number of PRGs |
| >>> PMidx | O | Index to precoding matrix (PM) pre-stored at cell configuration. Note: If precoding is not used this parameter should be set to 0. Value: 0->65535. |
| >>>> beamIdx | O | For each digBFInterface,  Index of the digital beam weight vector pre-stored at cell configuration. The vector maps this input port to output TXRUs. Value: 0->65535 |
| **> TxPDSCHPower** | M | Tx Power info |
| >> powerControlOffset | M | Ratio of PDSCH EPRE to NZP CSI-RSEPRE [TS38.214, sec 5.2.2.3.1] Value :0->23 representing -8 to 15 dB in 1dB steps, as given by higher layer [TS 38.331, NZP-CSI-RS-Resource: powerControlOffset] |
| >> powerControlOffsetSS | O | Ratio of SSB/PBCH block EPRE to NZP CSI-RS EPRES [TS38.214, sec 5.2.2.3.1] Values: 0: -3dB, 1: 0dB, 2: 3dB, 3: 6dB as given by higher layer [TS 38.331, NZP-CSI-RS-Resource: powerControlOffsetSS ] |

</div>

**Table 9-44 DL-SCH Configuration**

### UL Scheduling Information

Scheduler provides Scheduled information to MAC to enable MAC to form the UL\_TTI.request towards L1. This is akin to a reception request towards L1 to allow L1 to receive scheduled PUSCH, PUCCH, and SRS data for a specific UE.

Table - UL Scheduling Information

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Element** | **Presence** | **Description** |
| Cell Index | M | Identification of the Cell. 2-byte integer allocated by DU |
| CRNTI | M | See TS 38.331 *RNTI-Value* |
| Timing Information | M | Timing information for this particular message. |
| Data Type | M | {PUSCH, PUSCH\_UCI, UCI, SRS, PRACH} |
| **PUSCH Information** | O | Present if Data Type == PUSCH |
| >HARQ Process ID | M | 4 bits; identifies the HARQ Process being used for this transmission |
| **>Frequency Domain Allocation** | M | *Frequency Domain resource assignment*; as defined in 38.214 |
| >>resource allocation type | M | *{Type-0, Type-1}* from 38.214 |
| >>resourceAllocationType-0 | O | Conditional presence on the resource allocation type value |
| >>>rbBitMap | M | Resource allocation Type-0-bit map |
| >>resourceAllocationType-1 | O | Conditional presence on the resource allocation type value |
| >>>Start RB | M | Starting Resource Block for the allocation |
| >>>Number of RBs | M | Number of allocated Resource Blocks |
| **>Time Domain Allocation** | M | Specifies the time domain allocation for this transmission |
| >>Start Symbol Index | M | Specifies the index of the starting symbol of the allocation  {0...13} |
| >>Number of Symbols | M | Specifies the number of contiguous symbols allocated for this transmission  {1...14} |
| **>TB** | M | Transport Block # 1 |
| >>MCS | M | {0...31} per 38.214 |
| >>NDI | M | Set if New Transmission |
| >>RV | M | Redundancy Version {0, 2, 3, 1} per 38.212 |
| >>TB Size | M | Transport Block Size in Bytes {0...65535} |
| **PUSCH\_UCI** | O | Present if Data Type == PUSCH\_UCI |
| >HARQ Process ID | M | 4 bits; identifies the HARQ Process being used for this transmission |
| **>Frequency Domain Allocation** | M | Frequency Domain resource assignment; as defined in 38.214 |
| >>resource allocation type | M | {Type-0, Type-1} 38.214 |
| **>>resourceAllocationType-0** | O | Conditional presence on the resource allocation type value |
| >>>rbBitMap | M | Resource allocation Type-0-bit map |
| **>>resourceAllocationType-1** | O | Conditional presence on the resource allocation type value |
| >>>Start RB | M | Starting Resource Block for the allocation |
| >>>Number of RBs | M | Number of allocated Resource Blocks |
| **>Time Domain Allocation** | M | Specifies the time domain allocation for this transmission |
| >>Start Symbol Index | M | Specifies the index of the starting symbol of the allocation  {0...13} |
| >>Number of Symbols | M | Specifies the number of contiguous symbols allocated for this transmission  {1...14} |
| **>TB** | M | Transport Block # 1 |
| >>MCS | M | {0...31} per 38.214 |
| >>NDI | M | Set if New Transmission |
| >>RV | M | *Redundancy Version {0, 2, 3, 1}* per 38.212 |
| >>TB Size | M | Transport Block Size in Bytes {0...65535} |
| **>HARQ\_INFO** | O | Present if HARQ feedback is expected and is multiplexed along with PUSCH |
| >>HARQ\_Bits | M | Number of HARQ ACK Bits expected |
| >>betaOffsetHarqACK | M | Beta Offset for HARQ-ACK per 38.212 |
| **>CSI\_INFO** | O | Present if CSI feedback is expected and is multiplexed along with PUSCH |
| >>csiBits | M | Number of CSI bits |
| >>betaOffsetCSI | M | Beta Offset for CSI per 38.212 |
| UCI | O | Present if Data Type == UCI |
| **>Frequency Domain allocation** | M | Frequency domain location of PUCCH |
| >>Start RB | M | Starting Resource Block for the allocation |
| >>Number of RBs | M | Number of allocated Resource Blocks |
| **>Time Domain Allocation** | M | Specifies the time domain allocation for this transmission |
| >>Start Symbol Index | M | Specifies the index of the starting symbol of the allocation  {0...13} |
| >>Number of Symbols | M | Specifies the number of contiguous symbols allocated for this transmission  {1...2} for format 0, 2  {4...14} for format 1, 3, 4 |
| >SR Flag | O | Set if SR is expected in the scheduled slot |
| **>HARQ\_INFO** | O | Present if HARQ feedback is expected and is multiplexed along with PUSCH |
| >>HARQ\_Bits | M | Number of HARQ ACK Bits expected |
| **>CSI\_INFO** | O | Present if CSI feedback is expected and is multiplexed along with PUSCH |
| >>csiBits | M | Number of CSI bits |
| **> beamPUSCHInfo** | O | Beamforming information in PUSCH |
| >> numPRGs | O | Number of PRGs spanning this allocation. Value: 1->275 |
| >> prgSize | O | Size in RBs of a precoding resource block group (PRG) - to which same precoding and digital beamforming gets applied. Value: 1->275 |
| >> digBFInterfaces | O | Number of STD ant ports (parallel streams) feeding into the digBF Value: 0->255 |
| **>> prgInfo** | O | For number of PRGs |
| >>> PMidx | O | Index to precoding matrix (PM) pre-stored at cell configuration. Note: If precoding is not used this parameter should be set to 0. Value: 0->65535. |
| >>>> beamIdx | O | For each digBFInterface,  Index of the digital beam weight vector pre-stored at cell configuration. The vector maps this input port to output TXRUs. Value: 0->65535 |
| **>pucchFormat** | M | PUCCH format  Value: 0 -> 2  0: PUCCH Format2  1: PUCCH Format3  2: PUCCH Format4 |
| **>intraFreqHop** | M | Frequency hopping for a PUCCH resource [38.211, Sec  6.3.2.2.1]. Valid for all formats  Value:  0: disabled  1: enabled |
| **>secondPrbHop** | M | Index of the first PRB after frequency hopping.  Valid for all formats.  Value:0->274 |
| >initialCyclicShift | M | Initial cyclic shift (M0) used as part of frequency.  hopping. [38.213, sec 9.2.1 and 38.211, sec  6.3.2.2.2].  Valid for formats 0, 1, 3 and 4  Value: 0->11 |
| >occLen | M | The length of an orthogonal cover code. [38.211, sec  6.3.2.6.3].  Valid for format 4.  Value: 2 or 4 |
| >occIdx | M | An index of an orthogonal cover code. [38.211, sec  6.3.2.6.3].  Valid for format 4.  Value: 0->3 |
| >timeDomOCC | M | An index of an orthogonal cover code [38.211, sec  6.3.2.4.1].  Valid for format 1.  Value: 0->6 |
| >addDmrsFlag | M | Flag for additional DMRS. [38.213, sec 9.2.2].  Valid for formats 3 and 4.  Value:  0 = disabled  1 = enabled |
| > pi2BPSK | M | When enabled, indicates that the UE uses pi/2 BPSK for  UCI symbols instead of QPSK for PUCCH.  [TS 38.213, sec 9.2.5]  Value: 0: disabled, 1: enabled |
| **PRACH Information** | M | Present if Data Type == PRACH |
| >numPrachOcas | M |  |
| >prachFormat | M |  |
| >numRa | M |  |
| >prachStartSymb | M |  |

</div>

### RAR Information

This API is invoked by scheduler to inform MAC of uplink scheduling and Msg3 scheduling information.

Table - RAR Information

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Element** | **Presence** | **Description** |
| Cell Index | M | Identification of the Cell. 2-byte integer allocated by DU |
| Timing Information | M | Timing information for this message. |
| RA\_RNTI | M | RA\_RNTI corresponding to the received RACH |
| **Number of Preambles** | M | Number of Preambles that were received for the RA\_RNTI |
| >RAPID | M | Preamble ID |
| >Timing Advance Value | M | Initial Timing Advance |
| >Start RB | M | Starting Resource Block for the PUSCH Allocation |
| >Number of RBs | M | Number of allocated Resource Blocks for the PUSCH Allocation |
| >Temporary CRNTI | M | Temporary CRNTI allocated by Scheduler |

</div>

### Downlink Control Channel Information

Scheduler provides DCI scheduling information for a given TTI on PDCCH. Scheduling information contains Coreset and Search Space resource allocation. MAC is supposed to prepare the DCI payload with the Downlink control channel information and DL/UL Scheduling Information Frequency and Time Domain allocation for the UE.

Table - Downlink Control Channel Information

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Element** | **Presence** | **Description** |
| Frame Number | M | Time indication. Frame Number where DCI is scheduled |
| Slot Number | M | Time indication. Slot Number where DCI is scheduled |
| Cell Index | M | Identification of the Cell. 2-byte integer allocated by DU |
| CRNTI | M | See TS 38.331 *RNTI-Value* |
| Frequency Domain Resources | M | Frequency domain resources for the CORESET as defined in 38.211 section 7.3.2.2 |
| Duration | M | time duration of the CORESET in number of symbols as defined in 38.211 section 7.3.2.2 |
| **CCE REG Mapping type** | M | {interleaved, nonInterleaved}. as defined in 38.211 section 7.3.2.2 |
| **>interleaved** | O | Conditional presence on the CCE REG Mapping type value |
| >> reg Bundle Size | M | {2, 3, 6}. Size of REG Bundles as defined in 38.211 section 7.3.2.2 |
| >>interleaver Size | M | {2, 3, 6}. Interleaver Size as defined in 38.211 section 7.3.2.2 |
| >>shift Index | M | shiftIndex or Physical Cell Id as defined in 38.211 section 7.3.2.2 |
| Search Space Start Symbol | M | first symbol for PDCCH monitoring in the slot; as defined in 38.213 section 10.1. |
| CCE Index | M | First CCE index in the aggregation level as defined in 38.211 section 7.3.2.2 |
| Aggregation Level | M | {1,2,4,8,16}. as defined in 38.213 Table 10.1-1 |
| Precoder Granularity | M | {sameAsRegBundle, allContigousRBs}; as defined in 38.211 section 7.3.2.2 |
| PDCCH Power Offset | M | -8 to 8 dB in 1dB steps. SSB/PBCH EPRE to PDCCH and PDCCH DMRS EPRE; as defined in 38.213 section 4.1 |
| DCI Format type | M | *{format\_0\_0, format\_0\_1, format\_1\_0, format\_1\_1}*; as defined in 38.212 section 7.3.1 |
| > **Format\_1\_0** | O | Conditional presence on the DCI Format type value |
| >>VRB to PRB Mapping | M | Physical resource block Bundling as defined in 38.214 section 5.1.2.3 |
| >>DAI | M | Downlink Assignment Index as defined in as defined in 38.213 section 9.1.2 |
| >> TPC Command | M | PUCCH TPC as defined in 38.213 section 7.2.1 |
| >>PUCCH Resource Indicator | M | Resource for reporting HARQ-ACK as defined in 38.213 section 9.2.3 |
| >> PDSCH to Harq Feedback Timing Indicaor | M | Timing for reporting HARQ-ACK as defined in 38.213 section 9.2.3 |
| > **Format\_1\_1** | O | Conditional presence on the DCI Format type value |
| >>Carrier Indicator | O | Conditional presence on CrossCarrierSchedulingConfig support; as defined in 38.213 section 10.1 |
| >>BWP Indicator | O | Conditional presence on dedicated DL BWP Config; as defined in 38.213 section 12 |
| >>VRB to PRB Mapping | O | Conditional presence on RAT type and interleaved VRB-to-PRB mapping configuration.Physical resource block Bundling as defined in 38.214 section 5.1.2.3 |
| >>PRB bundling size indicator | O | Conditional presence on prb-BundlingType; as defined in 38.214 section 5.1.2.3 |
| >> Rate Matching Indicator | O | Conditional presence on rateMatchPatternGroup Config; as defined in 38.214 section 5.1.4.1 |
| >>ZP CSI-RS trigger | O | Conditional presence on zp-CSI-RS-Resource Config; as defined in 38.214 section 5.1.4.2 |
| >>DAI | O | Downlink Assignment Index as defined in as defined in 38.213 section 9.1.2 |
| >> TPC Command | M | PUCCH TPC as defined in 38.213 section 7.2.1 |
| >>PUCCH Resource Indicator | M | Resource for reporting HARQ-ACK as defined in 38.213 section 9.2.3 |
| >> PDSCH to HARQ Feedback Timing Indicator | O | Timing for reporting HARQ-ACK as defined in 38.213 section 9.2.3 |
| >> Transmission configuration indication | O | Conditional presence on tci-PresentInDCI Config as defined in 38.214 section 5.1.5 |
| >> SRS Request | M | Request for SRS Reporting as defined in 38.212 Table 7.3.1.1.2-24 |
| >>CBG transmission information | O | Conditional presence on Max CBG per TB config as defined in 38.214 section 5.1.7 |
| >>CBG flushing out information | O | Conditional presence on CBG Flush Indicator config as defined in 38.214 section 5.1.7 |
| >>DMRS sequence initialization | M | DM-RS sequence initialization field as defined in 38.211 section 7.4.1.1.1 |
| > **Format\_0\_0** | O | Conditional presence on the DCI Format type value |
| >>PUSCH Hopping | O | Conditional presence on Frequency Hopping offset Config; as defined in 38.214 section 6.3 |
| >>Frequency Hopping Flag | M | PUSCH Frequency Hopping as defined in 38.214 section 6.3 |
| >>TPC Command | M | PUSCH TPC value as defined in 38.213 section 7.1 |
| >>UL/SUL Indicator | O | Conditional Presence based on supplementaryUplink; as defined in 38.331 *ServingCellConfig* |
| > **Format\_0\_1** | O | Conditional presence on the DCI Format type value |
| >>Carrier Indicator | O | Conditional presence on Cross Carrier Scheduling Config support; as defined in 38.213 section 10.1 |
| >>UL/SUL Indicator | O | Conditional Presence based on supplementaryUplink; as defined in 38.331 *ServingCellConfig* |
| >>BWP Indicator | O | Conditional presence on dedicated UL BWP Config; as defined in 38.213 section 12 |
| >>PUSCH Hopping | O | Conditional presence for RAT1 on Frequency Hopping offset Config; as defined in 38.214 section 6.3 |
| >>Frequency Hopping Flag | O | Conditional presence for RAT1 as defined in 38.214 section 6.3 |
| >>TPC Command | M | PUSCH TPC value as defined in 38.213 section 7.1 |
| >>SRS Resource Indicator | O | Conditional presence on SRS Resource Config; as defined in 38.331 PUSCH-Config and 38.212 Table 7.3.1.1.2- 28 to 7.3.1.1.2-32 |
| >>Precoding Information and Number of Layers | O | Conditional presence on txConfig and antenna ports configuration; as defined in 38.331 PUSCH-Config and 38.212 Table 7.3.1.1.2- 2 to 7.3.1.1.2-5 |
| >> SRS Request | M | Request for SRS Reporting as defined in 38.212 Table 7.3.1.1.2-24 |
| >>CSI request | O | Conditional presence on report Trigger Size configuration as defined in 38.331 CSI-MeasConfig |
| >>CBG transmission information | O | Conditional presence on Max CBG per TB config as defined in 38.214 section 5.1.7 |
| >>Beta Offset Indicator | O | Conditional presence on betaOffsets configuration as defined in 38.213 |
| >>DMRS Sequence Initialization | O | Conditional presence on transform Precoding; as defined in 38.211 section 6.4.1.1.1 |
| >>UL SCH Indicator | M | UL SCH transmitted on PUSCH or not. |

</div>

### Downlink Broadcast Allocation

Scheduler provides DCI and DL data scheduling information for SSB and System Information Block1 and Other System Information for a given TTI for Broadcast Channel. MAC forms the SSB and SI payload.

Table - Downlink Broadcast Allocation

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Element** | **Presence** | **Description** |
| Cell Index | M | Identification of the Cell. 2-byte integer allocated by DU |
| Frame Number | M | Time indication. Frame Number where Broadcast data is scheduled |
| Slot Number | M | Time indication. Slot Number where Broadcast data is scheduled |
| SSB Index | M | Index of SSB corresponding to the Broadcast data; For SIB1 as defined in 38.213 section 13. For other SI as defined in 38.331 section 5.2.2.3.2 |
| DL DCI | O | Specifies the DL DCI Coreset and Search Space for Scheduling DCI for Broadcast data. |
| DL SCH | O | Specifies the DL PDSCH for Broadcast data. |
| >System information indicator | M | {0 - 1}. Specifies SIB1 or SI message; as defined in 38.212 Table 7.3.1.2.1-2 |
| >SI Content | M | Byte Array [MAX\_BYTES\_FOR\_SI]; this carries the ASN.1 encoded System Information Messages that Scheduler wants to transmit to the UE; as defined in 38.331 *SIB1* or *SystemInformation*. Maximum TB size is 2976 bytes as per 38.214 section 5.1.3.2 |
| SSB Information | O | Carries the SSB Information |
| >ssbSubcarrierOffset | M | kssb as per 38.211 |
| >ssbOffsetPointA | M | Offset of the lowest RB per 38.211 |

</div>

Table - DL DCI Information

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Element** | **Presence** | **Description** |
| DL DCI | M | Specifies the DL DCI Coreset and Search Space for Scheduling DCI for Broadcast data. |
| **>Frequency Domain Resources** | M | Frequency domain resources for the CORESET as defined in 38.211 section 7.3.2.2 |
| >duration | M | time duration of the CORESET in number of symbols as defined in 38.211 section 7.3.2.2 |
| >CCE REG Mapping type | M | {interleaved, nonInterleaved}. For SIB1 only interleaved mapping type is applicable as defined in 38.211 section 7.3.2.2 |
| **>>interleaved** | O | Conditional presence on the CCE REG Mapping type value |
| >>> reg Bundle Size | M | {2, 3, 6}. Size of REG Bundles as defined in 38.211 section 7.3.2.2 |
| >>>interleaver Size | M | {2, 3, 6}. Interleaver Size as defined in 38.211 section 7.3.2.2 |
| >>>shift Index | M | shiftIndex or Physical Cell Id as defined in 38.211 section 7.3.2.2 |
| >Search Space Start Symbol | M | monitoringSymbolsWithinSlot. For SIB1 as defined in 38.213 section 13. For other SI as defined in 38.213 section 10.1. |
| > CCE Index | M | First CCE index in the aggregation level as defined in 38.211 section 7.3.2.2 |
| >Aggregation Level | M | {4,8,16}. as defined in 38.213 Table 10.1-1 |
| > Precoder Granularity | M | {sameAsRegBundle, allContigousRBs} as defined in 38.211 section 7.3.2.2 |
| >pdcch Power Offset | M | -8 to 8 dB in 1dB steps. SSB/PBCH EPRE to PDCCH and PDCCH DMRS EPRE; as defined in 38.213 section 4.1 |

</div>

Table - DL SCH Information

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Element** | **Presence** | **Description** |
| DL SCH | O | Conditional presence on Short Message Indicator value. Present in case Short Message Indicator is 1 or 3; as defined in 38.212 Table 7.3.1.2.1-1 |
| **>Frequency Domain Allocation** | M | RAT1 Frequency Domain resource assignment; as defined in 38.214 section 5.1.2.2.2 |
| >>Start RB | M | Starting Resource Block for the allocation |
| >>Number of RBs | M | Number of allocated Resource Blocks |
| **>Time Domain Allocation** | M | Specifies the time domain allocation for this transmission; as defined in 38.214 section 5.1.2.1 |
| >>Mapping Type | M | {typeA, typeB} |
| >>Start Symbol Index | M | Specifies the index of the starting symbol of the allocation  {0...13} |
| >>Number of Symbols | M | Specifies the number of contiguous symbols allocated for this transmission  {1...14} |
| **>DMRS Config** | M | Specifies downlink demodulation reference signals for PDSCH; as defined in 38.214 section 5.1.6.2 |
| >>DMRS Type | M | DMRS type to be used for DL |
| >>DMRS Additional Pos | M | Position for additional DM-RS in DL |
| >>Max Length | M | The maximum number of OFDM symbols for DL front loaded DMRS |
| >VRB-to-PRB mapping | M | Specifies Non-Interleaved or Interleaved VRB-to-PRB mapping; as defined in 38.214 section 5.1.2.3. |
| *>TB* | M | Transport Block as defined in 38.214 section 5.1.3. |
| >>MCS | M | {0...9} |
| >>TB Size | M | Transport Block Size in Bytes |
| >TB Scaling | M | Scaling factor {0 - 2} as defined in 38.214 section 5.1.3.2. |

</div>

### Downlink Paging Allocation

Scheduler provides DCI and optionally DL data scheduling information for Paging Message for given TTI for Paging Channel.

Table - Downlink Paging Allocation

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Element** | **Presence** | **Description** |
| Cell Index | M | Identification of the Cell. 2-byte integer allocated by DU |
| Frame Number | M | Time indication. Frame Number where Paging data is scheduled |
| Slot Number | M | Time indication. Slot Number where Paging data is scheduled |
| SSB Index | M | Index of SSB corresponding to the Paging data; as defined in 38.304 section 7.1 |
| Short Message Indicator | M | {0-3}; as defined in 38.212 Table 7.3.1.2.1-1: Short Message indicator |
| Short Message | O | 8 bits; as defined in 38.331 section 6.5. Conditional presence on Short Message Indicator value |
| DL DCI | M | Specifies the DL DCI Coreset and Search Space for Scheduling DCI for Paging data. |
| >Frequency Domain Resources | M | Frequency domain resources for the CORESET as defined in 38.211 section 7.3.2.2 |
| >Duration | M | time duration of the CORESET in number of symbols as defined in 38.211 section 7.3.2.2 |
| **>CCE REG Mapping type** | M | {interleaved, nonInterleaved}; as defined in 38.211 section 7.3.2.2 |
| >>interleaved | O | Conditional presence on the CCE REG Mapping type value |
| >>> reg Bundle Size | M | {2, 3, 6}. Size of REG Bundles as defined in 38.211 section 7.3.2.2 |
| >>>interleaver Size | M | {2, 3, 6}. Interleaver Size as defined in 38.211 section 7.3.2.2 |
| >>>shift Index | M | shiftIndex or Physical Cell Id as defined in 38.211 section 7.3.2.2 |
| >Search Space Start Symbol | M | monitoringSymbolsWithinSlot as defined in 38.213 section 10.1. |
| > CCE Index | M | First CCE index in the aggregation level as defined in 38.211 section 7.3.2.2 |
| >Aggregation Level | M | {4,8,16}. as defined in 38.213 Table 10.1-1 |
| > Precoder Granularity | M | {sameAsRegBundle, allContigousRBs} as defined in 38.211 section 7.3.2.2 |
| >PDCCH Power Offset | M | -8 to 8 dB in 1dB steps. SSB/PBCH EPRE to PDCCH and PDCCH DMRS EPRE; as defined in 38.213 section 4.1 |
| DL SCH | O | Conditional presence on Short Message Indicator value. Present in case Short Message Indicator is 1 or 3; as defined in 38.212 Table 7.3.1.2.1-1 |
| **>Frequency Domain Allocation** | M | RAT1 Frequency Domain resource assignment; as defined in 38.214 section 5.1.2.2.2 |
| >>Start RB | M | Starting Resource Block for the allocation |
| >>Number of RBs | M | Number of allocated Resource Blocks |
| **>Time Domain Allocation** | M | Specifies the time domain allocation for this transmission; as defined in 38.214 section 5.1.2.1 |
| >>Mapping Type | M | {typeA, typeB} |
| >>Start Symbol Index | M | Specifies the index of the starting symbol of the allocation  {0...13} |
| >>Number of Symbols | M | Specifies the number of contiguous symbols allocated for this transmission  {1...14} |
| **>DMRS Config** | M | Specifies downlink demodulation reference signals for PDSCH; as defined in 38.214 section 5.1.6.2 |
| >>DMRS Type | M | DMRS type to be used for DL |
| >>DMRS Additional Pos | M | Position for additional DM-RS in DL |
| >>Max Length | M | The maximum number of OFDM symbols for DL front loaded DMRS |
| >VRB-to-PRB mapping | M | Specifies Non-Interleaved or Interleaved VRB-to-PRB mapping; as defined in 38.214 section 5.1.2.3. |
| *>TB* | M | Transport Block as defined in 38.214 section 5.1.3. |
| >>MCS | M | {0...9} |
| >>TB Size | M | Transport Block Size in Bytes |
| >TB Scaling | M | Scaling factor {0 - 2} as defined in 38.214 section 5.1.3.2. |
| >Paging Content | M | Byte Array [MAX\_BYTES\_FOR\_PAGING]; this carries the ASN.1 encoded Paging Messages that Scheduler wants to transmit to the UE's as defined in 38.331 *Paging* |

</div>

### Downlink HARQ Release

Scheduler informs MAC to release the HARQ process when HARQ feedback is failure and max transmission Per Haq has reached.

Table - Downlink HARQ Release

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| ***Element*** | **Presence** | **Description** |
| Cell Index | M | Identification of the Cell. 2-byte integer allocated by DU |
| Num of UEs | M | Number of UEs whose Harq processes must be released |
| **Ue HarqInfo** |  |  |
| > CRNTI | M | UE Identifier |
| > Harq Process ID | M |  |

</div>

### F1AP handler - MAC Interface

The following section captures the interface APIs between F1AP handler and MAC:

Table - F1AP handler -MAC Cell Specific API

Note: Cell State Manager in the F1AP module interfacing with MAC

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Direction** | **Message/API** | **Description** |
| F1AP handler to MAC | Cell Start | This API is used to start the Cell at MAC, i.e., to start broadcasting the system information. MAC starts the cell at L1 before sending the confirmation to the F1AP handler. |
| F1AP handler to MAC | Cell Stop | This API is used to stop the broadcast at MAC, i.e., to stop broadcasting the system information. MAC stops the cell at L1 before sending the confirmation to the F1AP handler. MAC may also delete the cell configuration at SCH in which case it needs to configure the SCH with stored cell configuration before the start of the cell. |

</div>

Table - F1AP handler -MAC UE Specific API

Note: UE State Manager in the F1AP module interfacing with MAC will be the module interacting with MAC for the following APIs.

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Direction** | **Message/API** | **Description** |
| F1AP handler to MAC | UE Create Request | This API adds the UE information, such as, BWP, channel information, etc, at MAC. |
| MAC to F1AP handler | UE Create Response | This API is used to acknowledge the status of the UE Create Request. |
| F1AP handler to MAC | UE Reconfiguration Request | This API is used to reconfigure the UE information, such as, BWP, channel information, etc, at MAC. MAC returns an error if the UE has not been already added at MAC. |
| MAC to F1AP handler | UE Reconfiguration Response | This API is used to acknowledge the status of the UE Reconfiguration Response. |
| F1AP handler to MAC | UE Delete Request | This API is used to delete the dedicated UE information at MAC |
| MAC to F1AP handler | UE Delete Response | This API is used to acknowledge the status of the UE Delete Request. |
| F1AP handler to MAC | RACH Resource Request | This API is used to get the CRNTI, preamble information from MAC for Contention Free Random Access |
| F1AP handler to MAC | RACH Resource Release | This API is used to release the Contention Free RACH Resources at MAC |
| F1AP handler to MAC | UE Reset Request | This API is used to reset the UE associated dynamic information (eg: HARQ processes) and release the UL Control channels (PUCCH, SRS) at MAC. MAC may use invoke the API at SCH to release the UE associated resources, as above, at the SCH. |
| MAC to F1AP handler | UE Reset Response | This API is used to ack the UE context reset. |
| MAC to F1AP handler | UE Sync Status Indication | This API is sent from MAC to F1AP to inform the sync status of UE at MAC. |

</div>

Table - F1AP handler -MAC Channels Specific API

Note: UE State Manager in the F1AP module interfacing with MAC

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Direction** | **Message/API** | **Description** |
| MAC to F1AP handler | UL CCCH Indication | This API is sent from MAC to F1AP to pass the UL CCCH message received from UE. Cell id where CCCH message is received is sent to F1AP. This API is required for SA mode only |
| F1AP handler to MAC | DL CCCH Indication | This API is sent from F1AP to MAC to send the DL CCCH message to UE with Cell id on which the message is to be transmitted. This API is required for SA mode only. |
| F1AP handler to MAC | DL PCCH Indication | This API is sent from F1AP to MAC to broadcast the DL PCCH message in the cell. This API is required for SA mode only. |
| F1AP handler to MAC | DL Broadcast Request | This API is sent from F1AP to MAC the SIB messages in the cell. |

</div>

The detailed description of the APIs is below:

### Cell Start

Table - F1AP handler -MAC Cell Start message contents

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Element** | **Presence** | **Description** |
| Cell Index | M | Identification of the Cell |
| Frame Number | O | Start time |
| Slot Number | O | Start time |

</div>

### Cell Stop

Table - F1AP handler -MAC Cell Stop message contents

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Element** | **Presence** | **Description** |
| Cell Index | M | Identification of the Cell |
| Frame Number | O | Stop time |
| Slot Number | O | Stop time |

</div>

### Cell Delete Request

DUAPP send this to MAC to delete a cell, this API is invoked.

Table - Cell Start Delete Request

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Element** | **Presence** | **Description** |
| Debug Time Info | O | This is an optional IE and may be provided on availability |
| Cell Index | M | Identification of the Cell. 2-byte integer allocated by DU |

</div>

### Cell Delete Response

This API is invoked by scheduler to respond to a Cell Deletion request.

Table - Cell Delete Response

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Element** | **Presence** | **Description** |
| Cell Index | M | Identification of the Cell. 2-byte integer allocated by DU |
| Response | M | Response that maybe used to identify failure/success  OK - Success  NOK - Failure |
| Error Cause | O | If Response == NOK  This field describes the cause of the failure.  Value: ENUM  {SUCCESSFUL, CELLID\_INVALID, UEID\_INVALID, RESOURCE\_UNAVAILABLE |

</div>

### Slice Configuration Request

Slice Configuration Request is sent to configure the MAC/Scheduler with the rRMPolicyRatio for each of the slices supported in the cell.

Table - Slice Configuration Request

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Element** | **Presence** | **Description** |
| RRMPolicyList |  | List of RRM policies received from O1. |
| ResourceType |  | For ODU, only PRB will be relevant resource to apply RRM policy on.  Value: PRB, DRB, RRC\_CONNECTED\_USERS. |
| **RRMPolicyMemberList** |  | This defines the list of S-NSSAIs and PLMN belonging to the cell. This is to be included if network slicing is supported. |
| > S-NSSAI | M | Identification of the slice. |
| >PLMN | M |  |
| RRMPolicyRatio | M | rRMPolicy for the slice if network slicing feature is supported. This policy is for the resource type "PRB" and applicable to gNB-DU. The other resource type " DRB" and "RRCConnected" are applicable to gNB-CU. |
| >> rRMPolicyMaxRatio | uint8\_t | This attribute specifies the maximum percentage of radio resource that can be used by the associated rRMPolicyMemberList/SNSSAI. The maximum percentage of radio resource include at least one of the shared resources, prioritized resources and dedicated resources. The sum of the rRMPolicyMaxRatio values assigned to all slices can be greater than 100. |
| >> rRMPolicyMinRatio | uint8\_t | This attribute specifies the minimum percentage of radio resources that can be used by the associated rRMPolicyMemberList/sNSSAI. The minimum percentage of radio resources including at least one of prioritized resources and dedicated resources. The sum of the rRMPolicyMinRatio values assigned to all slices be less than or equal to100. |
| >> rRMPolicyDedicatedRatio | uint8\_t | This attribute specifies the percentage of radio resource that dedicatedly used by the associated rRMPolicyMemberList/sNSSAI. The sum of the rRMPolicyDeidctaedRatio values assigned to all slices be less than or equal to100. |

</div>

### Slice Configuration Response

This Status is sent for each SNSSAI whether the policy sent via Slice Configuration Request has been applied or not.

Table - Slice Configuration Response

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Element** | **Presence** | **Description** |
| SNSSAI |  |  |
| Status | M | Value: OK, FAILURE |
| Cause | M | Value: Cell\_id, ueId\_value, Resource\_unavilable, Slice\_not\_found. |

</div>

### Slice ReConfiguration Request

Slice Configuration Request is sent to configure the MAC/Scheduler with the rRMPolicyRatio for each of the slices supported in the cell.

Table - Slice Reconfiguration Request

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Element** | **Presence** | **Description** |
| RRMPolicyList |  | List of RRM policies received from O1. |
| ResouceType |  | For ODU, only PRB will be relevant resource to apply RRM policy on.  Value: PRB, DRB, RRC\_CONNECTED\_USERS. |
| **RRMPolicyMemberList** |  | This defines the list of S-NSSAIs and PLMN belonging to the cell. This is to be included if network slicing is supported. |
| > S-NSSAI | M | Identification of the slice. |
| >PLMN | M |  |
| RRMPolicyRatio | M | rRMPolicy for the slice if network slicing feature is supported. This policy is for the resource type "PRB" and applicable to gNB-DU. The other resource type " DRB" and "RRCConnected" are applicable to gNB-CU. |
| >> rRMPolicyMaxRatio | uint8\_t | This attribute specifies the maximum percentage of radio resource that can be used by the associated rRMPolicyMemberList/SNSSAI. The maximum percentage of radio resource include at least one of the shared resources, prioritized resources and dedicated resources. The sum of the rRMPolicyMaxRatio values assigned to all slices can be greater than 100. |
| >> rRMPolicyMinRatio | uint8\_t | This attribute specifies the minimum percentage of radio resources that can be used by the associated rRMPolicyMemberList/sNSSAI. The minimum percentage of radio resources including at least one of prioritized resources and dedicated resources. The sum of the rRMPolicyMinRatio values assigned to all slices be less than or equal to100. |
| >> rRMPolicyDedicatedRatio | uint8\_t | This attribute specifies the percentage of radio resource that dedicatedly used by the associated rRMPolicyMemberList/sNSSAI. The sum of the rRMPolicyDeidctaedRatio values assigned to all slices be less than or equal to100. |

</div>

### Slice ReConfiguration Response

This Status is sent for each SNSSAI whether the policy sent via Slice ReConfiguration Request has been applied or not.

Table - Slice Reconfiguration Response

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Element** | **Presence** | **Description** |
| **SNSSAI** |  |  |
| **Status** | M | Value: OK, FAILURE |
| **Cause** | M | Value: Cell\_id, ueId\_value, Resource\_unavilable, Slice\_not\_found. |

</div>

### UE Create Request

Table - F1AP handler - MAC UE Create Request message contents

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Element** | **Presence** | **Description** |
| Debug Time Info | O | This is an optional IE and may be provided on availability |
| Cell Index | M | Identification of the Cell. 2-byte integer allocated by F1AP |
| UE Index | M | Identification of the UE. 2-byte integer allocated by F1AP |
| CRNTI | M | See TS 38.331 RNTI-Value. Allocated by MAC.  CRNTI is included only in case of SA |
| mac-CellGroupConfig (schedulingRequestConfig, tag-Config, phr-Config,bsr-config, drx-config) | M | See TS 38.331 MAC-*CellGroupConfig* |
| physicalCellGroupConfig (pdsch-HARQ-ACK-Codebook, p-NR-FR1) | M | See TS 38.331 *PhysicalCellGroupConfig* |
| **spCellConfig** | M | See TS 38.331 *SpCellConfig* |
| >servCellIndex | M | See TS 38.331 *ServCellIndex* |
| **>ServingCellConfigInfo** | M | See TS 38.331 *ServingCellConfig* |
| >>initialDownlinkBWP (pdcch-Config, pdsch-Config) | M | See TS 38.331 *BWP-DownlinkDedicated* in *ServingCellConfig*. |
| >>Number of DL BWP To Add | M | The number of dedicated DL BWP To Add |
| >>DownlinkBWP-ToAddModList (bwp-Id, bwp-Common, bwp-Dedicated) | M | See TS 38.331 BWP-Downlink in *ServingCellConfig* |
| >>firstActiveDownlinkBWP-Id | M | See TS 38.331 *ServingCellConfig* |
| >>defaultDownlinkBWP-Id | M | See TS 38.331 *ServingCellConfig* |
| >>bwp-InactivityTimer | M | See TS 38.331 *ServingCellConfig* |
| >>PDSCH-ServingCellConfig (maxMIMO-Layers, nrofHARQ-ProcessesForPDSCH, codeBlockGroupTransmission, xOverhead) | M | See TS 38.331 PDSCH-ServingCellConfig in ServingCellConfig |
| >>initialUplinkBWP (pucch-Config, pusch-Config) | M | See TS 38.331 BWP-UplinkDedicated in ServingCellConfig |
| >>Number of UL BWP To Add | M | The number of UL BWP To Add |
| >>uplinkBWP-ToAddModList (bwp-Id, bwp-Common, bwp-Dedicated) | M | See TS 38.331 BWP-Uplink in ServingCellConfig |
| >>firstActiveUplinkBWP-Id | M | See TS 38.331 ServingCellConfig |
| UE Aggregate Maximum Bit Rate Uplink | M | See TS 38.473 gNB-DU UE Aggregate Maximum Bit Rate Uplink |
| dlModInfo  {modOrder,  mcsIndex , mcsTable} | M |  |
| ulModInfo  {modOrder,  mcsIndex,  mcsTable} | M |  |
| Number of LC To Add | M | The number of Logical Channel To Add |
| >logicalChannelIdentity | M | See TS 38.331 logicalChannelIdentity |
| >Qos(5Qi , GBR Qos Info, NG-RAN Allocation and Retention Priority, GBR QoS Flow Information, PDU Session ID, UL PDU Session Aggregate Maximum Bit Rate) | M | See TS 38.473 DRB QoS in UE CONTEXT MODIFICATION REQUEST |
| >S-NSSAI | M | See TS 38.473 UE Context Create/Modification Request: DRB Information |
| >DL LogicalChannelConfig (Lc priority) | M | See TS 38.321 Logical channel priority |
| >UL LogicalChannelConfig (priority, logicalChannelGroup, schedulingRequestID, prioritisedBitRate, bucketSizeDuration) | M | See 38.331 LogicalChannelConfig |

</div>

### UE Create Response

Table - F1AP handler - MAC UE Create Response message contents

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Element** | **Presence** | **Description** |
| Debug Time Info | O | This is an optional IE and may be provided on availability |
| Cell Index | M | Identification of the Cell |
| UE index | M | Identification of the UE |
| Result | M | * Failure - if API parsing error or semantic error (e.g. incorrect state or invalid CRNTI, Cell Index) or even a single Radio Bearer (SRB/DRB) fails to be established * Success - in all the other cases |
| SRB failed to setup list | M | See TS 38.473 SRB Failed to Setup List in UE CONTEXT SETUP RESPONSE |
| DRB failed to setup list | M | See TS 38.473 DRB Failed to Setup List in UE CONTEXT SETUP RESPONSE |
| Scell failed to setup list | M | See TS 38.473 SCell Failed To Setup List in UE CONTEXT SETUP RESPONSE |

</div>

### UE Reconfiguration Request

Table - F1AP handler - MAC UE Reconfiguration Request message contents

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Element** | **Presence** | **Description** |
| Debug Time Info | O | This is an optional IE and may be provided on availability |
| Cell Index | M | Identification of the Cell |
| UE index | M | Identification of the UE |
| CRNTI | M | See TS 38.331 RNTI-Value  CRNTI is included only in case of reestablishment procedure in SA |
| mac-CellGroup-Reconfig (schedulingRequest-Reconfig, tag-Reconfig, ,bsr-config,drx-config) | M | See TS 38.331 MAC-CellGroupConfig |
| physicalCellGroup-Reconfig (pdsch-HARQ-ACK-Codebook, p-NR-FR1) | M | See TS 38.331 PhysicalCellGroupConfig |
| spCell-Reconfig | M | See TS 38.331 SpCellConfig |
| >servCellIndex | M | See TS 38.331 ServCellIndex |
| >ServingCell-ReconfigInfo | M | See TS 38.331 ServingCellConfig |
| >initialDownlinkBWP-Reconfig (pdcch-Config, pdsch-Config) | M | See TS 38.331 BWP-DownlinkDedicated in ServingCellConfig |
| >> radioLinkMonitoringConfig | M | *RadioLinkMonitoringConfig* is used to configure radio link monitoring for detection of beam- and/or cell radio link failure. See also TS 38.321 [3], clause 5.1.1 |
| >Number of DL BWP To Add or Modify | M | The number of dedicated DL BWP To Add or Modify |
| >DownlinkBWP-ToAddModList (bwp-Id, bwp-Common, bwp-Dedicated) | M | See TS 38.331 BWP-Downlink in ServingCellConfig |
| >Number of DL BWP To Release | M | The number of dedicated DL BWP To remove |
| >DownlinkBWP-ToReleaseList (bwp-Id) | M | See TS 38.331 downlinkBWP-ToReleaseList in ServingCellConfig |
| >firstActiveDownlinkBWP-Id | M | See TS 38.331 ServingCellConfig |
| >DefaultDownlinkBWP-Id | M | See TS 38.331 ServingCellConfig |
| >bwp-InactivityTimer | M | See TS 38.331 ServingCellConfig |
| >PDSCH-ServingCell-Reconfig (maxMIMO-Layers, nrofHARQ-ProcessesForPDSCH, codeBlockGroupTransmission, xOverhead) | M | See TS 38.331 PDSCH-ServingCellConfig |
| >InitialUplinkBWP-Reconfig (pucch-Config, pusch-Config) | M | See TS 38.331 BWP-UplinkDedicated in ServingCellConfig |
| >>beamFailureRecoveryConfig | M | The IE *BeamFailureRecoveryConfig* is used to configure the UE with RACH resources and candidate beams for beam failure recovery in case of beam failure detection. See also TS 38.321 [3], clause 5.1.1 |
| >Number of UL BWP To Add or Modify | M | The number of dedicated UL BWP To Add or Modify |
| >UplinkBWP-ToAddModList (bwp-Id, bwp-Common, bwp-Dedicated) | M | See TS 38.331 BWP-Uplink in ServingCellConfig |
| >Number of UL BWP To Release | M | The number of dedicated UL BWP To remove |
| >uplinkBWP-ToReleaseList (bwp-Id) | M | See TS 38.331 uplinkBWP-ToReleaseList in ServingCellConfig |
| >firstActiveUplinkBWP-Id | M | See TS 38.331 ServingCellConfig |
| UE Aggregate Maximum Bit Rate Uplink | M | See TS 38.473 gNB-DU UE Aggregate Maximum Bit Rate Uplink |
| dlModInfo  {modOrder,  mcsIndex ,  mcsTable} | M |  |
| ulModInfo  {modOrder,  mcsIndex,  mcsTable} | M |  |
| Number of LC To Add | M | The number of Logical Channel to Add |
| >logicalChannelIdentity | M | See TS 38.331 logicalChannelIdentity |
| >Qos(5Qi , GBR Qos Info, NG-RAN Allocation and Retention Priority, GBR QoS Flow Information, PDU Session ID, UL PDU Session Aggregate Maximum Bit Rate) | M | See TS 38.473 DRB QoS in UE CONTEXT MODIFICATION REQUEST |
| >S-NSSAI | M | See TS 38.473 S-NSSAI in UE CONTEXT MODIFICATION REQUEST |
| >DL LogicalChannelConfig (Lc priority) | M | See TS 38.321 Logical channel priority |
| >UL LogicalChannelConfig (priority, logicalChannelGroup, schedulingRequestID, prioritisedBitRate, bucketSizeDuration) | M | See 38.331 LogicalChannelConfig |
| **Number of LC To Delete** | M | The number of Logical Channel to Delete |
| >logicalChannelIdentity | M | See TS 38.331 logicalChannelIdentity |
| **Number of LC To Modified** | M | The number of Logical Channel To Modified |
| >Logical Channel Identity | M | See TS 38.331 logicalChannelIdentity |
| >Qos(5Qi , GBR Qos Info, NG-RAN Allocation and Retention Priority, GBR QoS Flow Information, PDU Session ID, UL PDU Session Aggregate Maximum Bit Rate) | M | See TS 38.473 DRB QoS in UE CONTEXT MODIFICATION REQUEST |
| >S-NSSAI | M | See TS 38.473 S-NSSAI in UE CONTEXT MODIFICATION REQUEST |
| >DL LogicalChannelConfig (Lc priority) | M | See TS 38.321 Logical channel priority |
| >UL LogicalChannelConfig (priority, logicalChannelGroup, schedulingRequestID, prioritisedBitRate, bucketSizeDuration) | M | See 38.331 LogicalChannelConfig |

</div>

### UE Reconfiguration Response

Table - F1AP handler - MAC UE Reconfiguration Response message contents

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Element** | **Presence** | **Description** |
| Debug Time Info | O | This is an optional IE and may be provided on availability |
| Cell Index | M | Identification of the Cell |
| UE Index | M | Identification of the UE |
| Result | M | * Failure - if API parsing error or semantic error (e.g. invalid UE Index, Cell Index) or none of the requested reconfigurations / modifications could be applied * Success - in all the other cases |
| SRB failed to setup list | M | See TS 38.473 SRB Failed to Setup List in UE CONTEXT MODIFICATION RESPONSE |
| DRB failed to setup list | M | See TS 38.473 DRB Failed to Setup List in UE CONTEXT MODIFICATION RESPONSE |
| Scell failed to setup list | M | See TS 38.473 SCell Failed To Setup List in UE CONTEXT MODIFICATION RESPONSE |
| DRB Failed to Modify List | M | See TS 38.473 DRB Failed to be Modified List in UE CONTEXT MODIFICATION RESPONSE |

</div>

### UE Delete Request

Table - F1AP handler - MAC UE Delete Request message contents

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Element** | **Presence** | **Description** |
| Debug Time Info | O | This is an optional IE and may be provided on availability |
| Cell Index | M | Identification of the Cell |
| UE Index | M | Identification of the UE  is present if UE has been previously successfully created at MAC. |
| CRNTI | M | Identification of the UE.  CRNTI presence is optional.  CRNTI is present if UE is being deleted without UE have been created previously at MAC. |

</div>

### UE Delete Response

Table - F1AP handler - MAC UE Delete Response message contents

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Element** | **Presence** | **Description** |
| Debug Time Info | O | This is an optional IE and may be provided on availability |
| Cell Index | M | Identification of the Cell |
| UE Index | M | Identification of the UE |
| Status | M | * Failure - Invalid Cell Index or UE Index * Success - in all the other cases |

</div>

### RACH Resource Request

Table - F1AP handler - MAC RACH Resource Request message contents

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Element** | **Presence** | **Description** |
| Debug Time Info | O | This is an optional IE and may be provided on availability |
| Cell Index | M | Identification of the Cell |
| UE Index | M | Identification of the UE |
| Number of SSB | M | The number of ssb for which CFRA resource allocation is requested. |
| * ssb | M | See TS 38.331 SSB-Index |

</div>

### RACH Resource Response

Table - F1AP handler - MAC RACH Resource Response message contents

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Element** | **Presence** | **Description** |
| Debug Time Info | O | This is an optional IE and may be provided on availability |
| Cell Index | M | Identification of the Cell |
| UE Index | M | Identification of the UE |
| Result | M | * Failure - if API parsing error or semantic error (e.g. invalid Cell Index) or unable to allocate any CFRA Resource on any of the SSB * Success - in all the other cases |
| newUE-Identity | M | See TS 38.331 newUE-Identity |
| CFRA-SSB-Resource | M | See TS 38.331 CFRA-SSB-Resource |

</div>

### RACH Resource Release

Table - F1AP handler - MAC RACH Resource Release message contents

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Element** | **Presence** | **Description** |
| Debug Time Info | O | This is an optional IE and may be provided on availability |
| Cell Index | M | Identification of the Cell |
| UE Index | M | Identification of the UE  is present if UE has been previously successfully created at MAC. |
| CRNTI | M | Identification of the UE.  CRNTI presence is optional.  CRNTI is present if UE is being deleted without UE have been created previously at MAC. |

</div>

### UE Reset Request

Table - F1AP handler - MAC UE Reset Request message contents

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Element** | **Presence** | **Description** |
| Debug Time Info | O | This is an optional IE and may be provided on availability |
| Cell Index | M | Identification of the Cell |
| UE Index | M | Identification of the UE |

</div>

### UE Reset Response

Table - F1AP handler - MAC UE Reset Response message contents

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Element** | **Presence** | **Description** |
| Debug Time Info | O | This is an optional IE and may be provided on availability |
| Cell Index | M | Identification of the Cell |
| UE Index | M | Identification of the UE |
| Status | M | * Failure - if API parsing error or semantic error (e.g. invalid UE Index, Cell Index) * Success - in all the other cases |

</div>

### UE Sync Status Indication

Table - F1AP handler - MAC UE Sync Status message contents

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Element** | **Presence** | **Description** |
| Debug Time Info | O | This is an optional IE and may be provided on availability |
| Cell Index | M | Identification of the Cell |
| UE Index | M | Identification of the UE |
| Sync Status | M | * The sync status is 'inSync', 'OutOfSync' and OutOfSyncMaxRetriess |

</div>

### UL CCCH Indication

Table - F1AP handler - MAC UL CCCH Indication message contents

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Element** | **Presence** | **Description** |
| Debug Time Info | O | This is an optional IE and may be provided on availability |
| Cell Index | M | Identification of the Cell |
| CRNTI | M | See TS 38.331 RNTI-Value |
| UL-CCCH-Message | M | See TS 38.331 UL-CCCH-Message |

</div>

### DL CCCH Indication

Table - F1AP handler - MAC DL CCCH Indication message contents

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Element** | **Presence** | **Description** |
| Debug Time Info | O | This is an optional IE and may be provided on availability |
| Cell Index | M | Identification of the Cell |
| CRNTI | M | See TS 38.331 RNTI-Value |
| Message Type | M | See TS 38.331 DL-CCCH-Message Type |
| DL-CCCH-Message | M | See TS 38.331 DL-CCCH-Message |

</div>

### DL PCCH Indication

Table - F1AP handler - MAC DL CCCH Indication message contents

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Element** | **Presence** | **Description** |
| Debug Time Info | O | This is an optional IE and may be provided on availability |
| Cell Index | M | Identification of the Cell |
| Paging Frame | M | See TS 38.304 PF |
| Paging Occasion | M | See TS 38.304 PO |
| Short-Message | M | See TS 38.331 Short Message |
| PCCH-Message | M | See TS 38.331 PCCH-Message |

</div>

### DL Broadcast Request

Table - F1AP handler - MAC DL Broadcast Request message contents

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Element** | **Presence** | **Description** |
| Debug Time Info | O | This is an optional IE and may be provided on availability |
| Cell Index | M | Identification of the Cell |
| Number of SI blocks | M | The number of SI |
| SI Message (SI type, scheduling Info and Data) | M | See TS 38.331 *SI-SchedulingInfo* |

</div>

### F1AP Handler - RLC Interface

The following section captures the interface APIs between F1AP and RLC:

Table - F1AP handler - RLC Specific APIs

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Direction** | **Message/API** | **Description** |
| F1AP handler to RLC | UE Create | This API is used to add the UE associated RLC entity and related information (e.g.: sn field length, t reassembly timer etc.). Refer to subclause 8.3 in 3GPP TS 38.473 for details of related F1 procedure [18].  Note: One or more RLC entities of the UE may be created in the same API. |
| RLC to F1AP Handler | UE Create Response | This API is used to ack for the UE context creation. |
| F1AP handler to RLC | UE Reconfiguration | This API is used to reconfigure the UE associated RLC entity previously added at RLC. Refer to subclause 8.3 in 3GPP TS 38.473 for details of related F1 procedure [18].  Note: One or more RLC entities of the UE may be re-configured in the same API. |
| RLC to F1AP Handler | UE Reconfiguration Response | This API is used to ack for the UE context reconfiguration. |
| F1AP handler to RLC | UE Delete Request | This API is used to delete the UE and associated RLC entities at RLC. Refer to subclause 8.3 in 3GPP TS 38.473 for details of related F1 procedure [18].  Note: One or more RLC entities of the UE may be deleted in the same API. |
| RLC to F1AP Handler | UE Delete Response | This API is used to ack for the UE context deletion. |
| F1AP handler to RLC | UE RLC Re-establish Request | This API is used to re-establish all the RLC entities associated with the UE. Refer to subclause 8.3 in 3GPP TS 38.473 for details of related F1 procedure [18]. |
| RLC to F1AP Handler | UE RLC Re-establish Response | This API is used to ack for the RLC reestablishment with the UE . |
| F1AP handler (UE State Manager) | DL RRC Message Transfer | This API is used to request RLC to deliver RRC message from CU (RRC) to the UE. |
| F1AP handler (UE State Manager) | UL RRC Message Transfer | This API is used to deliver RRC message from UE to the CU (RRC) |
| RLC to F1AP Handler (UE State Manager) | RLC Max Retransmission Reached | This API is used to inform the higher layers once maximum number of Retransmissions are hit. |
| RLC to F1AP Handler (UE State Manager) | RRC Message Delivery Report | This API is used by RLC to inform higher layers on successful/failed delivery of a DL RRC Message |

</div>

The detailed description of APIs is below.

### UE Create

Please note that UL configuration below applies to the DL AM/UM entity locally on the O-DU. Correspondingly DL Configuration below applies to UL AM/UM entity locally on the O-DU.

Table - F1AP handler - RLC UE Create message contents

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Element** | **Presence** | **Description** |
| Cell Index | M | Identification of the Cell. 2-byte integer allocated by F1AP |
| UE Index | M | Identification of the UE. 2-byte integer allocated by F1AP |
| **Number of LCs to be Setup** | M | Number of LC to be added as part of UE Creation |
| >logicalChannelIdentity | M | {1...32} SRB/DRB logical channel identity |
| >S-NSSAI | M | See TS 38.473 S-NSSAI in UE CONTEXT SETUP/MODIFICATION REQUEST |
| >RlcMode | M | Mode of operation of this logical channel  {RLC-AM, RLC-UM-Bidirectional, RLC-UM-Unidirectional-UL, RLC-UM-Unidirectional-DL, ...)  Range is same as defined in 38.331 |
| **> AM Bearer Config** | O (if AM) | Present if the RLC Mode is AM |
| **>> UL AM Config** | M |  |
| >>> snFieldLength | M | {size12, size18}  Range is same as defined in 38.331 |
| >>> t-PollRetransmit | M | Range same as 38.331 defined range for T-PollRetransmit |
| >>> pollPDU | M | Range same as defined in 38.331 range for PollPDU |
| >>> pollByte | M | Range same as defined in 38.331 range for PollByte |
| >>> maxRetxThreshold | M | Range same as defined in 38.331 range for maxRetxThreshold  {t1, t2, t3, t4, t6, t8, t16, t32} |
| **>> DL AM Config** | M |  |
| >>> snFieldLength | M | Range same as defined in 38.331 range for SN-FieldLengthAM |
| >>> t-Reassembly | M | Range same as defined in 38.331 range for T-Reassembly |
| >>> t-statusProhibit | M | Range same as defined in 38.331 range for T-StatusProhibit |
| **>UM-Bi-DirectionalConfig** | O | Present if RLC Mode = RLC-UM-Bidirectional |
| **>> UL-UM-Config** | M |  |
| >>> snFieldLength | M | Range same as defined in 38.331 range for SN-FieldLengthUM |
| **>> DL-UM-Config** | M |  |
| >>> snFieldLength | M | Range same as defined in 38.331 range for SN-FieldLengthUM |
| >>> t-Reassembly | M | Range same as defined in 38.331 range for T-Reassembly |
| **>UM-Uni-DirectionalConfig-UL** | O | Present if RLC-Mode = RLC-UM-Unidirectional-UL |
| >> snFieldLength | M | Range same as defined in 38.331 range for SN-FieldLengthUM |
| **>UM-Uni-DirectionalConfig-DL** | O | Present if RLC-Mode = RLC-UM-Unidirectional-DL |
| **>> DL-UM-Config** | M |  |
| >>> snFieldLength | M | Range same as defined in 38.331 range for SN-FieldLengthUM |
| >>> t-Reassembly | M | Range same as defined in 38.331 range for T-Reassembly |

</div>

### UE Create Response

Table - F1AP handler - RLC UE Create Response message contents

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Element** | **Presence** | **Description** |
| Cell Index | M | Identification of the Cell. 2-byte integer allocated by F1AP |
| UE Index | M | Identification of the UE. 2-byte integer allocated by F1AP |
| Result | M | * Failure - if API parsing error or semantic error (e.g. incorrect state or invalid UE Index, Cell Index). Refer TS 38.473 section 9.3.1.2 Cause   Success - in all the other cases |

</div>

### UE Reconfiguration

Please note that UL configuration below applies to the DL AM/UM entity locally on the gNB. Correspondingly DL Configuration below applies to UL AM/UM entity locally on the gNB.

Table - F1AP handler - RLC UE Reconfiguration message contents

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Element** | **Presence** | **Description** |
| Cell Index | M | Identification of the Cell. 2-byte integer allocated by F1AP |
| UE Index | M | Identification of the UE. 2-byte integer allocated by F1AP |
| **Number of LCs to Add/Mod** | M | Number of LC to be added |
| **>logicalChannelIdentity** | M | {1...32} SRB/DRB logical channel identity |
| >S-NSSAI | M | See TS 38.473 S-NSSAI in UE CONTEXT MODIFICATION REQUEST |
| >RlcMode | M | Mode of operation of this logical channel  {RLC-AM, RLC-UM-Bidirectional, RLC-UM-Unidirectional-UL, RLC-UM-Unidirectionall-DL, ...)  Range is same as defined in 38.331 |
| **> AM Bearer Config** | O (if AM) | Present if the RLC Mode is AM |
| **>> UL AM Config** | M |  |
| >>> snFieldLength | M | {size12, size18}  Range is same as defined in 38.331 |
| >>> t-PollRetransmit | M | Range same as 38.331 defined range for T-PollRetransmit |
| >>> pollPDU | M | Range same as defined in 38.331 range for PollPDU |
| >>> pollByte | M | Range same as defined in 38.331 range for PollByte |
| >>> maxRetxThreshold | M | Range same as defined in 38.331 range for maxRetxThreshold  {t1, t2, t3, t4, t6, t8, t16, t32} |
| **>> DL AM Config** | M |  |
| >>> snFieldLength | M | Range same as defined in 38.331 range for SN-FieldLengthAM |
| >>> t-Reassembly | M | Range same as defined in 38.331 range for T-Reassembly |
| >>> t-statusProhibit | M | Range same as defined in 38.331 range for T-StatusProhibit |
| **>UM-Bi-DirectionalConfig** | O | Present if RLC Mode = RLC-UM-Bidirectional |
| **>> UL-UM-Config** | M |  |
| >>> snFieldLength | M | Range same as defined in 38.331 range for SN-FieldLengthUM |
| **>> DL-UM-Config** | M |  |
| >>> snFieldLength | M | Range same as defined in 38.331 range for SN-FieldLengthUM |
| >>> t-Reassembly | M | Range same as defined in 38.331 range for T-Reassembly |
| **>UM-Uni-DirectionalConfig-UL** | O | Present if RLC-Mode = RLC-UM-Unidirectional-UL |
| >> snFieldLength | M | Range same as defined in 38.331 range for SN-FieldLengthUM |
| **>UM-Uni-DirectionalConfig-DL** | O | Present if RLC-Mode = RLC-UM-Unidirectional-DL |
| **>> DL-UM-Config** | M |  |
| >>> snFieldLength | M | Range same as defined in 38.331 range for SN-FieldLengthUM |
| >>> t-Reassembly | M | Range same as defined in 38.331 range for T-Reassembly |
| **Number of LCs to be Released** | M | Number of LC to be released |
| >logicalChannelIdentity | M | {1...32} SRB/DRB logical channel identity |

</div>

### UE Reconfiguration Response

Table - F1AP handler - RLC UE Reconfiguration Response message contents

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Element** | **Presence** | **Description** |
| Cell Index | M | Identification of the Cell. 2-byte integer allocated by F1AP |
| UE Index | M | Identification of the UE. 2-byte integer allocated by F1AP |
| Result | M | * Failure - if API parsing error or semantic error (e.g. incorrect state or invalid UE Index, Cell Index). Refer TS 38.473 section 9.3.1.2.   Success - in all the other cases |

</div>

### UE Delete

Table - F1AP handler - RLC UE Delete message contents

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Element** | **Presence** | **Description** |
| Cell Index | M | Identification of the Cell. 2-byte integer allocated by F1AP |
| UE Index | M | Identification of the UE. 2-byte integer allocated by F1AP |

</div>

### UE Delete Response

Table - F1AP handler - RLC UE Delete Response message contents

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Element** | **Presence** | **Description** |
| Cell Index | M | Identification of the Cell. 2-byte integer allocated by F1AP |
| Result | M | * Failure - if API parsing error or semantic error (e.g. incorrect state or invalid UE Index, Cell Index). Refer TS 38.473 section 9.3.1.2.   Success - in all the other cases |

</div>

### DL RRC Message Transfer

Table - F1AP handler - RLC DL RRC Message Transfer message contents

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Element** | **Presence** | **Description** |
| Cell Index | M | Identification of the Cell. 2-byte integer allocated by F1AP |
| UE Index | M | Identification of the UE. 2-byte integer allocated by F1AP |
| logicalChannelIdentity | M | {1...3} SRB logical channel identity |
| ExecuteDuplication | O | {true, false} if present it implies RLC needs to duplicate via CA |
| RRCDeliveryStatusRequired | O | {true, false} if present it implies that RLC must report delivery to F1AP (UE State Manager) on successful/failed delivery |
| RRC-Message | M | DL-DCCH-Message as specified in 38.331 |
| RRC-Message-Length | M | Length of DL-DCCH message |

</div>

### DL RRC Message Response

RLC sends the status of RRC message sent by DUAPP so that DUAPP can further carry on with the remaining UE related procedures such as UE Context Setup/Modification or release accordingly.

Table - F1AP handler - RLC DL RRC Message Transfer response

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Element** | **Presence** | **Description** |
| Cell Index | M | Identification of the Cell. 2-byte integer allocated by F1AP |
| UE Index | M | Identification of the UE. 2-byte integer allocated by F1AP |
| DLMsgState | M | Provides the feedback of the processing state of RRC message sent by DUAPP to RLC.  Values:  ENUM {  TRANSMISSION\_IN\_PROGRESS,  TRANSMISSION\_COMPLETE,  TRANSMISSIN\_FAILED} |

</div>

### UL RRC Message Transfer

Table - F1AP handler - RLC UL RRC Message Transfer

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Element** | **Presence** | **Description** |
| Cell Index | M | Identification of the Cell. 2-byte integer allocated by F1AP |
| UE Index | M | Identification of the UE. 2-byte integer allocated by F1AP |
| logicalChannelIdentity | M | {1...3} SRB logical channel identity |
| RRC-Message | M | UL-DCCH-Message as specified in 38.331 |
| RRC-Message-Length | M | Length of UL-DCCH message |

</div>

### UL RRC Message Delivery Report

Table - F1AP handler - RLC UL RRC Message Delivery Report

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Element** | **Presence** | **Description** |
| Cell Index | M | Identification of the Cell. 2-byte integer allocated by F1AP |
| UE Index | M | Identification of the UE. 2-byte integer allocated by F1AP |
| logicalChannelIdentity | M | {1...3} SRB logical channel identity |
| RRC Delivery Status | M | RRC Delivery Status as defined in 38.473 |

</div>

### RLC Max Retransmission Reached

Table - F1AP handler - RLC Max Retransmission Reached message contents

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Element** | **Presence** | **Description** |
| Cell Index | M | Identification of the Cell. 2-byte integer allocated by F1AP |
| UE Index | M | Identification of the UE. 2-byte integer allocated by F1AP |
| SRB/DRB | M | Identification of SRB (0) or DRB (1) |
| logicalChannelIdentity | M | {1...32} SRB/DRB logical channel identity that experienced MAX RETRANSMISSION EVENT |

</div>

### UL RLC Re-establishment Request

Table - F1AP handler - RLC UL RLC Reestablishment Request message contents

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Element** | **Presence** | **Description** |
| Cell Index | M | Identification of the Cell. 2-byte integer allocated by F1AP |
| UE Index | M | Identification of the UE. 2-byte integer allocated by F1AP |
| **numberOfLc** | M | Number of Logical Channels that have to be re-established |
| >logicalChannelIdentity | M | {1...32} SRB/DRB logical channel identity |

</div>

### UE RLC Re-establishment Response

Table - F1AP handler - RLC UE RLC Reestablishment Response message contents

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Element** | **Presence** | **Description** |
| Cell Index | M | Identification of the Cell. 2-byte integer allocated by F1AP |
| UE Index | M | Identification of the UE. 2-byte integer allocated by F1AP |
| Result | M | * Failure - if API parsing error or semantic error (e.g. incorrect state or invalid UE Index, Cell Index). Refer TS 38.473 section 9.3.1.2.   Success - in all the other cases |

</div>

### UL User Data

Table - RLC - F1AP handler UL User Data

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Element** | **Presence** | **Description** |
| Cell Index | M | Identification of the Cell. 2-byte integer allocated by F1AP |
| UE Index | M | Identification of the UE. 2-byte integer allocated by F1AP |
| logicalChannelIdentity | M | {1...32} SRB/DRB logical channel identity |
| MsgLength | M | Length of the User data in uplink |
| User Data | M |  |

</div>

### DL User Data

Table - RLC - F1AP handler DL User Data

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Element** | **Presence** | **Description** |
| Cell Index | M | Identification of the Cell. 2-byte integer allocated by F1AP |
| UE Index | M | Identification of the UE. 2-byte integer allocated by F1AP |
| logicalChannelIdentity | M | {1...32} SRB/DRB logical channel identity |
| MsgLength | M | Length of the User data in Downlink |
| User Data | M |  |

</div>

### RLC - O-DU-OAM-Agent Interface

### PM Slice throughput Event

This is PM event to notify the slice specific throughput towards OAM agent that are sent at every reporting interval (1 minutes).

Table - RLC - O-DU-OAM-Agent PM Slice Throughput Event

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Element** | **Presence** | **Description** |
| Num of Slices | M | Number of slices which have active Data sessions |
| * Network Slice Identifier | M | 32Bit Integer; 24Bits SD and 8 bits SST |
| * Throughput DL | M | DL throughput of this SNSSAI |
| * Throughput UL | M | UL throughput of this SNSSAI |

</div>

### O1 Interface and data model

The O1 interface performs FCAPS management for the O-DU.

* The O1 interface is terminated at the O-DU-OAM-Agent module of O-DU to handle all configurations of L1 and L2 layers.
* The interface includes cell configuration towards MAC/SCH and RLC layer.
  + The interface includes slice specific configuration to support RAN slicing SLA assurance.
  + The interface includes Beam forming and MIMO configurations and additionally configuration related to supported SSB and CSI-RS TRS per cell, supported beam forming modes, SRS configuration periodicity to support massive MIMO optimization use cases like non-GoB ,GoB beamforming, L1/L2 beam management as reference in O-RAN.WG1.Use-Cases-mMIMO-TR[31].
  + to support Massive MIMO optimization feature.
* The O1 interface for the O-DU details the data model at cell level, beam level and slice level configurations at stated in reference [26].
* O1 interface supports the performance management/KPI management. O-DU-OAM -Agent collects the performance counters at the cell level, beam level and slice level as required to support various feature optimization and reports to the performance management entity of the SMO.
* The optimized DU configuration for the features e.g. Massive MIMO optimization is notified by the SMO to O-DU-OAM-Agent over file ready notification and the same can be downloaded at O-DU-OAM-Agent module upon accepting the file download request from O-DU system. If required, the O-DU system notifies the new configuration to the O-RU over Fronthaul M-plane interface as reference in [23]. The optimized DU configuration is achieved by the AI/ML driven rAPP application hosted at the Non RT-RIC performs or by xApp application hosted at the Near RT-RIC underlying ML model trained on the historical data collected from a cell or a cluster of cells .The input data for this optimization training and interference can be comprised of several performance statistics and the output of the inference is the optimized configuration sent towards O-DU over the O1 interface.

For data models, please refer to O-RAN WG5 data models for O-DU [26].

### E2 Interface

The E2 service models is extended to support the use cases e.g. RAN slicing SLA assurance and Massive MIMO Optimization.

* + The enhancement in the O-RAN interfaces and data models of the E2 interface to enable the Near RT RIC to support Massive MIMO sub-features for AI/ML based mMIMO BF optimization, also enhancements to Near-RT RIC architecture if there is any is detailed in reference [32]

# O-CU Interface

APIs between the following layers of O-CU are described in this section.

* RRC-SDAP
* RRC-PDCP
* SDAP- PDCP

It is expected that the software implementation of the APIs defined in this section will be in conformance with the API message definition and the fields or message elements. Data types and encoding/decoding of the message contents will be implementation dependent. Message elements (IEs) referring to definitions in 3GPP specifications are italicized for ease of reference.

### RRC-SDAP Interface

Table - RRC-SDAP APIs

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Direction** | **Message/API** | **Description** |
| RRC to SDAP | QoS flow to DRB mapping | QoS mapping when a DRB is added/modified. RRC indicates in this API if reflective QoS is used. |
| RRC to SDAP | DRB release | To remove all QoS flow to DRB mappings |

</div>

The detailed description of RRC-SDAP APIs is below.

### QoS Flow to DRB Mapping

Table - RRC-SDAP QoS flow to DRB mapping message contents

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Element** | **Presence** | **Description** |
| Frame Number | M | Start time |
| Slot Number | M | Start time |
| Cell Index | M | Identification of the Cell |
| UE index | M | Identification of the UE |
| Mapping list number | M | The number of mapping list |
| Mapping list(QFI, RB id) | M | Identification of the mapping between QFI and RB id |

</div>

### DRB Release

Table - RRC-SDAP DRB release message contents

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Element** | **Presence** | **Description** |
| Frame Number | M | Start time |
| Slot Number | M | Start time |
| Cell Index | M | Identification of the Cell |
| UE index | M | Identification of the UE |
| DRB id | M | Identification of the Released DRB |

</div>

### SDAP-PDCP Interface

Table - SDAP-PDCP Interface

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Direction** | **Message/API** | **Description** |
| SDAP to PDCP | Transfer data PDU (DL) | Transfer of SDAP PDU (with or without SDAP header) in downlink direction |
| PDCP to SDAP | Transfer data PDU (UL) | Transfer of SDAP PDU (with or without SDAP header) in uplink direction |
| SDAP to PDCP | End-marker control PDU (DL) | Control PDU (only SDAP header) to indicate end of mapping of QoS flow |

</div>

The detailed description of SDAP-PDCP APIs is below:

### Transfer Data PDU (DL)

Table - SDAP-PDCP Transfer Data PDU (DL) message contents

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Element** | **Presence** | **Description** |
| Frame Number | M | Start time |
| Slot Number | M | Start time |
| Cell Index | M | Identification of the Cell |
| SDAP PDU number | M | PDU number |
| SDAP PDU info (UE index, DRB id, PDU length, PDU data) | M | Identification of the UE, PDU length and SDAP PDU data |

</div>

### Transfer Data PDU (UL)

Table - SDAP-PDCP Transfer Data PDU (UL) message contents

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Element** | **Presence** | **Description** |
| Frame Number | M | Start time |
| Slot Number | M | Start time |
| Cell Index | M | Identification of the Cell |
| SDAP PDU number | M | PDU number |
| SDAP PDU info (UE index, DRB id, PDU length, PDU data) | M | Identification of the UE, PDU length and SDAP PDU data |

</div>

### End-marker Control PDU (DL)

Table - SDAP-PDCP End-marker control PDU (UL) message contents

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Element** | **Presence** | **Description** |
| Frame Number | M | Start time |
| Slot Number | M | Start time |
| Cell Index | M | Identification of the Cell |
| UE index | M | Identification of the UE |
| DRB id | M | Identification of the DRB |
| EndMarker | M | End of the QoS flow-DRB mapping |

</div>

### RRC-PDCP Interface

Table - RRC-PDCP Interface

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Direction** | **Message/API** | **Description** |
| RRC to PDCP | PDCP entity establishment | To establish a PDCP entity for radio bearers |
| RRC to PDCP | PDCP entity re-establishment | To re-establish PDCP entity |
| RRC to PDCP | PDCP entity release | To release PDCP entity |
| RRC to PDCP | SRB Data Request | To Deliver SRB(s) Data from RRC to PDCP (DL) |
| PDCP to RRC | SRB Data Indication | To Deliver SRB(s) Data from PDCH to RRC (UL) |

</div>

The detailed description of RRC-PDCP APIs is below:

### PDCP Entity Establishment

Table - RRC-PDCP PDCP entity establishment

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Element** | **Presence** | **Description** |
| Cell Index | M | Identification of the Cell |
| UE index | M | Identification of the UE |
| Frame Number | M | Start time |
| Slot Number | M | Start time |
| RB number | M | The number of RB |
| RB information list (Rb Id, logicalChannelIdentity, RB type, discardTimer, t-Reordering, SN Bit, headerCompression, securityConfig) | M | See *RadioBearerConfig,* PDCP-Config in 38.331 |

</div>

### PDCP Entity Re-establishment

Table - RRC-PDCP PDCP entity release

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Element** | **Presence** | **Description** |
| Cell Index | M | Identification of the Cell |
| UE index | M | Identification of the UE |
| Frame Number | M | Start time |
| Slot Number | M | Start time |

</div>

### SRB Data Request

Table - RRC-PDCP SRB Data Request

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Element** | **Presence** | **Description** |
| Cell Index | M | Identification of the Cell |
| UE index | M | Identification of the UE |
| Frame Number | M | Start time |
| Slot Number | M | Start time |
| SRB PDU Number | M | The number of RB |
| SRB PDU info(SRB id, data length, SRB PDU data) | M |  |

</div>

### SRB Data Indication

Table - RRC-PDCP SRB Data Indication

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Element** | **Presence** | **Description** |
| Cell Index | M | Identification of the Cell |
| UE index | M | Identification of the UE |
| Frame Number | M | Start time |
| Slot Number | M | Start time |
| SRB PDU Number | M | The number of RB |
| SRB PDU info(SRB id, data length, SRB PDU data) | M |  |

</div>

### SDAP-eGTPU Interface

Table - SDAP-eGTPU APIs

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Direction** | **Message/API** | **Description** |
| SDAP to eGTPU | Transfer Data SDAP SDU(UL) | Transfer of SDAP SDU in uplink direction |
| eGTPU to SDAP | Transfer Data SDAP SDU(DL) | Transfer of SDAP SDU in downlink direction |

</div>

### Transfer Data SDAP SDU (UL)

This message is sent by SDAP to transfer uplink data to eGTPU.

Table - SDAP-eGTPU Transfer Data SDAP SDU (UL) message contents

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Element** | **Presence** | **Description** |
| Cell index | M | Identification of the Cell |
| UE index | M | Identification of the UE |
| PDU Session id | M | Identification of the PDU Session |
| QFI | M | QoS Flow Identifier |
| SDAP SDU data | M | SDAP SDU data |
| SDAP SDU length | M | SDAP SDU length |

</div>

### Transfer Data SDAP SDU (DL)

This message is sent by eGTPU to transfer downlink data to SDAP.

Table - SDAP-eGTPU Transfer Data SDAP SDU (DL) message contents

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Element** | **Presence** | **Description** |
| Cell index | M | Identification of the Cell |
| UE index | M | Identification of the UE |
| PDU Session id | M | Identification of the PDU Session |
| QFI | M | QoS Flow Identifier |
| SDAP SDU data | M | SDAP SDU data |
| SDAP SDU length | M | SDAP SDU length |

</div>

### PDCP-eGTPU Interface

Table - PDCP-eGTPU APIs

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Direction** | **Message/API** | **Description** |
| PDCP to eGTPU | Transfer Data PDCP PDU(DL) | Transfer of PDCP PDU in downlink direction. |
| eGTPU to PDCP | Transfer Data PDCP PDU(UL) | Transfer of PDCP PDU in uplink direction |

</div>

### Transfer Data PDCP PDU (DL)

This message is sent by PDCP to eGTPU to transfer packets in downlink direction.

Table - PDCP-eGTPU Transfer Data PDCP PDU (DL) message contents

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Element** | **Presence** | **Description** |
| Cell index | M | Identification of the Cell |
| UE index | M | Identification of the UE |
| DRB id | M | Identification of the DRB |
| PDCP PDU data | M | PDCP PDU data |
| PDCP PDU length | M | PDCP PDU length |

</div>

### Transfer Data PDCP PDU (UL)

This message is sent by eGTPU to PDPCP to transfer packets in uplink direction.

Table - eGTPU to PDCP Transfer Data PDCP PDU (UL) message contents

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Element** | **Presence** | **Description** |
| Cell index | M | Identification of the Cell |
| UE index | M | Identification of the UE |
| DRB id | M | Identification of the DRB |
| PDCP PDU data | M | PDCP PDU data |
| PDCP PDU length | M | PDCP PDU length |

</div>

### Ciphering and Integrity Protection

O-CU implements ciphering and integrity algorithms specified in [9] for signalling and data bearers. This may be implemented in software or in hardware for acceleration.

### Header Compression

The header compression protocol is based on the Robust Header Compression (ROHC) framework defined in RFC 5795. As specified in [9] the following profiles are supported.

Table - Header compression profiles

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Profile Identifier** | **Usage** | **Reference** |
| 0x0000 | No compression | RFC 5795 |
| 0x0001 | RTP/UDP/IP | RFC 3095, RFC 4815 |
| 0x0002 | UDP/IP | RFC 3095, RFC 4815 |
| 0x0003 | ESP/IP | RFC 3095, RFC 4815 |
| 0x0004 | IP | RFC 3843, RFC 4815 |
| 0x0006 | TCP/IP | RFC 6846 |
| 0x0101 | RTP/UDP/IP | RFC 5225 |
| 0x0102 | UDP/IP | RFC 5225 |
| 0x0103 | ESP/IP | RFC 5225 |
| 0x0104 | IP | RFC 5225 |

</div>

# Use-Cases Enhancements

Below section has been added to define few of the enhancements corresponding to the ORAN use cases document.

### Non-GoB mMIMO optimization

This section details the *Use case 6: Massive MIMO Beamforming Optimization* as defined in [40]. This use case allows the operator to flexibly configure Massive MIMO system parameters by means of policies, configuration, or machine learning techniques to improve the wireless performance, coverage and the QoS.

In this method, the non-RT and near-RT RIC utilize the UE/BS channel condition, mobility, and measured performance data to assist in beamforming mode selection and dynamically generate the beamforming weights.

Below diagram captures the flow of information between the PHY, L2 and near RT-RIC. Functionality such as ML training and application have not been captured in this document and is out of scope.

![Diagram  Description automatically generated]({{site.baseurl}}/assets/images/c6a799de60b1.png)

Figure 13-1 Non-GoB mMIMO

Following RAN information data is identified to be shared with RIC/rApps for ML training and application.

* DL Synchronization Signal based Reference Signal Received Power (SS-RSRP)
* DL Synchronization Signal based Signal to Noise and Interference Ratio (SS-SINR)
* UL Sounding Reference Signal based Reference Signal Received Power (SRS-RSRP)
* Supported Non-GoB Beamforming Modes

No New API is to be defined for this. O1 parameters and KPIs used are detailed in section 11.2.1.

Communication with RIC/rApps over the E2 interface are defined in the service models and E2 interface specifications. Please refer to [42] and [43] more details.

E2 Interface can be referred for more details. O-RAN.WG3.E2SM-KPM [40) and O-RAN.WG3.E2SM-RC [41] documents can be referred to for more details on the E2 service models used.

### Shared O-RU

This section details the *Use case 20: Shared O-RU* as defined in [40]. It allows deploying O-RU where below objectives could be achieved.

1. Enhanced scalability and/or enhance availability and/or enable access-specific node deployments in fronthaul systems, where multiple O-DU nodes are deployed by a single operator and connected to a shared O-RU.
2. Enhanced sharing capabilities where multiple O-DU nodes are deployed by different operators and connected to a shared O-RU.

Proposed Use Cases:

* Single MNO, Hierarchical mode
* Single MNO, Hybrid mode
* Multiple MNO, Hierarchical mode
* Multiple MNO, Hybrid Mode
* Multiple MNO, Neutral Host

Single MNO use cases may cover load-sharing or redundant-O-DU use cases, or multiple RAN types e.g., 4G + 5G. Multiple MNO use cases may cover O-RU sharing between two or more RAN operators.

![A diagram of a network server  Description automatically generated]({{site.baseurl}}/assets/images/54b168d8854a.png)

Figure 13-2 Single MNO, Hierarchical mode

![A diagram of a network mode  Description automatically generated]({{site.baseurl}}/assets/images/a77c76f2ab15.png)

Figure 13-3 Single MNO, Hybrid mode

![A diagram of a network server  Description automatically generated]({{site.baseurl}}/assets/images/3d9fa57bf94a.png)

Figure 13-4 Multiple MNO, Hierarchical mode

![A diagram of a network mode  Description automatically generated]({{site.baseurl}}/assets/images/bd475de0b2a3.png)

Figure 13-5 Multiple MNO, Hybrid mode

![A diagram of a network server  Description automatically generated]({{site.baseurl}}/assets/images/808bbf7cc868.png)

Figure 13-6 Multiple MNO, Neutral Host

Static allocation of resources between O-DU nodes

1. Single Operator Use Case

* Active/Standby operation
  + Identical carrier configurations on separate O-DU nodes.
  + The operation of the stand-by O-DU node is enhanced such that carrier configuration of the O-RU is omitted, which is instead performed only by the active O-DU node.
  + The stand-by O-DU node subscribes to receive supervision notifications from the O-RU
* Scale in/Scale out operation
  + SMO statically partitions O-RU resources between a set of candidate O-DU nodes.
  + The SMO uses the O1 interface to either i) activate and configure or ii) de-activate.
* Access-centric configuration
  + The SMO statically partitions O-RU resources between LTE and NR carriers.

1. Multi-Operator Use Case

* Shared Resource Operator (SRO)-H enters into an agreement with one or more SRO-Ts to offer access to the resources of a shared O-RU

Dynamic allocation of resources between O-DU nodes

1. Single Operator Use Case

* Co-ordination of O-RU resources is performed by the Near RT-RIC or M-plane based on demand and performance for slices.

1. Multi-Operator Use Case

* FFS

O-DU Changes:

1. Configuration Impact

* No additional O1 interface changes required as NRCellDU operationalState/administrativeState can be used to define ODU node in active or standby mode.

1. Functional Impact

* Existing Netconf session can be used for supervision notifications and to determine the operational state of ODU nodes.
* Standby ODU storing of the configuration and applying it once the state changes from standby to active.

1. Impact on S-Plane

* The requirements for S-Plane in the Shared O-RU application are unchanged.

### RAN Analytics

This section details the use case as defined in https://oranalliance.atlassian.net/wiki/spaces/MVPC/pages/2214658090/MVP-C+RAN+analytics+information+exposure+-+Phase+1+Approved

Purpose of the feature is to expose RAN analytics information to external applications or MEC.

![A diagram of a program  Description automatically generated]({{site.baseurl}}/assets/images/c951f6139d05.png)

Figure 13-7 RAN performance Analytics Flow Diagram

Data expected to be retrieved by non-RT RIC

* + Network level measurement
    - UE level radio channel information, mobility related metrics, e.g., CQI, SINR, MCS
    - L2 measurement report related to traffic patterns, e.g., throughput, latency, packets per-second, inter frame arrival time.
    - RAN protocol stack status: e.g., PDCP buffer status.
    - Cell level information: e.g., DL/UL PRB occupation rate
  + QoE related measurement metrics collected from SMO.
  + User traffic data
    - Currently out of the scope of A1 or E2

Data exposed by Near-RT RIC to application server.

* + UE level information
    - e.g., Predicted RAN performance or related information,
  + Cell level information
  + More information as needed.

### RAN Slicing

RAN Slicing allows a network operator to provide services tailored to customers' requirements. Network slice is defined as a logical network with a bundle of specified network services over a common network infrastructure. A single physical network is sliced into multiple virtual networks that can support different service types over a single RAN.

O-RAN defines multiple slicing use case:

Use Case 1: RAN Slice SLA Assurance

Use Case 2: Multi-vendor Slice

Use Case 3: NSSI Resource Allocation Optimization

![A diagram of a service and management framework  Description automatically generated]({{site.baseurl}}/assets/images/66b01b797f40.png)

Figure 13-7 O-RAN Reference Slicing Architecture

O-RAN reference slicing architecture includes slice management functions along with O-RAN architectural components.

ODU configuration is defined in the document under respective sections including 11.2.4.2.3 and 11.2.4.2.4.

### Fronthaul M-Plane

The Lower-Layer Split M-plane(LLS-M) as defined by O-RAN FH specification, facilitates the initialization, configuration and management of the O-RU to support the stated functional split.

A NETCONF/YANG based M-Plane is used for supporting the management features including "start up" installation, software management, configuration management, performance management, fault management and file management towards the O-RU.

The M-Plane supports two architectural models:

Hierarchical model:

The O-RU is managed entirely by one or more O-DU(s) using a NETCONF based M-Plane interface.

Hybrid model:

The hybrid architecture enables one or more direct logical interface(s) between management system(s) and O-RU in addition to a logical interface between O-DU and the O-RU.

![A diagram of a model  Description automatically generated]({{site.baseurl}}/assets/images/39efa7e296f0.png)

Figure 13-7 M-Plane Architecture

The M-Plane provides the following major functionalities to the O-RU. These features are implemented using the NETCONF provided functions.

* "Start-up" installation
* SW management
* Configuration management
* Performance management
* Fault Management
* File Management

### Network Energy Savings

The Network Energy Saving feature involves many RAN nodes in collecting RAN configuration and network performance data, controlling energy operation policy and energy saving action. NES AI/ML based rApp/xApp handles model training and inference operation. The O-DU interacts with OAM, Non-RT/Near-RT RIC and O-RU through O1, E2, and FH CUS-plane/M-Plane interface respectively.

### NES: RIC Control

The Near RT RIC configures and controls network energy savings on O-CU and O-DU using CCC (Cell Configuration and Control) service model, as described in [44]. The O-NESPolicy RAN configuration structure contains the following attributes

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Information Element** | **Description** |
| policyType | Policy indicates ASM or TRX control |
| antennaMaskName | Name indicating supported TX control mask |
| antennaMask | Antenna mask indicating on/off of antenna element |
| sleepMode | ASM sleep mode type as defined by WG4 |
| dataDir | Applied data direction: DL/UL |
| symbolMask | Indicates OFDM symbols for which the sleep mode is applied |
| slotMask | Indicates slots for which the sleep mode is applied |
| validDuration | Indicates duration in 10 ms units |
| esObjective | Expected energy savings target |

</div>

For the full description of energy savings using ASM or TRX control, please refer to [22].

### NES: PHY-MAC interactions

Within O-DU, the NES related information needs to be shared among L1 processing, L2 processing, and various interface processing functional blocks. The NES interface related information is divided into four categories: NES Configuration and Capability Information, NES RAN Performance Data, NES Operation Control, and NES Operation Status Info. The details of NES information are described in the following tables.

Table - NES Configuration and Capability Info

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **Message Type** | **Parameters** | **Description** | **Notes** |
| energy-saving-capability-common-info | ST8-ready-message-supported | Section Type 8, Ack/Nack support | O-RU->O-DU via FH  L1->L2 |
| sleep-duration-extension-supported | Extend the current sleep |
| emergency-wake-up-command-supported | Support emergency M-plane wake up |
| **trx-control-capability-info** | supported-trx-control-masks | Antenna array musk support | O-RU->O-DU via FH  L1->L2 |
| sleep-mode-type | Sleep mode |
| wake-up-duration | Wake up period |
| wake-up-duration-guaranteed | Guaranteed wake up period |
| defined-duration-sleep-supported | Support defined sleep period |
| undefined-duration-sleep-supported | Support undefined sleep period |
| asm-capability-info | sleep-mode-type | Sleep mode | O-RU->O-DU via FH  L1->L2 |
| wake-up-duration | Wake up period |
| wake-up-duration-guaranteed | Guaranteed wake up period |
| defined-duration-sleep-supported | Support defined sleep period |
| undefined-duration-sleep-supported | Support undefined sleep period |

</div>

Table - NES RAN Performance Data

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **Message Type** | **Parameters** | **Description** | **Notes** |
| RSRP measurements | RSRP | Reference Signals spread over the full bandwidth; RSRP is measured in decibels-milliwatts (dBm) | O-RU->O-DU via FH  L1->L2 |
| RSRQ measurements | RSRQ | RSRQ are indications of your signal performance | O-RU->O-DU via FH  L1->L2 |
| SINR measurements |  | Uses to give theoretical upper bounds on channel cap | O-RU->O-DU via FH  L1->L2 |
| CQI measurement | CQI | An indicator to reflect RF channel quality | L1->L2 |
| MCS Index | MCS | Modulation and coding scheme | L1 -> L2 |

</div>

Table - NES Operation Control

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **Message Type** | **Parameters** | **Description** | **Notes** |
| Cell/Carrier Power Control | On/ Off |  | O-DU->O-RU via FH |
| Pwr Off Start | Frame/sub frame/slot number |
| RF Channel Reconfiguration | Enable/Disable | M0-M3 | O-DU->O-RU via FH |
| Activation Start Slot | Frame/sub frame/slot number |
| Period | Number of slots |
| Acknowledgement |  |
| Advanced Sleep Modes | On/Off |  | O-DU->O-RU via FH |
| Sleep State | M0-M3 |
| Sleep Start Slot | Frame/sub frame/slot number |
| Sleep Period | Number of slots |
| Acknowledgement |  |

</div>

Table - NES Operation Status Information

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **Message Type** | **Parameters** | **Description** | **Notes** |
| O-RU NES Status | NES Mode | Cell/Carrier Off, RF Channels; ASM |  |
| Sleep State | M0-M3 |

</div>

### O-CU/O-DU Energy Optimization

In the early discussion, most of the energy saving measurements focused on the radio related operation which is the major energy consumption unit. To further achieve the green network goal, more measures can be taken on O-CU aand O-DU to reduce a significant portion of RAN energy cost while maintaining the wireless network performance.

Efficient power management in O-CU/O-DU systems is essential for cost reduction and environmental sustainability. The following approaches are considered to optimize RAN system power utilization:

1. For CPU power management, Dynamic Voltage and Frequency Scaling (DVFS) is a technique to adjust CPU voltage and clock frequency dynamically based on workload. Lower frequencies during idle periods save power with optimal task allocation to cores, minimizing context switches and maximizing CPU utilization.
2. On Memory Power Optimization, adjusting memory clock speeds based on workload, results in power savins. It is also possible to limit memory bandwidth during low-demand periods to reduce power consumption.
3. For the system thermal control, adjusting fan speed based on system (include CPU and memory) temperatures. Overcooling wastes energy if it is not based on thermals condition. Turning off or reducing fan speed during low-load periods save energy.

In summary, a holistic approach that combines CPU power management, memory optimization, and intelligent fan control ensures energy-efficient O-CU/O-DU systems while maintaining performance and reliability.

### O-CU/O-DU Power Management Architecture

O-CU/O-DU power management architecture can be significantly enhanced by employing a centralized power manager that makes dynamic decisions based on power-saving policies, workload demands, and CPU utilization. This intelligent power manager continuously monitors the server's performance metrics and adjusts the operational states of the CPU and its cores accordingly, scaling down during low demand periods to conserve energy or ramping up during peak times to ensure performance. By applying power-saving policies, it can selectively idle or shut down underutilized cores, thus optimizing CPU power usage. Additionally, the power manager oversees memory power consumption by regulating memory frequency and voltage based on current workload requirements, ensuring that energy is not wasted on idle memory resources. Cooling fans are also controlled adaptively; their speeds are adjusted in real-time according to the thermal conditions, preventing unnecessary energy expenditure while maintaining optimal cooling. This power management architecture not only improves energy efficiency but also maintains the balance between performance and power consumption, leading to cost savings and a reduced environmental footprint for overall RAN system.

The O-CU/O-DU power management architecture is described in Figure 13-10. The architecture leverages the commercial off the shelf processor and memory devices to achieve the best performance with lower power consumption.

![]({{site.baseurl}}/assets/images/9b2cae64b474.emf.png)

Figure - O-CU/O-DU Power Control Architecture

### O-CU/O-DU Demand Based Power Management Flow

Demand-based power management flow involves a continuous assessment of the O-CU/O-DU's workload and CPU utilization to dynamically adjust power usage for optimal efficiency. The process begins with real-time monitoring of workload demands and CPU activity levels. When the workload is low or CPU utilization drops, the power management system triggers adjustments to the Voltage Regulator Module (VRM) voltage, lowering it to decrease power consumption. In tandem, the CPU clock speed may be reduced to further conserve energy, aligning processing power with the current demand. This dual adjustment not only minimizes unnecessary power usage but also reduces heat generation, alleviating the load on cooling systems and contributing to overall energy savings. By fine-tuning these parameters on-the-fly, the RAN system can achieve a balance between maintaining performance standards and reducing power consumption, thereby enhancing operational efficiency and prolonging hardware lifespan.

Figure 13-11 shows the demand-based power management flow. the power control software may adjust CPU voltage and clock frequency dynamically based on workload.

![]({{site.baseurl}}/assets/images/3e2f718415fe.emf.png)

Figure - Demand Based Power Management Flow

CPU Turbo Mode is a feature found in modern processors that dynamically adjusts the clock speed of individual cores to enhance performance. It allows a processor core to temporarily exceed its base clock frequency when certain conditions are met (such as power and thermal headroom). When using turbo mode, the intention is fine-tuning for specific applications that benefit from higher clock speeds on certain cores; it can improve performance in workloads that don't utilize all cores equally.

Utilizing CPU C-states for power saving involves strategically transitioning the CPU into various low-power idle states when full performance is not needed. Each C-state represents a deeper level of power reduction, with C0 being the fully operational state and deeper states (C1, C2, C3, etc.) progressively reducing power consumption by shutting down more components. The transition into these states is based on workload conditions and CPU activity; when the CPU is idle, it can enter a deeper C-state to save energy. However, there are conditions and restrictions to consider, such as the wake-up time, which is the time required for the CPU to return to an active state (C0) from a deeper C-state. Deeper C-states save more power but have longer wake-up times, which can affect performance if the CPU needs to quickly resume full activity. Thus, the power management system must balance the energy savings with the potential impact on responsiveness, ensuring that deeper C-states are used during extended idle periods while lighter states are used for shorter idles to maintain a responsive system. This careful management helps maximize power efficiency without compromising the performance demands of active workloads.

### L1/L2 Collaboration on Power Management

In a RAN network, the interaction between the physical layer (L1) and the medium access control layer (L2) plays a crucial role in power saving strategies, especially based on varying workloads such as user numbers and time of day. The physical layer is responsible for the actual transmission and reception of data over the air interface, while the MAC layer handles the scheduling and management of these transmissions.

Interaction between L1 and L2 for Power Saving

1. Monitoring and Reporting: The physical layer continuously monitors real-time network conditions, including the channel condition, reference signal quality. This information is periodically reported to the MAC layer.

2. Dynamic Scheduling: The MAC layer, using the data from L1, dynamically schedules resource allocation. During periods of low demand (e.g., fewer users or off-peak hours), the MAC layer can reduce the number of active physical resource blocks (PRBs), thereby instructing L1 to lower transmission power or deactivate certain components temporarily.

3. Sleep Modes and Deactivation: The MAC layer can instruct the physical layer to enter various sleep modes during periods of inactivity. For example, during nighttime or off-peak hours, the MAC scheduler can consolidate traffic to fewer base stations, allowing other base stations to enter deep sleep states, significantly saving power.

5. Wake-Up Mechanisms: To ensure a balance between power saving and performance, the physical layer must be equipped with fast wake-up mechanisms. The predictive algorithms to anticipate traffic surges based on historical data (e.g., increased user activity during specific times of the day) and can pre-emptively bring components out of sleep modes in preparation for higher loads.

6. Load Balancing: The MAC layer also performs load balancing by reallocating resources among cells based on real-time demand. By shifting the load to cells with more efficient power states or less congestion, the MAC layer can optimize overall power usage across the network.

By closely coordinating the activities between L1 and L2 based on real-time workload and user activity patterns, 5G networks can achieve significant power savings while maintaining the necessary quality of service. This dynamic and adaptive approach ensures that power usage is minimized during low-demand periods without compromising performance during high-demand times.

### DMRS Beamforming

The O-DU performs configuration of O-RU if DMRS beamforming is supported by O-DU and O-RU. The configuration parameters are described in [23]. In addition the O\_DU processes the RRM and SINR measurements sent by O-RU. The processing of these measurement in O-DU MAC and scheduler and any algorithms used are implementation dependent.

# Annex A (Informative)

## L1 APIs

Table A-1 Uplink Module APIs

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **API** | **Description** |
| FFT | Perform the FFT operation |
| Layer demapping | Layer De-mapping for 5GNR providing support for a single code word. The algorithm is defined in section 7.3.1.3 in TS38.211 [4] |
| Channel estimation | Performance channel estimation based on the DMRS symbols |
| MIMO equalizer | 5G NR MIMO equalization algorithm |
| Demodulation | Modulation demapper for 5GNR that conforms to section 5.1 in 3GPP TS38.211 [4] |
| Descrambler | Descrambling procedure as defined in TS38.211 [4], which takes a sequence of LLRs and descrambles them based on a scramble code sequence |
| Rate Dematching | LDPC rate dematching operation |
| Polar Decoder | Polar Decoder 5G NR function |
| LDPC Decoder | LDPC Decoder 5G NR function |
| CRC Check | The CRC validate function. It calculates a CRC value and then compares that value to the one at the end of the data |
| Beamforming | Perform the spatial combining of the data from antennas to reduce the number of radio data streams |

</div>

Table A-2 Layer Demapping Parameters

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Parameter Fields** | **Description** |
| Layer data size | The layer data length |
| Number of layers | Layer count |
| Input Data | Layer demapping input data |

</div>

Table A-3 Channel Estimation API Parameters

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Parameter Fields** | **Description** |
| Start PRB | PRB start position |
| Number of PRB | PRB counts |
| Start Rx Antenna | Start antenna number of contiguous antenna numbers |
| Number of Rx Antenna | Rx antenna count |
| Number of Layers | Layer count |
| Number of DMRS | Number of DMRS symbols per TTI |
| DMRS configuration type | DMRS configuration type |
| DMRS in slot | Slot contains the DMRS |
| First DMRS in Slot Position | Position in the slot of the first DMRS symbol |
| PUSCH symbols in TTI | Number of PUSCH symbols in the TTI |
| Received Data | Received DMRS Data from antennas |
| Reference DMRS | Reference DMRS used |

</div>

Table A-4 Downlink Module APIs

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **API** | **Description** |
| Layer mapping | Layer mapping for 5GNR providing support for a single code word. The algorithm is defined in section 7.3.1.3 in TS38.211 [4] |
| Demodulation | Modulation mapper for 5GNR that conforms to section 5.1 in 3GPP TS38.211 [4] |
| Scrambler | * + 1. Scrambling procedure as defined in TS38.211 [4] |
| Rate matching | LDPC rate dematching operation |
| Polar Encoder | Polar Encoder 5G NR function |
| LDPC Encoder | LDPC Encoder 5G NR function |
| CRC Generation | The CRC generation function. It calculates a CRC value |
| Beam Forming | Performs Beamforming function based on the selected algorithm. |
| Precoder | Precoder combines the information from beamforming with several layers of subcarriers to create a set of antenna outputs. |

</div>

Table A-5 PRACH Module APIs

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **API** | **Description** |
| PRACH ZC Gen | Generate root ZC sequence used in PRACH. The algorithm is defined in section 7.3.1.3 in TS38.211 [4] |
| PRACH Detection | PRACH preamble detection and power spectrum |

</div>

Table A-6 PBCH Module APIs

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **API** | **Description** |
| PBCH DMRS Gen | Generate the DMRS For PBCH message |
| PBCH Gen | Create Complete PBCH message |

</div>

## Call Flows

### F1 Startup and Cells Activation

Figure below describes F1 interface setup and cell enabling across O-CU and O-DU as specified in subclause 8.5 of 3GPP TS 38.401 [12] when O-CU and O-DU nodes are brought up. The O-DU and its cells are configured by OAM in the pre-operational state.

![]({{site.baseurl}}/assets/images/a39af2d3541c.emf.png)

Figure A-1 F1 interface setup and cell enabling across O-CU and O-DU

### UE registration

The following call flow depicts all the messages across interfaces and internal APIs for UE registration in 5G SA.

![]({{site.baseurl}}/assets/images/2f6f030934f8.png) ![]({{site.baseurl}}/assets/images/85ca718e5df1.png)

![]({{site.baseurl}}/assets/images/54dab3e52b80.png)

![]({{site.baseurl}}/assets/images/95a4a6859759.png)

s![]({{site.baseurl}}/assets/images/d8ef8aee42a7.png)

Figure A- UE registration

### RACH procedure

Figure 0 shows the RACH procedure in UE registration call flow described in the previous section.

![]({{site.baseurl}}/assets/images/cf72f6cc2c08.emf.png)

Figure A- RACH procedure

### SR procedure

The SR procedure call flow is depicted in Figure 0

![]({{site.baseurl}}/assets/images/9c8dc6c275ee.emf.png)

Figure A- SR procedure

### UL Grant procedure

The UL Grant procedure call flow is depicted in Figure 0

![]({{site.baseurl}}/assets/images/b0c544802d10.emf.png)

Figure A- UL Grant Procedure

### PDU Session Establishment

PDU session establishment call flows are as shown in Figure 0

![]({{site.baseurl}}/assets/images/d486a8d282b8.png)

![]({{site.baseurl}}/assets/images/008d03996140.png)

![]({{site.baseurl}}/assets/images/8af72b2b8ea8.png)

Figure A-6 PDU Session Establishment

# Revision history

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| Date | Revision | Description |
| 08/09/2019 | v01.0.0 | First published version for Base Station O-DU and O-CU Software Architecture and APIs |
| 02/14/2020 | v02.0.0 | * Added Physical Broadcast Channel, Physical Random Access Channel, L1 Tasks Processing Flow, Front Haul Module, O-DU Timing Synchronization * L2 and L3 APIs: Corrections and new APIs   MAC-Scheduler APIs: New APIs added to list. All APIs defined fully in this release. |
| 11/09/2020 | v03.0.0 | L2/L3 API updates  O1 interface and E2 interface description |
| 08/07/2021 | v04.0.0 | * L2 APIs: Corrections and new APIs * MAC-Scheduler single API for DL scheduling information and L2 APIs correction. * mMIMO configuration/functionalities added * Beamforming configuration updated in O1 and scheduling information * Added Cat A radio flow |
| 11/08/2021 | v05.0.0 | * RAN slicing feature configuration/functionalities * Updated mobility section 8.2.2 Inter O-DU Handover within an O-CU. * Added Sections 5.11 O-DU Timing Synchronization and 5.12 Accelerator Abstraction Layer (AAL) |
| 23/03/2021 | V06.0.0 | * Rel-16 3gpp functionalities to support Massive MIMO feature. * Massive MIMO optimization feature configuration/functionalities (MPV-C). |
| 7/18/2022 | 06.00.01 | Updated as per new TS template |
| 7/20/2022 | 06.00.02 | Further cleanup as per template. Renumbered sections, tables and figures. |
| 7/25/2022 | 06.00.03 | Final updates to sections: References, O-DU and O-CU interfaces |
| 11/14/2022 | 08.00.01 | Final updates for November release. Added references to WG6 and WG11 specifications. |
| 03/22/2023 | 09.00.00 | Final updates for Mar 2023 Train. Incorporated contributions from TG1 and TG2 on massive MIMO optimization. Fixed section numbering issues. |
| 07/21/2023 | 10.00 | Final updates for Jul 2023 release. Incorporated TG1 and TG2 contributions. |
| 11/20/2023 | 11.00 | Final update and WG voting revision for Nov 2023 release. Includes TG1 and TG2 contributions. |
| 03/21/2024 | 12.00 | Final update for Mar 2024 release. TG1 and TG2 contributions - updates to O-CU section and addition of section on network energy savings. Minor corrections in other sections. |
| 07/18/2024 | 13.00 | Updates for July 2024 release. Updates to O-CU and O-DU power savings and NES sections. |
| 11/22/2024 | 14.00 | Updates for Nov 2024 release. Included DMRS beamforming description. Added latest references to WG3 service models. |

</div>
---

- View in [GitHub Mode]({{site.github_page_url}}/O-RAN.WG8.AAD.0-R004-v14.00.docx.md).
- Go back to [Table of Contents]({{site.baseurl}}/).
- Download the [Original Document]({{site.download_url}}/O-RAN.WG8.AAD.0-R004-v14.00.docx).

---

* toc
{:toc}
