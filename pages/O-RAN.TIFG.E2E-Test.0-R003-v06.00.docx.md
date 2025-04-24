## O-RAN.TIFG.E2E-Test.0-R003-v06.00.docx

- View in [Reader Mode](https://simewu.com/spec-reader/pages/01-TIFG/O-RAN.TIFG.E2E-Test.0-R003-v06.00.docx).
- Go back to [Table of Contents](../README.md).
- Download the [Original Document](https://github.com/Simewu/spec-reader/raw/refs/heads/main/documents/O-RAN.TIFG.E2E-Test.0-R003-v06.00.docx).

---

|  |
| --- |
| ![webwxgetmsgimg (7).jpeg](../assets/images/bea03973c631.jpg)O-RAN.TIFG.E2E-Test.0-R003-v06.00 |

|  |
| --- |
| Technical Specification |
|  |

|  |
| --- |
| O-RAN Test and Integration Focus Group  End-to-end Test Specification |

|  |
| --- |
|  |
| Copyright (C) 2023 by the O-RAN ALLIANCE e.V.  The copying or incorporation into any other work of part or all of the material available in this specification in any form without the prior written permission of O-RAN ALLIANCE e.V. is prohibited, save that you may print or download extracts of the material of this specification for your personal use, or copy the material of this specification for the purpose of sending to individual third parties for their information provided that you acknowledge O-RAN ALLIANCE as the source of the material and that you inform the third party that these conditions apply to them and that they must comply with them.  O-RAN ALLIANCE e.V., Buschkauler Weg 27, 53347 Alfter, Germany  Register of Associations, Bonn VR 11238, VAT ID DE321720189 |

Contents

Foreword 4

Modal verbs terminology 4

1 Scope 5

2 References 5

2.1 Normative references 5

2.2 Informative references 6

3 Definition of terms, symbols and abbreviations 7

3.1 Terms 7

3.2 Symbols 7

3.3 Abbreviations 8

4 Testing methodology and configuration 8

4.0 Testing methodology introduction 8

4.1 System under test 10

4.2 Test and measurement equipment and tools 11

4.3 Test report 13

4.4 Data traffic 14

4.5 Mobility classes 15

4.6 Radio conditions 15

4.7 Inter-cell interference 16

4.8 Spectral efficiency 17

5 Functional tests 18

5.0 Functional tests introduction 18

5.1 LTE/5G NSA attach and detach of single UE 18

5.2 LTE/5G NSA attach and detach of multiple UEs 21

5.3 5G SA registration and deregistration of single UE 23

5.4 Intra-O-DU mobility 25

5.5 Inter-O-DU mobility 27

5.6 Inter-O-CU mobility 30

5.7 Registration and deregistration to a single network slice 32

5.8 Registration and deregistration to multiple network slices 35

5.9 Idle Mode Intra-O-DU mobility 38

5.10 Idle mode Inter-O-DU mobility 40

5.11 Idle mode Inter-O-CU mobility 43

5.12 5G/4G Inter-System Mobility - 5GS to EPS handover 45

5.13 5G/4G Inter-System Mobility - EPS to 5GS handover 46

6 Performance tests 48

6.0 Performance tests introduction 48

6.1 Expected throughput calculation 49

6.2 Downlink peak throughput 52

6.3 Uplink peak throughput 55

6.4 Downlink throughput in different radio conditions 57

6.5 Uplink throughput in different radio conditions 59

6.6 Bidirectional throughput in different radio conditions 61

6.7 Downlink coverage throughput (link budget) 64

6.8 Uplink coverage throughput (link budget) 66

6.9 Downlink aggregated cell throughput (cell capacity) 68

6.10 Uplink aggregated cell throughput (cell capacity) 72

6.11 Impact of fronthaul latency on downlink peak throughput 74

6.12 Impact of fronthaul latency on uplink peak throughput 78

6.13 Impact of midhaul latency on downlink peak throughput 80

6.14 Impact of midhaul latency on uplink peak throughput 83

7 Services tests 85

7.0 Services tests introduction 85

7.1 Data services tests 85

7.2 Video streaming tests 92

7.3 Voice Services - Voice over LTE (VoLTE) tests 106

7.4 Voice Service - EPS Fallback tests 112

7.5 Voice Service - Voice over NR (VoNR) tests 117

7.6 Video Service - Video over LTE (ViLTE) tests 128

7.7 Video Service - EPS Fallback 135

7.8 Video Service - Video over NR 139

7.9 URLLC 150

7.10 mMTC 155

8 Load and stress tests 157

8.0 Load and stress tests introduction 158

8.1 Simultaneous RRC\_CONNECTED UEs 158

8.2 UE State Transition Rate Testing 160

8.3 Traffic Load Testing 162

8.4 Traffic Model Testing 164

8.5 Long hours stability Testing 168

8.6 Multi-cell Testing 169

8.7 Emergency call 170

8.8 ETWS (Earthquake and Tsunami Warning System) 172

8.9 MPS call 173

9 RIC-enabled end-to-end use case test 175

9.0 RIC-enabled end-to-end use case test introduction 175

9.1 Test Setup and Methodology 175

9.2 Traffic Steering Use Case Test 176

9.3 Network Energy Saving with Carrier and Cell switch off/on using Non-RT RIC 185

Annex A (normative) 192

# Foreword

This Technical Specification (TS) has been produced by TIFG of the O-RAN Alliance.

The content of the present document is subject to continuing work within O-RAN and may change following formal O-RAN approval. Should the O-RAN Alliance modify the contents of the present document, it will be re-released by O-RAN with an identifying change of version date and an increase in version number as follows:

version xx.yy.zz

where:

xx: the first digit-group is incremented for all changes of substance, i.e. technical enhancements, corrections, updates, etc. (the initial approved document will have xx=01). Always 2 digits with leading zero if needed.

yy: the second digit-group is incremented when editorial only changes have been incorporated in the document. Always 2 digits with leading zero if needed.

zz: the third digit-group included only in working versions of the document indicating incremental changes during the editing process. External versions never include the third digit-group. Always 2 digits with leading zero if needed.

# Modal verbs terminology

In the present document "**shall**", "**shall not**", "**should**", "**should not**", "**may**", "**need not**", "**will**", "**will not**", "**can**" and "**cannot**" are to be interpreted as described in clause 3.2 of the O-RAN Drafting Rules (Verbal forms for the expression of provisions).

"**must**" and "**must not**" are **NOT** allowed in O-RAN deliverables except when used in direct citation.

# 1 Scope

The present document specifies the methodology, procedures, configurations, and pass/fail criteria (when applicable) for end-to-end testing of an O-RAN system. It is focused on validating the end-to-end system functionality, performance, and key features of the O-RAN system as a black box. It is based on the principles outlined in the end-to-end system test framework document [11].

# 2 References

## 2.1 Normative references

References are either specific (identified by date of publication and/or edition number or version number) or non-specific. For specific references, only the cited version applies. For non-specific references, the latest version of the referenced document (including any amendments) applies.

NOTE: While any hyperlinks included in this clause were valid at the time of publication, O-RAN cannot guarantee their long-term validity.

The following referenced documents are necessary for the application of the present document.

1. Void
2. 3GPP TR 36.104, "Evolved Universal Terrestrial Radio Access (E-UTRA); Base Station (BS) radio transmission and reception"
3. NGMN Alliance, "Definition of the testing framework for the NGMN 5G pre-commercial networks trials", White paper July 2019, version 3.0. Available: http://www.ngmn.org
4. NGM Alliance, "NGMN 5G pre-commercial networks trials - major conclusions", White paper, December 2019, version 1.0. Available: http://www.ngmn.org
5. 3GPP TR 38.913: "Study on new radio access technology Radio interface protocol aspects", March 2017.
6. IETF RFC7323, "TCP Extensions for High Performance", September 2014
7. 3GPP TS 38.215, "Physical layer measurements", September 2020
8. 3GPP TS 36.133, "Requirements for support of radio resource management"
9. 3GPP TS 38.133, "Requirements for support of radio resource management"
10. O-RAN ALLIANCE, "O-RAN Architecture Description v11.0", February 2024
11. O-RAN ALLIANCE, "O-RAN End-to-End System Testing Framework Specification 1.0", July 2020
12. O-RAN ALLIANCE, "O-RAN Fronthaul Interoperability Test Specification (IOT) 2.0", April 2020
13. ITU-R M.2410-0, "Minimum requirements related to technical performance for IMT-2020 radio interface(s)", November 2017.
14. 3GPP TR 36.814, "Further advancements for E-UTRA physical layer aspects", March 2017
15. 3GPP TS 38.306, "User Equipment (UE) radio access capabilities", December 2020
16. O-RAN ALLIANCE, "O-RAN Fronthaul Control, User and Synchronization Plane Specification v5.0", November 2020
17. 3GPP TS 38.300, "NR and NG-RAN Overall Description; Stage 2", December 2020
18. 3GPP TS 38.101-1, "User Equipment (UE) radio transmission and reception; Part 1: Range 1 Standalone", December 2020
19. 3GPP TS 38.101-2, "User Equipment (UE) radio transmission and reception; Part 2: Range 2 Standalone", December 2020
20. 3GPP TS 38.211, "Physical channels and modulation", December 2020
21. 3GPP TS 38.213, "Physical layer procedures for control", December 2020
22. 3GPP TS 38.214, "Physical layer procedures for data", December 2020
23. 3GPP TR 38.308, "Physical Layer Aspects", September 2017
24. 3GPP TSG RAN WG1 Meeting #92 R1-1801352, "Discussion on NR UE peak data rate", March 2018
25. 3GPP TS 36.211, "Physical channels and modulation", September 2020
26. 3GPP TR 38.801, "Radio access architecture and interfaces", March 2017
27. 3GPP TS 33.511: "Security Assurance Specification (SCAS) for the next generation Node B (gNodeB) network product class" (Release 16), September 2020
28. 3GPP TS 23.502, "Procedures for the 5G System; Stage-2", December 2020
29. 3GPP TS 23.401 "General Packet Radio Service (GPRS)enhancements for Evolved Universal Terrestrial Radio Access Network (E-UTRAN) access"
30. 3GPP TS 37.340 "Overall description; Stage-2"
31. 3GPP TS 38.401 "5G; NG-RAN; Architecture description
32. 3GPP TS 38.473 "5G; NG-RAN; F1 Application Protocol (F1AP)"
33. 3GPP TS 37.470 "W1 interface General aspects and principles", July 2020
34. NGM Alliance, "Vertical URLLC Use Cases and Requirements", February 2020, version 2.5.4. Available: <http://www.ngmn.org>
35. 3GPP TS 28.552: "Management and orchestration; 5G performance measurements", December 2020
36. O-RAN ALLIANCE, "O-RAN Working Group 1 Use Cases Detailed Specification v13.00," February 2024
37. O-RAN ALLIANCE, "O-RAN Working Group 2 Non-RT RIC & A1 Interface: Use Cases and Requirements v05.00," November 2021
38. O-RAN ALLIANCE, "O-RAN Working Group 3 Use Cases and Requirements v01.00", July 2021
39. 3GPP TS 23.501: "System architecture for the 5G System (5GS)", December 2020
40. 3GPP TS 38.306: "User Equipment (UE) radio access capabilities", December 2021
41. 3GPP TS 23.502: "Procedures for the 5G System (5GS)", December 2023
42. O-RAN ALLIANCE, "Certification and Badging Processes and Procedures", April 2022
43. O-RAN ALLIANCE, "Certification and Badging Test Report Templates", April 2022
44. 3GPP TS 28.554, "Management and orchestration; 5G end to end Key Performance Indicators (KPI)", June 2023
45. ETSI TS 103 786, "Environmental Engineering (EE); Measurement method for energy efficiency of wireless access network equipment; Dynamic energy performance measurement method of 5G Base Station (BS)"
46. O-RAN ALLIANCE, "O-RAN Working Group 1 Network Energy Saving Use Cases", Technical Report v02.00, June 2023
47. 3GPP TS 38.300: "NR; NR and NG-RAN Overall Description; Stage 2", December 2023

## 2.2 Informative references

References are either specific (identified by date of publication and/or edition number or version number) or non-specific. For specific references, only the cited version applies. For non-specific references, the latest version of the referenced document (including any amendments) applies.

NOTE: While any hyperlinks included in this clause were valid at the time of publication, O-RAN cannot guarantee their long-term validity.

The following referenced documents are not necessary for the application of the present document, but they assist the user with regard to a particular subject area.

[i.1] 3GPP TR 21.905: "Vocabulary for 3GPP Specifications".

# 3 Definition of terms, symbols and abbreviations

## 3.1 Terms

For the purposes of the present document, the terms [given in [i.1] and the following] apply:

**C-Plane** Control Plane: refers specifically to real-time control between O-DU and O-RU, and should not be confused with the UE's control plane

**NSA** Non-Stand-Alone network mode that supports operation of SgNB attached to MeNB

**O-CU** O-RAN Central Unit - a logical node hosting PDCP, RRC, SDAP and other control functions. This can be considered short-hand for the O-CU-CP and O-CU-UP in an O-RAN system

**O-DU** O-RAN Distributed Unit: a logical node hosting RLC/MAC/High-PHY layers based on a lower layer functional split. O-DU in addition hosts an M-Plane instance.

**O-RU** O-RAN Radio Unit: a logical node hosting Low-PHY layer and RF processing based on a lower layer functional split. This is similar to 3GPP's "TRP" or "RRH" but more specific in including the Low-PHY layer (FFT/iFFT, PRACH extraction). O-RU in addition hosts M-Plane instance.

**PTP** Precision Time Protocol (PTP) is a protocol for distributing precise time and frequency over packet networks. PTP is defined in the IEEE Standard 1588.

**PDCCH** Physical Downlink Control Channel applies for LTE and NR air interface

**PBCH** Physical Broadcast Channel applies for LTE and NR air interface

**SA** Stand-Alone network mode that supports operation of gNB attached to a 5G Core Network

**SCS** OFDM Sub Carrier Spacing

**SSB** Synchronization Signal Block, in 5G PBCH and synchronization signal are packaged as a single block

**S-Plane** Synchronization Plane: Data flow for synchronization and timing information between nodes

**U-Plane** User Plane: refers to IQ sample data transferred between O-DU and O-RU

**Non-RT RIC** Non-real-time RAN Intelligent Controller: a logical function that enables non-real-time control and optimization of RAN elements and resources, AI/ML workflow including model training and updates, and policy-based guidance of applications/features in Near-RT RIC.

**Near-RT RIC** Near-real-time RAN Intelligent Controller: a logical function that enables near-real-time control and optimization of RAN elements and resources via fine-grained (e.g. UE basis, Cell basis) data collection and actions over E2 interface.

## 3.2 Symbols

Void

## 3.3 Abbreviations

For the purposes of the present document, the abbreviations [given in [i.1] and the following] apply:

5GS 5G System

CFI Control format indicator

DL Downlink: data flows from the core network towards the UE

DoS Denial of service

DUT Device under Test

E2E End-to-End

eNB Evolved Node B (LTE base station)

EPS Evolved Packet System

FFS For further study

gNB Next-generation Node B (5G NR base station)

IOT Interoperability Testing

IUT Interface under Test

KPI Key performance indicator

MCS Modulation and coding scheme

OTA Over the air

PDSCH Physical downlink shared channel

PUSCH Physical uplink shared channel

PRB Physical resource block (12 x Resource Elements per PRB)

QUIC Quick UDP Internet Connections

SUT System under test

TCP Transmission Control Protocol: connection-oriented IP protocol

TIFG O-RAN Test and Integration Focus Group

UDP User Datagram Protocol: connectionless IP protocol

UE User Equipment: terminology for a mobile device/terminal in LTE and NR

UL Uplink: data flows from the UE towards the core network

VoLTE Voice over LTE

VoNR Voice over NR

ViLTE Video over LTE

# Testing methodology and configuration

## Testing methodology introduction

This clause describes the common testing methods and configurations which shall be used in the subsequent clauses. To ensure fair and comparable test results among various test campaigns, consistent test setups should be utilized. The test conditions should reflect the realistic operational environment as much as possible to ensure meaningful and as close to real-world results as possible. The present document harmonizes the test conditions, methodologies, and procedures; but the test configuration (parameters) of DUT/SUT is not specified in this document. However, it is required to record the complete test configuration used in the test report to enable the test to be reproduced if needed, and for the test results to potentially be used for other purposes, e.g. benchmarking or comparison.

There are several design areas in RAN, where the vendors can differentiate such as RF performance (e.g. receiver sensitivity, PA design), radio link adaptation algorithms (e.g. radio channel estimation, MCS selection, MIMO mode selection, transmission mode selection, UL power control), scheduling and overhead management (e.g. number of control channels). These different approaches result in competitive advantages leading to differences in end-to-end performance which can be assessed with the tests defined in this document. Hence, it is not possible to set pass/fail criteria for all the tests, but the pass/fail criteria are set whenever possible, e.g. in the functional tests in Clause 5. The expected performance values are also indicated for reference network configurations.

Unless otherwise stated in this document, the tests are suitable for both laboratory as well as field environments. All laboratory tests should be conducted over a cable, or in case of OTA tests, inside a shielded box/room, to ensure repeatability. In the laboratory, radio signal strength (i.e. attenuation) on the 5G NR path and/or 4G LTE path can be modified by using variable attenuators. The end-user device, if used, should be placed inside a shielded box to avoid interference from external signals. The laboratory environment should allow for stable and repeatable testing conditions, and it is more suitable for benchmarking. On the other hand, the field environment allows for the evaluation of complex scenarios with realistic radio channel variations and behavior of the network (e.g. inter-cell interference and handovers). Field tests should be performed over the air (OTA). In the field, radio signal strength should be modified by placing the UE in different positions inside the cell.

Unless otherwise stated in this document, the same operating system (e.g. Windows 10) with default settings and configuration should be utilized for both ends (i.e. the host applications at end-user device (test UE) and application (traffic) server) in order to ensure a consistent test environment.

Unless otherwise stated in this document, the tests are applicable to both TDD and FDD.

Unless otherwise stated in this document, the following network architectures [26] depicted in Figure 4-1 below should be addressed and supported:

* 4G LTE - Option 1
* 5G NR standalone (5G SA) - Option 2
* 5G NR non-standalone (5G NSA) - Option 3 / Option 3a / Option 3x

|  |  |  |  |
| --- | --- | --- | --- |
| ![](../assets/images/91c4627f9c71.emf.png)  4G LTE - Option 1 | | ![](../assets/images/8a340a28b4a1.emf.png)  5G SA - Option 2 | |
| ![](../assets/images/5612ac1a3921.emf.png)  5G NSA - Option 3 | ![](../assets/images/4b1316021cfa.emf.png)  5G NSA - Option 3a | | ![](../assets/images/2a6f32b20406.emf.png)  5G NSA - Option 3x |

Figure 4-1 : The network architectures supported in this document - red dashed lines indicate control plane while blue solid lines indicate user plane.

## System under test

### 4.1.0 System under test overview

The whole O-RAN system is the System under Test (SUT) and can be viewed as an integrated black box in the context of E2E testing [11], i.e. the internal functionality and architecture of SUT is out of scope. All involved O-RAN functions and interfaces shall properly interoperate together, and an end-to-end communication link shall be established between the end-user device and the application server or another end-user device. The testing of interoperability and conformance of the internal functions of the SUT is out of scope for this document. The SUT shall be in service mode and run in their normal operation state. The E2E KPIs are defined across the whole end-to-end communication link between the end-user device and the application (traffic) server or another end-user device - see Figure 4-2.

![](../assets/images/47e23ab238ec.emf.png)

Figure 4-2: The O-RAN system as System under Test (SUT) and E2E KPIs

The end-to-end communication link includes O-RAN as well as non-O-RAN (e.g. core, end-user device) components which could negatively affect the end-to-end performance, e.g. limited capability of the test UEs and/or the application servers to generate/receive enough data traffic, or a bottleneck in the transport network. All these unwanted contributions should be avoided or at least minimized in order to measure unbiased KPIs. In addition, there may be a performance difference between different vendors and chipsets depending on their level of maturity. Commercial (production grade) devices (e.g. test UE) should be used whenever possible, ensuring the tests are sufficiently documented, stable and repeatable.

All O-RAN components [10] (such as O-CU-CP and O-CU-UP, O-DU, O-RU) and interfaces [10] (such as Open Fronthaul, X2) included in the System under Test should have been tested against their respective conformance and interoperability O-RAN specifications if they are available.

### Load and Stress Interfaces to SUT

A key priority of load and stress testing is to exercise the performance of the SUT near or exceeding full capacity. The capacity of the O-DU and O-CU within the SUT may be such that applying all traffic necessary to reach full capacity may require many O-RUs which may not always be feasible. Figure 4-3 defines additional traffic insertion points where traffic may be applied directly at the Open Fronthaul or F1 Interfaces to the SUT in order to provide additional background UE stack traffic along with application of test traffic at the Uu interface to O-RU(s) in the SUT. This should allow for adequate stress on the complete SUT for execution of the E2E test scenarios.

O-RAN System (SUT)

UE

Uu

3GPP Core

S1, NG

3GPP

Services

Other

Services

![](../assets/images/ea2811ce40a2.emf.png)![](../assets/images/e48db5f687ce.emf.png)

End to end (E2E) KPIs

UE+O-RU

(Optional)

OFH

UE+O-DU

(Optional)

F1

O-RU #1

RF

OFH

O-RU #n

RF

OFH

O-DU #1

F1

OFH

OFH

O-DU #m

F1

OFH

OFH

O-CU

S1/NG

F1

F1

F1

Figure 4-3: Interfaces for applying incremental traffic to System Under Test for Load and Stress scenarios

## Test and measurement equipment and tools

All the tests shall be performed in a non-intrusive manner; that is, in a manner in which the SUT is not required to support any functionality or mode of operation beyond that required for normal operation in a production network. The SUT is not expected to be used as test tools when deployed in a production network, and therefore it should not be used as test tools during end-to-end testing.

All the measurement equipment and tools used in the tests shall be properly calibrated and configured in advance in order to minimize the influence of the test equipment on the measurements results. The parameters (e.g. attenuation) of cables, attenuators, splitters, combiners, etc. shall be also measured in advance and compensated for in the final measurement results.

Table 4-1 Test and measurement equipment and tools

| Test tool | Description |
| --- | --- |
| Real UE and/or UE emulator | The UE (Real UE or UE emulator) is used to establish stateful end-to-end connection and to generate or receive data traffic.  The real UE used in this context as a test tool is typically a UE which is designed for commercial or testing applications with certain test and diagnostic functions enabled for test and measurement purposes. Such test and diagnostic functions should not affect the performance.  The real UE requires a SIM card (real or emulated) which is pre-provisioned with subscriber profiles. A UE emulator or multiple real UEs can be used in multi-UE test scenarios requiring multiple UEs sessions. The UE is connected with the SUT either via RF cables or via an over the air (OTA) connection. In a lab environment, the UE should be placed inside an RF shielded box/room in order to avoid interference from external signals.  The logging tool connected to the UE is used to capture measurements and KPI logs for test validation and reporting. |
| UE + O-RU emulator | The UE + O-RU emulator is used to establish stateful connections and to generate or receive data traffic directly at the Open fronthaul connection to an O-DU within the O-RAN SUT.  The UE + O-RU emulator is typically designed for testing applications with certain test and diagnostic functions enabled for test and measurement purposes  The UE + O-RU emulator is used to create background traffic driven by multiple stateful UE stacks for purposes of increasing the load on the O-DU in addition to the E2E traffic applied at the Uu interface to the SUT |
| UE + O-DU emulator | The UE + O-DU emulator is used to establish stateful connections with, and to generate or receive data and signaling traffic directly at the F1 connection to the O-CU within the O-RAN SUT.  The UE + O-DU emulator is typically designed for testing applications with certain test and diagnostic functions enabled for test and measurement purposes.  The UE + O-DU emulator is used to create background traffic driven by multiple UE connections for purposes of increasing the load on the O-CU in addition to the E2E traffic applied at the Uu interface to the SUT |
| 4G/5G Core or Core emulator | The 4G/5G core or core emulator is used to terminate 4G/5G NAS sessions, and to support core network procedures required for RAN (SUT) testing. 4G/5G core or core emulator must support end-to-end connection and data transfer between Application server and Real UE/UE emulator. |
| IMS Core or IMS Core emulator | The IMS Core or IMS core emulator is used to support voice and video calling services like VoLTE, ViLTE, VoNR, Video over NR and EPS Fallback using protocols like SIP and RTP. IMS core or IMS core emulator should interface with the 4G/5G core to setup dedicated bearers/QoS Flows to support voice and video calling services. |
| Application (traffic) server | The application (traffic) server is used as an endpoint for generation and/or termination of various data traffic streams to/from Real UE(s)/UE emulator. The application server should be capable to generate data traffic for the services under test.  The application server should be placed as close as possible to the core/core emulator, and connected to the core/core emulator via a transport link with sufficient capacity. |
| Protocol analyzer | The protocol analyzer is used for test results verification, and for troubleshooting and root cause analysis of failed tests. Note that if IPsec encryption is applied at the network interface, then it would not be possible to use the protocol analyzer without decryption of IPsec. |
| Network impairment emulator | The network impairment emulator is used for tests which require insertion of impairment (packet delay and/or jitter) at the network interface (e.g. Open fronthaul). |
| RF attenuators and/or Fading generator | RF attenuators are used for tests which require radio signal attenuation. Fading generators can be used to simulate specific radio channel conditions (e.g. Urban, Rural, High Speed Train). |
| RF shielded box/room | The RF shielded box/room is used for over the air (OTA) connectivity between the UE and SUT in the lab environment. The RF shielded box/room should support reliable MIMO testing, if MIMO is required. |
| Packet generation tool / DoS emulator | The packet generation tool / Denial of Service (DoS) emulator is used for DoS traffic generation of security tests. The tool must support crafting network traffic on network layers from 2 to 7, which conform to network protocols such as: Ethernet, IP, UDP, TCP, PTP, eCPRI, TLS, HTTP/HTTPS. The tool is intended to be deployable in various network segments (communication planes) according to the testing needs. |
| Packet capture tool | The packet capture tool is used to capture samples of data traffic for validation, analysis, and troubleshooting. In the case of security test cases it can be used to capture samples of legitimate traffic, which then can be used as templates for fuzzing attacks. The tool must support capturing network traffic on network layers from 2 to 7, which conform to network protocols such as: Ethernet, IP, UDP, TCP, PTP, eCPRI, TLS, QUIC, HTTP/HTTPS. The tool is intended to be deployable in various network segments (communication planes) according to the testing needs. |
| Network tap | A network tap is a hardware or software device which provides access and visibility to the data flowing across a computer network. |
| Fuzzing tool | The protocol fuzzing tool is used for unexpected protocol input generation of security tests. The tool must support mutating and replaying of captured network traffic on network layers from 2 to 7, which conform to network protocols such as: Ethernet, IP, UDP, TCP, PTP, eCPRI, TLS, HTTP/HTTPS. The tool is intended to be deployable in various network segments (communication planes) according to the testing needs. |
| Vulnerability scanning tool | The vulnerability scanning tool is used for blind exploitation of well-known vulnerabilities during security tests. The tool should rely on cyclically updated database of known vulnerabilities based on Common Vulnerabilities and Exposures (CVE) and should support scanning network services running on TCP/IP stack of protocols. The tool is intended to be deployable in various network segments (communication planes) according to the testing needs. |
| NFV benchmarking and resource exhaustion tool | The Network Function Virtualization (NFV) tool is used for O-Cloud system performance measurement and resource exhaustion type of DoS attack generation. This tool should be able to be deployed on any types of O-Cloud environment (public or private) with testing VNF(s) and/or CNF(s) support. |
| Energy meter | The energy meter measures the cumulative energy consumption over a period of time. The unit of measurement is Watt-hours or Joules. |

## Test report

Tests should be described in the test report with sufficient detail to allow the tests to be reproducible by different parties and to enable benchmarking and comparison. The unified reporting of test results is important for benchmarking and comparison of results. The following common **minimum set of configuration parameters and information** about the test environment shall be reported in each test report [3]:

* Carrier frequency
* Total transmission (effective) bandwidth and number of total RBs
* Duplex mode (e.g. FDD, TDD)
* Sub-carrier spacing
* Carrier prefix length
* Slot length
* Number of supported MIMO layers at both eNB/gNB and UE sides
* Antenna configuration (number of Tx/Rx antenna elements, e.g. 4T4R) at both eNB/gNB and UE sides
* Transmit power at antenna connectors at both eNB/gNB and UE sides
* Antenna gains at both eNB/gNB and UE sides
* DL/UL ratio (configuration) in case of TDD duplex mode
* Test UE position with respect to O-RU antenna (e.g. LOS/NLOS/nLOS) in case of field test
* Deployment scenario (e.g. indoor hotspot, macro/micro, dense urban, urban, rural) in case of field test
* List of utilized test and measurement equipment and tools (incl. logging tools, test UE(s)) including the type and version. The Operating Systems (incl. the version) used at end-user device and application server should be noted as well. If TCP performance has been measured, the setting of TCP configuration parameters should be also noted.
* Information about the SUTs (e.g. O-RU, O-DU, O-CU-CP, O-CU-UP) including the type, parameters, configuration, SW and HW versions, Interface profiles (e.g. Open fronthaul IOT profile [12]).

The template for a complete test report for non-O-RAN Badge testing can be found in Annex A. Any E2E testing for the purpose of seeking an O-RAN Badge must comply with the procedures defined in [42] and the report templates defined in [43]. Photos should also be taken as part of the test report in order to illustrate the test environment. Additional parameters and counters are specified in the description of each test in the subsequent clauses.

## Data traffic

This clause describes the full buffer and finite buffer traffic models that are utilized in some of the tests in this document.

The **full buffer traffic model** is characterized by a constant number of users in the cell during the test, wherein the buffers of the users' data flows always have unlimited amount of data to transmit. The model is preferred due to its simplicity.

In the **finite buffer traffic model**, a user is assigned a finite payload to transmit or receive when it arrives. The user arrival process of this model captures the fact that the users in the network are not simultaneously active at the same time, but they rather become active when they start a data session that require the download/upload of data. Examples of models are FTP traffic model 1/2/3 [14] largely used in 3GPP simulations.

Data throughput can be measured at different protocol layers. Each network protocol layer adds extra overhead (header information), thereby reducing the data throughput available to the layer above. The highest throughput is provided at the physical layer including user data and the overhead from higher protocol layers. The data throughput at the RLC (Radio Link Control) layer is independent from radio-specific overhead and therefore well-suited for comparison with other access technologies. The application layer throughput is the net throughput seen by user applications operating on top of either UDP, TCP or QUIC - for example, the typical FTP overhead is around 3-5%, typical HTTP overhead is around 30% compared to RLC throughput. Unless otherwise stated in this document, the reported throughput (user data rate) shall consider all the overhead (control channels, reference signals).

UDP (User Datagram Protocol), TCP (Transmission Control Protocol) and QUIC (Quick UDP Internet Connections) are typical transport layer protocols utilized in the tests.

**UDP** is a simple, connection-less transport layer protocol which does not guarantee error-checking and recovery. UDP throughput is more suitable for benchmarking as it is not affected by the system configuration parameters. UDP is also faster, lighter (less overhead) and more efficient than TCP.

**TCP** is reliable, connection-oriented transport layer protocol which includes error-checking and recovery, and guarantees data delivery with preserved order of data packets. The performance of a TCP connection can be impacted by various factors such as end-to-end latency, number of retransmissions, packet loss, and TCP configuration parameters such as window size, window scale, timestamps, etc. [6]. The default values of TCP configuration parameters can also vary in different Operation Systems (incl. different versions of the same OS) which are used at the end-user device (test UE) and application (traffic) server. It is recommended to use the same OS (incl. the version) with default setting at the end-user device (test UE) and application server. Since the settings and behavior of TCP connections cannot be easily unified and normalized, the measurement of TCP performance is recommended only as an illustrative indicator, and UDP performance should be used for the benchmarking and assessment of system performance.

**QUIC** (Quick UDP Internet Connections) is a general-purpose transport layer protocol built on top of UDP to support the next generation of application layer protocols. QUIC provides features like connection establishment, congestion control, stream multiplexing and forward error correction to provide a secure and reliable connection-oriented protocol over UDP. QUIC is being used as the standard transport mechanism for HTTP/3.

In addition, the following application layer protocols are utilized in the tests.

**Hypertext Transfer Protocol** (HTTP) is the application layer protocol used in the internet. HTTP is a stateless protocol which follows the request-response model between client and the server. The client places a request for a resource to the server, and the server responds back to the client with requested resource and/or the appropriate response code. HTTP's support for headers between the client-server makes this protocol simple, extensible, and powerful.

**Session Initiation Protocol** (SIP) is an application layer signalling protocol for real-time sessions like IP telephony. This is a text-based protocol which allows negotiation between two end points to initiate a session, maintain the session and terminate the session. SIP is the default signalling protocol used in the telecom network for VoLTE, ViLTE, VoNR and Video over NR.

**Real-time Transport Protocol** (RTP) is an application layer protocol used to transmit real-time data such as audio and video over IP network. RTP is the default data plane protocol used in the telecom network for services like VoLTE, ViLTE, VoNR and Video over NR. RTP does not guarantee Quality of Service but works in conjunction with Real Time Control Protocol (RTCP) to detect and convey packet loss and jitter information.

**File Transfer Protocol** (FTP) is an application layer protocol to transfer files on a computer network. FTP follows a client-server model where the client can upload the file to the server, or download he file from the server. FTP protocol uses two separate connections between the client and the server - one for control and the other one for data or transfer of file. FTP along with multiple variants of the protocol have become the de-facto standards to transfer file on the internet.

## Mobility classes

The following classes of mobility shall be used for the applicable tests [13]:

* Stationary: 0 kph
* Pedestrian: 0 kph to 10 kph (typical value 4 kph)
* Vehicular: 10 kph to 120 kph (typical value 50 kph)
* High speed vehicular: 120 kph to 500 kph (typical value 150 kph)

High speed vehicular speeds close to 500 kph are mainly used for high speed trains.

## Radio conditions

The radio signal quality is described by the radio parameters such as RSRP and SINR. These radio parameters are defined differently in LTE and 5G NR.

* **LTE RSRP** (Reference Signal Received Power) [7] is defined as the linear average over the power contributions (in [W]) of the resource elements that carry cell-specific reference signals (CRS) within the considered measurement frequency bandwidth. The RSRP is reported from UE back to eNB. The reporting range of RSRP is defined from -140dBm to -44dBm [8].
* **LTE SINR** (Signal to Noise and Interference Ratio) has not been formerly defined in the 3GPP specification. The UE does not send the results back to eNB. The SINR is measured and used only in UE. Specific implementations may vary, and it is up to the manufacturer to decide, how to implement this measurement. This is making difficult to compare results of different devices. In [7], SINR is defined as the linear average over the power contribution (in [W]) of the resource elements carrying cell-specific reference signals divided by the linear average of the noise and interference power contribution (in [W]) over the resource elements carrying cell-specific reference signals within the same frequency bandwidth.
* **5G SS-RSRP** (Synchronization Signal based Reference Signal Received Power) [7] is defined as the linear average over the power contributions (in [W]) of the resource elements that carry secondary synchronization (SS) signals. SS-RSRP is the equivalent of the RSRP parameter used in LTE systems. The reporting range of SS-RSRP is defined from -140dBm to -40dBm [9].
* **5G SS-SINR** [7] is defined as the linear average over the power contribution (in [W]) of the resource elements carrying secondary synchronisation signals divided by the linear average of the noise and interference power contribution (in [W]) over the resource elements carrying secondary synchronisation signals within the same frequency bandwidth. The SS-SINR is reported from UE back to gNB. The reporting range of SS-SINR is defined from -23dB to 40dB.

It is worth to note that in 5G, the Channel State Information Reference Signal (CSI-RS) can also be used for RSRP and SINR measurements. Due to different transmit powers of CSI-RS and SS, CSI-RS-based SINR and RSRP measurement values are usually greater than SS-based SINR and RSRP.

The minimum coupling loss (MCL) [2] between O-RU (antenna) and UE shall be ensured:

* **Macro cell** deployment scenario (wide area BS): MCL = 70dB corresponding to minimal O-RU (antenna) to UE distance along the ground equal to around 35 m
* **Small cell** (micro cell) deployment scenario (medium range BS): MCL = 53dB corresponding to minimal O-RU (antenna) to UE distance along the ground equal to around 5 m
* **Pico cell** deployment scenario (local area BS): MCL = 45dB corresponding to minimal O-RU (antenna) to UE distance along the ground equal to around 2 m

The radio parameters (RSRP, SINR) should be measured across the entire range covering scenarios from cell centre to cell edge. Based on the test results, the RSRP and SINR distribution statistics can be calculated and described as a cumulative distribution function (CDF) curve. According to the CDF curve, the four types of radio conditions can be defined as: excellent (95%-100%), good (80%-90%), fair (40%-60%) and poor (5%-15%) [3]. Table 4-2 shows the RSRP and SINR thresholds for various radio conditions.Table 4-2 RSRP and SINR thresholds for various radio conditions

Note that the RSRP values should primarily be used for UL assessments, and the SINR values for DL assessment.

Table 4-2 RSRP and SINR thresholds for various radio conditions

|  |  |  |  |
| --- | --- | --- | --- |
| Radio conditions | RSRP (dBm)  SS-RSRP (dBm) | DL SINR (dB)  DL SS-SINR (dB) |  |
| Excellent  (cell centre) | > -75 | > 25 | * Utilization of the highest possible MCS, transport block size and MIMO rank * Peak performance measurements * Negligible interference from neighbor cells |
| Good | -75 to -90  (typical value = -85) | 15 to 20  (typical value = 17) |  |
| Fair | -90 to -105  (typical value = -95) | 5 to 10  (typical value = 7) |  |
| Poor  (cell edge) | < -105  (typical value = -110) | < 5  (typical value = 3) | * Minimum performance measurements * Strong interference from neighbor cells |

There are many different factors that influence signal strength and quality during the field testing; these factors include, but are not limited, to the following:

* Proximity to the cellular tower (antenna)
* Load in neighbor cells
* Surrounding physical barriers (mountains, buildings, etc.)
* Weather conditions

## Inter-cell interference

Some tests in this document are conducted either in a single cell scenario without any inter-cell interference, or in a multi-cell scenario where the serving cell is surrounded by neighboring cells generating traffic load (interference on the serving cell) in the downlink or uplink directions.

Generating a realistic traffic load is important for meaningful results. As the number of real UEs are always a limiting factor, artificial (dummy) traffic load and interference generation may be used.

In the **single cell scenario**, the serving cell is isolated, and all the surrounding neighbor cells are turned off (neither control nor data channels are used).

In the **multi-cell scenario**, all the neighbor cells are turned on. The following load setups shall be used:

* Load 0% - all the surrounding neighbor cells are turned on without any data traffic and end-user device attached. Inter-cell interference is generated only on control channels (broadcasting, synchronization channels) without any inter-cell interference on data channels.
* Load 30% - all the surrounding neighbor cells are turned on with data traffic. Inter-cell interference is generated both on control and data channels. The level of interference on data channel is controlled by the amount of data traffic. The interference level of 30% in downlink means that 30% of downlink PRBs are randomly occupied with a dummy traffic. In uplink, this interference level corresponds to 3dB rise of IoT (Interference over Thermal) noise at the receiver side (i.e. eNB/gNB antenna(s)). The received interference noise from the UEs of neighbor cells uplink transmission should lead to 3dB rise of receiver's noise power [3].
* Load 50% - all the surrounding neighbor cells are turned on with data traffic. Inter-cell interference is generated both on control and data channels. The level of interference on data channel is controlled by the amount of data traffic. The interference level of 50% in downlink means that 50% of downlink PRBs are randomly occupied with a dummy traffic. In uplink, this interference level corresponds to 5dB rise of IoT (Interference over Thermal) noise at the receiver side (i.e. eNB/gNB antenna(s)).
* Load 70% - all the surrounding neighbor cells are turned on with data traffic. Inter-cell interference is generated both on control and data channels. The level of interference on data channel is controlled by the amount of data traffic. The interference level of 70% in downlink means that 70% of downlink PRBs are randomly occupied with a dummy traffic. In uplink, this interference level corresponds to 7dB rise of IoT (Interference over Thermal) noise at the receiver side (i.e. eNB/gNB antenna(s)).
* Load 100% - fully loaded multi-cell scenario generating the highest possible inter-cell interference. All the surrounding neighbor cells are turned on with data traffic. Inter-cell interference is generated both on control and data channels. The level of interference on data channel is controlled by the amount of data traffic. The interference level of 100% in downlink means that 100% of downlink PRBs are occupied with a dummy traffic. In uplink, this interference level corresponds to 9dB rise of IoT (Interference over Thermal) noise at the receiver side (i.e. eNB/gNB antenna(s)).

## Spectral efficiency

The spectral (or spectrum) efficiency (SE) is an important criterion for fair performance assessment and benchmarking of different systems when various transmission bandwidths, duplex modes (FDD/TDD) and TDD DL/UL configurations are normalized.

The spectral efficiency is calculated by dividing the data throughput by the aggregated channel bandwidth (incl. guard bands) in DL or UL assuming single user and FDD duplex mode. The corresponding link frame structure is fully (100%) utilized in frequency and time domains.

$$SE\_{FDD\\_DL} \left[{bps}/{Hz}\right]=\frac{DL data throughput [bps]}{DL channel bandwidth [Hz]}$$

$$SE\_{FDD\\_UL} \left[{bps}/{Hz}\right]=\frac{UL data throughput [bps]}{UL channel bandwidth [Hz]}$$

In case of TDD where the same spectrum is used at different times for the uplink and downlink, the spectral efficiency is in addition multiplied by the fraction of resources (slots and symbols, not including switching gap) allocated to the particular link direction within 10ms radio frame.

$$SE\_{TDD\\_DL} \left[{bps}/{Hz}\right]=\frac{DL data throughput [bps]}{channel bandwidth [Hz]}\*\frac{number of total symbols per frame}{number of DL symbols per frame}$$

$$SE\_{TDD\\_UL} \left[{bps}/{Hz}\right]=\frac{UL data throughput [bps]}{channel bandwidth [Hz]}\*\frac{total number of symbols per frame}{number of UL symbols per frame}$$

# Functional tests

## Functional tests introduction

This clause describes the tests evaluating and assessing the functionality of the radio access network from a network end-to-end perspective. The focus of the testing is on the end-user functionality based on 3GPP and O-RAN specifications. Pass-fail criteria are defined for the tests wherever possible.

The general test methodologies and configurations are mentioned in Clause 4.

Unless otherwise stated in the clause, the tests are suitable and can be conducted in both laboratory as well as field environments, with pros and cons of both environments as described in Clause 4.

The following end-to-end functional tests are defined in this clause as an extension of the NGMN testing framework [3]:

**Table 5-1: E2E Functionality Test Case Summary**

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
|  | | | Applicable technology | | |
| Test case | | Functional group | LTE | NSA | SA |
|  |
| Test ID | E2E Functionality Assessment |  |  |  |  |  |
| 5.1 | LTE/5G NSA Attach and detach of single UE | Accessibility | Y | Y | N/A |  |
| 5.2 | LTE/5G NSA Attach and detach of multiple UEs | Accessibility | Y | Y | N/A |  |
| 5.3 | 5G SA Registration and deregistration of single UE | Accessibility | N/A | N/A | Y |  |
| 5.4 | Intra-Distributed Unit mobility | Mobility | N/A | Y | Y |  |
| 5.5 | Inter-Distributed Unit mobility | Mobility | N/A | Y | Y |  |
| 5.6 | Inter-Central Unit mobility | Mobility | N/A | Y | Y |  |
| 5.7 | 5G SA registration and deregistration to Single network slices | Accessibility | N/A | N/A | Y |  |
| 5.8 | 5G SA registration and deregistration to multiple network slices | Accessibility | N/A | N/A | Y |  |
| 5.9 | Idle Mode Intra- O-DU mobility | Mobility | N/A | N/A | Y |  |
| 5.10 | Idle Mode Inter- O-DU mobility | Mobility | N/A | N/A | Y |  |
| 5.11 | Idle Mode Inter- O-CU mobility | Mobility | N/A | N/A | Y |  |
| 5.12 | 5G/4G Inter-System mobility - 5GS to EPS handover | Mobility | Y | N/A | Y |  |
| 5.13 | 5G/4G Inter-System mobility - EPS to 5GS handover | Mobility | Y | N/A | Y |  |

The test description, setup and procedures are detailed in the following clauses for each test case.

## LTE/5G NSA attach and detach of single UE

### Test description and applicability

The purpose of this test is to validate E2E O-RAN C-plane functionality with a single UE. These tests are valid for either LTE or 5G NSA. In this test scenario, the successful attach and detach procedure shall be validated by the "Power ON" and "Power OFF" of a single UE, as described in the following specifications:

1. LTE Attach as per 3GPP TS 23.401 [29], Clause 5.3.2.1 E-UTRAN Initial Attach
2. LTE Detach as per 3GPP TS 23.401 [29], Clause 5.3.8.2.1 UE-initiated Detach procedure for E-UTRAN
3. 5G NSA Attach as per 3GPP TS 23.401 [29], Clause 5.3.2.1 E-UTRAN Initial Attach and 3GPP TS 37.340 [30] Clause 10.2.1 EN-DC (Secondary Node Addition)
4. 5G NSA Detach as per 3GPP 23.401, Clause 5.3.8.2.1 UE-initiated Detach procedure for E-UTRAN and 3GPP TS 37.340 [30] Clause 10.4.1 EN-DC (Secondary Node Release) [29]

The test procedure shall be performed in excellent radio conditions for 10 iterations. Attach success rate, detach success rate, and attach latency shall be measured and captured.

### Test setup and configuration

The test setup is a single cell scenario (i.e. isolated cell without any inter-cell interference - see Clause 4.7) with a stationary UE (real or emulated) placed under excellent radio conditions as defined in Clause 4.6, using LTE RSRP (for LTE) or 5G SS-RSRP (for 5G NSA) as the metric. Within the cell there shall be only one active UE. The test is suitable for lab as well as field environments.

**Test configuration**: The test configuration is not specified. The utilized test configuration (parameters) shall be recorded in the test report.

**Laboratory setup**: The radio conditions experienced by the UE can be modified using a variable attenuator/fading generator inserted between the antenna connectors (if available) of the O-RU and the UE, or appropriately emulated using a UE emulator. The test environment should be setup to achieve excellent radio conditions (LTE RSRP (for LTE) or 5G SS-RSRP (for 5G NSA) as defined in Clause 4.6) for the UE, but the minimum coupling loss (see Clause 4.6) should not be exceeded. The UE should be placed inside an RF shielded box or RF shielded room if the UE is not connected via cable.

**Field setup**: The UE is placed in the centre of the cell close to the radiated eNB/gNB antenna(s), where excellent radio conditions (LTE RSRP (for LTE) or 5G SS-RSRP (for 5G NSA) as defined in Clause 4.6) should be observed. The minimum coupling loss (see Clause 4.6) should not be exceeded.

Please refer to Figure 6-1 for the E2E test setups for LTE and 5G NSA.

### Test procedure

The test steps below are applicable for either LTE or 5G NSA:

1. The test setup is configured according to the test configuration. The test configuration shall be recorded in the test report. The serving cell under test is activated and unloaded. All other cells are powered off.
2. The UE (real or emulated UE) is placed under excellent radio conditions (Cell centre close to radiated eNB/gNB Antenna) as defined by LTE RSRP (for LTE) or 5G SS-RSRP (for 5G NSA) in Clause 4.6.
3. The End-to-end setup shall be operational for LTE or 5G NSA as applicable for the test scenario, and there should not be any connectivity issues.
4. Start the logs to capture the call flow and signalling messages
5. "Power ON" the UE to attach to the LTE or 5G NSA cell. Wait for a successful attach.
6. "Power OFF" the connected UE to detach from the network. Wait for a successful detach.
7. Stop and save the test logs. The logs shall be captured and kept for test result reference and measurements
8. Repeat steps 4 to 7, for a total of 10 times and record the KPIs mentioned in Clause 5.1.4.

### Test requirements (expected results)

In addition to the common minimum set of configuration parameters (see Clause 4.3), the following metrics and counters shall be captured and reported in the test report for performance assessment.

* Radio parameters such as RSRP, RSRQ
* KPIs mentioned in Table 5-2 and Table 5-3

Validate the successful procedures from the collected logs. Expected success rate for Attach/Detach and Secondary Node Addition/Release KPI is 100%. The attach-detach procedure shall pass 10 consecutive times to mark the test case as passing. The gap analysis shall be provided for the measured and the expected target KPIs.

* LTE Attach-Detach test case validation and KPI measurements
  + - Validate successful attach 10 times with LTE cell (Refer to 3GPP TS 23.401 [29], Clause 5.3.2.1 E-UTRAN Initial Attach). In the UE logs or applications installed on UE, check that UE is attached to correct cell (example PCI, Global eNB ID, ARFCN as per test configuration)
    - Measure the attach success rate by validating attach request and attach complete for each iteration. Record the attach success rate in Table 5-2
    - Measure the attach latency by calculating the time between attach request to attach complete. Capture the latency for each iteration and sort the latency value observed for each iteration in ascending order. Record the Minimum, Average (Sum of all latency value/ Total Iterations, Total Iterations are 10 in this case) and Maximum latency value observed in Table 5-3
    - Validate successful detach attach with LTE cell (Refer to 3GPP TS 23.401 [29], Clause 5.3.8.2.1 UE-initiated Detach procedure for E-UTRAN). Signalling connection release shall be validated from message flow (UE context release and RRC connection release messages). Measure the detach success rate by validating detach request and detach accept for each iteration. Record the detach success rate in Table 5-2
  + 5G NSA Attach-Detach test case validations and KPI measurements
    - Validate successful multiple attaches with 5G NSA cell (3GPP TS 23.401 [29], Clause 5.3.2.1 E-UTRAN Initial Attach and 3GPP TS 37.340 [30] Clause 10.2.1 EN-DC for Secondary Node Addition)). In the UE logs or applications installed on UE, check that UE is attached to correct cell (example PCI, Global eNB ID/Global gNB, ARFCN/NR-ARFCN as per test configuration for LTE /5G cells )
    - Measure the attach success rate by validating attach request and attach complete for each iteration. Also measure the secondary node addition success rate by validating the SgNB addition request and SgNB reconfiguration complete as per flow 3GPP TS 37.340 [30] Clause 10.2.1 EN-DC for each iteration. Record the attach success rate and secondary node addition success rate in Table 5-2
    - Validate successful detach attach (LTE Detach and 5G Secondary Node release) with 5G NSA cell (Refer to 3GPP TS 23.401 [29], Clause 5.3.8.2.1 UE-initiated Detach procedure for E-UTRAN and 3GPP TS 37.340 [30] Clause 10.4.1 EN-DC for Secondary Node Release)). Signalling connection release shall be validated the from message flow (UE context release and RRC connection release messages). 5G secondary node shall also get released successfully. Measure the detach success rate by validating detach request and detach accept for each iteration. Record the detach success rate in Table 5-2

**Table 5-2 KPI to be captured for single UE attach-detach test case**

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| LTE KPI | | 5G NSA KPI | | |
| Attach Success Rate | Detach Success Rate | Attach Success Rate | Detach Success Rate | SgNB addition Success rate |
|  |  |  |  |  |

**Table 5-3 Latency KPI for attach**

|  |  |  |
| --- | --- | --- |
| LTE Attach Time (millisecond) | | |
| Minimum | Maximum | Average |
|  |  |  |

## LTE/5G NSA attach and detach of multiple UEs

### Test description and applicability

The purpose of this test is to validate E2E O-RAN C-plane functionality with multiple UEs. These tests are valid for either LTE or 5G NSA. In this test scenario, the successful attach and detach procedure shall be validated by the "Power ON" and "Power OFF" of multiple (at least 2) UEs, as described in the following specifications:

1. LTE Attach as per 3GPP TS 23.401 [29], Clause 5.3.2.1 E-UTRAN Initial Attach
2. LTE Detach as per 3GPP TS 23.401 [29], Clause 5.3.8.2.1 UE-initiated Detach procedure for E-UTRAN
3. 5G NSA Attach as per 3GPP TS 23.401 [29], Clause 5.3.2.1 E-UTRAN Initial Attach and 3GPP TS 37.340 [30] Clause 10.2.1 EN-DC (Secondary Node Addition)
4. 5G NSA Detach as per 3GPP 23.401, Clause 5.3.8.2.1 UE-initiated Detach procedure for E-UTRAN and 3GPP TS 37.340 [30] Clause 10.4.1 EN-DC (Secondary Node Release) [29]

The test procedure shall be performed in excellent radio conditions for 10 iterations. Attach success rate, detach success rate, and attach latency shall be measured and captured.

### Test setup and configuration

The network setup is a single cell scenario (i.e. isolated cell without any inter-cell interference - see Clause 4.7) with multiple stationary UEs (real or emulated) placed under excellent radio conditions as defined in Clause 4.6, using LTE RSRP (for LTE) or 5G SS-RSRP (for 5G NSA) as the metric. The test is suitable for lab as well as field environments.

**Test configuration**: The test configuration is not specified. The utilized test configuration (parameters) shall be recorded in the test report.

**Laboratory setup**: The radio conditions experienced by the UEs can be modified using variable attenuators/fading generator inserted between the antenna connectors (if available) of the O-RU and the UE, or appropriately emulated using a UE emulator. The test environment should be setup to achieve excellent radio conditions (LTE RSRP (for LTE) or 5G SS-RSRP (for 5G NSA) as defined in Clause 4.6) for the UEs, but the minimum coupling loss (see Clause 4.6) should not be exceeded. The UEs should be placed inside an RF shielded box or RF shielded room if the UEs are not connected via cable.

**Field setup**: The multiple UEs are placed in the centre of the cell close to the radiated eNB/gNB antenna(s), where excellent radio conditions (LTE RSRP and 5G SS-RSRP as defined in Clause 4.6) should be observed. The minimum coupling loss (see 4.6) should not be exceeded.

Please refer to Figure 6-1 for the E2E test setups for LTE and 5G NSA.

### Test procedure

The test steps below are applicable for either LTE or 5G NSA:

1. The test setup is configured according to the test configuration. The test configuration shall be recorded in the test report. The serving cell under test is activated and unloaded. All other cells are powered off.
2. The multiple UEs (real or emulated) are placed under excellent radio conditions (Cell centre close to radiated eNB/gNB Antenna) as defined by LTE RSRP (for LTE) or 5G SS-RSRP (for 5G NSA) in Clause 4.6.
3. The End-to-end setup shall be operational for LTE or 5G NSA as applicable for the test scenario, and there shall not be any connectivity issues.
4. Start the logs to capture the call flow and signalling messages.
5. "Power ON" the multiple connected UEs to attach to the LTE or 5G NSA cell. Wait for the successful attach of all UEs.
6. "Power OFF" the multiple UEs to detach from the network. Wait for the successful detach of all UEs
7. Stop and save the test logs. The logs shall be captured and kept for test result reference and measurements
8. Repeat steps 4 to 7, for a total of 10 times and record the KPIs mentioned in Clause 5.2.4

### Test requirements (expected results)

In addition to the common minimum set of configuration parameters (see Clause 4.3), the following metrics and counters shall be captured and reported in the test report for performance assessment.

* Radio parameters such as RSRP, RSRQ
* KPIs mentioned in Table 5-4 and Table 5-5

Validate the successful procedures for each UE from the collected logs. Expected success rate for Attach/Detach and Secondary Node Addition/Release KPI is 100%. The attach-detach procedure shall pass 10 consecutive times for all UEs to mark the test case as passing. The gap analysis shall be provided for the measured and the expected target KPIs.

* + LTE Attach-Detach test case validations and KPI measurements
    - Validate successful attach of each UE 10 times with LTE cell (Refer to 3GPP TS 23.401 [29], Clause 5.3.2.1 E-UTRAN Initial Attach). In the UE logs or applications installed on UE, check that UE is attached to correct cell (example PCI, Global eNB ID, ARFCN as per test configuration)
    - Measure the attach success rate by validating attach request and attach complete for each iteration. Record the attach success rate in Table 5-4 for each UE.
    - Measure the attach latency by calculating the time between Attach Request to attach complete. Capture the latency for each iteration and sort the latency value observed for each iteration in ascending order. Record the Minimum, Average (Sum of all latency value/ Total Iterations, Total Iterations are 10 in this case) and Maximum latency value observed in Table 5-5 for each UE
    - Validate successful detach attach with LTE cell (Refer to 3GPP TS 23.401 [29], Clause 5.3.8.2.1 UE-initiated Detach procedure for E-UTRAN). Signalling connection release shall be validated from message flow (UE context release and RRC connection release messages). Measure the detach success rate by validating detach request and detach accept for each iteration. Record the detach success rate in Table 5-4
  + 5G NSA Attach-Detach test cases validations and KPI measurements
    - Validate successful multiple UE attach with 5G NSA cell (3GPP TS 23.401 [29], Clause 5.3.2.1 E-UTRAN Initial Attach and 3GPP TS 37.340 [30] Clause 10.2.1 EN-DC for Secondary Node Addition)). In the UE logs or applications installed on UE, check that UE is attached to correct cell (example PCI, Global eNB ID/Global gNB, ARFCN/NR-ARFCN as per test configuration for LTE /5G cells )
    - Measure the attach success rate by validating attach request and attach complete for each iteration. Also measure the secondary node addition success rate by validating the SgNB addition request and SgNB reconfiguration complete as per flow 3GPP 37.340 Clause 10.2.1 EN-DC for each iteration. Record the attach success rate and secondary node addition success rate in Table 5-4 for each UE
    - Validate successful detach attach (LTE Detach and 5G Secondary Node release) with 5G NSA cell (Refer to 3GPP TS 23.401 [29] Clause, 5.3.8.2.1 UE-initiated Detach procedure for E-UTRAN and 3GPP TS 37.340 [30] Clause 10.4.1 EN-DC for Secondary Node Release)). Signalling connection release shall be validated from the message flow (UE context release and RRC connection release messages). 5G secondary node shall also get released successfully. Measure the detach success rate by validating detach request and detach accept for each iteration. Record the detach success rate in Table 5-4 for each UE

**Table 5-4 KPI to be captured for multi-UE attach-detach test case**

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| LTE KPI | | 5G NSA KPI | | |
| Attach Success Rate | Detach Success Rate | Attach Success Rate | Detach Success Rate | SgNB addition Success rate |
|  |  |  |  |  |

**Table 5-5 Latency KPI for multi-UE attach**

|  |  |  |
| --- | --- | --- |
| LTE Attach Time (millisecond) | | |
| Minimum | Maximum | Average |
|  |  |  |

## 5G SA registration and deregistration of single UE

### Test description and applicability

The purpose of the test is to verify the full registration and de-registration procedure with a single UE. The test also verifies the PDU session establishment and release procedures.

The test focuses on the procedure of 'Initial registration' as defined in 3GPP TS 23.502 [28] Clause 4.2.2.2.2.

The test focuses on the procedure of 'UE-initiated de-registration' as defined in 3GPP TS 23.502 [28] Clause 4.2.2.3.2.

This test also validates PDU session establishment and release procedures.

The test validates the 3GPP standard registration/de-registration procedure and the latency of the procedure. Bi-directional data transmission shall be observed before the de-registration procedure to verify the stability of the network slice.

### Test setup and configuration

The test setup is a single cell scenario (i.e. isolated cell without any inter-cell interference - see Clause 4.7) with a stationary UE (real or emulated) placed under excellent radio conditions as defined in Clause 4.6, using SS-RSRP as the metric. Within the cell there shall be only one active UE. The application server should be placed as close as possible to the core/core emulator and connected to the core/core emulator via a transport link with enough capacity so as not to limit the expected data throughput. The UE, RAN, and 5G Core shall support the network slicing, at least for one Single Network Slice Selection Assistance Information (S-NSSAI). The test is suitable for lab as well as field environments.

**Test configuration**: The test configuration is not specified. The utilized test configuration (parameters) shall be recorded in the test report.

**Laboratory setup**: The radio conditions experienced by the UE can be modified using a variable attenuator/fading generator inserted between the antenna connectors (if available) of the O-RU and the UE, or appropriately emulated using a UE emulator. The test environment should be setup to achieve excellent radio conditions (using SS-RSRP as defined in Clause 4.6) for the UE, but the minimum coupling loss (see Clause 4.6) should not be exceeded. The UE should be placed inside an RF shielded box or RF shielded room if the UE is not connected via cable.

**Field setup**: The UE is placed in the centre of cell close to the radiated eNB/gNB antenna(s), where excellent radio conditions (SS-RSRP as defined in Clause 4.6) should be observed. The minimum coupling loss (see 4.6) should not be exceeded.

Please refer Figure 6-1 for E2E test setup for 5G SA.

### Test procedure

Below are the test procedure steps

1. The test setup is configured according to the test configuration. The test configuration shall be recorded in the test report. The serving cell under test is activated and unloaded. All other cells are powered off.
2. Power on the UE and the UE shall send REGISTRATION REQUEST message. UE shall successfully register to the 5G SA network.
3. Full-buffer UDP bi-directional data transmission (see Clause 4.4) between the application server and UE is initiated.
4. The registration procedure messages shall be captured, and the latency of the registration procedure shall be measured and recorded in Table 5-6. The duration of the test shall be at least 3 minutes when the throughput is stable. The PDU session establishment procedure messages shall also be captured and verified.
5. Power off the UE and UE shall send DEREGISTRATION REQUEST message. UE shall successfully de-register from the 5G SA network.
6. The de-registration procedure messages shall be captured, and the latency of de-registration procedure shall be measured and recorded in Table 5-6. The PDU session release procedure messages shall also be captured and verified.
7. Repeat steps 2 to 6, for a total of 10 times and record the KPIs mentioned in Table 5-6.

### Test requirements (expected results)

In addition to the common minimum set of configuration parameters (see Clause 4.3), the following metrics and counters shall be captured and reported in the test report for the performance assessment.

* Radio parameters such as RSRP, RSRQ, CQI, PDSCH SINR (average sample per second)
* Latency KPI mentioned in Table 5-6

Validate from collected logs registration (as per 3GPP TS 23.502 [28] Clause 4.2.2.2.2) and deregistration (as per 3GPP TS 23.502 [28] Clause 4.2.2.3.2) procedures and also validate 'UE Requested PDU Session Establishment for Non-roaming and Roaming with Local Breakout case' as defined in 3GPP TS 23.502 [28] Clause 4.3.2.2.1, and the procedure of 'PDU Session Release for UE or network requested PDU Session Release for Non-Roaming and Roaming with Local Breakout case' as defined in 3GPP TS 23.502 [28] Clause 4.3.4.2. The procedure shall pass 10 consecutive times to mark the test case as passing. The gap analysis shall be provided for the measured and the expected target KPIs.

The Registration Time latency is measured by calculating the time between Registration Request to Registration Complete; The De-registration Time latency is measured by calculating the time between De-registration Request to Signaling Connection Release. Capture the latency for each iteration and sort the latency value observed for each iteration in ascending order. Record the Minimum, Average (Sum of all latency value/ Total Iterations, Total Iterations are 10 in this case) and Maximum latency value observed in Table 5-6.

**Table 5-6 5G SA registration/de-registration latency KPI record table of single UE**

|  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| KPI | Repeat Times | | | | | | | | | | Calculation | | |
| 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 | Minimum | Maximum | Average |
| Registration Time (single slice) (millisecond) |  |  |  |  |  |  |  |  |  |  |  |  |  |
| De-registration Time (single slice) (millisecond) |  |  |  |  |  |  |  |  |  |  |  |  |  |

## Intra-O-DU mobility

### Test description and applicability

The purpose of the test is to verify intra O-CU, intra O-DU handover of a UE. The test validates the O-CU, O-DU, and O-RU functionality in handling inter-cell mobility when two O-RUs are connected to an O-DU. The test measures the DL / UL throughput variations, handover latency, handover interruption and packet loss during the mobility. Test scenarios are classified into two groups as Standalone (SA) and Non-Standalone (NSA).

Intra O-DU mobility with SA shall follow 3GPP TS 38.401 [29], Clause 8.2.1 and 3GPP TS 38.473 [32], Clause 8.3.4 for the call flow. Intra O-DU mobility with NSA shall follow 3GPP TS 38.401 [29], Clause 8.2.1, 3GPP TS 38.473 [32], Clause 8.3.4 and 3GPP TS 37.340 [30] for the call flow.

### Test setup and configuration

In NSA mode, the test setup consists of one 4G cell (MeNB) and two 5G cells (SgNB). Each 5G cell is associated with a single O-DU, connected to a single O-CU, refer to Figure 5-1 for the test setup topology. The test environment shall have a single UE with active data traffic. The application server should be placed as close as possible to the core and connected to the core via a transport link with enough capacity.

![Diagram  Description automatically generated](../assets/images/abc4c19af450.png)

**Figure 5-1 Intra O-DU mobility test bed for NSA mode of operation.**

In SA, the test setup consists of two 5G cells, each one associated with the same O-DU and O-CU connected to a 5G core network (see Figure 5-2 for the test setup topology). The test environment shall have a single UE with active data traffic. The application server should be placed as close as possible to the core and connected to the core via a transport link with enough capacity.

![Diagram  Description automatically generated](../assets/images/269a8dab9a0d.png)

**Figure 5-2 Intra O-DU mobility test bed for SA mode of operation.**

**Test configuration**: The test configuration is not specified. The utilized test configuration (parameters) shall be recorded in the test report.

**Laboratory setup**: The radio conditions of UE can be modified by a variable attenuator/fading generator inserted between the antenna connectors (if available) of the O-RU and the UE, or appropriately emulated using a UE emulator. The radio conditions of the UE are initially set to excellent using RSRP as the metric. The minimum coupling loss (see Clause 4.6) should not be exceeded. The UE should be placed inside and RF shielded box or RF shielded room if the UE is not connected via cable. The UE handover between the cells can be achieved by changing the radio signal strength of the source and target cells using variable attenuators.

**Field setup**: The drive route with source and target cells should be defined. The UE is placed in the centre of cell close to the radiated eNB/gNB antenna(s), where excellent radio conditions (using RSRP as the metric as defined in Clause 4.6) should be observed. The minimum coupling loss (see 4.5) should not be exceeded. The change in radio conditions is achieved by moving the UE along the drive route from source cell to target cell.

### Test procedure

Below are the NSA mode steps

1. The 4G and 5G cell setups are configured following Clause 5.4.2.
2. All the three cells are configured according to the test configuration. The cells are activated and unloaded.
3. Both 5G cells are configured as neighbors to each other, so that the UE can trigger measurement events for handover.
4. The source (cell 1) and target (cell 2) 5G cells for intra O-DU mobility shall be depicted as in Figure 5-1.
5. The test UE is under source 5G cell coverage.
6. Power on the UE and UE shall successfully complete the LTE attach followed by successful SgNB addition to source 5G cell.
7. The full-buffer UDP bi-directional data transmission (see 4.4) from the application server is initiated.
8. The UE shall move from the source 5G cell to the target 5G cell to trigger a handover.

Below are the SA Mode steps

1. The 5G cell setup is configured following Clause 5.4.2.
2. Configure two 5G cells within an O-DU according to the test configuration. The cells are activated and unloaded.
3. Both 5G cells are configured as neighbors to each other, so that the UE can trigger measurement events for handover.
4. The source and target 5G cells for intra O-DU mobility shall be depicted as in Figure 5-2.
5. The test UE is under source cell coverage.
6. Power on the UE and UE shall successfully register to source 5G cell.
7. The full-buffer UDP bi-directional data transmission (see 4.4) from the application server is initiated.
8. The UE shall move from source cell to target cell to perform handover.

### Test requirements (expected results)

The intra O-DU handover call flow shall be verified for both NSA and SA use cases. Following functionalities shall also be validated:

* PDU Session is established when full-buffer bi-directional data transmission is initiated. (Only in SA Mode)
* Handover is successful.

In addition to the common minimum set of configuration parameters defined (see Clause 4.3), the following metrics and counters shall be recorded and reported for the performance assessment.

eNB/gNB/Application server side:

* Transmit downlink throughput measured at application server in time (average per second)
* Received uplink throughput measured at application server in time (average per second)
* Uplink packet loss percentage during handover.
* Uplink BLER, MCS, MIMO rank (RI) on PUSCH in time (average per second)

UE side:

* Radio parameters such as RSRP, RSRQ, SINR on PDSCH in time (average per second)
* Downlink BLER, MCS, MIMO rank (RI) on PDSCH in time (average per second).
* Received Downlink throughput (L1 and L3 PDCP layers) in time (average per second).
* Downlink packet loss percentage during handover
* Uplink throughput (L1 and L3 PDCP layers) in time (average per second)
* Channel utilization, i.e. Number allocated/occupied downlink and uplink RBs in time (per TTI/average per second) and Number of allocated/occupied slots in time.
* KPIs related to Handover failure, Call drop, Handover latency, Handover interruption time.

## Inter-O-DU mobility

### Test description and applicability

The purpose of the test is to verify intra O-CU, inter O-DU handover of a UE. The test validates the O-CU, O-DU functionality in handling Inter O-DU handover. The test measures the DL / UL throughput variations, handover latency, handover interruption and packet loss during the handover procedure. Test scenarios are classified into two groups as SA (Standalone) and NSA (Non-Standalone).

Inter O-DU mobility with SA shall follow 3GPP TS 38.401 [31], Clause 8.2.1 and Inter O-DU mobility with NSA shall follow 3GPP TS 38.401[31], Clause 8.2.2 for the call flow.

3GPP 38.401 v15.7.0 has introduced a new CR 0104, which has modified the initial part of call flow for Clause 8.2.2. The ORAN system supporting 3GPP specification later than v15.7.0 shall follow Clause 8.2.2 of 3GPP TS 38.401 v15.7.0 or later to verify the inter O-DU handover.

### Test setup and configuration

In Non-Standalone Mode, the test setup consists of one 4G Cell (MeNB) and two 5G cells (SgNB). Each 5G Cell is associated with different O-DUs, connected to the same O-CU. The test environment shall have a single UE with active data traffic. The application server should be placed as close as possible to the core and connected to the core via a transport link with enough capacity.

![Diagram  Description automatically generated](../assets/images/bbe698ee4796.png)

**Figure 5-3 Inter O-DU mobility test bed for NSA mode of operation.**

In standalone Mode, the test setup consists of two 5G cells, each one associated with a different O-DU, connected to the same O-CU. The test environment shall have a single UE with active data traffic. The application server should be placed as close as possible to the core and connected to the core via a transport link with enough capacity.

![Diagram  Description automatically generated](../assets/images/d31bb353c370.jpg)

**Figure 5-4 Inter O-DU mobility test bed for SA mode of operation**

**Test configuration**: The test configuration is not specified. The utilized test configuration (parameters) shall be recorded in the test report.

**Laboratory setup**: The radio conditions of UE can be modified by a variable attenuator/fading generator inserted between the antenna connectors (if available) of the O-RU and the UE, or appropriately emulated using a UE emulator. The radio conditions of UE are initially set to excellent. The minimum coupling loss (see Clause 4.6) should not be exceeded. The UE should be placed inside RF shielded box or RF shielded room if the UE is not connected via cable. The UE handover between the cells can be achieved by changing radio signal strength of source and target cells using variable attenuators.

**Field setup**: The drive route with source and target cells should be defined. The UE is placed in the centre of cell close to the radiated eNB/gNB antenna(s), where excellent radio conditions (RSRP as defined in Clause 4.6) should be observed. The minimum coupling loss (see 4.5) should not be exceeded. The change in radio conditions is achieved by moving the UE along the drive route from source cell to target cell.

### Test procedure

In Non-Standalone Mode

1. The 4G and 5G cell setups are configured following Clause 5.5.2.
2. All the three cells are configured according to the test configuration. The cells are activated and unloaded.
3. Both 5G cells are configured neighbors to each other, so that UE can trigger measurement events for handover.
4. The test UE is under source O-DU cell coverage.
5. Power on the UE and the UE shall successfully complete the LTE attach followed by successful SgNB addition to source O-DU.
6. The full-buffer UDP data transmission (see 4.4) from the application server is initiated.
7. The UE shall move from source O-DU to target O-DU to perform handover.

In Standalone Mode

1. The 5G cell setup is configured following Clause 5.5.2.
2. All the 5G cells are configured according to the test configuration. The cells are activated and unloaded.
3. Both 5G cells are configured neighbors to each other, so that UE can trigger measurement events for handover.
4. The test UE is under source O-DU cell coverage.
5. Power on the UE and the UE shall successfully register to source O-DU cell.
6. The full-buffer UDP data transmission (see 4.4) from the application server is initiated.
7. The UE shall move from source O-DU to target O-DU to perform handover.

### Test requirements (expected results)

The inter O-DU handover call flow shall be verified for both NSA and SA use cases. Following functionalities shall also be validated:

* PDU Session is established when full-buffer bi-directional data transmission is initiated. (Only in SA Mode)
* Handover is successful.

In addition to the common minimum set of configuration parameters defined (see Clause 4.3), the following metrics and counters shall be recorded and reported for the performance assessment.

eNB/gNB/Application server side:

* Transmit downlink throughput measured at application server in time (average per second)
* Received uplink throughput measured at application server in time (average per second)
* Uplink packet loss percentage during handover.
* Uplink BLER, MCS, MIMO rank (RI) on PUSCH in time (average per second)

UE side:

* Radio parameters such as RSRP, RSRQ, SINR on PDSCH in time (average per second)
* Downlink BLER, MCS, MIMO rank (RI) on PDSCH in time (average per second).
* Received Downlink throughput (L1 and L3 PDCP layers) in time (average per second).
* Downlink packet loss percentage during handover
* Uplink throughput (L1 and L3 PDCP layers) in time (average per second)
* Channel utilization, i.e. Number allocated/occupied downlink and uplink RBs in time (per TTI/average per second) and Number of allocated/occupied slots in time.
* KPIs related to Handover failure, Call drop, Handover latency, Handover interruption time.

## Inter-O-CU mobility

### Test description and applicability

The purpose of the test is to verify inter O-CU handover of the UE. The test validates the O-CU, O-DU functionality in handling inter O-CU mobility connected to same 5G Core Network (in SA) or Master eNB (in NSA). The test measures the DL / UL throughput variations, handover latency, handover interruption and packet loss during the mobility. Test scenarios are classified into two groups as Standalone (SA) and Non-Standalone (NSA).

Inter O-CU mobility with SA- Xn based Handover call flow shall follow 3GPP TS 38.401 [31], Clause 8.9.4 and Clause 8.9.5. Inter O-CU mobility with NSA shall follow 3GPP TS 37.340 [30], Clause 10.5.1 for the call flow.

### Test setup and configuration

In non-standalone mode, the test setup consists of a 4G cell (MeNB) and two 5G cells (SgNB), each 5G cell is associated with a different O-DU and O-CU connected to the same 4G core network, refer to Figure 5-5 for the test setup topology. The test environment shall have single UE with active data traffic. The application server should be placed as close as possible to the core and connected to the core via a transport link with enough capacity.

![Diagram  Description automatically generated](../assets/images/dbd73d101678.png)

**Figure 5-5 Inter O-CU mobility test bed for NSA mode of operation**

In standalone mode, the test setup consists of two 5G cells, each one associated with a different O-DU and O-CU connected to same 5G Core network (see Figure 5-6 for the test setup topology). The test environment shall have a single UE with active data traffic. The application server should be placed as close as possible to the core and connected to the core via a transport link with enough capacity.

![Diagram  Description automatically generated](../assets/images/cac259e60fb5.png)

**Figure 5-6 Inter O-CU mobility test bed for SA mode of operation.**

**Test configuration**: The test configuration is not specified. The utilized test configuration (parameters) shall be recorded in the test report.

**Laboratory setup**: The radio conditions of UE can be modified by a variable attenuator/fading generator inserted between the antenna connectors (if available) of the O-RU and the UE, or appropriately emulated using a UE emulator. The radio conditions of UE are initially set to excellent. The minimum coupling loss (see Clause 4.6) should not be exceeded. The UE should be placed inside RF shielded box or RF shielded room if the UE is not connected via cable. The UE handover between the cells can be achieved by changing radio signal strength of source and target cells using variable attenuators.

**Field setup**: The drive route with source and target cells should be defined. The UE is placed in the centre of cell close to the radiated eNB/gNB antenna(s), where excellent radio conditions (RSRP as defined in Clause 4.6) should be observed. The minimum coupling loss (see 4.5) should not be exceeded. The change in radio conditions is achieved by moving the UE along the drive route from source cell to target cell.

### Test procedure

In Non-Standalone Mode

1. The 4G and 5G cell setups are configured following Clause 5.6.2.
2. Configure two 5G cells connected to different O-DU and O-CU according to the test configuration. The cells are activated and unloaded.
3. 5G cells are configured as neighbors to 4G cell, so that UE can trigger measurement events for mobility.
4. The source cell (source O-DU and source O-CU) is the cell where UE is initially placed as depicted in Figure 5-5.
5. Power on the UE and the UE shall successfully complete the LTE attach followed by successful SgNB addition to source 5G cell.
6. The full-buffer UDP bi-directional data transmission (see 4.4) from the application server is initiated.
7. The UE shall move from source 5G cell to target 5G cell.

In Standalone Mode

1. The 5G cell setup is configured following Clause 5.6.2.
2. Configure two 5G cells connected to different O-DU and O-CU according to the test configuration. The cells are activated and unloaded.
3. Both 5G cells are configured neighbors to each other, so that UE can trigger measurement events for handover.
4. The source cell (source O-DU and source O-CU) is the cell where UE is initially placed as depicted in Figure 5-6.
5. Power on the UE and UE shall successfully register to source 5G cell.
6. The full-buffer UDP bi-directional data transmission (see 4.4) from the application server is initiated.
7. The UE shall move from source cell to target cell to perform handover.

### Test requirements (expected results)

The inter O-CU handover call flow shall be verified for NSA use case. Following functionalities shall also be validated:

* PDU Session is established when full-buffer bi-directional data transmission is initiated. (Only in SA Mode)
* Handover is successful.

In addition to the common minimum set of configuration parameters defined (see Clause 4.3), the following metrics and counters shall be recorded and reported for the performance assessment

UE side:

* Radio parameters such as RSRP, RSRQ, SINR on PDSCH in time (average per second)
* Downlink BLER, MCS, MIMO rank (RI) on PDSCH in time (average per second).
* Received Downlink throughput (L1 and L3 PDCP layers) in time (average per second).
* Downlink packet loss percentage during handover
* Uplink throughput (L1 and L3 PDCP layers) in time (average per second)
* Channel utilization, i.e. Number allocated/occupied downlink and uplink RBs in time (per TTI/average per second) and Number of allocated/occupied slots in time.
* KPIs related to Handover failure, Call drop, Handover latency, Handover interruption time.

eNB/gNB/Application server side:

* Transmit downlink throughput measured at application server in time (average per second)
* Received uplink throughput measured at application server in time (average per second)
* Uplink packet loss percentage during handover.
* Uplink BLER, MCS, MIMO rank (RI) on PUSCH in time (average per second)

## Registration and deregistration to a single network slice

### Test description and applicability

The purpose of the test is to verify the full procedure of the registration and de-registration to the single eMBB network slice in the 5G SA network.

The test focuses on the procedure of 'Initial registration' as defined in 3GPP 23.502 Clause 4.2.2.2.2, with a single eMBB network slice. The network slice information (i.e., Network Slice Selection Assistance Information, NSSAI) defined in Table 5-7 shall be verified within the 3GPP standard registration procedure.

The test focuses on the procedure of 'UE-initiated de-registration' as defined in 3GPP 23.502 Clause 4.2.2.3.2, with a single eMBB network slice. Even though the network slice information is not included in the deregistration procedure, the mandatory IEs defined in Table 5-7 shall be verified within the 3GPP standard deregistration procedure.

The granularity of slice awareness is in PDU session level, so this test also verifies the PDU session establishment and release procedures.

The test measures not only the 3GPP standard registration/de-registration procedure but also the latency of the procedure. The bi-directional data transmission shall be involved before the de-registration procedure to verify the stability of the network slice.

### Test setup and configuration

**Laboratory setup**: The radio conditions of UE can be modified by a variable attenuator/fading generator inserted between the antenna connectors of O-RU and UE. The minimum attenuation of radio signal should be set to achieve the excellent radio conditions (RSRQ as defined in Clause 4.6), but the minimum coupling loss (see Clause 4.6) should not be exceeded.  The UE should be placed inside RF shielded box or RF shielded room if the UE is not connected via cable.

**Field setup**: The UE is placed in the centre of cell close to the radiated gNB antenna(s), where excellent radio conditions (RSRQ as defined in Clause 4.6) should be observed. The minimum coupling loss (see 4.6) should not be exceeded.

Please refer Figure 5-2 for E2E test setup for 5G SA.

### Test procedure

Below are the test procedure steps

1. The NR cells shall be configured in the initial conditions defined in Session 5.7.2.
2. Only one eMBB S-NSSAI (i.e., Slice/Service Type (SST) = 0x01) under the NSSAI shall be configured in UE, RAN, and 5G Core.
3. Power on the UE and UE shall send REGISTRATION REQUEST message. The only one requested S-NSSAI shall be included in the message with the configured value in step 2. And UE shall successfully register to the 5G SA network.
4. The full-buffer UDP bi-directional data transmission (see Session 4.4) between UE and the application server is initiated.
5. The registration procedure messages shall be captured to verify the mandatory IEs defined in Table 5-7, and the latency of registration procedure shall be measured and recorded in Table 5-9. The duration of the test should be at least 3 minutes when the throughput is stable. The PDU session establishment procedure messages shall also be captured and verified.
6. Power off the UE and UE shall send DEREGISTRATION REQUEST message. And UE shall successfully de-register from the 5G SA network.
7. The de-registration procedure messages shall be captured to verify the mandatory IEs defined in Table 5-8, and the latency of de-registration procedure shall be measured and recorded in Table 5-9. The PDU session release procedure messages shall also be captured and verified.
8. Repeat steps 3 to 7, 10 times and record the KPI mentioned in Table 5-9.

### Test requirements (expected results)

In addition to the common minimum set of configuration parameters (see Clause 4.3), the following metrics and counters shall be captured and reported in the test report for the performance assessment.

* Radio parameters such as RSRP, RSRQ, CQI, PDSCH SINR (average sample per second)
* Mandatory IEs mentioned in Table 5-7, and Table 5-8
* Latency KPI mentioned in Table 5-9

Validate from collected logs registration (as per 3GPP 23.502 Clause 4.2.2.2.2) and deregistration (as per 3GPP 23.502 Clause 4.2.2.3.2) procedure and also validate 'UE Requested PDU Session Establishment for Non-roaming and Roaming with Local Breakout case' as defined in 3GPP 23.502 Clause 4.3.2.2.1, and the procedure of 'PDU Session Release for UE or network requested PDU Session Release for Non-Roaming and Roaming with Local Breakout case' as defined in 3GPP 23.502 Clause 4.3.4.2.

Table 5-7 defines the verification steps along with validation of mandatory IEs for 5G SA registration procedure in single eMBB network slice.

**Table 5-7 5G SA Registration verification with mandatory IEs in single eMBB network slice**

| **St.** | **Procedure** | **Msg Flow** | **Expected Output** |
| --- | --- | --- | --- |
| 1 | RRCSetupComplete | **UE -> gNB** | Verify that UE sends only one S-NSSAI in IE *s-nssai-List and SST = '0x01' in the S-NSSAI to gNB.* |
| 2 | Registration Request | **UE -> AMF** | Verify that UE sends only one S-NSSAI in IE *Requested NSSAI to 5G AMF, and IE 5GS registration type = 'initial registration', SST* = *'0x01' in the S-NSSAI.* |
| 3 | Initial Context Setup Request | **AMF -> gNB** | Verify that *5G AMF* sends only one S-NSSAI in IE *Allowed NSSAI* and *S-NSSAI* (under parent IE *PDU Session Resource Setup Request Item*) to gNB, *and SST = '0x01' in the S-NSSAI.* |
| 4 | Registration Accept | **AMF -> UE** | Verify that *5G AMF* sends only one S-NSSAI in IE *Allowed NSSAI* and *Configured NSSAI* to UE, *SST = '0x01' in the S-NSSAI* and IE *Rejected NSSAI shall not exist.* |

Table 5-8 defines the verification steps along with validation of mandatory IEs for 5G SA deregistration procedure in single eMBB network slice.

**Table 5-8 5G SA Deregistration verification with mandatory IEs in single eMBB network slice**

|  |  |  |  |
| --- | --- | --- | --- |
| **St.** | **Procedure** | **Msg Flow** | **Expected Output** |
| 1 | De-registration Request | **UE -> AMF** | Verify that UE sends IE *De-registration type = 'Switch Off'* to 5G AMF*.* |

Table 5-9 defines the KPI record table of registration/ registration testing in single eMBB network slice.

**Table 5-9 Single eMBB Network Slice KPI record table**

|  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| KPI | Repeat Times | | | | | | | | | | Calculation | | |
| 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 | Minimum | Maximum | Average |
| Registration Time (single slice) (millisecond) |  |  |  |  |  |  |  |  |  |  |  |  |  |
| De-registration Time (single slice) (millisecond) |  |  |  |  |  |  |  |  |  |  |  |  |  |

## Registration and deregistration to multiple network slices

### Test description and applicability

The purpose of the test is to verify the full procedure of the registration and de-registration to multiple network slices (i.e., eMBB, URRLC, MIoT, V2X) in the 5G SA network.

The test focuses on the procedure of 'Initial registration' as defined in 3GPP 23.502 Clause 4.2.2.2.2, with multiple network slices. The network slice information (i.e., Network Slice Selection Assistance Information, NSSAI) defined in Table 5-10 shall be verified within the 3GPP standard registration procedure.

The test focuses on the procedure of 'UE-initiated de-registration' as defined in 3GPP 23.502 Clause 4.2.2.3.2, with multiple network slices. Even though the network slice information is not included in the deregistration procedure, and also the mandatory IEs defined in Table 5-11 shall be verified within the 3GPP standard deregistration procedure.

The granularity of slice awareness is in PDU session level, so this test also verifies the PDU session establishment and release procedures.

The test measures not only the 3GPP standard registration/de-registration procedure but also the latency of the procedure. The bi-directional data transmission shall be involved before the de-registration procedure to verify the stability of the network slice.

### Test setup and configuration

The network setup is single cell scenario (i.e. isolated cell without any inter-cell interference - see Clause 4.7) with stationary UE (real or emulated UE) placed in the excellent radio conditions as defined in Clause 4.6 - RSRQ should be considered in case of downlink. Within the cell there should be only one active UE. The application server(s) should be placed as close as possible to the core/core emulator and connected to the core/core emulator via transport link with enough capacity not limiting the expected data throughput. The test is suitable for lab as well as field environment. The UE, RAN, and 5G Core shall support the multiple Network Slice Selection Assistance Information (S-NSSAI). At least two network slices of eMBB, URRLC, MIoT, V2X shall be covered for this test. The test is suitable for lab as well as field environment.

**Test configuration**: The test configuration is not specified. The utilized test configuration (parameters) shall be recorded in the test report.

**Laboratory setup**: The radio conditions of UE can be modified by a variable attenuator/fading generator inserted between the antenna connectors of O-RU and UE. The minimum attenuation of radio signal should be set to achieve the excellent radio conditions (RSRQ as defined in Clause 4.6), but the minimum coupling loss (see Clause 4.6) should not be exceeded.  The UE should be placed inside RF shielded box or RF shielded room if the UE is not connected via cable.

**Field setup**: The UE is placed in the centre of cell close to the radiated eNB/gNB antenna(s), where excellent radio conditions (RSRQ as defined in Clause 4.6) should be observed. The minimum coupling loss (see 4.6) should not be exceeded.

Please refer Figure 5-2 for E2E test setup for 5G SA.

### Test procedure

Below are the test procedure steps

1. The NR cells shall be configured in the initial conditions defined in Session 5.8.2.
2. Multiple S-NSSAI (i.e., Slice/Service Type (SST) = 0x01/0x02/0x03/0x04) under the NSSAI shall be configured in UE, RAN, and 5G Core.
3. Power on the UE and UE shall send REGISTRATION REQUEST message. The multiple requested S-NSSAI shall be included in the message with the configured value in step 2. And UE shall successfully register to the 5G SA network.
4. The full-buffer UDP bi-directional data transmission (see Session 4.4) between UE and the application server is initiated in eMBB network slice if eMBB network slice is covered.
5. The full-buffer UDP bi-directional data transmission (see Session 4.4) between UE and the application server is initiated in URRLC network slice if URRLC network slice is covered.
6. The full-buffer UDP bi-directional data transmission (see Session 4.4) between UE and the application server is initiated in mIoT network slice if MIoT network slice is covered.
7. The full-buffer UDP bi-directional data transmission (see Session 4.4) between UE and the application server is initiated in V2X network slice if V2X network slice is covered.
8. The registration procedure messages shall be captured to verify the mandatory IEs defined in Table 5-10, and the latency of registration procedure shall be measured and recorded in Table 5-12. The duration of the test should be at least 3 minutes when the throughput is stable. The PDU session establishment procedure messages shall also be captured and verified for the network slices of eMBB/URRLC/MIoT/ V2X.
9. Power off the UE and UE shall send DEREGISTRATION REQUEST message. And UE shall successfully de-register from the 5G SA network.
10. The de-registration procedure messages shall be captured to verify the mandatory IEs defined in Table 5-11, and the latency of de-registration procedure shall be measured and recorded in Table 5-12. The PDU session release procedure messages shall also be captured and verified for the network slices of eMBB/URRLC/MIoT/ V2X.
11. Repeat steps 3 to 10, 10 times and record the KPI mentioned in Table 5-12.

### Test requirements (expected results)

In addition to the common minimum set of configuration parameters (see Clause 4.3), the following metrics and counters shall be captured and reported in the test report for the performance assessment.

* Radio parameters such as RSRP, RSRQ, CQI, PDSCH SINR (average sample per second)
* Mandatory IEs mentioned in Table 5-10, and Table 5-11
* Latency KPI mentioned in Table 5-12

Validate from collected logs registration (as per 3GPP 23.502 Clause 4.2.2.2.2) and deregistration (as per 3GPP 23.502 Clause 4.2.2.3.2) procedure and also validate 'UE Requested PDU Session Establishment for Non-roaming and Roaming with Local Breakout case' as defined in 3GPP 23.502 Clause 4.3.2.2.1 for multiple network slices of eMBB/URRLC/MIoT/ V2X, and the procedure of 'PDU Session Release for UE or network requested PDU Session Release for Non-Roaming and Roaming with Local Breakout case' as defined in 3GPP 23.502 Clause 4.3.4.2 for multiple network slices of eMBB/URRLC/MIoT/ V2X.

Table 5-10 defines the verification steps along with validation of mandatory IEs for 5G SA registration procedure in multiple network slices.

**Table 5-10: 5G SA Registration verification with mandatory IEs in multiple network slices**

| **St.** | **Procedure** | **Msg Flow** | **Expected Output** |
| --- | --- | --- | --- |
| 1 | RRCSetupComplete | **UE -> gNB** | Verify that UE sends multiple S-NSSAI in IE *s-nssai-List and SST = '*0x01/0x02/0x03/0x04*' in the S-NSSAI to gNB.* |
| 2 | Registration Request | **UE -> AMF** | Verify that UE sends multiple S-NSSAI in IE *Requested NSSAI to 5G AMF, and IE 5GS registration type = 'initial registration', SST* = *''*0x01/0x02/0x03/0x04*' in the S-NSSAI.* |
| 3 | Initial Context Setup Request | **AMF -> gNB** | Verify that *5G AMF* sends multiple S-NSSAI in IE *Allowed NSSAI* and *S-NSSAI* (under parent IE *PDU Session Resource Setup Request Item*) to gNB, *and SST = '*0x01/0x02/0x03/0x04*' in the S-NSSAI.* |
| 4 | Registration Accept | **AMF -> UE** | Verify that *5G AMF* sends multiple S-NSSAI in IE *Allowed NSSAI* and *Configured NSSAI* to UE, *SST = '*0x01/0x02/0x03/0x04*' in the S-NSSAI* and IE *Rejected NSSAI shall not exist.* |

Table 5-11 defines the verification steps along with validation of mandatory IEs for 5G SA deregistration procedure in multiple network slices.

**Table 5-11: 5G SA Deregistration verification with mandatory IEs in multiple network slices**

|  |  |  |  |
| --- | --- | --- | --- |
| **St.** | **Procedure** | **Msg Flow** | **Expected Output** |
| 1 | De-registration Request | **UE -> AMF** | Verify that UE sends IE *De-registration type = 'Switch Off'* to 5G AMF*.* |

**Table 5-12** defines the KPI record table of registration/ registration testing in multiple network slices.

**Table 5-12 Multiple Network Slices KPI record table**

| KPI | Repeat Times | | | | | | | | | | Calculation | | |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 | Minimum | Maximum | Average |
| Registration Time (multiple slices) (millisecond) |  |  |  |  |  |  |  |  |  |  |  |  |  |
| De-registration Time (multiple slices) (millisecond) |  |  |  |  |  |  |  |  |  |  |  |  |  |

## Idle Mode Intra-O-DU mobility

### Test description and applicability

The purpose of the test is to verify O-CU, idle mode intra O-DU mobility of a UE. The test validates the O-CU, O-DU, O-RU functionality in handling inter cell mobility when two O-RU connected to an O-DU. Test scenarios are classified into two groups as Standalone (SA) Intra frequency cell reselection and as Standalone (SA) Inter frequency cell reselection.

Idle mode Intra O-DU mobility shall follow 3GPP 38.133, Clause 4.2.2.3 and Clause 4.2.2.4 for intra frequency and inter frequency cell selection measurement, respectively. And 3GPP 38.304, Clause 5.2.2 for the state transition.

### Test setup and configuration

In SA, the test setup consists of two 5G cells, each one associated with same O-DU and O-CU connected to 5G Core network, refer Figure 5-7 for the test setup topology. The test environment shall have single UE in Idle mode.

![Diagram  Description automatically generated](../assets/images/269a8dab9a0d.png)

**Figure 5-7 Idle Mode Intra O-DU mobility test bed for SA mode of operation.**

**Test configuration**: The test configuration is not specified. The utilized test configuration (parameters) shall be recorded in the test report.

**Laboratory setup**: The radio conditions of UE can be modified by a variable attenuator/fading generator inserted between the antenna connectors of O-RU and UE. The radio conditions of UE are initially set to excellent. The minimum coupling loss (see Clause 4.6) should not be exceeded. The UE should be placed inside RF shielded box or RF shielded room if the UE is not connected via cable. The UE mobility between the cells can be achieved by changing radio signal strength of source and target cells using variable attenuators.

**Field setup**: The drive route with source and target cells should be defined. The UE is placed in the centre of cell close to the radiated gNB antenna(s), where excellent radio conditions (RSRP as defined in Clause 4.6) should be observed. The minimum coupling loss (see 4.5) should not be exceeded. The change in radio conditions is achieved by moving the UE along the drive route from source cell to target cell.

### Test procedure

Below are the SA Mode Intra frequency steps

1. The 5G cell setup is configured following clause 5.9.2.
2. Configure two 5G cells (cell 1 and cell 2) of same frequency within an O-DU according to the test configuration. The cells are activated and unloaded.
3. Both 5G Cells are configured neighbours to each other, so that UE can use it for cell re-selection.
4. The source and target 5G cells for intra O-DU mobility shall be depicted as in Figure 5-7.
5. The test UE is under source cell coverage.
6. Power on the UE and UE shall successfully register to source 5G cell.
7. Wait till the UE goes in idle mode as per UE inactivity timer and then move the UE from source cell to target cell.
8. Once UE moves to new cell, make an MO data call.
9. Repeat the above test steps for 10 iterations.

Below is the SA Mode Inter frequency steps

1. The 5G cell setup is configured following clause 5.9.2.
2. Configure two 5G cells (cell 1 and cell 2) on different frequencies within an O-DU according to the test configuration. The cells are activated and unloaded.
3. Both 5G Cells are configured neighbours to each other, so that UE can use it for cell re-selection.
4. The source and target 5G cells for intra O-DU mobility shall be depicted as in Figure 5-7.
5. The test UE is under source cell coverage.
6. Power on the UE and UE shall successfully register to source 5G cell.
7. Wait till the UE goes in idle mode as per UE inactivity timer and then move the UE from source cell to target cell, move the UE from source cell to target cell.
8. Once UE moves to new cell, make an MO data call.
9. Repeat the above test steps for 10 iterations.

### Test requirements (expected results)

The Idle mode intra O-DU cell reselection shall be verified for both intra-frequency and inter-frequency. Also verify call setup latency on a target cell with reference to RRC connection call flow defined in 3GPP 38.133, Clause 5.3.3.1. Following functionalities are also validated to declare the verdict.

* Cell re-selection is successful on target cell.
* RRC connection establishment is successful on a target cell.

In addition to the common minimum set of configuration parameters defined (see 4.3), the following metrics and counters shall be recorded and reported for the performance assessment.

gNB side:

* Idle mode mobility time from UE, in idle mode at source to UE in idle mode to target.

UE side:

* Radio parameters such as RSRP, RSRQ.
* KPI's related to Cell re-selection failure, idle mode mobility time from UE in idle mode at source to UE in idle mode to target.

The cell re-selection failure can be found out by checking if the cell re-selection is successful or not. The Idle to Connected on a target cell Time latency is measured by calculating the time between RRC\_Idle mode to RRC\_Connected state when UE moves to new cell after initiating an MO call. Capture the cell re-selection success/failure and latency for each iteration and sort the latency value observed for each iteration in ascending order. Record the Minimum, Average (Sum of all latency value/ Total Iterations, Total Iterations are 10 in this case) and Maximum latency value observed in below tables:

**Table 5-13 5G Cell Re-selection Success and Failure KPI**

|  |  |  |  |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| KPI | Repeat Times | | | | | | | | | |
| 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 |
| Cell Re-selection Success |  |  |  |  |  |  |  |  |  |  |
| Cell Re-selection Failure |  |  |  |  |  |  |  |  |  |  |

## Idle mode Inter-O-DU mobility

### Test description and applicability

The purpose of the test is to verify intra O-CU, idle mode inter O-DU mobility of a UE. The test validates the O-CU, O-DU, O-RU functionality in handling inter cell mobility. Test scenarios are classified into two groups as Standalone (SA) Intra frequency cell reselection and as Standalone (SA) Inter frequency cell reselection.

Idle mode Inter O-DU mobility shall follow 3GPP 38.133, Clause 4.2.2.3 and Clause 4.2.2.4 for intra frequency and inter frequency cell selection measurement, respectively. And 3GPP 38.304, Clause 5.2.2 for the state transition.

### Test setup and configuration

In standalone Mode, the test setup consists of two 5G cells, each one associated with different O-DU, connected to same O-CU. The test environment shall have single UE in Idle mode.

![Diagram  Description automatically generated](../assets/images/d31bb353c370.jpg)

**Figure 5-8 Inter O-DU mobility test bed for SA mode of operation**

**Test configuration**: The test configuration is not specified. The utilized test configuration (parameters) shall be recorded in the test report.

**Laboratory setup**: The radio conditions of UE can be modified by a variable attenuator/fading generator inserted between the antenna connectors of O-RU and UE. The radio conditions of UE are initially set to excellent. The minimum coupling loss (see Clause 4.6) should not be exceeded. The UE should be placed inside RF shielded box or RF shielded room if the UE is not connected via cable. The UE mobility between the cells can be achieved by changing radio signal strength of source and target cells using variable attenuators.

**Field setup**: The drive route with source and target cells should be defined. The UE is placed in the centre of cell close to the radiated gNB antenna(s), where excellent radio conditions (RSRP as defined in Clause 4.6) should be observed. The minimum coupling loss (see 4.5) should not be exceeded. The change in radio conditions is achieved by moving the UE along the drive route from source cell to target cell.

### Test procedure

Below are the SA Mode Intra frequency steps

1. The 5G cell setup is configured following clause 5.10.2.
2. All the 5G cells are configured according to the test configuration. The cells are activated and unloaded
3. Both 5G Cells are configured neighbours to each other, so that UE can use it for cell re-selection.
4. The source and target 5G cells for inter O-DU mobility shall be depicted as in Figure 5-8.
5. The test UE is under source cell coverage.
6. Power on the UE and UE shall successfully register to source 5G cell.
7. Wait till the UE goes in idle mode as per UE inactivity timer and then move the UE from source cell to target cell.
8. Once UE moves to new cell, make an MO data call.
9. Repeat the above test steps for 10 iterations.

Below is the SA Mode Inter frequency steps

1. The 5G cell setup is configured following clause 5.10.2.
2. All the 5G cells are configured according to the test configuration. The cells are activated and unloaded.
3. Both 5G Cells are configured neighbours to each other, so that UE can use it for cell re-selection.
4. The source and target 5G cells for inter O-DU mobility shall be depicted as in Figure 5-8.
5. The test UE is under source cell coverage.
6. Power on the UE and UE shall successfully register to source 5G cell.
7. Wait till the UE goes in idle mode as per UE inactivity timer and then move the UE from source cell to target cell.
8. Once UE moves to new cell, make an MO data call.
9. Repeat the above test steps for 10 iterations.

### Test requirements (expected results)

The Idle mode inter O-DU cell reselection shall be verified for both intra-frequency and inter-frequency. Also verify call setup latency on a target cell with reference to RRC connection call flow mentioned in 3GPP 38.133, Clause 5.3.3.1. Following functionalities are also validated to declare the verdict.

* RRC connection establishment is complete.
* Cell re-selection is successful.

In addition to the common minimum set of configuration parameters defined (see 4.3), the following metrics and counters shall be recorded and reported for the performance assessment.

gNB side:

* Idle mode mobility time from UE, in idle mode at source to UE in idle mode to target.

UE side:

* Radio parameters such as RSRP, RSRQ, SINR on PDSCH in time (average per second)
* KPI's related to Cell re-selection failure, Idle mode mobility time from UE, in idle mode at source to UE in idle mode to target

The cell re-selection failure can be found out by checking if the cell re-selection is successful or not. The Idle to Connected on a target cell Time latency is measured by calculating the time between RRC\_Idle mode to RRC\_Connected state when UE moves to new cell after initiating an MO call. Capture the cell re-selection success/failure and latency for each iteration and sort the latency value observed for each iteration in ascending order. Record the Minimum, Average (Sum of all latency value/ Total Iterations, Total Iterations are 10 in this case) and Maximum latency value observed in below tables:

**Table 5-14 5G Cell Re-selection Success and Failure KPI**

|  |  |  |  |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| KPI | Repeat Times | | | | | | | | | |
| 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 |
| Cell Re-selection Success |  |  |  |  |  |  |  |  |  |  |
| Cell Re-selection Failure |  |  |  |  |  |  |  |  |  |  |

## Idle mode Inter-O-CU mobility

### Test description and applicability

The purpose of the test is to verify inter O-CU mobility of the UE. The test validates the O-CU, O-DU functionality in handling inter O-CU mobility connected to same 5G Core Network (in SA). The test validates the O-CU, O-DU, O-RU functionality in handling inter cell mobility. Test scenarios are classified into two groups as Standalone (SA) Intra frequency cell reselection and as Standalone (SA) Inter frequency cell reselection.

Idle mode Inter O-CU mobility shall follow 3GPP 38.133, Clause 4.2.2.3 and Clause 4.2.2.4 for intra frequency and inter frequency cell selection measurement, respectively. And 3GPP 38.304, Clause 5.2.2 for the state transition.

### Test setup and configuration

In Standalone mode, the test setup consists of two 5G cells, each one associated with a different O-DU and O-CU connected to same 5G Core network, refer Figure 5-9 for the test setup topology. The test environment shall have single UE.

![Diagram  Description automatically generated](../assets/images/cac259e60fb5.png)

**Figure 5-9 Inter O-CU mobility test bed for SA mode of operation**

**Test configuration**: The test configuration is not specified. The utilized test configuration (parameters) shall be recorded in the test report.

**Laboratory setup**: The radio conditions of UE can be modified by a variable attenuator/fading generator inserted between the antenna connectors of O-RU and UE. The radio conditions of UE are initially set to excellent. The minimum coupling loss (see Clause 4.6) should not be exceeded. The UE should be placed inside RF shielded box or RF shielded room if the UE is not connected via cable. The UE handover between the cells can be achieved by changing radio signal strength of source and target cells using variable attenuators.

**Field setup**: The drive route with source and target cells should be defined. The UE is placed in the centre of cell close to the radiated eNB/gNB antenna(s), where excellent radio conditions (RSRP as defined in Clause 4.6) should be observed. The minimum coupling loss (see 4.5) should not be exceeded. The change in radio conditions is achieved by moving the UE along the drive route from source cell to target cell.

### Test procedure

Below are the SA Mode Intra frequency steps

1. The 5G cell setup is configured following clause 5.11.2.
2. Configure two 5G cells (cell 1 and cell 2) connected to different O-DU and O-CU according to the test configuration. The cells are activated and unloaded.
3. Both 5G Cells are configured neighbors to each other, so that UE can use it for cell re-selection.
4. The source cell (source O-DU and source O-CU) is the cell where UE is initially placed as depicted in Figure 5-9.
5. Power on the UE and UE shall successfully register to source 5G cell.
6. Wait till the UE goes in idle mode as per UE inactivity timer and then move the UE from source cell to target cell.
7. Once UE moves to new cell, make an MO data call.
8. Repeat the above test steps for 10 iterations.

Below are the SA Mode Inter frequency steps

1. The 5G cell setup is configured following clause 5.11.2.
2. Configure two 5G cells (cell 1 and cell 2) connected to different O-DU and O-CU according to the test configuration. The cells are activated and unloaded.
3. Both 5G Cells are configured neighbors to each other, so that UE can use it for cell re-selection.
4. The source cell (source O-DU and source O-CU) is the cell where UE is initially placed as depicted in Figure 5-9.
5. Power on the UE and UE shall successfully register to source 5G cell.
6. Wait till the UE goes in idle mode as per UE inactivity timer and then move the UE from source cell to target cell.
7. Once UE moves to new cell, make an MO data call.
8. Repeat the above test steps for 10 iterations.

### Test requirements (expected results)

The Idle mode inter O-CU cell reselection shall be verified for both intra-frequency and inter-frequency. Also verify call setup latency on a target cell with reference to RRC connection call flow mentioned in 3GPP 38.133, Clause 5.3.3.1. Following functionalities are also validated to declare the verdict.

* RRC connection establishment is complete.
* Cell re-selection is successful.

In addition to the common minimum set of configuration parameters defined (see 4.3), the following metrics and counters shall be recorded and reported for the performance assessment.

gNB side:

* Idle mode mobility time from UE, in idle mode at source to UE in idle mode to target.

UE side:

* Radio parameters such as RSRP, RSRQ, SINR on PDSCH in time (average per second)
* KPI's related to Cell re-selection failure, Idle mode mobility time from UE, in idle mode at source to UE in idle mode to target

The cell re-selection failure can be found out by checking if the cell re-selection is successful or not. The Idle to Connected on a target cell Time latency is measured by calculating the time between RRC\_Idle mode to RRC\_Connected state when UE moves to new cell after initiating an MO call. Capture the cell re-selection success/failure and latency for each iteration and sort the latency value observed for each iteration in ascending order. Record the Minimum, Average (Sum of all latency value/ Total Iterations, Total Iterations are 10 in this case) and Maximum latency value observed in below tables:

**Table 5-15 5G Cell Re-selection Success and Failure KPI**

|  |  |  |  |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| KPI | Repeat Times | | | | | | | | | |
| 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 |
| Cell Re-selection Success |  |  |  |  |  |  |  |  |  |  |
| Cell Re-selection Failure |  |  |  |  |  |  |  |  |  |  |

## 5G/4G Inter-System Mobility - 5GS to EPS handover

### Test description and applicability

The purpose of this test is to validate inter system handovers between 5G and LTE systems as defined in 3GPP TS 38.300 [47]. In this test scenario, inter system handover from 5G Standalone (i.e. connected with 5GC) to LTE Standalone (i.e. connected with EPC) is validated. The test validates the O-CU, O-DU, and O-RU functionality in handling Inter RAT mobility from 5G to LTE. This scenario covers handover of UE from 5G to LTE when UE is registered in 5G and moves from 5G coverage area to LTE coverage area. This scenario is applicable for LTE and 5G SA.

The test focuses on the procedure of '5GS to EPS handover using N26 interface' as defined in 3GPP TS 23.502 [41] Clause 4.11.1.2.1.

### Test setup and configuration

The test setup shall include 5G End to End system (gNB and 5G Core) and LTE E2E system (O-eNB and EPC). 5G and 4G core shall be interconnected for Inter System mobility (N26 interface between the MME and AMF) and shall supports a combined anchor point for 4G and 5G, i.e. SMF+PGW-C and UPF+PGW-U. The eNB connects to a 4G-5G interconnected core over the 4G interfaces, i.e. S1 to provide 4G LTE service to make E2E LTE system and the O-CU-CP/O-CU-UP, O-DU and O-RUconnect to a 4G-5G interconnected core over the 5G interfaces, i.e. N2 and N3 to make E2E 5G SA system. The DUT (gNB and O-eNB) and the components shall comply to the O-RAN specifications. This test needs a real or emulated UE. The test setup (UE, gNB, O-eNB, 5G and 4G Core) should include tools which have the ability to collect traces on the elements and/or packet captures of communication between the elements. Optionally, if some of the network elements are located remotely either in a cloud or on the internet, the additional latency should be calculated and accounted for. The O-eNB, gNB and their components (O-RU, O-DU and O-CU-CP/O-CU-UP) should have the right configuration and software load.

**Test configuration**: The test configuration is not specified. The utilized test configuration (parameters) shall be recorded in the test report.

**Laboratory setup**: The radio conditions of UE can be modified by a variable attenuator/fading generator inserted between the antenna connectors (if available) of the O-RU and the UE, or appropriately emulated using a UE emulator. The radio conditions of the UE are initially set to excellent using RSRP as the metric. The minimum coupling loss (see Clause 4.6) should not be exceeded. The UE should be placed inside and RF shielded box or RF shielded room if the UE is not connected via cable. The UE handover between the cells can be achieved by changing the radio signal strength of the source (gNB) and target cells (O-eNB) using variable attenuators.

**Field setup**: The drive route with source and target cells should be defined. The UE is placed in the centre of cell close to the radiated eNB/gNB antenna(s), where excellent radio conditions (using RSRP as the metric as defined in Clause 4.6) should be observed. The minimum coupling loss (see 4.5) should not be exceeded. The change in radio conditions is achieved by moving the UE along the drive route from source (gNB) and target cells (O-eNB).

### Test procedure

Below are the 5G to LTE Inter System handover steps

1. The test setup is configured according to the test configuration. The test configuration shall be recorded in the test report. The serving cell under test is activated and unloaded. All other cells are powered off.
2. 5G and LTE cells are configured as neighbours to each other, so that the UE can trigger measurement events for Inter System handover.
3. The test UE is under source cell (gNB) coverage.
4. Power on the UE and UE shall successfully register to source 5G cell.
5. The full-buffer UDP bi-directional data transmission (see 4.4) from the application server is initiated.
6. The UE shall move from source (gNB) and target cells (O-eNB) to perform handover.

### Test requirements (expected results)

The Inter System handover call flow shall be verified between 5G and LTE systems. Following functionalities shall also be validated:

* PDU Session is established when full-buffer bi-directional data transmission is initiated with 5G source cell
* Handover is successful.

In addition to the common minimum set of configuration parameters defined (see Clause 4.3), the following metrics and counters shall be recorded and reported for the performance assessment.

eNB/gNB/Application server side:

* Transmit downlink throughput measured at application server in time (average per second)
* Received uplink throughput measured at application server in time (average per second)
* Uplink packet loss percentage during handover.
* Uplink BLER, MCS, MIMO rank (RI) on PUSCH in time (average per second)

UE side:

* Radio parameters such as RSRP, RSRQ, SINR on PDSCH in time (average per second)
* Downlink BLER, MCS, MIMO rank (RI) on PDSCH in time (average per second).
* Received Downlink throughput (L1 and L3 PDCP layers) in time (average per second).
* Downlink packet loss percentage during handover
* Uplink throughput (L1 and L3 PDCP layers) in time (average per second)
* Channel utilization, i.e. Number allocated/occupied downlink and uplink RBs in time (per TTI/average per second) and Number of allocated/occupied slots in time.
* KPIs related to Handover failure, Call drop, Handover latency, Handover interruption time.

## 5G/4G Inter-System Mobility - EPS to 5GS handover

### Test description and applicability

The purpose of this test is to validate inter system handovers between 5G and LTE systems as defined in 3GPP TS 38.300 [47]. In this test scenario, inter system handover from LTE Standalone (i.e. connected with EPC) to 5G Standalone (i.e. connected with 5GC) is validated. The test validates the O-CU, O-DU, and O-RU functionality in handling Inter RAT mobility from LTE to 5G. This scenario covers handover of UE from 5G to LTE when UE is registered in LTE and moves from LTE coverage area to 5G coverage area. This scenario is applicable for LTE and 5G SA.

The test focuses on the procedure of 'EPS to 5GS handover using N26 interface' as defined in 3GPP TS 23.502 [41] Clause 4.11.1.2.2.

### Test setup and configuration

The test setup shall include 5G End to End system (gNB and 5G Core) and LTE E2E system (O-eNB and EPC). 5G and 4G core shall be interconnected for Inter System mobility (N26 interface between the MME and AMF) and shall support a combined anchor point for 4G and 5G, i.e. SMF+PGW-C and UPF+PGW-U. The eNB connects to a 4G-5G interconnected core over the 4G interfaces, i.e. S1 to provide 4G LTE service to make E2E LTE system and the O-CU-CP/O-CU-UP, O-DU and O-RU connect to a 4G-5G interconnected core over the 5G interfaces, i.e. N2 and N3 to make E2E 5G SA system. The DUT (gNB and O-eNB) and the components shall comply to the O-RAN specifications. This test needs Real or emulated UE. The test setup (UE, gNB, O-eNB, 5G and 4G Core) should include tools which have the ability to collect traces on the elements and/or packet captures of communication between the elements. Optionally, if some of the network elements are located remotely either in a cloud or on the internet, the additional latency should be calculated and accounted for. The O-eNB, gNB and their components (O-RU, O-DU and O-CU-CP/O-CU-UP) need to have the right configuration and software load.

**Test configuration**: The test configuration is not specified. The utilized test configuration (parameters) shall be recorded in the test report.

**Laboratory setup**: The radio conditions of UE can be modified by a variable attenuator/fading generator inserted between the antenna connectors (if available) of the O-RU and the UE, or appropriately emulated using a UE emulator. The radio conditions of the UE are initially set to excellent using RSRP as the metric. The minimum coupling loss (see Clause 4.6) should not be exceeded. The UE should be placed inside and RF shielded box or RF shielded room if the UE is not connected via cable. The UE handover between the cells can be achieved by changing the radio signal strength of the source (O-eNB) and target cells (gNB) using variable attenuators.

**Field setup**: The drive route with source and target cells should be defined. The UE is placed in the centre of cell close to the radiated eNB/gNB antenna(s), where excellent radio conditions (using RSRP as the metric as defined in Clause 4.6) should be observed. The minimum coupling loss (see 4.5) should not be exceeded. The change in radio conditions is achieved by moving the UE along the drive route from source (O-NB) and target cells (gNB)

### Test procedure

Below are the LTE to 5G Inter System handover steps

1. The test setup is configured according to the test configuration. The test configuration shall be recorded in the test report. The serving cell under test is activated and unloaded. All other cells are powered off.
2. LTE and 5G cells are configured as neighbours to each other, so that the UE can trigger measurement events for Inter System handover.
3. The test UE is under source cell (gNB) coverage.
4. Power on the UE and UE shall successfully register to source LTE cell.
5. The full-buffer UDP bi-directional data transmission (see 4.4) from the application server is initiated.
6. The UE shall move from source (LTE) and target cells (gNB) to perform handover.

### Test requirements (expected results)

The Inter System handover call flow shall be verified between LTE and 5G systems. Following functionalities shall also be validated:

* PDU Session is established when full-buffer bi-directional data transmission is initiated with LTE source cell
* Handover is successful

In addition to the common minimum set of configuration parameters defined (see Clause 4.3), the following metrics and counters shall be recorded and reported for the performance assessment.

eNB/gNB/Application server side:

* Transmit downlink throughput measured at application server in time (average per second)
* Received uplink throughput measured at application server in time (average per second)
* Uplink packet loss percentage during handover.
* Uplink BLER, MCS, MIMO rank (RI) on PUSCH in time (average per second)

UE side:

* Radio parameters such as RSRP, RSRQ, SINR on PDSCH in time (average per second)
* Downlink BLER, MCS, MIMO rank (RI) on PDSCH in time (average per second).
* Received Downlink throughput (L1 and L3 PDCP layers) in time (average per second).
* Downlink packet loss percentage during handover
* Uplink throughput (L1 and L3 PDCP layers) in time (average per second)
* Channel utilization, i.e. Number allocated/occupied downlink and uplink RBs in time (per TTI/average per second) and Number of allocated/occupied slots in time.

KPIs related to Handover failure, Call drop, Handover latency, Handover interruption time.

# Performance tests

## Performance tests introduction

This clause describes the tests evaluating and assessing the **performance of radio access network from network end-to-end perspective** (see clause 4.1). The focus of the testing is on the end-user performance which is compared against the target and expected performance values. The pass and fail thresholds are defined for the test wherever possible.

The general test methodologies and configurations are mentioned in clause 4.

Unless otherwise stated in the clause, the tests are suitable and can be performed in both laboratory as well as field testing environments, with pros and cons for each environment. The specific lab and field test setups are mentioned in each test.

The following end-to-end performance tests are defined in this clause as an extension of NGMN testing framework [3]:

Table 6-1: E2E Performance Test Case summary

|  | | | Applicable technology | | |
| --- | --- | --- | --- | --- | --- |
| Test case | | Functional group | LTE | NSA | SA |
| Test ID | E2E Performance Assessment |  |  |  |  |
| 6.2 | Downlink peak throughput | Integrity | Y | Y | Y |
| 6.3. | Uplink peak throughput | Integrity | Y | Y | Y |
| 6.4 | Downlink throughput in different radio conditions | Integrity | Y | Y | Y |
| 6.5 | Uplink throughput in different radio conditions | Integrity | Y | Y | Y |
| 6.6 | Bidirectional throughput in different radio conditions | Integrity | Y | Y | Y |
| 6.7 | Downlink coverage throughput (link budget) | Integrity | Y | Y | Y |
| 6.8 | Uplink coverage throughput (link budget) | Integrity | Y | Y | Y |
| 6.9 | Downlink aggregated cell throughput (cell capacity) | Integrity | Y | Y | Y |
| 6.10 | Uplink aggregated cell throughput (cell capacity) | Integrity | Y | Y | Y |
| 6.11 | Impact of fronthaul latency on downlink peak throughput | Integrity | Y | Y | Y |
| 6.12 | Impact of fronthaul latency on uplink peak throughput | Integrity | Y | Y | Y |
| 6.13 | Impact of midhaul latency on downlink peak throughput | Integrity | N/A | Y | Y |
| 6.14 | Impact of midhaul latency on uplink peak throughput | Integrity | N/A | Y | Y |

Future versions of this specification may add additional end-to-end performance tests not currently addressed in this version, for example:

* Downlink throughput with inter-cell interferences (multi-cell, single UE scenario)
* Uplink throughput with inter-cell interferences (multi-cell, single UE scenario)
* Downlink drive throughput (multi-cell, single UE scenario)
* Uplink drive throughput (multi-cell, single UE scenario)
* End-to-end latency (single cell scenario, single UE scenario)
* Impact of fronthaul compression scheme on downlink peak throughput (single cell, single UE scenario)
* Impact of fronthaul compression scheme on uplink peak throughput (single cell, single UE scenario)
* Resource scheduling (single cell, multi-UE scenario)

## Expected throughput calculation

### 4G LTE

The 4G LTE expected theoretical downlink or uplink throughput at the physical layer can be calculated using the following formula:

$$L1 throughput \left[Mbps\right]=10^{-6}.\sum\_{j=1}^{J}\left(v\_{Layer}^{j}.Q\_{m}^{j}.R.\frac{N\_{PRB}^{BW,j}.12}{T\_{s}}.\left(1-OH^{j}\right).DLUL\_{ratio}\right)$$

where

* *J* is the number of aggregated LTE component carriers.
* $R$ is the coding rate corresponding to channel quality (CQI and SINR). The maximum coding rate is 0.9258.

For the j-th component carrier:

* $v\_{Layers}$ is the number of MIMO layers. The maximum is 4 (8 in LTE-Advanced) in downlink and 1 (4 in LTE -Advanced) in uplink.
* $Q\_{m}$ is the modulation order, which is equal to 2 for QPSK, 4 for 16QAM, 5 for 32QAM, 6 for 64QAM, 8 for 256QAM.
* $N\_{PRB}^{BW}$ is the number of PRBs allocated in bandwidth BW - see Table 6-2.

Table 6-2 The number of PRBs allocated in bandwidth

|  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- |
| Bandwidth [MHz] | 1.4 | 3 | 5 | 10 | 15 | 20 |
| Number of PRBs | 6 | 13 | 25 | 50 | 75 | 100 |

* *OH* is overhead for control channels and signalling (i.e., Reference Signal, PSS, SSS, PBCH, PDCCH, etc. in downlink or SRS, PUCCH, PRACH in uplink) within a period of 1 sec - see Table 6-3 for downlink.

Table 6-3 Overhead as a function of bandwidth, no. of antenna ports and CFI

|  |  |  |  |  |  |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Bandwidth | 1.4 MHz | | 3 MHz | | 5 MHz | | 10 MHz | | 15 MHz | | 20 MHz | |
| CFI | 1 | 2 | 1 | 2 | 1 | 2 | 1 | 2 | 1 | 2 | 1 | 2 |
| 1 TX (ant. ports) | 0.16 | 0.21 | 0.14 | 0.18 | 0.12 | 0.17 | 0.12 | 0.16 | 0.11 | 0.16 | 0.11 | 0.16 |
| 2 TX (ant. ports) | 0.20 | 0.24 | 0.17 | 0.22 | 0.16 | 0.21 | 0.15 | 0.20 | 0.15 | 0.20 | 0.15 | 0.20 |
| 4 TX (ant. ports) | 0.25 | 0.29 | 0.22 | 0.26 | 0.21 | 0.25 | 0.20 | 0.25 | 0.20 | 0.25 | 0.20 | 0.24 |

* $T\_{s}$ is the average OFDM symbol duration in a subframe, and it is equal to $T\_{s}=10^{-3}/14$ for normal Cyclic Prefix (14 OFDM symbols per slot) or $T\_{s}=10^{-3}/12$ for extended CP (12 OFDM symbols per slot).
* $DLUL\_{ratio}$ is a ratio of the symbols allocated for DL or UL data to total number of symbols in a frame (10ms) - predefined patters (uplink-downlink configuration, special subframe configuration) for DL/UL allocation in [25]. In case of FDD mode, the *DLULratio* is equal to 1.

Example of calculation of expected downlink throughput for the following system configuration:

* MIMO 2x2 -> $v\_{Layers}=2$
* BW = 20 MHz -> $N\_{PRB}^{BW}$=100
* Normal CP
* CFI = 1 -> OH = 0.15
* no carrier aggregation -> J = 1
* MCS = 28 and modulation 64QAM -> $Q\_{m}=6$ and $R=0.9258$
* TDD with uplink-downlink configuration = 1 (i.e., DSUUD) and special subframe configuration = 7 (i.e., 10:2:2) -> $DLUL\_{ratio}=(14.2+10)/14.5)= 0.543$

$$L1 throughput \left[Mbps\right]=10^{-6}.\sum\_{j=1}^{1}\left(2.6.0.9258.\frac{100.12}{\frac{10^{-3}}{14}}.\left(1-0.15\right).0.543\right)=86.1 Mbps$$

### 5G NR

The 5G NR expected theoretical downlink or uplink throughput at physical layer (UE category is not assumed) can be calculated using the following formula [15]:

$$L1 throughput \left[Mbps\right]=10^{-6}.\sum\_{j=1}^{J}\left(v\_{Layers}^{j}.Q\_{m}^{j}.f^{j}.R.\frac{N\_{PRB}^{BWj,u}.12}{T\_{S}^{u}}.\left(1-OH^{j}\right).DLUL\_{ratio}\right)$$

where

* *J* is the total number of component carriers (CC) in a band or band combination. The maximum number is 16 [23].
* $R$ is the coding rate corresponding to channel quality (CQI, SINR), and it is calculated as *Target\_code\_rate* [22]*/1024*. For LDPC code the maximum coding rate is 948/1024.

For the j-th component carrier:

* $v\_{Layers}$ is the number of MIMO layers. The maximum is 8 in downlink and 4 in uplink [23].
* $Q\_{m}$ is the modulation order, which is equal to 2 for QPSK, 4 for 16QAM, 5 for 32QAM, 6 for 64QAM, 8 for 256QAM.
* $f$ is the scaling factor [24] which can take the values 0.4, 0.75, 0.8 or 1. The scaling factor is signalled per band and per band combination as per UE capability signalling.
* $OH$ is the overhead of control channels and signalling within a period of 1 sec, and it is equal to:
  + 0.14 for frequency range 1 (FR1) for DL
  + 0.18 for frequency range 2 (FR2) for DL
  + 0.08 for frequency range 1 (FR1) for UL
  + 0.10 for frequency range 2 (FR2) for UL
* $u$ is 5G NR numerology (sub-carrier spacing) which can take the values from 0 to 4 [20]. The number of slots per frame and sub-carrier spacing vary with numerology - see Table 6-4.

Table 6-4 5G NR numerology

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| 5G NR numerology u | Sub-carrier spacing (SCS) | Number of slots per frame | Number of symbols per slot | Total number of symbols per frame |
| 0 | 15 kHz | 10 | 14 (normal CP) | 140 |
| 1 | 30 kHz | 20 | 14 (normal CP) | 280 |
| 2 | 60 kHz | 40 | 14 (normal CP) | 560 |
| 60 kHz | 40 | 12 (extended CP) | 480 |
| 3 | 120 kHz | 80 | 14 (normal CP) | 1120 |
| 4 | 240 kHz | 160 | 14 (normal CP) | 2240 |

* $T\_{S}^{u}$ is the average OFDM symbol duration in a subframe for numerology u, and it is equal to $T\_{S}^{u}=10^{-3}/(14.2^{u})$ for normal Cyclic Prefix (14 OFDM symbols per slot) or $T\_{S}^{u}=10^{-3}/(12.2^{u})$ for extended CP (12 OFDM symbols per slot).
* $N\_{PRB}^{BW,u}$ is the number of PRBs allocated in bandwidth BW with numerology u - see Table 6-5.

Table 6-5 The max. number of PRBs for each supported bandwidth and 5G NR numerology u [18], [19]

|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
|  | Channel bandwidth BW [MHz] | | | | | | | | | | | | | |
| u | 5 | 10 | 15 | 20 | 25 | 30 | 40 | 50 | 60 | 80 | 90 | 100 | 200 | 400 |
| 0 | 25 | 52 | 79 | 106 | 133 | 160 | 216 | 270 | N/A | N/A | N/A | N/A | N/A | N/A |
| 1 | 11 | 24 | 38 | 51 | 65 | 78 | 106 | 133 | 162 | 217 | 245 | 273 | N/A | N/A |
| 2 | N/A | 11 | 18 | 24 | 31 | 38 | 51 | 65 | 79 | 107 | 121 | 135 | N/A | N/A |
| 3 | N/A | N/A | N/A | N/A | N/A | N/A | N/A | 66 | N/A | N/A | N/A | 132 | 264 | N/A |
| 4 | N/A | N/A | N/A | N/A | N/A | N/A | N/A | 32 | N/A | N/A | N/A | 66 | 132 | 264 |

* $DLUL\_{ratio}$ is a ratio of the symbols allocated for DL or UL data to total number of symbols in a time period (periodicity) in TDD mode - predefined slot formats in [21]. In case of FDD mode, the *DLULratio* is equal to 1.

Example of calculation of expected downlink throughput for the following system configuration:

* SCS = 15kHz -> u = 0
* MIMO 2x2 -> $v\_{Layers}=2$
* BW = 20 MHz -> $N\_{PRB}^{BW,u}$=106
* Normal CP
* no carrier aggregation -> J = 1
* MCS = 28 and modulation 64QAM -> $Q\_{m}=6$ and Target code rate = 948
* scaling factor *f* = 1
* downlink throughput and FR1 -> OH = 0.14
* TDD configuration 4:1 (DDDDSU), i.e., four DL slots (slot format 0 [21]), one Special slot (slot format 32 [21]) and one UL slot (slot format 1 [21]) where slot format 0 means allocation of all 14 symbols for DL, slot format 1 means allocation of all 14 symbols for UL, slot format 32 means allocation of 10 symbols for DL, 2 symbols for Guard Period, 2 symbols for UL -> $DLUL\_{ratio}=(14.4+10)/14.6)= 0.7857$

$$L1 throughput \left[Mbps\right]=10^{-6}.\sum\_{j=1}^{1}\left(2.6.1.948/1024.\frac{106.12}{\frac{10^{-3}}{14.2^{0}}}.\left(1-0.14\right).0.7857\right)=133.6 Mbps$$

## Downlink peak throughput

### Test description and applicability

The purpose of the test is to measure the peak (i.e., maximum achievable) user data throughput in the downlink direction (i.e., data transmitted from application (traffic) server to UE). A stationary UE is placed under excellent radio conditions inside an isolated cell.

### Test setup and configuration

The test setup is a single cell scenario (i.e., an isolated cell without any inter-cell interference - see clause 4.7) with a stationary UE (real or emulated UE) placed under excellent radio conditions as defined in clause 4.6 - using SINR as the metric since this is a downlink test. Note that in this case of a single cell scenario, SINR is in fact SNR as inter-cell interference is not present. Within the cell there shall be only one active UE downloading data from the application server. The application server shall be placed as close as possible to the core/core emulator and connected to the core/core emulator via a transport link with sufficient capacity so as not to limit the expected data throughput. The test is suitable for both lab and field environments.

**Test configuration**: The test configuration is not specified. The utilized test configuration (parameters) shall be recorded in the test report.

**Laboratory setup**: The radio conditions experienced by the UE can be modified using a variable attenuator/fading generator inserted between the antenna connectors (if available) of the O-RU and the UE, or appropriately emulated using a UE emulator. The test environment shall be setup to achieve excellent radio conditions (SINR as defined in clause 4.6) for the UE, but the minimum coupling loss (see clause 4.6) shall not be exceeded. The UE shall be placed inside an RF shielded box or RF shielded room if the UE is not connected via cable.

**Field setup**: The UE is placed in the centre of cell close to the radiated eNB/gNB antenna(s), where excellent radio conditions (SINR as defined in clause 4.6) shall be observed. The minimum coupling loss (see clause 4.6) shall not be exceeded.

|  |
| --- |
| ![](../assets/images/b8e7b0316b67.emf.png) |
| ![](../assets/images/7268c9561b56.emf.png) |
| ![](../assets/images/ed7fbc55252b.emf.png) |

Figure 6-1 The test setups of 4G, 5G NSA and 5G SA

### Test procedure

1. The test setup is configured according to the test configuration. The test configuration shall be recorded in the test report. The serving cell under test is activated and unloaded. All other cells are turned off.
2. The UE (real or emulated UE) is placed under excellent radio conditions (cell centre close to radiated eNB/gNB antenna) using SINR thresholds as indicated in clause 4.6. The UE is powered on and attached to the network.
3. The downlink full-buffer UDP and TCP data transmission (see clause 4.4) from the application server shall be verified by adjusting the connection settings (cabled environment) or UE position (OTA environment). The UE under excellent radio conditions that is achieving peak user throughput shall see stable utilization of the highest possible downlink MCS, downlink transport block size and downlink MIMO rank (number of layers). These KPIs shall also be verified.
4. The UE shall be turned off or set to airplane mode, to empty the buffers. The downlink full-buffer UDP data transmission from the application server to the UE is started. The UE shall receive the data from the application server.
5. All the required performance data (incl. the signalling and control data) as specified in the "Test requirements" clause below is measured and captured at the UE and Application server sides using logging/measurement tools. The duration of the test shall be at least 3 minutes when the throughput is stable. The location and position of the UE shall remain unchanged during the entire measurement duration (capture of log data).
6. The capture of log data is stopped. The downlink full-buffer UDP data transmission from the application server is stopped.
7. [Optional] Steps 4 to 6 are repeated for downlink full-buffer TCP data transmission.

### Test requirements (expected results)

In addition to the common minimum set of configuration parameters (see clause 4.3), the following metrics and counters shall be captured and reported in the test report for the performance assessment.

UE side (real or emulated UE):

* Radio parameters such as RSRP, RSRQ, CQI, PDSCH SINR (average sample per second)
* PDSCH BLER, PDSCH MCS, MIMO rank (number of layers) (average sample per second)
* Received downlink throughput (L1 and Application layers) (average sample per second)
* Downlink transmission mode
* Channel utilization, i.e., Number of allocated/occupied downlink PRBs and Number of allocated/occupied slots (average sample per second)

Application server side:

* Transmitted downlink throughput (Application layer) (average sample per second)

When the UE is under excellent radio conditions (cell centre), the stable utilization of the highest possible downlink MCS, downlink transport block size and downlink MIMO rank shall be observed. The UE shall also receive the data with minimum downlink BLER.

The Table 6-6 gives an example of the test results record (median and standard deviation from the captured samples shall be calculated for each metric). In case of 5G SA and NSA, SS-RSRP and SS-SINR shall be reported. In case of 5G NSA and dual connectivity (EN-DC), the values shall be provided separately for both LTE and 5G paths. The spectral efficiency (see clause 4.8) shall be calculated for benchmarking and comparison purposes to minimize the influence of different configured parameters such as bandwidth and TDD DL/UL ratio.

Table 6-6 Example record of test results (median and standard deviation from the captured samples)

|  |  |  |
| --- | --- | --- |
|  | UDP | TCP |
| Received L1 DL throughput [Mbps] |  |  |
| L1 DL Spectral efficiency [bps/Hz] |  |  |
| Received Application DL throughput [Mbps] |  |  |
| UE RSRP [dBm] |  |  |
| UE RSRQ [dB] |  |  |
| UE SINR [dB] |  |  |
| MIMO rank |  |  |
| PDSCH MCS |  |  |
| DL PRB number |  |  |
| PDSCH BLER [%] |  |  |

The following figures shall be also included in the test report, and the stable behavior shall be observed and evaluated.

* Received UDP downlink throughput (L1 and Application layer) vs Time duration
* PDSCH SINR vs Time duration
* Number of allocated/occupied downlink PRBs and Number of allocated/occupied slots vs Time duration

The gap analysis shall be provided for the measured and the expected target downlink throughputs which can be calculated based on the procedures from clause 6.1.

## Uplink peak throughput

### Test description and applicability

The purpose of the test is to measure the peak (i.e., maximum achievable) user data throughput in uplink direction (i.e., data transmitted from UE to application (traffic) server). The stationary UE is placed under excellent radio conditions inside the isolated cell.

### Test setup and configuration

The test setup is a single cell scenario (i.e., isolated cell without any inter-cell interference - see clause 4.7) with stationary UE (real or emulated UE) placed under excellent radio conditions as defined in clause 4.6 - using RSRP as the metric since this is an uplink test. Within the cell there shall be only one active UE uploading data to the application server. The application server shall be placed as close as possible to the core/core emulator and connected to the core/core emulator via a transport link with sufficient capacity so as not to limit the expected data throughput. The test is suitable for both lab and field environments.

**Test configuration**: The test configuration is not specified. The utilized test configuration (parameters) shall be recorded in the test report.

**Laboratory setup**: The radio conditions experienced by the UE can be modified using a variable attenuator/fading generator inserted between the antenna connectors (if available) of the O-RU and the UE, or appropriately emulated using a UE emulator. The test environment shall be setup to achieve excellent radio conditions (RSRP as defined in clause 4.6) for the UE, but the minimum coupling loss (see clause 4.6) shall not be exceeded. The UE shall be placed inside an RF shielded box or RF shielded room if the UE is not connected via cable.

**Field setup**: The UE is placed in the centre of cell close to the radiated eNB/gNB antenna(s), where excellent radio conditions (RSRP as defined in clause 4.6) shall be observed. The minimum coupling loss (see 4.5) shall not be exceeded.

The test setups of 4G, 5G NSA and 5G SA are mentioned in Figure 6-1.

### Test procedure

1. The test setup is configured according to the test configuration. The test configuration shall be recorded in the test report. The serving cell under test is activated and unloaded. All other cells are turned off.
2. The UE (real or emulated UE) is placed under excellent radio condition (cell centre close to radiated eNB/gNB antenna) using RSRP thresholds as indicated in clause 4.6. The UE is powered on and attached to the network.
3. The uplink full-buffer UDP and TCP data transmission (see clause 4.4) from UE to the application server shall be verified by adjusting the connection settings (cabled environment) or UE position (OTA environment). The UE under excellent radio conditions that is achieving peak user throughput shall see stable utilization of the highest possible uplink MCS and uplink transport block size. These KPIs shall also be verified.
4. The UE shall be turned off or set to airplane mode, if possible, to empty the buffers. The uplink full-buffer UDP data transmission from UE to the application server is started. The application server shall receive the sent data.
5. All the required performance data (incl. the signalling and control data) as specified in the following "Test requirements" clause is measured and captured at UE, eNB/gNB and Application server sides using logging/measurement tools. The duration of test shall be at least 3 minutes when the throughput is stable. The location and position of the UE shall remain unchanged during the entire measurement duration (capture of log data).
6. The capture of log data is stopped. The uplink full-buffer UDP data transmission from UE to the application server is stopped.
7. The UE shall be turned off or set to airplane mode, to empty the buffers. The uplink full-buffer TCP data transmission from UE to the application server is started, and Step 5 is repeated.

### Test requirements (expected results)

In addition to the common minimum set of configuration parameters (see clause 4.3), the following metrics and counters shall be captured and reported in the test report for the performance assessment.

UE side (real or emulated UE):

* Radio parameters such as RSRP, RSRQ, CQI, PDSCH SINR (average sample per second)
* PUSCH BLER, PUSCH MCS (average sample per second)
* Transmit power on PUSCH
* Transmitted uplink throughput (Application layer) (average sample per second)
* Channel utilization, i.e., Number allocated/occupied uplink PRBs and Number of allocated/occupied slots (average sample per second)

eNB/gNB side (if capture of logs is possible):

* Radio parameters such as PUSCH SINR (average per second)
* PUSCH BLER (average sample per second)

Application server side:

* Received uplink throughput (L1 and Application layers) (average sample per second)

When the UE is in excellent radio condition (cell centre), the stable utilization of the highest possible uplink MCS and uplink transport block size shall be observed and evaluated. The eNB/gNB shall also receive the data with the minimum uplink BLER.

The Table 6-7 gives an example of the test results record (median and standard deviation from the measured samples shall be provided for each metric). In case of 5G SA and NSA, SS-RSRP and SS-SINR shall be reported. In case of 5G NSA and dual connectivity (EN-DC), the values shall be provided separately for both LTE and 5G. The spectral efficiency (see clause 4.8) shall be calculated for benchmarking and comparison to minimize the influence of different configured parameters such as bandwidth and TDD DL/UL ratio.

Table 6-7 Example record of test results (median and standard deviation from the measured samples)

|  |  |  |
| --- | --- | --- |
|  | UDP | TCP |
| Received L1 UL throughput [Mbps] |  |  |
| L1 UL Spectral efficiency [bps/Hz] |  |  |
| Received Application UL throughput [Mbps] |  |  |
| UE RSRP [dBm] |  |  |
| UE PDSCH SINR [dB] |  |  |
| PUSCH transmit power [dBm] |  |  |
| PUSCH MCS |  |  |
| UL RB number |  |  |
| PUSCH BLER [%] |  |  |

The following figures shall be also included in the test report, and the stable behavior shall be observed and evaluated.

* Received UDP uplink throughput (L1 and Application layers) vs Time duration
* UE RSRP vs Time duration
* Number of allocated/occupied uplink PRBs and Number of allocated/occupied slots vs Time duration

The gap analysis shall be provided for the measured and the expected target uplink throughputs which can be calculated based on the procedures from clause 6.1.

## Downlink throughput in different radio conditions

### Test description and applicability

The purpose of the test is to measure the user experienced data throughput in the downlink direction while varying received radio signal quality (strength). The UE is placed in different stationary points inside the isolated cell.

### Test setup and configuration

The test setup is a single cell scenario (i.e., isolated cell without any inter-cell interference - see clause 4.7) with stationary UE (real or emulated UE) placed in different radio conditions as defined in clause 4.6 - SINR shall be considered in case of downlink. Note that in this case of single cell scenario, SINR is in fact SNR as inter-cell interferences are not present. The UE is sequentially placed in different radio conditions ranging from good to poor. Note that the testing of peak downlink throughput in excellent radio conditions is already covered in clause 6.2 and so is skipped in this clause. Within the cell there shall be only one active UE in time downloading data from the application (traffic) server. The application server shall be placed as close as possible to the core/core emulator and connected to the core/core emulator via a transport link with sufficient capacity so as not to limit the expected data throughput. The test is suitable for lab as well as field environment.

**Test configuration**: The test configuration is not specified. The utilized test configuration (parameters) shall be recorded in the test report.

**Laboratory setup**: The radio conditions experienced by the UE can be modified using a variable attenuator/fading generator inserted between the antenna connectors (if available) of the O-RU and the UE, or appropriately emulated using a UE emulator. The radio conditions of UE are initially set to good. The minimum coupling loss (see clause 4.6) shall not be exceeded. The change in radio conditions of UE, from excellent through fair and good to poor, is achieved by increasing the attenuation of radio signal. The UE shall be placed inside RF shielded box or RF shielded room if the UE is not connected via cable.

**Field setup**: The test points with good, fair, and poor radio conditions (as defined in clause 4.6) shall be defined inside the serving cell. The minimum coupling loss (see 4.5) shall not be exceeded. The UE is initially placed where good radio conditions (SINR as defined in clause 4.6) shall be observed. The change in radio conditions is achieved by moving the UE inside the serving cell from close to cell centre (with good radio conditions) to cell edge (with poor radio conditions).

The test setups of 4G, 5G NSA and 5G SA are mentioned in Figure 6-1.

### Test procedure

1. The test setup is configured according to the test configuration. The test configuration shall be recorded in the test report. The serving cell under test is activated and unloaded. All other cells are turned off.
2. The UE (real or emulated UE) is placed under good radio conditions (close to cell centre) using SINR thresholds as indicated in clause 4.6. The UE is powered on and attached to the network.
3. The downlink full-buffer UDP and TCP data transmission (see clause 4.4) from the application server shall be verified by adjusting the connection settings (cabled environment) or UE position (OTA environment) to achieve good radio conditions.
4. The UE shall be turned off or set to airplane mode, to empty the buffers. The downlink full-buffer UDP data transmission from the application server to the UE is started. The UE shall receive the data from the application server.
5. All the required performance data (incl. the signalling and control data) as specified in the following "Test requirements" clause is measured and captured at UE and Application server sides using logging/measurement tools. The duration of test shall be at least 3 minutes when the throughput is stable. The location and position of the UE shall remain unchanged during the entire measurement duration (capture of log data).
6. The capture of log data is stopped. The downlink full-buffer UDP data transmission from the application server is stopped.
7. The radio conditions of UE are changed to fair using SINR thresholds as indicated in clause 4.6. The steps 4 to 6 are repeated.
8. The radio conditions of UE are changed to poor (cell edge) radio condition using SINR thresholds as indicated in clause 4.6. Steps 4 to 6 are repeated.
9. [Optional] Steps 4 to 8 are repeated for downlink full-buffer TCP data transmission.

### Test requirements (expected results)

In addition to the common minimum set of configuration parameters (see clause 4.3), the following metrics and counters shall be captured and reported in the test report for the performance assessment.

UE side (real or emulated UE):

* Radio parameters such as RSRP, RSRQ, CQI, PDSCH SINR (average sample per second)
* PDSCH BLER, PDSCH MCS, MIMO rank (number of layers) (average sample per second)
* Received downlink throughput (L1, and Application layers) (average sample per second)
* Downlink transmission mode
* Channel utilization, i.e., Number of allocated/occupied downlink PRBs and Number of allocated/occupied slots (average sample per second)

Application server side:

* Transmitted downlink throughput (Application layer) (average sample per second)

As the UE moves from good (close to cell centre), to fair, and to poor (cell edge) radio conditions, the changing radio conditions shall cause the UE to report lower CQI and MIMO rank which results in assignment of lower MCS and lower data throughput in the downlink.

The Table 6-8 gives an example of the test results record (median and standard deviation from the captured samples shall be calculated for each metric). In case of 5G SA and NSA, SS-RSRP and SS-SINR shall be reported. In case of 5G NSA and dual connectivity (EN-DC), the values shall be provided separately for both LTE and 5G paths. The spectral efficiency (see clause 4.8) shall be calculated for benchmarking and comparison to minimize the influence of different configured parameters such as bandwidth and TDD DL/UL ratio.

Table 6-8 Example record of test results (median and standard deviation from the captured samples)

|  |  |  |  |
| --- | --- | --- | --- |
|  | Good | Fair | Poor  (cell edge) |
| UDP / TCP | UDP / TCP | UDP / TCP |
| Received L1 DL throughput [Mbps] |  |  |  |
| L1 DL Spectral efficiency [bps/Hz] |  |  |  |
| Received Application DL throughput [Mbps] |  |  |  |
| UE RSRP [dBm] |  |  |  |
| UE PDSCH SINR [dB] |  |  |  |
| MIMO rank |  |  |  |
| PDSCH MCS |  |  |  |
| DL RB number |  |  |  |
| PDSCH BLER [%] |  |  |  |

The following figures shall be also included in the test report, and the stable behavior shall be observed and evaluated.

* Received UDP downlink throughput (L1 and Application layer) vs Time duration
* PDSCH SINR vs Time duration
* Number of allocated/occupied downlink PRBs and Number of allocated/occupied slots vs Time duration

The gap analysis shall be provided for the measured and the expected target downlink throughputs which can be calculated based on the procedures from clause 6.1.

## Uplink throughput in different radio conditions

### Test description and applicability

The purpose of the test is to measure the user experienced data throughput in uplink while varying received radio signal quality (strength). The UE is placed in different stationary points inside the isolated cell.

### Test setup and configuration

The test setup is a single cell scenario (i.e., isolated cell without any inter-cell interference - see clause 4.7) with stationary UE (real or emulated UE) placed in different radio conditions as defined in clause 4.6 - RSRP shall be considered in case of uplink. The UE is gradually placed in different radio conditions from good (close to cell centre) to poor (cell edge - coverage limited cell edge in case of single cell scenario). Note that the testing of peak uplink throughput in excellent radio conditions is already covered in clause 6.3 and so is skipped in this clause. Within the cell there shall be only one active UE in time uploading data to the application (traffic) server. The application server shall be placed as close as possible to the core/core emulator and connected to the core/core emulator via a transport link with sufficient capacity so as not to limit the expected data throughput. The test is suitable for both lab and field environments.

**Test configuration**: The test configuration is not specified. The utilized test configuration (parameters) shall be recorded in the test report.

**Laboratory setup**: The radio conditions experienced by the UE can be modified using a variable attenuator/fading generator inserted between the antenna connectors (if available) of the O-RU and the UE, or appropriately emulated using a UE emulator. The radio conditions of UE are initially set to good. The minimum coupling loss (see clause 4.6) shall not be exceeded. The change in radio conditions of UE, from good to fair to poor, is achieved by increasing the attenuation of radio signal. The UE shall be placed inside RF shielded box or RF shielded room if the UE is not connected via cable.

**Field setup**: The test points with good, fair, and poor radio conditions (as defined in clause 4.6) shall be identified inside the serving cell. The minimum coupling loss (see 4.5) shall not be exceeded. The UE is initially placed where good radio conditions (RSRP as defined in clause 4.6) shall be observed. The change in radio conditions is achieved by moving the UE inside the serving cell from close to cell centre (with good radio conditions) to cell edge (with poor radio conditions).

The test setups of 4G, 5G NSA and 5G SA are illustrated in Figure 6-1.

### Test procedure

1. The test setup is configured according to the test configuration. The test configuration shall be recorded in the test report. The serving cell under test is activated and unloaded. All other cells are turned off.
2. The UE (real or emulated UE) is placed under good radio condition (close to cell centre) using RSRP thresholds as indicated in clause 4.6. The UE is powered on and attached to the network.
3. The uplink full-buffer UDP and TCP data transmission (see clause 4.4) from UE to the application server shall be verified by adjusting the connection settings (cabled environment) or UE position (OTA environment) to achieve good radio conditions.
4. The UE shall be turned off or set to airplane mode, to empty the buffers. The uplink full-buffer UDP data transmission from UE to the application server is started. The application server shall receive the data from UE.
5. All the required performance data (incl. the signalling and control data) as specified in the following "Test requirements" clause is measured and captured at UE, eNB/gNB and application server side using logging/measurement tools. The duration of test shall be at least 3 minutes when the throughput is stable. The location and position of the UE shall remain unchanged during the entire measurement duration (capture of log data).
6. The capture of log data is stopped. The uplink full-buffer UDP data transmission from UE to the application server is stopped.
7. The radio conditions of UE are changed to fair using RSRP thresholds as indicated in clause 4.6. The steps 4 to 6 are repeated.
8. The radio conditions of UE are changed to poor (cell edge) radio condition using RSRP thresholds as indicated in clause 4.6. Steps 4 to 6 are repeated.
9. [Optional] Steps 4 to 8 are repeated for uplink full-buffer TCP data transmission.

### Test requirements (expected results)

In addition to the common minimum set of configuration parameters (see clause 4.3), the following metrics and counters shall be captured and reported in the test report for the performance assessment.

UE side (real or emulated UE):

* Radio parameters such as RSRP, RSRQ, CQI, PDSCH SINR (average sample per second)
* PUSCH BLER, PUSCH MCS (average sample per second)
* Transmit power on PUSCH
* Transmitted uplink throughput (Application layer) (average sample per second)
* Channel utilization, i.e., Number allocated/occupied uplink PRBs and Number of allocated/occupied slots (average sample per second)

eNB/gNB side (if capture of logs is possible):

* Radio parameters such as PUSCH SINR (average per second)
* PUSCH BLER (average per second)

Application server side:

* Received uplink throughput (L1 and Application layers) (average sample per second)

The Table 6-9 gives an example of the test results record (median and standard deviation from the captured samples shall be calculated for each metric). In case of 5G SA and NSA, SS-RSRP and SS-SINR shall be reported. In case of 5G NSA and dual connectivity (EN-DC), the values shall be provided separately for both LTE and 5G paths. The spectral efficiency (see clause 4.8) shall be calculated for benchmarking and comparison to minimize the influence of different configured parameters such as bandwidth and TDD DL/UL ratio.

Table 6-9 Example record of test results (median and standard deviation from the measured samples)

|  | Good | Fair | Poor  (cell edge) |
| --- | --- | --- | --- |
| UDP / TCP | UDP / TCP | UDP / TCP |
| Received L1 UL throughput [Mbps] |  |  |  |
| L1 UL Spectral efficiency [bps/Hz] |  |  |  |
| Received Application UL throughput [Mbps] |  |  |  |
| UE RSRP [dBm] |  |  |  |
| UE PDSCH SINR [dB] |  |  |  |
| PUSCH transmit power [dBm] |  |  |  |
| PUSCH MCS |  |  |  |
| UL RB number |  |  |  |
| PUSCH BLER [%] |  |  |  |

The following figures shall be also included in the test report, and the stable behavior shall be observed and evaluated.

* Received UDP uplink throughput (L1 and Application layers) vs Time duration
* UE RSRP vs Time duration
* Number of allocated/occupied downlink PRBs and Number of allocated/occupied slots vs Time duration

The gap analysis shall be provided for the measured and the expected target uplink throughputs which can be calculated based on the procedures from clause 6.1.

## Bidirectional throughput in different radio conditions

### Test description and applicability

The purpose of the test is to measure the user experienced data throughput in both downlink and uplink in parallel while varying received radio signal quality (strength). The UE is placed in different stationary points inside the isolated cell. The test also includes the measurement of peak (maximum achievable) data throughput of UE located in the excellent radio conditions, and cell edge coverage data throughput of UE located at the cell edge in the poor radio conditions.

### Test setup and configuration

The test setup is a single cell scenario (i.e., isolated cell without any inter-cell interference - see clause 4.7) with stationary UE (real or emulated) placed in different radio conditions as defined in clause 4.6 -RSRP shall be considered in this case. The UE is gradually placed in different radio conditions from excellent (cell centre) to poor (cell edge - coverage limited cell edge in case of single cell scenario). Within the cell there shall be only one active UE in time simultaneously downloading data from and uploading data to the application (traffic) server. The application server shall be placed as close as possible to the core/core emulator and connected to the core/core emulator via a transport link with sufficient capacity so as not to limit the expected data throughput. The test is suitable for both lab and field environments.

**Test configuration**: The test configuration is not specified. The utilized test configuration (parameters) shall be recorded in the test report.

**Laboratory setup**: The radio conditions experienced by the UE can be modified using a variable attenuator/fading generator inserted between the antenna connectors (if available) of the O-RU and the UE, or appropriately emulated using a UE emulator. The radio conditions of UE are initially set to excellent. The minimum coupling loss (see clause 4.6) shall not be exceeded. The change in radio conditions of UE, from excellent through fair and good to poor, is achieved by increasing the attenuation of radio signal. The UE shall be placed inside RF shielded box or RF shielded room if the UE is not connected via cable.

**Field setup**: The test points with excellent, good, fair, and poor radio conditions (as defined in clause 4.6) shall be identified inside the serving cell. The minimum coupling loss (see 4.5) shall not be exceeded. The UE is initially placed in the cell center close to the eNB/gNB antenna(s), where excellent radio conditions (using RSRP as the metric as defined in clause 4.6) shall be observed. The change in radio conditions is achieved by moving the UE inside the serving cell from cell centre (with excellent radio conditions) to cell edge (with poor radio conditions).

The test setups of 4G, 5G NSA and 5G SA are illustrated in Figure 6-1.

### Test procedure

1. The test setup is configured according to the test configuration. The test configuration shall be recorded in the test report. The serving cell under test is activated and unloaded. All other cells are turned off.
2. The UE (real or emulated) is placed under excellent radio conditions as using RSRP thresholds as indicated in clause 4.6. The UE is powered on and attached to the network.
3. The simultaneous downlink and uplink full-buffer UDP and TCP data transmission (see clause 4.4) shall be verified by adjusting the connection settings (cabled environment) or UE position (OTA environment). The UE under excellent radio conditions that is achieving peak uplink and downlink user throughput shall see stable utilization of the highest possible MCS, downlink block size and MIMO rank (number of layers). These KPIs shall also be verified.
4. The UE shall be turned off or set to airplane mode, to empty the buffers. The simultaneous downlink and uplink full-buffer UDP data transmissions are started. Both the UE and application server shall receive the data.
5. All the required performance data (incl. the signalling and control data) as specified in the "Test requirements" clause below are measured and captured at UE, eNB/gNB and application server side using logging/measurement tools. The duration of test shall be at least 3 minutes when the throughput is stable. The location and position of the UE shall remain unchanged during the entire measurement duration (capture of log data).
6. The capture of log data is stopped. The simultaneous downlink and uplink full-buffer UDP data transmissions are stopped.
7. The radio conditions of UE are changed to good as defined by both SINR and RSRP in clause 4.6, if possible. The steps 4 to 6 are repeated.
8. The radio conditions of UE are changed to fair as defined by both SINR and RSRP in clause 4.6, if possible. The steps 4 to 6 are repeated.
9. The radio conditions of UE are changed to poor (cell edge) radio condition as defined by both SINR and RSRP in clause 4.6, if possible. The steps 4 to 6 are repeated.
10. [Optional] Steps 4 to 9 are repeated for simultaneous downlink and uplink full-buffer TCP data transmission.

### Test requirements (expected results)

In addition to the common minimum set of configuration parameters (see clause 4.3), the following metrics and counters shall be captured and reported in the test report for the performance assessment.

UE side (real or emulated):

* Radio parameters such as RSRP, RSRQ, CQI, PDSCH SINR (average sample per second)
* PDSCH BLER, PDSCH MCS, PUSCH BLER, PUSCH MCS (average sample per second)
* DL MIMO rank (number of layers) (average sample per second)
* Downlink transmission mode
* Transmit power on PUSCH
* Received downlink throughput (L1, and Application layers) (average sample per second)
* Transmitted uplink throughput (Application layer) (average sample per second)
* Channel utilization, i.e., Number allocated/occupied PRBs and Number of allocated/occupied slots in both downlink and uplink directions (average sample per second)

eNB/gNB side (if capture of logs is possible):

* Radio parameters such as PUSH SINR (average per second)

Application server side:

* Received uplink throughput (L1 and Application layers) (average sample per second)
* Transmitted downlink throughput (Application layer) (average sample per second)

When the UE is under excellent radio conditions (cell centre), the stable utilization of the highest possible MCS and transport block size in both uplink and downlink direction shall be observed and evaluated. The UE and eNB/gNB shall also receive the data with the minimum downlink and uplink BLER, respectively.

The Table 6-10 gives an example of the test results record (median and standard deviation from the captured samples shall be calculated for each metric). In case of 5G SA and NSA, SS-RSRP and SS-SINR shall be reported. In case of 5G NSA and dual connectivity (EN-DC), the values shall be provided separately for both LTE and 5G paths. The spectral efficiency (see clause 4.8) shall be calculated for benchmarking and comparison to minimize the influence of different configured parameters such as bandwidth and TDD DL/UL ratio.

Table 6-10 Example record of test results (median and standard deviation from the captured samples)

|  | Excellent  (cell centre) | Good | Fair | Poor  (cell edge) |
| --- | --- | --- | --- | --- |
| UDP / TCP | UDP / TCP | UDP / TCP | UDP / TCP |
| Received L1 UL throughput [Mbps] |  |  |  |  |
| L1 UL Spectral efficiency [bps/Hz] |  |  |  |  |
| Received Application UL throughput [Mbps] |  |  |  |  |
| Received L1 DL throughput [Mbps] |  |  |  |  |
| L1 DL Spectral efficiency [bps/Hz] |  |  |  |  |
| Received Application DL throughput [Mbps] |  |  |  |  |
| UE RSRP [dBm] |  |  |  |  |
| UE PDSCH SINR [dB] |  |  |  |  |
| PUSCH transmit power [dBm] |  |  |  |  |
| DL MIMO rank |  |  |  |  |
| DL MCS |  |  |  |  |
| UL MCS |  |  |  |  |
| DL RB number |  |  |  |  |
| UL RB number |  |  |  |  |
| DL PDSCH BLER [%] |  |  |  |  |
| UL PUSCH BLER [%] |  |  |  |  |

The following figures shall be also included in the test report, and the stable behavior shall be observed and evaluated.

* Received UDP uplink throughput (L1 and Application layer) vs Time duration
* Received UDP downlink throughput (L1 and Application layer) vs Time duration
* UE RSRP vs Time duration
* UE PDSCH SINR vs Time duration
* Number of allocated/occupied downlink PRBs and Number of allocated/occupied downlink slots vs Time duration
* Number of allocated/occupied uplink PRBs and Number of allocated/occupied uplink slots vs Time duration

The bidirectional DL and UL throughputs shall be compared with unidirectional downlink (clause 6.4) and uplink (clause 6.5) throughputs. Assuming the same test conditions (radio conditions), the bidirectional and unidirectional throughputs are expected to be equal.

The gap analysis shall be provided for the measured and the expected target downlink and uplink throughputs which can be calculated based on the procedures from clause 6.1.

## Downlink coverage throughput (link budget)

### Test description and applicability

The purpose of the test is to measure the downlink user data throughput (i.e., data transmitted from application (traffic) server to UE) when radio conditions of UE change gradually. Test is verified by moving UE from center to edge of the isolated cell on the main lobe of eNB/gNB antenna until UE loses the coverage (call drop). Test assesses link adaptation and effect on scheduling, CQI, MCS, Number of layers (MIMO Rank) assignment etc. during the movement of UE from excellent radio conditions to poor radio conditions.

### Test setup and configuration

The test setup is a single cell scenario (i.e., isolated cell without any inter-cell interference - see clause 4.7) with UE (real or emulated) slowly moving in the main lobe of eNB/gNB antenna out from cell centre to cell edge until UE loses the coverage (call drop). The drive route inside the cell shall be defined to cover the whole range of SINR values from excellent (cell center) to poor (cell edge) radio conditions as defined in clause 4.6. Note that in case of single cell scenario SINR is in fact SNR as inter-cell interferences are not present. Within the cell there shall be only one active UE downloading UDP/TCP data from the application server. The application server shall be placed as close as possible to the core/core emulator and connected to the core/core emulator via a transport link with sufficient capacity so as not to limit the expected data throughput. The test is suitable for both lab and field environments.

**Test configuration**: The test configuration is not specified. The utilized test configuration (parameters) shall be recorded in the test report.

**Laboratory setup**: The radio conditions experienced by the UE can be modified using a variable attenuator/fading generator inserted between the antenna connectors (if available) of the O-RU and the UE, or appropriately emulated using a UE emulator. The radio conditions of UE are initially set to excellent. The minimum coupling loss (see clause 4.6) shall not be exceeded. The movement of UE out from cell centre to cell edge can be achieved by gradually increasing the attenuation of radio signal to cover the whole range of SINR from excellent through good and fair to poor (as defined in clause 4.6) until UE loses the coverage (call drop). The UE shall be placed inside RF shielded box or RF shielded room if the UE is not connected via cable.

**Field setup**: The drive route inside the isolated cell shall be defined to cover the whole range of SINR values from excellent (cell center) through good and fair to poor (cell edge) (as defined in clause 4.6) until UE loses the coverage (call drop). The UE is placed in the centre of cell close to the radiated eNB/gNB antenna(s). The minimum coupling loss (see 4.5) shall not be exceeded. The change in radio conditions is achieved by moving the UE along the drive route out from cell centre to cell edge until UE loses the coverage (call drop) - see Figure 6-2.

![](../assets/images/5d92d447ac5d.emf.png)

Figure 6-2 Testing of link budget in the field setup

### Test procedure

1. The test setup is configured according to the test configuration. The test configuration shall be recorded in the test report. The serving cell under test is activated and unloaded. All other cells are turned off.
2. The UE (real or emulated) is placed under excellent radio condition (cell centre) using SINR thresholds as indicated in clause 4.6. The UE is powered on and attached to the network.
3. The downlink full-buffer UDP and TCP data transmission (see clause 4.4) from the application server shall be verified. The excellent radio conditions experiencing peak user throughput is identified with stable utilization of the highest possible downlink MCS, downlink transport block size and downlink MIMO rank (number of layers). These KPIs shall also be verified.
4. The UE shall be turned off or set to airplane mode, to empty the buffers. The downlink full-buffer UDP data transmission from the application server to the UE is started. The UE shall receive the data from the application server.
5. All the required performance data (incl. the signalling and control data) as specified in the following "Test requirements" clause is measured and captured at UE and Application server sides using logging/measurement tools.
6. In the field setup, the UE is moved along the defined drive route out from cell centre (excellent radio conditions) to cell edge (poor radio conditions) on the main lobe of eNB/gNB antenna and with constant speed of around 30kph until UE loses the coverage (call drop).
7. In the lab setup, the attenuation between the antenna connectors of O-RU and UE is gradually increased until UE losses the coverage (call drop).
8. The capture of log data is stopped. The downlink full-buffer UDP data transmission from the application server to UE is stopped.
9. [Optional] Steps 5 to 7 are repeated for downlink full-buffer TCP data transmission.

### Test requirements (expected results)

In addition to the common minimum set of configuration parameters (see clause 4.3), the following metrics and counters shall be captured and reported in the test report for the performance assessment.

UE side (real or emulated):

* Radio parameters such as RSRP, RSRQ, CQI, PDSCH SINR (average sample per second)
* PDSCH BLER, PDSCH MCS, MIMO rank (number of layers) (average sample per second)
* Received downlink throughput (L1 and Application layers) (average sample per second)
* Downlink transmission mode (average sample per second)
* Channel utilization, i.e., Number of allocated/occupied downlink PRBs and Number of allocated/occupied slots (average sample per second)
* GPS coordinates (latitude, longitude) in the field setup

Application server side:

* Transmitted downlink throughput (Application layer) (average sample per second)

Initially when the UE is in the excellent radio conditions (cell centre), the stable utilization of the highest possible downlink MCS, downlink transport block size and downlink MIMO rank shall be observed and evaluated. The UE shall also receive the data with the minimum downlink BLER. As the UE moves out from excellent radio conditions (cell centre), the radio conditions of the UE change gradually from excellent through good and fair to poor (see clause 4.6). The changing radio conditions may cause UE reporting lower CQI and MIMO rank which results in assignment of lower MCS and lower data throughput in downlink. Such a behavior shall be observed and evaluated.

Note that the test results can be affected by the various coverage enhancing features (e.g., transmit/receive diversity) at eNB/gNB and/or at UE sides. The used coverage enhancement features shall be also listed in the test report.

The following figures shall be included in the test report, and the behavior shall be evaluated. In case of 5G SA and NSA, SS-RSRP and SS-SINR shall be reported. In case of 5G NSA and dual connectivity (EN-DC), the values shall be provided separately for both LTE and 5G paths. The spectral efficiency (see clause 4.8) shall be calculated for benchmarking and comparison to minimize the influence of different configured parameters such as bandwidth and TDD DL/UL ratio.

* Received UDP downlink throughput (L1 and Application layer) vs PDSCH SINR (all the samples as well as average curve with median values)
* Received UDP L1 downlink spectral efficiency vs PDSCH SINR (all the samples as well as average curve with median values)
* Cumulative distribution function of PDSCH SINR
* Cumulative distribution function of PDSCH MCS
* Number of allocated/occupied downlink PRBs and Number of allocated/occupied slots vs PDSCH SINR (all the samples as well as average curve with median values)

In the field environment, the cell coverage distance in meters (i.e., a straight line from the cell site) that corresponds to the cell-edge downlink application throughput of 6 Mbps for LTE and 50 Mbps for 5G NR shall be recorded.

## Uplink coverage throughput (link budget)

### Test description and applicability

The purpose of the test is to measure the uplink user data throughput (i.e., data transmitted from UE to application (traffic) server) when radio conditions of UE change gradually. Test is verified by moving UE from center to edge of the isolated cell on the main lobe of eNB/gNB antenna until UE loses the coverage (call drop). Test assesses link adaptation and effect on scheduling, uplink transmit power (power control), CQI, MCS, etc. during the movement of UE from excellent radio conditions to poor radio conditions.

### Test setup and configuration

The test setup is a single cell scenario (i.e., isolated cell without any inter-cell interference - see clause 4.7) with UE (real or emulated) slowly moving in the main lobe of eNB/gNB antenna out from cell centre to cell edge until UE loses the coverage (call drop). The drive route inside the cell shall be defined to cover the whole range of RSRP values from excellent (cell center) to poor (cell edge) radio conditions as defined in clause 4.6. Within the cell there shall be only one active UE uploading UDP/TCP data to application server. The application server shall be placed as close as possible to the core/core emulator and connected to the core/core emulator via a transport link with sufficient capacity so as not to limit the expected data throughput. The test is suitable for both lab and field environments.

**Test configuration**: The test configuration is not specified. The utilized test configuration (parameters) shall be recorded in the test report.

**Laboratory setup**: The radio conditions experienced by the UE can be modified using a variable attenuator/fading generator inserted between the antenna connectors (if available) of the O-RU and the UE, or appropriately emulated using a UE emulator. The radio conditions of UE are initially set to excellent. The minimum coupling loss (see clause 4.6) shall not be exceeded. The movement of UE out from cell centre to cell edge can be achieved by gradually increasing the attenuation of radio signal to cover the whole range of RSRP from excellent through good and fair to poor (as defined in clause 4.6) until UE loses the coverage (call drop). The UE shall be placed inside RF shielded box or RF shielded room if the UE is not connected via cable.

**Field setup**: The drive route inside the isolated cell shall be defined to cover the whole range of RSRP values from excellent (cell center) through good and fair to poor (cell edge) (as defined in clause 4.6) until UE loses the coverage (call drop). The UE is placed in the centre of cell close to the radiated eNB/gNB antenna(s). The minimum coupling loss (see 4.5) shall not be exceeded. The change in radio conditions is achieved by moving the UE along the drive route out from cell centre to cell edge until UE loses the coverage (call drop) - see Figure 6-2.

### Test procedure

1. The test setup is configured according to the test configuration. The test configuration shall be recorded in the test report. The serving cell under test is activated and unloaded. All other cells are turned off.
2. The UE (real or emulated) is placed under excellent radio condition (cell centre) using RSRP thresholds as indicated in clause 4.6. The UE is powered on and attached to the network.
3. The uplink full-buffer UDP and TCP data transmission (see clause 4.4) from UE to the application server shall be verified. The UE under excellent radio conditions that is achieving peak user throughput should see stable utilization of the highest possible uplink MCS and uplink transport block size. These KPIs shall also be verified.
4. The UE shall be turned off or set to airplane mode, to empty the buffers. The uplink full-buffer UDP data transmission from the application server to the UE is started. The application server shall receive data from the UE.
5. All the required performance data (incl. the signalling and control data) as specified in the following "Test requirements" clause is measured and captured at UE, eNB/gNB and Application server sides using logging/measurement tools.
6. In the field setup, the UE is moved along the defined drive route out from cell centre (excellent radio conditions) to cell edge (poor radio conditions) on the main lobe of eNB/gNB antenna and with constant speed of around 30kph until UE loses the coverage (call drop).
7. In the lab setup, the attenuation between the antenna connectors of O-RU and UE is gradually increased until UE losses the coverage (call drop).
8. The capture of log data is stopped. The uplink full-buffer UDP data transmission from UE to the application server is stopped.
9. [Optional] Steps 4 to 7 are repeated for uplink full-buffer TCP data transmission.

### Test requirements (expected results)

In addition to the common minimum set of configuration parameters (see clause 4.3), the following metrics and counters shall be captured and reported in the test report for the performance assessment.

UE side (real or emulated):

* Radio parameters such as RSRP, RSRQ, CQI, PDSCH SINR (average sample per second)
* PUSCH BLER, PUSCH MCS (average sample per second)
* Transmit power on PUSCH (average sample per second)
* Transmitted uplink throughput (Application layer) (average sample per second)
* Channel utilization, i.e., Number allocated/occupied uplink PRBs and Number of allocated/occupied slots (average sample per second)
* GPS coordinates (latitude, longitude) in the field setup

eNB/gNB side (if capture of logs is possible):

* Radio parameters such as PUSCH SINR (average per second)
* PUSCH BLER (average per second)

Application server side:

* Received uplink throughput (L1 and Application layers) (average sample per second)

Initially when the UE is in the excellent radio conditions (cell centre), the stable utilization of the highest possible uplink MCS and uplink transport block size shall be observed and evaluated. The eNB/gNB shall also receive the data with the minimum uplink BLER. As the UE moves out from excellent radio conditions (cell centre), the radio conditions of the UE change gradually from excellent through good and fair to poor (see clause 4.6). With deteriorating channel conditions and increasing path loss, eNB/gNB shall start experiencing worse PUSCH/PUCCH BLER. To compensate the path loss and limit PUSCH/PUCCH BLER, eNB/gNB shall command the UE to increate PUSCH/PUCCH transmit power through closed loop Transmit Power Control (TPC) feature. The number of HARQ retransmissions may be also increased. If the power control does not reduce PUSCH/PUCCH BLER bellow a threshold, eNB/gNB shall schedule UE with lower MCS and lower MIMO rank in uplink which results in lower uplink data throughput. The UE moving further away from eNB/gNB can cause radio link failure and call drop (due to UL Max RLC retransmissions, failure in CQI decoding, low uplink SINR, etc.) which results in triggering of RRC connection re-establishment procedure. Such a behavior shall be observed and evaluated.

Note that the test results can be affected by the various coverage enhancing features (e.g., transmit/receive diversity) at eNB/gNB and/or at UE sides. The used coverage enhancement features shall be also listed in the test report.

The following figures shall be included in the test report, and the behavior shall be evaluated. In case of 5G SA and NSA, SS-RSRP and SS-SINR shall be reported. In case of 5G NSA and dual connectivity (EN-DC), the values shall be provided separately for both LTE and 5G paths. The spectral efficiency (see clause 4.8) shall be calculated for benchmarking and comparison to minimize the influence of different configured parameters such as bandwidth and TDD DL/UL ratio.

* Received UDP uplink throughput (L1 and Application layer) vs RSRP (all the samples as well as average curve with median values)
* Received UDP L1 uplink spectral efficiency vs RSRP (all the samples as well as average curve with median values)
* PUSCH transmit power vs RSRP
* Cumulative distribution function of RSRP
* Cumulative distribution function of PUSCH MCS
* Number of allocated/occupied downlink PRBs and Number of allocated/occupied slots vs RSRP (all the samples as well as average curve with median values)

In the field environment, the cell coverage distance in meters (i.e., a straight line from the cell site) that corresponds to the cell-edge uplink application throughput of 0.5 Mbps for LTE and 5 Mbps for 5G NR shall be recorded.

## Downlink aggregated cell throughput (cell capacity)

### Test description and applicability

The purpose of the test is to validate the downlink aggregated cell throughput (downlink cell capacity) when the UEs are distributed in a uniform or non-uniform way inside a cell. This test also captures the influence of MU-MIMO feature on aggregated cell throughput. However, the test does not require support of MU-MIMO or massive MIMO. The aggregated cell throughput depends on the multiple factors like spatial distribution of UEs inside a cell, radio conditions of UEs, test configuration supported by both UE and eNB/gNB, etc. The test covers two spatial distribution scenarios of test UEs, i.e., uniform distribution and non-uniform distribution.

### Test setup and configuration

The test setup is a single cell scenario (i.e., an isolated cell without any inter-cell interference - see clause 4.7) with 10 stationary UEs (real or emulated Ues) in total where 1 UE shall be placed in excellent radio conditions, 2 Ues in good radio conditions, 4 Ues in fair radio conditions and 3 Ues in poor radio conditions. The radio conditions are defined in clause 4.6 - SINR (range of values) shall be considered in case of downlink. Note that in this case of single cell scenario, SINR is in fact SNR as inter-cell interferences are not present.

The Ues can be distributed in the following spatial distribution scenarios (see Figure 6-3):

1. **uniform distribution**: ten Ues are placed uniformly with a spatial separation in both horizontal and vertical directions. Uniform distribution maximizes the potential of MU-MIMO, because the spatially separated Ues can be served by different beams at the same time. The channel experienced by each UE is spatially un-correlated which reduces the inter-beam interference. In addition, selecting orthogonal precoders will further reduce the inter-beam interference.
2. **non-uniform distribution**: the Ues are grouped in clusters. The Ues in the cluster experience very similar radio conditions. In addition, the Ues in the cluster cannot be spatially separated and served by different beams at the same time. This distribution scenario restricts the scheduling options of eNB/gNB resulting in lower aggregated cell throughput.

Figure 6-3 also shows impact of different types of beamforming (namely horizontal beamforming, vertical beamforming, and 3D beamforming) on aggregated cell throughput. The number of vertical beams is usually lower compared to horizontal beams, i.e., the number of Ues which can be spatially separated and served by different vertical beams at the same time is also lower resulting in lower aggregated cell throughput compared to horizontal beamforming. The typical scenario for vertical beamforming is a high-rise building where each floor can be covered by different vertical beam. For example, in Figure 6-3 The distribution scenarios of Ues inside the cell using horizontal, vertical or 3D beamforming

a), Ues 2 and 4 are located in the coverage of the same horizontal beam thus cannot be served at the same time, while in Figure 6-3 The distribution scenarios of Ues inside the cell using horizontal, vertical or 3D beamforming

b), the same Ues 2 and 4 are located in the coverage of two different vertical beams thus can be served at the same time.

|  |  |
| --- | --- |
| ![](../assets/images/1325add0c7b6.emf.png)  a) uniform distribution with horizontal beamforming | ![](../assets/images/7a51bc04e877.emf.png)  b) uniform distribution with vertical beamforming |
| ![](../assets/images/9258a1ec7b21.emf.png)  c) uniform distribution with 3D beamforming | ![](../assets/images/917677c6d6c5.emf.png)  d) non-uniform distribution with horizontal beamforming |

Figure 6-3 The distribution scenarios of Ues inside the cell using horizontal, vertical or 3D beamforming

Within the cell there shall be 10 active Ues in total downloading data from the application server. The application server shall be placed as close as possible to the core/core emulator and connected to the core/core emulator via a transport link with sufficient capacity so as not to limit the expected data throughput. The test is suitable for both lab and field environments.

**Test configuration**: The test configuration is not specified. The utilized test configuration (parameters) shall be recorded in the test report.

**Laboratory setup**: The radio conditions experienced by the UE can be modified using a variable attenuator/fading generator inserted between the antenna connectors (if available) of the O-RU and the UE, or appropriately emulated using a UE emulator. It is recommended to use a UE emulator to properly distribute the Ues inside a cell according to selected distribution scenario. The minimum coupling loss (see clause 4.6) shall not be exceeded. The Ues shall be placed inside an RF shielded box or RF shielded room if the Ues are not connected via cables.

**Field setup**: The Ues shall be distributed inside a cell according to selected distribution scenario. The minimum coupling loss (see clause 4.6) shall not be exceeded.

### Test procedure

1. The test setup is configured according to the test configuration. The test configuration shall be recorded in the test report. The serving cell under test is activated and unloaded. All other cells are turned off.
2. Ten Ues (real or emulated) are placed inside a serving cell according to uniform distribution scenario, and in radio conditions using SINR thresholds as indicated in clause 4.6 - 1 UE shall be placed in excellent radio conditions, 2 Ues in good radio conditions, 4 Ues in fair radio conditions and 3 Ues in poor radio conditions. The Ues are powered on and attached to the network.
3. The downlink full-buffer UDP and TCP data transmissions (see clause 4.4) from the application server to all Ues shall be verified.
4. The Ues shall be turned off or set to airplane mode, to empty the buffers. The downlink full-buffer UDP data transmissions from the application server to all Ues are started. All Ues shall receive the data from application server.
5. All the required performance data (incl. the signalling and control data) as specified in the following "Test requirements" clause is measured and captured at all Ues and Application server using logging/measurement tools.
6. The capture of log data is stopped. The downlink full-buffer UDP data transmission from the application server to Ues is stopped.
7. [Optional] Steps 5 to 6 are repeated for downlink full-buffer TCP data transmissions.
8. [Optional] Non-uniform spatial distribution scenario of Ues is setup. Steps 3 to 7 are repeated.

### Test requirements (expected results)

In addition to the common minimum set of configuration parameters (see clause 4.3), the following metrics and counters shall be captured and reported in the test report for the performance assessment.

UE side (real or emulated UE):

* Radio parameters such as RSRP, RSRQ, CQI, PDSCH SINR (average sample per second)
* PDSCH BLER, PDSCH MCS, MIMO rank (number of layers) (average sample per second)
* Received downlink throughput (L1, and Application layers) (average sample per second)
* Downlink transmission mode
* Channel utilization, i.e., Number of allocated/occupied downlink PRBs and Number of allocated/occupied slots (average sample per second)
* GPS coordinates (latitude, longitude) in the field setup

Application server side:

* Transmitted downlink throughput (Application layer) (average sample per second)

The Table 6-11 Example record of test results (median and standard deviation from the captured samples)

gives an example of the test results record (median and standard deviation from the captured samples shall be calculated for each metric). In case of 5G SA and NSA, SS-RSRP and SS-SINR shall be reported. In case of 5G NSA and dual connectivity (EN-DC), the values shall be provided separately for both LTE and 5G paths. The spectral efficiency (see clause 4.8) shall be calculated for benchmarking and comparison to minimize the influence of different configured parameters such as bandwidth and TDD DL/UL ratio.

Table 6-11 Example record of test results (median and standard deviation from the captured samples)

|  | For each UE (UE 1 to UE 10) |
| --- | --- |
| UDP / TCP |
| Spatial distribution scenario [uniform/non-uniform] |  |
| Received L1 DL throughput [Mbps] |  |
| Aggregated cell L1 DL throughput [Mbps] | *sum of Received L1 DL throughput (UE 1 to UE 10)* |
| L1 DL Spectral efficiency [bps/Hz] |  |
| Received Application DL throughput [Mbps] |  |
| Aggregated cell App. DL throughput [Mbps] | *sum of Received App. DL throughput (UE 1 to UE 10)* |
| UE RSRP [dBm] |  |
| UE PDSCH SINR [dB] |  |
| MIMO rank |  |
| PDSCH MCS |  |
| DL RB number |  |
| Aggregated DL RB number | *sum of DL RB number (UE 1 to UE 10)* |
| PDSCH BLER [%] |  |

In addition, the used spatial distribution scenario(s) shall be properly described and depicted.

The following figures shall be also included in the test report, and the stable behavior shall be observed and evaluated.

* received total UDP/TCP downlink throughput at Application server (L1 and Application layers) vs Time duration

For each UE:

* UE PDSCH SINR vs Time duration
* number of allocated/occupied downlink PRBs and Number of allocated/occupied slots vs Time duration

## Uplink aggregated cell throughput (cell capacity)

### Test description and applicability

The purpose of the test is to validate the uplink aggregated cell throughput (uplink cell capacity) when the Ues are distributed in a uniform or non-uniform way inside a cell. This test also captures the influence of MU-MIMO feature on aggregated cell throughput. The aggregated cell throughput depends on the multiple factors like spatial distribution of Ues inside a cell, radio conditions of Ues, test configuration supported by both UE and eNB/gNB, etc. The test covers two spatial distribution scenarios of test Ues, i.e., uniform distribution and non-uniform distribution.

### Test setup and configuration

The test setup is a single cell scenario (i.e., an isolated cell without any inter-cell interference - see clause 4.7) with 10 stationary UEs (real or emulated UEs) in total where 1 UE shall be placed in excellent radio conditions, 2 UEs in good radio conditions, 4 UEs in fair radio conditions and 3 UEs in poor radio conditions. The radio conditions are defined in clause 4.6 - RSRP (range of values) shall be considered in case of uplink.

The UEs can be distributed in the following spatial distribution scenarios (see Figure 6-3):

1. **uniform distribution**: ten UEs are placed uniformly with a spatial separation in both horizontal and vertical directions. Uniform distribution maximizes the potential of MU-MIMO, because the spatially separated UEs can be served by different beams at the same time. The channel experienced by each UE is spatially un-correlated which reduces the inter-beam interference.
2. **non-uniform distribution**: the UEs are grouped in clusters. The UEs in the cluster experience very similar radio conditions. In addition, the UEs in the cluster cannot be spatially separated and served by different beams at the same time. This distribution scenario restricts the scheduling options of eNB/gNB resulting in lower aggregated cell throughput.

Within the cell there shall be 10 active UEs in total uploading data to the application server. The application server shall be placed as close as possible to the core/core emulator and connected to the core/core emulator via a transport link with sufficient capacity so as not to limit the expected data throughput. The test is suitable for both lab and field environments.

**Test configuration**: The test configuration is not specified. The utilized test configuration (parameters) shall be recorded in the test report.

**Laboratory setup**: The radio conditions experienced by the UE can be modified using a fading generator inserted between the antenna connectors (if available) of the O-RU and the UE, or appropriately emulated using a UE emulator. It is recommended to use a UE emulator to properly distribute the UEs inside a cell according to selected distribution scenario. The minimum coupling loss (see clause 4.6) shall not be exceeded. The UEs shall be placed inside an RF shielded box or RF shielded room if the UEs are not connected via cables.

**Field setup**: The UEs shall be distributed inside a cell according to selected distribution scenario. The minimum coupling loss (see clause 4.6) shall not be exceeded.

### Test procedure

1. The test setup is configured according to the test configuration. The test configuration shall be recorded in the test report. The serving cell under test is activated and unloaded. All other cells are turned off.
2. Ten UEs (real or emulated) in total are placed inside a serving cell according to uniform distribution scenario, and in radio conditions using RSRP thresholds as indicated in clause 4.6 - 1 UE shall be placed in excellent radio conditions, 2 UEs in good radio conditions, 4 UEs in fair radio conditions and 3 UEs in poor radio conditions. The UEs are powered on and attached to the network.
3. The uplink full-buffer UDP and TCP data transmissions (see clause 4.4) from all UEs to application server shall be verified.
4. The UEs shall be turned off or set to airplane mode, to empty the buffers. The uplink full-buffer UDP data transmissions from all UEs to the application server are started. The application server shall receive data from all UEs.
5. All the required performance data (incl. the signalling and control data) as specified in the following "Test requirements" clause is measured and captured at all UEs, eNB/gNB and Application server using logging/measurement tools.
6. The capture of log data is stopped. The uplink full-buffer UDP data transmissions from the UEs to application server are stopped.
7. [Optional] Steps 4 to 6 are repeated for uplink full-buffer TCP data transmissions.
8. [Optional] Non-uniform spatial distribution scenario of UEs is setup. Steps 3 to 7 are repeated.

### Test requirements (expected results)

In addition to the common minimum set of configuration parameters (see clause 4.3), the following metrics and counters shall be captured and reported in the test report for the performance assessment.

UE side (real or emulated UE):

* Radio parameters such as RSRP, RSRQ, CQI, PDSCH SINR (average sample per second)
* PUSCH BLER, PUSCH MCS (average sample per second)
* Transmit power on PUSCH (average sample per second)
* Transmitted uplink throughput (Application layer) (average sample per second)
* Channel utilization, i.e., Number allocated/occupied uplink PRBs and Number of allocated/occupied slots (average sample per second)
* GPS coordinates (latitude, longitude) in the field setup

eNB/gNB side (if capture of logs is possible):

* Radio parameters such as PUSCH SINR (average per second)
* PUSCH BLER (average per second)

Application server side:

* Received uplink throughput (L1 and Application layers) (average sample per second)

The Table 6-12 gives an example of the test results record (median and standard deviation from the captured samples shall be calculated for each metric). In case of 5G SA and NSA, SS-RSRP and SS-SINR shall be reported. In case of 5G NSA and dual connectivity (EN-DC), the values shall be provided separately for both LTE and 5G paths. The spectral efficiency (see clause 4.8) shall be calculated for benchmarking and comparison to minimize the influence of different configured parameters such as bandwidth and TDD DL/UL ratio.

Table 6-12 Example record of test results (median and standard deviation from the captured samples)

|  | For each UE (UE 1 to UE 10) |
| --- | --- |
| UDP / TCP |
| Spatial distribution scenario [uniform/non-uniform] |  |
| Received L1 UL throughput [Mbps] |  |
| Aggregated cell L1 UL throughput [Mbps] | *sum of Received L1 UL throughput (UE 1 to UE 10)* |
| L1 UL Spectral efficiency [bps/Hz] |  |
| Received Application UL throughput [Mbps] |  |
| Aggregated cell App. UL throughput [Mbps] | *sum of Received App. UL throughput (UE 1 to UE 10)* |
| UE RSRP [dBm] |  |
| UE PDSCH SINR [dB] |  |
| PUSCH transmit power [dBm] |  |
| PUSCH MCS |  |
| UL RB number |  |
| Aggregated UL RB number | *sum of UL RB number (UE 1 to UE 10)* |
| PUSCH BLER [%] |  |

In addition, the used spatial distribution scenario(s) shall be properly described and depicted.

The following figures shall be also included in the test report, and the stable behavior shall be observed and evaluated.

* received total UDP/TCP uplink throughput at Application server (L1 and Application layers) vs Time duration

For each UE:

* UE RSRP vs Time duration
* number of allocated/occupied uplink PRBs and Number of allocated/occupied slots vs Time duration

## Impact of fronthaul latency on downlink peak throughput

### Test description and applicability

The purpose of the test is to evaluate the user peak downlink throughput as a function of the fronthaul transport latency (i.e., one-way transmission delay between O-RU and O-DU at OpenFH (CUSM-plane interface), and to identify the maximum applicable fronthaul transport latency. Since the fronthaul transport latency corresponds with the distance (fiber length) between O-RU and O-DU, the results of test can be also used to identify the maximum distance (fiber length) with an acceptable degradation of user peak downlink throughput.

### Test setup and configuration

The network setup is single cell scenario (i.e., isolated cell without any inter-cell interference - see clause 4.7) with stationary UE (real or emulated UE) placed in the excellent radio condition as defined in clause 4.6 - SINR shall be considered in case of downlink. Within the cell there shall be only one active UE downloading data from the application server. The application server shall be placed as close as possible to the core/core emulator and connected to the core/core emulator via transport link with sufficient capacity not limiting the expected data throughput. The test is suitable for lab as well as field environment.

The reference measurement points of the fronthaul latency (R1/R4 - Transmit/Receive interface at O-DU (CU-plane); R2/R3 - Receive/Transmit interfaces at O-RU (CU-plane)) [16] are shown in Figure 6-4. Transmission delay between O-RU and O-DU are specified as T12 (downlink direction) and T34 (uplink direction). Transmission delay shall be symmetrical and equal in both directions. The transmission delay encompasses only the time from when a bit leaves the sender (R1/ R3) until it is received at the receiver (R2/ R4).

![](../assets/images/084aa7435f98.emf.png)

**Figure 6-4 Definition of reference measurement points for fronthaul latency [16]**

**Test configuration**: The test configuration is not specified. The utilized test configuration (parameters) shall be recorded in the test report.

**Laboratory setup**: The radio conditions of UE can be modified by a variable attenuator/fading generator inserted between the antenna connectors of O-RU and UE. The minimum attenuation of radio signal shall be set to achieve the excellent radio conditions (SINR as defined in clause 4.6), but the minimum coupling loss (see clause 4.6) shall not be exceeded. The UE shall be placed inside RF shielded box or RF shielded room if the UE is not connected via cable.

**Field setup**: The UE is placed in the centre of cell close to the radiated eNB/gNB antenna(s), where excellent radio conditions (SINR as defined in clause 4.6) shall be observed. The minimum coupling loss (see clause 4.6) shall not be exceeded.

In this test, a method to vary the fronhaul latency shall be used. In both laboratory and field setups, Figure 6-5, the fronthaul latency may be modified by using of various lengths of fibre (assuming typical delay of fibre around 5 us per kilometre) or by using of a network impairment emulator inserted between O-RU and O-DU. It is necessary to know/measure the transmission delays produced by all fronthaul transport components between O-RU and O-DU to properly calculate the total fronthaul latency (T12/T34).

![](../assets/images/c20eb4769ad0.emf.png) ![](../assets/images/bcce6a7cc9d4.emf.png) ![](../assets/images/8c65565b76a1.emf.png)

Figure 6-5 The fronthaul transport latency test setups of 4G, 5G NSA and 5G SA

### Test procedure

1. The test setup is configured according to the test configuration. The test configuration shall be recorded in the test report. The serving cell under test is activated and unloaded. All other cells are turned off.
2. The UE (real or emulated) is placed in the excellent radio condition (cell centre) as defined by SINR in clause 4.6. The UE is powered on and attached to the network.
3. The downlink full-buffer UDP and TCP data transmission (see clause 4.4) from the application server shall be verified. The excellent radio conditions experiencing peak user throughput is identified with stable utilization of the highest possible downlink MCS, downlink transport block size and downlink MIMO rank (number of layers). The utilization of these KPIs shall be also verified.
4. The fronthaul latency (one-way transmission delay between O-DU and O-RU) shall be set to its minimum value.
5. The UEs shall be turned off or set to airplane mode, to empty the buffers. The downlink full-buffer UDP data transmission from the application server to the UE is started. The UE shall receive the data from application server.
6. All the required performance data (incl. the signalling and control data) as specified in the following "Test requirements" clause is measured and captured at UE and Application server using logging/measurement tools.
7. The capture of log data is stopped. The downlink full-buffer UDP data transmission from the UE to application server is stopped.
8. The fronthaul latency is increased by 20 us if no degradation of user peak downlink throughput was observer in the previous measurement. As soon as a degradation of user peak downlink throughput will be observed, the fronthaul latency is increased only by 5 us to capture fine-grained log data.
9. Steps 5 to 8 are repeated until the total degradation of user peak downlink throughput is less than 30%. The KPIs measured with the minim fronthaul latency are used as a baseline (100%) for calculation of the degradation.
10. [Optional] Steps 4 to 9 are repeated for downlink full-buffer TCP data transmission.

### Test requirements (expected results)

In addition to the common minimum set of configuration parameters (see clause 4.3), the following metrics and counters shall be recorded and reported for the performance assessment.

UE side (real or emulated UE):

* Radio parameters such as RSRP, RSRQ, CQI, PDSCH SINR (average sample per second)
* PDSCH BLER, PDSCH MCS, MIMO rank (number of layers) (average sample per second)
* Received downlink throughput (L1, and Application layers) (average sample per second)
* Downlink transmission mode
* Channel utilization, i.e., Number of allocated/occupied downlink PRBs and Number of allocated/occupied slots (average sample per second)
* GPS coordinates (latitude, longitude) in the field setup

Application server side:

* Transmitted downlink throughput (Application layer) (average sample per second)

When the UE is in the excellent radio conditions (cell centre), the stable utilization of the highest possible downlink MCS, downlink transport block size and downlink MIMO rank shall be observed and evaluated. The UE shall also receive the data with the minimum downlink BLER.

The Table 6-13 gives an example of the test results record (median and standard deviation from the captured samples shall be calculated for each metric). In case of 5G SA and NSA, SS-RSRP and SS-SINR shall be reported. In case of 5G NSA and dual connectivity (EN-DC), the values shall be provided separately for both LTE and 5G.

Table 6-13 The example of record of test results (median and standard deviation from the captured samples)

|  | For each measured fronthaul latency value |
| --- | --- |
| UDP / TCP |
| Total fronthaul transport latency (T12/T34) [us] |  |
| Received L1 DL throughput [Mbps] |  |
| Degradation of Received L1 DL throughput [%]# |  |
| Received Application DL throughput [Mbps] |  |
| UE RSRP [dBm] |  |
| UE RSRQ [dB] |  |
| UE PDSCH SINR [dB] |  |
| MIMO rank |  |
| PDSCH MCS |  |
| DL PRB number |  |
| PDSCH BLER [%] |  |

# The "Received L1 DL throughput" measured with the minim fronthaul latency is used as a baseline (100%) for calculation of the degradation

The following figures shall be also included in the test report.

* Received UDP/TCP downlink throughput (L1 and Application layers) vs Total fronthaul latency (T12/T34)

## Impact of fronthaul latency on uplink peak throughput

### Test description and applicability

The purpose of the test is to evaluate the user peak uplink throughput as a function of the fronthaul transport latency (i.e., one-way transmission delay between O-RU and O-DU at OpenFH (CUSM-plane interface), and to identify the maximum applicable fronthaul transport latency. Since the fronthaul transport latency corresponds with the distance (fiber length) between O-RU and O-DU, the results of test can be also used to identify the maximum distance (fiber length) with an acceptable degradation of user peak uplink throughput.

### Test setup and configuration

The network setup is single cell scenario (i.e., isolated cell without any inter-cell interference - see clause 4.7) with stationary UE (real or emulated UE) placed in the excellent radio condition as defined in clause 4.6 - RSRP shall be considered in case of uplink. Within the cell there shall be only one active UE uploading data to the application server. The application server shall be placed as close as possible to the core/core emulator and connected to the core/core emulator via transport link with sufficient capacity not limiting the expected data throughput. The test is suitable for lab as well as field environment.

The reference measurement points of the fronthaul latency (R1/R4 - Transmit/Receive interface at O-DU (CU-plane); R2/R3 - Receive/Transmit interfaces at O-RU (CU-plane)) [16] are shown in Figure 6-4. Transmission delay between O-RU and O-DU are specified as T12 (downlink direction) and T34 (uplink direction). Transmission delay shall be symmetrical and equal in both directions. The transmission delay encompasses only the time from when a bit leaves the sender (R1/ R3) until it is received at the receiver (R2/ R4).

**Test configuration**: The test configuration is not specified. The utilized test configuration (parameters) shall be recorded in the test report.

**Laboratory setup**: The radio conditions of UE can be modified by a variable attenuator/fading generator inserted between the antenna connectors of O-RU and UE. The minimum attenuation of radio signal shall be set to achieve the excellent radio conditions (RSRR as defined in clause 4.6), but the minimum coupling loss (see clause 4.6) shall not be exceeded. The UE shall be placed inside RF shielded box or RF shielded room if the UE is not connected via cable.

**Field setup**: The UE is placed in the centre of cell close to the radiated eNB/gNB antenna(s), where excellent radio conditions (RSRP as defined in clause 4.6) shall be observed. The minimum coupling loss (see clause 4.6) shall not be exceeded.

In this test, a method to vary the fronhaul latency shall be used. In both laboratory and field setups, Figure 6-5, the fronthaul latency may be modified by using of various lengths of fibre (assuming typical delay of fibre around 5 us per kilometre) or by using of a network impairment emulator inserted between O-RU and O-DU. It is necessary to know/measure the transmission delays produced by all fronthaul transport components between O-RU and O-DU to properly calculate the total fronthaul latency (T12/T34).

### Test procedure

1. The test setup is configured according to the test configuration. The test configuration shall be recorded in the test report. The serving cell under test is activated and unloaded. All other cells are turned off.
2. The UE (real or emulated) is placed in the excellent radio condition (cell centre) as defined by RSRP in clause 4.6. The UE is powered on and attached to the network.
3. The uplink full-buffer UDP and TCP data transmission (see clause 4.4) from UE to the application server shall be verified. The excellent radio conditions experiencing peak user throughput is identified with stable utilization of the highest possible uplink MCS and uplink transport block size. The utilization of these KPIs shall be also verified.
4. The fronthaul latency (one-way transmission delay between O-DU and O-RU) shall be set to its minimum value.
5. The Ues shall be turned off or set to airplane mode, to empty the buffers. The uplink full-buffer UDP data transmission from UE to the application server is started. The application server shall receive data from UE.
6. All the required performance data (incl. the signalling and control data) as specified in the following "Test requirements" clause is measured and captured at UE, eNB/gNB and Application server using logging/measurement tools.
7. The capture of log data is stopped. The uplink full-buffer UDP data transmission from application server to UE is stopped.
8. The fronthaul latency is increased by 20 us if no degradation of user peak uplink throughput was observer in the previous measurement. As soon as a degradation of user peak uplink throughput will be observed, the fronthaul latency is increased only by 5 us to capture fine-grained log data.
9. Steps 5 to 8 are repeated until the total degradation of user peak uplink throughput is less than 30%. The KPIs measured with the minim fronthaul latency are used as a baseline (100%) for calculation of the degradation.
10. [Optional] Steps 4 to 9 are repeated for uplink full-buffer TCP data transmission.

### Test requirements (expected results)

In addition to the common minimum set of configuration parameters (see clause 4.3), the following metrics and counters shall be recorded and reported for the performance assessment.

UE side (real or emulated UE):

* Radio parameters such as RSRP, RSRQ, CQI, PDSCH SINR (average sample per second)
* PUSCH BLER, PUSCH MCS (average sample per second)
* Transmit power on PUSCH (average sample per second)
* Transmitted uplink throughput (Application layer) (average sample per second)
* Channel utilization, i.e., Number allocated/occupied uplink PRBs and Number of allocated/occupied slots (average sample per second)
* GPS coordinates (latitude, longitude) in the field setup

eNB/gNB side (if capture of logs is possible):

* Radio parameters such as PUSCH SINR (average per second)
* PUSCH BLER (average per second)

Application server side:

* Received uplink throughput (L1 and Application layers) (average sample per second)

When the UE is in excellent radio condition (cell centre), the stable utilization of the highest possible uplink MCS and uplink transport block size shall be observed and evaluated. The eNB/gNB shall also receive the data with the minimum uplink BLER.

The Table 6-14 gives an example of the test results record (median and standard deviation from the captured samples shall be calculated for each metric). In case of 5G SA and NSA, SS-RSRP and SS-SINR shall be reported. In case of 5G NSA and dual connectivity (EN-DC), the values shall be provided separately for both LTE and 5G.

Table 6-14 The example of record of test results (median and standard deviation from the captured samples)

|  | For each measured fronthaul latency value |
| --- | --- |
| UDP / TCP |
| Total fronthaul transport latency (T12/T34) [us] |  |
| Received L1 UL throughput [Mbps] |  |
| Degradation of Received L1 UL throughput [%]# |  |
| Received Application UL throughput [Mbps] |  |
| UE RSRP [dBm] |  |
| UE RSRQ [dB] |  |
| UE PDSCH SINR [dB] |  |
| PUSCH transmit power [dBm] |  |
| PUSCH MCS |  |
| UL PRB number |  |
| PUSCH BLER [%] |  |

# The "Received L1 UL throughput" measured with the minim fronthaul latency is used as a baseline (100%) for calculation of the degradation

The following figures shall be also included in the test report.

* Received UDP/TCP uplink throughput (L1 and Application layers) vs Total fronthaul latency (T12/T34)

## Impact of midhaul latency on downlink peak throughput

### Test description and applicability

The purpose of the test is to evaluate the user peak downlink throughput as a function of the midhaul transport latency (i.e., one-way transmission delay between O-DU and O-CU at F1 interface). Since the midhaul transport latency corresponds with the distance (fiber length) between O-DU and O-CU, the results of test can be also used to identify the maximum distance (fiber length) with an acceptable degradation of user peak downlink throughput. Note that the midhaul transport exists only if O-DU and O-CU are not a combined entity, and the interface F1 between O-DU and O-CU is exposed. The test does not support LTE network architecture because an interface providing means for interconnecting LTE O-DU/DU and LTE CU has not been specified yet neither in 3GPP nor in O-RAN ALLIANCE. Note that W1 interface [33] has been specified only for 5G NSA Options 4 and 7 network architectures. The test is suitable only for 5G NSA (Option 3/3a/3x) and 5G SA network architectures as defined in 4.

### Test setup and configuration

The network setup is single cell scenario (i.e., isolated cell without any inter-cell interference - see clause 4.7) with stationary UE (real or emulated UE) placed in the excellent radio condition as defined in clause 4.6 - SINR shall be considered in case of downlink. Within the cell there shall be only one active UE downloading data from the application server. The application server shall be placed as close as possible to the core/core emulator and connected to the core/core emulator via transport link with sufficient capacity not limiting the expected data throughput. The test is suitable for lab as well as field environment.

The midhaul latency encompasses only the time from when a bit leaves O-CU until it is received at O-DU.

**Test configuration**: The test configuration is not specified. The utilized test configuration (parameters) shall be recorded in the test report.

**Laboratory setup**: The radio conditions of UE can be modified by a variable attenuator/fading generator inserted between the antenna connectors of O-RU and UE. The minimum attenuation of radio signal shall be set to achieve the excellent radio conditions (SINR as defined in clause 4.6), but the minimum coupling loss (see clause 4.6) shall not be exceeded. The UE shall be placed inside RF shielded box or RF shielded room if the UE is not connected via cable.

**Field setup**: The UE is placed in the centre of cell close to the radiated eNB/gNB antenna(s), where excellent radio conditions (SINR as defined in clause 4.6) shall be observed. The minimum coupling loss (see clause 4.6) shall not be exceeded.

In this test, a method to vary the midhaul transport latency shall be used. In both laboratory and field setups, Figure 6-6, the midhaul transport latency may be modified by using of a network impairment emulator or fiber spool or etc., inserted between O-DU and O-CU. It is necessary to know/measure the transmission delays produced by all midhaul transport components between O-DU and O-CU to properly calculate the total midhaul latency.

![](../assets/images/48dcfa9e37a3.emf.png) ![](../assets/images/f1b62b9bfd44.emf.png)

Figure 6-6 The midhaul transport latency test setups of 5G NSA and 5G SA

### Test procedure

1. The test setup is configured according to the test configuration. The test configuration shall be recorded in the test report. The serving cell under test is activated and unloaded. All other cells are turned off.
2. The UE (real or emulated) is placed in the excellent radio condition (cell centre) as defined by SINR in clause 4.6. The UE is powered on and attached to the network.
3. The downlink full-buffer UDP and TCP data transmission (see clause 4.4) from the application server shall be verified. The excellent radio conditions experiencing peak user throughput is identified with stable utilization of the highest possible downlink MCS, downlink transport block size and downlink MIMO rank (number of layers). The utilization of these KPIs shall be also verified.
4. The midhaul latency (one-way transmission delay between O-DU and O-CU) shall be set to its minimum value.
5. The UEs shall be turned off or set to airplane mode, to empty the buffers. The downlink full-buffer UDP data transmission from the application server to UE is started. The UE shall receive the data from application server.
6. All the required performance data (incl. the signalling and control data) as specified in the following "Test requirements" clause is measured and captured at UE and Application server using logging/measurement tools.
7. The capture of log data is stopped. The downlink full-buffer UDP data transmission from application server is stopped.
8. The midhaull latency is increased by 1000 us if no degradation of user peak downlink throughput was observer in the previous measurement. As soon as a degradation of user peak downlink throughput will be observed, the midhaul latency is increased only by 250 us to capture fine-grained log data.
9. Steps 5 to 8 are repeated until the total degradation of user peak downlink throughput is less than 30%. The KPIs measured with the minim fronthaul latency are used as a baseline (100%) for calculation of the degradation.
10. [Optional] Steps 4 to 9 are repeated for downlink full-buffer TCP data transmission.

### Test requirements (expected results)

In addition to the common minimum set of configuration parameters (see clause 4.3), the following metrics and counters shall be recorded and reported for the performance assessment.

UE side (real or emulated UE):

* Radio parameters such as RSRP, RSRQ, CQI, PDSCH SINR (average sample per second)
* PDSCH BLER, PDSCH MCS, MIMO rank (number of layers) (average sample per second)
* Received downlink throughput (L1, and Application layers) (average sample per second)
* Downlink transmission mode
* Channel utilization, i.e., Number of allocated/occupied downlink PRBs and Number of allocated/occupied slots (average sample per second)
* GPS coordinates (latitude, longitude) in the field setup

Application server side:

* Transmitted downlink throughput (Application layer) (average sample per second)

When the UE is in the excellent radio conditions (cell centre), the stable utilization of the highest possible downlink MCS, downlink transport block size and downlink MIMO rank shall be observed and evaluated. The UE shall also receive the data with the minimum downlink BLER.

The Table 6-15 gives an example of the test results record (median and standard deviation from the captured samples shall be calculated for each metric). In case of 5G SA and NSA, SS-RSRP and SS-SINR shall be reported. In case of 5G NSA and dual connectivity (EN-DC), the values shall be provided separately for both LTE and 5G.

Table 6-15 The example of record of test results (median and standard deviation from the captured samples)

|  | For each measured midhaul latency value |
| --- | --- |
| UDP / TCP |
| Total midhaul transport latency [us] |  |
| Received L1 DL throughput [Mbps] |  |
| Degradation of Received L1 DL throughput [%]# |  |
| Received Application DL throughput [Mbps] |  |
| UE RSRP [dBm] |  |
| UE RSRQ [dB] |  |
| UE PDSCH SINR [dB] |  |
| MIMO rank |  |
| PDSCH MCS |  |
| DL PRB number |  |
| PDSCH BLER [%] |  |

# The "Received L1 DL throughput" measured with the minim fronthaul latency is used as a baseline (100%) for calculation of the degradation

The following figures shall be also included in the test report.

* Received UDP/TCP downlink throughput (L1 and Application layers) vs Total midhaul latency.

## Impact of midhaul latency on uplink peak throughput

### Test description and applicability

The purpose of the test is to evaluate the user peak uplink throughput as a function of the midhaul transport latency (i.e., one-way transmission delay between O-DU and O-CU at F1 interface). Since the midhaul transport latency corresponds with the distance (fiber length) between O-DU and O-CU, the results of test can be also used to identify the maximum distance (fiber length) with an acceptable degradation of user peak uplink throughput. Note that the midhaul transport exists only if O-DU and O-CU are not a combined entity, and the interfaces between O-DU and O-CU are exposed. The test does not support LTE network architecture because an interface providing means for interconnecting LTE O-DU/DU and LTE CU has not been specified yet neither in 3GPP nor in O-RAN ALLIANCE. Note that W1 interface [33] has been specified only for 5G NSA Options 4 and 7 network architectures. The test is suitable only for 5G NSA (Option 3/3a/3x) and 5G SA network architectures as defined in 4.

### Test setup and configuration

The network setup is single cell scenario (i.e., isolated cell without any inter-cell interference - see clause 4.7) with stationary UE (real or emulated UE) placed in the excellent radio condition as defined in clause 4.6 - RSRP shall be considered in case of uplink. Within the cell there shall be only one active UE uploading data to application server. The application server shall be placed as close as possible to the core/core emulator and connected to the core/core emulator via transport link with sufficient capacity not limiting the expected data throughput. The test is suitable for lab as well as field environment.

The midhaul latency encompasses only the time from when a bit leaves O-DU until it is received at O-CU.

**Test configuration**: The test configuration is not specified. The utilized test configuration (parameters) shall be recorded in the test report.

**Laboratory setup**: The radio conditions of UE can be modified by a variable attenuator/fading generator inserted between the antenna connectors of O-RU and UE. The minimum attenuation of radio signal shall be set to achieve the excellent radio conditions (RSRP as defined in clause 4.6), but the minimum coupling loss (see clause 4.6) shall not be exceeded. The UE shall be placed inside RF shielded box or RF shielded room if the UE is not connected via cable.

**Field setup**: The UE is placed in the centre of cell close to the radiated eNB/gNB antenna(s), where excellent radio conditions (RSRP as defined in clause 4.6) shall be observed. The minimum coupling loss (see clause 4.6) shall not be exceeded.

In this test, a method to vary the midhaul transport latency shall be used. In both laboratory and field setups, Figure 6-6, the midhaul transport latency may be modified by using of a network impairment emulator or fiber spool or etc., inserted between O-DU and O-CU. It is necessary to know/measure the transmission delays produced by all midhaul transport components between O-DU and O-CU to properly calculate the total midhaul latency.

### Test procedure

1. The test setup is configured according to the test configuration. The test configuration shall be recorded in the test report. The serving cell under test is activated and unloaded. All other cells are turned off.
2. The UE (real or emulated) is placed in the excellent radio condition (cell centre) as defined by RSRP in clause 4.6. The UE is powered on and attached to the network.
3. The uplink full-buffer UDP and TCP data transmission (see clause 4.4) from UE to the application server shall be verified. The excellent radio conditions experiencing peak user throughput is identified with stable utilization of the highest possible uplink MCS and uplink transport block size. The utilization of these KPIs shall be also verified.
4. The midhaul latency (one-way transmission delay between O-DU and O-CU) shall be set to its minimum value.
5. The UEs shall be turned off or set to airplane mode, to empty the buffers. The uplink full-buffer UDP data transmission from UE to application server is started. The application server shall receive the data from UE.
6. All the required performance data (incl. the signalling and control data) as specified in the following "Test requirements" clause is measured and captured at UE, eNB/gNB and Application server using logging/measurement tools.
7. The capture of log data is stopped. The uplink full-buffer UDP data transmission from the UE to application server is stopped.
8. The midhaull latency is increased by 1000 us if no degradation of user peak uplink throughput was observer in the previous measurement. As soon as a degradation of user peak uplink throughput will be observed, the midhaul latency is increased only by 250 us to capture fine-grained log data.
9. Steps 5 to 8 are repeated until the total degradation of user peak uplink throughput is less than 30%. The KPIs measured with the minim fronthaul latency are used as a baseline (100%) for calculation of the degradation.
10. [Optional] Steps 4 to 9 are repeated for uplink full-buffer TCP data transmission.

### Test requirements (expected results)

In addition to the common minimum set of configuration parameters (see clause 4.3), the following metrics and counters shall be recorded and reported for the performance assessment.

UE side (real or emulated UE):

* Radio parameters such as RSRP, RSRQ, CQI, PDSCH SINR (average sample per second)
* PUSCH BLER, PUSCH MCS (average sample per second)
* Transmit power on PUSCH (average sample per second)
* Transmitted uplink throughput (Application layer) (average sample per second)
* Channel utilization, i.e., Number allocated/occupied uplink PRBs and Number of allocated/occupied slots (average sample per second)
* GPS coordinates (latitude, longitude) in the field setup

eNB/gNB side (if capture of logs is possible):

* Radio parameters such as PUSCH SINR (average per second)
* PUSCH BLER (average per second)

Application server side:

* Received uplink throughput (L1 and Application layers) (average sample per second)

When the UE is in excellent radio condition (cell centre), the stable utilization of the highest possible uplink MCS and uplink transport block size shall be observed and evaluated. The eNB/gNB shall also receive the data with the minimum uplink BLER.

The Table 6-16 gives an example of the test results record (median and standard deviation from the captured samples shall be calculated for each metric). In case of 5G SA and NSA, SS-RSRP and SS-SINR shall be reported. In case of 5G NSA and dual connectivity (EN-DC), the values shall be provided separately for both LTE and 5G.

Table 6-16 The example of record of test results (median and standard deviation from the captured samples)

|  | For each measured midhaul latency value |
| --- | --- |
| UDP / TCP |
| Total midhaul transport latency [us] |  |
| Received L1 UL throughput [Mbps] |  |
| Degradation of Received L1 UL throughput [%]# |  |
| Received Application UL throughput [Mbps] |  |
| UE RSRP [dBm] |  |
| UE RSRQ [dB] |  |
| UE PDSCH SINR [dB] |  |
| PUSCH transmit power [dBm] |  |
| PDSCH MCS |  |
| UL PRB number |  |
| PUSCH BLER [%] |  |

# The "Received L1 UL throughput" measured with the minim fronthaul latency is used as a baseline (100%) for calculation of the degradation

The following figures shall be also included in the test report.

* Received UDP/TCP uplink throughput (L1 and Application layers) vs Total midhaul latency.

# Services tests

## Services tests introduction

As a part of O-RAN testing, the present document is aimed at ensuring the O-RAN system can work in a telecom network, by inter-working with the other sub-systems to provide End-to-End services. This clause of the document outlines the services which should be tested to validate that the O-RAN system can be deployed and optimized to deliver great end user service experience in a telecom network.

The services which need to be tested are broadly classified as data service(s), video streaming service(s), voice service(s), video calling service(s) in the eMBB slice a`nd services supported using other slices like URLLC and mMTC. This clause of the document also tests different scenarios, such as handover, and different radio conditions, to assess the impact of these scenarios on the end user service(s) experience.

## Data services tests

### 7.1.0 Data services test introduction

Data services form one of the basic services supported as of today on a telecom network. This usage includes everything from web browsing, uploading/downloading content, to traffic generated by all the different applications on the end user device. These services form an integral part of data traffic on a telecom network. This clause is comprised of two test scenarios, which include web browsing and file upload/download.

Along with the monitoring and validation of these services through user experience KPIs, the O-RAN systems should also be monitored. The end user service experience can also be impacted by some of the features available on the O-RAN system. Some of these features have been listed below. As a part of the data services testing, details of these features shall be included in the test report to provide a comprehensive view of the setup used for testing. If additional features or functionalities have been enabled during this testing that impact the end user experience, those shall be included in the test report as well.

* Control Channel Beamforming
* Connected Mode DRX
* Massive MIMO
* Coordinated Multi Point (DL and UL)
* 256QAM Support (DL and UL)
* SSB Power Boost
* Beam Management
* DL Common Channel Beamforming
* Single-User MIMO Beamforming (DL and UL)
* Multi-User MIMO Beamforming (DL and UL)
* Single-User MIMO, TM Switching
* Multi-User MIMO, TM Switching
* TDD configuration support
* RAN Slicing Framework (NR Low/Mid/High)
* RACH Enhancements (PRACH Format 0)
* PF (Proportional Fairness) Scheduling
* QoS Scheduling
* Minimal Bit Rate Scheduling
* Link Adaptation (DL and UL)
* Uplink Data Compression UDC
* PUSCH Frequency Hopping

Refer to the summary table below for a list of test cases and applicable technology.

Table 7-1: Data Service Test Case summary

|  | | | Applicable technology | | |
| --- | --- | --- | --- | --- | --- |
| Test case | | Functional group | LTE | NSA | SA |
| Test ID | Data service |  |  |  |  |
| 7.1.1 | Web Browsing | Service | Y | Y | Y |
| 7.1.2 | File upload/download | Service | Y | Y | Y |

### Web Browsing

#### Test Description

Web browsing forms an integral part of the 4G and 5G data network traffic, and this test case is applicable to both NSA and SA deployments. The testing shall be performed for each applicable technology supported by the system under test, according to table 7-34. HTTP is the protocol used for web browsing and this protocol can be transported over TCP/TLS or UDP/QUIC. These tests will include scenarios which will include both these protocols. Testing may be performed using HTTP/TLS/TCP or HTTP/QUIC/UDP or both these protocols as applicable.

Web browsing KPI

* DNS Resolution time - Time measured from when the client sends a DNS query to when the DNS responds with an IP address in milliseconds/seconds. This KPI should be recorded if DNS is used.
* Time To First Byte (TTFB) - Time measured from when the client makes the HTTP request to when the first byte of the page is received in milliseconds/seconds.
* Page Load Time - Time measured from when the client places the request to when the page is completely loaded in seconds.

#### Test Setup

The SUT in this test case shall be O-eNB along with O-RU, O-DU and O-CU-CP/O-CU-UP for NSA deployments or the O-RU, O-DU and O-CU-CP/O-CU-UP for SA deployments. The O-RAN setup should support the ability to perform this testing in different radio conditions as defined in Clause 4.6. The 4G/5G core will be required to support the basic functionality to authenticate and register an end user device and to setup a PDN connection/PDU session. The 4G core will be used for O-RAN NSA testing, whereas 5G core will be used for O-RAN SA testing. The 4G/5G core may be a completely emulated, partially emulated or a real non-emulated core. The application server should support web browsing and be accessible from the 4G/5G core. This application server(s) should support protocols, such as HTTP/TCP or HTTP/QUIC as applicable. The end user device (UE) used for testing may be a real UE or an emulated one. The test setup shall include tools which can collect traces on the elements and/or packet captures of communication between the elements. This could be a built-in capability of the emulated/non-emulated network elements and end user device(s) or external tool(s). If some of the network elements or application servers arelocated remotely either in a cloud or on the internet, the additional latency should be calculated and accounted for.

The O-eNB, O-RU, O-DU and O-CU-CP/O-CU-UP shall have the correct configuration and software load. Tools which emulate latency shall be used and configured on the O-RAN system (between O-RU, O-DU and O-CU-CP/O-CU-UP) to emulate real-world deployment conditions as applicable. The end user device shall be configured with the correct user credentials to be able to register and authenticate with the O-RAN system and the 4G/5G core. The end user device also shall be provisioned with the correct application, such as the web browser to perform the tests. The 4G/5G core network shall be configured to support the end user device used for testing. This includes supporting registration, authentication and PDN connection/PDU session establishment for this end user device. The application server should be configured to support web browsing, along with support for HTTP/TCP and/or HTTP/QUIC protocols as applicable. Web browsing has several variables which can impact the KPIs and in order to reduce the impact of these variables and make the test outcomes consistent, it is recommended to set up a static web page of ~1.8-2MB size. The size of the web page is comparable to the average size of web pages on the public Internet. A static web page shall not change the content on repeated requests, thus making the test results consistent and repeatable. The locations where the radio conditions are excellent, good, fair and poor shall be identified within the serving cell.

All the elements in the network, including the O-RAN system, 4G/5G core, and the application server should have the ability to capture traces to validate the successful execution of the test cases. The end user device should have the capability to capture traces/packets to calculate the web browsing KPIs. Optionally, the network may have network taps deployed in various legs of the network to get packet captures to validate successful execution of the test cases. All these different components shall have connectivity with each other - the end user device shall be able to connect to O-RAN system, which shall be connected to the 4G/5G core which in turn shall have connectivity to the application server.

#### Test Methodology/Procedure

Ensure the end user device, O-RAN system, 4G/5G core and the application server have all been configured as outlined in Clause 7.1.1.2. All traces and packet captures need to be enabled for the duration of the testing to ensure all communication between network elements can be captured and validated.

1. Power on the end user device in excellent radio condition and ensure it registers with the 4G/5G core for data services.
2. Once the registration is complete, the end user device shall establish a PDU session with the 5G core (SA) or PDN connection with the 4G core (NSA).
3. Open the browser or application on the end user device and start a web browsing session to a web content using HTTP/TCP and/or HTTP/QUIC protocol. If the intent is to execute this test case for both protocols, then this step shall be performed twice, once for web content using HTTP/TCP followed by web content using HTTP/QUIC protocol.
4. Validate the end user can get the content from the application server and view it on the end device. For every test collect the KPIs included in Clause 7.1.1.1.
5. Clear the browser cache on the end user device between tests.
6. Repeat the test multiple times (>10 times) and gather results.
7. Repeat the above steps 1 through 6 for the good, fair and poor radio conditions.

#### Test Expectation (expected results)

As a pre-validation, use the traces to validate a successful registration and PDN connection/PDU session setup by the end user device without any errors. This is a prerequisite before these tests can be validated.

The end user device may be able to view the web browsing content for the web browsing test, with the content being viewable and readable. Use the packet captures to validate there is no packet drop or out of sequence packets which could impact customer experience and point to a misconfigured or flawed system.

Calculate the web browsing KPIs included in Clause 7.1.1.1 and include it in the test report. In a lab setup, the use of DNS may be bypassed by using IP Addresses instead of domain names. However, the DNS resolution time KPI shall be recorded if a DNS is used for testing. The average range of values for these KPIs are included below for guidance, taking into consideration the size of the web page (~ 2MB). These values are applicable when the testing is performed in a controlled environment in good radio condition without the interference of external factors which could impact the KPIs, example: use of the Internet to connect to remote servers/hosts could add additional latency and packet loss issues to the connection, thus impacting the KPIs. As there are multiple variables which can impact the testing in this scenario, a KPI outcome outside the range does not necessarily point to a failure within the SUT.

* DNS Resolution time (conditional mandatory) - < 1 second
* Time To First Byte (TTFB) - < 3 seconds
* Page Load Time - < 12 seconds

As a part of gathering test data and reporting, ensure the minimum configuration parameters (see Clause 4.3) are included in the test report. The following information should also be included in the test report to provide a comprehensive view of the test setup.

End user device side (real or emulated):

* Radio parameters such as RSRP, RSRQ, PDSCH SINR (average sample per second)
* PDSCH BLER, PDSCH MCS, MIMO rank (number of layers) (average sample per second)
* Received downlink throughput for the duration of the page download (L1 and L3 PDCP layers) (average sample per second)
* Downlink transmission mode
* Channel utilization, i.e. Number of allocated/occupied downlink PRBs and Number of allocated/occupied slots (average sample per second)

The table below gives an example of the test report considering the mean and standard deviation of all test results that have been captured.

Table 7-2 Example of Test Report for Web Browsing Testing

|  | Excellent  (cell centre) | Good | Fair | Poor  (cell edge) |
| --- | --- | --- | --- | --- |
| HTTP over TCP/QUIC | HTTP over TCP/QUIC | HTTP over TCP/QUIC | HTTP over TCP/QUIC |
| DNS Resolution Time (Conditional mandatory) |  |  |  |  |
| Time To First Byte (TTFB) |  |  |  |  |
| Page Load Time |  |  |  |  |
| L1 DL throughput [Mbps] |  |  |  |  |
| L1 DL Spectral efficiency [bps/Hz] |  |  |  |  |
| L3 DL PDCP throughput [Mbps] |  |  |  |  |
| Application DL throughput [Mbps] |  |  |  |  |
| UE RSRP [dBm] |  |  |  |  |
| UE PDSCH SINR [dB] |  |  |  |  |
| MIMO rank |  |  |  |  |
| PDSCH MCS |  |  |  |  |
| DL RB number |  |  |  |  |
| UE CQI |  |  |  |  |
| UE RSRQ |  |  |  |  |
| UE PMI |  |  |  |  |
| UE RSSI |  |  |  |  |
| UE Buffer status |  |  |  |  |
| UE Packet delay |  |  |  |  |
| PDSCH BLER [%] |  |  |  |  |

The web browsing experience can also be impacted by some of the features available (see Clause 7.1) on the O-eNB, O-RU, O-DU and O-CU-CP/O-CU-UP. The details of these features, along with any other features/functionality which could impact the end user's web browsing experience should be included in the test report to provide a comprehensive view of the testing.

### File upload/download

#### Test Description

File Transfer Protocol (FTP) is a simple application layer protocol used to transfer file between remote locations. FTP, along with different flavours of the protocols, form one of the fundamental methods to upload/download a file on the internet. This test case is applicable to both NSA and SA deployments and shall be performed twice, once for NSA deployment and once for SA deployment as applicable. This scenario tests the end user experience to upload/download files to/from an FTP server over an O-RAN system. The KPIs used to measure the user experience have been included below

* 1. Download throughput - This is the average application layer throughput to download the file in kbps
  2. Upload throughput - This is the average application layer throughput to upload the file in kbps.
  3. Time taken to Download file - This is the time required to download the file in seconds.
  4. Time taken to Upload file - This is the time required to upload the file in seconds.

#### Test Setup

The SUT in this test case would be O-eNB along with O-RU, O-DU and O-CU-CP/O-CU-UP for NSA deployments or the O-RU, O-DU and O-CU-CP/O-CU-UP for SA deployments. The O-RAN setup should support the ability to perform this testing in different radio conditions as defined in Clause 4.6. A 4G/5G core will be required with the basic functionality to authenticate and register an end user device and to setup a PDN connection/PDU session. The 4G core will be used for O-RAN NSA testing, whereas 5G core will be used for O-RAN SA testing. The 4G/5G core may be a completely emulated, partially emulated or a real non-emulated core. An FTP server acts as an application server for this test case. The end user device (UE) used for testing may be a real UE or an emulated one. The test setup shall include tools which can collect traces on the elements and/or packet captures of communication between the elements. This could be a built-in capability of the emulated/non-emulated network element(s) or external tool(s). Optionally, if some of the network elements are located remotely, either in a cloud or on the internet, the additional latency should be calculated and accounted for.

The O-eNB, O-RU, O-DU and O-CU-CP/O-CU-UP shall have the correct configuration and software load. Tools which emulate latency shall be used and configured on the O-RAN system (between O-RU, O-DU and O-CU-CP/O-CU-UP) to emulate real-world deployment conditions. The end user device shall be configured with the correct user credentials to be able to register and authenticate with the O-RAN system and the 4G/5G core. The end user device also shall be provisioned with the correct application, such as an FTP client, to upload and download files. The 4G/5G core network shall be configured to support the end user device used for testing. This includes supporting registration, authentication and PDN connection/PDU session establishment for this end user device. The FTP server should host large files (>1 GB) which can be used for the download/upload testing. The locations where the radio conditions are excellent, good, fair and poor shall be identified within the serving cell.

All the elements in the network, such as the O-RAN system, 4G/5G core and the application server should have the ability to capture traces to validate the successful execution of the test cases. The end user device should have the capability to capture traces/packets to calculate the file upload/download KPIs. Optionally, the network may have network taps deployed in various legs of the network to get packet captures to validate successful execution of the test cases. All these different components shall have connectivity with each other - the end user device shall be able to connect to O-RAN system, which shall be connected to the 4G/5G core which in turn shall have connectivity to the application server.

#### Test Methodology/Procedure

Ensure the end user device, O-RAN system, 4G/5G core and the FTP server have all been configured as outlined in Clause 7.1.2.2. All traces and packet captures need to be enabled for the duration of the testing to ensure all communication between network elements can be captured and validated.

1. Power on the end user device in excellent radio condition and ensure it registers with the 4G/5G core for data services.
2. Once the registration is complete, the end user device shall establish a PDU session with the 5G core (SA) or PDN connection with the 4G core (NSA).
3. Open the application on the end user device and upload the test file to the FTP server. Make a note of the time taken to upload the file and the average upload throughput.
4. Next use the same application on the end user device to download a different test file from the FTP server. Make a note of the time taken to download the file and the average download throughput.
5. Clear all the buffers and caches on the client and the server. Delete the test files - downloaded file on the client and the uploaded file on the FTP server.
6. Repeat the test multiple times (>10 times) and gather results.
7. Repeat the above steps 1 through 6 for the good, fair and poor radio conditions.

#### Test Expectation (expected results)

As a pre-validation, use the traces to validate a successful registration and PDN connection/PDU session setup by the end user device without any errors. This is a prerequisite before these tests can be validated.

Validate the end user device can upload/download the complete file to/from the FTP server without interruption. Validate there isn't a drop in throughput while uploading/downloading the file to/from the FTP server. Use the packet captures to validate there is no packet drop or out of sequence packets which could impact customer experience and point to a misconfigured or flawed system.

Calculate the file upload/download KPIs included in Clause 7.1.1.1 and include them in the test report. There are no target values for these KPIs as they are dependent on multiple factors used in the test configuration. Some comments on each of the KPIs are included below.

* Download throughput - This value should be comparable to the results of the downlink throughput test performed in Clause 6.2 and Clause 6.4.
* Upload throughput - This value should be comparable to the results of the uplink throughput test performed in Clause 6.3 and Clause 6.5.
* Time taken to Download file - This value should be comparable to the value calculated using the formula included below
* Time taken to Upload file - This value should be comparable to the value calculated using the formula included below.

$$time taken to upload/download \left[seconds\right]=\frac{Size of file in GB x 1000 x 1000 x 8}{uplink/downlink/uplink throughput [kbps]}$$

These KPI values included in Clause 7.1.2.1 shall be included in the test report along with the minimum configuration parameters included in Clause 4.3. The following information should also be included in the test report to provide a comprehensive view of the test setup.

End user device side (real or emulated UE):

* Radio parameters such as RSRP, RSRQ, PDSCH SINR (average sample per second)
* PDSCH BLER, PDSCH MCS, MIMO rank (number of layers) (average sample per second)
* Received downlink throughput (L1 and L3 PDCP layers) (average sample per second)
* Downlink transmission mode
* Channel utilization, i.e. Number of allocated/occupied downlink PRBs and Number of allocated/occupied slots (average sample per second)

The table below gives an example of the test report considering the mean and standard deviation of all test results that have been captured.

Table 7-3 Example Test Report for File Upload/Download Testing

|  | Excellent  (cell centre) | Good | Fair | Poor  (cell edge) |
| --- | --- | --- | --- | --- |
| File  Upload/Download | File  Upload/Download | File  Upload/Download | File  Upload/Download |
| Upload/Download Throughput (kbps) |  |  |  |  |
| Time taken to Upload/Download File |  |  |  |  |
| L1 DL throughput [Mbps] |  |  |  |  |
| L1 DL Spectral efficiency [bps/Hz] |  |  |  |  |
| L3 DL PDCP throughput [Mbps] |  |  |  |  |
| Application DL throughput [Mbps] |  |  |  |  |
| UE RSRP [dBm] |  |  |  |  |
| UE PDSCH SINR [dB] |  |  |  |  |
| MIMO rank |  |  |  |  |
| PDSCH MCS |  |  |  |  |
| DL RB number |  |  |  |  |
| UE CQI |  |  |  |  |
| UE RSRQ |  |  |  |  |
| UE PMI |  |  |  |  |
| UE RSSI |  |  |  |  |
| UE Buffer status |  |  |  |  |
| UE Packet delay |  |  |  |  |
| PDSCH BLER [%] |  |  |  |  |

The file upload/download experience can also be impacted by some of the features available (see Clause 7.1) on the O-eNB, O-RU, O-DU and O-CU-CP/O-CU-UP. The details of these features, along with any other features/functionality which could impact the end user's web browsing experience should be included in the test report to provide a comprehensive view of the testing.

## Video streaming tests

### 7.2.0 Video streaming tests introduction

Video makes up a major part of the internet traffic today and there is a similar trend even on the mobile data traffic. Mobile video accounts for close to two-thirds of the total mobile data traffic and is expected to increase in the coming years. Video streaming has evolved over time with newer and better audio and video codecs. The protocols used to stream the video packets has also been evolving over time, with Adaptive Bit Rate (ABR) being the most common protocol used for streaming video on the internet today. There are multiple flavours of ABR, but at the crux they all use HTTP protocol over TCP/TLS or UPD/QUIC to transfer audio-video packets to a client. A video streaming server which supports ABR hosts multiple versions of the same video content with each version of the video being encoded at different resolution and quality, hence different bit rates. The client uses the ABR protocol to get the list of all available versions of the requested video content and picks the best video content based on the available bandwidth on the client side. The ABR client continuously monitors the network condition and dynamically adjusts the quality and resolution of the video stream to match the available bandwidth.

The ABR protocol provides the user with the best video streaming experience based on the available bandwidth between the client and the content server. This however adds a lot of variables to the streaming session

* An ABR client may start with a lower resolution video and progressively switch to higher resolution video as it better estimates the bandwidth available at the client.
* An ABR client might notice an improvement in the bandwidth and request a higher resolution/quality video content, thus improving the video quality mid-stream.
* An ABR client might notice a degradation in the bandwidth and request a lower resolution/quality video content, thus deteriorating the video quality mid-stream.

These variables make it challenging to quantify the video streaming experience of an end user. There have been many tools and organizations which have defined different methods and algorithms to quantify the end user experience including QoE (Quality of Experience), SVQ (Streaming Video Quality), Video Multimethod Assessment Fusion (VMAF) etc. In this document we recommend using the Mean Opinion Score (MOS) as defined by ITU P.1203.3 to quantify the quality of experience of the end user. This mechanism however limits the testing to H.264 video encoder with a resolution of HD quality (1080p resolution - 1920 x 1080 pixels) or below.

Video Streaming KPIs

* Video start time or Time to load first video frame - Time from when the video was selected to play to when the video starts playing in seconds.
* Number of video stalls/buffering (Optional) - Number of times the video stalled or started buffering during the course of video streaming. This KPI has already been considered by ITU P.1203.3 to provide a cumulative MOS score.
* Duration of stalls in the video (Optional) - The cumulative duration of all the stalls during the course of video streaming in seconds. This KPI has already been considered by ITU P.1203.3 to provide a cumulative MOS score.
* Video MOS score - MOS score for the video streaming session as defined by ITU P.1203.3.

Along with the monitoring and validation of these services using user experience KPIs, the O-RAN systems also shall be monitored. The end user service experience can also be impacted by some of the features available on the O-RAN system. Some of these features have been included in the list below. As a part of the video streaming testing, details of these features shall be included in the test report to provide a comprehensive view of the setup used for testing. If additional features or functionalities have been enabled during this testing that impact the end user experience, those shall be included in the test report as well.

* NR to LTE PS Redirection/Cell Reselection/Handover
* Intra-frequency / Inter-Frequency Cell Reselection/Handover
* NR Coverage-Triggered NR Session Continuity
* LTE-NR & NR-NR Dual Connectivity and NR Carrier Aggregation
* Direct data forwarding between NG-RAN and E-UTRAN nodes for inter-system mobility
* Standard QCI Bearers Support
* Control Channel Beamforming
* Massive MIMO
* 256QAM Support (DL and UL)
* Beam Management
* TDD configuration support
* PF (Proportional Fairness) Scheduling
* Link Adaptation (DL and UL)
* Application Aware QoS

Please see below summary table of test cases and applicable technology.

Table 7-4: Video Streaming Service Test Case Selection summary

|  | | | Applicable technology | | |
| --- | --- | --- | --- | --- | --- |
| Test case | | Functional group | LTE | NSA | SA |
| Test ID | Video Streaming |  |  |  |  |
| 7.2.1 | Video Streaming - Stationary Test | Service | Y | Y | Y |
| 7.2.2 | Video Streaming - Handover between same Master eNB but different O-RUs - Intra O-DU | Service | N/A | Y | N/A |
| 7.2.3 | Video Streaming - Handover between same MeNB but different O-DUs - Inter O-DU Intra O-CU | Service | N/A | Y | N/A |
| 7.2.4 | Video Streaming - Handover between same MeNB but different O-CUs - Inter O-CU | Service | N/A | Y | N/A |
| 7.2.5 | Video Streaming - Handover between different MeNB while staying connected to same SgNB | Service | N/A | Y | N/A |

### Video Streaming - Stationary Test

#### 7.2.1.0 Test Overview

This scenario tests the video experience of a user streaming video over 4G and 5G network when the end user device is stationary.

#### Test Description

Majority of the video streaming on the internet today uses ABR (Adaptive Bit Rate) streaming using HTTP protocol over TCP/TLS or UDP/QUIC. Within this test, the user's video streaming experience when connected to a telecom network over O-RAN system. This test case is applicable to both NSA and SA deployment, and will shall be performed twice, once for NSA deployment and once for SA deployment as applicable.

#### Test Setup

The SUT in this test case would be O-eNB along with O-RU, O-DU and O-CU-CP/O-CU-UP for NSA deployments or the O-RU, O-DU and O-CU-CP/O-CU-UP for SA deployments. The O-RAN setup should support the ability to perform this testing in different radio conditions as defined in Clause 4.6. A 4G/5G core will be required to support the basic functionality to authenticate and register an end user device in order to setup a PDN connection/PDU session. The 4G core will be used for O-RAN NSA testing, whereas 5G core will be used for O-RAN SA testing. The 4G/5G core may be a completely emulated, partially emulated or a real non-emulated core. The application server(s) for this testing should support video streaming using ABR protocol over HTTP/TCP and/or HTTP/QUIC as applicable. The end user device (UE) used for testing may be a real UE or an emulated one. The test setup shall include tools which can collect traces on the elements and/or packet captures of communication between the elements. This could be a built-in capability of the emulated/non-emulated network elements or an external tool. Optionally, if some of the network elements or the application server are located remotely either in a cloud or on the internet, the additional latency should be calculated and accounted for.

The O-eNB, O-RU, O-DU and O-CU-CP/O-CU-UP shall have the correct configuration and software load. Tools which emulate latency shall be used and configured on the O-RAN system (between O-RU, O-DU and O-CU-CP/O-CU-UP) to emulate real-world deployment conditions. The end user device shall be configured with the correct user credentials to be able to register and authenticate with the O-RAN system and the 4G/5G core. The end user device also shall be provisioned with the correct application, such as a video streaming client, to perform the tests. The 4G/5G core network shall be configured to support the end user device used for testing. This includes supporting registration, authentication, and PDN connection/PDU session establishment for this end user device. The locations where the radio conditions are excellent, good, fair and poor shall be identified within the serving cell.

All the elements in the network, including the O-RAN system, 4G/5G core, and the application server should have the ability to capture traces to validate the successful execution of the test cases. The end user device should have the capability to capture traces/packets to calculate the video streaming KPIs. Optionally, the network may have network taps deployed in various legs of the network to get packet captures to validate successful execution of the test cases. All these different components shall have connectivity with each other - the end user device shall be able to connect to O-RAN system, O-RAN system shall be connected to the 4G/5G core which in turn shall have connectivity to the application server.

#### Test Methodology/Procedure

Ensure the end user device, O-RAN system, 4G/5G core and the application server have all been configured as outlined in Clause 7.2.1.2. All traces and packet captures shall be enabled for the duration of the testing to ensure all communication between network elements can be captured and validated.

1. Power on the end user device in excellent radio condition and ensure it registers with the 4G/5G core for data services.
2. Once the registration is complete, the end user device shall establish a PDN Session with the 4G core or PDU session with the 5G core.
3. Open the video streaming client on the end user device and start a video streaming session over HTTP/TCP protocol and let the video stream for at least 120 seconds.
4. Optionally, repeat the test by streaming a video session over the HTTP/QUIC protocol and stream the video content for at least 120 seconds.
5. Repeat the test multiple times (> 10 times) and gather results.
6. Repeat the above steps 1 through 5 for the good, fair and poor radio conditions.

#### Test Expectation (expected results)

As a pre-validation, use the traces to validate a successful registration and PDN connection/PDU session setup by the end user device without any errors. This is a prerequisite before these tests can be validated.

Validate the end user device can start streaming the video without delays and watch the video content. Ensure the video can stream without stalls or intermittent buffering. Use the packet captures to validate there is no packet drop or out of sequence packets which could impact customer experience and point to a misconfigured or flawed system.

The average range of values for the KPIs are included below for guidance. These values are applicable when the testing is performed in a controlled environment in good radio condition without the interference of external factors which could impact the KPIs, example: use of the Internet to connect to remote servers/hosts could add latency, jitter and packet loss issues to the connection, thus impacting the KPIs. As there are multiple variables which can impact the testing in this scenario, a KPI outcome outside the range does not necessarily point to a failure within the SUT.

* Video Start time or Time to load first video frame - ~1.5 seconds
* Number of video stalls/buffering - < 1
* Duration of stalls in the video - < 5 seconds
* Video MOS Score - > 3.5

The values for the end user video streaming KPIs defined in Clause 7.2 shall be included in the test report along with the minimum configuration parameters included in Clause 4.3. The following information should also be included in the test report for the testing performed in different radio conditions to provide a comprehensive view of the test setup.

End user device side (real or emulated UE):

* Radio parameters such as RSRP, RSRQ, PDSCH SINR (average sample per second)
* PDSCH BLER, PDSCH MCS, MIMO rank (number of layers) (average sample per second)
* Downlink transmission mode
* Channel utilization, i.e. Number of allocated/occupied downlink PRBs and Number of allocated/occupied slots (average sample per second)

The table below gives an example of the test report considering the mean and standard deviation of all test results that have been captured.

Table 7-5 Example Test Report for Video Streaming - Stationary Test

|  | Excellent  (cell centre) | Good | Fair | Poor  (cell edge) |
| --- | --- | --- | --- | --- |
| Video Streaming over TCP/QUIC | Video Streaming over TCP/QUIC | Video Streaming over TCP/QUIC | Video Streaming over TCP/QUIC |
| Video Start Time |  |  |  |  |
| Number of Video Stalls/buffering |  |  |  |  |
| Duration of stalls in the video |  |  |  |  |
| Video MOS Score |  |  |  |  |
| L1 DL Spectral efficiency [bps/Hz] |  |  |  |  |
| UE RSRP [dBm] |  |  |  |  |
| UE PDSCH SINR [dB] |  |  |  |  |
| MIMO rank |  |  |  |  |
| PDSCH MCS |  |  |  |  |
| DL RB number |  |  |  |  |
| UE CQI |  |  |  |  |
| UE RSRQ |  |  |  |  |
| UE PMI |  |  |  |  |
| UE RSSI |  |  |  |  |
| UE Buffer status |  |  |  |  |
| UE Packet delay |  |  |  |  |
| PDSCH BLER [%] |  |  |  |  |

The end user video streaming experience can also be impacted by some of the features available (see Clause 7.2) on the O-eNB, O-RU, O-DU and O-CU-CP/O-CU-UP. The details of these features, along with any other features/functionality which could impact the end user's video streaming experience should be included in the test report to provide a comprehensive view of the testing.

### Video Streaming - Handover between same Master eNB but different O-RUs - Intra O-DU

#### 7.2.2.0 Test Overview

This test scenario validates the user's video streaming experience when the end user device (UE) is connected over NSA to a 4G core and is in the process of a handover between two O-RAN subcomponents (two O-RUs) on the Secondary gNB while remaining connected to the same Master eNB. The VoLTE or VoNR services cannot be used to test handover of secondary gNB, video streaming is used for this testing. This test scenario is only applicable in an NSA deployment.

#### Test Description

The 5G O-RAN system has multiple sub-components, including the O-RU, O-DU and the O-CU-CP/O-CU-UP. This setup leads to multiple handover scenarios when the O-RAN system is connected as a Secondary gNB in an NSA deployment. This scenario tests the end user's video streaming experience when the end user device is connected over NSA to the 4G core and performs a handover between O-RUs which are connected to the same O-DU (and O-CU-CP/O-CU-UP) on the Secondary gNB - Intra-O-DU handover. The end user device remains connected to the same Master eNB through the entire handover process. This handover is agnostic to the 4G core as the handover occurs on the O-RAN system. This test assesses the impact of the video streaming service on the end user device in this handover scenario by monitoring the end user video streaming KPIs included in Clause 7.2. This test case streams video using ABR protocol over HTTP/TCP and/or HTTP/QUIC.

#### Test Setup

The SUT in this test case are the Master eNB and a Secondary gNBs. The Master eNB will be an O-eNB and the Secondary gNB will constitute of a pair of O-RUs - O-RU1 and O-RU2, which will connect to the same O-DU and O-CU-CP/O-CU-UP. The O-eNB, O-RUs, O-DU and O-CU-CP/O-CU-UP shall comply with the O-RAN specifications. A 4G core will be required to support the basic functionality to authenticate and register an end user device, to set up a PDN connection. The 4G core may be a completely emulated, partially emulated or a real non-emulated core. The application server(s) for this testing should support video streaming using ABR protocol over HTTP/TCP and/or HTTP/QUIC as applicable. The end user device (UE) used for testing may be a real UE or an emulated one. The test setup shall include tools which can collect traces on the elements and/or packet captures of communication between the elements. This could be a built-in capability of the emulated/non-emulated network elements or an external tool. Optionally, if some of the network elements or application server(s) are located remotely, either in a cloud or on the internet, the additional latency should be calculated and accounted for.

The O-eNB shall have the correct configuration and software load. The pair of O-RUs (O-RU1 and O-RU2) shall be connected to the O-DU and O-CU-CP/O-CU-UP and all the components shall have the correct configuration and software load. Tools which emulate latency shall be used and configured on the O-RAN system (between O-RU, O-DU and O-CU-CP/O-CU-UP) to emulate real-world deployment conditions. The end user device shall be configured with the correct user credentials to be able to register and authenticate with the O-RAN system and the 4G core. The end user device also shall be provisioned with the correct application, such as a video streaming client to perform the tests. The 4G core network shall be configured to support the end user device used for testing. This includes supporting registration, authentication and PDN connection establishment for this end user device.

All the elements in the network, including the O-RAN system, 4G core, and the application server should have the ability to capture traces to validate the successful execution of the test cases. The end user device should have the capability to capture traces/packets to calculate the video streaming KPIs. Optionally, the network may have network taps deployed in various legs of the network to get packet captures to validate successful execution of the test cases. All these different components shall have connectivity with each other - the end user device shall be able to connect to O-RAN system(O-eNB, O-RUs, O-DU and O-CU-CP/O-CU-UP), O-RAN system shall be connected to the 4G core which in turn shall have connectivity to the application server.

#### Test Methodology/Procedure

Ensure the end user device, O-RAN system, 4G core, and the application server have all been configured as outlined in Clause 7.2.2.2. All traces and packet captures shall be enabled for the duration of the testing to ensure all communication between network elements can be captured and validated.

1. Power on the end user device and ensure it registers with the 4G core for data services over NSA by connecting over the O-eNB as Master eNB and O-RU1 of the O-RAN system as secondary gNB.
2. Once the registration is complete, the end user device shall establish a PDN connection with the 4G core.
3. Open the video streaming client on the end user device and start a streaming session over HTTP/TCP protocol.
4. Once the video streaming session has started, move the device so it can handover from O-RU1 to O-RU2 on the Secondary gNB while it continues to use the O-eNB as the Master eNB.
5. Allow the end user device to stream video through the entire handover process. Measure the KPIs included in Clause 7.2 for this video streaming session.
6. Optionally, repeat steps 1 through 5 for a video streaming session which uses HTTP/QUIC protocol for streaming.
7. Repeat the test multiple times (> 10 times) and gather results.

#### Test Expectation (expected results)

As a pre-validation, use the traces to validate a successful registration and PDN connection setup by the end user device without any errors using the Master eNB and O-RU1, O-DU and O-CU-CP/O-CU-UP as the Secondary gNB. This is a prerequisite before these tests can be validated.

Validate the end user device can start streaming the video without delays and watch the video content through the entire handover process. Ensure there are no stalls, downgrading of video quality or intermittent buffering of the video content, especially during the handover process. Use the packet captures to validate there are no packet drops or out of sequence packets which could impact customer experience and point to a misconfigured or flawed system.

The average range of values for the KPIs are included below for guidance. These values are applicable when the testing is performed in a controlled environment in good radio condition without the interference of external factors which could impact the KPIs, example: use of the Internet to connect to remote servers/hosts could add latency, jitter and packet loss issues to the connection, thus impacting the KPIs. As there are multiple variables which can impact the testing in this scenario, a KPI outcome outside the range does not necessarily point to a failure within the SUT.

* Video Start time or Time to load first video frame - ~1.5 seconds
* Number of video stalls/buffering - < 1
* Duration of stalls in the video - < 5 seconds
* Video MOS Score - > 3.5

The values for the end user video streaming KPIs defined in Clause 7.2 shall be included in the test report along with the minimum configuration parameters included in Clause 4.3. The following information should also be included in the test report to provide a comprehensive view of the test setup.

End user device side (real or emulated UE):

* Radio parameters such as RSRP, RSRQ, PDSCH SINR (average sample per second)
* PDSCH BLER, PDSCH MCS, MIMO rank (number of layers) (average sample per second)
* Received downlink throughput (L1 and L3 PDCP layers) (average sample per second)
* Downlink transmission mode
* Channel utilization, i.e. Number of allocated/occupied downlink PRBs and Number of allocated/occupied slots (average sample per second)

The table below gives an example of the test report considering the mean and standard deviation of all test results that have been captured.

Table 7-6 Example Test Report for Video Streaming - Handover between same Master eNB but different O-RUs - Intra DU handover

|  | Video Streaming over HTTP/TCP | Video Streaming over HTTP/QUIC |
| --- | --- | --- |
| Video Start Time |  |  |
| Number of Video Stalls/buffering |  |  |
| Duration of stalls in the video |  |  |
| Video MOS Score |  |  |
| L1 DL Spectral efficiency [bps/Hz] |  |  |
| UE RSRP [dBm] |  |  |
| UE PDSCH SINR [dB] |  |  |
| MIMO rank |  |  |
| PDSCH MCS |  |  |
| DL RB number |  |  |
| UE CQI |  |  |
| UE RSRQ |  |  |
| UE PMI |  |  |
| UE RSSI |  |  |
| UE Buffer status |  |  |
| UE Packet delay |  |  |
| PDSCH BLER [%] |  |  |

The end user video streaming experience can also be impacted by some of the features available (see Clause 6.2) on the O-eNB, O-RU, O-DU and O-CU-CP/O-CU-UP. The details of these features, along with any other features/functionality which could impact the end user's video streaming experience should be included in the test report to provide a comprehensive view of the testing.

### Video Streaming - Handover between same MeNB with different O-DUs - Inter O-DU Intra O-CU

#### 7.2.3.0 Test Overview

This test scenario validates the user's video streaming experience when the UE is connected over NSA to a 4G core and the UE is in the process of a handover between two O-RAN subcomponents (two O-RUs and O-DUs) on the Secondary gNB while remaining connected to the same Master eNB. The VoLTE or VoNR services cannot be used to test handover of secondary gNB, video streaming is used for this testing. This test scenario is only applicable in an NSA deployment.

#### Test Description

The 5G O-RAN system has multiple sub-components, including the O-RU, O-DU and the O-CU-CP/O-CU-UP. This setup leads to multiple handover scenarios when the O-RAN system is connected as a Secondary gNB in an NSA deployment. This scenario tests the end user's video streaming experience when the end user device is connected over NSA to the 4G core and performs a handover between O-RUs which are connected to different O-DUs, which in turn are connected to the same O-CU-CP/O-CU-UP on the Secondary gNB - Inter-O-DU Intra-O-CU handover. The end user device remains connected to the same Master eNB through the entire handover process. This handover is agnostic to the 4G core as the handover occurs on the O-RAN system. This test assesses the impact of the video streaming service on the end user device in this handover scenario by monitoring the KPIs included in Clause 7.2 This test case streams video using ABR protocol over HTTP/TCP and/or HTTP/QUIC.

#### Test Setup

The SUT in this test case shall be the Master eNB and a Secondary gNBs. The Master eNB will be an O-eNB and the Secondary gNB will constitute of a pair of O-RUs - O-RU1 and O-RU2, which are connected to a pair of O-DUs -DU1 and O-DU2, which are connected to the same O-CU-CP/O-CU-UP. The O-eNB, O-RUs, O-DUs and O-CU-CP/O-CU-UP shall comply with the O-RAN specifications. The 4G core will be required to support the basic functionality to authenticate and register an end user device, to set up a PDN connection. The 4G/5G core may be a completely emulated, partially emulated or a real non-emulated core. The application server(s) for this testing should support video streaming using ABR protocol over HTTP/TCP and/or HTTP/QUIC as applicable. The end user device (UE) used for testing may be a real UE or an emulated one. The test setup shall include tools which can collect traces on the elements and/or packet captures of communication between the elements. This may be a built-in capability of the emulated/non-emulated network elements or an external tool. Optionally, if some of the network elements or application server(s) are located remotely either in a cloud or on the Internet, the additional latency should be calculated and accounted for.

The O-eNB shall have the correct configuration and software load. The pair of O-RUs (O-RU1 and O-RU2) shall be connected to the pair of O-DUs (O-DU1 and O-DU2), where O-RU1 is connected to O-DU1 and O-RU2 is connected to O-DU2. Both the O-DUs, O-DU1 and O-DU2 shall be connected to the same O-CU-CP/O-CU-UP. All the O-RAN components (O-RUs, O-DUs and O-CU-CP/O-CU-UP) shall have the correct configuration and software load. The end user device shall be configured with the correct user credentials to register and authenticate with the Master eNB and the 4G core. The end user device also shall be provisioned with the correct application, such as a video streaming client, to perform the tests. The 4G core network shall be configured to support end user device used for testing. This includes supporting registration, authentication and PDN connection establishment for this end user device.

All the elements in the network like O-RAN system, 4G core and the application server should have the ability to capture traces to validate the successful execution of the test cases. The end user device should have the capability to capture traces/packets to calculate the video streaming KPIs. Optionally, the network may have network taps deployed in various legs of the network to get packet captures to validate successful execution of the test cases. All these different components shall have connectivity with each other - the end user device shall be able to connect to O-RAN system (O-eNB, O-RUs, O-DUs and O-CU-CP/O-CU-UP), O-RAN system shall be connected to the 4G core which in turn shall have connectivity to the application server.

#### Test Methodology/Procedure

Ensure the end user device, O-RAN system, 4G core and the application server have all been configured as outlined in Clause 7.2.3.2. All traces and packet captures need to be enabled for the duration of the testing to ensure all communication between network elements can be captured and validated.

1. Power on the end user device and ensure it registers with the 4G core for data services over NSA by connecting over the O-eNB as Master eNB and O-RU1 of the O-RAN system as secondary gNB.
2. Once the registration is complete, the end user device shall establish a PDN connection with the 4G core.
3. Open the video streaming client on the end user device and start a streaming session over HTTP/TCP protocol.
4. Once the video streaming session has started, move the device so it can handover from O-RU1 to O-RU2 (and in turn O-DU1 to O-DU2) on the Secondary gNB, while it continues to use the O-eNB as the Master eNB.
5. Allow the end user device to stream video through the entire handover process. Measure the KPIs included in Clause 7.2 for this video streaming session.
6. Optionally, repeat steps 1 through 5 for a video streaming session which uses HTTP/QUIC protocol for streaming.
7. Repeat the test multiple times (> 10 times) and gather results.

#### Test Expectation (expected results)

As a pre-validation, use the traces to validate a successful registration and PDN connection setup by the end user device without any errors using the O-eNB as Master eNB and O-RU1, O-DU1 and O-CU-CP/O-CU-UP as the Secondary gNB. This is a prerequisite before these tests can be validated.

Validate the end user device can start streaming the video without delays and watch the video content through the entire handover process. Ensure there are no stalls, downgrading of video quality, or intermittent buffering of the video content, especially during the handover process. Use the packet captures to validate there are no packet drops or out of sequence packets which could impact customer experience and point to a misconfigured or flawed system.

The average range of values for the KPIs are included below for guidance. These values are applicable when the testing is performed in a controlled environment in good radio condition without the interference of external factors which could impact the KPIs, example: use of the Internet to connect to remote servers/hosts could add latency, jitter and packet loss issues to the connection, thus impacting the KPIs. As there are multiple variables which can impact the testing in this scenario, a KPI outcome outside the range does not necessarily point to a failure within the SUT.

* Video Start time or Time to load first video frame - ~1.5 seconds
* Number of video stalls/buffering - < 1
* Duration of stalls in the video - < 5 seconds
* Video MOS Score - > 3.5

The values for the end user video streaming KPIs defined in Clause 7.2 need to be included in the test report along with the minimum configuration parameters included in Clause 4.3. The following information should also be included in the test report to provide a comprehensive view of the test setup.

End user device side (real or emulated UE):

* Radio parameters such as RSRP, RSRQ, PDSCH SINR (average sample per second)
* PDSCH BLER, PDSCH MCS, MIMO rank (number of layers) (average sample per second)
* Downlink transmission mode
* Channel utilization, i.e. Number of allocated/occupied downlink PRBs and Number of allocated/occupied slots (average sample per second)

The table below gives an example of the test report considering the mean and standard deviation of all test results that have been captured.

Table 7-7 Example Test Report for Video Streaming - Handover between same Master eNB but different O-RUs and O-DUs - Inter-O-DU Intra-O-CU handover

|  | Video Streaming over HTTP/TCP | Video Streaming over HTTP/QUIC |
| --- | --- | --- |
| Video Start Time |  |  |
| Number of Video Stalls/buffering |  |  |
| Duration of stalls in the video |  |  |
| Video MOS Score |  |  |
| L1 DL Spectral efficiency [bps/Hz] |  |  |
| UE RSRP [dBm] |  |  |
| UE PDSCH SINR [dB] |  |  |
| MIMO rank |  |  |
| PDSCH MCS |  |  |
| DL RB number |  |  |
| UE CQI |  |  |
| UE RSRQ |  |  |
| UE PMI |  |  |
| UE RSSI |  |  |
| UE Buffer status |  |  |
| UE Packet delay |  |  |
| PDSCH BLER [%] |  |  |

The end user video streaming experience can also be impacted by some of the features available (see Clause 7.2) on the O-eNB, O-RU, O-DU and O-CU-CP/O-CU-UP. The details of these features, along with any other features/functionality which could impact the end user's video streaming experience should be included in the test report to provide a comprehensive view of the testing.

### Video Streaming - Handover between same MeNB with different O-CUs - Inter O-CU

#### 7.2.4.0 Test Overview

This test scenario validates the user's video streaming experience when the end user device (UE) is connected over NSA to a 4G core and is in the process of a handover between two Secondary gNB (O-RUs, O-DUs and O-CU-CP/O-CU-UPs) while remaining connected to the same Master eNB. The VoLTE or VoNR services cannot be used to test handover of secondary gNB, video streaming is used for this testing. This test scenario is only applicable in an NSA deployment.

#### Test Description

This scenario tests the impact of a handover on the video streaming service. The end user device is connected over NSA to the 4G core and streaming video, while it performs a handover of the Secondary gNB (O-RU, O-DU and O-CU-CP/O-CU-UP) to a new Secondary gNB (O-RU, O-DU and O-CU-CP/O-CU-UP), i.e. an inter-O-CU handover, while still being connected to the same Master eNB. This test assesses the impact of the video streaming service on the end user device in this handover scenario by monitoring the end user video streaming KPIs included in Clause 7.2. This test case streams video using ABR protocol over HTTP/TCP and/or HTTP/QUIC.

#### Test Setup

The SUT in this test case shall be the O-eNB which are the Master eNB and a pair of Secondary gNBs - O-RU1, O-DU1, O-CU-CP/O-CU-UP1 and O-RU2, O-DU2, O-CU-CP/O-CU-UP2. The O-eNB, O-RUs, O-DUs and O-CU-CP/O-CU-UPs shall comply with the O-RAN specifications. A 4G core will be required to support the basic functionality to authenticate and register an end user device to set up a PDN connection. The 4G/5G core may be a completely emulated, partially emulated or a real non-emulated core. The application server(s) for this testing should support video streaming using ABR protocol over HTTP/TCP and/or HTTP/QUIC as applicable. The end user device (UE) used for testing may be a real UE or an emulated one. The test setup shall include tools which can collect traces on the elements and/or packet captures of communication between the elements. This may be a built-in capability of the emulated/non-emulated network elements or an external tool. Optionally, if some of the network elements are located remotely either in a cloud or on the Internet, the additional latency should be calculated and accounted for.

The O-eNB, pair of gNBs (O-RUs, O-DUs and O-CU-CP/O-CU-UPs) shall have the correct configuration and software load. The pair of gNBs shall be connected as follows - O-RU1 will be connected to O-DU1, which in turn will be connected to O-CU-CP/O-CU-UP1 and similarly O-RU2 will be connected to O-DU2, which in turn will be connected to O-CU-CP/O-CU-UP2. The end user device shall be configured with the correct user credentials to be able to register and authenticate with the Master eNB and the 4G core. The end user device also shall be provisioned with the correct application, such as a video streaming client, to perform the tests. The 4G core network shall be configured to support end user device used for testing. This includes supporting registration, authentication and PDN connection establishment for this end user device.

All the elements in the network,including the O-RAN (O-eNB and gNBs), 4G core, and the application server should have the ability to capture traces to validate the successful execution of the test cases. The end user device should have the capability to capture traces/packets to calculate the video streaming KPIs. Optionally, the network may have network taps deployed in various legs of the network to get packet captures to validate successful execution of the test cases. All these different components shall have connectivity with each other - the end user device shall be able to connect to O-RAN system (O-eNB and gNBs), O-RAN system shall be connected to the 4G core which in turn shall have connectivity to the application server.

#### Test Methodology/Procedure

Ensure the end user device, O-RAN system, 4G core and the application server have all been configured as outlined in Clause 7.2.4.2. All traces and packet captures need to be enabled for the duration of the testing to ensure all communication between network elements can be captured and validated.

1. Power on the end user device and ensure it registers with the 4G core for data services over NSA by connecting over the O-eNB as Master eNB and O-RU1, O-DU1, O-CU-CP/O-CU-UP1 as secondary gNB.
2. Once the registration is complete, the end user device shall establish a PDN connection with the 4G core.
3. Open the video streaming client on the end user device and start a streaming session over HTTP/TCP protocol.
4. Once the video streaming session has started, move the device so the secondary gNB is handed over from O-RU1 to O-RU2 (i.e. from O-RU1, O-DU1 and O-CU-CP/O-CU-UP1, to O-RU2, O-DU2 and O-CU-CP/O-CU-UP2), while it continues to use the O-eNB as the Master eNB.
5. Allow the end user device to stream video through the entire handover process. Measure the KPIs included in Clause 7.2 for this video streaming session.
6. Optionally, repeat steps 1 through 5 for a video streaming session which uses HTTP/QUIC protocol for streaming.
7. Repeat the test multiple times (> 10 times) and gather results.

#### Test Expectation (expected results)

As a pre-validation, use the traces to validate a successful registration and PDN connection setup by the end user device without any errors using the Master eNB and the O-RU1, O-DU1 and O-CU-CP/O-CU-UP1 as secondary gNB. This is a prerequisite before these tests can be validated.

Validate the end user device can start streaming the video without delays and watch the video content through the entire handover process. Ensure there are no stalls, downgrading of video quality, or intermittent buffering of the video content, especially during the handover process. Use the packet captures to validate there are no packet drops or out of sequence packets which could impact customer experience and point to a misconfigured or flawed system.

The average range of values for the KPIs are included below for guidance. These values are applicable when the testing is performed in a controlled environment in good radio condition without the interference of external factors which could impact the KPIs, example: use of the Internet to connect to remote servers/hosts could add latency, jitter and packet loss issues to the connection, thus impacting the KPIs. As there are multiple variables which can impact the testing in this scenario, a KPI outcome outside the range does not necessarily point to a failure within the SUT.

* Video Start time or Time to load first video frame - ~1.5 seconds
* Number of video stalls/buffering - < 1
* Duration of stalls in the video - < 5 seconds
* Video MOS Score - > 3.5

The values for the end user video streaming KPIs defined in Clause 7.2 need to be included in the test report along with the minimum configuration parameters included in Clause 4.3. The following information should also be included in the test report to provide a comprehensive view of the test setup.

End user device side (real or emulated UE):

* Radio parameters such as RSRP, RSRQ, PDSCH SINR (average sample per second)
* PDSCH BLER, PDSCH MCS, MIMO rank (number of layers) (average sample per second)
* Downlink transmission mode
* Channel utilization, i.e. Number of allocated/occupied downlink PRBs and Number of allocated/occupied slots (average sample per second)

The table below gives an example of the test report considering the mean and standard deviation of all test results that have been captured.

Table 7-8 Example Test Report for Video Streaming - Handover between same Master eNB but different O-RUs - Inter CU handover

|  | Video Streaming over HTTP/TCP | Video Streaming over HTTP/QUIC |
| --- | --- | --- |
| Video Start Time |  |  |
| Number of Video Stalls/buffering |  |  |
| Duration of stalls in the video |  |  |
| Video MOS Score |  |  |
| L1 DL Spectral efficiency [bps/Hz] |  |  |
| UE RSRP [dBm] |  |  |
| UE PDSCH SINR [dB] |  |  |
| MIMO rank |  |  |
| PDSCH MCS |  |  |
| DL RB number |  |  |
| UE CQI |  |  |
| UE RSRQ |  |  |
| UE PMI |  |  |
| UE RSSI |  |  |
| UE Buffer status |  |  |
| UE Packet delay |  |  |
| PDSCH BLER [%] |  |  |

The end user video streaming experience can also be impacted by some of the features available (see Clause 7.2) on the O-eNB, O-RU, O-DU and O-CU-CP/O-CU-UP. The details of these features, along with any other features/functionality which could impact the end user's video streaming experience should be included in the test report to provide a comprehensive view of the testing.

### Video Streaming - Handover between different MeNB while staying connected to same SgNB

#### 7.2.5.0 Test Overview

This test scenario validates the user's video streaming experience when the end user device (UE) is connected over NSA to a 4G core and the UE is in the process of a handover between two Master eNBs (two O-eNB) while staying connected to the same Secondary gNB (O-RU, O-DU and O-CU-CP/O-CU-UP). The VoLTE or VoNR services cannot be used to test handover of secondary gNB, video streaming is used for this testing. This test scenario is only applicable in an NSA deployment.

#### Test Description

This scenario tests the impact of a handover on the video streaming service. The end user device is connected over NSA to the 4G core and streaming video while it performs handover of the Master eNB to a new Master eNB, i.e. O-eNB1 to O-eNB2, while staying connected to the same Secondary gNB (O-RU, O-DU and O-CU-CP/O-CU-UP). This test assesses the impact of the video streaming service on the end user device in this handover scenario by monitoring the end user video streaming KPIs included in Clause 7.2. This test case streams video using ABR protocol over HTTP/TCP and/or HTTP/QUIC.

#### Test Setup

The SUT in this test case shall be a pair of O-eNBs (O-eNB1 and O-eNB2) which act as Master eNBs and a Secondary gNBs - (O-RU, O-DU and O-CU-CP/O-CU-UP). The pair of O-eNBs, O-RU, O-DU and O-CU-CP/O-CU-UP shall comply with the O-RAN specifications. A 4G core will be required to support the basic functionality to authenticate and register an end user device to set up a PDN connection. The 4G/5G core may be a completely emulated, partially emulated or a real non-emulated core. The application server(s) for this testing should support video streaming using ABR protocol over HTTP/TCP and/or HTTP/QUIC as applicable. The end user device (UE) used for testing may be a real UE or an emulated one. The test setup shall include tools which can collect traces on the elements and/or packet captures of communication between the elements. This may be a built-in capability of the emulated/non-emulated network elements or an external tool. Optionally, if some of the network elements are located remotely either in a cloud or on the Internet, the additional latency should be calculated and accounted for.

The pair of O-eNBs (O-eNB1 and O-eNB2) and the gNB (O-RU, O-DU and O-CU-CP/O-CU-UP) shall have the correct configuration and software load. Tools which emulate latency shall be used and configured on the O-RAN system (between O-RU, O-DU and O-CU-CP/O-CU-UP) to emulate real-world deployment conditions. The end user device shall be configured with the correct user credentials to be able to register and authenticate with the O-RAN (O-eNBs and gNB) and the 4G core. The end user device also shall be provisioned with the correct application, such as a video streaming client, to perform the tests. The 4G core network shall be configured to support end user device used for testing. This includes supporting registration, authentication and PDN session establishment for this end user device.

All the elements in the network like O-RAN system, 4G core and the application server should have the ability to capture traces to validate the successful execution of the test cases. The end user device should have the capability to capture traces/packets to calculate the video streaming KPIs. Optionally, the network may have network taps deployed in various legs of the network to get packet captures to validate successful execution of the test cases. All these different components shall have connectivity with each other - the end user device shall be able to connect to O-RAN system (O-eNBs and gNB), O-RAN system shall be connected to the 4G core which in turn shall have connectivity to the application server.

#### Test Methodology/Procedure

Ensure the end user device, O-RAN system, 4G core and the application server have all been configured as outlined in Clause 7.2.5.2. All traces and packet captures need to be enabled for the duration of the testing to ensure all communication between network elements can be captured and validated.

1. Power on the end user device and ensure it registers with the 4G core for data services over NSA by connecting over the O-eNB1 as Master eNB and O-RU, O-DU and O-CU-CP/O-CU-UP as Secondary gNB.
2. Once the registration is complete, the end user device shall establish a PDN connection with the 4G core.
3. Open the video streaming client on the end user device and start a streaming session over HTTP/TCP protocol.
4. Once the video streaming session has started, move the end user device so it performs a handover of the Master eNB from O-eNB1 to O-eNB2, while staying connected to the same Secondary gNB i.e. O-RU, O-DU and O-CU-CP/O-CU-UP.
5. Allow the end user device to stream video through the entire handover process. Measure the KPIs included in Clause 7.2 for this video streaming session.
6. Optionally, repeat steps 1 through 6 for a video streaming session which uses HTTP/QUIC protocol for streaming.
7. Repeat the test multiple times (> 10 times) and gather results.

#### Test Expectation (expected results)

As a pre-validation, use the traces to validate a successful registration and PDN connection setup by the end user device without any errors using O-eNB1 as the Master eNB and the O-RU, O-DU and O-CU-CP/O-CU-UP as secondary gNB. This is a prerequisite before these tests can be validated.

Validate the end user device can start streaming the video without delays and watch the video content through the entire handover process. Ensure there are no stalls, downgrading of video quality, or intermittent buffering of the video content, especially during the handover process. Use the packet captures to validate there are no packet drops or out of sequence packets which could impact customer experience and point to a misconfigured or flawed system.

The average range of values for the KPIs are included below for guidance. These values are applicable when the testing is performed in a controlled environment in good radio condition without the interference of external factors which could impact the KPIs, example: use of the Internet to connect to remote servers/hosts could add latency, jitter and packet loss issues to the connection, thus impacting the KPIs. As there are multiple variables which can impact the testing in this scenario, a KPI outcome outside the range does not necessarily point to a failure within the SUT.

* Video Start time or Time to load first video frame - ~1.5 seconds
* Number of video stalls/buffering - < 1
* Duration of stalls in the video - < 5 seconds
* Video MOS Score - > 3.5

The values for the end user video streaming KPIs defined in Clause 7.2 need to be included in the test report along with the minimum configuration parameters included in Clause 4.3. The following information should also be included in the test report to provide a comprehensive view of the test setup.

End user device side (real or emulated UE):

* Radio parameters such as RSRP, RSRQ, PDSCH SINR (average sample per second)
* PDSCH BLER, PDSCH MCS, MIMO rank (number of layers) (average sample per second)
* Downlink transmission mode
* Channel utilization, i.e. Number of allocated/occupied downlink PRBs and Number of allocated/occupied slots (average sample per second)

The table below gives an example of the test report considering the mean and standard deviation of all test results that have been captured.

Table 7-9 Example Test Report for Video Streaming - Handover between Master eNB while staying connected to the same Secondary gNB

|  | Video Streaming over TCP/QUIC | Video Streaming over TCP/QUIC |
| --- | --- | --- |
| Video Start Time |  |  |
| Number of Video Stalls/buffering |  |  |
| Duration of stalls in the video |  |  |
| Video MOS Score |  |  |
| L1 DL Spectral efficiency [bps/Hz] |  |  |
| UE RSRP [dBm] |  |  |
| UE PDSCH SINR [dB] |  |  |
| MIMO rank |  |  |
| PDSCH MCS |  |  |
| DL RB number |  |  |
| UE CQI |  |  |
| UE RSRQ |  |  |
| UE PMI |  |  |
| UE RSSI |  |  |
| UE Buffer status |  |  |
| UE Packet delay |  |  |
| PDSCH BLER [%] |  |  |

The end user video streaming experience can also be impacted by some of the features available (see Clause 7.2) on the O-eNB, O-RU, O-DU and O-CU-CP/O-CU-UP. The details of these features, along with any other features/functionality which could impact the end user's video streaming experience should be included in the test report to provide a comprehensive view of the testing.

## Voice Services - Voice over LTE (VoLTE) tests

### 7.3.0 VoLTE tests introduction

Voice service forms another basic service which is provided to a customer on a telecom network. Even though the earlier 2G/3G networks provide voice service through a circuit-switched network, the present document focuses on voice service provided using a packet switched network and specifies test cases to validate the Voice over LTE service in different scenarios. The KPIs which shall be monitored to assess the voice service are included below

* CSSR - Call Setup Success Rate % - Total number of calls which were successful by the total number of calls made as a percentage.
* CST - Call Setup Time - Time taken from the initial SIP INVITE to when the SIP 180 Ringing is received in seconds.
* MOS Score - Mean Opinion Score for the voice call and shall be measured on both ends of the Voice call - mobile originated and mobile terminated.
* Mute Rate - Percentage of calls which were muted in both directions (calls with RTP loss of > 3-4s in both directions are considered muted call). This KPI shall be measured on both ends of the voice call - mobile originated & mobile terminated and counted only once per call.
* One Way Calls - Percentage of calls which were muted in any one direction (calls with RTP loss of > 3-4s in one direction only are considered one-way calls). This KPI shall be monitored on both ends of the voice call - mobile originated & mobile terminated and counted only once per call.
* RTP Packet Loss % - Number of RTP packets which were dropped/lost in uplink/downlink direction as a percentage of total packets. This KPI shall be measured on both ends of the voice call - mobile originated and mobile terminated.

Along with the monitoring and validation of these services utilizing user experience KPIs, the O-RAN systems also shall be monitored. The end user service experience can also be impacted by some of the features available on the O-RAN system. Some of these features have been included below. As a part of the voice services testing, details of these features shall be included in the test report to get a comprehensive view of the setup used for testing. If additional features or functionalities have been enabled during this testing that impact the end user voice experience, these shall be included in the test report as well.

* RLC in Unacknowledged Mode
* Robust Header Compression
* DRX
* Dynamic GBR Admission Control
* TTI Bundling
* VoLTE Inactivity Timer
* Frequency Hopping
* Multi-Target RRC Connection Re-Establishment
* VoLTE HARQ
* Coordinated Multi Point (DL and UL)
* VoLTE Quality Enhancement
* Packet Loss Detection
* Voice Codec Aware scheduler
* NR to LTE PS Redirection/Cell Reselection/Handover
* LTE to NR PS Redirection/Cell Reselection/Handover

Table 7-10 provides a summary of test cases and applicable technology.

Table 7-10: VoLTE Test Case Selection summary

|  | | | Applicable technology | | |
| --- | --- | --- | --- | --- | --- |
| Test case | | Functional group | LTE | NSA | SA |
| Test ID | Voice service (VoLTE) |  |  |  |  |
| 7.3.1 | VoLTE Stationary Test | Service | Y | N/A | N/A |
| 7.3.2 | VoLTE handover Test (intra) | Service | Y | N/A | N/A |
| 7.3.3 | Voice Service - LTE to NR / NR to LTE handover test | Service | Y | N/A | Y |

### VoLTE Stationary Test

#### 7.3.1.0 Test Overview

This scenario tests the voice service experience on an LTE network - Voice over LTE (VoLTE) when the end user device is stationary.

#### Test Description

With penetration of LTE, VoLTE has become the primary method of providing voice service. VoLTE uses IP packets to send and receive voice packets, with the IP packets being transferred over LTE. IP Multimedia System (IMS) forms an important part of VoLTE as it is used to setup control and data plane needed for VoLTE communication. As voice service is latency sensitive, the 4G core interacts with the IMS core to setup different bearers for Voice traffic - QCI-5 for VoLTE control plane and QCI-1 for VoLTE data plane. This test case is applicable when UE is connected over an O-RAN system to a 4G core in an NSA deployment.

#### Test Setup

The SUT in this test case is an O-eNB which includes the Master eNB and may include a Secondary gNB. As most of the current NSA deployment use the 4G eNB to provide voice services, the use of a secondary gNB is optional. The Secondary gNB is included in this test scenario, but it is only applicable if the gNB plays a role in establishing the control plane or data plane for a voice call. The O-eNB, gNB and the components within these shall comply with the O-RAN specifications. The O-RAN setup should support the ability to perform this testing in different radio conditions as defined in clause 4.6. A 4G core shall be used to support the basic functionality to authenticate and register an end user device in order to setup a PDN connection. An IMS core is used to register the end user device to support voice services on a 4G network. The 4G and IMS cores can be a completely emulated, partially emulated or real non-emulated core. At least two end user devices (UE) shall be used, which may be real UEs or emulated, and both shall support voice service using VoLTE. The end user devices will serve as Mobile Originated (MO) and Mobile Terminated (MT) end user devices forming the two ends of the voice call. Going forward in this clause, these end user devices will be referred to as MO end user device and MT end user devices to represent the role they plan in the voice call. The test setup shall include tools which can collect traces on the elements and/or packet captures of communication between the elements. This can be a built-in capability of the emulated/non-emulated network elements or an external tool. Optionally, if some of the network elements are located remotely either in a cloud or on the internet, the additional latency should be calculated and accounted for.

The Master eNB, Secondary gNB and their components (O-eNB, O-RU, O-DU and O-CU-CP/O-CU-UP) shall have the right configuration and software load. The end user device shall be configured with the right user credentials to be able to register and authenticate with the O-RAN system and the 4G core. The end user devices shall be provisioned with the user credentials to attach to the 4G core and register with the IMS core to perform a voice call using VoLTE. The 4G core network and IMS core shall be configured to support end user devices used for testing including supporting registration, authentication and PDN connection establishment for these end user devices. This also includes provisioning the IMS core to support registration of the end user devices to make voice calls over VoLTE, and dynamically setting up dedicated bearers for voice calls. The locations where the radio conditions are excellent, good, fair and poor shall be identified within the serving cell.

All the elements in the network like O-RAN system, 4G core and the IMS Core should have the ability to capture traces to validate the successful execution of the test cases. The end user devices should have the capability to capture traces/packets to calculate the VoLTE KPIs. Optionally, the network can have network taps deployed in various legs of the network to get packet captures to validate successful execution of the test cases. Finally, all these different components shall have connectivity with each other - the end user device shall be able to connect to O-RAN system(O-eNBs and gNBs), O-RAN system shall be connected to the 4G core which in turn shall have connectivity to the IMS Core.

#### Test Methodology/Procedure

Ensure the end user devices, O-RAN system, 4G core and the IMS Core have all been configured as outlined in clause 7.3.1.2. In this test scenario, both the mobile originated and mobile terminated end user devices will use the same O-RAN (i.e. same O-eNB), 4G and IMS core to perform the end-to-end voice call. All traces and packet captures shall be enabled for the duration of the testing to ensure all communication between network elements can be captured and validated.

1. Power on the two end user devices in excellent radio condition and ensure both end user devices connect to the 4G core over the Master O-eNB and optionally secondary gNB.
2. Ensure both the MO and MT end user devices can establish a PDN connection with the 4G core. Once the PDN connection has been setup, both the end user devices shall register with the IMS core to support voice services.
3. Use the MO end user device to call the MT end user device. Validate the MT end user device can receive and answer the call.
4. Continue to have two-way voice communication on the voice call for at least 5 minutes before terminating it.
5. Repeat the test multiple times (>10 times) and gather results.
6. Repeat the above steps 1 through 5 for the MO and MT end user devices in good, fair, and poor radio conditions.

#### Test Expectation (expected results)

As a pre-validation, use the traces to validate a successful PDN connection setup by the end user devices without any errors using the Master eNB and optionally the secondary gNB. Verify both the end user devices can register with the IMS core for voice services. This is a prerequisite before these tests can be completed.

Validate the end user devices can make a voice call between each other by dynamically setting up a QCI-1 bearer to transfer voice packets over RTP. Ensure the Call Setup Time is reasonable, the voice quality from both parties are clear and audible without one-way or intermittent muting. Use the packet captures to validate there are no RTP packet drops or high RTP packet jitter which can cause voice muting issues. Use the packet captures to ensure there are no out-of-sequence packets which can impact customer's voice experience.

The average range of values for the KPIs are included below for guidance. These values are applicable when the testing is performed in a controlled environment in good radio condition without the interference of external factors which can impact the KPIs. For example: use of internet to connect to remote network nodes can add latency, jitter and packet loss issues to the connection, thus impacting the KPIs. As there are multiple variables which can impact the testing in this scenario, a KPI outcome outside the range does not necessarily point to a failure in the SUT.

* CSSR - Call Setup Success Rate % -> 99%.
* CST - Call Setup Time - < 2.5s
* MOS Score - > 3.5
* Mute Rate % - < 1%
* One Way Call % - < 1%
* RTP Packet Loss % - < 1%

These end user voice KPI values included in clause 7.3 shall be included in the test report along with the minimum configuration parameters included in clause 4.3. The following information should also be included in the test report for the testing performed in different radio conditions to provide a comprehensive view of the test setup.

End user device side (real or emulated UE):

* Radio parameters such as RSRP, RSRQ, PDSCH SINR (average sample per second)
* PDSCH BLER, PDSCH MCS, MIMO rank (number of layers) (average sample per second)
* Downlink transmission mode
* Channel utilization, i.e. Number of allocated/occupied downlink PRBs and Number of allocated/occupied slots (average sample per second)

Table 7-11 gives an example of the test report considering the mean and standard deviation of all test results that have been captured.

Table 7-11 Example Test Report for Voice over LTE Testing - Stationary Test

|  | Excellent  (cell centre) | Good | Fair | Poor  (cell edge) |
| --- | --- | --- | --- | --- |
| VoLTE MO/MT | VoLTE MO/MT | VoLTE MO/MT | VoLTE MO/MT |
| Call Setup Success Rate |  |  |  |  |
| Call Setup time |  |  |  |  |
| MOS Score |  |  |  |  |
| Mute Rate |  |  |  |  |
| One Way Call |  |  |  |  |
| RTP Packet Loss |  |  |  |  |
| L1 DL Spectral efficiency [bps/Hz] |  |  |  |  |
| UE RSRP [dBm] |  |  |  |  |
| UE PDSCH SINR [dB] |  |  |  |  |
| MIMO rank |  |  |  |  |
| PDSCH MCS |  |  |  |  |
| DL RB number |  |  |  |  |
| UE CQI |  |  |  |  |
| UE RSRQ |  |  |  |  |
| UE PMI |  |  |  |  |
| UE RSSI |  |  |  |  |
| UE Buffer status |  |  |  |  |
| UE Packet delay |  |  |  |  |
| PDSCH BLER [%] |  |  |  |  |

The end user VoLTE experience can also be impacted by some of the features available (see clause 7.3) on the O-eNB, O-RU, O-DU and O-CU-CP/O-CU-UP. The details of these features, along with any other features/functionality which can impact the end user's voice service experience should be included in the test report to provide a comprehensive view of the testing.

### VoLTE Handover Test

This test clause is FFS

### Voice Service - LTE and NR handover tests

#### 7.3.3.0 Test Overview

This test scenario validates the user's voice experience when the UE is in a voice call and performs a handover from LTE network to a 5G network and vice versa. This test scenario is applicable for a 5G SA deployment.

#### Test Description

Voice service is one of the basic services provided on the telecommunication network. Voice service on the 4G network is provided using VoLTE. Similarly, voice service on the 5G network is provided using packet switch technology called Voice over New Radio (VoNR). As 5G network is being deployed by a telecommunication service provider, the service provider can need to support 4G and 5G network, and thus support VoLTE, VoNR and the handover between the two voice services. This scenario tests the end user's voice experience when the end user device performs a handover from VoLTE to VoNR and vice versa.

#### Test Setup

The SUT in this test case is an O-eNB along with a gNB (O-RU, O-DU and O-CU-CP/O-CU-UP). An interworking 4G-5G core (referred to as 4G-5G core going forward) which supports a combined anchor point for 4G and 5G, i.e. SMF+PGW-C and UPF+PGW-U is required. The eNB connects to a 4G-5G core over the 4G interfaces like S1 to provide 4G LTE service and the O-CU-CP/O-CU-UP, O-DU and O-RU will connect to a 4G-5G core over the 5G interfaces like N2 and N3 to provide 5G SA service. The O-eNB, gNB and the components within these shall comply with the O-RAN specifications. The 4G-5G core shall support the basic functionality to authenticate and register an end user device in order to setup a PDN connection/PDU session. An IMS core is required to register the end user device to support voice services on a 4G and 5G network. The 4G and 5G core will interwork using the N26 interface between the MME and AMF to support seamless handover. Use of the N26 interface is recommended to ensure better customer experience when the end user device performs a handover between 4G and 5G. The 4G-5G and IMS cores can be completely emulated, partially emulated or real non-emulated cores. At least two end user devices (UE) shall be used, which can be real UEs or emulated, and both shall support voice service using VoLTE, VoNR and the capability to handover from VoLTE to VoNR and vice versa. The end user devices will serve as Mobile Originated (MO) and Mobile Terminated (MT) end user devices forming the two ends of the voice call. Going forward in this clause, these end user devices are referred to as MO end user device and MT end user devices to represent their role in the voice call. The test setup shall include tools which can collect traces on the elements and/or packet captures of communication between the elements. This can be a built-in capability of the emulated/non-emulated network elements or an external tool. Optionally, if some of the network elements are located remotely, either in a cloud or on the internet, the additional latency should be calculated and accounted for.

The O-eNB, gNB and their components (O-RU, O-DU and O-CU-CP/O-CU-UP) shall have the right configuration and software load. The end user devices shall be configured with the right user credentials to be able to register and authenticate with the O-RAN system and the 4G-5G core. The end user devices shall be provisioned with the user credentials to support attach procedure to the 4G-5G core, registering to the IMS core and performing a voice call using VoLTE and VoNR. This includes supporting registration, authentication and PDN connection/PDU Session establishment for these end user devices. This also includes provisioning the IMS core to support registration of the end user devices to make voice calls over VoLTE and VoNR, and dynamically setting up dedicated bearers/QoS Flows for voice calls.

All the elements in the network like O-RAN system, 4G-5G core and the IMS Core should have the ability to capture traces to validate the successful execution of the test cases. The end user devices should have the capability to capture traces/packets to calculate the VoLTE and VoNR KPIs. Optionally, the network can have network taps deployed in various legs of the network to get packet captures to validate successful execution of the test cases. Finally, all these different components shall have connectivity with each other - the end user device shall be able to connect to O-RAN system(eNBs and gNBs), O-RAN system shall be connected to the 4G-5G core, which in turn shall have connectivity to the IMS Core.

#### Test Methodology/Procedure

Ensure the end user devices, O-RAN system, 4G-5G core and the IMS Core have all been configured as outlined in clause 7.3.3.2. In this test scenario, both the mobile originated and mobile terminated end user devices will use the eNB and gNB to connect to the same 4G-5G and IMS core to perform the end-to-end voice call. All traces and packet captures shall be enabled for the duration of the testing to ensure all communication between network elements can be captured and validated.

The below items 1 to 8 define the steps to perform a VoLTE to VoNR handover, followed by VoNR to VoLTE handover

1. Power on the two end user devices and ensure both of the end user devices can connect to the 4G-5G core over the O-eNB.
2. Ensure both the MO and MT end user devices can establish a PDN connection with the 4G-5G core. Once the PDN connection has been setup, both the end user devices shall register with the IMS core to support voice services.
3. Use the MO end user device to call the MT end user device. Validate the MT end user device can receive and answer the call.
4. Once the two-way call has been setup and communication is going back and forth between the two end user devices, move the MO device to the O-RU coverage of the gNB, thus forcing a handover from 4G to 5G, forcing a VoLTE to VoNR handover. Continue two-way voice communication through the handover process and terminate the call once the handover process is complete. Measure the voice KPIs included in clause 7.3.
5. At this point in time, the MO end user device is in 5G coverage and registered to the 4G-5G core. The MT end user device is in 4G coverage and registered to the 4G-5G core. Both end user devices should still be registered to the IMS core.
6. Use the MO end user device to call the MT end user device. Validate the MT end user device can receive and answer the call.
7. Once the two-way call has been setup and communication is going back and forth between the two end user devices, move the MO device to the O-eNB coverage, thus forcing a handover from 5G to 4G, forcing a VoNR to VoLTE handover. Continue two-way voice communication through the handover process and terminate the call once the handover process is complete. Measure the voice KPIs included in clause 7.3.
8. Repeat the test multiple times (> 10 times) and gather results.

#### Test Expectation (expected results)

As a pre-validation, use the traces to validate a successful registration and PDN connection setup by the end user devices without any errors using the O-eNB when in 4G coverage. Similarly, use traces to validate successful registration and PDU session setup by the end user device without any errors using O-RU, O-DU and O-CU-CP/O-CU-UP when in 5G coverage. Also verify both the end user devices can register with the IMS core for voice services. This is a prerequisite before these tests can be completed.

Validate the end user devices can make a voice call between each other by dynamically setting up a QCI-1/5QI-1 bearer to transfer voice packets over RTP. Ensure the Call Setup Time is reasonable, the voice quality from both parties is clear and audible without one-way or intermittent muting. Ensure the voice quality is not impacted during the handover process - VoLTE to VoNR and VoNR to VoLTE. Use the packet captures to validate there are no RTP packet drops or high RTP packet jitter which can cause voice muting issues, especially during the handover process. Use the packet captures to ensure there are no out-of-sequence packets which can impact customer's voice experience.

The average range of values for the KPIs are included below for guidance. These values are applicable when the testing is performed in a controlled environment in good radio conditions without the interference of external factors which can impact the KPIs. Example: use of internet to connect to remote network nodes can add latency, jitter and packet loss issues to the connection, thus impacting the KPIs. As there are multiple variables which can impact the testing in this scenario, a KPI outcome outside the range does not necessarily point to a failure in the SUT.

* CSSR - Call Setup Success Rate % -> 99%.
* CST - Call Setup Time - < 2.5s
* MOS Score - > 3.5
* Mute Rate % - < 1%
* One Way Call % - < 1%
* RTP Packet Loss % - < 1%

The end user voice KPI values included in clause 7.3 shall be included in the test report along with the minimum configuration parameters included in clause 4.3. The following information should also be included in the test report for the testing performed in different radio conditions to provide a comprehensive view of the test setup.

End user device side (real or emulated UE):

* Radio parameters such as RSRP, RSRQ, PDSCH SINR (average sample per second)
* PDSCH BLER, PDSCH MCS, MIMO rank (number of layers) (average sample per second)
* Received downlink throughput (L1 and L3 PDCP layers) (average sample per second)
* Downlink transmission mode
* Channel utilization, i.e. Number of allocated/occupied downlink PRBs and Number of allocated/occupied slots (average sample per second)

Table 7-12 gives an example of the test report considering the mean and standard deviation of all test results that have been captured.

Table 7-12 Example Test Report for Voice service handover testing - LTE and NR

|  | VoLTE to VoNR handover | VoNR to VoLTE handover |
| --- | --- | --- |
| Call Setup Success Rate |  |  |
| Call Setup time |  |  |
| MOS Score |  |  |
| Mute Rate |  |  |
| One Way Call |  |  |
| RTP Packet Loss |  |  |
| L1 DL Spectral efficiency [bps/Hz] |  |  |
| UE RSRP [dBm] |  |  |
| UE PDSCH SINR [dB] |  |  |
| MIMO rank |  |  |
| PDSCH MCS |  |  |
| DL RB number |  |  |
| UE CQI |  |  |
| UE RSRQ |  |  |
| UE PMI |  |  |
| UE RSSI |  |  |
| UE Buffer status |  |  |
| UE Packet delay |  |  |
| PDSCH BLER [%] |  |  |

The end user VoLTE/VoNR experience can also be impacted by some of the features available (see clause 7.3) on the O-eNB, O-RU, O-DU and O-CU-CP/O-CU-UP. The details of these features, along with any other features/functionality which can impact the end user's voice service experience should be included in the test report to provide a comprehensive view of the testing.

## Voice Service - EPS Fallback tests

### 7.4.0 Voice service - EPS fall back tests introduction

Voice service is one of the basic services which must be supported on every telecom network. Upgrade of telecom network occurs in phases, and this is no different for 5G. The telecom network may not be able to support voice service on 5G during this phase for multiple reasons - the 5G network may not be deployed nationwide, or 5G network may not be tuned to support voice service or the devices may not be able to support voice service on 5G. However, there can be no interruption to voice service during this transition phase. EPS fallback is the method used to support voice services during this phase, where voice services are continued to be supported on the legacy LTE network using VoLTE by forcing the device to fallback to LTE to make or receive a call. The KPIs which shall be monitored to assess the voice service are included below

* CSSR - Call Setup Success Rate % - Total number of calls which were successful by the total number of calls made as a percentage.
* CST - Call Setup Time - Time taken from the initial SIP INVITE to when the SIP 180 Ringing is received in seconds.
* MOS Score - Mean Opinion Score for the voice call. This KPI shall be measured on both ends of the Voice call - mobile originated and mobile terminated.
* Mute Rate % - Percentage of calls which were muted in both directions (calls with RTP loss of > 3-4s in both directions are considered muted call). This KPI shall be measured on both ends of the Voice call - mobile originated and mobile terminated and counted only once per call.
* One Way Calls % - Percentage of calls which were muted in any one direction (calls with RTP loss of > 3-4s in one direction only are considered one-way calls). This KPI shall be monitored on both ends of the Voice call - mobile originated and mobile terminated and counted only once per call.
* RTP Packet Loss % - Number of RTP packets which were dropped/lost in uplink/downlink direction as a percentage of total packets. This KPI shall be measured on both ends of the Voice call - mobile originated and mobile terminated.

Along with the monitoring and validation of these services utilizing user experience KPIs, the O-RAN systems also shall be monitored. The end user service experience can also be impacted by some of the features available on the O-RAN system. Some of these features have been included below. As a part of the voice services testing, details of these features shall be included in the test report to get a comprehensive view of the setup used for testing. If additional features or functionalities have been enabled during this testing that impact the end user voice experience, these shall be included in the test report as well.

* EPS Fallback for IMS Voice
* NR to EPS Mobility
* RLC in Unacknowledged Mode
* Robust Header Compression
* DRX
* Dynamic GBR Admission Control
* TTI Bundling
* VoLTE Inactivity Timer
* Frequency Hopping
* Multi-Target RRC Connection Re-Establishment
* VoLTE HARQ
* Coordinated Multi Point (DL and UL)
* VoLTE Quality Enhancement
* Packet Loss Detection
* Voice Codec Aware scheduler

Please see Table 7-13 for a summary of test cases and applicable technology.

Table 7-13: EPS Fallback Test Case Selection summary

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
|  | | | Applicable technology | | |
| Test case | | Functional group | LTE | NSA | SA |
| Test ID | Voice service - EPS Fallback |  |  |  |  |
| 7.4.1 | EPS Fallback (N26 and without N26) | Service | Y | N/A | Y |

### EPS Fallback Test

#### 7.4.1.0 Test Overview

This scenario tests the voice service when an end user device (UE) is in 5G SA coverage and performs an EPS fallback to 4G to make or receive a voice call.

#### Test Description

This clause tests the voice service on a 5G SA network when it uses EPS fallback mechanism to fallback to the LTE network and use VoLTE to support voice service. This testing only applies to 5G SA deployment and in this scenario the UE is connected to the 5G SA Core and registered with the IMS core for voice service. When the end user device (UE) wants to make a voice call or receive a voice call, the network informs the device to fallback to the LTE network to make/receive the voice call. The EPS fallback does increase the Call Setup Time due to the time needed to fallback before making/receiving the voice call.

There are two mechanisms in which EPS fallback is supported on the 5G core, and the methodology used impacts the time taken to perform the fallback to LTE, and hence impacts the Call Setup Time. The two mechanisms that may be used to perform EPS fallback are included below. These two mechanisms do change the test setup, but do not change the testing procedure.

* With N26 interface - The AMF in the 5G core communicates with the MME in the 4G over the N26 interface. In this scenario the UE performs a handover from the 5G network to the 4G network.
* Without N26 interface - The AMF in the 5G core does not communicate directly with the 4G core, instead uses the UDM/HSS to store and transfer relevant session information to the 4G core. In this scenario the UE performs a Release with Redirect from the 5G network to the 4G network.

#### Test Setup

The SUT in this test case is an O-eNB along with a gNB (O-RU, O-DU and O-CU-CP/O-CU-UP). An interworking 4G-5G core (referred to as 4G-5G core going forward) which supports a combined anchor point, i.e. SMF+PGW-C and UPF+PGW-U is required. The O-eNB connects to a 4G-5G core over the 4G interfaces like S1 to provide 4G LTE service and the gNB (O-RU, O-DU and O-CU-CP/O-CU-UP) will connect to the 4G-5G core over the 5G interfaces like N2 and N3 to provide 5G SA service. The O-eNB, gNB and the components within these shall comply with the O-RAN specifications and support EPS fallback. The 4G-5G core will support the basic functionality to authenticate and register an end user device in order to setup a PDN connection/PDU session. The IMS core will support registration of the end user device and will be integrated with the 4G-5G core to support voice services over VoLTE and EPS fallback. The 4G-5G core will interwork either using the N26 interface or without using N26 interface depending on the desired core network configuration. The existence of the N26 interface does reduce the EPS fallback time, reducing Call Setup Time and provides better end user experience. The 4G-5G and IMS cores may be a completely emulated, partially emulated or real non-emulated cores. At least two end user devices (UE) shall be used. which either can be real UEs or emulated, and both shall support voice service using VoLTE and EPS fallback procedure. The end user devices will serve as Mobile Originated (MO) and Mobile Terminated (MT) end user devices forming the two ends of the voice call. For the sake of clarity, these end user devices will be addressed as UE-1 and UE-2 in this clause. The test setup shall include tools which can collect traces on the elements and/or packet captures of communication between the elements. This can be a built-in capability of the emulated/non-emulated network elements or an external tool. Optionally, if some of the network elements are located remotely either in a cloud or on the internet, the additional latency should be calculated and accounted for.

The O-eNB, gNB and their components (O-RU, O-DU and O-CU-CP/O-CU-UP) shall have the right configuration and software load. The end user device shall be configured with the right user credentials to be able to register and authenticate with the O-RAN system and the 4G-5G core. The end user devices shall be provisioned with the user credentials to attach to the 4G-5G core and register with the IMS core to perform voice call using VoLTE and EPS fallback. The 4G-5G core network and IMS core shall be configured to support voice service on the end user devices used for testing, which includes dynamically setting up dedicated bearers for voice calls.

All the elements in the network like O-RAN system, 4G-5G core and the IMS Core should have the ability to capture traces to validate the successful execution of the test cases. The end user devices should have the capability to capture traces/packets to calculate the VoLTE KPIs. Optionally, the network can have network taps deployed in various legs of the network to get packet captures to validate successful execution of the test cases. Finally, all these different components shall have connectivity with each other - the end user device shall be able to connect to O-RAN system(O-eNBs and gNBs), O-RAN system shall be connected to the 4G-5G core which in turn shall have connectivity to the IMS Core.

#### Test Methodology/Procedure

Ensure the end user devices, O-RAN system, 4G-5G core and the IMS Core have all been configured as outlined in clause 7.4.1.2. In this test scenario, one of the end user device will be connected over the 4G O-eNB to the 4G-5G core, while the other end user device will be connected over 5G gNB (O-RU, O-DU and O-CU-CP/O-CU-UP) to the 4G-5G core. All traces and packet captures shall be enabled for the duration of the testing to ensure all communication between network elements can be captured and validated.

1. Power on the two end user devices and ensure UE-1 is in LTE coverage, and UE-2 is in the 5G coverage. Validate both end user devices register to the 4G-5G core.
2. Once the registration is complete, UE-1 and UE-2 shall establish a PDN connection and PDU session respectively with the 4G-5G core. Once the PDN connection and PDU session have been setup, both the end user devices shall register with the IMS core to support voice services.
3. Use UE-1 as the MO end user device to call UE-2. Validate the UE-2 performs EPS fallback to LTE to receive the call.
4. Answer the call on UE-2 and continue to have two-way communication for at least 5 minutes and terminate the call. Measure the voice KPIs included in clause 7.4.
5. At this point UE-2 should have completed the call and moved back to connect to the 4G-5G Core over 5G gNB.
6. Use UE-2 as the MO end user device to call UE-1. Validate the UE-2 performs EPS fallback to LTE before making the call.
7. Answer the call on UE-1 and continue to have two-way communication for at least 5 minutes and terminate the call. Measure the voice KPIs included in clause 7.4.
8. Repeat the test multiple times (>10 times) and gather results.

#### Test Expectation (expected results)

As a pre-validation, use the traces to validate end user device UE-1 can perform a successful registration and PDN connection setup while using the O-eNB in LTE coverage. Similarly, use the traces to validate end user device UE-2 can perform a successful registration and PDU session setup while using gNB in 5G coverage. Verify both the end user devices can register with the IMS core for voice services. This is a prerequisite before these tests can be completed.

Validate the end user devices can make a voice call between each other by dynamically setting up a QCI-1 bearer to transfer voice packets over RTP. Validate the device which is in the 5G coverage falls back to 4G before receiving or making a voice call, in other words the EPS fallback procedure was executed successfully. The Call Setup Time will be higher than VoLTE due to the delay associated with executing the EPS fallback procedure. Even though this test case does not directly impact the quality of the voice call, for the sake of consistency, ensure the voice quality from both parties are clear and audible without one-way or intermittent muting. Use the packet captures to validate there are no RTP packet drops or high RTP packet jitter which can cause voice muting issues. Use the packet captures to ensure there are no out-of-sequence packets which can impact customer's voice experience.

The average range of values for the KPIs are included in Table 7-14 for guidance. These values are applicable when the testing is performed in a controlled environment in good radio condition without the interference of external factors which can impact the KPIs. For example: use of internet to connect to remote network nodes can add latency, jitter and packet loss issues to the connection, thus impacting the KPIs. As there are multiple variables which can impact the testing in this scenario, a KPI outcome outside the range does not necessarily point to a failure in the SUT.

Table 7-14 Typical Voice KPI values in controlled environments with good radio conditions

| KPI | With N26 Interface | Without N26 Interface |
| --- | --- | --- |
| CSSR - Call Setup Success Rate % | >99% | >99% |
| CST - Call Setup Time | 3.5s | 4 s |
| MOS Score | 3.5 | 3.5 |
| Mute Rate % | < 1% | < 1% |
| One Way Call % | < 1% | < 1% |
| RTP Packet Loss % | < 1% | < 1% |

These end user voice KPI values included in clause 7.3 shall be included in the test report along with the minimum configuration parameters included in clause 4.3. The following information should also be included in the test report to provide a comprehensive view of the test setup.

End user device side (real or emulated UE):

* Radio parameters such as RSRP, RSRQ, PDSCH SINR (average sample per second)
* PDSCH BLER, PDSCH MCS, MIMO rank (number of layers) (average sample per second)
* Downlink transmission mode
* Channel utilization, i.e. Number of allocated/occupied downlink PRBs and Number of allocated/occupied slots (average sample per second)

Table 7-15 gives an example of the test report considering the mean and standard deviation of all test results that have been captured.

Table 7-15 Example Test Report for Voice Service Testing - EPS Fallback

|  | VoLTE MO | VoLTE MT |
| --- | --- | --- |
| Call Setup Success Rate |  |  |
| Call Setup time |  |  |
| MOS Score |  |  |
| Mute Rate |  |  |
| One Way Call |  |  |
| RTP Packet Loss |  |  |
| L1 DL Spectral efficiency [bps/Hz] |  |  |
| UE RSRP [dBm] |  |  |
| UE PDSCH SINR [dB] |  |  |
| MIMO rank |  |  |
| PDSCH MCS |  |  |
| DL RB number |  |  |
| UE CQI |  |  |
| UE RSRQ |  |  |
| UE PMI |  |  |
| UE RSSI |  |  |
| UE Buffer status |  |  |
| UE Packet delay |  |  |
| PDSCH BLER [%] |  |  |

The end user VoLTE experience can also be impacted by some of the features available (see clause 7.3) on the O-eNB, O-RU, O-DU and O-CU-CP/O-CU-UP. The details of these features, along with any other features/functionality which can impact the end user's voice service experience should be included in the test report to provide a comprehensive view of the testing.

## Voice Service - Voice over NR (VoNR) tests

### 7.5.0 VoNR test introduction

Voice services on 5G are called Voice over New Radio (VoNR). VoNR also packetizes voice and uses IP packets for voice communication. On the Core and IMS side, VoNR is very similar to VoLTE. VoNR also uses the IMS system for voice service, and the IMS interacts with the 5G core to set up a separate bearer for voice service. This clause tests the voice service over VoNR in different scenarios. The KPIs which shall be monitored to assess the voice service are included below

* CSSR - Call Setup Success Rate % - Total number of calls which were successful by the total number of calls made as a percentage.
* CST - Call Setup Time - Time taken from the initial SIP INVITE to when the SIP 180 Ringing is received in seconds.
* MOS Score - Mean Opinion Score for the voice call. This KPI shall be measured on both ends of the Voice call - mobile originated and mobile terminated.
* Mute Rate % - Percentage of calls which were muted in both directions (calls with RTP loss of > 3-4s in both directions are considered muted call). This KPI shall be measured on both ends of the Voice call - mobile originated and mobile terminated and counted only once per call.
* One Way Calls % - Percentage of calls which were muted in any one direction (calls with RTP loss of > 3-4s in one direction only are considered one-way calls). This KPI shall be monitored on both ends of the Voice call - mobile originated and mobile terminated and counted only once per call.
* RTP Packet Loss % - Number of RTP packets which were dropped/lost in uplink/downlink direction as a percentage of total packets. This KPI shall be measured on both ends of the Voice call - mobile originated and mobile terminated.

End user voice service experience can also be impacted by some of the features available on the O-RU, O-DU and O-CU-CP/O-CU-UP. Some of these features have been included below. As a part of the voice services testing, details of these features shall be included in the test report to get a comprehensive view of the setup used for testing. If additional features or functionalities have been enabled during this testing that impact the end user voice experience, these shall be included in the test report as well.

* Basic Voice over NR
* RLC in Unacknowledged Mode
* Robust Header Compression
* DRX
* Dynamic GBR Admission Control
* TTI Bundling
* Automated Neighbor Relations ANR
* Connected mode mobility (Handover)
* idle mode reselection
* Intra-frequency Cell Reselection/Handover
* Inter-frequency Redirection/Cell Reselection/Handover
* NR Coverage-Triggered NR Session Continuity

Please see Table 7-16 for a summary of test cases and applicable technology.

Table 7-16: VoNR Test Case summary

|  | | | Applicable technology | | |
| --- | --- | --- | --- | --- | --- |
| Test case | | Functional group | LTE | NSA | SA |
| Test ID | Voice service - Voice over NR (VoNR) |  |  |  |  |
| 7.5.1 | Voice over NR Test - stationary | Service | N/A | N/A | Y |
| 7.5.2 | VONR - Intra-Distributed Unit (DU) handover | Service | N/A | N/A | Y |
| 7.5.3 | VONR - Intra-Central Unit (CU) Inter-Distributed Unit (DU) handover | Service | N/A | N/A | Y |
| 7.5.4 | VONR - Inter-Central Unit (CU) handover | Service | N/A | N/A | Y |

### Voice over NR Test

#### 7.5.1.0 Test Overview

This test scenario validates the user's voice experience when the end user device is in 5G coverage and the user makes a voice call over NR - VoNR.

#### Test Description

This clause tests VoNR user experience on an O-RAN system. VoNR is similar to VoLTE where it uses IP packets to send and receive voice packets, with the IP packets being transferred over NR or 5G radio. Just like VoLTE, IMS is used to set up the control and data plane for the voice communication. As voice service is latency sensitive, the 5G core interacts with the IMS core to set up different QoS flows for voice traffic - 5QI-5 for VoNR control plane and 5QI-1 for VoNR data plane. This test case is applicable when end user device (UE) is connected over a 5G SA network.

#### Test Setup

The SUT in this test case is a gNB (O-RU, O-DU and O-CU-CP/O-CU-UP) which is used to test the voice service. A 5G SA Core is required to support basic functionality to authenticate and register the end user device to establish a PDU session. An IMS core is required to register the end user device to support voice services on a 5G network. The 5G and IMS cores may be completely emulated, partially emulated or real non-emulated cores. At least two end user devices (UE) shall be used, which can be real UEs or emulated, and both shall support voice service using VoNR. The end user devices will serve as Mobile Originated (MO) and Mobile Terminated (MT) end user devices forming the two ends of the voice call. Going forward in this clause, these end user devices will be referred to as MO end user device and MT end user device to represent their role in the voice call. The test setup shall include tools which can collect traces on the elements and/or packet captures of communication between the elements. This can be a built-in capability of the emulated/non-emulated network elements or an external tool. Optionally, if some of the network elements are located remotely either in a cloud or on the internet, the additional latency should be calculated and accounted for.

The O-RU, O-DU and O-CU-CP/O-CU-UP shall have the right configuration and software load. The SUT shall be set up to run this testing in different radio conditions as outlined in clause 4.6. The end user device shall be configured with the right user credentials to be able to register and authenticate with the O-RAN system and the 5G core. The end user devices shall be provisioned with the user credentials to register and setup PDU session with the 5G core and register with the IMS core to perform voice call using VoNR. The 5G core network and IMS core shall be configured to support voice service on the end user devices used for testing, which includes the ability to dynamically set up QoS Flows for voice calls. The locations where the radio conditions are excellent, good, fair and poor shall be identified within the serving cell.

All the elements in the network like O-RAN system, 5G core and the IMS Core should have the ability to capture traces to validate the successful execution of the test cases. The end user devices should have the capability to capture traces/packets to calculate the VoNR KPIs. Optionally, the network can have network taps deployed in various legs of the network to get packet captures to validate successful execution of the test cases. Finally, all these different components shall have connectivity with each other - the end user device shall be able to connect to O-RAN system(O-RU, O-DU and O-CU-CP/O-CU-UP), O-RAN system shall be connected to the 5G core which in turn shall have connectivity to the IMS Core.

#### Test Methodology/Procedure

Ensure the end user device, O-RAN system, 5G core and the IMS core have all been configured as outlined in clause 7.5.1.2. In this test scenario, both the mobile originated and mobile terminated end user devices will use the same O-RAN system, 5G and IMS core to perform the end-to-end voice call. All traces and packet captures shall be enabled for the duration of the testing to ensure all communication between network elements can be captured and validated.

1. Power on the two end user devices in excellent radio condition and ensure both devices register with the 5G core for voice services over SA by connecting over the O-RAN (O-RU, O-DU and O-CU-CP/O-CU-UP).
2. Once the registration is complete, the MO and MT end user devices shall establish a PDU session with the 5G core. Once the PDU session has been setup, both the end user devices shall register with the IMS core to support voice services.
3. Use the MO end user device to call the MT end user device. Validate the MT end user device can receive and answer the call.
4. Continue to have two-way voice communication on the voice call for at least 5 minutes before terminating it.
5. Repeat the test multiple times (> 10 times) and gather results.
6. Repeat the above steps 1 through 5 for good, fair, and poor radio conditions.

#### Test Expectation (expected results)

As a pre-validation, use the traces to validate a successful registration and PDU session setup by the end user devices without any errors over O-RU, O-DU and O-CU-CP/O-CU-UP. Also validate both the end user devices can register with the IMS core for voice services. This is a prerequisite before these tests can be completed.

Validate the end user devices can make a voice call between each other by dynamically setting up a 5QI-1 bearer to transfer voice packets over RTP. Ensure the Call Setup Time is reasonable, the voice quality from both parties are clear and audible without one-way or intermittent muting. Use the packet captures to validate there are no RTP packet drops or high RTP packet jitter which can cause voice muting issues. Use the packet captures to ensure there are no out-of-sequence packets which can impact customer's voice experience.

The average range of values for the KPIs are included below for guidance. These values are applicable when the testing is performed in a controlled environment in good radio condition without the interference of external factors which can impact the KPIs. For example: use of internet to connect to remote servers/hosts can add latency, jitter and reliability issues to the connection, thus impacting the KPIs. As there are multiple variables which can impact the testing in this scenario, a KPI outcome outside the range does not necessarily point to a failure in the SUT.

* CSSR - Call Setup Success Rate % -> 99%.
* CST - Call Setup Time - < 2.5s
* MOS Score - > 3.5
* Mute Rate % - < 1%
* One Way Call % - < 1%
* RTP Packet Loss % - < 1%

As a part of gathering data, ensure the minimum configuration parameters included in clause 4.3 are included in the test report. The information in Table 7-17 should also be included in the test report to provide a comprehensive view of the test setup.

UE side (real or emulated UE):

* Radio parameters such as RSRP, RSRQ, PDSCH SINR (average sample per second)
* PDSCH BLER, PDSCH MCS, MIMO rank (number of layers) (average sample per second)
* Received downlink throughput (L1 and L3 PDCP layers) (average sample per second)
* Downlink transmission mode
* Channel utilization, i.e. Number of allocated/occupied downlink PRBs and Number of allocated/occupied slots (average sample per second)

Table 7-17 Example Test Report for VoNR - Stationary Testing

|  | Excellent  (cell centre) | Good | Fair | Poor  (cell edge) |
| --- | --- | --- | --- | --- |
| VoNR MO/MT | VoNR MO/MT | VoNR MO/MT | VoNR MO/MT |
| Call Setup Success Rate |  |  |  |  |
| Call Setup Time |  |  |  |  |
| MOS Score |  |  |  |  |
| Mute Rate % |  |  |  |  |
| One Way Call % |  |  |  |  |
| RTP Packet Loss % |  |  |  |  |
| L1 DL Spectral efficiency [bps/Hz] |  |  |  |  |
| UE RSRP [dBm] |  |  |  |  |
| UE PDSCH SINR [dB] |  |  |  |  |
| MIMO rank |  |  |  |  |
| PDSCH MCS |  |  |  |  |
| DL RB number |  |  |  |  |
| UE CQI |  |  |  |  |
| UE RSRQ |  |  |  |  |
| UE PMI |  |  |  |  |
| UE RSSI |  |  |  |  |
| UE Buffer status |  |  |  |  |
| UE Packet delay |  |  |  |  |
| PDSCH BLER [%] |  |  |  |  |

The end user voice service experience can also be impacted by some of the features available (see clause 7.5) on the O-RU, O-DU and O-CU-CP/O-CU-UP. The details of these features, along with any other features/functionality which can impact the end user's voice service experience should be included in the test report to provide a comprehensive view of the testing.

### VoNR - Intra-Distributed Unit (O-DU) handover

This test scenario validates the user's voice experience when the end user device (UE) is on a VoNR call and performs a handover between two O-RUs which connect to the same O-DU (Intra-O-DU handover)

#### Test Description

The 5G O-RAN system has multiple sub-components such as the O-RU, O-DU and the O-CU-CP/O-CU-UP. This setup leads to multiple handover scenarios between the O-RAN sub-components. This scenario tests the end user's voice experience during the handover between two O-RUs which are connected to the same O-DU (and O-CU-CP/O-CU-UP), hence an Intra-O-DU handover. This handover will be agnostic to the 5G core as the handover occurs on the O-RAN system. This test assesses the impact on the end user's voice service in this handover scenario by monitoring the KPIs included in clause 7.5.

#### Test Setup

The SUT in this test case is a pair of O-RUs which connect to the same O-DU and O-CU-CP/O-CU-UP (refer clause 5.4). This O-RAN setup is used to test the voice service during a handover. A 5G SA Core is required to support basic functionality to authenticate and register the end user device to establish a PDU session. An IMS core is required to register the end user device to support voice services on a 5G network. The 5G and IMS cores may be completely emulated, partially emulated or real non-emulated cores. At least two end user devices (UE) shall be used, which can be real UEs or emulated, and both shall support voice service using 5G - Voice over NR(VoNR). The end user devices will serve as Mobile Originated (MO) and Mobile Terminated (MT) end user devices forming the two ends of the voice call. Going forward in this clause, these end user devices will be referred to as MO end user device and MT end user device to represent their role in the voice call. The test setup shall include tools which can collect traces on the elements and/or packet captures of communication between the elements. This can be a built-in capability of the emulated/non-emulated network elements or an external tool. Optionally, if some of the network elements are located remotely either in a cloud or on the internet, the additional latency should be calculated and accounted for.

The pair of O-RUs (O-RU1 and O-RU2) shall be connected to the O-DU and O-CU-CP/O-CU-UP and all the components shall have the right configuration and software load. The end user devices shall be configured with the right user credentials to be able to register and authenticate with the O-RAN system and the 5G core. The end user devices shall be provisioned with the user credentials to register and setup PDU session with the 5G core and register with the IMS core to perform voice call using VoNR. The 5G core network and IMS core shall be configured to support voice service on the end user devices used for testing, which includes the ability to dynamically set up QoS Flows for voice calls.

All the elements in the network-like O-RAN system, 5G core and the IMS Core should have the ability to capture traces to validate the successful execution of the test cases. The end user devices should have the capability to capture traces/packets to calculate the VoNR KPIs. Optionally, the network can have network taps deployed in various legs of the network to get packet captures to validate successful execution of the test cases. Finally, all these different components shall have connectivity with each other - the end user device shall be able to connect to O-RAN system(O-RUs connected to O-DU and O-CU-CP/O-CU-UP), O-RAN system shall be connected to the 5G core which in turn shall have connectivity to the IMS Core.

#### Test Methodology/Procedure

Ensure the end user devices, O-RAN system, 5G core and the IMS Core have all been configured as outlined in clause 7.5.2.2. In this test scenario, both the mobile originated and mobile terminated end user devices will use the same O-RAN system, 5G and IMS core to perform the end-to-end voice call. All traces and packet captures shall be enabled for the duration of the testing to ensure all communication between network elements can be captured and validated.

1. Power on the two end user devices and ensure both devices register with the 5G core for voice services over SA by connecting over the O-RAN (O-RU, O-DU and O-CU-CP/O-CU-UP). Ensure both the MO & MT end user devices are in the coverage area of the same O-RU - O-RU1.
2. Once the registration is complete, the MO and MT end user devices shall establish PDU session with the 5G core. Once the PDU session has been setup, both the end user devices shall register with the IMS core to support voice services.
3. Use the MO end user device to call the MT end user device. Validate the MT end user device can receive and answer the call.
4. Once the call has been setup, move the MO end user device from the coverage area of O-RU1 to coverage area of O-RU2, triggering a handover from O-RU1 to O-RU2.
5. Continue the two-way voice communication between MO and MT end user devices until the handover procedure is complete before terminating the voice call.
6. Repeat the test (steps 1 through 5) multiple times (> 10 times) and collect results.

#### Test Expectation (expected results)

As a pre-validation, use the traces to validate a successful registration and PDU session setup by the end user devices without any errors over O-RU, O-DU and O-CU-CP/O-CU-UP. Also validate both the end user devices can register with the IMS core for voice services. This is a prerequisite before these tests can be completed.

Validate the end user devices can make a voice call between each other by dynamically setting up a 5QI-1 bearer to transfer voice packets over RTP. Ensure the Call Setup Time is reasonable, the voice quality from both parties is clear and audible without one-way or intermittent muting for the duration of the call, especially during the handover process. Use the packet captures to validate there are no RTP packet drops or high RTP packet jitter which can cause voice muting issues. Use the packet captures to ensure there are no out-of-sequence packets which can impact customer's voice experience.

The average range of values for the KPIs are included below for guidance. These values are applicable when the testing is performed in a controlled environment in good radio conditions without the interference of external factors which can impact the KPIs. Example: use of internet to connect to remote servers/hosts can add latency, jitter and reliability issues to the connection, thus impacting the KPIs. As there are multiple variables which can impact the testing in this scenario, a KPI outcome outside the range does not necessarily point to a failure in the SUT.

* CSSR - Call Setup Success Rate % -> 99%.
* CST - Call Setup Time - < 2.5s
* MOS Score - > 3.5
* Mute Rate % - < 1%
* One Way Call % - < 1%
* RTP Packet Loss % - < 1%

As a part of gathering data, the minimum configuration parameters in clause 4.3) shall be included in the test report. The following information should also be included in the test report to provide a comprehensive view of the test setup.

UE side (real or emulated UE):

* Radio parameters such as RSRP, RSRQ, PDSCH SINR (average sample per second)
* PDSCH BLER, PDSCH MCS, MIMO rank (number of layers) (average sample per second)
* Received downlink throughput (L1 and L3 PDCP layers) (average sample per second)
* Downlink transmission mode
* Channel utilization, i.e. Number of allocated/occupied downlink PRBs and Number of allocated/occupied slots (average sample per second)

Table 7-18 Example Test Report for VoNR - Intra-O-DU Handover

|  | VoNR MO | VoNR MT |
| --- | --- | --- |
| Call Setup Success Rate |  |  |
| Call Setup Time |  |  |
| MOS Score |  |  |
| Mute Rate % |  |  |
| One Way Call % |  |  |
| RTP Packet Loss % |  |  |
| L1 DL Spectral efficiency [bps/Hz] |  |  |
| UE RSRP [dBm] |  |  |
| UE PDSCH SINR [dB] |  |  |
| MIMO rank |  |  |
| PDSCH MCS |  |  |
| DL RB number |  |  |
| UE CQI |  |  |
| UE RSRQ |  |  |
| UE PMI |  |  |
| UE RSSI |  |  |
| UE Buffer status |  |  |
| UE Packet delay |  |  |
| PDSCH BLER [%] |  |  |

The end user voice service experience can also be impacted by some of the features available (see clause 7.5) on the O-RUs, O-DU and O-CU-CP/O-CU-UP. The details of these features, along with any other features/functionality which can impact the end user's voice service experience should be included in the test report to provide a comprehensive view of the testing.

### VoNR - Intra-Central Unit (O-CU) Inter-Distributed Unit (O-DU) handover

This test scenario validates the user's voice experience when the end user device (UE) is on a VoNR call and performs a handover between O-RUs which connect to different O-DUs, which in turn are connected to the same O-CU-CP/O-CU-UP (Intra-O-CU Inter-O-DU handover)

#### Test Description

The 5G O-RAN system has multiple sub-components such as the O-RU, O-DU and the O-CU-CP/O-CU-UP. This setup leads to multiple handover scenarios between the O-RAN sub-components. This particular scenario tests the end user's voice experience during the handover between two O-RUs, where the O-RUs are connected to different O-DUs which in turn are connected to the same O-CU-CP/O-CU-UP, hence an Intra-O-CU Inter-O-DU handover. This handover will be agnostic to the 5G core as the handover occurs on the O-RAN system. This test assesses the impact on the end user's voice service in this handover scenario by monitoring the KPIs included in clause 7.5.

#### Test Setup

The SUT in this test case is a pair of O-RUs which connect to a different pair of O-DUs which in turn connect to the same O-CU (refer Clause 4.5). This O-RAN setup is used to test the voice service during a handover. A 5G SA Core is required to support basic functionality to authenticate and register the end user device to establish a PDU session. An IMS core is required to register the end user device to support voice services on a 5G network. The 5G and IMS cores can be completely emulated, partially emulated or real non-emulated cores. At least two end user devices (UE) shall be used, which can be real UEs or emulated, and both shall support voice service using VoNR. The end user devices will serve as Mobile Originated (MO) and Mobile Terminated (MT) end user devices forming the two ends of the voice call. Going forward in this clause, these end user devices are referred to as MO end user device and MT end user device to represent their role in the voice call. The test setup shall include tools which can collect traces on the elements and/or packet captures of communication between the elements. This can be a built-in capability of the emulated/non-emulated network elements or an external tool. Optionally, if some of the network elements are located remotely, either in a cloud or on the internet, the additional latency should be calculated and accounted for.

The pair of O-RUs (O-RU1 and O-RU2) shall be connected to a pair of O-DUs (O-DU1 and O-DU2) and O-CU-CP/O-CU-UP. As for the O-RU to O-DU connection, O-RU1 shall connect to O-DU1, and O-RU2 shall connect to O-DU2, and both O-DUs shall connect to the same O-CU-CP/O-CU-UP. All the O-RAN components shall have the correct configuration and software load. The end user devices shall be provisioned with the user credentials to register and setup a PDU session with the 5G core and register with the IMS core to perform voice calls using VoNR. The 5G core network and IMS core shall be configured to support voice service on the end user devices used for testing, which includes the ability to dynamically set up QoS Flows for voice calls.

All the elements in the network like O-RAN system, 5G core and the IMS Core should have the ability to capture traces to validate the successful execution of the test cases. The end user devices should have the capability to capture traces/packets to calculate the VoNR KPIs. Optionally, the network can have network taps deployed in various legs of the network to get packet captures to validate successful execution of the test cases. Finally, all these different components shall have connectivity with each other - the end user device shall be able to connect to O-RAN system(O-RUs connected to O-DU and O-CU), O-RAN system shall be connected to the 5G core, which in turn shall have connectivity to the IMS Core.

#### Test Methodology/Procedure

Ensure the end user devices, O-RAN system, 5G core and the IMS core have all been configured as outlined in clause 7.5.3.2. In this test scenario, both the mobile originated and mobile terminated end user devices will use the same O-RAN system, 5G and IMS core to perform the end-to-end voice call. All traces and packet captures shall be enabled for the duration of the testing to ensure all communication between network elements can be captured and validated.

1. Power on the two end user devices and ensure both devices register with the 5G core for voice services over SA by connecting over the O-RAN (O-RU, O-DU and O-CU). Both the MO & MT end user devices shall be in the coverage area of the same O-RU - O-RU1.
2. Once the registration is complete, the MO and MT end user devices shall establish a PDU session with the 5G core. Once the PDU session has been setup, both the end user devices shall register with the IMS core to support voice services.
3. Use the MO end user device to call the MT end user device. Validate the MT end user device can receive and answer the call.
4. Once the call has been setup, move the MO end user device from the coverage area of O-RU1 to coverage area of O-RU2, thus causing a handover from O-RU1 to O-RU2, and O-DU1 to O-DU2.
5. Continue the two-way voice communication between the end user devices until the handover procedure is complete before terminating the voice call.
6. Repeat the test (steps 1 through 5) multiple times (> 10 times) and gather results.

#### Test Expectation (expected results)

As a pre-validation, use the traces to validate a successful registration and PDU session setup by the end user devices without any errors over O-RU, O-DU and O-CU. Also validate both the end user devices can register with the IMS core for voice services. This is a prerequisite before these tests can be completed.

Validate the end user devices can make a voice call between each other by dynamically setting up a 5QI-1 bearer to transfer voice packets over RTP. Ensure the Call Setup Time is reasonable, the voice quality from both parties is clear and audible without one-way or intermittent muting through the duration of the call, especially during the handover process. Use the packet captures to validate there are no RTP packet drops or high RTP packet jitter which can cause voice muting issues. Use the packet captures to ensure there are no out-of-sequence packets which can impact customer's voice experience.

The average range of values for the KPIs are included below for guidance. These values are applicable when the testing is performed in a controlled environment in good radio conditions without the interference of external factors which can impact the KPIs. Example: use of internet to connect to remote servers/hosts can add latency, jitter and reliability issues to the connection, thus impacting the KPIs. As there are multiple variables which can impact the testing in this scenario, a KPI outcome outside the range does not necessarily point to a failure in the SUT.

* CSSR - Call Setup Success Rate % -> 99%.
* CST - Call Setup Time - < 2.5s
* MOS Score - > 3.5
* Mute Rate % - < 1%
* One Way Call % - < 1%
* RTP Packet Loss % - < 1%

As a part of gathering data, ensure the minimum configuration parameters in see clause 4.3 are included in the test report. The following information should also be included in the test report to provide a comprehensive view of the test setup.

UE side (real or emulated UE):

* Radio parameters such as RSRP, RSRQ, PDSCH SINR (average sample per second)
* PDSCH BLER, PDSCH MCS, MIMO rank (number of layers) (average sample per second)
* Downlink transmission mode
* Channel utilization, i.e. Number of allocated/occupied downlink PRBs and Number of allocated/occupied slots (average sample per second)

Table 7-19 Example Test Report for VoNR - Inter-O-DU Intra-O-CU Handover

|  | VoNR MO | VoNR MT |
| --- | --- | --- |
| Call Setup Success Rate |  |  |
| Call Setup Time |  |  |
| MOS Score |  |  |
| Mute Rate % |  |  |
| One Way Call % |  |  |
| RTP Packet Loss % |  |  |
| L1 DL Spectral efficiency [bps/Hz] |  |  |
| UE RSRP [dBm] |  |  |
| UE PDSCH SINR [dB] |  |  |
| MIMO rank |  |  |
| PDSCH MCS |  |  |
| DL RB number |  |  |
| UE CQI |  |  |
| UE RSRQ |  |  |
| UE PMI |  |  |
| UE RSSI |  |  |
| UE Buffer status |  |  |
| UE Packet delay |  |  |
| PDSCH BLER [%] |  |  |

The end user voice service experience can also be impacted by some of the features available (see clause 7.5) on the O-RUs, O-DU and O-CU. The details of these features, along with any other features/functionality which can impact the end user's voice service experience should be included in the test report to provide a comprehensive view of the testing.

### VoNR - Inter-Central Unit (O-CU) handover

This test scenario validates the user's voice experience when the end user device (UE) is on a VoNR call and performs a handover between O-RUs which connect to different O-DUs and different O-CUs (Inter-O-CU Inter-O-DU handover)

#### Test Description

The 5G O-RAN system has multiple sub-components such as the O-RU, O-DU and the O-CU. This setup leads to multiple handover scenarios between the O-RAN sub-components. This particular scenario tests the end user's voice experience during the handover between two O-RUs, where the O-RUs are connected to different O-DUs which in turn are connected to different O-CUs, hence an Inter-O-CU Inter-O-DU handover. This handover occurs on the O-RAN system and the 5G core is aware of the handover as it needs to send data to a new O-CU as a part of the handover process. This test assesses the impact on the end user's voice service in this handover scenario by monitoring the KPIs included in clause 7.5.

#### Test Setup

The SUT in this test case is a pair of O-RAN subsystems, a set of O-RU, O-DU and O-CU which interconnects with another set of O-RU, O-DU and O-CU (refer clause 5.6). This O-RAN setup is used to test the voice service during a handover. A 5G SA Core is required to support basic functionality to authenticate and register the end user device to establish a PDU session. An IMS core is required to register the end user device to support voice services on a 5G network. The 5G and IMS cores can be completely emulated, partially emulated or real non-emulated cores. At least two end user devices (UE) shall be used, which can be real UEs or emulated, and both shall support voice service using VoNR. The end user devices will serve as Mobile Originated (MO) and Mobile Terminated (MT) end user devices forming the two ends of the voice call. Going forward in this clause, these end user devices are referred to as MO end user device and MT end user device to represent their role in the voice call. The test setup shall include tools which can collect traces on the elements and/or packet captures of communication between the elements. This can be a built-in capability of the emulated/non-emulated network elements or an external tool. Optionally, if some of the network elements are located remotely either in a cloud or on the internet, the additional latency should be calculated and accounted for.

The pair of O-RAN (O-RAN1 and O-RAN2) subsystems shall be connected - O-RU1 shall be connected to O-DU1, which in turn shall be connected to O-CU1 and similarly O-RU2 shall be connected to O-DU2, which in turn shall be connected to O-CU2. The O-CU1 and O-CU2 nodes shall be connected to each other and the 5G core. All the O-RAN components shall have the correct configuration and software load. The end user devices shall be configured with the correct user credentials to be able to register and authenticate with the O-RAN system and the 5G core. The end user devices also shall be provisioned with the user credentials to register and setup PDU session with the 5G core and register with the IMS core to perform voice call using VoNR. The 5G core network and IMS core shall be configured to support voice service on the end user devices used for testing, which includes the ability to dynamically set up QoS Flows for voice calls.

All the elements in the network like O-RAN system, 5G core and the IMS Core should have the ability to capture traces to validate the successful execution of the test cases. The end user devices should have the capability to capture traces/packets to calculate the VoNR KPIs. Optionally, the network can have network taps deployed in various legs of the network to get packet captures to validate successful execution of the test cases. Finally, all these different components shall have connectivity with each other - the end user device shall be able to connect to O-RAN system(O-RUs connected to O-DUs which are connected to the O-CUs), O-RAN system shall be connected to the 5G core which in turn shall have connectivity to the IMS Core.

#### Test Methodology/Procedure

Ensure the end user devices, O-RAN system, 5G core and the IMS Core have all been configured as outlined in clause 7.5.4.2. In this test scenario, both the mobile originated and mobile terminated end user devices will use the same O-RAN system, 5G and IMS core to perform the end-to-end voice call. All traces and packet captures shall be enabled for the duration of the testing to ensure all communication between network elements can be captured and validated.

1. Power on the two end user devices and ensure both devices register with the 5G core for voice services over SA by connecting over the O-RAN1 system (O-RU1, O-DU1 and O-CU1). Both the MO & MT end user devices shall be in the coverage area of the same O-RU - O-RU1.
2. Once the registration is complete, the MO and MT end user devices shall establish a PDU session with the 5G core. Once the PDU session has been setup, both the end user devices shall register with the IMS core to support voice services.
3. Use the MO end user device to call the MT end user device. Validate the MT end user device can receive and answer the call.
4. Once the call has been setup, move the MO end user device from the coverage area of O-RU1 to coverage area of O-RU2, thus causing a handover from O-RAN1 to O-RAN2 subsystem - O-RU1 to O-RU2, O-DU1 to O-DU2 and O-CU1 to O-CU2.
5. Continue the two-way voice communication between MO and MT end user devices until the handover procedure is complete before terminating the voice call.
6. Repeat the test (steps 1 through 5) multiple times (> 10 times) and gather results.

#### Test Expectation (expected results)

As a pre-validation, use the traces to validate a successful registration and PDU session setup by the end user devices without any errors over O-RU, O-DU and O-CU. Also validate both the end user devices can register with the IMS core for voice services. This is a prerequisite before these tests can be completed.

Validate the end user devices can make a voice call between each other by dynamically setting up a 5QI-1 bearer to transfer voice packets over RTP. Ensure the Call Setup Time is reasonable, the voice quality from both parties is clear and audible without one-way or intermittent muting through the duration of the call, especially during the handover process. Use the packet captures to validate there are no RTP packet drops or high RTP packet jitter which can cause voice muting issues. Use the packet captures to ensure there are no out-of-sequence packets which can impact customer's voice experience.

The average range of values for the KPIs are included below for guidance. These values are applicable when the testing is performed in a controlled environment in good radio conditions without the interference of external factors which can impact the KPIs. Example: use of internet to connect to remote servers/hosts can add latency, jitter and reliability issues to the connection, thus impacting the KPIs. As there are multiple variables which can impact the testing in this scenario, a KPI outcome outside the range does not necessarily point to a failure in the SUT.

* CSSR - Call Setup Success Rate % -> 99%.
* CST - Call Setup Time - < 2.5s
* MOS Score - > 3.5
* Mute Rate % - < 1%
* One Way Call % - < 1%
* RTP Packet Loss % - < 1%

As a part of gathering data, ensure the minimum configuration parameters in clause 4.3) are included in the test report. The following information should also be included in the test report to provide a comprehensive view of the test setup.

UE side (real or emulated UE):

* Radio parameters such as RSRP, RSRQ, PDSCH SINR (average sample per second)
* PDSCH BLER, PDSCH MCS, MIMO rank (number of layers) (average sample per second)
* Received downlink throughput (L1 and L3 PDCP layers) (average sample per second)
* Downlink transmission mode
* Channel utilization, i.e. Number of allocated/occupied downlink PRBs and Number of allocated/occupied slots (average sample per second)

Table 7-20 Example Test Report for VoNR - Inter-O-CU Handover

|  | VoNR MO | VoNR MT |
| --- | --- | --- |
| Call Setup Success Rate |  |  |
| Call Setup Time |  |  |
| MOS Score |  |  |
| Mute Rate % |  |  |
| One Way Call % |  |  |
| RTP Packet Loss % |  |  |
| L1 DL Spectral efficiency [bps/Hz] |  |  |
| UE RSRP [dBm] |  |  |
| UE PDSCH SINR [dB] |  |  |
| MIMO rank |  |  |
| PDSCH MCS |  |  |
| DL RB number |  |  |
| UE CQI |  |  |
| UE RSRQ |  |  |
| UE PMI |  |  |
| UE RSSI |  |  |
| UE Buffer status |  |  |
| UE Packet delay |  |  |
| PDSCH BLER [%] |  |  |

The end user voice service experience can also be impacted by some of the features available (see clause 7.5) on the O-RUs, O-DUs and O-CU. The details of these features, along with any other features/functionality which can impact the end user's voice service experience should be included in the test report to provide a comprehensive view of the testing.

## Video Service - Video over LTE (ViLTE) tests

### 7.6.0 ViLTE test introduction

Voice service has been one of the basic services provided on the mobile device since launch. With increasing LTE penetration and the availability of higher speeds, video calls are slowly replacing voice calls. With the launch of 5G which promises much higher throughput, the shift towards using video calls is only going to get faster. This clause of the present document validates the user's video calling experience in different conditions on the LTE network. This clause of the present document only applies to the video calling service provided by the telecom service provider, which uses the telecom operator's IMS core to establish dedicated bearer to provide superior video calling experience. The KPIs which shall be monitored to assess the video service are included below

* CSSR - Call Setup Success Rate % - Total number of calls which were successful by the total number of calls made as a percentage.
* CST - Call Setup Time - Time taken from the initial SIP INVITE to when the SIP 180 Ringing is received in seconds.
* MOS Score - Mean Opinion Score for the video call. This shall be measured on both ends of the video call - mobile originated and mobile terminated.
* Mute Rate % - Percentage of video calls which were muted or video freezes in both directions (calls with RTP loss of > 3-4s in both directions are considered muted call). This KPI shall be measured on both ends of the video call - mobile originated and mobile terminated and counted only once per call.
* One Way Calls % - Percentage of video calls which were muted, or video is not transmitted in any one direction only (video calls with RTP loss of > 3-4s in one direction only are considered one-way calls). This KPI shall be monitored on both ends of the Video call - mobile originated and mobile terminated and counted only once per call.
* RTP Packet Loss % - Number of RTP packets which were dropped/lost in uplink/downlink direction as a percentage of total packets. This KPI shall be measured on both ends of the Video call - mobile originated and mobile terminated.

Along with the monitoring and validation of these services utilizing user experience KPIs, the O-RAN systems also shall be monitored. The end user service experience can also be impacted by some of the features available on the O-RAN system. Some of these features have been included below. As a part of the video calling services testing, details of these features shall be included in the test report to get a comprehensive view of the setup used for testing. If additional features or functionalities have been enabled during this testing that impact the end user voice experience, those need be included in the test report as well.

* RLC in Unacknowledged Mode
* Robust Header Compression
* DRX
* Dynamic GBR Admission Control
* TTI Bundling
* VoLTE Inactivity Timer
* Frequency Hopping
* Multi-Target RRC Connection Re-Establishment
* VoLTE HARQ
* Coordinated Multi Point (DL and UL)
* VoLTE Quality Enhancement
* Packet Loss Detection
* Voice Codec Aware scheduler
* NR to LTE PS Redirection/Cell Reselection/Handover
* LTE to NR PS Redirection/Cell Reselection/Handover

Table 7-21 provides a summary of test cases and applicable technology.

Table 7-21: ViLTE Test Case summary

|  | | | Applicable technology | | |
| --- | --- | --- | --- | --- | --- |
| Test case | | Functional group | LTE | NSA | SA |
| Test ID | Video service- Video over LTE (ViLTE) |  |  |  |  |
| 7.6.1 | ViLTE Stationary Test | Service | Y | N/A | N/A |
| 7.6.2 | ViLTE handover Test (intra) | Service | Y | N/A | N/A |
| 7.6.3 | Video Service - LTE to NR / NR to LTE handover test | Service | Y | N/A | Y |

### ViLTE Stationary Test

This test scenario validates the user's video calling experience when the end user device (UE) is in LTE coverage and performs a video call.

#### Test Description

Telecom service providers are providing video calling service to their customers and it has been gaining popularity replacing voice calls. Video over LTE (ViLTE) uses the same mechanism as VoLTE, i.e. IP packets to send and receive video & audio packets, with the IP packets being transferred over LTE. Just like VoLTE, IMS is used to setup control and data plane needed for ViLTE communication. As two-way video service is latency sensitive, the EPC core interacts with the IMS core to setup different bearers for Video traffic - QCI-5 for ViLTE control plane and QCI-2 for ViLTE data plane. This test case is applicable when UE is connected over an NSA network. This clause tests ViLTE user experience on an O-RAN system.

#### Test Setup

The SUT in this test case is an O-eNB which includes the Master eNB and can include a Secondary gNB. As most of the current NSA deployment use the 4G eNB to provide video calling services, the use of a secondary gNB is optional. The Secondary gNB is included in this test scenario, but it is only applicable if the gNB plays a role in establishing the control plane or data plane for a video call. The O-eNB, gNB and the components within these shall comply with the O-RAN specifications. The O-RAN setup should support the ability to perform this testing in different radio conditions as defined in clause 4.6. A 4G core is used to support the basic functionality to authenticate and register an end user device in order to setup a PDN connection. An IMS core is used to register the end user device to support video calling services on a 4G network. The 4G and IMS cores can be completely emulated, partially emulated or real non-emulated cores. At least two end user devices (UE) shall be used, which can be real UEs or emulated, and both shall support video calling service using ViLTE. The end user devices will serve as Mobile Originated (MO) and Mobile Terminated (MT) end user devices forming the two ends of the video call. Going forward in this clause, these end user devices will be referred to as MO end user device and MT end user devices to represent the role they plan in the video call. The test setup shall include tools which can collect traces on the elements and/or packet captures of communication between the elements. This could be a built-in capability of the emulated/non-emulated network elements or an external tool. Optionally, if some of the network elements are located remotely either in a cloud or on the internet, the additional latency should be calculated and accounted for.

The Master eNB, Secondary gNB and their components (O-eNB, O-RU, O-DU and O-CU) shall have the right configuration and software load. The end user device shall be configured with the right user credentials to be able to register and authenticate with the O-RAN system and the 4G core. The end user devices shall be provisioned with the user credentials to attach to the 4G core and register with the IMS core to perform a video call using ViLTE. The 4G core network and IMS core shall be configured to support end user devices used for testing including supporting registration, authentication and PDN connection establishment for these end user devices. This also includes provisioning the IMS core to support registration of the end user devices to make video calls over ViLTE. The locations where the radio conditions are excellent, good, fair and poor shall be identified within the serving cell.

All the elements in the network like O-RAN system, 4G core and the IMS Core should have the ability to capture traces to validate the successful execution of the test cases. The end user devices should have the capability to capture traces/packets to calculate the VoLTE KPIs. Optionally, the network can have network taps deployed in various legs of the network to get packet captures to validate successful execution of the test cases. Finally, all these different components shall have connectivity with each other - the end user device shall be able to connect to O-RAN system(O-eNBs and gNBs), O-RAN system shall be connected to the 4G core which in turn shall have connectivity to the IMS Core.

#### Test Methodology/Procedure

Ensure the end user devices, O-RAN system, 4G core and the IMS Core have all been configured as outlined in clause 7.6.1.2. In this test scenario, both the mobile originated and mobile terminated end user devices will use the same O-RAN (i.e. same O-eNB), 4G and IMS core to perform the end-to-end video call. All traces and packet captures shall be enabled for the duration of the testing to ensure all communication between network elements can be captured and validated.

1. Power on the two end user devices in excellent radio condition and ensure both end user devices connect to the 4G core over the Master O-eNB and optionally secondary gNB.
2. Ensure both the MO and MT end user devices can establish a PDN connection with the 4G core. Once the PDN connection has been setup, both the end user devices shall register with the IMS core to support video calling services.
3. Use the MO end user device to video call the MT end user device. Validate the MT end user device can receive and answer the call.
4. Continue to have two-way voice and video communication on the video call for at least 5 minutes before terminating it.
5. Repeat the test multiple times (>10 times) and gather results.
6. Repeat the above steps 1 through 5 for the MO and MT end user devices in good, fair and poor radio conditions.

#### Test Expectation (expected results)

As a pre-validation, use the traces to validate a successful PDN connection setup by the end user devices without any errors using the Master eNB and optionally the secondary gNB. Verify both the end user devices can register with the IMS core for video services. This is a prerequisite before these tests can be completed.

Validate the end user devices can make a video call between each other by dynamically setting up a QCI-2 bearer to transfer voice and video packets over RTP. Ensure the Call Setup Time is reasonable, the video and voice quality from both parties are clear and audible without one-way or intermittent muting or video freezing. Use the packet captures to validate there are no RTP packet drops or high RTP packet jitter which can cause voice muting, video freezing or video lag issues. Use the packet captures to ensure there are no out-of-sequence packets which can impact customer's video calling experience.

The average range of values for the KPIs are included below for guidance. These values are applicable when the testing is performed in a controlled environment in good radio condition without the interference of external factors which can impact the KPIs. For example: use of internet to connect to remote network nodes can add latency, jitter and packet loss issues to the connection, thus impacting the KPIs. As there are multiple variables which can impact the testing in this scenario, a KPI outcome outside the range does not necessarily point to a failure in the SUT.

* CSSR - Call Setup Success Rate % -> 99%.
* CST - Call Setup Time - < 2.5s
* MOS Score - > 3.5
* Mute Rate % - < 1%
* One Way Call % - < 1%
* RTP Packet Loss % - < 1%

These end user video calling KPI values included in clause 7.6 shall be included in the test report along with the minimum configuration parameters included in clause 4.3. The following information should also be included in the test report for the testing performed in different radio conditions to provide a comprehensive view of the test setup.

End user device side (real or emulated UE):

* Radio parameters such as RSRP, RSRQ, PDSCH SINR (average sample per second)
* PDSCH BLER, PDSCH MCS, MIMO rank (number of layers) (average sample per second)
* Received downlink throughput (L1 and L3 PDCP layers) (average sample per second)
* Downlink transmission mode
* Channel utilization, i.e. Number of allocated/occupied downlink PRBs and Number of allocated/occupied slots (average sample per second)

Table 7-22 gives an example of the test report considering the mean and standard deviation of all test results that have been captured.

Table 7-22 Example Test Report for Video over LTE Testing - Stationary Test

|  | Excellent  (cell centre) | Good | Fair | Poor  (cell edge) |
| --- | --- | --- | --- | --- |
| ViLTE MO/MT | ViLTE MO/MT | ViLTE MO/MT | ViLTE MO/MT |
| Call Setup Success Rate |  |  |  |  |
| Call Setup time |  |  |  |  |
| MOS Score |  |  |  |  |
| Mute Rate |  |  |  |  |
| One Way Call |  |  |  |  |
| RTP Packet Loss |  |  |  |  |
| L1 DL Spectral efficiency [bps/Hz] |  |  |  |  |
| UE RSRP [dBm] |  |  |  |  |
| UE PDSCH SINR [dB] |  |  |  |  |
| MIMO rank |  |  |  |  |
| PDSCH MCS |  |  |  |  |
| DL RB number |  |  |  |  |
| UE CQI |  |  |  |  |
| UE RSRQ |  |  |  |  |
| UE PMI |  |  |  |  |
| UE RSSI |  |  |  |  |
| UE Buffer status |  |  |  |  |
| UE Packet delay |  |  |  |  |
| PDSCH BLER [%] |  |  |  |  |

The end user ViLTE experience can also be impacted by some of the features available (see clause 7.6) on the O-eNB, O-RU, O-DU and O-CU. The details of these features, along with any other features/functionality which can impact the end user's video calling service experience should be included in the test report to provide a comprehensive view of the testing.

### ViLTE Handover Test

This test clause is for FFS.

### ViLTE - LTE to NR handover test

This test scenario validates the user's video calling experience when the UE is in video call on LTE and performs a handover from LTE network to a 5G network and vice versa. This test scenario is applicable for a 5G SA deployment.

#### Test Description

Voice service is one of the basic services provided on the telecommunication network. Video service on the 4G network was provided using ViLTE. Similarly, video service on the 5G network is provided using packet switch technology called Video over New Radio. As 5G network is being deployed by a telecommunication service provider, the service provider can need to support 4G and 5G network, and thus support Video over LTE, Video over NR and the handover between the two video calling services. This scenario tests the end user's video calling experience when the end user device performs a handover from video over LTE to Video over NR and vice versa.

#### Test Setup

The SUT in this test case is an O-eNB along with a gNB (O-RU, O-DU and O-CU). An interworking 4G-5G core (referred to as 4G-5G core going forward) which supports a combined anchor point for 4G and 5G, i.e. SMF+PGW-C and UPF+PGW-U is required. The eNB connects to a 4G-5G core over the 4G interfaces like S1 to provide 4G LTE service and the O-CU, O-DU and O-RU will connect to a 4G-5G core over the 5G interfaces like N2 and N3 to provide 5G SA service. The O-eNB, gNB and the components within these shall comply with the O-RAN specifications. The 4G-5G core shall support the basic functionality to authenticate and register an end user device in order to setup a PDN connection/PDU session. An IMS core is required to register the end user device to support video calling services on a 4G and 5G network. The 4G and 5G core will interwork using the N26 interface between the MME and AMF to support seamless handover. Use of the N26 interface is recommended to ensure better customer experience when the end user device performs a handover between 4G and 5G. The 4G-5G and IMS cores can be completely emulated, partially emulated or real non-emulated cores. At least two end user devices (UE) shall be used, which can be real UEs or emulated, and both shall support video calling service using ViLTE, Video over NR and the capability to handover from ViLTE to Video over NR and vice versa. The end user devices will serve as Mobile Originated (MO) and Mobile Terminated (MT) end user devices forming the two ends of the video call. Going forward in this clause, these end user devices are referred to as MO end user device and MT end user devices to represent their role in the video call. The test setup shall include tools which can collect traces on the elements and/or packet captures of communication between the elements. This can be a built-in capability of the emulated/non-emulated network elements or an external tool. Optionally, if some of the network elements are located remotely either in a cloud or on the internet, the additional latency should be calculated and accounted for.

The O-eNB, gNB and their components (O-RU, O-DU and O-CU) shall have the right configuration and software load. The end user devices shall be configured with the right user credentials to be able to register and authenticate with the O-RAN system and the 4G-5G core. The end user devices shall be provisioned with the user credentials to support attach procedure to the 4G-5G core, registering to the IMS core and performing a video call over LTE and NR. This includes supporting registration, authentication and PDN connection/PDU Session establishment for these end user devices. This also includes provisioning the IMS core to support registration of the end user devices to make video calls over ViLTE and Video over NR, which includes dynamically setting up dedicated bearers/QoS Flows for video calls.

All the elements in the network like O-RAN system, 4G-5G core and the IMS Core should have the ability to capture traces to validate the successful execution of the test cases. The end user devices should have the capability to capture traces/packets to calculate the ViLTE and Video over NR KPIs. Optionally, the network can have network taps deployed in various legs of the network to get packet captures to validate successful execution of the test cases. Finally, all these different components shall have connectivity with each other - the end user device shall be able to connect to O-RAN system(O-eNBs and gNBs), O-RAN system shall be connected to the 4G-5G core which in turn shall have connectivity to the IMS Core.

#### Test Methodology/Procedure

Ensure the end user devices, O-RAN system, 4G-5G core and the IMS Core have all been configured as outlined in clause 7.6.3.2. In this test scenario, both the mobile originated and mobile terminated end user devices will use the O-eNB and gNB to connect to the same 4G-5G and IMS core to perform the end-to-end video call. All traces and packet captures shall be enabled for the duration of the testing to ensure all communication between network elements can be captured and validated.

The steps to perform a video over LTE to video over NR handover, followed by video over NR to video over LTE handover are shown below.

1. Power on the two end user devices and ensure both end user devices connect to the 4G-5G core over the O-eNB.
2. Ensure both the MO and MT end user devices can establish a PDN connection with the 4G-5G core. Once the PDN connection has been established, both the end user devices shall register with the IMS core to support video calling services.
3. Use the MO end user device to video call the MT end user device. Validate the MT end user device can receive and answer the video call.
4. Once the two-way call has been setup and communication is going back and forth between the two end user devices, move the MO device to the O-RU coverage of the gNB, thus forcing a handover from 4G to 5G, and forcing a ViLTE to Video over NR handover. Continue two-way voice and video communication through the handover process and terminate the call once the handover process is complete. Measure the video KPIs included in clause 7.6.
5. At this point in time, the MO end user device is in 5G coverage and registered to the 4G-5G core. The MT end user device is in 4G coverage and registered to the 4G-5G core. Both end user devices should still be registered to the IMS core.
6. Use the MO end user device to video call the MT end user device. Validate the MT end user device can receive and answer the call.
7. Once the two-way call has been setup and communication is going back and forth between the two end user devices, move the MO device to the O-eNB coverage, thus forcing a handover from 5G to 4G, and forcing a Video over NR to ViLTE handover. Continue the two-way voice and video communication through the handover process and terminate the call once the handover process is complete. Measure the video KPIs included in clause 7.6.
8. Repeat the test multiple times (> 10 times) and gather results.

#### Test Expectation (expected results)

As a pre-validation, use the traces to validate a successful registration and PDN connection setup by the end user devices without any errors using the O-eNB when in 4G coverage. Similarly, use traces to validate successful registration and PDU session setup by the end user device without any errors using O-RU, O-DU and O-CU when in 5G coverage. Also validate both the end user devices can register with the IMS core for voice services. This is a prerequisite before these tests can be validated.

Validate the end user devices can make a video call between each other by dynamically setting up a QCI-2/5QI-2 bearer to transfer voice and video packets over RTP. Ensure the Call Setup Time is reasonable, the video and voice quality from both parties are clear and audible without one-way or intermittent muting or video freezing. Ensure the voice and video quality is not impacted during the handover process - ViLTE to Video over NR and Video over NR to ViLTE. Use the packet captures to validate there are no RTP packet drops or high RTP packet jitter which can cause voice muting, video freezing or video lag issues. Use the packet captures to ensure there are no out-of-sequence packets which can impact customer's video calling experience.

The average range of values for the KPIs are included below for guidance. These values are applicable when the testing is performed in a controlled environment in good radio condition without the interference of external factors which can impact the KPIs. For example: use of internet to connect to remote network nodes can add latency, jitter and packet loss issues to the connection, thus impacting the KPIs. As there are multiple variables which can impact the testing in this scenario, a KPI outcome outside the range does not necessarily point to a failure in the SUT.

* CSSR - Call Setup Success Rate % -> 99%.
* CST - Call Setup Time - < 2.5s
* MOS Score - > 3.5
* Mute Rate % - < 1%
* One Way Call % - < 1%
* RTP Packet Loss % - < 1%

These end user video calling KPI values included in clause 7.6 shall be included in the test report along with the minimum configuration parameters included in clause 4.3. The following information should also be included in the test report for the testing performed in different radio conditions to provide a comprehensive view of the test setup.

End user device side (real or emulated UE):

* Radio parameters such as RSRP, RSRQ, PDSCH SINR (average sample per second)
* PDSCH BLER, PDSCH MCS, MIMO rank (number of layers) (average sample per second)
* Downlink transmission mode
* Channel utilization, i.e. Number of allocated/occupied downlink PRBs and Number of allocated/occupied slots (average sample per second)

Table 7-23 gives an example of the test report considering the mean and standard deviation of all test results that have been captured.

Table 7-23 Example Test Report for Video over LTE Testing - Handover Test

|  | Excellent  (cell centre) | Good | Fair | Poor  (cell edge) |
| --- | --- | --- | --- | --- |
| ViLTE MO/MT | ViLTE MO/MT | ViLTE MO/MT | ViLTE MO/MT |
| Call Setup Success Rate |  |  |  |  |
| Call Setup time |  |  |  |  |
| MOS Score |  |  |  |  |
| Mute Rate |  |  |  |  |
| One Way Call |  |  |  |  |
| RTP Packet Loss |  |  |  |  |
| L1 DL Spectral efficiency [bps/Hz] |  |  |  |  |
| UE RSRP [dBm] |  |  |  |  |
| UE PDSCH SINR [dB] |  |  |  |  |
| MIMO rank |  |  |  |  |
| PDSCH MCS |  |  |  |  |
| DL RB number |  |  |  |  |
| UE CQI |  |  |  |  |
| UE RSRQ |  |  |  |  |
| UE PMI |  |  |  |  |
| UE RSSI |  |  |  |  |
| UE Buffer status |  |  |  |  |
| UE Packet delay |  |  |  |  |
| PDSCH BLER [%] |  |  |  |  |

The end user ViLTE experience can also be impacted by some of the features available (see clause 7.6) on the O-eNB, O-RU, O-DU and O-CU-CP/O-CU-UP. The details of these features, along with any other features/functionality which can impact the end user's video calling service experience should be included in the test report to provide a comprehensive view of the testing.

## Video Service - EPS Fallback

### 7.7.0 Video service - EPS fallback test introduction

Video service is quickly replacing voice service and turning into one of the basic services offered by telecommunication service providers. Upgrade of telecom network occurs in phases, and this is no different for 5G. The telecom network may not be able to support video calling service on 5G during this phase for multiple reasons - the 5G network may not be deployed nationwide, or 5G network may not be tuned to support voice/video service or the devices may not be able to support video/voice service on 5G. EPS fallback is the method used to support voice/video services during this transition phase, where voice/video services are continued to be supported on the legacy LTE network using video over LTE (ViLTE). This clause of the document only applies to the video calling service provided by the telecom service provider, which uses the telecom operator's IMS core to establish dedicated bearer to provide superior video calling experience. The KPIs which shall be monitored to assess the video calling service are included below

* CSSR - Call Setup Success Rate % - Total number of calls which were successful by the total number of calls made as a percentage.
* CST - Call Setup Time - Time taken from the initial SIP INVITE to when the SIP 180 Ringing is received in seconds.
* MOS Score - Mean Opinion Score for the video call. This KPI shall be measured on both ends of the video call - mobile originated and mobile terminated.
* Mute Rate % - Percentage of video calls which were muted or video freezes in both directions (calls with RTP loss of > 3-4s in both directions are considered muted call). This KPI shall be measured on both ends of the video call - mobile originated and mobile terminated and counted only once per call.
* One Way Calls % - Percentage of video calls which were muted, or video is not transmitted in any one direction only (video calls with RTP loss of > 3-4s in one direction only are considered one-way calls). This KPI shall be monitored on both ends of the Voice call - mobile originated and mobile terminated and counted only once per call.
* RTP Packet Loss % - Number of RTP packets which were dropped/lost in uplink/downlink direction as a percentage of total packets. This KPI shall be measured on both ends of the Voice call - mobile originated and mobile terminated.

Along with the monitoring and validation of these services utilizing user experience KPIs, the O-RAN systems also shall be monitored. The end user service experience can also be impacted by some of the features available on the O-RAN system. Some of these features have been included below. As a part of the voice services testing, details of these features shall be included in the test report to get a comprehensive view of the setup used for testing. If additional features or functionalities have been enabled during this testing that impact the end user voice experience, these shall be included in the test report as well.

* EPS Fallback for IMS Voice
* NR to EPS Mobility
* RLC in Unacknowledged Mode
* Robust Header Compression
* DRX
* Dynamic GBR Admission Control
* TTI Bundling
* VoLTE Inactivity Timer
* Frequency Hopping
* Multi-Target RRC Connection Re-Establishment
* VoLTE HARQ
* Coordinated Multi Point (DL and UL)
* VoLTE Quality Enhancement
* Packet Loss Detection
* Voice Codec Aware scheduler

Please see Table 7-24 for a summary table of test cases and applicable technology.

Table 7-24: Video EPS Fallback Test Case summary

|  | | | Applicable technology | | |
| --- | --- | --- | --- | --- | --- |
| Test case | | Functional group | LTE | NSA | SA |
| Test ID | Video Service-EPS Fallback |  |  |  |  |
| 7.7.1 | EPS Fallback Test | Service | Y | N/A | Y |

### Video Service - EPS Fallback testing

This scenario tests the video calling service when an end user device (UE) is in 5G SA coverage and performs EPS fallback to 4G to make or receive a video call.

#### Test Description

This clause tests the video service on a 5G SA network when it uses EPS fallback mechanism to fallback to the LTE network to use video over LTE to support video calling service. This testing only applies to 5G SA deployment and in this scenario the UE is connected to the 5G SA Core and registered with the IMS core for video calling service. As video calling service is not supported on 5G yet, the UE is forced to fallback to 4G when it makes/receives a video call. The EPS fallback does increase the Call Setup Time due to the time needed to fallback before making/receiving the video call.

There are two mechanisms in which EPS fallback is supported on the 5G core, and the methodology used impacts the time taken to perform the fallback to LTE, and hence impacts the Call Setup Time. The two mechanisms that may be used to perform EPS fallback are included below. These two mechanisms do change the test setup, but does not change the testing procedure.

* With N26 interface - The AMF in the 5G core communicates with the MME in the 4G over the N26 interface. In this scenario the UE performs a handover from the 5G network to the 4G network.
* Without N26 interface - The AMF in the 5G core does not communicate directly with the 4G core, instead uses the UDM/HSS to store and transfer relevant session information to the 4G core. In this scenario the UE performs a Release with Redirect from the 5G network to the 4G network.

#### Test Setup

The SUT in this test case is an O-eNB along with a gNB (O-RU, O-DU and O-CU-CP/O-CU-UP). An interworking 4G-5G core (referred to as 4G-5G core going forward) which supports a combined anchor point, i.e. SMF+PGW-C and UPF+PGW-U is required. The O-eNB connects to a 4G-5G core over the 4G interfaces like S1 to provide 4G LTE service and the gNB (O-RU, O-DU and O-CU-CP/O-CU-UP) will connect to the 4G-5G core over the 5G interfaces like N2 and N3 to provide 5G SA service. The O-eNB, gNB and the components within these shall comply with the O-RAN specifications and support EPS fallback. The 4G-5G core will support the basic functionality to authenticate and register an end user device in order to setup a PDN connection/PDU session. The IMS core will register the end user device and will be integrated with the 4G-5G core to support video calling services over LTE (ViLTE) and EPS fallback. The 4G-5G core will interwork either using the N26 interface or without using N26 interface depending on the desired core network configuration. The existence of the N26 interface does reduce the EPS fallback time, hence reducing Call Setup Time and provides better end user experience. The 4G-5G and IMS cores may be a completely emulated, partially emulated or real non-emulated core. At least two end user devices (UE) shall be used, which can be real UEs or emulated, and both shall support video calling service using ViLTE and EPS fallback procedure. The end user devices will serve as Mobile Originated (MO) and Mobile Terminated (MT) end user devices forming the two ends of the video call. For the sake of clarity, these end user devices will be addressed as UE-1 and UE-2 in this clause. The test setup shall include tools which can collect traces on the elements and/or packet captures of communication between the elements. This can be a built-in capability of the emulated/non-emulated network elements or an external tool. Optionally, if some of the network elements are located remotely either in a cloud or on the internet, the additional latency should be calculated and accounted for.

The O-eNB, gNB and their components (O-RU, O-DU and O-CU-CP/O-CU-UP) shall have the right configuration and software load. The end user device shall be configured with the right user credentials to be able to register and authenticate with the O-RAN system and the 4G-5G core. The end user devices shall be provisioned with the user credentials to attach to the 4G-5G core and register with the IMS core to perform video call using ViLTE and EPS fallback. The 4G-5G core network and IMS core shall be configured to support video calling service on the end user device used for testing, which includes dynamically setting up dedicated bearers for video calls.

All the elements in the network like O-RAN system, 4G-5G core and the IMS Core should have the ability to capture traces to validate the successful execution of the test cases. The end user devices should have the capability to capture traces/packets to calculate the ViLTE KPIs. Optionally, the network can have network taps deployed in various legs of the network to get packet captures to validate successful execution of the test cases. Finally, all these different components shall have connectivity with each other - the end user device shall be able to connect to O-RAN system(O-eNBs and gNBs), O-RAN system shall be connected to the 4G-5G core which in turn shall have connectivity to the IMS Core.

#### Test Methodology/Procedure

Ensure the end user devices, O-RAN system, 4G-5G core and the IMS Core have all been configured as outlined in clause 7.7.1.2. In this test scenario, one of the end user devices (UE-1) will be connected over the 4G O-eNB to the 4G-5G core, while the other end user device (UE-2) will be connected over 5G gNB (O-RU, O-DU and O-CU-CP/O-CU-UP) to the 4G-5G core. All traces and packet captures shall be enabled for the duration of the testing to ensure all communication between network elements can be captured and validated.

1. Power on the two end user devices and ensure UE-1 is in LTE coverage, and UE-2 is in the 5G coverage. Validate both end user devices register to the 4G-5G core.
2. Once the registration is complete, UE-1 and UE-2 shall establish a PDN connection and PDU session respectively with the 4G-5G core. Once the PDN connection and PDU session have been setup, both the end user devices shall register with the IMS core to support video calling services.
3. Use UE-1 as the MO end user device to video call UE-2. Validate the UE-2 performs EPS fallback to LTE to receive the video call.
4. Answer the call on UE-2 and continue to have two-way audio/video communication for at least 5 minutes and terminate the call. Measure the voice KPIs included in clause 7.7.
5. At this point UE-2 should have completed the video call and moved back to connect to the 4G-5G Core over 5G gNB (i.e. O-RU).
6. Use UE-2 as the MO end user device to call UE-1. Validate the UE-2 performs EPS fallback to LTE before making the video call.
7. Answer the call on UE-1 and continue to have two-way communication for at least 5 minutes and terminate the call. Measure the voice KPIs included in clause 7.7.
8. Repeat the test multiple times (>10 times) and gather results.

#### Test Expectation (expected results)

As a pre-validation, use the traces to validate end user device UE-1 can perform a successful registration and PDN connection setup while using the O-eNB in LTE coverage. Similarly, use the traces to validate end user device UE-2 can perform a successful registration and PDU session setup while using gNB in 5G coverage. Verify both the end user devices can register with the IMS core for voice services. This is a prerequisite before these tests can be completed.

Validate the end user devices can make a video call between each other by dynamically setting up a QCI-2 bearer to transfer voice and video packets over RTP. Validate the device which is in the 5G coverage falls back to 4G before receiving or making a video call, in other words the EPS fallback procedure was executed successfully. The Call Setup Time will be higher than Video over LTE due to the delay associated with executing the EPS fallback procedure. Even though this test case does not directly impact the quality of the video call, for the sake of consistency, ensure the voice and video quality from both parties are clear and audible without one-way or intermittent muting and video freezing. Use the packet captures to validate there are no RTP packet drops or high RTP packet jitter which can cause voice muting, video freezing and video lag issues. Use the packet captures to ensure there are no out-of-sequence packets which can impact customer's video calling experience.

The average range of values for the KPIs are included in Table 7-25 for guidance. These values are applicable when the testing is performed in a controlled environment in good radio condition without the interference of external factors which can impact the KPIs. For example: use of internet to connect to remote network nodes can add latency, jitter and packet loss issues to the connection, thus impacting the KPIs. As there are multiple variables which can impact the testing in this scenario, a KPI outcome outside the range does not necessarily point to a failure in the SUT.

Table 7-25 Typical Video KPI values in controlled environments with good radio conditions

| KPI | With N26 Interface | Without N26 Interface |
| --- | --- | --- |
| CSSR - Call Setup Success Rate % | >99% | >99% |
| CST - Call Setup Time | 3.5s | 4 s |
| MOS Score | 3.5 | 3.5 |
| Mute Rate % | < 1% | < 1% |
| One Way Call % | < 1% | < 1% |
| RTP Packet Loss % | < 1% | < 1% |

These end user video calling KPI values included in clause 7.7 shall be included in the test report along with the minimum configuration parameters included in clause 4.3. The following information should also be included in the test report for the testing performed to provide a comprehensive view of the test setup.

End user device side (real or emulated UE):

* Radio parameters such as RSRP, RSRQ, PDSCH SINR (average sample per second)
* PDSCH BLER, PDSCH MCS, MIMO rank (number of layers) (average sample per second)
* Received downlink throughput (L1 and L3 PDCP layers) (average sample per second)
* Downlink transmission mode
* Channel utilization, i.e. Number of allocated/occupied downlink PRBs and Number of allocated/occupied slots (average sample per second)

Table 7-26 gives an example of the test report considering the mean and standard deviation of all test results that have been captured.

Table 7-26 Example Test Report for Video Calling Service Testing - EPS Fallback

|  | EPS Fallback MO | EPS Fallback MT |
| --- | --- | --- |
| Call Setup Success Rate |  |  |
| Call Setup time |  |  |
| MOS Score |  |  |
| Mute Rate |  |  |
| One Way Call |  |  |
| RTP Packet Loss |  |  |
| L1 DL Spectral efficiency [bps/Hz] |  |  |
| UE RSRP [dBm] |  |  |
| UE PDSCH SINR [dB] |  |  |
| MIMO rank |  |  |
| PDSCH MCS |  |  |
| DL RB number |  |  |
| UE CQI |  |  |
| UE RSRQ |  |  |
| UE PMI |  |  |
| UE RSSI |  |  |
| UE Buffer status |  |  |
| UE Packet delay |  |  |
| PDSCH BLER [%] |  |  |

The end user ViLTE experience can also be impacted by some of the features available (see clause 7.7) on the O-eNB, O-RU, O-DU and O-CU-CP/O-CU-UP. The details of these features, along with any other features/functionality which can impact the end user's video calling experience should be included in the test report to provide a comprehensive view of the testing.

## Video Service - Video over NR

### 7.8.0 Video over NR test introduction

Video calling service is slowly replacing voice as a basic calling service. The improvement in end user throughput on LTE has facilitated the move from voice call to video, and the high speeds on 5G is only going to accelerate this migration process. This clause of the document validates the user's video calling experience in different conditions on the 5G network. This clause of the document only applies to the video calling service provided by the telecom service provider, which uses the telecom operator's IMS core to establish dedicated QoS flows to provide superior video calling experience. The KPIs which shall be monitored to assess the video calling service are included below

* CSSR - Call Setup Success Rate % - Total number of calls which were successful by the total number of calls made as a percentage.
* CST - Call Setup Time - Time taken from the initial SIP INVITE to when the SIP 180 Ringing is received in seconds.
* MOS Score - Mean Opinion Score for the video call. This KPI shall be measured on both ends of the video call - mobile originated and mobile terminated.
* Mute Rate % - Percentage of video calls which were muted or video freezes in both directions (calls with RTP loss of > 3-4s in both directions are considered muted call). This KPI shall be measured on both ends of the video call - mobile originated and mobile terminated and counted only once per call.
* One Way Calls % - Percentage of video calls which were muted, or video is not transmitted in any one direction only (video calls with RTP loss of > 3-4s in one direction only are considered one-way calls). This KPI shall be monitored on both ends of the Voice call - mobile originated and mobile terminated and counted only once per call.
* RTP Packet Loss % - Number of RTP packets which were dropped/lost in uplink/downlink direction as a percentage of total packets. This KPI shall be measured on both ends of the Voice call - mobile originated and mobile terminated.

End user video calling service experience can also be impacted by some of the features available on the O-RU, O-DU and O-CU-CP/O-CU-UP. Some of these features have been included below. As a part of the video calling services testing, details of these features shall be included in the test report to get a comprehensive view of the setup used for testing. If additional features or functionalities have been enabled during this testing that impact the end user voice experience, these shall be included in the test report as well.

* Basic Voice over NR
* RLC in Unacknowledged Mode
* Robust Header Compression
* DRX
* Dynamic GBR Admission Control
* TTI Bundling
* Automated Neighbor Relations ANR
* Connected mode mobility (Handover)
* idle mode reselection
* Intra-frequency Cell Reselection/Handover
* Inter-frequency Redirection/Cell Reselection/Handover
* NR Coverage-Triggered NR Session Continuity

Please see Table 7-27 for a summary of test cases and applicable technology.

Table 7-27: Video over NR Test Case summary

|  | | | Applicable technology | | |
| --- | --- | --- | --- | --- | --- |
| Test case | | Functional group | LTE | NSA | SA |
| Test ID | Video service- Video over NR |  |  |  |  |
| 7.8.1 | Video over NR Test - stationary | Service | N/A | N/A | Y |
| 7.8.2. | Video - Intra-Distributed Unit (DU) handover | Service | N/A | N/A | Y |
| 7.8.3 | Video - Intra-Central Unit (CU) Inter-Distributed Unit (DU) handover | Service | N/A | N/A | Y |
| 7.8.4 | Video - Inter-Central Unit (CU) handover | Service | N/A | N/A | Y |

### Video over NR - Stationary Testing

This test scenario validates the user's video calling experience when the end user device (UE) makes a video call on the 5G network.

#### Test Description

This clause of the document tests video over NR user experience on an O-RAN system. Video over NR is similar to ViLTE where it uses IP packets to send and receive audio/video packets, with the IP packets being transferred over NR or 5G radio. Just like ViLTE, IMS is used to setup the control and data plane for the video communication. As video calling service is latency sensitive, the 5G core interacts with the IMS core to setup different QoS flows for video traffic - 5QI-5 for control plane and 5QI-2 for data plane. This test case is applicable when UE is connected over a 5G SA network.

#### Test Setup

The SUT in this test case is a gNB (O-RU, O-DU and O-CU-CP/O-CU-UP) which is used to test the video calling service. A 5G SA Core is required to support basic functionality to authenticate and register the end user device to establish a PDU session. An IMS core is required to register the end user device to support video calling services on a 5G network. The 5G and IMS cores may be completely emulated, partially emulated or real non-emulated cores. At least two end user devices (UE) shall be used, which can be a real UEs or emulated, and both shall support video calling service using Video over NR. The end user devices will serve as Mobile Originated (MO) and Mobile Terminated (MT) end user devices forming the two ends of the video call. Going forward in this clause, these end user devices will be referred to as MO end user device and MT end user device to represent their role in the video call. The test setup shall include tools which can collect traces on the elements and/or packet captures of communication between the elements. This can be a built-in capability of the emulated/non-emulated network elements or an external tool. Optionally, if some of the network elements are located remotely either in a cloud or on the internet, the additional latency should be calculated and accounted for.

The O-RU, O-DU and O-CU-CP/O-CU-UP shall have the right configuration and software load. The SUT shall be setup to run this testing in different radio conditions as outlined in clause 4.6. The end user device shall be configured with the right user credentials to be able to register and authenticate with the O-RAN system and the 5G core. The end user devices shall be provisioned with the user credentials to register and setup PDU session with the 5G core and register with the IMS core to perform video call using Video over NR. The 5G core network and IMS core shall be configured to support video calling service on the end user devices used for testing, which includes the ability to dynamically set up QoS Flows for video calls. The locations where the radio conditions are excellent, good, fair and poor shall be identified within the serving cell.

All the elements in the network like O-RAN system, 5G core and the IMS Core should have the ability to capture traces to validate the successful execution of the test cases. The end user devices should have the capability to capture traces/packets to calculate the Video over NR KPIs. Optionally, the network can have network taps deployed in various legs of the network to get packet captures to validate successful execution of the test cases. Finally, all these different components shall have connectivity with each other - the end user device shall be able to connect to O-RAN system(O-RU, O-DU and O-CU-CP/O-CU-UP), O-RAN system shall be connected to the 5G core which in turn shall have connectivity to the IMS Core.

#### Test Methodology/Procedure

Ensure the end user devices, O-RAN system, 5G core and the IMS core have all been configured as outlined in clause 7.8.1.2. In this test scenario, both the mobile originated and mobile terminated end user devices will use the same O-RAN system, 5G and IMS core to perform the end-to-end video call. All traces and packet captures shall be enabled for the duration of the testing to ensure all communication between network elements can be captured and validated.

1. Power on the two end user devices in excellent radio condition and ensure both devices register with the 5G core for video calling services over SA by connecting over the O-RAN (O-RU, O-DU and O-CU-CP/O-CU-UP).
2. Once the registration is complete, the MO and MT end user devices shall establish a PDU session with the 5G core. Once the PDU session has been setup, both the end user devices shall register with the IMS core to support video calling services.
3. Use the MO end user device to video call the MT end user device. Validate the MT end user device can receive and answer the call.
4. Continue to have two-way audio/video communication on the video call for at least 5 minutes before terminating it.
5. Repeat the test multiple times (> 10 times) and gather results.
6. Repeat the above steps 1 through 5 for good, fair and poor radio conditions.

#### Test Expectation (expected results)

As a pre-validation, use the traces to validate a successful registration and PDU session setup by the end user devices without any errors over O-RU, O-DU and O-CU-CP/O-CU-UP. Also validate both the end user devices can register with the IMS core for video calling services. This is a prerequisite before these tests can be completed.

Validate the end user devices can make a video call between each other by dynamically setting up a 5QI-2 bearer to transfer voice and video packets over RTP. Ensure the Call Setup Time is reasonable, the voice and video quality from both parties are clear and audible without one-way or intermittent muting and video freezing. Use the packet captures to validate there are no RTP packet drops or high RTP packet jitter which can cause voice muting, video freezing or video lag issues. Use the packet captures to ensure there are no out-of-sequence packets which can impact customer's voice experience.

The average range of values for the KPIs are included below for guidance. These values are applicable when the testing is performed in a controlled environment in good radio condition without the interference of external factors which can impact the KPIs. For example: use of internet to connect to remote servers/hosts can add latency, jitter and reliability issues to the connection, thus impacting the KPIs. As there are multiple variables which can impact the testing in this scenario, a KPI outcome outside the range does not necessarily point to a failure in the SUT.

* CSSR - Call Setup Success Rate % -> 99%.
* CST - Call Setup Time - < 2.5s
* MOS Score - > 3.5
* Mute Rate % - < 1%
* One Way Call % - < 1%
* RTP Packet Loss % - < 1%

As a part of gathering data, ensure the minimum configuration parameters included in clause 4.3 are included in the test report. The information in Table 7-28 should also be included in the test report to provide a comprehensive view of the test setup.

UE side (real or emulated UE):

* Radio parameters such as RSRP, RSRQ, PDSCH SINR (average sample per second)
* PDSCH BLER, PDSCH MCS, MIMO rank (number of layers) (average sample per second)
* Downlink transmission mode
* Channel utilization, i.e. Number of allocated/occupied downlink PRBs and Number of allocated/occupied slots (average sample per second)

Table 7-28 Example Test Report for Video over NR - Stationary Testing

|  | Excellent  (cell centre) | Good | Fair | Poor  (cell edge) |
| --- | --- | --- | --- | --- |
| Video over NR MO/MT | Video over NR MO/MT | Video over NR MO/MT | Video over NR MO/MT |
| Call Setup Success Rate |  |  |  |  |
| Call Setup Time |  |  |  |  |
| MOS Score |  |  |  |  |
| Mute Rate % |  |  |  |  |
| One Way Call % |  |  |  |  |
| RTP Packet Loss % |  |  |  |  |
| L1 DL Spectral efficiency [bps/Hz] |  |  |  |  |
| UE RSRP [dBm] |  |  |  |  |
| UE PDSCH SINR [dB] |  |  |  |  |
| MIMO rank |  |  |  |  |
| PDSCH MCS |  |  |  |  |
| DL RB number |  |  |  |  |
| UE CQI |  |  |  |  |
| UE RSRQ |  |  |  |  |
| UE PMI |  |  |  |  |
| UE RSSI |  |  |  |  |
| UE Buffer status |  |  |  |  |
| UE Packet delay |  |  |  |  |
| PDSCH BLER [%] |  |  |  |  |

The end user video calling service experience can also be impacted by some of the features available (see clause 7.8) on the O-RU, O-DU and O-CU-CP/O-CU-UP. The details of these features, along with any other features/functionality which can impact the end user's video calling service experience should be included in the test report to provide a comprehensive view of the testing.

### Video over NR - Intra-Distributed Unit (DU) handover

This test scenario validates the user's video calling experience when the end user device (UE) is on a video call over NR and performs a handover between O-RUs which connect to the same O-DU (Intra-O-DU handover).

#### Test Description

The 5G O-RAN system has multiple sub-components such as the O-RU, O-DU and the O-CU-CP/O-CU-UP. This setup leads to multiple handover scenarios between the O-RAN sub-components. This scenario tests the end user's video calling experience during the handover between two O-RUs which are connected to the same O-DU (and O-CU-CP/O-CU-UP), hence an Intra-O-DU handover. This handover will be agnostic to the 5G core as the handover occurs on the O-RAN system. This test assesses the impact on the end user's voice service in this handover scenario by monitoring the KPIs included in clause 7.8.

#### Test Setup

The SUT in this test case is a pair of O-RUs which connect to the same O-DU and O-CU-CP/O-CU-UP. This O-RAN setup is used to test the video calling service during a handover (refer clause 5.4). A 5G SA Core is required to support basic functionality to authenticate and register the end user device to establish a PDU session. An IMS core is required to register the end user device to support video calling services on a 5G network. The 5G and IMS cores may be completely emulated, partially emulated or real non-emulated cores. At least two end user devices (UE) shall be used, which can be real UEs or emulated , and both shall support video calling service using 5G - Video over NR. The end user devices will serve as Mobile Originated (MO) and Mobile Terminated (MT) end user devices forming the two ends of the video call. Going forward in this clause, these end user devices will be referred to as MO end user device and MT end user device to represent their role in the video call. The test setup shall include tools which can collect traces on the elements and/or packet captures of communication between the elements. This can be a built-in capability of the emulated/non-emulated network elements or an external tool. Optionally, if some of the network elements are located remotely either in a cloud or on the internet, the additional latency should be calculated and accounted for.

The pair of O-RUs (O-RU1 and O-RU2) shall be connected to the O-DU and O-CU-CP/O-CU-UP and all the components shall have the right configuration and software load. The end user devices shall be configured with the right user credentials to be able to register and authenticate with the O-RAN system and the 5G core. The end user devices shall be provisioned with the user credentials to register and setup PDU session with the 5G core and register with the IMS core to perform video call using Video over NR. The 5G core network and IMS core shall be configured to support video service on the end user devices used for testing, which includes the ability to dynamically set up QoS Flows for voice calls.

All the elements in the network like O-RAN system, 5G core and the IMS Core should have the ability to capture traces to validate the successful execution of the test cases. The end user devices should have the capability to capture traces/packets to calculate the Video over NR KPIs. Optionally, the network can have network taps deployed in various legs of the network to get packet captures to validate successful execution of the test cases. Finally, all these different components shall have connectivity with each other - the end user device shall be able to connect to O-RAN system(O-RUs connected to O-DU and O-CU-CP/O-CU-UP), O-RAN system shall be connected to the 5G core which in turn shall have connectivity to the IMS Core.

#### Test Methodology/Procedure

Ensure the end user devices, O-RAN system, 5G core and the IMS core have all been configured as outlined in clause 7.8.2.2. In this test scenario, both the mobile originated and mobile terminated end user devices will use the same O-RAN system, 5G and IMS core to perform the end-to-end video call. All traces and packet captures shall be enabled for the duration of the testing to ensure all communication between network elements can be captured and validated.

1. Power on the two end user devices and ensure both devices register with the 5G core for video calling services over SA by connecting over the O-RAN (O-RU, O-DU and O-CU-CP/O-CU-UP). Ensure both the MO & MT end user devices are in the coverage area of the same O-RU - O-RU1.
2. Once the registration is complete, the MO and MT end user devices shall establish PDU session with the 5G core. Once the PDU session has been setup, both the end user devices shall register with the IMS core to support voice services.
3. Use the MO end user device to video call the MT end user device. Validate the MT end user device can receive and answer the call.
4. Once the call has been setup, move the MO end user device from the coverage area of O-RU1 to coverage area of O-RU2, triggering a handover from O-RU1 to O-RU2.
5. Continue the two-way video and voice communication between MO and MT end user devices until the handover procedure is complete before terminating the video call.
6. Repeat the test (steps 1 through 5) multiple times (> 10 times) and gather results.

#### Test Expectation (expected results)

As a pre-validation, use the traces to validate a successful registration and PDU session setup by the end user devices without any errors over O-RU, O-DU and O-CU-CP/O-CU-UP. Also validate both the end user devices can register with the IMS core for video calling services. This is a prerequisite before these tests can be completed.

Validate the end user devices can make a video call between each other by dynamically setting up a 5QI-2 bearer to transfer voice and video packets over RTP. Ensure the Call Setup Time is reasonable, the voice and video quality from both parties are clear and audible without one-way or intermittent muting and video freezing, for the duration of the call, especially during the handover process. Use the packet captures to validate there are no RTP packet drops or high RTP packet jitter which can cause voice muting, video freezing or video lag issues. Use the packet captures to ensure there are no out-of-sequence packets which can impact customer's voice experience.

The average range of values for the KPIs are included below for guidance. These values are applicable when the testing is performed in a controlled environment in good radio conditions without the interference of external factors which can impact the KPIs. For example: use of internet to connect to remote servers/hosts can add latency, jitter and reliability issues to the connection, thus impacting the KPIs. As there are multiple variables which can impact the testing in this scenario, a KPI outcome outside the range does not necessarily point to a failure in the SUT.

* CSSR - Call Setup Success Rate % -> 99%.
* CST - Call Setup Time - < 2.5s
* MOS Score - > 3.5
* Mute Rate % - < 1%
* One Way Call % - < 1%
* RTP Packet Loss % - < 1%

As a part of gathering data, the minimum configuration parameters in clause 4.3 shall be included in the test report. The following information should also be included in the test report to provide a comprehensive view of the test setup.

UE side (real or emulated UE):

* Radio parameters such as RSRP, RSRQ, PDSCH SINR (average sample per second)
* PDSCH BLER, PDSCH MCS, MIMO rank (number of layers) (average sample per second)
* Downlink transmission mode
* Channel utilization, i.e. Number of allocated/occupied downlink PRBs and Number of allocated/occupied slots (average sample per second)

Table 7-29 Example Test Report for Video over NR - Intra-O-DU Handover

|  | Video over NR MO | Video over NR MT |
| --- | --- | --- |
| Call Setup Success Rate |  |  |
| Call Setup Time |  |  |
| MOS Score |  |  |
| Mute Rate % |  |  |
| One Way Call % |  |  |
| RTP Packet Loss % |  |  |
| L1 DL Spectral efficiency [bps/Hz] |  |  |
| UE RSRP [dBm] |  |  |
| UE PDSCH SINR [dB] |  |  |
| MIMO rank |  |  |
| PDSCH MCS |  |  |
| DL RB number |  |  |
| UE CQI |  |  |
| UE RSRQ |  |  |
| UE PMI |  |  |
| UE RSSI |  |  |
| UE Buffer status |  |  |
| UE Packet delay |  |  |
| PDSCH BLER [%] |  |  |

The end user video calling service experience can also be impacted by some of the features available (see clause 7.8) on the O-RU, O-DU and O-CU-CP/O-CU-UP. The details of these features, along with any other features/functionality which can impact the end user's video calling service experience should be included in the test report to provide a comprehensive view of the testing.

### Video over NR - Intra-Central Unit (CU) Inter-Distributed Unit (DU) handover

This test scenario validates the user's video calling experience when the end user device (UE) is on a video call and performs a handover between O-RUs which connect to different O-DUs which in turn are connected to the same O-CU-CP/O-CU-UP (Intra-O-CU Inter-O-DU handover)

#### Test Description

The 5G O-RAN system has multiple sub-components such as the O-RU, O-DU and the O-CU-CP/O-CU-UP. This setup leads to multiple handover scenarios between the O-RAN sub-components. This particular scenario tests the end user's video calling experience during the handover between two O-RUs, where the O-RUs are connected to different O-DUs which in turn are connected to the same O-CU-CP/O-CU-UP, hence an Intra-O-CU Inter-O-DU handover. This handover will be agnostic to the 5G core as the handover occurs on the O-RAN system. This test assesses the impact on the end user's voice service in this handover scenario by monitoring the KPIs included in clause 7.8.

#### Test Setup

The SUT in this test case is a pair of O-RUs which connect to a different pair of O-DUs, which in turn connect to the same O-CU-CP/O-CU-UP (refer Clause 4.5). This O-RAN setup is used to test the video service during a handover. A 5G SA Core is required to support basic functionality to authenticate and register the end user device to establish a PDU session. An IMS core is required to register the end user device to support voice services on a 5G network. The 5G and IMS cores can be completely emulated, partially emulated or real non-emulated. At least two end user devices (UE) shall be used, which can be real UEs or emulated, and both shall support video calling service using Video over NR. The end user devices will serve as Mobile Originated (MO) and Mobile Terminated (MT) end user devices forming the two ends of the video call. Going forward in this clause, these end user devices are referred to as MO end user device and MT end user device to represent their role in the voice call. The test setup shall include tools which can collect traces on the elements and/or packet captures of communication between the elements. This can be a built-in capability of the emulated/non-emulated network elements or an external tool. Optionally, if some of the network elements are located remotely either in a cloud or on the internet, the additional latency should be calculated and accounted for.

The pair of O-RUs (O-RU1 and O-RU2) shall be connected to a pair of O-DUs (O-DU1 and O-DU2) and O-CU-CP/O-CU-UP. As for the O-RU to O-DU connection, O-RU1 shall connect to O-DU1, and O-RU2 shall connect to O-DU2, and both O-DUs connect to the same O-CU-CP/O-CU-UP. All the O-RAN components shall have the correct configuration and software load. The end user devices shall be provisioned with the user credentials to register and setup PDU session with the 5G core and register with the IMS core to perform video calls using Video over NR. The 5G core network and IMS core shall be configured to support video calling service on the end user devices used for testing, which includes the ability to dynamically set up QoS Flows for video calls.

All the elements in the network like O-RAN system, 5G core and the IMS Core should have the ability to capture traces to validate the successful execution of the test cases. The end user devices should have the capability to capture traces/packets to calculate the Video over NR KPIs. Optionally, the network can have network taps deployed in various legs of the network to get packet captures to validate successful execution of the test cases. Finally, all these different components shall have connectivity with each other - the end user device shall be able to connect to O-RAN system(O-RUs connected to O-DU and O-CU-CP/O-CU-UP), O-RAN system shall be connected to the 5G core which in turn shall have connectivity to the IMS Core.

#### Test Methodology/Procedure

Ensure the end user devices, O-RAN system, 5G core and the IMS Core have all been configured as outlined in clause 7.8.3.2. In this test scenario, both the mobile originated and mobile terminated end user devices will use the same O-RAN system, 5G and IMS core to perform the end-to-end video call. All traces and packet captures shall be enabled for the duration of the testing to ensure all communication between network elements can be captured and validated.

1. Power on the two end user devices and ensure both devices register with the 5G core for video calling services over SA by connecting over the O-RAN (O-RU, O-DU and O-CU-CP/O-CU-UP). Both the MO & MT end user devices shall be in the coverage area of the same O-RU - O-RU1.
2. Once the registration is complete, the MO and MT end user devices shall establish a PDU session with the 5G core. Once the PDU session has been setup, both the end user devices shall register with the IMS core to support video calling services.
3. Use the MO end user device to video call the MT end user device. Validate the MT end user device can receive and answer the call.
4. Once the video call has been setup, move the MO end user device from the coverage area of O-RU1 to coverage area of O-RU2, thus causing a handover from O-RU1 to O-RU2, and O-DU1 to O-DU2.
5. Continue the two-way video and voice communication between the end user devices until the handover procedure is complete before terminating the video call.
6. Repeat the test (steps 1 through 5) multiple times (> 10 times) and gather results.

#### Test Expectation (expected results)

As a pre-validation, use the traces to validate a successful registration and PDU session setup by the end user devices without any errors over O-RU, O-DU and O-CU-CP/O-CU-UP. Also validate both the end user devices can register with the IMS core for video calling services. This is a prerequisite before these tests can be completed.

Validate the end user devices can make a video call between each other by dynamically setting up a 5QI-2 bearer to transfer voice and video packets over RTP. Ensure the Call Setup Time is reasonable, the voice and video quality from both parties are clear and audible without one-way or intermittent muting and video freezing, through the duration of the call, especially during the handover process. Use the packet captures to validate there are no RTP packet drops or high RTP packet jitter which could cause voice muting, video freezing or video lag issues. Use the packet captures to ensure there are no out-of-sequence packets which can impact customer's voice experience.

The average range of values for the KPIs are included below for guidance. These values are applicable when the testing is performed in a controlled environment in good radio conditions without the interference of external factors which can impact the KPIs. For example: use of internet to connect to remote servers/hosts can add latency, jitter and reliability issues to the connection, thus impacting the KPIs. As there are multiple variables which can impact the testing in this scenario, a KPI outcome outside the range does not necessarily point to a failure in the SUT.

* CSSR - Call Setup Success Rate % -> 99%.
* CST - Call Setup Time - < 2.5s
* MOS Score - > 3.5
* Mute Rate % - < 1%
* One Way Call % - < 1%
* RTP Packet Loss % - < 1%

As a part of gathering data, ensure the minimum configuration parameters in clause 4.3 are included in the test report. The following information should also be included in the test report to provide a comprehensive view of the test setup.

UE side (real or emulated UE):

* Radio parameters such as RSRP, RSRQ, PDSCH SINR (average sample per second)
* PDSCH BLER, PDSCH MCS, MIMO rank (number of layers) (average sample per second)
* Downlink transmission mode
* Channel utilization, i.e. Number of allocated/occupied downlink PRBs and Number of allocated/occupied slots (average sample per second)

Table 7-30 Example Test Report for Video over NR - Intra-O-CU Inter-O-DU Handover

|  | Video over NR MO | Video over NR MT |
| --- | --- | --- |
| Call Setup Success Rate |  |  |
| Call Setup Time |  |  |
| MOS Score |  |  |
| Mute Rate % |  |  |
| One Way Call % |  |  |
| RTP Packet Loss % |  |  |
| L1 DL Spectral efficiency [bps/Hz] |  |  |
| UE RSRP [dBm] |  |  |
| UE PDSCH SINR [dB] |  |  |
| MIMO rank |  |  |
| PDSCH MCS |  |  |
| DL RB number |  |  |
| UE CQI |  |  |
| UE RSRQ |  |  |
| UE PMI |  |  |
| UE RSSI |  |  |
| UE Buffer status |  |  |
| UE Packet delay |  |  |
| PDSCH BLER [%] |  |  |

The end user video calling service experience can also be impacted by some of the features available (see clause 7.8) on the O-RU, O-DU and O-CU-CP/O-CU-UP. The details of these features, along with any other features/functionality which can impact the end user's video calling service experience should be included in the test report to provide a comprehensive view of the testing.

### Video over NR - Intra-Central Unit (CU) handover

This test scenario validates the user's video calling experience when the end user device (UE) is on a video call and performs a handover between O-RUs which connect to different O-DUs and O-CU-CP/O-CU-UPs (Inter-O-CU Inter-O-DU handover)

#### Test Description

The 5G O-RAN system has multiple sub-components such as the O-RU, O-DU and the O-CU-CP/O-CU-UP. This setup leads to multiple handover scenarios between the O-RAN sub-components. This particular scenario tests the end user's video calling experience during the handover between two O-RUs, where the O-RUs are connected to different O-DUs which in turn are connected to different O-CU-CP/O-CU-UPs, hence an Inter-O-CU Inter-O-DU handover. This handover occurs on the O-RAN system and the 5G core is aware of the handover as it needs to send data to a new O-CU-CP/O-CU-UP as a part of the handover process. This test assesses the impact on the end user's voice service in this handover scenario by monitoring the KPIs included in clause 7.8.

#### Test Setup

The SUT in this test case is a pair of O-RAN subsystems, a set of O-RU, O-DU and O-CU-CP/O-CU-UP which interconnects with another set of O-RU, O-DU and O-CU-CP/O-CU-UP (refer clause 5.6). This O-RAN setup is used to test the video calling service during a handover. A 5G SA Core is required to support basic functionality to authenticate and register the end user device to establish a PDU session. An IMS core is required to register the end user device to support video services on a 5G network. The 5G and IMS cores can be completely emulated, partially emulated or real non-emulated cores. At least two end user devices (UE) shall be used, which can be a real UEs or emulated, and both shall support video calling service using Video over NR. The end user devices will serve as Mobile Originated (MO) and Mobile Terminated (MT) end user devices forming the two ends of the video call. Going forward in this clause, these end user devices are referred to as MO end user device and MT end user device to represent their role in the video call. The test setup shall include tools which can collect traces on the elements and/or packet captures of communication between the elements. This can be a built-in capability of the emulated/non-emulated network elements or an external tool. Optionally, if some of the network elements are located remotely either in a cloud or on the internet, the additional latency should be calculated and accounted for.

The pair of O-RAN (O-RAN1 and O-RAN2) subsystems shall be connected - O-RU1 shall be connected to O-DU1, which in turn shall be connected to O-CU-CP/O-CU-UP1 and similarly O-RU2 shall be connected to O-DU2, which in turn shall be connected to O-CU-CP/O-CU-UP2. The O-CU-CP/O-CU-UP1 and O-CU-CP/O-CU-UP2 nodes shall be connected to each other and the 5G core. All the O-RAN components shall have the correct configuration and software load. The end user devices shall be configured with the correct user credentials to be able to register and authenticate with the O-RAN system and the 5G core. The end user devices shall be provisioned with the user credentials to register and setup PDU session with the 5G core and register with the IMS core to perform video call using Video over NR. The 5G core network and IMS core shall be configured to support video calling service on the end user devices used for testing, which includes the ability to dynamically set up QoS Flows for video calls.

All the elements in the network like O-RAN system, 5G core and the IMS Core should have the ability to capture traces to validate the successful execution of the test cases. The end user devices should have the capability to capture traces/packets to calculate the Video over NR KPIs. Optionally, the network can have network taps deployed in various legs of the network to get packet captures to validate successful execution of the test cases. Finally, all these different components shall have connectivity with each other - the end user device shall be able to connect to O-RAN system(O-RUs connected to O-DUs which are connected to the O-CU-CP/O-CU-UPs), O-RAN system shall be connected to the 5G core which in turn shall have connectivity to the IMS Core.

#### Test Methodology/Procedure

Ensure the end user devices, O-RAN system, 5G core and the IMS Core have all been configured as outlined in clause 7.8.4.2. In this test scenario, both the mobile originated and mobile terminated end user devices will use the same O-RAN system, 5G and IMS core to perform the end-to-end video call. All traces and packet captures shall be enabled for the duration of the testing to ensure all communication between network elements can be captured and validated.

1. Power on the two end user devices and ensure both devices register with the 5G core for video calling services over SA by connecting over the O-RAN1 system (O-RU1, O-DU1 and O-CU-CP/O-CU-UP1). Both the MO & MT end user devices shall be in the coverage area of the same O-RU - O-RU1.
2. Once the registration is complete, the MO and MT end user devices shall establish a PDU session with the 5G core. Once the PDU session has been setup, both the end user devices shall register with the IMS core to support video calling services.
3. Use the MO end user device to video call the MT end user device. Validate the MT end user device can receive and answer the video call.
4. Once the call has been setup, move the MO end user device from the coverage area of O-RU1 to coverage area of O-RU2, thus causing a handover from O-RAN1 to O-RAN2 subsystem - O-RU1 to O-RU2, O-DU1 to O-DU2 and O-CU-CP/O-CU-UP1 to O-CU-CP/O-CU-UP2.
5. Continue the two-way video and voice communication between MO and MT end user devices until the handover procedure is complete before terminating the video call.
6. Repeat the test (steps 1 through 5) multiple times (> 10 times) and gather results.

#### Test Expectation (expected results)

As a pre-validation, use the traces to validate a successful registration and PDU session setup by the end user devices without any errors over O-RU, O-DU and O-CU-CP/O-CU-UP. Also validate both the end user devices can register with the IMS core for video calling services. This is a prerequisite before these tests can be completed.

Validate the end user devices can make a video call between each other by dynamically setting up a 5QI-2 bearer to transfer voice and video packets over RTP. Ensure the Call Setup Time is reasonable, the voice and video quality from both parties are clear and audible without one-way or intermittent muting and video freezing, through the duration of the call, especially during the handover process. Use the packet captures to validate there are no RTP packet drops or high RTP packet jitter which can cause voice muting, video freezing or video lag issues. Use the packet captures to ensure there are no out-of-sequence packets which can impact customer's video experience.

The average range of values for the KPIs are included below for guidance. These values are applicable when the testing is performed in a controlled environment in good radio conditions without the interference of external factors which can impact the KPIs. For example: use of internet to connect to remote servers/hosts can add latency, jitter and reliability issues to the connection, thus impacting the KPIs. As there are multiple variables which can impact the testing in this scenario, a KPI outcome outside the range does not necessarily point to a failure in the SUT.

* CSSR - Call Setup Success Rate % -> 99%.
* CST - Call Setup Time - < 2.5s
* MOS Score - > 3.5
* Mute Rate % - < 1%
* One Way Call % - < 1%
* RTP Packet Loss % - < 1%

As a part of gathering data, ensure the minimum configuration parameters in clause 4.3 are included in the test report. The following information should also be included in the test report to provide a comprehensive view of the test setup.

UE side (real or emulated UE):

* Radio parameters such as RSRP, RSRQ, PDSCH SINR (average sample per second)
* PDSCH BLER, PDSCH MCS, MIMO rank (number of layers) (average sample per second)
* Downlink transmission mode
* Channel utilization, i.e. Number of allocated/occupied downlink PRBs and Number of allocated/occupied slots (average sample per second)

Table 7-31 Example Test Report for Video over NR - Inter-O-CU Handover

|  | Video over NR MO | Video over NR MT |
| --- | --- | --- |
| Call Setup Success Rate |  |  |
| Call Setup Time |  |  |
| MOS Score |  |  |
| Mute Rate % |  |  |
| One Way Call % |  |  |
| RTP Packet Loss % |  |  |
| L1 DL Spectral efficiency [bps/Hz] |  |  |
| UE RSRP [dBm] |  |  |
| UE PDSCH SINR [dB] |  |  |
| MIMO rank |  |  |
| PDSCH MCS |  |  |
| DL RB number |  |  |
| UE CQI |  |  |
| UE RSRQ |  |  |
| UE PMI |  |  |
| UE RSSI |  |  |
| UE Buffer status |  |  |
| UE Packet delay |  |  |
| PDSCH BLER [%] |  |  |

The end user video calling service experience can also be impacted by some of the features available (see clause 7.8) on the O-RU, O-DU and O-CU-CP/O-CU-UP. The details of these features, along with any other features/functionality which can impact the end user's video calling service experience should be included in the test report to provide a comprehensive view of the testing.

## URLLC

### 7.9.0 URLLC test introduction

The 5G network has been built not just to support the data and voice use-cases of the past, but a wide variety of use-cases to support connectivity across a diverse set of verticals, such as industrial automation, health care, gaming etc. The 5G network was built with flexibility and efficiency with additional enhancements being added in every release to enable ultra-low latency or ultra-reliability to cater to a diverse set of use-cases such as: automotive applications, augment and virtual reality etc. Network slicing in 5G allows the separation of the network where services with different characteristics and requirements can be run on separate slices of the network. These enhancements in 5G, paired up with network slicing capability, allows a telecommunication service provider to support all the diverse set of use-cases using the same 5G network and different network slices.

Ultra-Reliable Low Latency Communication (URLLC) is one such use case which allows service which require low end to end latency to be deployed. As this is a new concept, new services and use-cases are being created to use this slice of the network. The generic KPIs which will be monitored to assess the URLLC use cases are included below. As the URLLC use cases vary, the KPI used and the values for these KPIs also vary by use case. Not all KPIs are used for all use cases and similarly some KPIs are used only in specific use cases.

* Reliability - This is the percentage of packets or messages sent which were successfully delivered to the end node.
* End to End Latency - The time required to transfer a packet or message from the end user device to the application or vice versa.
* Jitter - The variation of the end-to-end latency values measured in the network setup over the transmission of multiple packets or messages.
* Position Service Accuracy - The distance between the location provided by the location service and the real location of the target object.
* Position Service Latency - The time elapsed between the request to get location information to when the location information is available.
* User experienced throughput - The network throughput as measured on the application layer.
* Mean time between failures - The duration of time the service was available before a failure condition which causes the service to be unavailable.

This clause provides the procedure to test the URLLC applications in a telecommunication network. URLLC refers to a diverse set of applications where the end-user device communicates to the application server over the 5G network. The use-case itself has stringent requirements for the end-to-end latency and reliability between the end-user device and application server. 5G has enhancements within the RAN and core to support these requirements for the URLLC use cases. The 5G RAN allows for lower downlink data to uplink Ack, thus reducing the latency on the air interface. Similarly, the 5G Core allows for the data plane anchor (UPF) to be deployed close to the end user device in the edge location along with the application server to eliminate part of the backhaul latency.

Please see the below summary table of test cases and applicable technology.

Table 7-32: Augmented Reality Test Case summary

|  | | | Applicable technology | | |
| --- | --- | --- | --- | --- | --- |
| Test case | | Functional group | LTE | NSA | SA |
| Test ID | URLLC-Augmented Reality |  |  |  |  |
| 7.9.1 | Augmented Reality | Service | N/A | N/A | Y |

### Augmented Reality

This test scenario validates the end user's augmented reality experience when using an AR device over the 5G network.

#### Test Description

This clause uses Augmented Reality (AR) as an example application, where the end user device is an AR device which communicates with an image processing server acting as the application server. AR has a wide range of applications including gaming, augmented worker as a part of smart factory, remote maintenance, ad-hoc support from remote expert, control of heavy equipment, etc. AR is one use case where the AR device has a camera and continuously transmits images in real time to an application server, along with the position of the AR device. The application server in this use case would be an image processing server, which render the augmented image and transmits the augmented video stream back down to the AR device, that then displays the image on the AR device. The entire process of uploading the image from the AR device, to the processing on the application server, and the displaying of the augmented image on the AR device needs to occur within milliseconds, with high reliability, to ensure the end user has a realistic augmented reality experience.

The 5G URLLC network slice does not have requirements on the protocol, or the method used to communicate between the end user device and the application server. The 5G network slice acts as a pipe to allow communication between these two end points, AR device and application server, with high data rate, high reliability and low latency requirements as dictated by the application. Optionally, depending on the AR use case two additional KPIs could also be monitored when audio-visual interaction is characterized by a human being interacting with entities or humans by relying on audio-visual feedback.

* Motion to photon - The latency (measured time) between the physical movement of the user's head and the updated image on the AR device.
* Motion to audio - The latency (measured time) between the physical movement of the user's head and the updated sound waves from the AR device's speakers.

#### Test Setup

The SUT in this test case shall be a gNB (O-RU, O-DU and O-CU-CP/O-CU-UP) which is used to test the URLLC use case. A 5G SA Core would be required to support basic functionality to authenticate and register the end user device to establish a PDU session. An image processing server would act as an application server for this test scenario. The 5G core and application server may be a completely emulated, partially emulated or real non-emulated core and image processing server. An end user device would be an AR device for this test scenario, which may be a customized device, such as AR based eyeglass, or an AR based head mounted device or a generic handset which support AR or any AR end user device support this use case. For testing othis use case, a real end user device or an emulated one may be used. The test setup shall include tools which can collect traces on the elements and/or packet captures of communication between the elements. This may be a built-in capability of the emulated/non-emulated network elements or an external tool. Optionally, if some of the network elements are located remotely either in a cloud or on the Internet, the additional latency should be calculated and accounted for.

The O-RU, O-DU and O-CU-CP/O-CU-UP shall have the correct configuration and software load. The SUT shall also be setup to run this testing in different radio conditions as outlined in Clause 4.6. The end user device shall be configured with the correct user credentials to be able to register and authenticate with the O-RAN system and the 5G core. The 5G core may be distributed with the UPF deployed at the edge location along with the application server to support the stringent latency requirement of the AR use case. The end user device also shall be provisioned with the user credentials to register and set up the PDU session with the 5G core and to authenticate/communicate with the application server. The application server shall be configured and provisioned with all the necessary information, including relevant images and data to support the AR use case. The locations where the radio conditions are excellent, good, fair and poor shall be identified within the serving cell.

All the elements in the network, such as the O-RAN system, 5G core, and the application server should have the ability to capture traces to validate the successful execution of the test cases. The end user devices should have the capability to capture traces/packets to calculate the KPIs. Optionally, the network may have network taps deployed in various legs of the network to get packet captures to validate successful execution of the test cases. All these different components shall have connectivity with each other - the end user device shall be able to connect to O-RAN system (O-RU, O-DU and O-CU-CP/O-CU-UP), O-RAN system shall be connected to the 5G core which in turn shall have connectivity to the application server.

#### Test Methodology/Procedure

Ensure the end user devices, O-RAN system, 5G core and the application server have all been configured as outlined in clause 7.9.1.2. All traces and packet captures shall be enabled for the duration of the testing to ensure all communication between network elements can be captured and validated.

1. Power on the end user device in excellent radio condition and ensure the device registers with the 5G core over SA by connecting over the O-RAN (O-RU, O-DU and O-CU-CP/O-CU-UP).
2. Once the registration is complete, the end user device shall establish a PDU session over the URLLC network slice, followed by connection to the application server.
3. Use the end user device to communicate with the application server for an AR session. Depending on the end user device, this could be done using a finger and/or hand to select the correct AR application, or using a button or touch activated system to select the correct AR application.
4. Once the application has started, complete the designated task which could be playing a game or performing a pre-defined task on a machinery, troubleshooting etc.
5. Repeat the test multiple times (> 10 times) and gather results.
6. Repeat the above steps 1 through 5 for the good, fair and poor radio conditions.

#### Test Expectation (expected results)

As a pre-validation, use the traces to validate a successful registration and PDU session setup to the URLLC network slice by the end user device without any errors over O-RU, O-DU and O-CU-CP/O-CU-UP. Also validate the end user device can connect to the application server for the AR session. This is a prerequisite before these tests can be validated.

Validate the end user device can set up the AR session and perform the desired task eg: remote maintenance. Ensure there is no noticeable video freezing, jitter, or lag in the AR session for the end user. Use packet captures to validate there is no jitter or packet drops between the end user device and the application server. Use the packet captures to ensure there are no out-of-sequence packets which could impact the end user's experience. Calculate the metrics, such as latency and throughput using the packet captures.

The KPIs for an Augmented Reality session varies by the use-case type, the vertical that is being supported and even the product that is being used for testing. As there is no standard application layer protocol or method used for these use-cases, vendors have developed products which have been optimized using their own propriety mechanism(s). The specific values for these KPIs depends on the product used for testing and shall be provided by the product vendor. As there are multiple variables which can impact the testing in this scenario, a KPI outcome outside the range does not necessarily point to a failure within the SUT.

The KPIs for the URLLC session vary by use-case category, use-case type and even by the vendor products used for testing. The table below [34] gives a generic list of KPI values defined by use-case category. The specific values for these KPIs depends on the product used for testing and shall be provided by the product vendor.

**Table 7-33 - URLLC KPIs**

| **Use** **case** **group** | **Use** **case** **example** | **e2e** **latency** | **jitter** | **round** **trip** **time** | **e2e** **reliability** | **network** **reliability** | **user** **experienced** **throughput** | **network** **throughput** | **availability** | **time** **synchronous** **accuracy** | **device/ con**n**ection** **density** |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| **AR/VR** | Augmented worker | 10ms |  |  | 99.9999% |  |  |  |  |  |  |
| VR view broadcast |  |  | <20ms | 99.999% |  | 40 -700Mbps |  |  |  | 3000/km2 |
| **Tactile** **interaction** | Cloud Gaming | <7ms (uplink) |  |  | 99.999% |  | 1 Gbps |  |  |  | 3000/km2 |
| **Energy** | Differential protection | <15ms | <160us |  | 99.999% |  | 2.4Mbps |  |  | 10us | 10-100/km2 |
| FISR | <25ms |  |  |  |  | 10 Mbps |  |  |  | 10/km2 |
| Fault location identification | 140ms | 2ms |  | 99.9999% |  | 100 Mbps |  |  | 5 us | 10/km2 |
| fault mgmt. in distr. Power generation | <30ms |  |  |  | 99.999% | 1Mbps |  | 99.999% |  | <2000/km2 |
| **Factory** **of** **the** **future** | Advanced industrial robotics | <2ms |  | <30ms task planner; <1-5ms robot ctrl | 99.9999% to 99.999999 % |  |  |  |  |  |  |
| AGV control | 5ms |  |  | 99.999% |  | 100 kbps (downlink) 3-8Mbps uplink |  |  |  |  |
| Robot tooling | 1ms robotic motion ctrl;  1-10ms machine ctrl | <50% |  | 99.9999% |  |  |  |  |  |  |
| **UAV** | UTM connectivity |  |  |  | 99.999% |  | < 128 bps |  |  |  |  |
| Cmnd & Ctrl | <100ms |  |  | 99.999% |  |  |  |  |  |  |
| Payload | application dependent | | | | | | | | | |
| **Position** **measure-ment** **delivery** | for AR in smart factory | <15ms |  |  |  |  |  |  | 99.9% |  |  |
| for inbound logistics in manufacturing | <10ms |  |  |  |  |  |  | 99.9% |  |  |

The capability to capture data is dependent on the end user device's capability. As a part of gathering data, it is recommended that minimum configuration parameters (see Clause 4.3) are included in the test report. The following information is also recommended to be included in the test report to provide a comprehensive view of the test setup.

End user device (real or emulated AR device):

* Radio parameters such as RSRP, RSRQ, PDSCH SINR (average sample per second)
* PDSCH BLER, PDSCH MCS, MIMO rank (number of layers) (average sample per second)
* Downlink transmission mode
* Channel utilization, i.e. Number of allocated/occupied downlink PRBs and Number of allocated/occupied slots (average sample per second)

**Table 7-34 Example Test Report for URLLC Testing**

| URLLC KPIs | Excellent | Good | Fair | Poor |
| --- | --- | --- | --- | --- |
| (cell centre) | (cell edge) |
| Reliability |  |  |  |  |
| End to End Latency |  |  |  |  |
| User Experienced Throughput |  |  |  |  |
| Motion-to-Photon latency |  |  |  |  |
| Motion-to-sound delay |  |  |  |  |
| HARQ Retransmission |  |  |  |  |
| DL/UL Latency - User Plane |  |  |  |  |
| DL/UL Latency - Control Plane |  |  |  |  |
| L1 DL throughput [Mbps] |  |  |  |  |
| L1 DL Spectral efficiency [bps/Hz] |  |  |  |  |
| L3 DL PDCP throughput [Mbps] |  |  |  |  |
| Application DL throughput [Mbps] |  |  |  |  |
| UE RSRP [dBm] |  |  |  |  |
| UE RSRQ |  |  |  |  |
| UE PDSCH SINR [dB] |  |  |  |  |
| MIMO rank |  |  |  |  |
| PDSCH MCS |  |  |  |  |
| CQI |  |  |  |  |
| PMI |  |  |  |  |
| RSSI |  |  |  |  |
| Packet delay |  |  |  |  |
| PDSCH BLER [%] |  |  |  |  |

## mMTC

### 7.10.0 mMTC test introduction

The 5G network also supports a wide set of use cases which allow machine type devices to communicate with the network to realise the Internet of Things use cases. These use cases fall under the category mMTC - massive Machine Type Communication. There are a diverse set of use cases under this category which supports a range of verticals including security, healthcare, remote control, metering, smart city, etc. The 5G network has enhanced the RAN and the core to support the mMTC requirements. Some of these enhancements include supporting large numbers of mMTC devices by improving coverage and density of devices. Enhancements also include reducing the overhead for small intermittent data transmission, thus ensuring low energy usage, and extending the battery life of the mMTC devices.

Network slicing in 5G allows for a telecommunication service provider to support the diverse set of mMTC use cases by dedicating a separate slice of the network for these use cases. The 3GPP has also defined a massive Machine Type Communication (mMTC) as a slice which is used to support the use case to support very large number of small devices (million to billions) in an efficient way to ensure optimal energy utilization. This clause of the document includes scenarios to test service(s) which use the mMTC slice.

Please see the below summary table of test cases and applicable technology.

Table 7-35: mMTC-Sensors Test Case Selection summary

|  | | | Applicable technology | | |
| --- | --- | --- | --- | --- | --- |
| Test case | | Functional group | LTE | NSA | SA |
| Test ID | mMTC-Sensors |  |  |  |  |
| 7.10.1 | Augmented Reality | Service | N/A | N/A | Y |

### Sensors

This test scenario validates the working of sensors over an mMTC slice on a 5G network.

#### Test Description

This clause provides the procedure to test the mMTC applications in a telecommunication network. mMTC comprises a diverse set of use cases supported across various verticals. Most of the mMTC use cases include an end user equipment which communicates with an application server over the 5G network. The end user device varies based on the use case, from a sensor which measure temperature, humidity, or weight, etc.; to a gauge which measures usage of electricity, or water, etc/.; to a monitoring device which measure and report vital statistics. These end user devices collect data and update the application server periodically. The application server collects the data, stores it, analyses it, and can also perform additional tasks if needed, based on the outcome of the analysis, eg: turn off equipment when the temperature is high, etc.

This clause is using sensors to perform mMTC testing. The test case includes deploying 5G sensors in the field to collect data and upload it to an application server. The sensors could vary based on the use case needed. These sensors could be air humidity sensor, temperature sensor, and soil moisture sensor used in conjunction to identify the need to irrigate a farm. These sensors could also be used to identify gas leaks to alert the authorities, or turn off gas lines. These sensors could also be light/image sensors which can be used to identify if a parking spot is occupied. There are numerous sensors which support a varied set of use cases, but this test case has been intentionally left generic without specifying the type of sensor that will be used for testing.

The 5G mMTC network slice does not have requirements on the protocol, or the method used to communicate between the end user device and the application server. The 5G network slice acts as a pipe to allow communication between these two end points, the sensors and application server, with the low energy utilization and the ability to support massive number of such sensors to connect.

#### Test Setup

The SUT in this test case shall be a gNB (O-RU, O-DU and O-CU-CP/O-CU-UP) which is used to test the mMTC use case. A 5G SA core shall be required to support basic functionality to authenticate and register the end user device(s) to establish a PDU session. An application server which has the capability to collect data from different end user devices(s)/sensor(s) which will be used for testing. The 5G core and application server may be a completely emulated, partially emulated or real non-emulated core. The end user device(s) in this scenario may be a single or a group of sensors which can communicate over 5G. For the testing of this use case, either real end user device(s) or emulated devices which emulate the different sensor(s) may be used. The test setup shall include tools which can collect traces on the elements and/or packet captures of communication between the elements. This may be a built-in capability of the emulated/non-emulated network elements or an external tool. Optionally, if some of the network elements are located remotely either in a cloud or on the Internet, the additional latency should be calculated and accounted for.

The O-RU, O-DU and O-CU-CP/O-CU-UP shall have the correct configuration and software load. The SUT shall also be setup to run this testing in different radio conditions as outlined in Clause 4.6. The end user device shall be configured with the correct user credentials to be able to register and authenticate with the O-RAN system and the 5G core. The end user device also shall be provisioned with the user credentials to register and set up the PDU session with the 5G core and authenticate/communicate with the application server. The application server shall be configured and provisioned with all the necessary information to connect to the different sensors and the values. The locations where the radio conditions are excellent, good, fair and poor shall be identified within the serving cell.

All the elements in the network, such as the O-RAN system, 5G core and the application server should have the ability to capture traces to validate the successful execution of the test cases. The end user devices should have the capability to capture traces/packets to calculate the KPIs. Optionally, the network may have network taps deployed in various legs of the network to get packet captures to validate successful execution of the test cases. All these different components shall have connectivity with each other - the end user device shall be able to connect to O-RAN system (O-RU, O-DU and O-CU-CP/O-CU-UP), O-RAN system shall be connected to the 5G core which in turn shall have connectivity to the application server.

#### Test Methodology/Procedure

Ensure the end user devices, O-RAN system, 5G core and the application server have all been configured as outlined in clause 7.10.1.2. All traces and packet captures shall be enabled for the duration of the testing to ensure all communication between network elements can be captured and validated.

1. Power on the end user device(s) in excellent radio condition and ensure the device registers with the 5G core over SA by connecting over the O-RAN (O-RU, O-DU and O-CU-CP/O-CU-UP). Depending on the type of mMTC device this could be done by pushing the power button on the end user device or could be by connecting the end user device to a battery or power source.
2. Once the registration is complete, the end user device(s) shall establish a PDU session over the mMTC network slice, followed by connection to the application server.
3. Based on the type of mMTC device, additional steps may be required the first time the device is connected to the network, to enable the device to register with the application server. This could include adding the end user device to the application server using a unique ID or/and unique security code etc.
4. Validate the end user device can communicate with the application server periodically and update the sensor data.
5. Let the test run for long enough duration of time so that the end user device(s) can upload enough data to the application server.
6. Repeat the above steps 1 through 5 for the good, fair and poor radio conditions.

#### Test Expectation (expected results)

As a pre-validation, use the traces to validate a successful registration and PDU session setup to the mMTC network slice by the end user devices without any errors over O-RU, O-DU and O-CU-CP/O-CU-UP. Also validate the end user devices can connect to the application server. This is a prerequisite before these tests can be validated.

Validate the end user devices can connect to the application server and update the sensor data periodically. Validate the application server can receive the data from the sensors, process it and take the necessary action - updating charts and report, triggering secondary actions, etc. Use packet captures to validate there are no packet drops between the end user device and the application server. Calculate the metrics, such as the latency and throughput using the packet captures.

The KPIs for the mMTC session vary by use-case category, use-case type, and even by the vendor products used for testing. As there is no standard application layer protocol or method used for these use-cases, vendors have developed products which have been optimized using their own propriety mechanism(s). The specific values for these KPIs depends on the product used for testing and shall be provided by the product vendor. As there are multiple variables which can impact the testing in this scenario, a KPI outcome outside the range does not necessarily point to a failure within the SUT.

The capability to capture data is dependent on the end user device's capability. As a part of gathering data, it is recommended that minimum configuration parameters (see 4.3) are included in the test report. The following information is also recommended to be included in the test report to provide a comprehensive view of the test setup.

End user device (real or emulated sensors):

* Radio parameters such as RSRP, RSRQ, PDSCH SINR (average sample per second)
* PDSCH BLER, PDSCH MCS, MIMO rank (number of layers) (average sample per second)
* Downlink transmission mode
* Channel utilization, i.e. Number of allocated/occupied downlink PRBs and Number of allocated/occupied slots (average sample per second)

**Table 7-36 Example Test Report for mMTC Testing**

| MMTC KPIs | Excellent | Good | Fair | Poor |
| --- | --- | --- | --- | --- |
| (cell centre) | (cell edge) |
| RACH Success Rate |  |  |  |  |
| Paging Success Rate |  |  |  |  |
| UE RSRP [dBm] |  |  |  |  |
| UE RSRQ |  |  |  |  |
| UE PDSCH SINR [dB] |  |  |  |  |
| CQI |  |  |  |  |
| Packet delay |  |  |  |  |
| Buffer Status |  |  |  |  |
| DRX Sleep Time |  |  |  |  |

# Load and stress tests

## Load and stress tests introduction

This clause describes the tests evaluating and assessing the load and stress tests of the radio access network from a network end-to-end perspective. The focus of the testing is on the tolerability of the eNB/gNB under load based on 3GPP and O-RAN specifications.

The eNB/gNB shall have an ability to handle the various traffic patterns and loads which could happen in a real field deployment. The load and stress tests are used to evaluate the tolerability of eNB/gNB against loading and traffic in a laboratory setting. These tests may uncover problems that are difficult to observe and correct in the field. Load and stress tests in addition to Functional testing thereby help ensure the final quality of the eNB/gNB products. It leads to improve the overall quality of the system, which in turn improve the user experience.

The tests also cover special calling features, such as placing an Emergency Call.

Please see below summary table of test cases and applicable technology.

Table 8-1: Load and Stress Tests summary

|  | | | Applicable technology | | |
| --- | --- | --- | --- | --- | --- |
| Test case | | Functional group | LTE | NSA | SA |
| TEST ID | Load and Stress Tests | Load and Stress |  |  |  |
| 8.1 | Simultaneous RRC\_CONNECTED UEs | Load and Stress | Y | Y | Y |
| 8.2 | UE State Transition Rate Testing | Load and Stress | Y | Y | Y |
| 8.3 | Traffic Load Testing | Load and Stress | Y | N/A | Y |
| 8.4 | Traffic Model Testing | Load and Stress | Y | Y | Y |
| 8.5 | Long hours stability Testing | Load and Stress | Y | Y | Y |
| 8.6 | Multi-cell Testing | Load and Stress | Y | Y | Y |
| 8.7 | Emergency call | Load and Stress | Y | Y | Y |
| 8.8 | ETWS (Earthquake and Tsunami Warning System) | Load and Stress | Y | Y | Y |
| 8.9 | MPS Call | Load and Stress | Y | Y | Y |

## Simultaneous RRC\_CONNECTED UEs

### Test description and applicability

The purpose of this test is to connect multiple UEs to the eNB/gNB and measure the maximum number of UEs that can be simultaneously maintained in RRC\_CONNECTED state. By connecting multiple UEs at the same time, a basic eNB/gNB capacity is verified. This test is valid with either LTE or 5G NSA/SA. The test procedure is to stack the number of connected UEs to the eNB/gNB one by one and check the maximum number of simultaneous connected UEs. To perform this test, the connected UEs transmit a minimum size of U-Plane packet periodically such as ping to keep the RRC\_CONNECTED state. The transmit interval of the packets shall be shorter than RRC inactivity timer value in eNB/gNB. Figure 8-1 illustrates how the test works.

![????  ????????????????](../assets/images/dee4bcc27cad.jpg)

**Figure 8-1 Simultaneous RRC\_CONNECTED UEs**

### Test setup and configuration

The test setup is a single cell scenario (i.e., isolated cell without any inter-cell interference - see clause 4.7) with multiple UEs placed under excellent radio conditions (see clause 4.6).

Since this test scenario requires a large number of UE connections, it is recommended to use equipment that emulates a large number of UEs.

This test is aimed at C-Plane (i.e., RRC, PDCP and RLC) capacity benchmarking, where a maximum capacity load shall be applied in accordance with clause 4.1.1.

**Test configuration**: The test configuration is not specified. The utilized test configuration (connection diagram between SUT and test equipment, parameters) shall be recorded in the test report.

**Laboratory setup**: The radio conditions experienced by the UE can be modified using a variable attenuator inserted between the antenna connectors (if available) of the O-RU and the UE, or appropriately emulated using a UE emulator. The test environment shall be setup to achieve excellent radio conditions (LTE RSRP (for LTE) or 5G SS-RSRP (for 5G NSA/SA) as defined in clause 4.6) for the UE, but the minimum coupling loss (see clause 4.6) shall not be exceeded.

### Test procedure

The test steps below are applicable for either LTE or 5G NSA/SA:

1. The test setup is configured according to the test configuration. The test configuration shall be recorded in the test report. The serving cell under test is activated and unloaded. All other cells are powered off.
2. The UEs are placed under excellent radio conditions (Cell centre close to radiated eNB/gNB Antenna) as defined by LTE RSRP (for LTE) or 5G SS-RSRP (for 5G NSA/SA) in clause 4.6.
3. The End-to-end setup shall be operational for LTE or 5G NSA/SA as applicable for the test scenario, and there should not be any connectivity issues.
4. Required performance data (incl. the signalling and control data) as specified in the "Test requirements" clause below shall be measured and captured at the UE(s) and eNB/gNB side using logging/measurement tools.
5. "Power ON" the UEs one by one, connect them to the LTE or 5G NSA/SA cell, and confirm that they are in the RRC\_CONNECTED state normally. The "Power ON" intervals shall be longer than the attach latency described in clause 5. Increase the number of UEs until the newly powered UE fails to connect to LTE or 5G NSA/SA cell. The UE in RRC\_CONNECTED state, to keep their RRC connection, periodically sends some data packets like Ping. The connection holding time shall be at least 3 minutes in Figure 8-1 to be sufficient for the test.
6. If all newly powered UEs successfully "Power ON" in the step 5. test configuration, the Uu with optional additional OFH and/or F1 interface and test equipment (see clause 4.1.1) should be used to add more UEs until a newly powered UE fails to connect
7. Lost connections shall be re-established automatically to maximize number of RRC Connected UEs.
8. Stop and save the test logs. Check the log to make sure that the test runs successfully and that no unexpected behavior such as unexpected call release is recorded. The logs shall be captured and kept for test result reference and measurements.

### Test requirements (expected results)

In addition to the common minimum set of configuration parameters (see clause 4.3), the following metrics and counters shall be captured and reported in the test report for performance assessment.

* Radio parameters such as RSRP, RSRQ
* KPIs mentioned in Table 8-2
* SUT load/capacity/performance related KPIs (e.g., CPU and MEMORY utilization) if any

Validate the successful procedures from the collected logs. Check the maximum number of UE connections. For the UE(s) which call loss has occurred in this test more than a certain percentage (e.g., 2%), the validity of the cause of the call loss shall be confirmed.

Table 8-2 Maximum Number of simultaneous RRC\_CONNECTED UEs

|  | Maximum Number of simultaneous RRC\_CONNECTED UEs |
| --- | --- |
| LTE |  |
| NR(NSA) |  |
| NR(SA) |  |

## UE State Transition Rate Testing

### Test description and applicability

The purpose of this test is to benchmark the number of UE state transitions that can be processed by the control plane per unit time by connecting multiple UEs with various state transitions to an eNB/gNB.

As shown in Figure 8-2, an increasing number of UEs (e.g., 100 UEs, 200 UEs ... etc.) are attached at a reasonable stack speed (10 UEs per second for example.) UE traffic shall repeatedly perform UE state transitions (transition RRC\_IDLE to/from RRC\_CONNECTED) over the 'X seconds' duration of the test. After each 'X seconds', the UE powers shall be off. The number of UE calls is increased by a fixed number (e.g., 100 UEs at each increment). If a finer resolution is required, it is increased by 10 UEs. The number of UE calls in the 'X seconds' interval is incrementally increased, and the test is performed until a fail to connect occurs as shown in the example of the right end of Figure 8-2. By connecting multiple UEs at the same time, the basic eNB/gNB control plane processing throughput is verified. This test is valid with either LTE or 5G NSA/SA.

The test procedure is to gradually increase the number of UEs connected to the eNB/gNB and check the maximum number of simultaneously connected UEs as they perform state transition. In order to transition the RRC\_CONNECTED state and the RRC\_IDLE state of the UE alternately and continuously, the UEs shall periodically transmit a minimum size of U-Plane packet such as a Ping. The transmit interval of the packets shall be longer than RRC inactivity timer value in eNB/gNB. By repeating state transitions by many UEs, test a limit of eNB/gNB processing capacity. In addition, by repeating the call generation and call release, it can be confirmed that there are no problems such as processing delays and memory release leaks.

![??????  ???????????](../assets/images/2436a40cb10c.jpg)

Figure 8-2 Benchmark of UE State Transition

### Test setup and configuration

The test setup is a single cell scenario (i.e., isolated cell without any inter-cell interference - see clause 4.7) with multiple UEs placed under excellent radio conditions (see clause 4.6).

Since this test scenario requires a large number of UE connections, it is recommended to use equipment that emulates a large number of UEs.

This test is primarily C-Plane (i.e., RRC, PDCP and RLC) capacity benchmarking, where a maximum capacity load shall be applied in accordance with clause 4.1.1.

**Test configuration**: The test configuration is not specified. The utilized test configuration (connection diagram between SUT and test equipment, parameters) shall be recorded in the test report.

**Laboratory setup**: The radio conditions experienced by the UE can be modified using a variable attenuator inserted between the antenna connectors (if available) of the O-RU and the UE, or appropriately emulated using a UE emulator. The test environment shall be setup to achieve excellent radio conditions (LTE RSRP (for LTE) or 5G SS-RSRP (for 5G NSA/SA) as defined in clause 4.6) for the UE, but the minimum coupling loss (see clause 4.6) shall not be exceeded.

### Test procedure

The test steps below are applicable for either LTE or 5G NSA/SA:

1. The test setup is configured according to the test configuration. The test configuration shall be recorded in the test report. The serving cell under test is activated and unloaded. All other cells are powered off.
2. The UEs are placed under excellent radio conditions (Cell centre close to radiated eNB/gNB Antenna) as defined by LTE RSRP (for LTE) or 5G SS-RSRP (for 5G NSA/SA) in clause 4.6.
3. The End-to-end setup shall be operational for LTE or 5G NSA/SA as applicable for the test scenario, and there should not be any connectivity issues.
4. Required performance data (incl. the signalling and control data) as specified in the "Test requirements" clause below shall be measured and captured at the UE(s) and eNB/gNB side using logging/measurement tools.
5. "Power ON" the UEs (emulated UE) to attach to the LTE or 5G NSA/SA cell one by one at reasonable stack speed, 10 UEs per second for example. Wait for a successful attach. Each UEs state transition can be checked by the state of receiving control plane messages.
6. Ensure that all UEs perform state transitions at regular intervals for X seconds (at least 3minutes) and verify that they are processed correctly. All UEs are then "Power off". It shall be checked whether there are any UEs that have failed to make the RRC state transition at the eNB/gNB.
7. Check the number of UEs that can be processed per unit time. Increase the number of UEs and repeat step 5-6 in the above until processes such as state transition is no longer working properly to identify the upper limit of processing capacity. The number of UE calls is increased by a fixed number (100 UEs). If a finer resolution is required, it is increased by 10 UEs.
8. Stop and save the test logs. Check the log to make sure that the test runs successfully and that no unexpected behavior such as unexpected call release is recorded. The logs shall be captured and kept for test result reference and measurements.

### Test requirements (expected results)

In addition to the common minimum set of configuration parameters (see clause 4.3), the following metrics and counters shall be captured and reported in the test report for performance assessment.

* Radio parameters such as RSRP, RSRQ
* KPIs mentioned in Table 8-3
* SUT load/capacity/performance related KPIs (e.g., CPU and MEMORY utilization) if any

Validate the successful procedures from the collected logs. Check the rate of UE state transition that can be processed per unit time. For the UE(s) in which call loss has occurred in a X seconds test more than a certain percentage (e.g., 2%), the validity of the cause of the call loss shall be confirmed.

Table 8-3 Maximum Rate of UE State Transition

|  | Maximum Rate of UE State Transition  (per second) | Number of UEs |
| --- | --- | --- |
| LTE |  |  |
| NR(NSA) |  |  |
| NR(SA) |  |  |

## Traffic Load Testing

### Test description and applicability

The purpose of this test is to check the stability of the eNB/gNB under load, with a large number of UEs sending and receiving user data. By connecting a large number of UEs at the same time, the eNB/gNB processing capacity and stability are verified. The maximum cell throughput is discussed in clause 6 and is out of scope of this test. This test is valid with either LTE or 5G SA.

The test procedure is to connect X UEs (e.g., 10UEs) per second to the eNB/gNB with UDP download/upload traffic until N UEs (e.g., 1,000UEs) are connected. Then disconnect X UEs per second and reconnected X new UEs per second to the eNB/gNB with UDP download/upload traffic. Continue disconnecting and connecting UEs near the maximum number of UEs to verify a stability of eNB/gNB. It is recommended that the total UDP traffic be less than the maximum cell throughput, as maximum cell throughput is out of scope for this test.

In this test, the number of UEs is assumed to be large, which can reach 1000. For the values of X and N, the test results in the previous clause 8.1 and 8.2 may be helpful.

### Test setup and configuration

The test setup is a single cell scenario (i.e., isolated cell without any inter-cell interference - see clause 4.7) with multiple UEs placed under excellent radio conditions (see clause 4.6).

Since this test scenario requires a large number of UE connections, it is recommended to use equipment that emulates a large number of UEs.

The performance of the SUT 3GPP stack components in all of the O-RU, O-DU, and O-CU sub-nodes shall be measured while all sub-nodes are under high load, where additional load may be applied in accordance with clause 4.1.1.

**Test configuration**: The test configuration is not specified. The utilized test configuration (connection diagram between SUT and test equipment, parameters) shall be recorded in the test report.

**Laboratory setup**: The radio conditions experienced by the UE can be modified using a variable attenuator inserted between the antenna connectors (if available) of the O-RU and the UE, or appropriately emulated using a UE emulator. The test environment shall be setup to achieve excellent radio conditions (LTE RSRP (for LTE) or 5G SS-RSRP (for 5G SA) as defined in clause 4.6) for the UE, but the minimum coupling loss (see clause 4.6) shall not be exceeded.

### Test procedure

The test steps below are applicable for either LTE or 5G SA:

1. The test setup is configured according to the test configuration. The test configuration shall be recorded in the test report. The serving cell under test is activated and unloaded. All other cells are powered off.
2. The UEs are placed under excellent radio conditions (Cell centre close to radiated eNB/gNB Antenna) as defined by LTE RSRP (for LTE) or 5G SS-RSRP (for 5G SA) in clause 4.6.
3. The End-to-end setup shall be operational for LTE or 5G SA as applicable for the test scenario, and there should not be any connectivity issues.
4. Required performance data (incl. the signalling and control data) as specified in the "Test requirements" clause below shall be measured and captured at the UE(s) and eNB/gNB side using logging/measurement tools.
5. Power on X UEs per second to access the eNB/gNB by signalling, initiate UDP upload/download for each UE after UEs get access. In this step and later steps, lost connections shall be re-established automatically to maintain number of RRC Connected UEs.
6. Continue Step 5 until total UEs reach maximum active number of UEs N per cell.
7. Release X UEs per second then add X UEs per second to access the eNB/gNB and initiate UDP upload/download for each new access UE.
8. Repeat Step 7 for at least 5 minutes and record the KPI values, RRC access success rate, and Packet Error Rate.
9. Release all UEs, add X UEs per second to access the eNB/gNB and initiate UDP upload/download for each new access UE until total UEs reach maximum active number of UEs N per cell. Keep testing for at least 5 minutes. Record KPI values and packet error rate.
10. Stop and save the test logs. Check the log to make sure that the test runs successfully and that no unexpected behavior such as unexpected call release is recorded. The logs shall be captured and kept for test result reference and measurements.

### Test requirements (expected results)

In addition to the common minimum set of configuration parameters (see clause 4.3), the following metrics and counters shall be captured and reported in the test report for performance assessment.

* Radio parameters such as RSRP, RSRQ
* N (maximum active number of UEs per cell), X (UEs per second)
* KPIs mentioned in Table 8-4 and Table 8-5
* SUT load/capacity/performance related KPIs (e.g., CPU and MEMORY utilization) if any

Validate the successful procedures from the collected logs. Check the rate of UE state transition that can be processed per unit time. For the UE(s) in which call loss has occurred, the validity of the cause of the call loss shall be confirmed.

Table 8-4 RRC Access Success Rate

|  | RRC Access Success Rate |
| --- | --- |
| LTE |  |
| NR(SA) |  |

Table 8-5 Packet Error Rate

|  | Packet Error Rate | |
| --- | --- | --- |
| Uplink | Downlink |
| LTE |  |  |
| NR(SA) |  |  |

## Traffic Model Testing

### Test description and applicability

The purpose of this test is to check the performance under varying load for the eNB/gNB by generating various UE behavior such as Attach/Detach, Registration/Deregistration, Data upload/download, and Mobility based on the traffic model to load the eNB/gNB. Traffic models can vary depending on factors such as geographic characteristics of the target area, UE type, number of UEs, UE mobility, time of day, and so on. It is important to consider the maximum number of UEs and the behavior that is expected in the field and develop the appropriate traffic model. This test is valid for either LTE or 5G NSA/SA.

The test procedure is to cause various UE behavior such as Attach/Detach, Registration/Deregistration, Data upload/download, and Mobility to the eNB/gNB. Repeat various scenarios based on the traffic model. By processing complex combinations of behavior, the processing capacity of the eNB/gNB is confirmed. Review the KPIs for each scenario to see if there are any issues that depend on a particular scenario.

#### Traffic model

The traffic model is a model of the set of scenarios that an eNB/gNB is expected to undergo in the field. The test items in clause 5 and 7 can be part of the traffic model scenario as they are or by simplifying them. Each scenario may be repeated continuously at a certain frequency, or many may be executed simultaneously. The pattern of possible scenarios as shown in Table 8-6, may be different depending on the characteristics of deployment area in which the eNB/gNB is deployed and can be categorized into several typical types. It is necessary to have eNB/gNB capabilities that are appropriate for the deployment area. See Table 8-6 for examples of typical traffic model types.

Table 8-6 Example of typical traffic model types

| No. | Traffic Model Type | Major Characteristics |
| --- | --- | --- |
| 1 | Indoor Hotspot | * The number of UEs may be very large, not much fluctuation in the number of UEs (less handover). * High traffic volume in data transmission and reception. |
| 2 | Dense Urban | * The number of UEs is very large. * High traffic volume in data transmission and reception. * High in mobility. * Less active at night |
| 3 | Office area | * The number of UEs is large. * High traffic volume in data transmission and reception. * High in mobility. Slower speed. * Less active at night |
| 4 | Residential area | * The number of UEs is small. * Data traffic volume is low during daytime, may peaks at night in area where Wi-Fi is not widespread. * Low in mobility * Somehow active during daytime |
| 5 | Rural | * The number of UEs is very small. * Low traffic volume in data. * Low in mobility. |
| 6 | High Speed  (Train Station. Along the railroad tracks.) | * The number of UEs may be temporarily concentrated in large numbers. Burst when a train arrives or departs, or when a train passes by. * As a train passes, many UEs pass at high speed at the same time. |

The scenarios included in each traffic model type and the frequency (per UE per hour) should be appropriately determined considering the characteristics of that traffic model type.

In this testing, one or more traffic models can be used to evaluate the capacity, stability and load durability of the eNB/gNB.

Table 8-7 shows an example of traffic model. Traffic model defines a large number of UEs and scenarios, and this model can present traffic observed in real field.

Table 8-7 Example of Traffic Model

| **Total number of UEs in a cell** | | | **1,000** | | | (The numbers are just example) | | |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
|  | | | RAT | | |
| **No** | **Scenario (baseline)** | | **LTE** | **5G NSA** | **5G SA** | **Number of UEs** | **Attempts**  **(per UE per hour)** | **Description** |
| 1 | Attach | | ? | ? | N/A | 50 | 0.50 | Power ON |
| 2 | Detach | | ? | ? | N/A | 50 | 0.50 | Power OFF |
| 3 | Tracking area update | | ? | ? | N/A | 100 | 1.00 |  |
| 4 | Registration | | N/A | N/A | ? | 50 | 0.50 | Power ON |
| 5 | Deregistration | | N/A | N/A | ? | 50 | 0.50 | Power OFF |
| 6 | Paging | | ? | ? | ? | 200 | 1.00 | Total of paging in this model. |
| 7 | Data upload/download | Stationary | ? | ? | ? | 100 | 1.00 | One RRC\_CONNECTED period is defined as "1 attempt". At least RRC\_CONNECTED period and avg. DL/UL bit rate shall be specified. If mobility is involved, one hand over per attempt assumed, mobility type and when to move shall be specified. |
| With Mobility \*) | 5 | 0.50 |
| Additional scenario if any | | | | | | | | |
| 8 | Web Browsing | Stationary | ? | ? | ? | 120 | 2.00 | At least hold time, RRC\_CONNECTED period/interval/number of times per call, and avg. DL/UL Mbytes per RRC\_CONNECTED period shall be specified. If mobility is involved, one hand over per attempt assumed, mobility type and when to move shall be specified. |
| With Mobility \*) | ? | ? | ? | 6 | 0.50 |
| 9 | File upload/download | Stationary | ? | ? | ? | 30 | 1.50 | At least file size, upload/download and hold time shall be specified. If mobility is involved, one hand over per attempt assumed, mobility type and when to move shall be specified. |
| With Mobility \*) | ? | ? | ? | 2 | 0.50 |
| 10 | Voice Service | Stationary | ? | ? | ? | 80 | 0.20 | 50% of calls Mobile Terminated, 50% of calls Mobile Originated assumed. At least avg. DL/UL bit rate and avg. hold time shall be specified. If mobility is involved, one hand over per attempt assumed, mobility type and when to move shall be specified. |
| With Mobility \*) | ? | ? | ? | 4 | 0.50 |
| 11 | Video Streaming | Stationary | ? | ? | ? | 40 | 1.00 | At least avg. DL/UL bit rate and avg. hold time shall be specified. With mobility, one handover per one call attempt. If mobility is involved, one hand over per attempt assumed, mobility type and when to move shall be specified. |
| With Mobility \*) | ? | ? | ? | 2 | 0.50 |

\*) e.g., Intra-cell handover. Other mobilities can be included if multiple cells are configured.

The performance of the SUT 3GPP stack components in all of the O-RU, O-DU, and O-CU sub-nodes shall be measured while all sub-nodes are under high load. To achieve this, the test results in the previous clauses 8.1 through 8.3 may be helpful .

### Test setup and configuration

The test setup is a single cell scenario (i.e., isolated cell without any inter-cell interference - see clause 4.7) with multiple UEs placed under excellent radio conditions (see clause 4.6).

When inter-eNB/gNB mobility is included in the traffic model, the target/source cells and UE behavior/sequence should be simulated by the UE emulator and Core emulator without using additional cells.

Since this test scenario requires a large number of UE connections, it is recommended to use equipment that emulates a large number of UEs.

**Test configuration**: The test configuration is not specified. The utilized test configuration (connection diagram between SUT and test equipment, parameters) shall be recorded in the test report.

**Laboratory setup**: The radio conditions experienced by the UE can be modified using a variable attenuator/fading generator inserted between the antenna connectors (if available) of the O-RU and the UE, or appropriately emulated using a UE emulator. The test environment shall be setup to achieve excellent radio conditions (LTE RSRP (for LTE) or 5G SS-RSRP (for 5G NSA/SA) as defined in clause 4.6) for the UE, but the minimum coupling loss (see clause 4.6) shall not be exceeded.

### Test procedure

The test steps below are applicable for either LTE or 5G NSA and SA:

1. The test setup is configured according to the test configuration. The test configuration shall be recorded in the test report. The serving cell under test is activated and unloaded. All other cells are powered off.
2. The UEs are placed under excellent radio conditions (Cell centre close to radiated eNB/gNB Antenna) as defined by LTE RSRP (for LTE) or 5G SS-RSRP (for 5G NSA/SA) in clause 4.6.
3. The End-to-end setup shall be operational for LTE or 5G NSA/SA as applicable for the test scenario, and there should not be any connectivity issues.
4. Required performance data (incl. the signalling and control data) as specified in the "Test requirements" clause below shall be measured and captured at the UE(s) and eNB/gNB side using logging/measurement tools.
5. Start the operation of each UE according to the traffic model.
6. Check KPIs for each scenario included in the traffic model during continuous operation (several tens of minutes to several hours).
7. Stop and save the test logs. Check the log to make sure that the test runs successfully and that no unexpected behavior such as unexpected call release is recorded. The logs shall be captured and kept for test result reference and measurements.

### Test requirements (expected results)

In addition to the common minimum set of configuration parameters (see clause 4.3), the following metrics and counters shall be captured and reported in the test report for performance assessment.

* Radio parameters such as RSRP, RSRQ
* Traffic model
* KPIs mentioned in Table 8-8
* SUT load/capacity/performance related KPIs (e.g., CPU and MEMORY utilization) if any

If a scenario in the Traffic Model is the same as the scenario described in clause 5 and 7, it is recommended to select and evaluate some of the corresponding KPIs described in clause 5 and 7.

Validate the successful procedures from the collected logs. It is desirable that the test duration shall be more than several tens of minutes to several hours. Check the completion rate of each scenario and the adequacy of the completion rate for each scenario shall be confirmed. For the UE(s) in which call loss has occurred, the validity of the cause of the call loss shall be confirmed.

Table 8-8 KPIs in traffic model scenario (example)

|  | | | RAT | | | Success Rate (%) | Optional KPI if any |
| --- | --- | --- | --- | --- | --- | --- | --- |
| No. | Scenario(baseline) | | LTE | 5G NSA | 5G SA |  |  |
| 1 | Attach | | ? | ? | N/A |  | e.g., SgNB addition Success rate in NSA |
| 2 | Detach | | ? | ? | N/A |  |  |
| 3 | Tracking area update | | ? | ? | N/A |  |  |
| 4 | Registration | | N/A | N/A | ? |  |  |
| 5 | Deregistration | | N/A | N/A | ? |  |  |
| 6 | Paging | | ? | ? | ? |  |  |
| 7 | Data upload/download | Stationary | ? | ? | ? |  | e.g., Avg. UL/DL throughput |
| With Mobility |  | e.g., Avg. UL/DL throughput |
| Additional scenario if any | | | | | | | |
| 8 | Web Browsing | Stationary | ? | ? | ? |  | e.g., Avg. UL/DL throughput |
| With Mobility | ? | ? | ? |  | e.g., Avg. UL/DL throughput |
| 9 | File upload/download | Stationary | ? | ? | ? | ? | e.g., Avg. UL/DL throughput |
| With Mobility | ? | ? | ? | ? | e.g., Avg. UL/DL throughput |
| 10 | Voice Service | Stationary | ? | ? | ? | ? | e.g., Packet loss rate |
| With Mobility | ? | ? | ? | ? | e.g., Packet loss rate |
| 11 | Video Streaming | Stationary | ? | ? | ? | ? | e.g., Avg. UL/DL throughput |
| With Mobility | ? | ? | ? | ? | e.g., Avg. UL/DL throughput |

## Long hours stability Testing

### Test description and applicability

The purpose of this test is to conduct a load test using the traffic model described in clause 8.4.1.1 for a long period (e.g., 24 to 48 hours) to confirm the continuous operation for a long period of time. This test is valid with either LTE or 5G NSA and SA.

The test procedure is to cause various UE behavior such as Attach/Detach, Registration/Deregistration, and Mobility based on the traffic model to the eNB/gNB and maintains its performance for a long time. Verify the KPIs for each scenario by repeating call generation and call release for various traffic.

### Test setup and configuration

The test setup is a single cell scenario (i.e., isolated cell without any inter-cell interference - see clause 4.7) with multiple UEs placed under excellent radio conditions (see clause 4.6).

Since this test scenario requires a large number of UE connections, it is recommended to use equipment that emulates a large number of UEs.

The extended length performance and stability of the SUT 3GPP stack components in all of the O-RU, O-DU, and O-CU sub-nodes shall be measured while all sub-nodes are under high load. To achieve this, it may be required to apply additional traffic in accordance with clause 4.1.1.

**Test configuration**: The test configuration is not specified. The utilized test configuration (connection diagram between SUT and test equipment, parameters) shall be recorded in the test report.

**Laboratory setup**: The radio conditions experienced by the UE can be modified using a variable attenuator inserted between the antenna connectors (if available) of the O-RU and the UE, or appropriately emulated using a UE emulator. The test environment shall be setup to achieve excellent radio conditions (LTE RSRP (for LTE) or 5G SS-RSRP (for 5G NSA/SA) as defined in clause 4.6) for the UE, but the minimum coupling loss (see clause 4.6) shall not be exceeded.

### Test procedure

The test steps below are applicable for either LTE or 5G NSA and SA:

1. The test setup is configured according to the test configuration. The test configuration shall be recorded in the test report. The serving cell under test is activated and unloaded. All other RF cells are powered off.
2. If during execution of clause 8.3.3 (Traffic Load Testing) or clause 8.4.3 (Traffic Model Testing) incremental traffic was applied using the optional OFH and/or F1 interface and test equipment (see clause 4.1.1) in addition to the traffic being applied at the RF interface, the same level of traffic should be applied again using the optional OFH and/or F1 interface and test equipment to ensure O-DU and O-CU exposed to adequate "base load" before execution of Step 6.
3. The UEs are placed under excellent radio conditions (Cell centre close to radiated eNB/gNB Antenna) as defined by LTE RSRP (for LTE) or 5G SS-RSRP (for 5G NSA/SA) in clause 4.6.
4. The End-to-end setup shall be operational for LTE or 5G NSA/SA as applicable for the test scenario, and there should not be any connectivity issues.
5. Required performance data (incl. the signalling and control data) as specified in the "Test requirements" clause below shall be measured and captured at the UE(s) and eNB/gNB side using logging/measurement tools (optional).
6. Start the operation of each UE according to the traffic model. Keep the operation for a long period of several tens of hours.
7. Monitor KPIs for each scenario included in the traffic model during this test. A scenario is considered successful if the KPIs for each scenario is equivalent to the traffic model testing case. if not, it is a failure.
8. Stop and save the test logs. Check the log to make sure that the test runs successfully and that no unexpected behavior such as unexpected call release is recorded. The logs shall be captured and kept for test result reference and measurements (optional).

### Test requirements (expected results)

In addition to the common minimum set of configuration parameters (see clause 4.3), the following metrics and counters shall be captured and reported in the test report for performance assessment.

* Radio parameters such as RSRP, RSRQ
* Traffic Model
* KPIs mentioned in Table 8-9, Table 8-8.
* SUT load/capacity/performance related KPIs (e.g., CPU and MEMORY utilization) if any

Validate the successful procedures from the collected logs. Normally this test should be a minimum of 12 hours with 60 hours as a recommended maximum. Check the completion rate of each scenario and the adequacy of the completion rate for each scenario shall be confirmed. For the UE(s) in which call loss has occurred, the validity of the cause of the call loss shall be confirmed.

Table 8-9 Successfully tested hours

|  | Successfully tested hours (hours) |
| --- | --- |
| LTE |  |
| NR(NSA) |  |
| NR(SA) |  |

## Multi-cell Testing

### Test description and applicability

The purpose of this test is to benchmark the eNB/gNB's processing capacity by applying a load to some or all of its cells simultaneously based on the traffic model. Inter-cell interference is out of scope, so the DUT cells shall be configured there is no inter-cell interference. This test is valid with either LTE or 5G NSA and SA. The test procedure is to cause various UE behavior such as Attach/Detach, Registration/Deregistration, and Mobility based on the Traffic Model for some or all of the Cells in the eNB/gNB. Verify the KPIs for each scenario in each cell by repeating call generation and call release for various traffic (scenarios). This test is a multi-cell test of clause 8.4 and is intended to increase the load on eNB/gNB. In this testing, various mobilities can be included among DUT cells.

The performance of the SUT 3GPP stack components in all of the O-RU, O-DU, and O-CU sub-nodes shall be measured while all sub-nodes are under high load. To achieve this, it may be required to apply additional traffic in accordance with clause 4.1.1.

### Test setup and configuration

The test setup is multiple cells scenario (i.e., isolated cell without any inter-cell interference - see clause 4.7) with multiple UEs placed under excellent radio conditions (see clause 4.6).

Since this test scenario requires a large number of UE connections, it is recommended to use equipment that emulates a large number of UEs.

**Test configuration**: The test configuration is not specified. The utilized test configuration (connection diagram between SUT and test equipment, parameters) shall be recorded in the test report.

**Laboratory setup**: The radio conditions experienced by the UE can be modified using a variable attenuator inserted between the antenna connectors (if available) of the O-RU and the UE, or appropriately emulated using a UE emulator. The test environment shall be setup to achieve excellent radio conditions (LTE RSRP (for LTE) or 5G SS-RSRP (for 5G NSA/SA) as defined in clause 4.6) for the UE, but the minimum coupling loss (see clause 4.6) shall not be exceeded.

### Test procedure

The test steps below are applicable for either LTE or 5G NSA and SA:

1. The test setup is configured according to the test configuration. The test configuration shall be recorded in the test report. The target cells under test are activated and unloaded. All other cells are powered off.
2. The UEs are placed under excellent radio conditions (Cell centre close to radiated eNB/gNB Antenna) as defined by LTE RSRP (for LTE) or 5G SS-RSRP (for 5G NSA/SA) in clause 4.6.
3. The End-to-end setup shall be operational for LTE or 5G NSA/SA as applicable for the test scenario, and there should not be any connectivity issues.
4. Required performance data (incl. the signalling and control data) as specified in the "Test requirements" clause below shall be measured and captured at the UE(s) and eNB/gNB side using logging/measurement tools.
5. Start the operation of each UE according to the traffic model for all target cells.
6. Check KPIs for each scenario included in the traffic model. A scenario is considered successful if the KPIs for each scenario is equivalent to the single-cell case. If not, it is a failure.
7. Stop and save the test logs. Check the log to make sure that the test runs successfully and that no unexpected behavior such as unexpected call release is recorded. The logs shall be captured and kept for test result reference and measurements.

### Test requirements (expected results)

In addition to the common minimum set of configuration parameters (see clause 4.3), the following metrics and counters shall be captured and reported in the test report for performance assessment.

* Radio parameters such as RSRP, RSRQ
* Traffic Model
* KPIs mentioned in Table 8-10, Table 8-8
* SUT load/capacity/performance related KPIs (e.g., CPU and MEMORY utilization) if any

Validate the successful procedures from the collected logs. The number of cells to be communicated is preferably 2 cells or more. Check the KPIs of each scenario and the adequacy of the completion rate for each scenario shall be confirmed. For the UE(s) in which call loss has occurred, the validity of the cause of the call loss shall be confirmed.

Table 8-10 Successfully tested number of Cells

|  | Successfully tested number of Cells |
| --- | --- |
| LTE |  |
| NR(NSA) |  |
| NR(SA) |  |

## Emergency call

### Test description and applicability

The purpose of this test is to ensure that emergency calls, such as 911/112, are preferentially established even if the eNB/gNB is overloaded. This test is valid with either LTE or 5G NSA and SA. The test procedure is to further increase the heavy traffic model to load the eNB/gNB, creating an overload condition where some behavior of the UE, such as data upload/download, fails. Verify that emergency calls, such as 911/112, can communicate correctly in such a situation.

The Emergency Call performance of the SUT 3GPP stack components in all of the O-RU, O-DU, and O-CU sub-nodes shall be measured while all sub-nodes are under high load, where a maximum capacity load shall be applied in accordance with clause 4.1.1.

### Test setup and configuration

The test setup is a single cell scenario (i.e., isolated cell without any inter-cell interference - see clause 4.7) with multiple UEs placed under excellent radio conditions (see clause 4.6).

Since this test scenario requires a large amount of non-emergency traffics to overload the SUT, so it is recommended to run the test with equipment that emulates a large amount of non-emergency traffic.

**Test configuration**: The test configuration is not specified. The utilized test configuration (connection diagram between SUT and test equipment, parameters) shall be recorded in the test report.

**Laboratory setup**: The radio conditions experienced by the UE can be modified using a variable attenuator inserted between the antenna connectors (if available) of the O-RU and the UE, or appropriately emulated using a UE emulator. The test environment shall be setup to achieve excellent radio conditions (LTE RSRP (for LTE) or 5G SS-RSRP (for 5G NSA/SA) as defined in clause 4.6) for the UE, but the minimum coupling loss (see clause 4.6) shall not be exceeded.

### Test procedure

The test steps below are applicable for either LTE or 5G NSA and SA:

1. The test setup is configured according to the test configuration. The test configuration shall be recorded in the test report. The serving cell under test is activated and unloaded. All other cells are powered off.
2. The UEs are placed under excellent radio conditions (Cell centre close to radiated eNB/gNB Antenna) as defined by LTE RSRP (for LTE) or 5G SS-RSRP (for 5G NSA/SA) in clause 4.6.
3. The End-to-end setup shall be operational for LTE or 5G NSA/SA as applicable for the test scenario, and there should not be any connectivity issues.
4. Required performance data (incl. the signalling and control data) as specified in the "Test requirements" clause below shall be measured and captured at the UE(s) and eNB/gNB side using logging/measurement tools.
5. Start the operation of each UE according to the traffic model.
6. Review the KPIs for each scenario in the traffic model to ensure that the KPIs are degraded due to overload. If there is no degradation of the KPI, increase the traffic in accordance with clause 4.1.1 until there is degradation of the KPI (until it becomes overloaded).
7. Make multiple emergency calls (100 times suggested) such as 911/112 to confirm if the call can be established.
8. Stop and save the test logs. Check the log to make sure that the test runs successfully and that no unexpected behavior such as unexpected call release is recorded. The logs shall be captured and kept for test result reference and measurements.

### Test requirements (expected results)

In addition to the common minimum set of configuration parameters (see clause 4.3), the following metrics and counters shall be captured and reported in the test report for performance assessment.

* Radio parameters such as RSRP, RSRQ
* Traffic Model and related KPIs
* KPIs mentioned in Table 8-11
* SUT load/capacity/performance related KPIs (e.g., CPU and MEMORY utilization) if any

Validate the successful procedures from the collected logs. Confirm the emergency call communication.

Table 8-11 Emergency Call Success Rate

|  | Emergency Call Success Rate |
| --- | --- |
| LTE |  |
| NR(NSA) |  |
| NR(SA) |  |

## ETWS (Earthquake and Tsunami Warning System)

### Test description and applicability

The purpose of this test is to verify that the ETWS notification is successful even if the eNB/gNB is overloaded. This test is valid with either LTE or 5G NSA and SA. The test procedure is to further increase the heavy traffic model to load the eNB/gNB, creating an overload condition where some behavior of the UE, such as data upload/download, fails. Verify that the ETWS Primary and Secondary notifications can communicate correctly under these conditions.

The ETWS performance of the SUT 3GPP stack components in all of the O-RU, O-DU, and O-CU sub-nodes shall be measured while all sub-nodes are under high load, where a maximum capacity load shall be applied in accordance with clause 4.1.1.

### Test setup and configuration

The test setup is a single cell scenario (i.e., isolated cell without any inter-cell interference - see clause 4.7) with multiple UEs placed under excellent radio conditions (see clause 4.6).

Since this test scenario requires a large amount of non-emergency traffics to overload the SUT, so it is recommended to run the test with equipment that emulates a large amount of non-emergency traffics.

**Test configuration**: The test configuration is not specified. The utilized test configuration (connection diagram between SUT and test equipment, parameters) shall be recorded in the test report.

**Laboratory setup**: The radio conditions experienced by the UE can be modified using a variable attenuator inserted between the antenna connectors (if available) of the O-RU and the UE, or appropriately emulated using a UE emulator. The test environment shall be setup to achieve excellent radio conditions (LTE RSRP (for LTE) or 5G SS-RSRP (for 5G NSA/SA) as defined in clause 4.6) for the UE, but the minimum coupling loss (see clause 4.6) shall not be exceeded.

### Test procedure

The test steps below are applicable for either LTE or 5G NSA and SA:

1. The test setup is configured according to the test configuration. The test configuration shall be recorded in the test report. The serving cell under test is activated and unloaded. All other cells are powered off.
2. The UEs are placed under excellent radio conditions (Cell centre close to radiated eNB/gNB Antenna) as defined by LTE RSRP (for LTE) or 5G SS-RSRP (for 5G NSA/SA) in clause 4.6.
3. The End-to-end setup shall be operational for LTE or 5G NSA/SA as applicable for the test scenario, and there should not be any connectivity issues.
4. Required performance data (incl. the signalling and control data) as specified in the "Test requirements" clause below shall be measured and captured at the UE(s) and eNB/gNB side using logging/measurement tools.
5. Start the operation of each UE according to the traffic model.
6. Review the KPIs for each scenario in the traffic model to ensure that the KPIs are degraded due to overload. If there is no degradation of the KPI, increase the traffic in accordance with clause 4.1.1 until there is degradation of the KPI (until it becomes overloaded).
7. Confirm the ETWS Primary and Secondary notifications communication multiple times (100 times suggested).
8. Stop and save the test logs. Check the log to make sure that the test runs successfully and that no unexpected behavior such as unexpected call release is recorded. The logs shall be captured and kept for test result reference and measurements.

### Test requirements (expected results)

In addition to the common minimum set of configuration parameters (see clause 4.3), the following metrics and counters shall be captured and reported in the test report for performance assessment.

* Radio parameters such as RSRP, RSRQ
* Traffic Model and related KPIs
* KPIs mentioned in Table 8-12
* SUT load/capacity/performance related KPIs (e.g., CPU and MEMORY utilization) if any

Validate the successful procedures from the collected logs. Make sure that the ETWS function works correctly and confirm that the ETWS notification is sent to the UE.

Table 8-12 ETWS Notification Success Rate

|  | ETWS Notification Success Rate | |
| --- | --- | --- |
| Primary | Secondary |
| LTE |  |  |
| NR |  |  |

## MPS call

### 8.9.1 Test description and applicability

The purpose of this test is to ensure that Multimedia Priority Service (MPS) calls are preferentially established even if the eNB/gNB is overloaded. This test is valid with either LTE or 5G NSA and SA. The test procedure is to apply heavy traffic loading the eNB/gNB, creating an overload condition where some behavior of the non-MPS-subscribed UEs fail. Verify that MPS-subscribed UEs can obtain connectivity and establish priority Voice or Video IMS calls (via \*272 in NA) in such a situation.

The MPS Call performance of the SUT 3GPP stack components in all of the O-RU, O-DU, and O-CU sub-nodes shall be measured while all sub-nodes are under high load, where a maximum capacity load shall be applied in accordance with clause 4.1.1.

### 8.9.2 Test setup and configuration

The test setup is a single cell scenario (i.e., isolated cell without any inter-cell interference - see clause 4.7) with multiple UEs placed under excellent radio conditions (see clause 4.6).

This test scenario requires a large amount of non-MPS traffic to overload the SUT, so it is recommended to run the test with equipment that emulates a large amount of ordinary traffic.

**Test configuration**: The test configuration is not specified. The utilized test configuration (connection diagram between SUT and test equipment, parameters) shall be recorded in the test report.

**Laboratory setup**: The radio conditions experienced by the UE can be modified using a variable attenuator inserted between the antenna connectors (if available) of the O-RU and the UE, or appropriately emulated using a UE emulator. The test environment shall be setup to achieve excellent radio conditions (LTE RSRP (for LTE) or 5G SS-RSRP (for 5G NSA/SA) as defined in clause 4.6) for the UEs, but the minimum coupling loss (see clause 4.6) shall not be exceeded. Designated MPS-subscribed UEs shall be configured with AccessIdentity=1 (5GC), or with AC=14 (EPC)

### 8.9.3 Test procedure

The test steps below are applicable for either LTE or 5G NSA and SA:

1. The test setup is configured according to the test configuration. The test configuration shall be recorded in the test report. The serving cell under test is activated and unloaded. All other cells are powered off.
2. The UEs are placed under excellent radio conditions (Cell centre close to radiated eNB/gNB Antenna) as defined by LTE RSRP (for LTE) or 5G SS-RSRP (for 5G NSA/SA) in clause 4.6.
3. The End-to-end setup shall be operational for LTE or 5G NSA/SA as applicable for the test scenario, and there should not be any connectivity issues.
4. Required performance data (incl. the signalling and control data) as specified in the "Test requirements" clause below shall be measured and captured at the UE(s) and eNB/gNB side using logging/measurement tools.
5. Start the operation of each ordinary UE according to the traffic model.
6. Review the KPIs for each scenario in the traffic model to ensure that the KPIs are degraded due to overload. If there is no degradation of the KPI, increase the traffic in accordance with clause 4.1.1 until there is degradation of the KPI (until it becomes overloaded).
7. Activate an ordinary Voice UE. Make and release repeated voice calls (100 times suggested). Determine from logs whether the ordinary call is established.
8. Activate an MPS-subscribed UE. Make and release repeated MPS voice calls (100 times suggested). Record from logs the number of times the MPS call is correctly established, showing RRC establishment cause 'mps-PriorityAcess' (NR), or RRC establishment cause 'highPriorityAccess (E-UTRA).'
9. Stop and save the test logs. Check the log to make sure that the test runs successfully and that no unexpected behavior such as unexpected call release is recorded. The logs shall be captured and kept for test result reference and measurements.

Repeat the above Test, omitting Step 7, with Step8 utilizing N MPS-subscribed UEs making Voice calls. The value N shall be gradually increased to determine an upper limit on the number of supported MPS calls, appropriate for the SUT

Repeat the above Test with Step 7 utilizing an ordinary UE making a Video call, and Step 8 utilizing 1 MPS-subscribed UE making a Video call.

Repeat the above Test, omitting Step 7, with Step 8 utilizing N MPS-subscribed UEs making Video calls. The value N shall be gradually increased to determine an upper limit on the number of supported MPS calls, appropriate for the SUT.

### 8.9.4 Test requirements (expected results)

In addition to the common minimum set of configuration parameters (see clause 4.3), the following metrics and counters shall be captured and reported in the test report for performance assessment.

* Radio parameters such as RSRP, RSRQ
* Traffic Model and related KPIs
* KPIs mentioned in Figure 8-x
* SUT load/capacity/performance related KPIs (e.g., CPU and MEMORY utilization) if any

Validate the successful procedures from the collected logs. Confirm the MPS call communication.

Table 8-13 MPS Voice Call Results

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
|  | MPS Voice Call Results | | | |
| 1 Ordinary UE Success Rate | 1 MPS UE Success Rate | N Value | N MPS UE Success Rate |
| LTE (E-UTRA/EPC) |  |  |  |  |
| 5G SA (NR/5GC) |  |  |  |  |
| 5G NSA (E-UTRA/5GC) |  |  |  |  |

Table 8-14 MPS Video Call Results

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
|  | MPS Video Call Results | | | |
| 1 Ordinary UE Success Rate | 1 MPS UE Success Rate | N Value | N MPS UE Success Rate |
| LTE (E-UTRA/EPC) |  |  |  |  |
| 5G SA (NR/5GC) |  |  |  |  |
| 5G NSA (E-UTRA/5GC) |  |  |  |  |

# RIC-enabled end-to-end use case test

## RIC-enabled end-to-end use case test introduction

This clause describes tests for evaluating and assessing the **performance of a radio access network with Non-RT RIC and Near-RT RIC optimisations from a network end-to-end perspective**. The focus of the testing is either on the end-user performance with user specific optimisations by the Non-RT RIC and Near-RT RIC or on system level performance with system specific optimisations.

The test setup and test methodology applicable to all the RIC-enabled end-to-end use case tests is described in clause 9.1, followed by the various test cases including their test description and procedures for each use case. At the beginning of each use case clause, system level, cell level and UE level test configurations and KPIs involved in defining the test scenario and measuring the performance related to the use case testing are discussed. Following it, exact parameter values and KPIs to be measured are defined on a per test case basis.

The following RIC-enabled use case tests are defined in this clause:

* Traffic steering with connected mode mobility control
* Network energy saving carrier and cell switch off/on using Non-RT RIC

Please see below summary table of test cases and applicable technology.

Table 9-1 RIC-Enabled end-to-end use case tests summary

|  | | | Applicable technology | | |
| --- | --- | --- | --- | --- | --- |
| Test case | | Functional group | LTE | NSA | SA |
| TEST ID | RIC-Enabled End-to-end Use Case |  |  |  |  |
| 9.1 | Traffic steering with connected mode mobility control | Traffic Steering Use Case | N/A | N/A | Y |
| 9.3 | Network Energy Saving with Carrier and Cell switch off/on using Non-RT RIC | Network Energy Saving | N/A | N/A | Y |

## Test Setup and Methodology

![](../assets/images/afd91dd1cb45.emf.png)

Figure 9-1 Illustration of test setup for RIC enabled use case E2E testing

The purpose of these tests is to validate the O-RAN system's E2E performance for all the various RIC-enabled use cases in different network deployment scenarios [36-38]. To achieve this, multiple sets of **test** **configuration** parameters are defined for system level, cell level and UE level configurations. In keeping with the spirit of the end-to-end test focus on the O-RAN system as SUT, the detailed ORAN protocol conformance on the various O-RAN internal interfaces as specified in [36-38] will not be verified, and instead, system-level performance according to the objectives of the use case is the primary test focus.

There are no **passing criteria** defined for these performance-focused tests. This is due to the diversity of vendor-specific RRM and MAC layer scheduler implementations in the O-RAN system which also depend on specific network deployment scenarios, making it difficult to specify minimum performance requirements.

The performance of the system with Non-RT RIC and Near-RT optimisations shall be benchmarked through **analysis** of KPI measurement results. The performance gain with Non-RT RIC and Near-RT optimisation is evaluated by **comparing** the test result with RIC optimisation enabled versus that with it disabled.

## Traffic Steering Use Case Test

### 9.2.0 Traffic steering use case test introduction

The purpose of this test is to validate the O-RAN system's E2E functionalities and evaluate system performance for the Traffic Steering (TS) use case. The O-RAN traffic steering use case specification can be found in clause 3.5 of [36], with the use case requirements from a non-RT RIC standpoint specified in clause 3.1 of [37] and near-RT RIC standpoint in clause 3.1 of [38].

The traffic steering optimization can be achieved through connected mode mobility control or idle mode mobility control through the Near-RT RIC [38], clause 3.1. In this version of the test specification, only the connected mode mobility control is addressed while idle mode mobility control is FFS.

All the elements in the network, including the O-RAN system, 5G core and the application servers shall have the ability to capture traces to validate the successful execution of the test cases. The end user device shall have the capability to capture traces/packets to calculate the KPIs related to the RIC enabled use cases.

### Test Configuration

#### System Level Configuration

The following system configuration parameters shall be configured and recorded in the test report:

* Node configuration: mapping of cells to O-RUs, mapping of O-RUs to O-DUs and O-DUs to O-CU-CP/UP, and configuration of basic RAN parameters over O1.
* Traffic Steering mode: TS mode 0, TS mode 1 or TS mode 2 [38]
* KPI optimisation policies: e.g., bit rate guarantee, QoS guarantee, maximum cell throughput and maximum system throughput etc.

#### Cell Level Configuration

![](../assets/images/86476de5092c.png)![](../assets/images/86476de5092c.png)![](../assets/images/86476de5092c.png)![](../assets/images/86476de5092c.png)![](../assets/images/86476de5092c.png)

...

...

...

...

![](../assets/images/2ce87b85e448.png)![](../assets/images/2ce87b85e448.png)![](../assets/images/2ce87b85e448.png)![](../assets/images/2ce87b85e448.png)![](../assets/images/2ce87b85e448.png)![](../assets/images/2ce87b85e448.png)![](../assets/images/2ce87b85e448.png)![](../assets/images/2ce87b85e448.png)![](../assets/images/2ce87b85e448.png)

Band 1

Band 2

Band 3

![](../assets/images/86476de5092c.png)![](../assets/images/86476de5092c.png)

Band 4

![](../assets/images/86476de5092c.png)

**Figure 9-2: Illustration of cell topologies**

In SA, the test setup consists of multiple 5G cells, each one associated with a certain O-DU and O-CU connected to a 5G core network. To evaluate system performance, the example parameters listed in Table 9-2 can be configured for different cell deployment scenarios. The network can have macro cells as a coverage layer and small cells at different locations for capacity boosting. Each cell site can provide service access on multiple frequency bands.

Table 9-2 Example cell topology configurations

| Item No. | Categories | Parameters |
| --- | --- | --- |
| 1 | Macro Cell deployment pattern | Inter-site distance  Cell radius  Cell location  Frequency bands |
| 2 | Small Cell deployment pattern | Inter-site distance  Cell location  Cell radius  Frequency bands |
| 3 | Inter cell interference | clause 3.7 |
| 5 | Deployment Environment | Urban Macro  Urban Micro  Rural Macro  Indoor |
| 6 | Antenna | Tx power, antenna height, tilt, azimuth, radiation pattern and number of antenna elements |
| 7 | Network configurations | Carrier frequency  Duplexing mode  Bandwidth  Numerology |

#### UE Level Configuration

The test environment shall have multiple UEs, with active traffic, moving across multiple cells. Locations where the radio conditions are excellent, good, fair, and poor need to be configured for each cell. UEs shall be placed into these different radio conditions.

The UEs may be distributed in the geographical distribution scenarios as defined below (see Figure 6-3):

1. **uniform distribution**: UEs are placed with a spatial separation randomly selected following a uniform probability distribution.
2. **non-uniform distribution**: the UEs are placed with a spatial separation randomly selected following a certain distribution such that the UEs tend to be grouped in clusters. UE density at the small cell hotspot area may be higher than UE density in wider macro cell coverage area. The UEs in the cluster experience similar radio conditions.

As illustrated in Figure 9-4, UE mobility trajectory may be a predefined **deterministic path** or may be based on **random walk** model following certain geographical distribution profiles (uniform or non-uniform distribution) defined above. UEs of different **speed categories** can be configured in the test with the speed profile as defined in clause 3.5. UE mobility speed may increase and decrease from time to time around the typical value specified for each speed category within an interval defined by the minimum and maximum speed configuration. The location distribution, mobility trajectory, mobility class configurations shall be recorded in the test report along with the KPI measurement results defined in clause 9.2.2.1 for a group of UEs of interest that is monitored for performance evaluation.

![](../assets/images/86476de5092c.png)![](../assets/images/86476de5092c.png)![](../assets/images/f4a65eeb26be.png)![](../assets/images/f4a65eeb26be.png)![](../assets/images/f4a65eeb26be.png)![](../assets/images/f4a65eeb26be.png)![](../assets/images/f4a65eeb26be.png)![](../assets/images/f4a65eeb26be.png)![](../assets/images/f4a65eeb26be.png)![](../assets/images/86476de5092c.png)![](../assets/images/86476de5092c.png)![](../assets/images/822ed3a70cd4.png)![](../assets/images/822ed3a70cd4.png)![](../assets/images/822ed3a70cd4.png)![](../assets/images/822ed3a70cd4.png)![](../assets/images/822ed3a70cd4.png)![](../assets/images/822ed3a70cd4.png)

1. (b)

**Figure 9-3: Illustration of UE distribution pattern (a) uniform (b) non-uniform**

![](../assets/images/86476de5092c.png)![](../assets/images/86476de5092c.png)![](../assets/images/3dd554ead1b7.png)![](../assets/images/86476de5092c.png)![](../assets/images/86476de5092c.png)![](../assets/images/35a27612bbba.png)![](../assets/images/8892dbe009e1.png)

1. (b)

**Figure 9-4: Illustration of UE trajectory pattern (a) deterministic route (b) random walk**

The following service-related parameters may be configured on a per UE per QoS flow basis as illustrated by the examples shown in Table 9-3 for the group of UEs of interest that is monitored for performance evaluation. Another group of UEs may be configured to apply background traffic load to each cell to create low, medium, and high load conditions for different service types as required. The traffic load condition for both groups may vary with time around the typical value within an interval defined by the minimum and maximum load variation configuration. The service-related configurations including cell load conditions shall be recorded in the test report.

* User traffic type
* Traffic target load
* 5QI
* S-NSSAI

**Table 9-3: Example of UE service configuration for three UEs [37]**

| UE Identifier | UE Id=1, S-NSSAI =1 | UE Id=2, S-NSSAI =2 | UE Id=3, S-NSSAI =3 |
| --- | --- | --- | --- |
| User Traffic | 5QI=1: Voice  5QI=8: FTP, Email | 5QI=1: Voice  5QI=8: Email  5QI=83: Advanced Driving | 5QI=1: Voice  5QI=8: Progressive Video  5QI=8: File sharing |

The test should be repeated using various mobility and traffic conditions to sufficiently evaluate the E2E system performance with Non-RT RIC and Near-RT RIC optimization based on AI/ML technology, compensating for performance uncertainties of AI/ML models.

#### Expected Results and KPIs

The values of the system level KPIs and end user KPIs for each test run both with and without Traffic-Steering enabled shall be included in the test report along with the test configuration parameters as defined clause 9.2.2 to provide a comprehensive view of the test setup. The test results shall be recorded at a constant time interval that is short enough to identify features of interest in the test analysis where the value of the time interval shall be set appropriately for the UE mobility class configured.

There are no passing criteriadefined for this test due to the diversity of vendor-specific RRM and MAC layer scheduler implementations in the O-RAN system. The performance of the system with Non-RT RIC and Near-RT optimisations shall be benchmarked through analysis of KPI measurement results. The performance gain with Non-RT RIC and Near-RT optimisation is evaluated by comparing the test result with RIC optimisation enabled versus that with it disabled.

The following statistical KPI measurements should be included in the test report with time stamps:

Cell level KPIs (for cells in performance monitoring group):

* Distribution/average of DL total PRB usage per cell
* Distribution/average of UL total PRB usage per cell
* Distribution/average of DL throughput in gNB per cell per QoS class
* Distribution/average of UL throughput in gNB per cell per QoS class
* Distribution/average of DL delay between NG-RAN and UE per cell per QoS class
* Distribution/average of UL delay between NG-RAN and UE per cell per QoS class
* Distribution/average of delay DL air-interface per cell per QoS class

End user KPIs (for UEs in performance monitoring group):

* Distribution/average of DL Total PRB Usage per UE
* Distribution/average of UL Total PRB Usage per UE
* Distribution/average of DL UE throughput in gNB per UE per QoS class
* Distribution/average of UL UE throughput in gNB per UE per QoS class
* Distribution/average of DL delay between NG-RAN and UE per UE per QoS class
* Distribution/average of UL delay between NG-RAN and UE per UE per QoS class
* Distribution/average of delay DL air-interface per UE per QoS class
* Distribution/average of RSRP, RSRQ, PDSCH SINR per UE
* Wideband CQI and MCS distribution in PDSCH per UE
* Wideband CQI and MCS distribution in PUSCH per UE

Optionally, the following instantaneous KPI measurements may be attached to the report (as appropriate) along with timestamps and UE geolocation information to provide further details in the test analysis.

Cell level KPIs (for cells in performance monitoring group):

* DL total PRB usage per cell
* UL total PRB usage per cell
* DL throughput in gNB per cell per QoS class
* UL throughput in gNB per cell per QoS class
* DL delay between NG-RAN and UE per cell per QoS class
* UL delay between NG-RAN and UE per cell per QoS class
* Delay DL air-interface per cell per QoS class

End user KPIs (for Ues in performance monitoring group):

* DL Total PRB Usage per UE
* UL Total PRB Usage per UE
* DL UE throughput in gNB per UE per QoS class (IP)
* UL UE throughput in gNB per UE per QoS class (IP)
* DL delay between NG-RAN and UE per UE per QoS class
* UL delay between NG-RAN and UE per UE per QoS class
* Delay DL air-interface per UE per QoS class
* RSRP, RSRQ, PDSCH SINR per UE

The corresponding definitions of the KPIs above can be found in 3GPP TS 28.552 [35], clause 5.1.

KPIs related to service Quality-of-Experience (QoE):

* Call drop rate
* Relative Jitter for voice traffic
* DL RTP Error Rate for voice traffic
* UL RTP Error Rate for voice traffic
* MOS value for voice traffic
* MOS value for video traffic
* FTP download/upload throughput
* Average DL/UL IP throughput
* Average DL/UL IP latency

### RIC-TS1 - Traffic Steering (Connected Mode Mobility) Test Case

#### Test Description and Applicability

The purpose of this test is to validate the O-RAN system's E2E performance for the Traffic Steering use case in a minimum viable network deployment scenario with two macro cells operating at low-band and mid-band respectively. In the test 3 groups of UEs with different mobility classes (high, low, and stationary) and running different services are configured. UEs in the first group run Voice (5QI=1) service and UEs in the second and third UE groups run MBB (5QI=9) service. All UEs stay in RRC connected state. The Non-RT and Near RT RIC are informed of the requirements and characteristics of the services as well as the mobility class of each UE. The RIC entities aim to steer the traffic to the most appropriate cells through Connected Mode mobility control to the guarantee QoS requirements for the service of each UE, maximize service continuity, and meanwhile maximize the overall system throughput for MBB service.

The test applies to SA (Standalone) mode operation only in this version of the test specification.

#### System Level Configuration

The following system configuration parameters should be configured and recorded in the test report:

**Node Configuration (O-RU, O-DU, and O-CU-CP/UP)**

The node configuration of the O-RAN system (O-RU, O-DU and O-CU-CP/O-CU-UP) is not specified. The utilized test configuration (parameters) shall be recorded in the test report.

**Traffic Steering Mode**

Optimization in Near-RT RIC can be done with A1 policy guidance from Non-RT RIC (TS Mode 2) or without the guidance (TS mode 1) [38]. The performance gain with TS Mode 1 or 2 optimization can be compared against TS Mode 0 where Non-RT RIC and Near-RT RIC assisted optimisation is disabled. The exact TS Mode configured for the test is not specified. The utilized configuration (parameters) shall be recorded in the test report.

**KPI Optimization Policy**

Guarantee QoS requirement for the service of each UE as defined in [39], Table 5.7.4-1, maximize service continuity,

meanwhile maximize the system throughput and service experience for MBB (5QI=9) service.

#### Cell Level Configuration

![Chart  Description automatically generated](../assets/images/31a7bb6d3143.png)

Cell B

Cell A

**Figure 9-5: Illustration of cell topologies**

As illustrated in Figure 9-5, the UEs are in an area covered by two cells on different frequency bands identified as Cell A and Cell B respectively. Cell B is the macro cell operating at low band with the best coverage. Cell A is macro cell operating at mid-band providing higher capacity than Cell B but less coverage. The configuration parameters for each cell are shown in Table 9-4.

Table 9-4 Cell configuration profile

| Item No. | Categories | Parameters | Value |
| --- | --- | --- | --- |
| 1 | Macro Cell deployment pattern | Inter-site distance | NA |
| Cell radius | Cell A: typical urban macro cell range lower than Cell B, e.g., 2.5km  Cell B: typical urban macro cell range higher than Cell A, e.g., 5km |
| Cell position | As shown in Figure 10-5 |
| Number of sectors per cell | 3 |
| Sector start/stop angle (degree) | Sector 1: e.g., 0-119  Sector 2: e.g., 120-239  Sector 3: e.g., 239-359 |
| Frequency bands | Cell A: e.g., mid band, n77  Cell B: e.g., low band, n8 |
| 2 | Small Cell deployment pattern | Inter-site distance | NA |
| Cell radius | NA |
| Cell position | NA |
| Number of sectors per cell | NA |
| Sector start/stop angle (degree) | NA |
| Frequency bands | NA |
| 3 | Inter cell interference | Clause 3.7 | Apply inter cell interference according to Clause 3.7 |
| 5 | Deployment Environment | Urban Macro | Cell A, Cell B |
| Urban Micro | NA |
| Rural Macro | NA |
| Indoor | NA |
| 6 | Antenna | Tx power, antenna height, tilt, azimuth, radiation pattern and number of antenna elements | Typical configurations meeting the cell sectors and cell radius requirements defined above.  MIMO antenna configurations:  Cell A: e.g., 4TX, 4RX  Cell B: e.g., 2TX, 2RX |
| 7 | Network configurations | Carrier frequency | Not specified |
| Bandwidth | Cell A: e.g., 100 MHz  Cell B: e.g., 20 MHz |
| Numerology | Cell A: e.g.,1  Cell B: e.g.,1 |

#### UE Level Configuration

In this test case there are 3 groups of UEs defined. **Group 1** and **2** contain 10 UEs each that move within the area covered by the two frequency bands in a random walk pattern following a uniform geographical distribution as discussed in clause 9.2.2.3. The mobility class for each group of UEs is defined in Table 9-5. Service-related parameters are configured on a per UE per QoS flow basis for the Group 1 and 2 UEs as defined in Table 9-5. **Group 3** contains 10 stationary UEs located at the position shown in Figure 9-6 applying background traffic load to each cell. The number of stationary UEs placed in each cell and the MBB traffic throughput of each UE is configured to create the low, medium, and high load conditions defined in Table 9-6. The stationary UEs stay on the cells defined without handover to other cells to sustain the defined load conditions.

![Chart  Description automatically generated](../assets/images/ff68cd77f53a.png)

Cell B

Cell A

**Figure 9-6: Illustration of stationary UE positions**

Table 9-5 UE configuration profile

| UE Identifier | Group 1, UE Id=1-10, S-NSSAI=1 | Group 2, UE Id=21-30, S-NSSAI=1 | Group 3, UE Id=41-50, S-NSSAI=1 |
| --- | --- | --- | --- |
| User Traffic | 5QI=1: Voice | 5QI=9: Video, FTP | 5QI=9: FTP |
| Mobility Class | 50% Low mobility  50% High mobility | 50% Low mobility  50% High mobility | Stationary |
| Frequency Band | low band and mid-band, e.g., n8 and n77 | low band and mid-band, e.g., n8 and n77 | low band and mid-band, e.g., n8 and n77 |
| Bandwidth | DL:20MHz, 100MHz  UL:20MHz, 100MHz | DL:20MHz, 100MHz  UL:20MHz, 100MHz | DL:20MHz, 100MHz  UL:20MHz, 100MHz |
| Max. MIMO Layers | DL:4, UL:2 | DL:4, UL:2 | DL:4, UL:2 |

Table 9-6 Stationary UE service configuration profile

| Cell | A | B |
| --- | --- | --- |
| No. of stationary UEs | 4 | 6 |
| Traffic Load | Medium, e.g., 50% | High, e.g., 90% |

#### Initial Condition

1. The End-to-end setup shall be 5G SA, operational, and there shall be no connectivity issues.
2. The test setup is configured according to the test configuration.

#### Test procedure

1. Disable traffic steering optimization by Near-RT RIC and Non-RT RIC (TS Mode 0 [38]).
2. Power on the end user devices and ensure they register with the 5G core for data, video, or voice service over SA by connecting over the O-RAN (O-RU, O-DU and O-CU-CP/O-CU-UP).
3. Once the registration is complete, the end user devices establish PDU sessions with the 5G core.
4. Once the PDU sessions have been setup, the end user devices with voice or video traffic register with the IMS core to support Voice-over-NR or Video-over-NR service.
5. Take appropriate action to enable the traffic according to the traffic configuration profile as discussed in clause 9.2.3.4.
6. Once the traffic has started, move the devices according to the mobility patterns and mobility classes configured (clause 9.2.3.4).
7. Observe the policies and commands from RIC over E2, O1 and A1 interfaces, capture traces over the interfaces (as required) for validating successful test execution.
8. Keep the test running for 10 minutes, measure and record the KPIs as defined in clause 9.2.3.7.
9. Take appropriate action to reset the network and traffic conditions to its initial state at before Step 3.
10. Enable the traffic steering optimisation from Near-RT and Non-RT RIC (TS Mode 1 or TS Mode 2 [38]), repeat Step 4-10.
11. Analyse the KPI measurement results. Evaluate the performance gain with Non-RT RIC and Near-RT optimisation enabled versus that with it disabled.

#### Expected Result

The exact optimization behaviors from Non-RT RIC and Near-RT RIC are not specified due to the diversity of vendor-specific RRM and MAC layer scheduler implementations in the O-RAN system making it impossible to specify a standardized behaviour pattern. However, behaviors similar to the example below shall be observed from the trace information captured from the emulated UEs.

1. For UEs in Group 1, voice traffic (5QI=1) should preferably reside on Cell B to minimize inter-cell handovers for service continuity.
2. For UEs in Group 2, the MBB traffic with (5QI=9) should preferably reside on Cell A if the radio and cell load condition on Cell A gives higher throughput and user experience for MBB service than Cell B.

Serving cell and frequency band change for each UE in UE Group 1 and 2 can be observed from the trace information captured from the emulated UEs in order to confirm the Traffic Steering optimization behaviors from the Non-RT RIC and Near-RT RIC as discussed above.

The performance of the system with Non-RT RIC and Near-RT optimisation shall be benchmarked through analysis of KPI measurement results as discussed in clause 9.2.2.4. The performance gain with Non-RT RIC and Near-RT optimisation is evaluated by comparing the test result with RIC optimisation enabled versus that with it is disabled. The number of UEs meeting the QoS requirement for voice service (5QI=1) and MBB service (5QI=9), count of service drops, and the total system throughput and service experience for MBB service with Non-RT RIC and Near-RT RIC optimisation in Step 11 (clause 9.2.3.6) shall outperform the case without the optimisation in Step 1-8 (clause 9.2.3.6).

The following statistical KPI measurements should be included in the test report:

System level KPIs:

* Number of UEs meeting the QoS requirement for voices service (5QI=1)
* Number of UEs meeting the QoS requirement for MBB service (5QI=9)
* Average system DL PDCP throughput
* Average system UL PDCP throughput

Cell level KPIs (for cells in performance monitoring group) [35]:

* Average DL throughput in gNB per cell
* Average UL throughput in gNB per cell
* Average DL delay between NG-RAN and UE per cell
* Average UL delay between NG-RAN and UE per cell
* DL Cell PDCP SDU Data Volume
* UL Cell PDCP SDU Data Volume

End user KPIs (for UEs in performance monitoring group) [35]:

* Average DL UE throughput in gNB per UE
* Average UL UE throughput in gNB per UE
* Average DL delay between NG-RAN and UE per UE
* Average UL delay between NG-RAN and UE per UE

KPIs related to user experience for Voice service:

* MOS Score - Mean Opinion Score for the voice call. This needs to be measured on both ends of the Voice call - mobile originated and mobile terminated.
* Mute Rate % - This is the percentage of calls which were muted in both directions (calls with RTP loss of > 3-4s in both directions are considered muted call). This needs to be measured on both ends of the Voice call - mobile originated and mobile terminated and counted only once per call.
* One Way Calls % - This is the percentage of calls which were muted in any one direction (calls with RTP loss of > 3-4s in one direction only are considered one-way calls). This needs to be monitored on both ends of the Voice call - mobile originated and mobile terminated and counted only once per call.
* RTP Packet Loss % - Number of RTP packets which were dropped/lost in uplink/downlink direction as a percentage of total packets. This needs to be measured on both ends of the Voice call - mobile originated and mobile terminated.

KPIs related to user experience for Video service:

* Video start time or Time to load first video frame - Time from when the video was selected to play to when the video starts playing in seconds.
* Video MOS score - MOS score for the video streaming session as defined by ITU P1203.3.

KPIs related to user experience for FTP service:

* Download throughput - This is the average application layer throughput to download the file in kbps.
* Upload throughput - This is the average application layer throughput to upload the file in kbps.
* Time taken to Download file - This is the time taken to download the file in seconds.
* Time taken to Upload file - This is the time taken to upload the file in seconds.

## Network Energy Saving with Carrier and Cell switch off/on using Non-RT RIC

### 9.3.1 Functional test

#### 9.3.1.1 Test Description and Applicability

The purpose of this test is E2E functional validation of O-RAN system (see Clause 9.3.1.2) to support Network Energy Saving feature/use case with Carrier and cell switch off/on [36][46] using a minimum viable network deployment scenario with two overlapping cells/carriers. The E2E functional validation focuses on messaging between E2 nodes and SMO/Non-RT RIC utilizing the O1/M-plane interface and switching off/on behavior of the cell(s) under test. The cells/carriers operate as overlay coverage cell (low frequency band) and capacity cell (high frequency band) respectively. The Figure 9-7 shows two cell topology options, one with two macro cells and another with macro and small cells. When the traffic load is low, energy saving can be achieved by switching off the entire capacity cell without impairing the network experiences. The switch off/on decision is made by the Non-RT RIC (deployment option 1) [36][46].

For the sake of simplicity, the AI/ML model training phase [36][46] is not considered and may be added in a later version of the specification.

|  |  |
| --- | --- |
| ![](../assets/images/23fb89c4bd8d.emf.png) | ![](../assets/images/32eb09f9a4e2.emf.png) |

Figure 9-7: Minimum viable network deployment scenarios for functional validation of Network energy saving with Carrier and cell switch off/on using Non-RT RIC.

#### 9.3.1.2 Test setup and configuration

The test setup is shown in Figure 9-8. The System under test (SUT) is comprised of one or multiple O-RU(s), E2 nodes (such as O-DU, O-CU-CP, O-CU-UP), Non-RT RIC, SMO and Energy saving rApp [10][36]. E2 nodes are connected via O1 interface to SMO/Non-RT RIC. In case of hybrid mode, O-RU is connected via Open Fronthaul M-plane interface to SMO directly. The specific configuration and deployment are not defined and unified, but it shall be recorded in the test report. The energy consumption/efficiency can be affected by the specific configuration and deployment. Note that the test results are valid only for this specific configuration and deployment.

The real or emulated UEs generate the traffic load to trigger the carrier/cell switch off/on decision. The 5G NR Standalone Architecture (Option 2) is considered in this test case with real or emulated 5G Core and Application Server. Later version of the specification may add also support of other architectures (see Clause 4.0).

The Non-RT RIC/rApp should be configured to trigger the cell and carrier switch off/on according to used traffic model. The E2E functional validation focuses on messaging between E2 nodes and SMO/Non-RT RIC utilizing the O1/M-plane interface and switching off/on behavior of the cell(s) under test.

![](../assets/images/83a96dd4d866.emf.png)

**Figure 9-8: Test setup for E2E functional validation of Network energy saving with Carrier and cell switch off/on using Non-RT RIC (deployment option 1 in [36][46])**

As illustrated in Figure 9-7, stationary test UEs are distributed and attached in coverage or capacity cells to generate the required traffic load in downlink and uplink directions. The test UEs of group 2 are in coverage of both coverage and capacity cells while the test UEs of group 1 are only in coverage of coverage cell. The test UEs of group 1 are attached/served in coverage cell while the test UEs of group 2 are attached/served in capacity cell. If the capacity cell is to be switched off, the test UEs of group 2 (that are still attached/served by capacity cell) shall be offloaded to coverage cell.

#### 9.3.1.3 Test Procedure

1. The test setup is operational and configured according to the Clause 9.3.1.2. The test configuration shall be recorded in the test report. Coverage and capacity cells are activated and operational.
2. A total of four stationary UEs are power on and distributed as follows: 2 UEs in group1 (in coverage of coverage cell and attached in coverage cell) and 2 UEs in group 2 (in coverage of both coverage and capacity cells and attached in capacity cell) - see Figure 9-7.
3. The deployment and configuration (parameters) of coverage and capacity cells and distribution and position of test UEs are not changed during the whole test.
4. Network energy saving feature with Carrier and cell switch off/on energy is enabled (ESfeature ON).
5. The test UEs start downlink and uplink full-buffer data transmission (UDP or TCP) to achieve the maximum cell throughput (100%) in capacity cell (UEs of group 2) and 20% of the maximum cell throughput in coverage cell (UEs of group 1) in both downlink and uplink directions. The data transmission of UEs of group 1 remains constant during the whole test.
6. Start tracing the messages over O1/M-plane interface and collecting the other required data/KPIs specified in Clause 9.3.1.4. The traces can be captured over the interfaces or collected from logfiles at nodes for validating successful execution.
7. The downlink and uplink data transmission of UEs of group 2 is reduced to trigger the carrier/cell switch off/on decision when the capacity cell is switched off and UEs of group 2 are handover to coverage cell. Now, all test UEs are served by coverage cell.
8. The downlink and uplink data transmission of UEs of group 2 is stopped.
9. The downlink and uplink data transmission of UEs of group 2 is increased to trigger the carrier/cell switch off/on decision when the capacity cell is switched on and UEs of group 2 are handover to capacity cell. Now, the UEs of group 1 are served by coverage cell while the UEs of group 1 are served by capacity cell.
10. Stop all tracing and logging of messages and data.

#### 9.3.1.4 Test requirements (Expected Results)

The exact optimization behavior of Non-RT RIC/rApp is not specified due to the diversity of vendor specific energy saving implementations making it impossible to specify a standardized behavior pattern. However, the behavior like the example below shall be observed during the test [36][46]:

1. As the load in capacity cell is decreasing, the carrier/cell switch off/on decision is made, and appropriate operations to switch off capacity cell need to be taken in SMO/Non-RT RIC/rApp, E2 Node(s) and O-RU(s). If the capacity cell is to be switched off, the test UEs of group 2 shall be handover to the coverage cell. No UE drop is observed during these steps. The SMO/Non-RT RIC/rApp is notified by E2 Node(s) and O-RU(s) that the capacity cell switch off has been completed.
2. As the load in coverage cell is increasing, the carrier/cell switch off/on decision is made, and appropriate operations to switch on capacity cell need to be taken in SMO/Non-RT RIC/rApp, E2 Node(s) and O-RU(s). If the capacity cell is to be switched on, the test UEs of group 2 shall be handover to the capacity cell. No UE drop is observed during these steps. The SMO/Non-RT RIC/rApp is notified by E2 Node(s) and O-RU(s) that the capacity cell switch on has been completed.

Messages over O1 and M-plane interfaces between SMO/Non-RT RIC and O-CU-CP/O-CU-UP/O-DU/O-RU should be observed and recorded.

### 9.3.2 Performance test

#### 9.3.2.1 Test Description and Applicability

The purpose of this test is to provide an indication of E2E performance of O-RAN system supporting Network Energy Saving feature/use case with Carrier and cell switch off/on [36][46] using a minimum viable network deployment scenario with two overlapping cells/carriers. This test provides indicative energy efficiency gain of Carrier and cell switch off/on feature by measuring the energy consumption of O-RAN system with the feature on and off using a traffic model. The cells/carriers operate as overlay coverage cell (low frequency band) and capacity cell (high frequency band) respectively. The Figure 9-7 shows two cell topology options, one with two macro cells and another with macro and small cells. When the traffic load is low, energy saving can be achieved by switching off the entire capacity cell without impairing the network experiences. The switch off/on decision is made by the Non-RT RIC (deployment option 1) [36][46].

For the sake of simplicity, the AI/ML model training phase [36][46] is not considered and may be added in a later version of the specification.

#### 9.3.2.2 Test setup and configuration

The test setup is shown in Figure 9-9. The System under test (SUT) is comprised of one or multiple O-RU(s), E2 nodes (such as O-DU, O-CU-CP, O-CU-UP), Non-RT RIC, SMO and Energy saving rApp [10][36]. E2 nodes are connected via O1 interface to SMO/Non-RT RIC. In case of hybrid mode, O-RU is connected via Open Fronthaul M-plane interface to SMO directly. The specific configuration and deployment are not defined and unified, but it shall be recorded in the test report. The energy consumption/efficiency can be affected by the specific configuration and deployment. Note that the test results are valid only for this specific configuration and deployment.

The real or emulated UEs generate the traffic load to trigger the carrier/cell switch off/on decision. The 5G Standalone Architecture (Option 2) is considered in this test case with real or emulated 5G Core and Application Server. Later version of this specification may add also support of other architectures (see Clause 4.0).

The Non-RT RIC/rApp should be configured to trigger the cell and carrier switch off/on according to used traffic model.

![](../assets/images/7c6079d6111f.emf.png)

Figure 9-9: Test setup for E2E performance testing of Network energy saving with Carrier and cell switch off/on using Non-RT RIC (deployment option 1 in [36][46]) assuming typical deployment of O-RU as PNF and O-DU, O-CU-CP/O-CU-UP as VNF/CNF in O-Cloud.

As illustrated in Figure 9-7, stationary test UEs are distributed and attached in coverage or capacity cells to generate the required traffic load in downlink and uplink directions. The test UEs of group 2 are in coverage of both coverage and capacity cells while the test UEs of group 1 are only in coverage of coverage cell. The test UEs of group 1 are attached/served in coverage cell while the test UEs of group 2 are attached/served in capacity cell. If the capacity cell is to be switched off, the test UEs of group 2 (that are still attached/served by capacity cell) shall be offloaded to coverage cell.

The energy consumption can be measured by energy meter or reported energy consumption values via O1/M-plane interfaces can be used.

#### 9.3.2.3 Test Procedure

The tester can choose one or more traffic models. Later version of the specification may add additional traffic models.

##### 9.3.2.3.1 Basic traffic model

Quick test that provides a basic insight to E2E performance.

1. The test setup is operational and configured according to the Clause 9.3.2.2. The test configuration shall be corded in the test report. Coverage and capacity cells are activated and operational.
2. Test UEs are power on and distributed in coverage and capacity cells. The exact number of UEs is not defined, but the number of UEs shall be sufficient to generate required cell throughput in both downlink and uplink directions (see Step 5).
3. The deployment and configuration (parameters) of coverage and capacity cells and distribution and position of test UEs are not changed during the whole test.
4. Network energy saving feature with Carrier and cell switch off/on is disabled (ESfeature OFF).
5. The test UEs start downlink and uplink full-buffer data transmission (UDP or TCP) to achieve the maximum cell throughput (100%) in capacity cell (UEs of group 2) and 20% of the maximum cell throughput in coverage cell (UEs of group 1) in both downlink and uplink directions. The data transmission of UEs of group 1 remains constant during the whole test.
6. Start measuring the energy consumption (EC) of SUT (O-RU(s), O-DU(s), O-CU-CP(s), O-CU-UP(s)) and collecting the other required data/KPIs specified in Clause 9.3.2.4.
7. After 15 mins, the total downlink and uplink data transmission of UEs of group 2 (capacity cell throughput) is reduced by 10% (of the maximum cell throughput).
8. Step 7 is repeated until the total downlink and uplink data transmission of UEs of group 2 is reduced to 0. In case of ESfeature ON, when the carrier/cell switch off/on decision is triggered, UEs of group 2 are handover from capacity to coverage cell and capacity cell is switched off.
9. After 15 mins, the total downlink and uplink data transmission of UEs of group 2 (capacity cell throughput) is increased by 10% (of the maximum cell throughput).
10. Step 9 is repeated until the maximum cell throughput (100%) of capacity cell is reached. In case of ESfeature ON, when the carrier/cell switch off/on decision is triggered, the capacity cell is switched on and UEs of group 2 are handover from coverage cell to capacity cell.
11. Stop measuring the energy consumption and collecting the data/KPIs. Record all collected data.
12. All test UEs stop downlink and uplink data transmission.
13. Steps 5 to 12 are repeated for enabled Network energy saving feature with Carrier and cell switch off/on (ESfeature ON).

##### 9.3.2.3.1 ETSI-based traffic model

Complex traffic model but provides more realistic results/data.

**Table 9-7: Traffic Model Parameters.**

|  |  |  |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Radio Condition | Good | | | Fair | | | Poor | | |
| % of UEs per pathloss | 15% | | | 70% | | | 15% | | |
| File size [kByte] | 0.1 | 1 | 250 | 0.1 | 1 | 250 | 0.1 | 1 | 250 |
| % of file distribution | 44% | 28% | 28% | 50% | 25% | 25% | 50% | 25% | 25% |
| Inter arrival time [ms] | 4 | 20 | 200 | 4 | 20 | 200 | 4 | 20 | 200 |
| % of UEs per path files size | 33.33% | 33.33% | 33.33% | 50% | 25% | 25% | 33.33% | 33.33% | 33.33% |

1. The test setup is operational and configured according to the Clause 9.3.2.2. The test configuration shall be recorded in the test report. Coverage and capacity cells are activated and operational.
2. The deployment and configuration (parameters) of coverage and capacity cells and distribution and position of test UEs are not changed during the whole test.
3. Network energy saving feature with **Carrier and cell switch off/on is disabled (ESfeature OFF).**
4. Attach UEs of group 1 to coverage cell sequentially and start downlink and uplink data transmission (UDP or TCP) according to the traffic model defined in Table 9-7. The explanation of the parameters in the table is defined in Clause 3.3.3 of [45] while the definition of radio conditions can be found in Clause 4.6.
5. Attach UEs of group 2 to capacity cell sequentially and start downlink and uplink data transmission according to the traffic model defined in Table 9-7 considering only good radio condition, which means that all UEs in capacity cell are in good radio condition.
6. Monitor the PRB (Physical Resource Block) utilization in capacity and coverage cells until the average PRB utilization reaches 70%. Record the number of attached UEs of group 1 (in coverage cell) as X, and the number of attached UEs of group 2 (in capacity cell) as Y. If PRB utilization cannot reach 70%, inter arrival time in the traffic model can be decreased to achieve a higher PRB utilization.
7. Start measuring of energy consumption of SUT (O-RU(s), O-DU(s), O-CU-CP(s), O-CU-UP(s)), and collecting the other required data/KPIs specified in Clause 9.3.2.4. If O-DU, O-CU-CP/O-CU-UP are deployed as VNF or CNF, mean vCPU usage of involved virtual instance and all virtual instances running on the same NFVI shall be measured (see Clause 9.3.2.4).
8. Continue downlink and uplink data transmission according to traffic model defined in Table 9-7 with X UEs in coverage cell and Y UEs in capacity cell for 5 minutes.
9. Detach the UEs of group 1 and group 2 sequentially so that all UEs are detached after 30 minutes. No UE is attached in coverage and capacity cells.
10. Start attaching UEs of group 1 to coverage cell, UEs of group 2 to capacity cell and start downlink and uplink data transmission according to the traffic model defined in Table 9-7. Attach rate for UE group 1 and group 2 shall ensure that after 30 minutes X UEs of group 1 and Y UEs of group 2 are attached.
11. Continue running downlink and uplink data according to traffic model as defined in Table 9-7 with X UEs attached in coverage cell and Y UEs attached in capacity cell for 5 minutes.
12. Stop measuring the energy consumption of SUT and collecting the data/KPIs.
13. All test UEs stop downlink and uplink data transmission.
14. Network energy saving feature with **Carrier and cell switch off/on is enabled (ESfeature ON)**.
15. Attach X UEs of group 1 to coverage cell and Y UEs of group 2 to capacity cell and start downlink and uplink data transmission according to the traffic model defined in Table 9-7.
16. Steps 7 to 13 are repeated for enabled Network energy saving feature with Carrier and cell switch off/on.

#### 9.3.2.4 Test requirements (Expected Results)

In addition to deployment and test configuration (parameters), the following metrics and counters should be collected and reported for the performance assessment.

* Total data volume [Mbits] transmitted in downlink direction during the test period of ESfeature ON and ESfeature OFF. The application data transmitted from application server to UEs.
* Total data volume [Mbits] transmitted in uplink direction during the test period of ESfeature ON and ESfeature OFF. The application data transmitted from UEs to application server.
* Total energy consumption [kWh] of SUT, incl. individual energy consumption of all measured components of SUT, during the test period of ESfeature ON and ESfeature OFF

The following figures shall be also included in the test report:

* Downlink PDCP throughput of coverage and capacity cells during the test period of ESfeature ON vs Time of test period (average sample per second)
* Downlink PDCP throughput of coverage and capacity cells during the test period of ESfeature OFF vs Time of test period (average sample per second)
* Uplink PDCP throughput of coverage and capacity cells during the test period of ESfeature ON vs Time of test period (average sample per second)
* Uplink PDCP throughput of coverage and capacity cells during the test period of ESfeature OFF vs Time of test period (average sample per second)
* Energy consumption of SUT during the test period of ESfeature ON vs Time of test period (average sample per 10 seconds)
* Energy consumption of SUT during the test period of ESfeature OFF vs Time duration (average sample per 10 seconds)
* Number of RRC connected UEs in coverage and capacity cells during the test period of ESfeature ON vs Time duration (average sample per 10 seconds)
* Number of RRC connected UEs in coverage and capacity cells during the test period of ESfeature OFF vs Time duration (average sample per 10 seconds)

**Gain of Network energy saving feature with Carrier and cell switch off/on**

In case of PNF (typically O-RU), the energy consumption (*ECPNF*) is measured by an energy meter and obtained according to Clause 5.1.1.19.3 of [35].

In case of VNF or CNF (typically O-DU, O-CU-CP/O-CU-UP), according to Clause 6.7.3.1.4 of [44], the energy consumption (EC) of virtual instance is estimated as a proportion of the energy consumption of the O-Cloud on which the virtual instance runs. This proportion is obtained by dividing the mean vCPU usage (*VCpuUsageMean*) of the virtual instance, by the sum of the vCPU mean usage of all virtual instances running on the O-Cloud.

$$EC\_{virtual\\_instance, estimated}[kWh]=\frac{VCpuUsageMean\_{virtual\\_instance,measured}}{\sum\_{virtual\\_instances}^{}VCpuUsageMean\_{virtual\\_instance, measured}}\*EC\_{O-Cloud, measured}$$

To minimize the impact of other virtual instances that share the O-Cloud with virtual instance(s) involved in testing, the other virtual instances should be disabled (i.e. only involved virtual instances use O-Cloud) or their vCPU usage should be constant during whole test.

The energy consumption of SUT (*ECSUT*) is obtained as the sum of measured energy consumption of PNFs (typically O-RU) and the sum of estimated energy consumption of all involved virtual instances (typically O-DU, O-CU-CP, O-CU-UP).

$$EC\_{SUT}[kWh]=\sum\_{PNFs}^{}EC\_{PNF, measured}+\sum\_{virtual\\_instances}^{}EC\_{virtual\\_instance,estimated}$$

The energy efficiency (EE) [36] is obtained by dividing the total volume of data transmitted in downlink and uplink directions in capacity and coverage cells by the energy consumption of SUT during the test period. The energy efficiency is calculated for disabled and enabled Network energy saving feature with Carrier and cell switch off/on as follows:

$$EE\_{ES\_{feature}ON}=\frac{TotalDataVolume [Mbits]}{EC\_{SUT} [kWh]}$$

The gain of Network energy saving feature with Carrier and cell switch off/on is obtained by dividing energy efficiency of SUT with enabled Network energy saving feature by energy efficiency of SUT with disabled Network energy saving feature.

$$Gain\_{ES\_{feature}}=\frac{EE\_{ES\_{feature}ON}}{EE\_{ES\_{feature}OFF}}$$

Annex A (normative)

Template of test report

The test report template provided in this annex is intended for general use in reporting E2E test results. This template is not intended for use in obtaining any O-RAN Certificate or O-RAN Badge. For more details on the process and procedures for use in seeking an O-RAN E2E Badge and for the test report templates to be used for this purpose, see [42] and [43].

**A. GENERAL INFORMATION**

|  |  |
| --- | --- |
| A1 Name of test campaign | |
| A2 Version of the report - reference ID | A3 Date(s) of testing |
| A4 Contact person (tester) - incl. Name, Organization, E-mail address | |
| A4 Test location (lab) - incl. the address | |
| A5 Description of test campaign, summary of test results, conclusions | |

List of tests **-** details of each test can be found in Clause E.

|  |  |  |
| --- | --- | --- |
| Test No. | Test name | Test status [ PASS / FAIL / - ] |
| 01 |  |  |
| 02 |  |  |
| 03 |  |  |

**B. TEST AND MEASUREMENT EQUIPMENT AND TOOLS**

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| # | Equipment or tool | Type | Manufacture | Version (HW/SW) | Notes# |
| 01 |  |  |  |  |  |
| 02 |  |  |  |  |  |
| 03 |  |  |  |  |  |

*# Specific details such as frequency range, date of last calibration, Type and version of Operating System at end-user device/application server, etc.*

**C. SYSTEM UNDER TEST**

|  |  |
| --- | --- |
| C1 Total number of DUTs included in SUT | C2 Deployment architecture (indoor/outdoor, micro/pico/macro) |
| C3 Description of SUT - block diagram - connection scheme | |

DUT 1#

|  |  |  |  |
| --- | --- | --- | --- |
| C3 Type | C4 Serial Number | | C5 Supplier (manufacture) |
| C6 SW version | | C7 HW version | |
| C8 Interface/IOT profile(s) if applied | | | |
| C9 Description incl. parameters, setting/configuration | | | |

*# If SUT contains more DUTs, please copy the table.*

**D. TEST CONFIGURATION**

|  |  |  |  |
| --- | --- | --- | --- |
| D1 Carrier (central) frequency - (NR-)ARFCN | D2 Total transmission (effective) bandwidth | | D3 Number of total Resource Blocks |
| D4 Sub-carrier spacing | D5 Carrier prefix length | | D6 Slot length |
| D5 Duplex mode | D6 TDD DL/UL ratio (configuration) | | D7 IPv4 / IPv6 |
| eNB/gNB | | UE | |
| D8 Number of supported MIMO layers at eNB/gNB | | D9 Number of supported MIMO layers at UE | |
| D10 Antenna configuration - number of Tx/Rx at eNB/gNB | | D11 Antenna configuration - number of Tx/Rx at UE | |
| D12 Total antenna gain at eNB/gNB | | D13 Total antenna gain at UE | |
| D14 Total transmit power at antenna connectors at eNB/gNB | | D15 Total transmit power at antenna connectors at UE | |

**E. TEST RESULTS**

|  |  |
| --- | --- |
| E1 Test No. | E2 Test name |
| E3 Date(s) of test execution | E4 Reference to test specification |
| E5 Utilized test and measurement equipment and tools, incl. the specific setting/configuration - reference to Clause B | |
| E6 Test setup - connection/block diagram - deployment scenario (dense urban/urban/rural, LOS/NLOS/nLOS) | |
| E7 Test procedure - describe differences in comparison with the test procedure defined in test spec. - limitations | |
| E8 Test results - measured KPIs - incl. attachment of raw log file(s) | |
| E9 Notes, incl. observed issues with the solutions | |
| E10 Conclusions - pass/fail - assessment of measured KPIs (in comparison with the expected KPIs) - gap analysis | |
---

- View in [Reader Mode](https://simewu.com/spec-reader/pages/01-TIFG/O-RAN.TIFG.E2E-Test.0-R003-v06.00.docx).
- Go back to [Table of Contents](../README.md).
- Download the [Original Document](https://github.com/Simewu/spec-reader/raw/refs/heads/main/documents/O-RAN.TIFG.E2E-Test.0-R003-v06.00.docx).
