## O-RAN.WG4.IOT.0-R004-v12.00.docx

- View in [Reader Mode](https://simewu.com/spec-reader/pages/08-WG4/O-RAN.WG4.IOT.0-R004-v12.00.docx).
- Go back to [Table of Contents](../README.md).
- Download the [Original Document](https://github.com/Simewu/spec-reader/raw/refs/heads/main/documents/O-RAN.WG4.IOT.0-R004-v12.00.docx).

---

Technical Specification

O-RAN Fronthaul Working Group

Fronthaul Interoperability Test Specification (IOT)

Copyright (C) 2024 by the O-RAN ALLIANCE e.V.

The copying or incorporation into any other work of part or all of the material available in this specification in any form without the prior written permission of O-RAN ALLIANCE e.V. is prohibited, save that you may print or download extracts of the material of this specification for your personal use, or copy the material of this specification for the purpose of sending to individual third parties for their information provided that you acknowledge O-RAN ALLIANCE as the source of the material and that you inform the third party that these conditions apply to them and that they must comply with them.

O-RAN ALLIANCE e.V., Buschkauler Weg 27, 53347 Alfter, Germany

![webwxgetmsgimg (7).jpeg](../assets/images/bea03973c631.jpg) O-RAN.WG4.IOT.0-R004-v12.00

Contents

Chapter 1 Introductory Material 4

1.1 Foreword 4

1.2 Scope 4

1.2.1 General 4

1.2.2 Summary of Test Scenarios 4

1.2.3 Future Enhancements 5

1.3 References 5

1.4 Definitions and Abbreviations 6

1.4.1 Definitions 6

1.4.2 Abbreviations 8

1.5 Introduction 9

1.5.1 General 9

1.5.2 Fronthaul M-Plane Architectural options 9

1.5.3 Fronthaul Synchronization options 10

Interoperability Measurements 11

2.1 Interoperability Standard Test Definitions 11

2.1.1 Standard Test Configurations 11

2.1.1.1 Device Under Test (DUT) 11

2.1.1.2 Network Management System (NMS) 12

2.1.1.3 Testing Tools 12

2.1.1.4 Time Synchronization 15

2.1.1.5 Assumptions 15

2.1.1.6 Specifications to be used for testing 15

2.1.1.7 Interoperability (IOT) Test Profiles 16

2.1.1.8 Measurements of interest 16

2.1.2 Standard Test Data Configurations 16

2.1.3 Standard Test Execution 16

2.2 Interoperability Test Cases 17

2.2.1 M-Plane IOT Test 17

2.2.1.1 Start-up in hierarchical mode 17

2.2.1.2 Start-up in hybrid mode 22

2.2.2 S-Plane IOT Test 26

2.2.2.1 Functional test of O-DU + O-RU using ITU-T G.8275.1 profile (LLS-C1) 28

2.2.2.2 Functional test of O-DU + bridged network + O-RU using ITU-T G.8275.1 profile (LLS-C2) 30

2.2.2.3 Functional test of O-DU + bridged network + O-RU using ITU-T G.8275.1 profile (LLS-C3) 33

2.2.2.4 Functional test of O-DU + O-RU using ITU-T G.8275.2 profile (LLS-C1) 35

2.2.2.5 Functional test of O-DU + bridged network + O-RU using ITU-T G.8275.2 profile (LLS-C2) 35

2.2.2.6 Functional test of O-DU + bridged network + O-RU using ITU-T G.8275.2 profile (LLS-C3) 35

2.2.2.7 Functional test of O-DU + bridged network + O-RU (LLS-C4) 36

2.2.2.8 Performance test of O-DU + Two O-RUs using ITU-T G.8275.1 profile (LLS-C1) 36

2.2.2.9 Performance test of O-DU + bridged network + Two O-RUs using ITU-T G.8275.1 profile (LLS-C2) 37

2.2.2.10 Performance test of O-DU + bridged network + Two O-RUs using ITU-T G.8275.1 profile (LLS-C3) 38

2.2.2.11 Performance test of O-DU + Two O-RUs using ITU-T G.8275.2 profile (LLS-C1) 39

2.2.2.12 Performance test of O-DU + bridged network + Two O-RUs using ITU-T G.8275.2 profile ((LLS-C2) 39

2.2.2.13 Performance test of O-DU + bridged network + Two O-RUs using ITU-T G.8275.2 profile (LLS-C3) 39

2.2.2.14 Performance test of O-DU + bridged network + Two O-RUs (LLS-C4) 39

2.2.3 C/U-Plane IOT Test 40

2.2.3.1 Radio Layer 3 C-Plane establishment and Initial Radio U-Plane data transfer 40

2.2.3.2 Radio U-Plane downlink data transfer (Downlink throughput performance) 41

2.2.3.3 Radio U-Plane uplink data transfer (Uplink throughput performance) 43

2.2.4 C/U-Plane Delay Management IOT Test 45

2.2.4.1 Test environment 46

2.2.4.2 Timing accuracy definition 47

2.2.4.3 Delay Management #1, minimum fronthaul latency 48

2.2.4.4 Delay Management #2, maximum fronthaul latency 49

2.2.4.5 Delay Management #3, normal fronthaul latency 50

2.2.4.6 Delay Management #4, larger fronthaul latency then supported 51

Annex A Profiles used for Interoperability Testing 52

A.1 M-Plane IOT Profile 55

A.1.1 M-Plane IOT Profile 1 Hierarchical-sudo 55

A.1.2 M-Plane IOT Profile 2 Hybrid-sudo+nms 56

A.1.3 M-Plane IOT Profile 3 Hierarchical-sudo-IPv6 58

A.1.4 M-Plane IOT Profile 4 Hybrid-sudo+nms-IPv6 61

A.2 CUS-Plane IOT Profiles 63

A.2.1 NR TDD 63

A.2.1.1 NR TDD IOT Profile 1 - NR-TDD-FR1-CAT-A-NoBF 63

A.2.1.2 NR TDD IOT Profile 2 - NR-TDD-FR1-CAT-A-DBF 68

A.2.1.3 NR TDD IOT Profile 3 - NR-TDD-FR2-CAT-A-ABF 72

A.2.1.4 NR TDD IOT M-MIMO Profile 1 - NR-TDD-FR1-CAT-B-mMIMO-RTWeights-BFP 77

A.2.1.5 NR TDD IOT M-MIMO Profile 2 - NR-TDD-FR1-CAT-B-mMIMO-RTWeights-ModComp 82

A.2.1.6 NR TDD IOT M-MIMO Profile 3 - NR-TDD-FR1-CAT-B-mMIMO-ChInfo-BFP 90

A.2.1.7 NR TDD IOT M-MIMO Profile 4 - NR-TDD-FR1-CAT-B-mMIMO-ChInfo-ModComp 94

A.2.2 NR FDD 99

A.2.2.1 NR FDD IOT Profile 1 - NR-FDD-FR1(15kHzSCS)-CAT-B-DBF 99

A.2.2.2 NR FDD IOT Profile 2 - NR-FDD-FR1-CAT-B-DBF 103

A.2.2.3 NR FDD IOT Profile 3 - NR-FDD-FR1-CAT-A-NoBF 107

A.2.2.4 NR FDD IOT Profile 4 - NR-FDD-FR1(15kHzSCS)-CAT-A-NoBF 110

A.2.3 LTE FDD 114

A.2.3.1 LTE FDD IOT Profile 1 - LTE-FDD-FR1-CAT-B-DBF 114

A.2.3.2 LTE FDD IOT Profile 2 - LTE-FDD-FR1-CAT-A-NoBF 118

A.2.4 LTE TDD 122

A.2.4.1 LTE TDD IOT Profile 1 - LTE-TDD-FR1-CAT-A-DBF 122

Revision History 127

History 128

# Introductory Material

## 1.1 Foreword

This Technical Specification has been produced by the O-RAN Alliance.

The contents of the present document are subject to continuing work within O-RAN and may change following formal O-RAN approval. Should the O-RAN Alliance modify the contents of the present document, it will be re-released by O-RAN with an identifying change of release date and an increase in version number as follows:

Release x.y.z

where:

x the first digit is incremented for all changes of substance, ie, technical enhancements, corrections, updates, etc. (the initial approved document will have x=01).

y the second digit is incremented when editorial only changes have been incorporated in the document.

z the third digit included only in working versions of the document indicating incremental changes during the editing process.

## 1.2 Scope

### 1.2.1 General

The present document specifies the interoperability testing (IOT) for O-DU and O-RU from different vendors connected using the O-RAN fronthaul (FH) interface. It is noted however that the same content can be utilized for the IOT for O-DU and O-RU from the same vendor connected using the O-RAN FH interface.

A guiding principle defining the tests in this document shall be that any test shall exercise the fronthaul interface to a greater extent than the test prerequisite so that the test is a proper test of some fronthaul functionality or performance.

All tests focus on testing the fronthaul interface, but due to the non-intrusive nature of the tests, system-level aspects of the O-DU and O-RU are inevitably part of the interoperability tests too. Because of this, it is recognized that positive test outcomes indicate successful interoperability, but negative results may not be attributed solely to problems in the FH interface and additional investigation may be required.

It is also noted that additional test scenarios are required for comprehensive testing of the FH interface functionality and performance, which shall be considered in future WG4 test specification versions.

In general, unless otherwise stated, the tests cover LTE (Stand-Alone), NR Non-Stand-Alone (NSA) and NR Stand-Alone (SA). The tests shall be executed using whichever IOT profile(s) are appropriate for the DUTs. See Annex A for details on the IOT profiles.

The material contained within the present document is of stage 3 [25].

### 1.2.2 Summary of Test Scenarios

The following set of interoperability test cases are defined for the current version of WG4 FH IOT specification.

* FH tests focused on the M-Plane:
  + Start-up (O-RU start-up from the power-on of O-RU to the availability of service)
* FH tests focused on the S-Plane:
  + Synchronization status detection
  + Frequency and time error (performance)
* FH tests focused on the C/U-Planes:
  + Radio Layer 3 C-Plane establishment and Initial Radio U-Plane data transfer
  + Radio downlink U-Plane data transfer (Downlink throughput performance)
  + Radio uplink U-Plane data transfer (Uplink throughput performance)
* FH tests focused on the C/U-Plane Delay Management
  + Test with minimum, intermediate, maximum, and excess latency.

### 1.2.3 Future Enhancements

Additional test cases are under consideration for the future versions of this specification. A non-exhaustive list of candidate test cases for future versions is provided below:

* FH tests focused on the M-Plane:
  + Software management (O-RU software update)
  + Fault management
  + File management
* FH tests focused on the C/U-Plane:
  + Beamforming (testing the actual characteristics of the radiated/received signals at O-RU)
  + Compression (testing different compression methods and IQ bitwidth and validating expected performance)

Note: beamforming and compression are tested as part of the IOT cases already specified in Chapter 2.2 and the relevant IOT profiles (refer to Annex A for more details). The test cases above extend the capability to test the fronthaul interface in respect of these features.

* + Multiple O-RUs
  + Multiple UEs

## 1.3 References

The following documents contain provisions which, through reference in this text, constitute provisions of the present document.

- References are either specific (identified by date of publication, edition number, version number, etc) or non-specific.

- For a specific reference, subsequent revisions do not apply.

- For a non-specific reference, the latest version applies. In the case of a reference to a 3GPP document (including a GSM document), a non-specific reference implicitly refers to the latest version of that document.

- The versions of the ITU-T documents reflect their publication dates at the time of the writing. For the most recent version, please refer to ITU-T <https://www.itu.int/rec/T-REC-G/e>.

[1] 3GPP TR 21.905, "Vocabulary for 3GPP Specifications"

[2] O-RAN WG4 Control, User and Synchronization Specification Version 8, January 2022

[3] O-RAN WG4 Management Plane Specification Version 8, January 2022

[4] O-RAN Management Plane Yang Models Version 8, September 2022

[5] ITU-T G.8275.1, Precision time protocol telecom profile for phase/time synchronization with full timing support from the network, ITU, March 2020

[6] ITU-T G.8275.2, Precision time protocol telecom profile for phase/time synchronization with partial timing support from the network, ITU, March 2020

[7] ITU-T G.8271.1 "Network limits for time synchronization in packet networks", ITU, March 2020

[8] ITU-T G.8271.2 "Network limits for time synchronization in packet networks with partial timing support from the network", ITU, Aug 2017

[9] ITU-T G.8273 "Framework of phase and time clocks", March 2018

[10] ITU-T G.8261. "Timing and synchronization aspects in packet networks", August 2019

[11] eCPRI Specification v1.0 "Common Public Radio Interface: eCPRI Interface Specification", August 2017

[12] 3GPP TS 36.104, "Evolved Universal Terrestrial Radio Access (E-UTRA); Base Station (BS) radio transmission and reception"

[13] 3GPP TS 38.104, "NR; Base Station (BS) radio transmission and reception"

[14] 3GPP TS 36.211, "Evolved Universal Terrestrial Radio Access (E-UTRA); Physical channels and modulation"

[15] 3GPP TS 38.211, "NR; Physical channels and modulation", 3GPP, (Release 15.8.0)

[16] 3GPP TS 36.331, "Evolved Universal Terrestrial Radio Access (E-UTRA); Radio Resource Control (RRC)"

[17] 3GPP TS 38.331, "NR; Radio Resource Control (RRC); Protocol specification"

[18] 3GPP TS 36.141, "Evolved Universal Terrestrial Radio Access (E-UTRA); Base Station (BS) conformance testing", 3GPP, (Release 15.10.0)

[19] 3GPP TS 38.141-2, "NR; Base Station (BS) conformance testing Part 2: Radiated conformance testing", 3GPP, (Release 15.7.0)

[20] 3GPP TS 23.401, "General Packet Radio Service (GPRS) enhancements for Evolved Universal Terrestrial Radio Access Network (E-UTRAN) access", 3GPP, (Release 15.12.0)

[21] 3GPP TS 23.502, "Procedures for the 5G System (5GS)", 3GPP, (Release 15.11.0)

[22] 3GPP TS 37.340, "Evolved Universal Terrestrial Radio Access (E-UTRA) and NR; Multi-connectivity", 3GPP, (Release 15.10.0)

[23] 3GPP TS 38.214, "NR; Physical layer procedures for data", 3GPP, (Release 15.11.0)

[24] O-RAN Fronthaul Working Group, Conformance Test Specification Version 3, September 2021

[25] ITU-T Recommendation I.130 "Method for the characterization of telecommunication services supported by an ISDN and network capabilities of an ISDN"

## 1.4 Definitions and Abbreviations

### 1.4.1 Definitions

For the purposes of the present document, the terms and definitions given in 3GPP TR 21.905 [1] and the following apply. A term defined in the present document takes precedence over the definition of the same term, if any, in 3GPP TR 21.905 [1].

C-Plane Control Plane: refers specifically to real-time control between O-DU and O-RU, and should not be confused with the UE's control plane

Customized IOT Configuration A set of IOT parameters not matching any specific IOT Profile Test Configuration that may be defined by anyone wanting to execute an interoperability test defined in this specification but instead using a custom set of test parameters.

DL DownLink: data flow towards the radiating antenna

eNB eNodeB (applies to LTE) <E-UTRAN NodeB / Evolved NodeB>

fm-pm Fault Management, Performance Management role

gNB gNodeB (applies to NR) <Next Generation NodeB>

IOT Profile A high-level interoperability test configuration definition under which multiple more-detailed IOT Profile Test Configurations may fit, allowing the grouping of test cases in broad categories.

IOT Profile Test Configuration An interoperability test configuration defined within this specification that includes detailed parameter values that are representative of typical deployment cases, such that the results of interoperability tests using such a configuration may guide an understanding of the ability of a multi-vendor deployment to interoperate.

M-Plane Management Plane: refers to non-real-time management operations between the O-DU and the O-RU

NETCONF Network Configuration Protocol. For details see RFC 6241, "Network Configuration Protocol (NETCONF)", IETF, June 2011

NMS A Network Management System dedicated to O-RU operations

nms NMS role

NSA Non-Stand-Alone network mode that supports operation of SgNB attached to MeNB

O-CU O-RAN Central Unit - a logical node hosting PDCP, RRC, SDAP and other control functions

O-DU O-RAN Distributed Unit: a logical node hosting RLC/MAC/High-PHY layers based on a lower layer functional split. O-DU in addition hosts an M-Plane instance.

O-RU O-RAN Radio Unit <O-RAN Radio Unit: a logical node hosting Low-PHY layer and RF processing based on a lower layer functional split. This is similar to 3GPP's "TRP" or "RRH" but more specific in including the Low-PHY layer (FFT/iFFT, PRACH extraction).>. O-RU in addition hosts M-Plane instance.

PLFS Physical Layer Frequency Support, as per ITU-T G.8271.1. SyncE is one example.

PTP Precision Time Protocol (PTP) is a protocol for distributing precise time and frequency over packet networks. PTP is specified in the IEEE Standard 1588.

PDCCH Physical Downlink Control Channel applies for LTE and NR air interface

PBCH Physical Broadcast Channel applies for LTE and NR air interface

SA Stand-Alone network mode that supports operation of gNB attached to a 5G Core Network

SCS OFDM Sub Carrier Spacing

SSH Secure Shell protocol for remote login

SSB Synchronization Signal Block, in 5G PBCH and synchronization signal are packaged as a single block

sudo Super-User Do role

subordinate The term "subordinate" is used as a replacement for "slave" and is consistent with its use in O-RAN WG4 CUS Specification [2]. When consensus emerges on how to eliminate the use of the term "slave" in the referenced standards organization, that approach will be applied to this specification

swm Software fault management role

S-Plane Synchronization Plane: Data flow for synchronization and timing information between nodes

SyncE Synchronous Ethernet, is an ITU-T standard for computer networking that facilitates distribution of clock signals over the Ethernet physical layer

T-BC Telecom Boundary Clock

TLS Transport Layer Security protocol

TWAMP Two-Way Active Measurement Protocol

UDP User Datagram Protocol

UE User Equipment terminology for a mobile device in LTE and NR

UL UpLink: data flow from the UE towards the core network, that is from the O-RU towards in the O-DU in a Fronthaul context.

U-Plane User Plane: refers to IQ sample data transferred between O-DU and O-RU

### 1.4.2 Abbreviations

For the purposes of the present document, the abbreviations given in 3GPP TR 21.905 [1] and the following apply. An abbreviation defined in the present document takes precedence over the definition of the same abbreviation, if any, in 3GPP TR 21.905 [1].

5GS 5G System, comprises the access network, core network and user equipment

ARFCN Absolute Radio Frequency Channel Number

CC Component Carrier

CN Core Network

C/U-Plane C-Plane and U-Plane

DHCP Dynamic Host Configuration Protocol

DL DownLink

DUT Device Under Test

eNB eNodeB

EARFCN E-UTRA ARFCN

EVM Error Vector Magnitude

FH Fronthaul

GSCN Global Synchronization Channel Number

gNB gNodeB

MeNB Master eNB

MIMO Multiple Input Multiple Output

M-MIMO Massive MIMO

mMIMO M-MIMO

NETCONF Network Configuration Protocol

NMS Network Management System

NSA Non-Stand-Alone

O-CU O-RAN Central Unit

O-DU O-RAN Distributed Unit

O-RU O-RAN Radio Unit

OTA Over the Air

PBCH Physical Broadcast Channel

PCI Physical Cell Identity

PRTC Primary Reference Time Clock

RF Radio Frequency

RSRP Reference Signal Received Power

SA Stand-Alone

SCS Sub Carrier Spacing

SDAP Service Data Adaptation Protocol

SgNB Secondary gNB

SSB Synchronization Signal Block

UE User Equipment

UL UpLink

U-Plane User Plane

## 1.5 Introduction

### 1.5.1 General

O-RAN WG4 has specified and published the O-RAN FH interface specifications (CUS-Plane [2] and M-Plane [3]) with the objective to enable interoperability of O-DU and O-RU from different vendors. The aim of this document is to further facilitate such multi-vendor IOT using the O-RAN FH interface by defining standard test configurations, IOT profiles and interoperability test cases.

It shall be possible to perform interoperability testing in a non-intrusive manner; that is, in a manner in which the network elements under test are not required to support any functionality or mode of operation beyond that required for normal operation in a telecommunication network. However, making the endpoints of the FH interface between the O-DU and O-RU visible would require definition of new interfaces which may entail caching and transport of data. Furthermore, and more importantly, operators require that the total radio system function and perform adequately when integrating O-DU and O-RU from different vendors. Consequentially, this specification approaches interoperability testing by means of system level testing.

FH interoperability testing by way of system test involves creation of a stimulus in the O-DU to O-RU direction using an actual or emulated O-CU, potentially with CN support/emulation, and measurement of the result at the output of the O-RU in the RF domain by an actual or emulated UE together with an RF signal/spectrum analyzer as required. Likewise, in the reverse direction, the stimulus to probe the FH in the O-RU to O-DU direction is provided by an actual or emulated UE and is measured at the output of the O-DU by an actual or emulated O-CU with CN support/emulation as required.

Inasmuch as the interoperability testing by way of system test involves configuring and collecting results from the O-RU it shall be effected by means of the M-Plane FH interface. For elements that fall outside of this scope, such as the O-DU, the configuration and collection of data and status information for testing purposes may be accomplished by NMS.

Interoperability involves testing the FH interface in terms of M-Plane, S-Plane, C-Plane and U-Plane. Some aspects of these planes may be tested independently. However, some tests, such as those that require the devices to be brought into service and a call established entail simultaneous activity across multiple planes.

The status of the test can be MANDATORY, CONDITIONAL MANDATORY or OPTIONAL. Note that test that is MANDATORY is required to be performed for interoperability testing. The test that is CONDIONAL MANDATORY is only required to be performed if the specific condition(s) are met. If a test is OPTIONAL, it does not need to be included in interoperability testing but could be included if desired.

### 1.5.2 Fronthaul M-Plane Architectural options

As described in the "O-RAN WG4 Management Plane Specification" [3], two architectural models are supported, namely a "hierarchical" and a "hybrid" model. As a general guideline the following apply,

1. Hierarchical model: The O-RU is entirely managed by one O-DU (sudo) using a NETCONF based M-Plane interface.
2. Hybrid model: The architecture allows one or more direct logical interface(s) between management system(s) (performing different roles, nms, fm-pm, swm, etc) and O-RU in addition to a logical interface between O-DU (sudo role) and the O-RU.

### 1.5.3 Fronthaul Synchronization options

Various synchronization options have been specified in the O-RAN WG4 CUS-Plane Specification [2] (LLS-C1, LLS-C2, LLS-C3 and LLS-C4). Depending on the specific O-RAN deployment being considered, not all of them might be relevant. When testing the S-Plane, the System Integrator shall identify which of the test cases are relevant depending on the specific deployment scenarios addressed. As a general guideline the following applies:

1. Direct connection between O-DU and O-RU:

LLS-C1 is generally the main sync option to be validated

LLS-C4 may be considered as an alternative or as a complement to LLS-C1

1. Bridged network between O-DU and O-RU

LLS-C2 for cases where the synchronization is delivered to the O-RU via the O-DU and over the bridged network. In this case the PRTC/PRC may be embedded in the O-DU or may be located anywhere in the network (connected via backhaul or FH transport).

LLS-C3 for cases when the synchronization is distributed to the O-RU without involving the O-DU In this case the PRTC/PRC may be located anywhere in the network (connected via backhaul or FH transport) and may also be co-located with the O-DU.

LLS-C4 may be considered as alternative or as a complement to LLS-C2/LLS-C3. LLS-C4 is considered for future versions of the specification.

The FH focused tests for S-Plane for the current version of this specification covers LLS-C1, LLS-C2 and LLS-C3 using the ITU-T G.8275.1 [5] profile (Full Timing Support). FH focused tests for S-Plane for LLS-C1, LLS-C2 and LLS-C3 using the ITU-T G.8275.2 [6] profile (Partial Timing Support), and LLS-C4 are for future study.

# Interoperability Measurements

## 2.1 Interoperability Standard Test Definitions

### 2.1.1 Standard Test Configurations

Interoperability testing is performed to prove that the end-to-end functionality between the O-DU and O-RU is as required by the O-RAN FH CUS-Plane [2] and M-Plane [3] specifications on which these components are based. This requires system level testing with O-DU and O-RU as an integrated system.

#### 2.1.1.1 Device Under Test (DUT)

The case where the O-DU and O-RU are provided by different vendors is the focus of this document, but the case where both are from the same vendor is also valid.

The O-DU and O-RU, with their interconnecting FH, is considered as the DUT. This is the same whether the O-CU and O-DU are implemented as a combined node, or as stand-alone nodes.

For simplicity and without prejudice the tests in the following sections are defined with reference to a stand-alone O-DU. However, the tests apply equally when the O-DU is replaced by the O-DU functionality of a combined O-CU/O-DU and where the Layer 2 and Layer 3 radio processing on the network side is provided by the O-CU functionality of the combined-node. Any differences to the test due to replacement of the stand-alone O-DU with a combined O-CU/O-DU are detailed as they arise.

The simplest test configuration involves a single O-DU and a single O-RU. In this configuration, the O-DU and O-RU are labelled as DUT1(O-DU) and DUT1(O-RU) respectively.

More advanced test configurations will involve defining the cardinality between the 1...M O-DU(s) and 1...N O-RU(s) as part of the test scenario which will determine the configuration required.

An example of such test configuration is to have a single O-DU connected to multiple N O-RUs. In this example, the O-DU is labelled as DUT1(O-DU) and the O-RU(s) are labelled as DUT1(O-RU) ... DUTN(O-RU) accordingly.

A second example is to have multiple M O-DUs connected to multiple N O-RUs. In this second example, the O-DUs are labelled as DUT1(O-DU) ... DUTM(O-DU) and the O-RU(s) are labelled as DUT1(O-RU) ... DUTN(O-RU) accordingly. However, deployment scenarios where a single O-RU is managed and used by more than one O-DU is not addressed in this version of the WG4 FH IOT Specification.

External physical and or logical connection between the O-DUs and O-RUs are to be specified in the IOT profiles (eg, number of 10/25/40GE, physical medium eg, fiber), see Annex A for details.

IOT test cases defined in the following sections of this specification shall be executed using whichever IOT profile(s) that are appropriate for the DUTs. See Annex A for more details on the IOT profiles.

![](../assets/images/b6c7eca6757c.png)

**Figure 2-1: The simplest DUT configuration**

#### 2.1.1.2 Network Management System (NMS)

Network Management System (NMS) is required to support M-Plane testing particularly in the Hybrid architecture model as the O-RU has logical connection with the NMS [3]. In the hierarchical model, the NMS manages the O-DU and the O-DU manages the O-RU respectively.

![](../assets/images/7f9d389bd191.png)External physical and or logical connection between the NMS and O-DUs and O-RUs are to be specified in the IOT profiles (eg, number of 10/25/40GE, physical medium, eg, fiber), see Annex A for details.

**Figure 2-2: The relationship between DUT and NMS (hybrid mode connection to O-RU shown dashed)**

#### 2.1.1.3 Testing Tools

One of the key objectives of interoperability testing is to validate the functionality of production grade DUTs. Hence it is important to ensure that the DUTs are not negatively impacted with the utilization of internal functions solely to support interoperability testing. ie, DUTs are not expected to be testing tools when deployed in production networks and therefore DUTs should not be used as testing tools during interoperability tests.

Interoperability tests are performed with a set of testing tools which are used to both apply active stimulus and as well as passive monitoring and measurements of the DUTs.

The test is applicable to deployment scenarios where the O-CU and O-DU are implemented as separate nodes connected by an F1 interface and scenarios where they are implemented as a combined node without an accessible F1 interface.

The deployment scenario where the 4G LTE eNB is implemented as separate 4G O-CU and 4G O-DU nodes connected by a W1 interface is considered for future versions of the WG4 FH IOT Specification when 3GPP standardization work for the W1 interface is complete.

**Active stimulus testing tools**

* **5G NR O-CU or O-CU emulator** either as a separate node or as a combined node with O-DUs (DUT): used to provide Layer 2 and Layer 3 radio processing on the network side. In case of stand-alone nodes, terminates the 3GPP 5G F1 interface with the O-DU (DUT).
  + O-CU and O-CU emulator can be connected to either a real Core network or emulated Core. An emulated Core can be simpler to deploy for interoperability testing purposes.
  + External physical and or logical connection between the O-CU or O-CU emulator with the O-DU (DUT), if any, will be lab setup dependent either through physical or wireless medium
* **4G LTE MeNB or MeNB emulator**: used to terminate the 3GPP EN-DC X2 interface with the 5G NR O-CU or O-CU emulator
  + Required when the DUTs (O-DU and O-RU) are configured to operate 5G NR NSA option 3/3a/3x.
  + 4G LTE MeNB or MeNB emulator can either have physical or logical connection with the Test UE or UE emulator. RF connection between the 4G LTE MeNB or MeNB emulator with the Test UE or UE emulator will be either through cabled connection or Over the Air (OTA).
* **Test UEs and/or UEs emulator and optional beamforming network (for MIMO tests)**: used to generate stateful device connections and traffic to validate the O-DU and O-RU implementation of the O-RAN FH interface protocols as these are stimulated by the 3GPP upper layer protocols. The beamforming network (BFN), for example a Butler Matrix, is used to generate a static RF channel with rank not lower than the number of spatial streams required for the MIMO IOT test profile.
  + Required so that the O-RU which is the DUT does not need to be put into a "test mode" which does not happen in live deployments.
  + Test UEs will require SIM cards which are pre-provisioned with subscriber profiles. UEs used for testing can be simpler to setup but given that these Test UEs are designed to be commercial UEs with possibly certain diagnostic functions enabled for logging purposes, they are limited in terms of configurability.
  + UEs emulator will require SIM profile configuration with the subscriber's profiles. UEs emulator can be used in test scenarios which require multiple UEs' sessions, more flexibility and configurability to help drive test scenarios.
  + RF connection between the Test UEs or UEs emulator with the O-RU (DUT) will be either through cabled connection or OTA. However, in case BFN is used, the RF connection between the Test UEs or UEs emulator and the BFN is via cable and the RF connection between BFN and O-RU (DUT) is also via cable. The use of OTA for MIMO tests is FFS.

![](../assets/images/d385f08ef091.png)

**Figure 2-3: Test set-up for stand-alone (left) and combined (right)**

**Passive monitoring and measurements testing tools**

* **Test UEs and/or UEs emulator**: used to produce measurements and logs
  + Measurements and KPIs logs for test case validation and reporting
  + Diagnostics logs for troubleshooting purposes which can help with test setup validation and root cause analysis for failed test cases
  + Diagnostics mode is enabled on the Test UEs for diagnostic logging purposes. Device logging tools are connected to the Test UEs for logging purposes.
  + UEs used for testing can be simpler to setup but given that given that these Test UEs are designed to be commercial UEs, they are limited in terms of diagnostic logging capabilities due to limited processing and buffer space.
  + UEs emulator can be used in test scenarios which require extensive diagnostics capabilities.
* **Application Test Server**: An endpoint application test traffic emulator which can be used to generate and/terminate various traffic streams to or from the Test UEs/UEs emulator respectively. May provide one or more of these options,
  + Stateful traffic, eg, TCP, TWAMP
  + Stateless traffic eg, UDP
  + Required to place traffic load on the DUT
  + External physical and or logical connection between Application Test Server and O-CU/O-CU emulator is out of scope of the specification
* **Test results and KPIs reporting** which can be provided through one or more of these options
  + UE logging tools which are connected to the Test UEs
  + Device emulator reporting dashboards typically built in as part of the Device emulator solution
  + External dashboard and reporting applications
* **FH Protocol Analyzer**: used for protocol analysis of O-RAN FH protocols to achieve the following
  + Test case validation and troubleshooting purposes which can help with test setup validation and root cause analysis for test cases which fail
  + Decode and validation of M-Plane flow sequencing prior to SSH/TLS secure connection establishment
  + Monitoring traffic from the O-RAN FH typically through a tap or span port. Taps are typically preferred as span ports are less reliable but can be used if taps are not readily available in the test lab. Connectivity specifics (eg, number of 10/25/40GE) are to be specified in the IOT profiles (see Annex A for details).
* **RF Spectrum and Beam Signal Analyzer**: used for RF and Beam power and quality analysis for,
  + Test case validation and troubleshooting which can help with test setup validation and root cause analysis for test cases which fail

Eg, the Beam Signal Analyzer can be used to validate that the O-RUs (DUT) are in-service, configured and operating correctly, which in case of 5G, includes validating that the SS/PBCH blocks (SSB) are configured with the correct Sub Carrier Spacing (SCS), transmitted at the correct frequency locations (can be offset from the center frequency), and in case of both 4G and 5G, burst periods with the correct Physical Cell Identities (PCI), Beam Identifiers and, expected power and quality.

* + RF Spectrum and Beam Signal Analyzer performs OTA RF measurements and signal analysis
* O-CU or O-CU emulator
* MeNB or MeNB emulator
* Core or Core emulator
  + Used to produce measurements and diagnostics logs for troubleshooting purposes which can help with test setup validation and root cause analysis for test cases which fail

![](../assets/images/481609d128cb.png)

Figure 2-4: Test set-up for stand-alone (left) and combined (right)

#### 2.1.1.4 Time Synchronization

All the components including the DUTs (O-DUs and O-RUs) and the Testing Tools are required to be synchronized to a common system time and master time source unless otherwise stated.

Synchronization Plane (S-Plane) configuration for the DUTs is specified in the IOT profiles (see Annex A for details).

Test tools shall be time synchronized to the master timing source with PTP.

#### 2.1.1.5 Assumptions

In this version of the WG4 FH IOT specifications, the following assumptions apply

* All wireline transport interfaces and the air interface are assumed to conform to ideal conditions (no impairments).
* All wireless connection assumed to adopt 3GPP approaches for "ideal" RF environment for test setup.
* O-DU and O-RU comply to the same version of the O-RAN FH interface specifications.
* All elements in the interoperability test and the supporting test environment, where 3GPP support is relevant, comply to the same version of the 3GPP Specification.
* All O-RUs involved in a test are of the same category; all A or all B.

#### 2.1.1.6 Specifications to be used for testing

In this version of the WG4 FH IOT specifications, the following sets of specifications and releases/versions shall be supported

* O-RAN FH
  + Control, User and Synchronization Plane Specification [2]
  + Management Plane Specification [3]
  + Management Plane Yang Models [4]
* eCPRI
  + eCPRI Specification V1.0 "Common Public Radio Interface: eCPRI Interface Specification" [11]

It is important to ensure that all DUTs (O-DU and O-RU) and Testing Tools use compatible release/version of the O-RAN FH and eCPRI specifications [11] which in this version of the WG4 FH IOT Specification is ensured by use of the same version.

* 3GPP
  + Release 15 December 2018 and later versions specifications

It is important to ensure that all DUTs (O-DU and O-RU) and Testing Tools use compatible release/version of the 3GPP specifications, which in this version of the WG4 FH IOT Specification is ensured by use of the same version.

#### 2.1.1.7 Interoperability (IOT) Test Profiles

The IOT Profiles are included in Annex A. Additional Profiles will be added in future releases of WG4 FH IOT Specification.

Interoperability tests will usually follow the IOT Profile Test Configurations specified in Annex A. However, there may be cases where the precise values of parameters in any IOT Profile Test Configuration cannot be used, perhaps due to equipment limitations or licensing rules. For example, a tester may only be licensed to utilize 90MHz of spectrum, for which no relevant IOT Profile Test Configuration is defined. In such a case the tester may choose to define a Customized IOT Configuration which will generally be similar to a defined IOT Profile Test Configuration but with some variations in parameter values. For example, a tester may choose to define a Customized IOT Configuration that would fall under the "NR-TDD-FR2-CAT-A-ABF" IOT Profile but use five 100MHz component carriers, which is not defined in any of the IOT Profile Test Configurations under the "NR-TDD-FR2-CAT-A-ABF" IOT Profile.

Normally when reporting the result of an interoperability test, the tester may cite only the IOT Profile Test Configuration name (along with the relevant version of the present document containing the IOT Profile Test Configuration definition), which can be used to understand the full test situation by consulting Annex A. In the case of reporting the results of an interoperability test using a Customized IOT Configuration, the tester should also provide a complete list of parameter values to allow a reader to understand the full test situation.

Table A-1 identifies whether a particular IOT profile parameter is modifiable or forbidden in definition of a Customized IOT Configuration.

#### 2.1.1.8 Measurements of interest

* Availability (eg, are the DUTs in service)
* Accessibility (eg, can the device connect to the network)
* Retainability (eg, can the device connection be maintained)
* Mobility (eg, moving between two O-RUs)
* Integrity (eg, data transfers between the device and the network)

### 2.1.2 Standard Test Data Configurations

The test data configurations are specified as part of the IOT profiles in Annex A.

### 2.1.3 Standard Test Execution

Most interoperability tests will follow a standard execution plan although individual tests are expected to deviate from this in some way. By defining the standard execution plan an understanding of how tests are arranged can be gained, thereafter examining individual tests can reveal how deviations from the standard execution plan may be defined.

## 2.2 Interoperability Test Cases

As stated in the introduction, interoperability involves testing the FH interface in terms of M-Plane, S-Plane, C-Plane and U-Plane. Some aspects of these planes may be tested independently. However, some tests, such as those that require the devices to be brought into service and a call established entail simultaneous activity across multiple planes

Each interoperability test provides 1) test description and applicability, 2) the minimum requirements and prerequisites listing required testing tools as required, 3) test purpose and scope, 4) testability requirements imposed on the O-RU and O-DU, 5) test methodology with procedural description as required, 7) the test requirement and expected test result.

Failure conditions are not addressed.

The following set of IOT cases are defined in this document.

M-Plane IOT Test

1. Startup Installation: O-DU and O-RU getting in Service

S-Plane IOT Tests

1. Functional test of O-DU + O-RU using ITU-T G.8275.1 profile (LLS-C1)
2. Functional test of O-DU + bridged network + O-RU using ITU-T G.8275.1 profile (LLS-C2)
3. Functional test of O-DU + bridged network + O-RU using ITU-T G.8275.1 profile (LLS-C3)
4. Performance test of O-DU + Two O-RUs using ITU-T G.8275.1 profile (LLS-C1)
5. Performance test of O-DU + bridged network + Two O-RUs using ITU-T G.8275.1 profile (LLS-C2)
6. Performance test of O-DU + bridged network + Two O-RUs using ITU-T G.8275.1 profile (LLS-C3)

C/U-Plane IOT Tests

1. Radio Layer 3 C-Plane establishment and Initial Radio U-Plane data transfer
2. Radio U-Plane downlink data transfer (Downlink throughput performance)
3. Radio U-Plane uplink data transfer (Uplink throughput performance)

C/U-Plane Delay Management Test

1. Test with minimum fronthaul latency
2. Test with maximum fronthaul latency
3. Test with a fronthaul latency value between maximum and minimum
4. Test larger fronthaul latency then supported

### 2.2.1 M-Plane IOT Test

The M-Plane IOT test for hierarchical mode is described in Section 2.2.1.1 and the respective test for hybrid mode is described in Section 2.2.1.2. Two IOT profiles are defined for each mode, the first addressing IPv4 with SSH and the second addressing IPv6 with a choice of SSH or TLS. In this version of the specification NMS operation in hybrid mode is limited to read-only operation.

#### 2.2.1.1 Start-up in hierarchical mode

##### 2.2.1.1.1 Test Description and Applicability

This test case is MANDATORY.

The DUT is composed of single O-DU and single O-RU.

Test scenario refers to Chapter 6 "Start-up" in hierarchical architecture for M-Plane [3].

##### 2.2.1.1.2 Minimum Requirements (Prerequisites)

Single O-DU (DUT1(O-DU)) and a single O-RU (DUT1(O-RU))

1. Are connected through the O-RAN FH

Assumptions which are required for this test scenario

1. DHCP server is configured for test purposes (either function served by O-DU or external DHCP server with O-DU or router as relay - that should have no impact on test scenario). In case of external DHCP server, Configuration of DHCP server and DHCP procedures are excluded from validation of IOT.
2. IPv4 and IPv6 are conditional mandatory from v07 of [3] and either IPv4 or IPv6 transport connection for M-Plane is used in this test.
3. A combination of VLAN identity and MAC address is only used for C/U- Plane connectivity.
4. Network between O-DU and O-RU allows for connectivity between actors.
5. O-RU has account configured with sudo access privilege. O-DU knows credentials of sudo account available at O-RU.
6. Appropriate software file for O-RU is pre-installed in O-RU and corresponding manifest.xml is located in O-DU. No software upgrade is required during startup test sequence of O-RU for this IOT test case.

Testing tools which are required for this test scenario

* FH Protocol Analyzer monitoring traffic between O-DU and O-RU is used for validation of M-Plane procedural flows and contents of messages prior to the establishment of the SSH/TLS connection for M-Plane and when certain procedures do not use encryption (eg, loopback messages and responses of IEEE 802.1Q).

##### 2.2.1.1.3 Test Purpose and Scope

Purpose of this test is to validate the startup sequence of O-RU and the interface to DHCP server and NETCONF client in O-DU for the start-up scenario.

The detailed steps outlined in this test case are for informational purposes and can be useful for troubleshooting purposes in the event that the test case fails. Procedures which are not encrypted can be observed with the FH Protocol Analyzer for validation of the test progress.

Notwithstanding this being an M-Plane test, correct evaluation of the success of the M-Plane operation requires also that the fronthaul C-Plane and U-Plane also be operational, at least in the DL direction.

##### 2.2.1.1.4 Testability requirements imposed on O-RU and O-DU

The appropriate software runs on the O-RU and O-DU for the test purpose.

##### 2.2.1.1.5 Methodology and Initial Conditions

1. There is physical connectivity between O-RU and O-DU
2. O-DU is powered up and in service or running
3. DHCP server is connected and available
4. O-RU is powered up for this start-up test scenario
5. The credential information (per the used M-Plane IOT profile) is commonly pre-installed in O-DU and O-RU as one of test assumptions in 2.2.1.1.2.

##### 2.2.1.1.6 Procedure: M-Plane start up test

###### 2.2.1.1.6.1 Step: Transport layer initialization

1. Depending on initial condition - either power-on to O-RU or physical network connection is enabled between O-RU and O-DU.
2. FH Protocol Analyzer observation: DHCP Discovery coming from O-RU's MAC address

Note: message is sent as part of VLAN scan procedure, hence it can be in serial sequence "VID after VID with timer in between" or in parallel sequence "burst to subset of VIDs, timer, another burst to different subset of VIDs". FH Protocol Analyzer confirms that the O-RU includes an appropriate option in the DHCP DISCOVER per the used IOT profile.

1. FH Protocol Analyzer observation: VLAN scan continues until response from DHCP server is received.
2. FH Protocol Analyzer observation: O-RU continues DHCP procedure using only the VID on which response from DHCP server has been received.
3. FH Protocol Analyzer observation: DHCP procedure is finished by DHCP Acknowledgement message sent towards O-RU. As a result of DHCP procedure, O-RU obtains its own IP details plus IP per the used IOT profile of corresponding NETCONF Client in O-DU.

###### 2.2.1.1.6.2 Step: RU calls home to NETCONF client (TCP connection establishment)

1. FH Protocol Analyzer observes Call Home - a TCP session establishment initiated by O-RU towards O-DU per the used IOT profile

###### 2.2.1.1.6.3 Step: SSH/TLS Secure connection establishment

1. SSH session/TLS connection establishment initiated by O-DU towards O-RU.

###### 2.2.1.1.6.4 Step: NETCONF Capability discovery

1. NETCONF Hello message sent by O-RU towards O-DU. The message exposes capability of ietf-yang-library
2. NETCONF Hello message sent by O-DU towards O-RU
3. <rpc><get> message sent by O-DU to O-RU. The <rpc><get> has < yang-library xlsnm = "urn:ietf:params:xml:ns:yang:ietf-yang-library"> subtree filter imposed
4. <rpc><reply> message sent by O-RU to O-DU. The message contains content of leaf "yang-library" of ietf-yang-library.yang module

###### 2.2.1.1.6.5 Step: Optional provisioning of new management accounts

Note: this step is intentionally omitted as pre-provisioned O-RU is expected for IOT (meaning: no need to perform optional step and configure supplementary management accounts).

###### 2.2.1.1.6.6 Step: Initial process of NETCONF Subscribe for each stream

1. NETCONF "create-subscription" RPC message(s) sent by O-DU towards O-RU. Number of NETCONF subscriptions is up to O-DU.

Note: O-DU can subscribe itself to default event stream or to specific streams of events. In case no subscription to default stream is performed, then O-DU shall subscribe itself at least to event streams "supervision-notification" and "alarm-notif". Subscription to other streams is optional, however not prohibited.

1. NETCONF "create-subscription" RPC Reply messages sent by O-RU for each RPC message

###### 2.2.1.1.6.7 Step: Supervision of NETCONF connection

1. Periodic sequence of NETCONF messages:
   1. supervision-notification sent by O-RU towards O-DU
   2. RPC supervision-watchdog-reset sent by O-DU towards O-RU
   3. RPC reply sent by O-RU towards O-DU

Note: in above sequence following timers shall be respected: "supervision-notification-interval", "guard-timer-overhead" sent as parameters in RPC supervision-watchdog-reset (O-DU -> O-RU) and "next-update-at" sent as parameter in RPC reply (O-RU -> O-DU).

###### 2.2.1.1.6.8 Step: Retrieval of O-RU information and Additional configuration

1. O-DU sends <rpc><get><filter="subtree"> to get each yang module listed in ietf-yang-library.yang in O-RU, for example
   * ietf-hardware augmented by o-ran-hardware
   * ietf-interface augmented by o-ran-interfaces
   * o-ran-operations
   * o-ran-transceiver
   * o-ran-sync
   * o-ran-mplane-int
   * o-ran-lbm
   * o-ran-performance-management
   * o-ran-delay-management
   * o-ran-module-cap
   * o-ran-alarm-id
   * o-ran-fan
   * o-ran-supervision
   * o-ran-user mgmt
2. O-RU responds with <rpc-reply><data> for each yang module per <rpc><get>
3. O-DU sends <rpc><edit-config> to each configurable yang module for additional configuration to O-RU whenever it is necessary
4. O-RU responds with <rpc-reply><ok/>

Note: The configurable yang modules are o-ran-sync, o-ran-lbm, o-ran-operations and others (up to O-DU implementation) except o-ran-uplane-conf, o-ran-processing-element, ietf-interface augmented by o-ran-interfaces. Additional configuration of step 3 and 4 can be examined between Chapters 2.2.1.1.6.9 and 2.2.1.1.6.10.

###### 2.2.1.1.6.9 Step: Software management

1. O-DU sends <rpc><get><filter="subtree"> to get o-ran-software-management.yang
2. O-RU responds with <rpc-reply><data> for <software-inventory>< software-slot>. At least 2 slots are contained in software-inventory

Note: software update is not applied as the pre-condition that appropriate software file for O-RU is pre-installed in O-RU and corresponding manifest.xml is located in O-DU.

###### 2.2.1.1.6.10 Step: C/U-Plane transport connectivity check between O-DU and O-RU

1. O-DU configures by <rpc><edit-config> vlan-id for the usage of C/U-Plane in ietf-interface augmented by o-ran-interfaces to O-RU. O-RU responds with <rpc-reply><ok/>
2. O-DU sends loopback message to O-RU with MAC address and vlan-id periodically. The O-RU MAC address and vlan-id used in LBM is same as the one that set in ietf-interface augmented by o-ran-interfaces.
3. O-RU sends loopback response to O-DU per received loopback message respectively

###### 2.2.1.1.6.11 Step: U-Plane configuration between O-DU and O-RU

1. O-DU sends <rpc><get><user-plane-configuration> to determine the presence of following instances: multiple static-low-level-[tr]x-endpoints, multiple [tr]x-arrays and the relations between them. O-RU replies <rpc-reply><data> including key information on number of endpoints, band number, number of arrays and polarization.
2. O-DU sends <rpc><edit-config> to create low-level-[tr]x-endpoints, with the same name as static-low-level-[tr]x-endpoints. The NETCONF Client is responsible for assigning unique values to the "eaxc-id" addresses of all low-level-rx-endpoint elements and low-level-tx-endpoint elements, within the O-RU when operating in the same direction (Tx or Rx), even when these operate across different named interfaces of the O-RU. Number of instances of low-level-[tr]x-endpoints depend on contents of selected test profile, eg, for number of CCs. It may be less than number of instances of static-low-level-[tr]x-endpoints. O-RU replies <rpc-reply><ok/></rpc-reply>.
3. O-DU sends <rpc><edit-config> to create [tr]x-array-carriers. Number of created instances of [tr]x-array-carriers is equivalent to number of CCs times number of arrays, where number of CCs is defined by operator. Appropriate values are configured to absolute-frequency-center, channel-bandwidth, gain, and so on. In provided configuration the value of leaf "active" is set as 'INACTIVE' (or leaf is omitted in configuration and O-RU uses its default value 'INACTIVE') for all just created [tr]x-array-carriers. O-RU replies <rpc-reply><ok/></rpc-reply>.
4. O-DU sends <rpc><edit-config> to create processing-elements related to interfaces offering access to desired endpoints. The key information such as MAC address is configured according to selected transport flow, eg, o-ru-mac-address, o-du-mac-address and vlan-id for C/U-Plane in case of Ethernet flow. O-RU replies <rpc-reply><ok/></rpc-reply>.
5. O-DU sends <rpc><edit-config> to create low-level-[tr]x-link(s) to make relationship between low-level-[tr]x-endpoint(s), [tr]x-array-carriers and processing elements belonging to transport. The number of instance(s) for low-level-[tr]x-links is equivalent to that of instance(s) of low-level-[tr]x-endpoints.

###### 2.2.1.1.6.12 Step: Fault Management activation

1. O-DU sends <rpc><get><filter="subtree"> to get o-ran-fm.yang
2. O-RU responds with <rpc-reply><data> for <active-alarm-list><active-alarms>

Note: subscription to NETCONF default event stream fulfils the condition to signal notification alarm-notif when O-RU detects any alarm.

###### 2.2.1.1.6.13 Step: Performance measurement activation (if required at start-up timing)

Note: Step for Retrieval of O-RU information may cover the configuration of o-ran-performance-management.yang if it is required at start-up installation timing.

###### 2.2.1.1.6.14 Step: Retrieval of O-RU state, including synchronization information, from O-RU

If O-DU already knows at the moment this step is going to be performed (eg, from notification "synchronization-state-change"), that "sync-state" of O-RU is 'LOCKED', O-DU may skip this step.

S-Plane has to be operational.

1. O-DU sends <rpc><get><sync> to O-RU
2. S-Plane in O-RU has been locked, sends <rpc-reply><data> <sync-status><sync-state> LOCKED

###### 2.2.1.1.6.15 Step: Configuring the O-RU operational parameters: carrier activation

S-Plane has to be operational (sync-state != FREERUN, preferable sync-state = LOCKED) prior to running this step

1. O-DU sends <rpc><edit-config> to perform activation by setting the value of the parameter "active" at [tr]x-array-carriers to "ACTIVE". O-RU sends <rpc-reply><ok/>
2. O-RU sends notification [tr]x-array-carriers-state-change that indicates all [tr]x-array-carriers' names with "state" = "READY"

Note: C/U-Plane service is available at this step.

##### 2.2.1.1.7 Test Requirement (expected result)

Observe that both the O-DU and O-RU get in service successfully by monitoring correct transmission of synchronization signals and broadcast channel (ie, PSS/SSS and PBCH for LTE and SSB for NR).

Record downlink carrier frequency (EARFCN for LTE as specified in 3GPP TS 36.104 [12] and GSCN/NR-ARFCN for NR as specified in 3GPP TS 38.104 [13]), cell (PCI for LTE and for NR as specified in 3GPP TS 36.211 [14] and TS 38.211 [15], respectively) and system information (MIB for LTE and NR as specified in 3GPP TS 36.331 [16] and TS 38.331 [17], respectively). In case that beam sweeping is applied to SSB, system information should be recorded for each of the SSB indices detected.

The parameter values for downlink carrier frequency, cell, system information and SSB indices are part of the radio test setup configuration. This test is considered successful if the recorded measurements values match up with the values which are used for the radio test setup configuration.

##### 2.2.1.1.8 Test Report (Failure)

If the test case fails, vendor specific methods will be relied on to assist with troubleshooting the root cause(s) which led to the failure. The steps outlined in this test case can be used to guide the troubleshooting process.

#### 2.2.1.2 Start-up in hybrid mode

##### 2.2.1.2.1 Test Description and Applicability

This test case is conditional MANDATORY. The condition is, the O-DU supports hybrid M-Plane deployment.

The DUT is composed of single O-DU, a single O-RU and a single NMS.

Test scenario refers to Chapter 5.1.2 "M-Plane Architectural Model" and Chapter 6 "Start-up" in hybrid architecture for M-Plane [3]. As per M-Plane Chapter 5.1.2, all compliant O-RUs shall be able to support both hierarchical and hybrid deployment. If the O-DU supports hybrid M-Plane deployment, the testing of hybrid use case shall therefore include being able to demonstrate that an O-RU is able to support simultaneous NETCONF sessions to the O-DU and NMS. In order to ensure limited impacts to the baseline hierarchical O-DU to NMS configuration management tasks, in this test the second NETCONF client associated with "nms" user privileges is limited to demonstrating that it is able to retrieve the configuration and operational state from an O-RU which has been configured by an O-DU.

##### 2.2.1.2.2 Minimum Requirements (Prerequisites)

Single O-DU (DUT1(O-DU)), a single O-RU (DUT1(O-RU)) and a single NMS (DUT1(NMS).

1. Are connected through the O-RAN FH

Assumptions which are required for this test scenario

1. DHCP server is configured for test purposes (either function served by O-DU or external DHCP server with O-DU or router as relay - that should have no impact on test scenario). In case of external DHCP server - Configuration of DHCP server and DHCP procedures are excluded from validation of IOT.
2. IPv4 and IPv6 are conditional mandatory from v07 of [3] and either IPv4 or IPv6 transport connection for M-Plane is used in this test.
3. A combination of VLAN identity and MAC address is used for C/U- Plane connectivity.
4. A common VLAN is used for M-Plane connectivity between the O-RU and O-DU and between the O-RU and the NMS.
5. Network between O-DU and O-RU and between NMS and O-RU allows for connectivity between actors.
6. An account user-name has been configured for group "nms" access control privileges in a previous O-DU/O-RU testing step as specified in sub-section 2.2.1.1.6.5.
7. O-RU has two accounts configured. One account has sudo access privilege with credentials used by the O-DU. The other account has nms access privilege and the credentials used by the NMS.
8. Appropriate software file for O-RU is pre-installed in O-RU and corresponding manifest.xml is located in O-DU. No software upgrade is required during startup test sequence of O-RU for this IOT test case.
9. An NMS is configured for supporting NETCONF Call Home functionality.

Testing tools which are required for this test scenario

* FH Protocol Analyzer monitoring traffic between O-DU and O-RU and between NMS and O-RU is used for validation of M-Plane procedural flows and contents of messages prior to the establishment of the SSH connection for M-Plane and when certain procedures do not use encryption (eg, loopback messages and responses of IEEE 802.1Q).

##### 2.2.1.2.3 Test Purpose and Scope

Purpose of this test is to validate the startup sequence of O-RU and the interface to DHCP server and NETCONF clients in the O-DU and NMS for the start-up scenario. As described in [3], all O-RUs supporting the M-Plane specification shall support multiple NETCONF sessions, and hence all compliant O-RUs shall be able to support both hierarchical and hybrid deployment.

The detailed steps outlined in this test case are for informational purposes and can be useful for troubleshooting purposes in the event that the test case fails. Procedures which are not encrypted can be observed with the FH Protocol Analyzer for validation of the test progress.

Notwithstanding this being an M-Plane test, correct evaluation of the success of the M-Plane operation requires also that the fronthaul C-Plane and U-Plane also be operational, at least in the DL direction.

##### 2.2.1.2.4 Testability requirements imposed on O-RU, O-DU and NMS

The appropriate software runs on the O-RU, O-DU and NMS for the test purpose.

##### 2.2.1.2.5 Methodology and Initial Conditions

1. There is physical and or logical connectivity between O-RU and O-DU and between the O-RU and NMS
2. O-DU and NMS are powered up and in service or running
3. DHCP server is connected and available
4. O-RU is powered up for this start-up test scenario
5. The credential information (per the used M-Plane IOT profile) is configured on the O-RU according to one of test assumptions listed in in 2.2.1.2.2.

##### 2.2.1.2.6 Procedure: M-Plane start up test

###### 2.2.1.2.6.1 Step: Transport layer initialization

1. Depending on initial condition - either power-on to O-RU or physical or logical network connection is enabled between O-RU and O-DU/NMS.
2. FH Protocol Analyzer observation: DHCP Discovery coming from O-RU's MAC address

Note: message is sent as part of VLAN scan procedure, hence it can be in serial sequence "VID after VID with timer in between" or in parallel sequence "burst to subset of VIDs, timer, another burst to different subset of VIDs". FH Protocol Analyzer confirms that the O-RU includes an appropriate in the DHCP DISCOVER per the used IOT profile.

1. FH Protocol Analyzer observation: VLAN scan continues until response from DHCP server is received.
2. FH Protocol Analyzer observation: O-RU continues DHCP procedure using only the VID on which response from DHCP server has been received.
3. FH Protocol Analyzer observation: DHCP procedure is finished by DHCP Acknowledgement message sent towards O-RU. As a result of DHCP procedure, O-RU obtains its own IP details plus IP of corresponding NETCONF Clients in O-DU and in NMS per used IOT profile.

###### 2.2.1.2.6.2 Step: RU calls home to discovered NETCONF client (TCP connection establishment)

1. FH Protocol Analyzer observes Call Home - a TCP session establishment initiated by O-RU towards O-DU per used IOT profile
2. FH Protocol Analyzer observes Call Home - a TCP session establishment initiated by O-RU towards NMS per used IOT profile

###### 2.2.1.2.6.3 Step: SSH/TLS Secure connection establishment

1. SSH session/TLS connection establishment initiated by O-DU towards O-RU using sudo account privilege.
2. SSH session/TLS connection establishment initiated by NMS towards O-RU using nms account privilege.

###### 2.2.1.2.6.4 Step: NETCONF Capability discovery

1. NETCONF Hello message sent by O-RU towards NETCONF clients (O-DU and NMS). The message exposes capability of ietf-yang-library
2. NETCONF Hello message sent by NETCONF clients (O-DU and NMS) towards O-RU.
3. <rpc><get> message sent by NETCONF clients (O-DU and NMS) to O-RU. The <rpc><get> has <yang-library xlsnm = "urn:ietf:params:xml:ns:yang:ietf-yang-library"> subtree filter imposed
4. <rpc><reply> message sent by O-RU to NETCONF Clients (O-DU and NMS). The message contains content of leaf "yang-library" of ietf-yang-library.yang module

###### 2.2.1.2.6.5 Step: Optional provisioning of new management accounts

Note: this step is intentionally omitted as pre-provisioned O-RU is expected for IOT (meaning: no need to perform optional step and configure supplementary management accounts).

###### 2.2.1.2.6.6 Step: Initial process of NETCONF Subscribe for each stream

1. NETCONF "create-subscription" RPC message(s) sent by O-DU towards O-RU. Number of NETCONF subscriptions is up to O-DU.

Note: O-DU can subscribe itself to default event stream or to specific streams of events. In case no subscription to default stream is performed, then O-DU shall subscribe itself at least to event streams "supervision-notification" and "alarm-notif". Subscription to other streams is optional, however not prohibited.

1. NETCONF "create-subscription" RPC Reply messages sent by O-RU for each RPC message

Note: subsequent steps use the NMS to retrieve the configuration and operational state of the O-RU and are performed after step 2.2.1.1.6.7 through 2.2.1.1.6.15 that complete O-RU start-up.

###### 2.2.1.2.6.7 Step: NMS retrieval of O-RU information and Additional configuration

1. NMS sends <rpc><get><filter="subtree"> to get each yang module listed in ietf-yang-library.yang in O-RU, with the exception of o-ran-usermgmt and o-ran-supervision, for example

ietf-hardware augmented by o-ran-hardware

ietf-interface augmented by o-ran-interfaces

o-ran-operations

o-ran-transceiver

o-ran-sync

o-ran-mplane-int

o-ran-lbm

o-ran-performance-management

o-ran-delay-management

o-ran-module-cap

o-ran-uplane-conf

o-ran-alarm-id

o-ran-fan

1. O-RU responds with <rpc-reply><data> for each yang module per <rpc><get>

##### 2.2.1.2.8 Test Requirement (expected result)

Observe that the O-RU calls home to both the O-DU and NMS and then is able to establish simultaneous NETCONF sessions between the O-RU and O-DU and between the O-RU and NMS.

Observe that the NMS is able to retrieve configuration and operational state from models to which it does have NACM read privileges.

##### 2.2.1.2.9 Test Report (Failure)

If the test case fails, vendor specific methods will be relied on to assist with troubleshooting the root cause(s) which led to the failure. The steps outlined in this test case can be used to guide the troubleshooting process.

##### 2.2.1.2.10 Supplementary test: NETCONF Access Control (Failure)

This is a supplementary test to verify correct handling of NMS read attempt with incorrect privilege per 2.2.1.2.6.7.

1. The NETCONF client in the NMS attempts to read user accounts provisioned on the O-RU. The NMS sends <rpc><get><filter="subtree"> to get the configuration and operational state for the o-ran-usermgmt yang module.
2. O-RU responds with <rpc-error> response with "access-denied".

Expected result is to that an O-RU will deny access to an NMS that tries to read configuration and/or operational state from models to which it does not have NACM privileges.

If the test case fails, that is access is granted, vendor specific methods will be relied on to assist with troubleshooting the root cause(s) which led to the failure.

### 2.2.2 S-Plane IOT Test

This Section describes system level tests that are used to validate both S-Plane functionality and S-Plane performance between O-DU and O-RU from different vendors connected using the O-RAN WG4 FH interface specified in [2] and the O-RAN WG4 M-Plane interface specified in [3].

S-Plane functionality is determined by retrieval of the O-DU and O-RU synchronization state using the M-Plane or NMS as appropriate, whereas, S-Plane performance is determined by over-the-air (OTA) measurements or conductive (ie, a cabled electrical connection to the DUT's radio interface) measurements of O-RU synchronization signal.

This Section provides a common high-level list of the items that are expected to be covered in order to validate interoperability with the relevant standard, both functional and performance aspects are addressed:

* The tests apply to both 4G(LTE) and 5G(NR) and are applicable to all O-RAN IOT profiles listed in Annex A
* The O-RAN WG4 CUS Specification [2] Section validated is ?11.3.2
* SyncE Master test case is optional and only valid when the SyncE clock (eg, Implemented in the O-RU) takes advantage of it. Therefore, the related SyncE Master test cases are optional
* Several test cases involve configuring the O-DU or O-RU
* M-Plane connection is established, meaning whole protocol stack ETH/IP/TCP/SSH/TLS is up and running, Capabilities are exchanged between NETCONF Client and Server, Subscriptions to notifications are created
  + Several test cases involve the configuration and collection of status of T-BC. However, as this is not specified in the Management Plane Specification [3], the parts of the tests below that require such functionality are FFS in this release of the specification
  + Further work needs to be done to align and refine the definition of the states in the O-RAN WG4 CUS Specification [2] and M-Plane [3] specifications for the next releases

At least one of the synchronization options (LLS-C1, LLS-C2, LLS-C3 or LLS-C4), depending on the relevant O-RAN deployment as described in Clause 1.5.3, shall be tested for functionality and performance.

The following bulleted notes apply specifically to S-Plane IOT functional tests in addition to the general notes above,

* Tests shall be done in the lab at constant temperature
* Test equipment is needed to generate a reference S-Plane signal
* For validation of synchronization information, use the FH M-Plane interface for the O-RU, and other interfaces such as NMS for O-DU
* Retrieving sync-state of O-DU using the NMS is FFS in this version of the specification
* O-RU reports over M-Plane the degraded received clock-class and clock-accuracy as well as locked state; details are for further study
* With the exception of lls-C1, that doesn't include any T-BC in the fronthaul link, the test configuration shall use from 1 up to the maximum number of T-BCs specified for performance test, as set out in the performance test specific notes set out below, according to the preference of the tester

The following bulleted notes apply specifically to S-Plane IOT performance tests in addition to the general notes above,

* All tests should be done in lab under constant and variable C/U plane profile. The variable C/U-Plane profile (for example similar to the test case 13 shown in figure VI.11 of ITU-T G.8261 [10]) should be defined for this test
* A previous version of this document (v 1.00) contained a requirement to perform the IOT performance tests under variable temperature conditions. That requirement was removed, and instead replaced with the following text that was also used in the Conformance Test Specification [24]: The thermal profile is not defined. The tests are defined to be run at a constant temperature, but the thermal profile choice and range is left as a decision for the vendor
* Use the maximum number of T-BC devices as shown in O-RAN WG4 CUS Specification [2] in Annex H

Note: Annex H includes example deployment cases that capture the influence of factors including, target end-to-end timing error requirement, clock type used in the network, and characteristics of the O-RU clock. Additional cases are for further study including, addressing O-RUs with different levels of clock performance, and different noise accumulation models etc

* The acceptance criterion for the tests is to satisfy the 3GPP OTA TAE limits specified in 3GPP TS 36.141 [18] for 4G(LTE) and 38.141-2 [19] for 5G(NR), and summarized in eCPRI [11] and ITU-T G.8271 [7]. The particular conditions applicable to each test are set out in the relevant sections below

To perform the IOT S-Pane tests, following test set ups (Figure 2.5, 2.6 and 2.7) are proposed. The selection of the test setup is dependent on the configuration mode lls-C1, lls-C2, or lls-C3. This version of the document does not cover lls-C4:

* Each diagram covers both functional test and performance test of the respective synchronization configuration mode. The main difference between the setups for functional and performance test is the need for a measurement equipment at the radio interface for performance test as indicated in previous paragraphs.
* Each setup gives the option to select different types of S-Plane signals for the input of the O-DU. The selection of the option depends on the capability of the O-DU and operator's synchronization architecture. In lls-C3 mode, the O-DU has the option of selecting a master through its fronthaul interface or directly connecting to a T-GM.
* T-GM via a midhaul network (for ls-C1 or lls-C2) or a fronthaul network (for lls-C3) over an Ethernet interface with PTP and SyncE (if applicable)
* T-GM over an Ethernet interface with PTP and SyncE (if applicable)
* PRTC: 1pps according to ITU-T G.703, 10MHz, and ToD according to G.8271 Annex A or any other proprietary ToD decoding specification supported by the O-DU
* GNSS: RF input directly from an antenna used for GNSS signal reception
* The measurement equipment has to be synchronized with the DUT, thus the need for a line arriving at the measurement equipment.
* The arrows in these diagrams represent the direction of S-Plane messages (from master to subordinate), or from any source synchronization signal to the receiver.

![](../assets/images/e9a8de17f107.png)

**Figure 2-5: Test setup for lls-C1**

![](../assets/images/a9ae627efe1a.png)

Figure 2-6: Test setup for lls-C2

![](../assets/images/67c7b3de4d14.png)

Figure 2-7: Test setup for lls-C3

#### 2.2.2.1 Functional test of O-DU + O-RU using ITU-T G.8275.1 profile (LLS-C1)

##### 2.2.2.1.1 Test Description and Applicability

This test case is CONDITIONAL MANDATORY and shall be performed if the O-RU and O-DU declare support of LLS-C1 synchronization option (see Clause 1.5.3).

This test validates that O-RU is synchronizing from an O-DU that incorporates a PTP grand master and SyncE Master with ITU-T G.8275.1 [5] profile and is traceable to a PRTC.

This test involves one O-DU and one O-RU.

##### 2.2.2.1.2 Minimum Requirements (Prerequisites)

1. O-RU is connected to O-DU via direct fiber O-RAN links.
2. The O-DU is connected to a PRTC traceable time source, directly (GNSS Receiver either embedded or connected to the O-DU) or via PTP, as described in Conformance Test Specification [24].

##### 2.2.2.1.3 Purpose and Scope

The O-RU is synchronizing from the O-DU with the ITU-T G.8275.1 [5] profile. This test case validates the correct synchronization status of the O-RU.

##### 2.2.2.1.4 Testability Requirements imposed on O-RU and O-DU

Requirements for M-Plane: is properly operating (as specified in 2.2.1.1).

Synchronization requirement: O-DU is connected to a local or remote PRTC.

##### 2.2.2.1.5 Test Methodology

These tests use the O-RAN M-Plane and O-DU NMS features.

The O-DU acts as a PTP master compliant with the ITU-T G.8275.1 [5] profile.

Three conditions shall be covered:

* startup
* nominal
* degraded

###### 2.2.2.1.5.1 Procedure: Startup conditions

1. Not yet configured.

External frequency and time source are available to the O-DU and deliver nominal status

O-DU is not yet configured to select the time source and align its frequency and time to it

O-DU not yet configured to act as PTP master on the FH ports

1. Configured.

O-DU is configured to align to the selected frequency and time source

1. Until disciplining

Until O-DU disciplining of the frequency and time to the selected source has completed, Startup conditions persists

The O-RUs are configured to synchronize from PTP in ITU-T G.8275.1 [5] profile and report their status

###### 2.2.2.1.5.2 Procedure: Nominal conditions

1. O-DU is configured to start acting as a PTP master compliant with the ITU-T G.8275.1 [5] profile on selected FH ports.
2. O-DU acts as a PTP grand master or as a boundary clock with ports towards the FH interface in Master state, compliant with the ITU-T G.8275.1 [5] profile advertising "nominal" status.
3. O-DU reports status, acting as PTP master clock towards the FH interface.

###### 2.2.2.1.5.3 Procedure: Degraded conditions

1. O-DU is configured to enter HOLDOVER based on local oscillator frequency.
2. O-DU acts as configured clock, with PTP ports in master state, compliant to ITU-T G.8275.1 profile advertising HOLDOVER status with degraded clockClass and clockAccuracy as specified by ITU-T G.8275.1 [5].
3. O-DU is configured to exit HOLDOVER and resumes normal frequency and phase disciplining using the source.
4. O-DU acts as configured clock, with PTP ports towards the FH interface in master state compliant to ITU-T G.8275.1 [5] in "nominal" status.

##### 2.2.2.1.6 Test Requirements (expected results)

###### 2.2.2.1.6.1 Startup conditions

The acceptance criterion is that the following status is observed for steps 1 to 3 (2.2.2.1.5.1 above):

* the FREERUN sync-state of the O-RU using the M-Plane
* the UNLOCKED PTP lock-state of the O-RU using the M-Plane
* the UNLOCKED SyncE lock-state of the O-RU using the M-Plane (optional)
* the FREERUN sync-state of the O-DU using the NMS

###### 2.2.2.1.6.2 Nominal conditions

The acceptance criterion is that the following status is observed for steps 1 to 3 (2.2.2.1.5.2 above):

* the LOCKED sync-state of the O-DU using the NMS
* the received PTP clockClass level of the O-RU using the M-Plane
* the received SyncE SSM level of the O-RU using the M-Plane (optional)
* the LOCKED sync-state of the O-RU using the M-Plane
* the LOCKED PTP lock-state and PARENT PTP state of the O-RU using the M-Plane
* the LOCKED SyncE lock-state and OK or PARENT SyncE state of the O-RU using the M-Plane (optional)

###### 2.2.2.1.6.3 Degraded conditions

The acceptance criterion is that the following status is observed for all steps 1 to 2 (2.2.2.1.5.3 above) (for steps 3 and 4, same criterion as "Nominal conditions" apply):

* the HOLDOVER sync-state of the O-DU using the NMS
* the received PTP clockClass level of the O-RU using the M-Plane
* the received SyncE SSM level of the O-RU using the M-Plane (optional). Note that if SyncE state is NOK, it is also permitted that the local default SSM level is reported using the M-Plane.
* the sync-state of the O-RU using the M-Plane is LOCKED if the received clockClass (or optional SSM QL) value matches the configured list of accepted values, otherwise HOLDOVER or FREERUN
* the PTP lock-state of the O-RU using the M-Plane is LOCKED,
  and the PTP state of the O-RU using the M-Plane is PARENT if the received clockClass matches the configured list of accepted values, otherwise NOK.
* the SyncE lock-state (optional) of the O-RU using the M-Plane is LOCKED or OK,
  and the SyncE state of the O-RU using the M-Plane is PARENT or OK if the received SSM matches the configured list of accepted values, otherwise NOK.

Note: If the NETCONF client triggers a reset procedure of the O-RU by FREERUN of the sync-state at these degraded conditions, the status observation using M-plane is not available for NETCONF client. It is observed that the alarm-notification is sent from the O-RU using M-Plane and the regular start-up procedures is performed.

#### 2.2.2.2 Functional test of O-DU + bridged network + O-RU using ITU-T G.8275.1 profile (LLS-C2)

##### 2.2.2.2.1 Test Description and Applicability

This test case is CONDITIONAL MANDATORY and shall be performed if the O-RU and O-DU declare support of LLS-C2 synchronization option (see Clause 1.5.3).

This test validates that O-RU is synchronizing from an O-DU via a chain of T-BC using ITU-T G.8275.1 [5] profile.

This test involves one O-DU, one O-RU and multiple T-BCs.

The configuration, management, and retrieval of status of the T-BC will be considered for a future release.

##### 2.2.2.2.2 Minimum Requirements (Prerequisites)

1. O-RU is connected to O-DU via a chain of T-BCs.
2. The T-BCs are class B. The subordinate port of the first T-BC is connected to O-DU. The master clock of the last T-BC is connected to the O-RU.
3. The O-DU is connected to a PRTC traceable time source, directly (GNSS Receiver connected to the O-DU) or via PTP.

##### 2.2.2.2.3 Purpose and Scope

The O-RU is synchronizing from the O-DU with the ITU-T G.8275.1 [5] profile over a bridged network that can deploy several T-BCs. This test case validates the correct synchronization status of the O-RU.

##### 2.2.2.2.4 Testability Requirements imposed on O-RU and O-DU

Requirements for M-Plane: is properly operating (as specified in 2.2.1.1).

Synchronization requirement: O-DU is connected to a local PRTC/source traceable to PRTC.

##### 2.2.2.2.5 Test Methodology

These tests use the O-RAN M-Plane and O-DU NMS features.

Three conditions shall be covered:

* startup
* nominal
* degraded

###### 2.2.2.2.5.1 Procedure: Startup conditions

1. Not yet configured.

External frequency and time source are available to the O-DU and deliver nominal status.

O-DU is not yet configured to select the time source and align its frequency and time to it.

O-DU not yet configured to act as PTP master on the FH ports.

1. Configured.

O-DU is configured to align to the selected frequency and time source.

1. Until disciplining

Until O-DU disciplining of the frequency and time to the selected source has completed, Startup conditions persists.

The O-RUs are configured to synchronize from PTP in ITU-T G.8275.1 [5] profile and report their status.

###### 2.2.2.2.5.2 Procedure: Nominal conditions

1. O-DU is configured to start acting as a PTP master compliant with the ITU-T G.8275.1 [5] profile on selected FH ports.
2. O-DU acts as a PTP grand master or as a boundary clock with ports towards the FH interface in Master state, compliant with the ITU-T G.8275.1 [5] profile advertising "nominal" status.
3. O-DU reports status, acting as PTP master clock towards the FH interface.

###### 2.2.2.2.5.3 Procedure: Degraded conditions

1. O-DU is configured to enter HOLDOVER based on local oscillator frequency.
2. O-DU acts as configured clock, with PTP ports in master state, compliant to ITU-T G.8275.1 profile advertising HOLDOVER status with degraded clockClass and clockAccuracy as specified by ITU-T G.8275.1 [5].
3. O-DU is configured to exit HOLDOVER and resumes normal frequency and phase disciplining using the source.
4. O-DU acts as configured clock, with PTP ports towards the FH interface in master state compliant to ITU-T G.8275.1 [5] in "nominal" status.

##### 2.2.2.2.6 Test Requirements (expected results)

###### 2.2.2.2.6.1 Startup conditions

The acceptance criterion is that the following status is observed for steps 1 to 3 (2.2.2.2.5.1 above):

* the FREERUN sync-state of the O-DU using the NMS
* the FREERUN sync-state of the O-RU using the M-Plane
* the UNLOCKED PTP lock-state of the O-RU using the M-Plane
* the UNLOCKED SyncE lock-state of the O-RU using the M-Plane (optional)

###### 2.2.2.2.6.2 Nominal conditions

The acceptance criterion is that the following status is observed for steps 1 to 3 (2.2.2.2.5.2 above):

* the LOCKED sync state of the O-DU using the NMS
* the LOCKED PTP lock-state of the O-DU using the NMS
* the "Master Enabled" SyncE status of the O-DU using the NMS (optional)
* the received PTP clockClass level of the O-RU using the M-Plane
* the received SyncE SSM level of the O-RU using the M-Plane (optional)
* the LOCKED sync-state of the O-RU using the M-Plane
* the LOCKED PTP lock-state and PARENT PTP state of the O-RU using the M-Plane
* the LOCKED SyncE lock-state and OK or PARENT SyncE state of the O-RU using the M-Plane (optional)
* the synchronization status of the deployed T-BC using the respective NMS

###### 2.2.2.2.6.3 Degraded conditions

The acceptance criterion is that the following status is observed for all steps 1 to 2 (2.2.2.2.5.3 above) (for steps 3 and 4, same acceptance criterion as "Nominal conditions" apply)

* the HOLDOVER sync-state of the O-DU using the NMS
* the received PTP clockClass level of the O-RU using the M-Plane
* the received SyncE SSM level of the O-RU using the M-Plane (optional). Note that if SyncE state is NOK, it is also permitted that the local default SSM level is reported using the M-Plane.
* the sync-state of the O-RU using the M-Plane is LOCKED if the received clockClass (or optional SSM QL) value matches the configured list of accepted values, otherwise HOLDOVER or FREERUN
* the PTP lock-state of the O-RU using the M-Plane is LOCKED,
  and the PTP state of the O-RU using the M-Plane is PARENT or OK if the received SSM matches the configured list of accepted values, otherwise NOK
* the SyncE lock-state (optional) of the O-RU using the M-Plane is LOCKED or OK,
  and the SyncE state of the O-RU using the M-Plane is PARENT or OK if the received SSM matches the configured list of accepted values, otherwise NOK

Note: If the NETCONF client triggers a reset procedure of the O-RU by FREERUN of the sync-state at these degraded conditions, the status observation using M-plane is not available for NETCONF client. It is observed that the alarm-notification is sent from the O-RU using M-Plane and the regular start-up procedures is performed.

#### 2.2.2.3 Functional test of O-DU + bridged network + O-RU using ITU-T G.8275.1 profile (LLS-C3)

##### 2.2.2.3.1 Test Description and Applicability

This test case is CONDITIONAL MANDATORY and shall be performed if the O-RU and O-DU declare support of LLS-C3 synchronization option (see Clause 1.5.3).

This test validates that both the O-DU and O-RU are synchronizing from a common PRTC via a chain of T-BCs using ITU-T G.8275.1 [5] profile.

This test involves one O-DU, one O-RU, a PRTC/T-GM and multiple T-BCs.

The configuration, management, and retrieval of status of the T-BC will be considered for a future release of the specification.

##### 2.2.2.3.2 Minimum Requirements (Prerequisites)

1. Both O-RU and O-DU are connected to a common PRTC via a chain of T-BCs that are either directly connected to a PRTC/T-GM in the FH network or are connected to another T-BC that is traceable to a PRTC.
2. The T-BCs are class B. The subordinate port of the first T-BC is connected to a PRTC/T-GM. The O-DU and O-RU are connected to master ports of either the same T-BC or different ones.

##### 2.2.2.3.3 Purpose and Scope

Both O-DU and O-RU are synchronized via a chain of T-BC from a common PRTC/T-GM located in the FH networks using ITU-T G.8275.1 [5] profile. This test case validates the correct synchronization status of the O-RU and O-DU.

##### 2.2.2.3.4 Testability Requirements imposed on O-RU, O-DU and bridged network

Requirements for M-Plane: is properly operating (as specified in 2.2.1.1)

Synchronization requirement: The T-BC is connected to a local PRTC or to another T-BC that is traceable to a PRTC.

##### 2.2.2.3.5 Test Methodology

These tests use the O-RAN M-Plane and O-DU NMS features.

Three conditions shall be covered:

* startup
* nominal
* degraded

###### 2.2.2.3.5.1 Procedure: Startup conditions

1. Not yet configured.

External frequency and time source are available to the PRTC/T-GM and deliver nominal status.

PRTC/T-GM is not yet configured to select the time source and align its frequency and time to it.

PRTC/T-GM not yet configured to act as PTP master on the FH ports.

1. Configured.

PRTC/T-GM is configured (eg, via proprietary) interface to align to the selected frequency and time source.

1. Until disciplining

Until PRTC/T-GM disciplining of the frequency and time to the selected source has completed, Startup conditions persists.

The O-RUs are configured to synchronize from PTP in ITU-T G.8275.1 [5] profile and report their status.

###### 2.2.2.3.5.2 Procedure: Nominal conditions

1. PRTC/T-GM is configured to start acting as a PTP master compliant with the ITU-T G.8275.1 [5] profile on selected FH ports.
2. PRTC/T-GM acts as a PTP grand master towards the FH interface in Master state, compliant with the ITU-T G.8275.1 [5] profile advertising "nominal" status.
3. PRTC/T-GM reports status, acting as PTP master clock towards the FH interface.

###### 2.2.2.3.5.3 Procedure: Degraded conditions

1. PRTC/T-GM is configured to enter HOLDOVER based on local oscillator frequency.
2. PRTC/T-GM acts as configured clock, with PTP ports in master state, compliant to ITU-T G.8275.1 profile advertising HOLDOVER status with degraded clockClass and clockAccuracy as specified by ITU-T G.8275.1 [5].
3. PRTC/T-GM is configured to exit HOLDOVER and resumes normal frequency and phase disciplining using the source.
4. PRTC/T-GM acts as configured clock, with PTP ports towards the FH interface in master state compliant to ITU-T G.8275.1 [5] in "nominal" status.

##### 2.2.2.3.6 Test Requirements (expected results)

###### 2.2.2.3.6.1 Startup conditions

The validation is done by checking the correct synchronization state is observed for steps 1 to 3 (2.2.2.3.5.1 above):

* the FREERUN sync-state of the O-DU using the NMS
* the UNLOCKED PTP lock-state of the O-DU using the NMS
* the UNLOCKED SyncE lock-state of the O-DU using the NMS (optional)
* the FREERUN sync-state of the O-RU using the M-Plane
* the UNLOCKED PTP lock-state of the O-RU using the M-Plane
* the UNLOCKED SyncE lock-state of the O-RU using the M-Plane (optional)
* the synchronization status of the deployed T-BC using the respective NMS

###### 2.2.2.3.6.2 Nominal conditions

The validation is done by checking the correct synchronization state is observed for steps 1 to 3 (2.2.2.3.5.2 above):

* the LOCKED sync-state of the O-DU using the NMS
* the LOCKED PTP lock-state of the O-DU using the NMS
* the "Master Enabled" SyncE status of the O-DU using the NMS (optional)
* the received PTP clockClass level of the O-RU using the M-Plane
* the received SyncE SSM level of the O-RU using the M-Plane (optional).
* the LOCKED sync-state of the O-RU using the M-Plane
* the LOCKED PTP lock-state and PARENT PTP state of the O-RU using the M-Plane
* the LOCKED SyncE lock-state and OK or PARENT SyncE state of the O-RU using the M-Plane (optional)
* the synchronization status of the deployed T-BC using the respective NMS

###### 2.2.2.3.6.3 Degraded conditions

The validation is done by checking the correct synchronization state is observed for all steps 1 to 2 (2.2.2.3.5.3 above) (for steps 3 and 4, same acceptance criterion as "Nominal conditions" apply):

* the HOLDOVER sync-state of the O-DU using the NMS
* the received PTP clockClass level of the O-DU using the NMS
* the received SyncE SSM level of the O-DU using the NMS (optional)
* the received PTP clockClass level of the O-RU using the M-Plane
* the received SyncE SSM level of the O-RU using the M-Plane (optional). Note that if SyncE state is NOK, it is also permitted that the local default SSM level is reported using the M-Plane
* the synchronization status of the deployed T-BC using the respective NMS - the sync-state of the O-RU using the M-Plane is LOCKED if the received clockClass (or optional SSM QL) value matches the configured list of accepted values, otherwise HOLDOVER or FREERUN
* the PTP lock-state of the O-RU using the M-Plane is LOCKED,
  and the PTP state of the O-RU using the M-Plane is PARENT if the received clockClass matches the configured list of accepted values, otherwise NOK
* the SyncE lock-state (optional) of the O-RU using the M-Plane is LOCKED or OK,
  and the SyncE state of the O-RU using the M-Plane is PARENT or OK if the received SSM matches the configured list of accepted values, otherwise NOK

Note: If the NETCONF client triggers a reset procedure of the O-RU by FREERUN of the sync-state at these degraded conditions, the status observation using M-plane is not available for NETCONF client. It is observed that the alarm-notification is sent from the O-RU using M-Plane and the regular start-up procedures is performed.

#### 2.2.2.4 Functional test of O-DU + O-RU using ITU-T G.8275.2 profile (LLS-C1)

This test is For Further Study.

#### 2.2.2.5 Functional test of O-DU + bridged network + O-RU using ITU-T G.8275.2 profile (LLS-C2)

This test is For Further Study.

#### 2.2.2.6 Functional test of O-DU + bridged network + O-RU using ITU-T G.8275.2 profile (LLS-C3)

This test is For Further Study.

#### 2.2.2.7 Functional test of O-DU + bridged network + O-RU (LLS-C4)

This test case is For Further Study.

#### 2.2.2.8 Performance test of O-DU + Two O-RUs using ITU-T G.8275.1 profile (LLS-C1)

##### 2.2.2.8.1 Test Description and applicability

This test case is CONDITIONAL MANDATORY and shall be performed if the O-RU and O-DU declare support of LLS-C1 synchronization option (see Clause 1.5.3).

This test validates that the two O-RUs meet the 3GPP limits at their air interface, when

* the O-DU gets its synchronization from a PRTC using either a local or remote PRTC as specified in the Conformance Test Specification [24], under either ideal or normal conditions
* and is connected to two O-RUs via direct FH links
* and distributes frequency and time to these O-RUs using the ITU-T G.8275.1 (SyncE + PTP) profile

##### 2.2.2.8.2 Minimum Requirements (Prerequisites)

1. IOT Functional test 2.2.2.1 is successfully passed and all O-DU, bridged network elements and O-RUs report LOCKED status
2. O-RUs are connected to the O-DU via direct fiber O-RAN links
3. O-RUs are suitable for Case 1.1 or 1.2 as specified in eCPRI [11]

##### 2.2.2.8.3 Purpose and scope

The O-DU synchronize the O-RUs with the ITU-T G.8275.1 profile [5]. This test validates that the frequency and time error on the O-RU air interfaces are within the limits of the 3GPP, in both constant and variable temperature and traffic load conditions.

Only LOCKED state is tested; HOLDOVER state test is For Further Study.

##### 2.2.2.8.4 Testability Requirements imposed on O-RU and O-DU

Both O-DU and O-RU are running nominal software.

Requirements for M-Plane: is "up and running."

Synchronization requirement: O-DU and test equipment is connected to a local PRTC or source traceable to PRTC.

Test 2.2.2.1.6.2 is successfully passed and both O-DU and O-RUs report LOCKED status.

##### 2.2.2.8.5 Test Methodology

After O-DU and O-RUs are frequency and phase locked to their PRTC synchronization source using the LLS-C1 configuration, the frequency and phase errors are measured on the O-RUs air interface using a test equipment referenced to the same PRTC.

The O-DU input time error on the O-DU is as specified in the Conformance Test Specification [24],

* Either "ideal" with zero value
* Or "normal", with configured values with standard masks

##### 2.2.2.8.6 Test Requirement (expected result)

For both constant and variable conditions tests, the acceptance criterion is to measure with the test equipment:

* +-50 ppb maximum frequency error at the air interface
* ITU-T Level 4, eCPRI Cat C (mandatory): +- 1500ns maximum absolute time error at the O-RU air interface
* ITU-T Level 6A, eCPRI Cat B (optional): +- 260ns maximum relative time error between the two O-RUs air interfaces
  Note: This level of accuracy assumes an O-RU implementation suitable for Case 1.1 and case 1.2 as specified in eCPRI [11].
* ITU-T Level 6B, eCPRI Cat A (optional) +- 130ns maximum relative time error between the two O-RUs air interfacesNote: This level of accuracy assumes an O-RU implementation suitable for Case 1.2 as specified in eCPRI [11]. It also assumes co-location of the O-RUs and O-DU.

#### 2.2.2.9 Performance test of O-DU + bridged network + Two O-RUs using ITU-T G.8275.1 profile (LLS-C2)

##### 2.2.2.9.1 Test Description and applicability

This test case is CONDITIONAL MANDATORY and shall be performed if the O-RU and O-DU declare support of LLS-C2 synchronization option (see Clause 1.5.3).

This test validates that the two O-RUs are meeting the 3GPP limits at their air interface, when:

* the O-DU gets its synchronization from a PRTC using a local or remote PRTC as specified in the Conformance Test Specification [24], under either ideal or normal conditions
* and is connected to two O-RUs via eCPRI FH links via bridged network elements acting as class B T-BCs
* and distributes frequency and time to these O-RUs using the ITU-T G.8275.1 (SyncE + PTP) profile [5]

##### 2.2.2.9.2 Minimum Requirements (Prerequisites)

1. IOT Functional Test 2.2.2.2 is successfully passed and all O-DU, bridged network elements and O-RUs report LOCKED status
2. O-RUs are connected to O-DU via bridged network elements acting as ITU-T G.8275.1 class B T-BCs using O-RAN links [5]
3. O-RUs are suitable for Case 1.1 or 1.2 as specified in eCPRI [11]

##### 2.2.3.2.3 Purpose and Scope

The O-DU synchronizes the O-RUs with the ITU-T G.8275.1 [5] profile via the bridged network elements.

This test validates that the frequency and time error on the O-RU air interfaces are within the limits of the 3GPP, in both constant and variable temperature and traffic load conditions.

Only LOCKED state is tested; HOLDOVER state test is For Further Study.

##### 2.2.2.9.4 Testability Requirements imposed on O-RU and O-DU

Both O-DU and O-RU are running nominal software.

Requirements for M-Plane: is "up and running"

Synchronization requirement: O-DU and test equipment is connected to a local PRTC or source traceable to PRTC.

Test 2.2.2.2.6.2 is successfully passed and both O-DU and O-RUs report LOCKED status.

##### 2.2.2.9.5 Test Methodology

After O-DU and O-RUs are frequency and phase locked to their PRTC synchronization source using the LLS-C2 configuration, the frequency and phase errors are measured on the O-RUs air interface using a test equipment referenced to the same PRTC.

The O-DU input time error on the O-DU is as specified in the Conformance Test Specification [24],

* Either "ideal" with zero value
* Or "normal", with configured values with standard masks

##### 2.2.2.9.6 Test Requirement (expected result)

For both constant and variable conditions tests, the acceptance criterion is to measure with the test equipment:

* +-50 ppb maximum frequency error
* ITU-T Level 4, eCPRI Cat C (mandatory): +- 1500ns maximum absolute time error at the O-RU air interface
* ITU-T Level 6A, eCPRI Cat B (optional): +- 260ns maximum relative time error between the two O-RUs air interfaces
  Note: This level of accuracy assumes up to 1 (respectively 2) class B T-BC on the path between the branching one and each O-RU implementation suitable for case 1.1 (respectively case 1.2) as specified in eCPRI [11].
* ITU-T Level 6B, eCPRI Cat A (optional) +- 130ns maximum relative time error between the two O-RUs air interfacesNote: This level of accuracy assumes direct fiber link between the branching class B T-BC and each O-RU implementation suitable case 1.2 as specified in eCPRI [11] (not supported by case 1.1). It also assumes co-location of the O-RUs and O-DU.

#### 2.2.2.10 Performance test of O-DU + bridged network + Two O-RUs using ITU-T G.8275.1 profile (LLS-C3)

##### 2.2.2.10.1 Test Description and applicability

This test case is CONDITIONAL MANDATORY and shall be performed if the O-RU and O-DU declare support of LLS-C3 synchronization option (see Clause 1.5.3).

This test validates that the two O-RUs are meeting the 3GPP limits at their air interface, and the O-DU is meeting time error limits specified in O-RAN WG4 CUS Specification [2] when

* both O-DU and O-RUs get their synchronization from a PRTC using SyncE + PTP over a Full Timing Support network (ITU-T G.8275.1 profile [5], ITU-T G.8271.1 network limits [7])

##### 2.2.2.10.2 Minimum Requirements (Prerequisites)

1. IOT Functional Test 2.2.2.3 is successfully passed and all O-DU, bridged network elements and O-RUs report LOCKED status
2. O-RUs and O-DU are connected to bridged network elements acting as ITU-T G.8275.1 class B T-BCs using O-RAN links [5]. This FH network has a local PRTC distributing SyncE and PTP to both O-DU and O-RUs.
3. O-RUs are suitable for Case 1.1 or 1.2 as specified in eCPRI [11]

##### 2.2.2.10.3 Purpose and scope

The FH network synchronizes all O-DU and O-RUs with the ITU-T G.8275.1 [5] profile via the bridged network elements.

This test validates that the frequency and time error on the O-RU air interfaces and O-DU are within the limits of the 3GPP, in both constant and variable temperature and traffic load conditions.

Only LOCKED state is tested; HOLDOVER state test is For Further Study.

##### 2.2.2.10.4 Testability Requirements imposed on O-RU and O-DU

Both O-DU and O-RU are running nominal software.

Requirements for M-Plane: is "up and running"

Synchronization requirement: FH network and test equipment is connected to a local PRTC or source traceable to PRTC.

Test 2.2.2.3.6.2 is successfully passed and both O-DU and O-RUs report LOCKED status.

##### 2.2.2.10.5 Test Methodology

After O-DU and O-RUs are frequency and phase locked to their PRTC synchronization source using the LLS-C3 configuration, the frequency and phase errors are measured at the O-RUs air interface using a test equipment referenced to the same PRTC.

The PRTC output time error on the O-DU is as specified in the Conformance Test Specification [24],

* Either "ideal" with zero value
* Or "normal", with configured values with standard masks

##### 2.2.2.10.6 Test Requirement (expected result)

For both constant and variable conditions tests, the acceptance criterion is to measure with the test equipment:

* +-50 ppb maximum frequency error (mandatory): at the O-RU air interface
* ITU-T Level 4, eCPRI Cat C (mandatory): +- 1500ns maximum absolute time error at the O-RU air interface and at the O-DU output test signal (for example 1PPS)
* ITU-T Level 6A, eCPRI Cat B (optional): +- 260ns maximum relative time error between the two O-RUs air interfaces
  Note: This level of accuracy assumes up to 1 (respectively 2) class B T-BC on the path between the branching one and each O-RU implementation suitable for case 1.1 (respectively case 1.2) as specified in eCPRI [11].
* ITU-T Level 6B, eCPRI Cat A (optional) +- 130ns maximum relative time error between the two O-RUs air interfacesNote: This level of accuracy assumes direct fiber link between the branching class B T-BC and each O-RU implementation suitable case 1.2 as specified in eCPRI [11] (not supported by case 1.1). It also assumes co-location of the O-RUs and O-DU.

#### 2.2.2.11 Performance test of O-DU + Two O-RUs using ITU-T G.8275.2 profile (LLS-C1)

This test is For Further Study.

#### 2.2.2.12 Performance test of O-DU + bridged network + Two O-RUs using ITU-T G.8275.2 profile ((LLS-C2)

This test is For Further Study.

#### 2.2.2.13 Performance test of O-DU + bridged network + Two O-RUs using ITU-T G.8275.2 profile (LLS-C3)

This test is For Further Study.

#### 2.2.2.14 Performance test of O-DU + bridged network + Two O-RUs (LLS-C4)

This test is For Further Study.

### 2.2.3 C/U-Plane IOT Test

#### 2.2.3.1 Radio Layer 3 C-Plane establishment and Initial Radio U-Plane data transfer

##### 2.2.3.1.1 Test Description and Applicability

This test case is MANDATORY.

This is a Radio system level test which is used to validate the radio system functionalities, performance and multi-vendor interoperability of the O-DU and O-RU from different vendors connected using the O-RAN WG4 specified FH interface [2], [3].

This test validates if a UE can perform Radio Layer 3 C-Plane establishment and initial Radio U-Plane data transfer procedures with the network which includes the O-DU and O-RU as an integrated system under test in this test setup.

Although there is no FH focused testing for C/U-Plane in this test, it is still possible to observe successful interoperability via positive test outcomes for this test. ie, if radio system level test passes, it can be assumed that O-RAN WG4 specified FH interface C/U-Plane is successfully working.

The DUTs are a single O-DU (DUT1(O-DU)) and a single O-RU (DUT1(O-RU)).

This test shall be executed using whichever IOT profile(s) are appropriate for the DUTs. See Annex A for details on the IOT profiles.

##### 2.2.3.1.2 Minimum Requirements (Prerequisites)

Single O-DU (DUT1(O-DU)) and a single O-RU (DUT1(O-RU))

1. Are connected through the O-RAN FH
2. Are synchronized with the common S-Plane configuration

Testing tools which are required for this test scenario

* Single Test UE or UE emulator: used to perform Radio Layer 3 C-Plane establishment and Radio U-Plane data transfers with the network
* O-CU or O-CU emulator either as a separate node or as a combined node with the O-DU(s) (DUT): used to provide Layer 2 and Layer 3 radio processing on the network side. In case of separate node, terminates the 3GPP 5G F1 interface with the O-DU(s) (DUT)
* 4G Core network or 4G Core network emulator: used to terminate UEs (emulator) NAS protocol in NSA mode
* 4G MeNB or 4G MeNB emulator: used to terminate the 3GPP EN-DC X2 interface with 5G CU in NSA mode
* 5G Core Network or 5G Core Network emulator: used to terminate UEs (emulator) NAS protocol in SA mode
* Application test server: used to generate and terminate application layer traffic (eg, UDP, TWAMP, etc) and provide application layer processing on the network side

Testing tools which can be useful for this test scenario particularly for validating that the DUTs are configured and operating correctly during the test, troubleshooting and detailed validation purposes

* FH Protocol Analyzer: used for protocol analysis of O-RAN FH protocols in this specific test scenario, C/U-Plane procedural flows and contents
* RF Spectrum and Beam Signal Analyzer: used for RF and Beam power and quality analysis ensuring that the O-RU (DUT1(O-RU)) is transmitting correctly on the configured broadcast and synchronization signals on the downlink

##### 2.2.3.1.3 Test Purpose and Scope

Purpose of this test is to validate key radio operation after M-Plane startup, ie, Radio Layer 3 C-Plane establishment and initial Radio U-Plane data transfer on system level with integration of O-DU and O-RU from different vendors.

Note that this test requires both Downlink and Uplink Radio Layer 3 C-Plane message. This means that this test also validates both transfer of Downlink and Uplink FH U-Plane message and related Downlink FH C-Plane messages.

##### 2.2.3.1.4 Testability requirements imposed on O-RU and O-DU

Nominal software runs on the O-RU and O-DU.

##### 2.2.3.1.5 Test Methodology

###### 2.2.3.1.5.1 Initial Conditions

1. O-RU and O-DU are both in service, ie, M-Plane start-up procedure is completed, and broadcast channels are being transmitted
2. Test UE or UE emulator has not yet been registered with the network

###### 2.2.3.1.5.2 Procedure: Nominal test

Performs Radio Layer 3 C-Plane establishment procedure using the Test UE or UE emulator. Note that Radio Layer 3 C-Plane establishment procedure depends on the 5G NR operation mode. In the case when the DUTs are operating in NSA mode, Radio Layer 3 C-Plane establishment procedure includes Attach procedure and/or service request procedure specified in 3GPP TS 23.401 [20] and EN-DC setup procedure specified in 3GPP TS 37.340 [22]. In the case when the DUTs are operating in SA mode, Radio Layer 3 C-Plane establishment procedure includes Registration procedure and service request procedure specified in 3GPP TS 23.502 [21].

Performs data transfer from the application test server to the Test UE or UE emulator. The application test server generates and transmits 10 IP packets with each packet 32 bytes in size.

Note that data transfer depends on the operation mode. In the case when the DUTs are operating in NSA mode, data transfers can be performed over Default EPS bearer using SN terminated split bearer specified in 3GPP TS 37.340 [22]. In case when the DUTs are operating in SA mode, data transfers can be performed over PDU Session and QoS flow specified in 3GPP TS 23.502 [21].

This test case does not specify the test data pattern generated by the application test server, but it is recommended that the test data pattern should include some level of randomness (ie, avoiding all zeros).

##### 2.2.3.1.6 Test Requirement (expected result)

Observe the Test UE or emulated UE can perform Radio Layer 3 C-Plane establishment successfully and can perform data transfers over the network particularly through the O-DU and O-RU.

Record Test UE or UE emulator logs that the Radio Layer 3 (eg, RRC/NAS) message flows are per 3GPP TS 23.401 [20] Sections 5.3.4, 5.4 and 3GPP TS 37.340 [22] in NSA mode and 3GPP TS 23.502 [21] Sections 4.2.3, 4.3 in SA mode.

Record Test UE or UE emulator Radio U-Plane logs that the data packets transferred by application test server (ie, 10 IP packets of 32 bytes) are received correctly.

#### 2.2.3.2 Radio U-Plane downlink data transfer (Downlink throughput performance)

##### 2.2.3.2.1 Test Description and Applicability

This test case is MANDATORY.

The DUTs are a single O-DU (DUT1(O-DU)) and a single O-RU (DUT1(O-RU)).

This scenario allows to test if a UE can perform Radio U-Plane data transfers with the network through O-DU and O-RU from different vendors.

This test shall be executed using whichever IOT profile(s) are appropriate for the DUTs. See Annex A for details on the IOT profiles.

##### 2.2.3.2.2 Minimum Requirements (Prerequisites)

Single O-DU (DUT1(O-DU)) and a single O-RU (DUT1(O-RU))

1. Are connected through the O-RAN FH
2. Are synchronized with the common S-Plane configuration

Testing tools which are required for this test scenario

* Single Test UE or UE emulator: used to perform Radio U-Plane data transfers with the network
* O-CU or O-CU emulator either as a separate node or as a combined node with the O-DU(s) (DUT): used to provide Layer 2 and Layer 3 radio processing on the network side. In case of separate node, terminates the 3GPP 5G F1 interface with the O-DU(s) (DUT).
* 4G Core network or 4G Core network emulator: used to terminate UEs (emulator) NAS protocol in NSA mode
* 4G MeNB or 4G MeNB emulator: used to terminate the 3GPP EN-DC X2 interface with 5G CU in NSA mode
* 5G Core Network or 5G Core Network emulator: used to terminate UEs (emulator) NAS protocol in SA mode
* Application test server: used to generate and terminate application layer traffic (eg UDP, TWAMP, etc) and provide application layer processing on the network side

Testing tools which can be useful for this test scenario particularly for validating that the DUTs are configured and operating correctly during the test, troubleshooting and detailed validation purposes

* FH Protocol Analyzer: used for protocol analysis of O-RAN FH protocols in this specific test scenario, FH C/U-Plane procedural flows and contents
* RF Spectrum and Beam Signal Analyzer: used for RF and Beam power and quality analysis ensuring that the O-RU (DUT1(O-RU)) is transmitting correctly on the configured broadcast and synchronization signals on the downlink

##### 2.2.3.2.3 Test Purpose and Scope

Purpose of this test is to validate key radio operation after Radio Layer 3 C-Plane establishment and initial Radio U-Plane data transfer, the Radio U-Plane data transfer including throughput performance on system level with integration of O-DU and O-RU from different venders.

Note that this test requires Maximum Layer 1 Radio data rate (with some margin). This means that this test also validates transfer of Downlink FH C/U-Plane message with higher MIMO layers and higher order modulation schemes.

##### 2.2.3.2.4 Testability requirements imposed on O-RU and O-DU

Nominal software runs on the O-RU and O-DU.

##### 2.2.3.2.5 Test Methodology

###### 2.2.3.2.5.1 Initial Conditions

1. O-RU and O-DU are both in service, ie, M-Plane start-up procedure has been completed and broadcast channels are being transmitted
2. Test UE or UE emulator has registered to the network, ie, Radio Layer 3 C-Plane establishment procedure is completed. Note that Radio Layer 3 C-Plane establishment procedure depends on operation mode. In case when the of DUTs are operating in NSA mode, Radio Layer 3 C-Plane establishment procedure includes means Attach procedure and/or service request procedure specified in 3GPP TS 23.401 [20] and EN-DC setup procedure specified in 3GPP TS 37.340 [22]. In case when the of DUTs are operating in SA mode, Radio Layer 3 C-Plane establishment procedure includes means Registration procedure and service request procedure specified in 3GPP TS 23.502 [21].

###### 2.2.3.2.5.2 Procedure: Nominal test

Performs downlink data transfer from application test server to the Test UE or UE emulator. The application test server generates and transmits downlink data with data size large enough to achieve the maximum Layer 1 Radio data rate, which is specified in 2.2.4.2.6, for the duration of the test. The duration of the test is 20 seconds.

Note that data transfer depends on the operation mode. In case when the DUTs are operating in NSA mode, data transfers can be performed over Default EPS bearer using SN terminated split bearer specified in 3GPP TS 37.340 [22]. In case when the DUTs are operating in SA mode, data transfers can be performed over PDU Session and QoS flow specified in 3GPP TS 23.502 [21].

This test case does not specify the test data pattern generated by the application test server, but it is recommended that the test data pattern should include some level of randomness (ie, avoiding all zeros).

##### 2.2.3.2.6 Test Requirement (expected result)

Observe that the Test UE or emulated UE can perform Radio U-Plane data transfers over the network particularly through the O-DU and O-RU at the target data rate.

Record the Test UE or UE emulator Radio U-Plane logs and determine that they contain measurements such as the measured Radio U-Plane data rates during the test. The acceptance criterion is that Radio U-Plane data rate on average during the test duration achieves the performance level defined as follows

**Performance level**

Target data rate = Maximum Layer 1 Radio data rate \* (1 - Ratio of Radio resource overhead) \* Margin,

where

*Maximum Layer 1 Radio data rate* is calculated based on 3GPP TS 38. 211 [15] and TS 38.214 [23] by using RAN parameters, ie, Total channel bandwidth, TDD configuration (when TDD), number of spatial/antenna streams, modulation order and coding rate. Note that these RAN parameters are defined in the IOT profiles (see Annex A for details).

*Ratio of Radio resource overhead* is calculated based on 3GPP TS 38.211 [15] by using Radio physical layer channel configurations, eg, PDCCH resource mapping, Reference signal resource mapping, and so on, assumed in the IOT setup. Note that the physical layer channel configurations are part of the radio test setup configuration.

*Margin* is assumed in order to account for issues other than the FH. The value of *Margin* is 0.8.

#### 2.2.3.3 Radio U-Plane uplink data transfer (Uplink throughput performance)

##### 2.2.3.3.1 Test Description and Applicability

This test case is MANDATORY.

The DUTs are a single O-DU (DUT1(O-DU)) and a single O-RU (DUT1(O-RU)).

This scenario allows to test if a UE can perform Radio U-Plane data transfers with the network through O-DU and O-RU from different vendors.

This test shall be executed using whichever IOT profile(s) are appropriate for the DUTs. See Annex A for details on the IOT profiles.

##### 2.2.3.3.2 Minimum Requirements (Prerequisites)

Single O-DU (DUT1(O-DU)) and a single O-RU (DUT1(O-RU))

1. Are connected through the O-RAN FH
2. Are synchronized with the common S-Plane configuration

Testing tools which are required for this test scenario

* Single Test UE or UE emulator: used to perform Radio U-Plane data transfers with the network
* O-CU or O-CU emulator either as a separate node or as a combined node with the O-DU(s) (DUT): used to provide Layer 2 and Layer 3 radio processing on the network side. In case of separate node, terminates the 3GPP 5G F1 interface with the O-DU(s) (DUT).
* 4G Core network or 4G Core network emulator: used to terminate UEs (emulator) NAS protocol in NSA mode
* 4G MeNB or 4G MeNB emulator: used to terminate the 3GPP EN-DC X2 interface with 5G CU in NSA mode
* 5G Core Network or 5G Core Network emulator: used to terminate UEs (emulator) NAS protocol in SA mode
* Application test server: used to generate and terminate application layer traffic (eg UDP, TWAMP, etc) and provide application layer processing on the network side

Testing tools which can be useful for this test scenario particularly for validating that the DUTs are configured and operating correctly during the test, troubleshooting and detailed validation purposes

* FH Protocol Analyzer: used for protocol analysis of O-RAN FH protocols in this specific test scenario, FH C/U-Plane procedural flows and contents
* RF Spectrum and Beam Signal Analyzer: used for RF and Beam power and quality analysis ensuring that the O-RU (DUT1(O-RU)) is transmitting correctly on the configured broadcast and synchronization signals on the downlink

##### 2.2.3.3.3 Test Purpose and Scope

Purpose of this test is to validate key radio operation after Radio Layer 3 C-Plane establishment and initial Radio U-Plane data transfer, the Radio U-Plane data transfer including throughput performance on system level with integration of O-DU and O-RU from different venders.

Note that this test requires Maximum Layer 1 Radio data rate (with some margin). This means that this test also validates transfer of Uplink FH C/U-Plane message with higher MIMO layers and higher order modulation schemes.

##### 2.2.3.3.4 Testability requirements imposed on O-RU and O-DU

Nominal software runs on the O-RU and O-DU.

##### 2.2.3.3.5 Test Methodology

###### 2.2.3.3.5.1 Initial Conditions

1. O-RU and O-DU are both in service, ie, M-Plane start-up procedure has been completed and broadcast channels are being transmitted
2. Test UE or UE emulator has registered to the network, ie, Radio Layer 3 C-Plane establishment procedure is completed. Note that Radio Layer 3 C-Plane establishment procedure depends on operation mode. In case when the of DUTs are operating in NSA mode, Radio Layer 3 C-Plane establishment procedure includes means Attach procedure and/or service request procedure specified in 3GPP TS 23.401 [20] and EN-DC setup procedure specified in 3GPP TS 37.340 [22]. In case when the of DUTs are operating in SA mode, Radio Layer 3 C-Plane establishment procedure includes means Registration procedure and service request procedure specified in 3GPP TS 23.502 [21].

###### 2.2.3.3.5.2 Procedure: Nominal test

Performs uplink data transfer from the Test UE or UE emulator to application test server on the network side. Either the Test UE or UE emulator, or application test server connected with UE generates and transmits uplink data with data size large enough to achieve the maximum Layer 1 Radio data rate, which is specified in 2.2.3.3.6, for the duration of the test. The Test UE or UE emulator transmits the uplink data. The duration of the test is 20 seconds.

Note that data transfer depends on the operation mode. In case when the DUTs are operating in NSA mode, data transfers can be performed over Default EPS bearer using SN terminated split bearer specified in 3GPP TS 37.340 [22]. In case when the DUTs are operating in SA mode, data transfers can be performed over PDU Session and QoS flow specified in 3GPP TS 23.502 [21].

This test case does not specify the test data pattern generated by either the Test UE or UE emulator, or application test server connected with UE, but it is recommended that the test data pattern should include some level of randomness (ie, avoiding all zeros).

##### 2.2.3.3.6 Test Requirement (expected result)

Observe that the Test UE or emulated UE can perform Radio U-Plane data transfers over the network particularly through the O-DU and O-RU at the target data rate.

Record the Test UE or UE emulator Radio U-Plane logs and determine that they contain measurements such as the measured Radio U-Plane data rates during the test. The acceptance criterion is that Radio U-Plane data rate on average during the test duration achieves the performance level defined as follows

**Performance level**

Target data rate = Maximum Layer 1 Radio data rate \* (1 - Ratio of Radio resource overhead) \* Margin,

where

*Maximum Layer 1 Radio data rate* is calculated based on 3GPP TS 38. 211 [15] and TS 38.214 [23] by using RAN parameters, ie, Total channel bandwidth, TDD configuration (when TDD), number of spatial/antenna streams, modulation order and coding rate. Note that these RAN parameters are defined in the IOT profiles (see Annex A for details).

*Ratio of Radio resource overhead* is calculated based on 3GPP TS 38.211 [15] by using Radio physical layer channel configurations, eg, PUCCH resource mapping, Reference signal resource mapping, and so on, assumed in the IOT setup. Note that the physical layer channel configurations are part of the radio test setup configuration.

*Margin* is assumed in order to account for issues other than the FH. The value of *Margin* is 0.8.

### 2.2.4 C/U-Plane Delay Management IOT Test

The test cases defined in this section will validate that the transmitted Control- and User-data packets sent from the O-DU are received within the reception windows at the O-RU by checking that the frame timing on the air interface is correct.

The same is applicable for uplink direction, ie, that the User-data packets sent from the O-RU are received within the reception window on the O-DU, this is done by checking that it is possible for a test UE to attach and send data.

For all currently defined IOT Profiles the O-DU timing advance type is 'Fixed Timing Advance'. The Figure below is copied from the O-RAN WG4 CUS Specification [2] section 4.3.5 "Latency Categories for O-DU with fixed timing advance".

![](../assets/images/6d7aed5c55aa.png)

Figure 2-8: O-RAN WG4 CUS Specification [2] section 4.3.5 "Latency Categories for O-DU with fixed timing advance".

The Figure shows the downlink timing when fixed timing is used, the point TXDL\_Start is a fixed point in relation to the "OTA transmission" point.

The O-DU needs only to be configured with T12max, T12min and Tcp\_adv\_dl the values are taken from the profile that is used when running these test cases. The Tcp\_adv\_dl value is the time in advance the O-RU needs the C-Plane messages before the U-Plane information is received by the O-RU. These test cases assume a symmetric latency in the Fronthaul Network, ie, T12=T34.

These test cases assume that the difference between "fixed timing advance" and "dynamic timing advance" is that for "fixed timing advance" the O-DU will advance the transmission of downlink data the same amount of time for all connected O-RUs regardless of the individual fronthaul latency, for "dynamic timing advance" the advancement could be different per O-RU and thus eg, T12max shall be configured per O-RU.

An O-DU running in "Fixed Timing Advance"-mode is an O-DU that has the ability to handle a specific value for T1a (sum of fronthaul latency T12 and O-RU processing delay T2a). The O-DU will set the TXDL\_Start to this fixed value independent on actual T12\_max value.

TXmaxlls-CU will vary due to different line-rates of the fronthaul interface and amount of data (control+user) that is sent for a specific symbol.

#### 2.2.4.1 Test environment

Testing tools which are required for the delay management test cases.

* Single Test UE or UE emulator: used to perform Radio Layer 3 C-Plane establishment and Radio U-Plane data transfers with the network
* O-CU or O-CU emulator either as a separate node or as a combined node with the O-DU(s) (DUT): used to provide Layer 2 and Layer 3 radio processing on the network side. In case of separate node, terminates the 3GPP 5G F1 interface with the O-DU(s) (DUT)
* 4G Core network or 4G Core network emulator: used to terminate UEs (emulator) NAS protocol in NSA mode
* 4G MeNB or 4G MeNB emulator: used to terminate the 3GPP EN-DC X2 interface with 5G CU in NSA mode
* 5G Core Network or 5G Core Network emulator: used to terminate UEs (emulator) NAS protocol in SA mode
* Application test server: used to generate and terminate application layer traffic (eg, UDP, TWAMP, etc) and provide application layer processing on the network side

![](../assets/images/d9a0b9beb7c8.png)

Figure 2-9: Delay-management test environment

Testing tools which can be useful for this test scenario particularly for validating that the DUTs are configured and operating correctly during the test, troubleshooting and detailed validation purposes

* FH Protocol Analyzer: used for protocol analysis of O-RAN FH protocols in this specific test scenario, C/U-Plane procedural flows and contents
* RF Spectrum and Beam Signal Analyzer: used for RF and Beam power and quality analysis ensuring that the O-RU (DUT1(O-RU)) is transmitting correctly on the configured broadcast and synchronization signals on the downlink

#### 2.2.4.2 Timing accuracy definition

When in "Test Requirement (expected result)" it is stated "... *timing accuracy at the antenna reference point is according to requirement*" the following is applicable.

In ORAN WG4 CUS Specification [2] section 11.2.5.4 "Air interface maximum time error", tables 11-1 and 11-2 list the 3GPP air interface timing accuracy for different LTE and 5G features. The timing accuracy requirements are divided into 2 alternatives, relative or absolute time errors.

Depending on what 3GPP features that are to be supported by a specific IOT-profile different timing accuracy requirement is thus applicable.

#### 2.2.4.3 Delay Management #1, minimum fronthaul latency

##### 2.2.4.3.1 Test Description and Applicability

This test case is OPTIONAL.

This is a Radio system level test which is used to validate the radio system functionalities, performance and multi-vendor interoperability of the O-DU and O-RU from different vendors connected using the O-RAN WG4 specified FH interface [2], [3].

This test validates that the O-RU will transmit the user data at correct point in time and with correct content during different conditions related to the fronthaul interface latency between the O-DU and the O-RU.

##### 2.2.4.3.2 Minimum Requirements

Single O-DU (DUT1(O-DU)) and a single O-RU (DUT1(O-RU))

1. Are connected through the O-RAN FH
2. Are synchronized with the common S-Plane configuration

##### 2.2.4.3.3 Test Purpose

Purpose of this test is to validate that correct timing is achieved on the air interface regardless of the O-RU processing time and using the minimum feasible fronthaul latency.

##### 2.2.4.3.4 Testability requirements imposed on O-RU and O-DU

Nominal software runs on the O-RU and O-DU.

##### 2.2.4.3.5 Test Methodology

###### 2.2.4.3.5.1 Initial Conditions

1. The fronthaul latency should be at a minimum for this test case. The T12\_min in current IOT-Profiles is 0us.
   0us is not possible to achieve in reality, instead the shortest possible fronthaul latency with existing test equipment is sufficient for this initial condition.
2. O-RU and O-DU are both in service, ie, M-Plane start-up procedure is completed and broadcast channels are being transmitted
3. Test UE or UE emulator has registered to the network, ie, Radio Layer 3 C-Plane establishment procedure is completed

###### 2.2.4.3.5.2 Procedure: Nominal test

Performs downlink and uplink data transfer to/from the test UE.

##### 2.2.4.3.6 Test Requirement (expected result)

Observe that:

1. With Fronthaul Protocol Analyzer (connected at the O-DU-end of fronthaul interface), observe that the fronthaul C- and U-Plane messages transmitted by the O-DU are transmitted within respective plane's transmission windows.
2. With Fronthaul Protocol Analyzer (connected at the O-RU-end of fronthaul interface), observe that the fronthaul C- and U-Plane messages in downlink direction are received within respective plane's reception window by the O-RU.
3. With the RF Spectrum Analyzer, observe that the air interface transmission timing accuracy at the antenna reference point is according to requirements as specified in section 2.2.4.2.
4. With Fronthaul Protocol Analyzer (connected at the O-RU-end of fronthaul interface), observe that the U-Plane messages transmitted by the O-RU (uplink direction) are transmitted within the O-RU's transmission window

#### 2.2.4.4 Delay Management #2, maximum fronthaul latency

##### 2.2.4.4.1 Test Description and Applicability

This test case is OPTIONAL.

This is a Radio system level test which is used to validate the radio system functionalities, performance and multi-vendor interoperability of the O-DU and O-RU from different vendors connected using the O-RAN WG4 specified FH interface [2], [3].

This test validates that the O-RU will transmit the user data at correct point in time and with correct content during different conditions related to the fronthaul interface between the O-DU and the O-RU.

##### 2.2.4.4.2 Minimum Requirements

Single O-DU (DUT1(O-DU)) and a single O-RU (DUT1(O-RU))

1. Are connected through the O-RAN FH
2. Are synchronized with the common S-Plane configuration

##### 2.2.4.4.3 Test Purpose

Purpose of this test is to validate that correct timing is achieved on the air interface regardless of the O-RU processing time and using the maximum supported fronthaul latency as per the corresponding IOT profile.

##### 2.2.4.4.4 Testability requirements imposed on O-RU and O-DU

Nominal software runs on the O-RU and O-DU.

##### 2.2.4.4.5 Test Methodology

###### 2.2.4.4.5.1 Initial Conditions

1. The fronthaul latency should be at a maximum for this test case. The T12\_max in current IOT-Profiles is 160us.
2. O-RU and O-DU are both in service, ie, M-Plane start-up procedure is completed and broadcast channels are being transmitted
3. Test UE or UE emulator has registered to the network, ie, Radio Layer 3 C-Plane establishment procedure is completed.

###### 2.2.4.4.5.2 Procedure: Nominal test

Performs downlink and uplink data transfer to/from the test UE.

##### 2.2.4.4.6 Test Requirement (expected result)

Observe that:

1. With Fronthaul Protocol Analyzer (connected at the O-DU-end of fronthaul interface), observe that the fronthaul C- and U-Plane messages transmitted by the O-DU are transmitted within respective plane's transmission windows.
2. With Fronthaul Protocol Analyzer (connected at the O-RU-end of fronthaul interface), observe that the fronthaul C- and U-Plane messages in downlink direction are received within respective plane's reception window by the O-RU.
3. With the RF Spectrum Analyzer, observe that the air interface transmission timing accuracy at the antenna reference point is according to requirements as specified in section 2.2.4.2.
4. With Fronthaul Protocol Analyzer (connected at the O-RU-end of fronthaul interface), observe that the U-Plane messages transmitted by the O-RU (uplink direction) are transmitted within the O-RU's transmission window.

#### 2.2.4.5 Delay Management #3, normal fronthaul latency

##### 2.2.4.5.1 Test Description and Applicability

This test case is OPTIONAL.

This is a Radio system level test which is used to validate the radio system functionalities, performance and multi-vendor interoperability of the O-DU and O-RU from different vendors connected using the O-RAN WG4 specified FH interface [2], [3].

This test validates that the O-RU will transmit the user data at correct point in time and with correct content during different conditions related to the fronthaul interface between the O-DU and the O-RU.

##### 2.2.4.5.2 Minimum Requirements

Single O-DU (DUT1(O-DU)) and a single O-RU (DUT1(O-RU))

1. Are connected through the O-RAN FH
2. Are synchronized with the common S-Plane configuration

##### 2.2.4.5.3 Test Purpose

Purpose of this test is to validate that correct timing is achieved on the air interface regardless of the O-RU processing time and using a normal fronthaul latency as per the corresponding IOT profile.

##### 2.2.4.5.4 Testability requirements imposed on O-RU and O-DU

Nominal software runs on the O-RU and O-DU.

##### 2.2.4.5.5 Test Methodology

###### 2.2.4.5.5.1 Initial Conditions

1. The fronthaul latency should be set to an arbitrary value between 0 and 160us eg, 75us
2. O-RU and O-DU are both in service, ie, M-Plane start-up procedure is completed and broadcast channels are being transmitted
3. Test UE or UE emulator has registered to the network, ie, Radio Layer 3 C-Plane establishment procedure is completed

###### 2.2.4.5.5.2 Procedure: Nominal test

Performs downlink and uplink data transfer to/from the test UE.

##### 2.2.4.5.6 Test Requirement (expected result)

Observe that:

1. With Fronthaul Protocol Analyzer (connected at the O-DU-end of fronthaul interface), observe that the fronthaul C- and U-Plane messages transmitted by the O-DU are transmitted within respective plane's transmission windows.
2. With Fronthaul Protocol Analyzer (connected at the O-RU-end of fronthaul interface), observe that the fronthaul C- and U-Plane messages in downlink direction are received within respective plane's reception window by the O-RU.
3. With the RF Spectrum Analyzer, observe that the air interface transmission timing accuracy at the antenna reference point is according to requirements as specified in section 2.2.4.2.
4. With Fronthaul Protocol Analyzer (connected at the O-RU-end of fronthaul interface), observe that the U-Plane messages transmitted by the O-RU (uplink direction) are transmitted within the O-RU's transmission window.

#### 2.2.4.6 Delay Management #4, larger fronthaul latency then supported

##### 2.2.4.6.1 Test Description and Applicability

This test case is OPTIONAL.

This is a Radio system level test which is used to validate the radio system functionalities, performance and multi-vendor interoperability of the O-DU and O-RU from different vendors connected using the O-RAN WG4 specified FH interface [2], [3].

This test validates that the O-RU will **not** transmit anything on the air interface when the latency in the fronthaul network is larger than is supported by the O-RU, ie, the C- and U-Plane messages will be received too late on the O-RU (outside its reception window) and thus be dropped by the O-RU.

##### 2.2.4.6.2 Minimum Requirements

Single O-DU (DUT1(O-DU)) and a single O-RU (DUT1(O-RU))

1. Are connected through the O-RAN FH
2. Are synchronized with the common S-Plane configuration

##### 2.2.4.6.3 Test Purpose

Validate that the O-RU will not transmit anything OTA when the configured fronthaul latency is larger than the maximum supported value as per the corresponding IOT profile.

##### 2.2.4.6.4 Testability requirements imposed on O-RU and O-DU

Nominal software runs on the O-RU and O-DU.

##### 2.2.4.6.5 Test Methodology

###### 2.2.4.6.5.1 Initial Conditions

1. The fronthaul latency should be set to a value that is larger than the O-DU's category specifies

###### 2.2.4.6.5.2 Procedure: Nominal test

-

##### 2.2.4.6.6 Test Requirement (expected result)

Observe that the no cell is being transmitted by the O-RU over the air interface.

# Annex A Profiles used for Interoperability Testing

This Annex contains the IOT Profiles and the IOT Profile Test Configurations within each IOT Profile.

Sometimes the value of existing IOT Profile Test Configuration parameter will change from one version of the specification to the next. Therefore, it is necessary to refer to both the IOT Profile Test Configuration name and the particular version of the WG4 IOT specification to ensure that the appropriate set of profile parameters are referenced. Where such change has occurred from one release to the next the change is called out with a footnote.

The intent of an IOT Profile Test Configuration is to characterize the parameters for an interoperability test such that, for a given DUT, the same result will be obtained irrespective of where the test is conducted and who conducts the test; future releases of the IOT specification may amend an IOT Profile Test Configuration description as required to achieve this intent. In particular, test definitions including parameter lists as defined by O-RAN shall be complete, and the test creator shall have no discretion when creating the test but shall follow the test definitions in this document exactly. However, in cases where no IOT Profile Test Configuration matches the needs of the test creator, a Customized IOT Configuration may be used; see clause 2.1.1.7 for more information on the use of Customized IOT Configurations.

The IOT Profiles refer to the specific versions of the CUS-Plane and M-Plane specifications referenced in clause 1.3 of this document.

In some cases deployment/implementation specific constraints make it desirable to customize the parameters in the IOT profiles in this specification. M-Planeparameters are excluded from customization. To generate a customized profile, an existing CUS IOT profile is chosen and Table A-1 provides a list of CUS-Plane IOT Profile parameters that may be modified for the Custom IOT Configuration.

**Table A-1: Modifiable and Forbidden CUS-Plane Parameters**

| **Category** | **Item** | **Related O-RAN CUS-Plane specification section(s)** |  |
| --- | --- | --- | --- |
| General | Radio access technology | - | Forbidden |
| TDD configuration | - | Modifiable |
| Nominal sub-carrier spacing | - | Modifiable |
| SSB sub-carrier spacing | - | Modifiable |
| Nominal FFT size | - | Modifiable |
| Total channel bandwidth | - | Modifiable |
| Number of spatial/antenna streams | - | Modifiable |
| Fronthaul Ethernet link | - | Forbidden |
| PRACH preamble format | - | Modifiable |
| O-RU category | 4.1.1 | Forbidden |
| LAA | - | Forbidden |
| Delay management | Network delay determination | 4.3.3 | Forbidden |
| RU adaptation of delay profile information (based on O-DU delay profile and transport delay) | 4.3.3.2 | Forbidden |
| O-DU timing advance type | 4.3.4-4.3.5, Annex B | Forbidden |
| T1a\_max\_up | 4.3, Annex B | Forbidden |
| T1a\_min\_up | 4.3, Annex B | Forbidden |
| T2a\_max\_up | 4.3, Annex B | Forbidden |
| T2a\_min\_up | 4.3, Annex B | Forbidden |
| Tcp\_adv\_dl | 4.3.2, Annex B | Forbidden |
| Ta3\_max\_up | 4.3, Annex B | Forbidden |
| Ta3\_min\_up | 4.3, Annex B | Forbidden |
| Ta4\_max\_up | 4.3, Annex B | Forbidden |
| Ta4\_min\_up | 4.3, Annex B | Forbidden |
| Ta3\_max\_up (scs=1.25kHz) | 4.3, Annex B | Forbidden |
| Ta3\_min\_up (scs=1.25kHz) | 4.3, Annex B | Forbidden |
| Ta4\_max\_up (scs=1.25kHz) | 4.3.2-4.3.3, Annex B | Forbidden |
| Ta4\_min\_up (scs=1.25kHz) | 4.3.2-4.3.3, Annex B | Forbidden |
| T1a\_max\_cp\_ul | 4.3.2-4.3.3, Annex B | Forbidden |
| T1a\_min\_cp\_ul | 4.3.2-4.3.3, Annex B | Forbidden |
| T2a\_max\_cp\_ul | 4.3.2-4.3.3, Annex B | Forbidden |
| T2a\_min\_cp\_ul | 4.3.2-4.3.3, Annex B | Forbidden |
| T12\_max | 4.3, Annex B | Forbidden |
| T12\_min | 4.3, Annex B | Forbidden |
| T34\_max | 4.3, Annex B | Forbidden |
| T34\_min | 4.3, Annex B | Forbidden |
| Non-delay managed U-Plane traffic | 4.3.6 | Forbidden |
| C/U-Plane Transport | eAxC ID DU\_Port\_ID bitwidth | 5.1.3.1.6 | Modifiable |
| eAxC ID BandSector\_ID bitwidth | 5.1.3.1.6 | Modifiable |
| eAxC ID CC\_ID bitwidth | 5.1.3.1.6 | Modifiable |
| eAxC ID RU\_Port\_ID bitwidth | 5.1.3.1.6 | Modifiable |
| All other C/U-plane transport items as defined in baseline IOT profile |  | All other C/U-plane transport parameters shall align with base IOT profile selected (i.e. Forbidden) |
| Digital Power Scaling | UL gain\_correction | 8.1.3.2 | Forbidden |
| Beamforming | All items as defined in baseline IOT profile |  | All Beamforming parameters shall align with base IOT profile selected (i.e. Forbidden) |
| IQ compression | All items as defined in baseline IOT profile |  | All IQ compression parameters shall align with base IOT profile selected (i.e. Forbidden) |
| C-Plane | All items as defined in baseline IOT profile |  | All C-plane parameters shall align with base IOT profile selected (i.e. Forbidden) |
| S-Plane | All items as defined in baseline IOT profile |  | All S-plane parameters shall align with base IOT profile selected (i.e. Forbidden) |

## A.1 M-Plane IOT Profile

### A.1.1 M-Plane IOT Profile 1 Hierarchical-sudo

**Table A.1.1-1: Hierarchical-sudo**

| Category | Item | Related O-RAN M-Plane/ YANG specification section(s) |  |
| --- | --- | --- | --- |
| High Level Description | Architectural models | 5.1.2 M-Plane architecture model | Hierarchical model |
| IP version | 5.1.3 Transport Network | IPv4 |
| Hash algorithm for data integrity | 5.4 Security | HMAC-SHA2-256 |
| Cyphering algorithm | 5.4 Security | AES128-CTR |
| "Start up" installation | O-RU identification by DHCP option | 6.2.2 O-RU identification in DHCP | DHCPv4(Option: 60) |
| VLAN Discovery | 6.2.3 Management Plane VLAN Discovery Aspects | support VLAN SCAN |
| IP address assignment | 6.2.4 O-RU Management Plane IP Address Assignment | IPv4 configuration using DHCPv4 |
| O-RU controller discovery | 6.2.5 O-RU Controller Discovery | DHCPv4 option 43 |
| DHCP format of O-RU controller discovery | 6.2.5 O-RU Controller Discovery | O-RU Controller IP Address |
| NETCONF Call Home | 6.3 NETCONF Call Home to O-RU Controller(s) | call home(port4334) |
| SSH/TLS Connection Establishment | 6.4 NETCONF Connection Establishment | SSH: password-based authentication |
| TCP port for SSH/TLS establishment (for test purpose) | 6.4.1 NETCONF Security  YANG (4) o-ran-mplane-int.yang | SSH: Default (port 830) |
| NETCONF Authentication | 6.4.2 NETCONF Authentication | password-based authentication |
| User Account Provisioning | 6.4.3 User Account Provisioning | default sudo |
| sudo | 6.5 NETCONF Access Control | used |
| nms | 6.5 NETCONF Access Control | not used |
| fm-pm | 6.5 NETCONF Access Control | not used |
| swm | 6.5 NETCONF Access Control | not used |
| NETCONF capability | 6.6 NETCONF capability discovery | yang-library, Writable-running Capability, XPATH capability, Notifications, Interleave capability |
| Watchdog timer | 6.7 Monitoring NETCONF connectivity | used |
| O-RU to O-DU Interface Management | VLAN tagging for C/U/M-Plane | 6.2.3 Management Plane VLAN Discovery Aspects 7.3 C/U Plane VLAN Configuration | used for C/U/M-Plane |
| C/U Plane IP Address Assignment | 7.4 O-RU C/U Plane IP Address Assignment | not used |
| Definition of processing elements | 7.5 Definition of processing elements | a combination of VLAN identity and MAC address |
| C/U Plane Transport Connectivity | 7.6 Verifying C/U Plane Transport Connectivity | Loop-back Protocol (LBM/LBR) |
| O-RU Monitoring of C/U Plane Connectivity | 7.10 O-RU Monitoring of C/U Plane Connectivity | not used |
| Configuration Management | Baseline configuration | 9.1 Baseline configuration | 2 phases |
| Fault Management | subscribe notification | 11.3 Manage Alarms Request to NETCONF Clients | default stream |
| Synchronization Aspects | Sync Capability Object | 13.3 Sync Capability Object | CLASS\_B |
| Details of O-RU Operations | Activation, deactivation and sleep | 15.3.2 Activation, deactivation and sleep | used |

### A.1.2 M-Plane IOT Profile 2 Hybrid-sudo+nms

Profile Test Configurations:

* Hybrid-sudo+nms-[DHCP]
* Hybrid-sudo+nms-[o-ran-mplane-int.yang]

**Table A.1.2-1: Hybrid-sudo+nms**

| **Category** | **Item** | Related O-RAN M-Plane/ YANG specification section(s) |  |
| --- | --- | --- | --- |
| High Level Description | Architectural models | 5.1.2 M-Plane architecture model | Hybrid model |
| IP version | 5.1.3 Transport Network | IPv4 |
| Hash algorithm for data integrity | 5.4 Security | HMAC-SHA2-256 |
| Cyphering algorithm | 5.4 Security | AES128-CTR |
| "Start up" installation | O-RU identification by DHCP option | 6.2.2 O-RU identification in DHCP | DHCPv4(Option: 60) |
| VLAN Discovery | 6.2.3 Management Plane VLAN Discovery Aspects | support VLAN SCAN |
| IP address assignment | 6.2.4 O-RU Management Plane IP Address Assignment | IPv4 configuration using DHCPv4 |
| O-RU controller discovery | 6.2.5 O-RU Controller Discovery | Entry 1) DHCPv4 option 43  Entry 2) Configured by o-ran-mplane-int.yang |
| DHCP format of O-RU controller discovery | 6.2.5 O-RU Controller Discovery | O-RU Controller IP Address |
| NETCONF Call Home | 6.3 NETCONF Call Home to O-RU Controller(s) | call home(port4334) |
| SSH/TLS Connection Establishment | 6.4 NETCONF Connection Establishment | SSH: password-based authentication |
| TCP port for SSH/TLS establishment (for test purpose) | 6.4.1 NETCONF Security  YANG (4) o-ran-mplane-int.yang | SSH: Default (port 830) |
| NETCONF Authentication | 6.4.2NETCONF Authentication | password-based authentication |
| User Account Provisioning | 6.4.3 User Account Provisioning | default sudo |
| sudo | 6.5 NETCONF Access Control | used |
| nms | 6.5 NETCONF Access Control | used |
| fm-pm | 6.5 NETCONF Access Control | not used |
| swm | 6.5 NETCONF Access Control | not used |
| NETCONF capability | 6.6 NETCONF capability discovery | yang-library, Writable-running Capability, XPATH capability, Notifications, Interleave capability |
| Watchdog timer | 6.7 Monitoring NETCONF connectivity | used |
| O-RU to O-DU Interface Management | VLAN tagging for C/U/M-Plane | 6.2.3 Management Plane VLAN Discovery Aspects 7.3 C/U Plane VLAN Configuration | used for C/U/M-Plane |
| C/U Plane IP Address Assignment | 7.4 O-RU C/U Plane IP Address Assignment | not used |
| Definition of processing elements | 7.5 Definition of processing elements | a combination of VLAN identity and MAC address |
| C/U Plane Transport Connectivity | 7.6 Verifying C/U Plane Transport Connectivity | Loop-back Protocol (LBM/LBR) |
| O-RU Monitoring of C/U Plane Connectivity | 7.10 O-RU Monitoring of C/U Plane Connectivity | not used |
| Configuration Management | Baseline configuration | 9.1 Baseline configuration | 2 phases |
| Fault Management | subscribe notification | 11.3 Manage Alarms Request to NETCONF Clients | default stream |
| Synchronization Aspects | Sync Capability Object | 13.3 Sync Capability Object | CLASS\_B |
| Details of O-RU Operations | Activation, deactivation and sleep | 15.3.2 Activation, deactivation and sleep | not used |

### A.1.3 M-Plane IOT Profile 3 Hierarchical-sudo-IPv6

Profile Test Configurations:

* Hierarchical-sudo-IPv6\_[SSH-IPaddStateFull-SyncENHANCED]
* Hierarchical-sudo-IPv6\_[SSH- IPaddStateless-SyncENHANCED]
* Hierarchical-sudo-IPv6\_[TLS- IPaddStateFull-SyncCLASS\_B]
* Hierarchical-sudo-IPv6\_[TLS- IPaddStateless-SyncCLASS\_B]

**Table A.1.3-1:** **Hierarchical-sudo-IPv6**

| Category | Item | Related O-RAN M-Plane/ YANG specification section(s) |  |
| --- | --- | --- | --- |
| High Level Description | Architectural models | 5.1.2 M-Plane architecture model | Hierarchical model |
| IP version | 5.1.3 Transport Network | IPv6 |
| Hash algorithm for data integrity | 5.4 Security | Entry 1) SSHv2 -HMAC-SHA2-256  Entry 2) TLS1.2 - SHA256 |
| Cyphering algorithm | 5.4 Security | Entry 1) SSHv2 - AES128-CTR  Entry 2) TLS1.2 -AES128-GCM |
| "Start up" installation | O-RU identification by DHCP option | 6.2.2 O-RU identification in DHCP | DHCPv6 (Option: 16) |
| VLAN Discovery | 6.2.3 Management Plane VLAN Discovery Aspects | support VLAN SCAN |
| IP address assignment | 6.2.4 O-RU Management Plane IP Address Assignment | Entry 1) State-full address configuration  Entry 2) Stateless Address Auto-Configuration (SLAAC) |
| O-RU controller discovery | 6.2.5 O-RU Controller Discovery | DHCPv6 (Option: 17) |
| DHCP format of O-RU controller discovery | 6.2.5 O-RU Controller Discovery | O-RU Controller IP Address |
| NETCONF Call Home | 6.3 NETCONF Call Home to O-RU Controller(s) | Entry 1) SSH - call home port:4334  Entry 2) TLS - call home port 4335 |
| SSH/TLS Connection Establishment | 6.4 NETCONF Connection Establishment | Entry 1) SSH - password-based authentication  Entry 2) TLS - X.509 Certificate |
| TCP port for SSH/TLS establishment (for test purpose) | 6.4.1 NETCONF Security  YANG (4) o-ran-mplane-int.yang | Entry 1) SSH Default (port 830)  Entry 2) TLS Default (port 6513) |
| NETCONF Authentication | 6.4.2 NETCONF Authentication | Entry 1) SSH password-based authentication  Entry 2) TLS - X.509 Certificate |
| User Account Provisioning | 6.4.3 User Account Provisioning | default sudo |
| sudo | 6.5 NETCONF Access Control | used |
| nms | 6.5 NETCONF Access Control | not used |
| fm-pm | 6.5 NETCONF Access Control | not used |
| swm | 6.5 NETCONF Access Control | not used |
| NETCONF capability | 6.6 NETCONF capability discovery | yang-library, Writable-running Capability,  rollback on error, XPATH capability, Notifications, Interleave capability |
| Watchdog timer | 6.7 Monitoring NETCONF connectivity | used |
| O-RU to O-DU Interface Management | VLAN tagging for C/U/M-Plane | 6.2.3 Management Plane VLAN Discovery Aspects 7.3 C/U Plane VLAN Configuration | used for C/U/M-Plane |
| C/U Plane IP Address Assignment | 7.4 O-RU C/U Plane IP Address Assignment | not used |
| Definition of processing elements | 7.5 Definition of processing elements | a combination of VLAN identity and MAC address |
| C/U Plane Transport Connectivity | 7.6 Verifying C/U Plane Transport Connectivity | Loop-back Protocol (LBM/LBR) |
| O-RU Monitoring of C/U Plane Connectivity | 7.10 O-RU Monitoring of C/U Plane Connectivity | not used |
| Configuration Management | Baseline configuration | 9.1 Baseline configuration | 2 phases |
| Fault Management | subscribe notification | 11.3 Manage Alarms Request to NETCONF Clients | default stream |
| Synchronization Aspects | Sync Capability Object | 13.3 Sync Capability Object | Entry 1: CLASS\_B  Entry 2: ENHANCED |
| Details of O-RU Operations | Activation, deactivation and sleep | 15.3.2 Activation, deactivation and sleep | used |

### A.1.4 M-Plane IOT Profile 4 Hybrid-sudo+nms-IPv6

Profile Test Configurations:

* Hybrid-sudo+nms-IPv6\_[SSH-IPaddStateFull-SyncENHANCED-DHCP]
* Hybrid-sudo+nms-IPv6\_[SSH- IPaddStateless-SyncENHANCED-DHCP]
* Hybrid-sudo+nms-IPv6\_[TLS- IPaddStateFull-SyncCLASS\_B-DHCP]
* Hybrid-sudo+nms-IPv6\_[TLS- IPaddStateless-SyncCLASS\_B-DHCP]
* Hybrid-sudo+nms-IPv6\_[TLS- IPaddStateFull-SyncCLASS\_B-int.yang]

**Table A.1.4-1: Hybrid-sudo+nms-IPv6**

| Category | Item | Related O-RAN M-Plane/ YANG specification section(s) |  |
| --- | --- | --- | --- |
| High Level Description | Architectural models | 5.1.2 M-Plane architecture model | Hybrid model |
| IP version | 5.1.3 Transport Network | IPv6 |
| Hash algorithm for data integrity | 5.4 Security | Entry 1) SSHv2 -HMAC-SHA2-256  Entry 2) TLS1.2 - SHA256 |
| Cyphering algorithm | 5.4 Security | Entry 1) SSHv2 - AES128-CTR  Entry 2) TLS1.2 -AES128-GCM |
| "Start up" installation | O-RU identification by DHCP option | 6.2.2 O-RU identification in DHCP | DHCPv6 (Option: 16) |
| VLAN Discovery | 6.2.3 Management Plane VLAN Discovery Aspects | support VLAN SCAN |
| IP address assignment | 6.2.4 O-RU Management Plane IP Address Assignment | Entry 1) State-full address configuration  Entry 2) Stateless Address Auto-Configuration (SLAAC) |
| O-RU controller discovery | 6.2.5 O-RU Controller Discovery | Entry 1) DHCPv6 (Option: 17)  Entry 2) Configured by o-ran-mplane-int.yang |
| DHCP format of O-RU controller discovery | 6.2.5 O-RU Controller Discovery | O-RU Controller IP Address |
| NETCONF Call Home | 6.3 NETCONF Call Home to O-RU Controller(s) | Entry 1) SSH - call home port:4334  Entry 2) TLS - call home port 4335 |
| SSH/TLS Connection Establishment | 6.4 NETCONF Connection Establishment | Entry 1) SSH - password-based authentication  Entry 2) TLS - X.509 Certificate |
| TCP port for SSH/TLS establishment (for test purpose) | 6.4.1 NETCONF Security  YANG (4) o-ran-mplane-int.yang | Entry 1) SSH Default (port 830)  Entry 2) TLS Default (port 6513) |
| NETCONF Authentication | 6.4.2 NETCONF Authentication | Entry 1) SSH password-based authentication  Entry 2) TLS - X.509 Certificate |
| User Account Provisioning | 6.4.3 User Account Provisioning | default sudo |
| sudo | 6.5 NETCONF Access Control | used |
| nms | 6.5 NETCONF Access Control | used |
| fm-pm | 6.5 NETCONF Access Control | not used |
| swm | 6.5 NETCONF Access Control | not used |
| NETCONF capability | 6.6 NETCONF capability discovery | yang-library, Writable-running Capability,  rollback on error, XPATH capability, Notifications, Interleave capability |
| Watchdog timer | 6.7 Monitoring NETCONF connectivity | used |
| O-RU to O-DU Interface Management | VLAN tagging for C/U/M-Plane | 6.2.3 Management Plane VLAN Discovery Aspects 7.3 C/U Plane VLAN Configuration | used for C/U/M-Plane |
| C/U Plane IP Address Assignment | 7.4 O-RU C/U Plane IP Address Assignment | not used |
| Definition of processing elements | 7.5 Definition of processing elements | a combination of VLAN identity and MAC address |
| C/U Plane Transport Connectivity | 7.6 Verifying C/U Plane Transport Connectivity | Loop-back Protocol (LBM/LBR) |
| O-RU Monitoring of C/U Plane Connectivity | 7.10 O-RU Monitoring of C/U Plane Connectivity | not used |
| Configuration Management | Baseline configuration | 9.1 Baseline configuration | 2 phases |
| Fault Management | subscribe notification | 11.3 Manage Alarms Request to NETCONF Clients | default stream |
| Synchronization Aspects | Sync Capability Object | 13.3 Sync Capability Object | Entry 1: CLASS\_B  Entry 2: ENHANCED |
| Details of O-RU Operations | Activation, deactivation and sleep | 15.3.2 Activation, deactivation and sleep | not used |

## A.2 CUS-Plane IOT Profiles

### A.2.1 NR TDD

#### A.2.1.1 NR TDD IOT Profile 1 - NR-TDD-FR1-CAT-A-NoBF

Profile Test Configurations:

* NR-TDD-FR1-CAT-A-NoBF\_[ConfigDDDSUUDDDD-4SS-14bitIQ-25Gbpsx1lane-PRACHB4-eAxCID2644-llsC1C2]
* NR-TDD-FR1-CAT-A-NoBF\_[ConfigDDDSUUDDDD-4SS-14bitIQ-25Gbpsx1lane-PRACHF0-eAxCID2644-llsC1C2]
* NR-TDD-FR1-CAT-A-NoBF\_[ConfigDDDSUUDSUU-4SS-14bitIQ-25Gbpsx1lane-PRACHB4-eAxCID2644-llsC1C2]
* NR-TDD-FR1-CAT-A-NoBF\_[ConfigDDDSUUDSUU-4SS-14bitIQ-25Gbpsx1lane-PRACHF0-eAxCID2644-llsC1C2]
* NR-TDD-FR1-CAT-A-NoBF\_[ConfigDDDSUUDDDD-4SS-14bitIQ-10Gbpsx2lane-PRACHC2-eAxCID4246-llsC1C2]
* NR-TDD-FR1-CAT-A-NoBF\_[ConfigDDDDDDDSUU-2SS-8bitIQ-10Gbpsx1lane-PRACHF0-eAxCID2644-llsC1C2]
* NR-TDD-FR1-CAT-A-NoBF\_[ConfigDDDDDDDSUU-4SS-8bitIQ-10Gbpsx1lane-PRACHB4-eAxCID2644-llsC1C2]
* NR-TDD-FR1-CAT-A-NoBF\_[ConfigDDDSUDDDSU-4SS-9bitIQ-10Gbpsx1lane-PRACHC2-eAxCID2644-llsC3]

**Table A.2.1.1-1: NR TDD IOT Profile 1 - NR-TDD-FR1-CAT-A-NoBF**

| **Category** | **Item** | **Related O-RAN CUS-Plane specification section(s)** |  |
| --- | --- | --- | --- |
| General | Radio access technology | - | NR TDD |
| TDD configuration | - | Entry1:  pattern1{ dl-UL-TransmissionPeriodicity ms3 nrofDownlinkSlots 3 nrofDownlinkSymbols 6 nrofUplinkSlots 2 nrofUplinkSymbols 4}  pattern2{ dl-UL-TransmissionPeriodicity ms2 nrofDownlinkSlots 4 nrofDownlinkSymbols 0 nrofUplinkSlots 0 nrofUplinkSymbols 0}  Entry2:  dl-UL-TransmissionPeriodicity ms5 nrofDownlinkSlots 7 nrofDownlinkSymbols 6 nrofUplinkSlots 2 nrofUplinkSymbols 4  Entry3:  dl-UL-TransmissionPeriodicity ms2p5  nrofDownlinkSlots 3  nrofDownlinkSymbols 10  nrofUplinkSlots 1  nrofUplinkSymbols 2  Entry4:  pattern1{ dl-UL-TransmissionPeriodicity ms3 nrofDownlinkSlots 3 nrofDownlinkSymbols 6 nrofUplinkSlots 2 nrofUplinkSymbols 4}  pattern2{ dl-UL-TransmissionPeriodicity ms2 nrofDownlinkSlots 1 nrofDownlinkSymbols 10 nrofUplinkSlots 2 nrofUplinkSymbols 0} |
| Nominal sub-carrier spacing | - | 30 kHz |
| SSB sub-carrier spacing | - | 30 kHz |
| Nominal FFT size | - | 4096 |
| Total channel bandwidth | - | 100MHz x 1CC |
| Number of spatial/antenna streams | - | Entry1: 2  Entry2: 4 |
| Fronthaul Ethernet link | - | Entry1: 25Gbps x 1lane Entry2: 10Gbps x 2lane  Entry3: 10Gbps x 1lane |
| PRACH preamble format | - | Entry1: B4 Entry2: C2  Entry3: Long preamble F0 |
| RU category | 4.1.1 | Category A |
| LAA | - | FALSE |
| Delay management | Network delay determination | 4.3.3 | Defined Transport Method |
| RU adaptation of delay profile information (based on O-DU delay profile and transport delay) | 4.3.3.2 | FALSE |
| O-DU timing advance type | 4.3.4-4.3.5, Annex B | Fixed Timing Advance |
| T1a\_max\_up | 4.3, Annex B | Less than or equal to 345us |
| T1a\_min\_up | 4.3, Annex B | More than or equal to 294us |
| T2a\_max\_up | 4.3, Annex B | More than or equal to 345us |
| T2a\_min\_up | 4.3, Annex B | Less than or equal to 134us |
| Tcp\_adv\_dl | 4.3.2, Annex B | 125 us |
| Ta3\_max\_up | 4.3, Annex B | Less than or equal to 171us |
| Ta3\_min\_up | 4.3, Annex B | More than or equal to 50us |
| Ta4\_max\_up | 4.3, Annex B | More than or equal to 331us |
| Ta4\_min\_up | 4.3, Annex B | Less than or equal to 50us |
| Ta3\_max\_up (scs=1.25kHz) | 4.3, Annex B | Less than or equal to 1650us |
| Ta3\_min\_up (scs=1.25kHz) | 4.3, Annex B | More than or equal to 827us |
| Ta4\_max\_up (scs=1.25kHz) | 4.3.2-4.3.3, Annex B | More than or equal to 1810us |
| Ta4\_min\_up (scs=1.25kHz) | 4.3.2-4.3.3, Annex B | Less than or equal to 827us |
| T1a\_max\_cp\_ul | 4.3.2-4.3.3, Annex B | Less than or equal to 336us |
| T1a\_min\_cp\_ul | 4.3.2-4.3.3, Annex B | More than or equal to 285us |
| T2a\_max\_cp\_ul | 4.3.2-4.3.3, Annex B | More than or equal to 336us |
| T2a\_min\_cp\_ul | 4.3.2-4.3.3, Annex B | Less than or equal to 125us |
| T12\_max | 4.3, Annex B | 160 us |
| T12\_min | 4.3, Annex B | 0 us |
| T34\_max | 4.3, Annex B | 160 us |
| T34\_min | 4.3, Annex B | 0 us |
| Non-delay managed U-Plane traffic | 4.3.6 | FALSE |
| C/U-Plane transport | Transport encapsulation | 5.1.1-5.1.2 | Ethernet |
| Jumbo frames | 5.1.2 | FALSE |
| Transport header | 5.1.3 | eCPRI |
| eCPRI concatenation | 5.1.3.1 | FALSE |
| eAxC ID DU\_Port\_ID bitwidth | 5.1.3.1.6 | Entry1: 2 Entry2: 4 |
| eAxC ID BandSector\_ID bitwidth | 5.1.3.1.6 | Entry1: 6 Entry2: 2 |
| eAxC ID CC\_ID bitwidth | 5.1.3.1.6 | 4 |
| eAxC ID RU\_Port\_ID bitwidth | 5.1.3.1.6 | Entry1: 4 Entry2: 6 |
| Fragmentation | 5.5 | Application layer fragmentation |
| Transport prioritization across C/U/S/M-Plane | 5.3 | Default L2 CoS priority |
| Transport prioritization within U-Plane | 5.3 | False (Default U-Plane priority applies) |
| Separation of C/U-Plane and M-Plane traffic | 5.4 | VLAN ID |
| Transport-based separation within C/U-Plane traffic | 5.4 | FALSE |
| Digital Power Scaling | UL gain\_correction | 8.1.3.2 | 0dB |
| Beamforming | RU beamforming type | 4.1.1 | No beamforming |
| Beamforming control method | 7.4, Annex J | Beamforming ID based (always "0") |
| IQ compression | U-Plane data compression method | 8, Annex A | Block floating point |
| U-Plane data IQ bitwidth | 8, Annex D | Entry1: 8  Entry2: 14  Entry3: 9 |
| IQ data frame format not including udCompHdr field | 8.3.3.13 | TRUE |
| C-Plane | Section Type 0 | 7.4.2 | TRUE |
| Section Type 1 | 7.4.2 | TRUE |
| Section Type 3 | 7.4.2 | TRUE |
| Section Type 5 | 7.4.2 | FALSE |
| Section Type 6 | 7.4.2 | FALSE |
| Section Type 7 | 7.4.2 | FALSE |
| "symInc" flag | 7.4.5.3 | FALSE (always set to '0') |
| C-Plane for PRACH formats with preamble repetition | 7.3.2 | Single C-Plane message |
| Section extension 1 | 7.4.6 | FALSE |
| Section extension 2 | 7.4.6 | FALSE |
| Section extension 3 | 7.4.6 | FALSE |
| Section extension 4 | 7.4.6 | FALSE |
| Section extension 5 | 7.4.6 | FALSE |
| S-Plane | PTP Full Timing Support (G.8275.1) | 5.2.3, 10.1, 11 | TRUE |
| PTP Partial Timing Support (G.8275.2) | 5.2.3, 10.1, 11 | FALSE |
| Local PRTC | 5.2.3, 10.1, 11 | FALSE |
| Topology configuration | 11.2.2  10, 11.2.3 (for PLFS) | Entry1: lls-C1 (can also apply lls-C2)  Entry2: lls-C3 |

#### A.2.1.2 NR TDD IOT Profile 2 - NR-TDD-FR1-CAT-A-DBF

Profile Test Configurations:

* NR-TDD-FR1-CAT-A-DBF\_[ConfigDDDSUUDDDD-100MHz-PRACHB4-llsC1C2]
* NR-TDD-FR1-CAT-A-DBF\_[ConfigDDDSUUDDDD-100MHz- PRACHF0-llsC1C2]
* NR-TDD-FR1-CAT-A-DBF\_[ConfigDDDSUUDSUU-100MHz-PRACHB4-llsC1C2]
* NR-TDD-FR1-CAT-A-DBF\_[ConfigDDDSUUDSUU-100MHz- PRACHF0-llsC1C2]
* NR-TDD-FR1-CAT-A-DBF\_[ConfigDDDSUUDDDD- 80MHz-PRACHB4-llsC3]

**Table A.2.1.2-1: NR TDD IOT Profile 2 - NR-TDD-FR1-CAT-A-DBF**

| **Category** | **Item** | **Related O-RAN CUS-Plane specification section(s)** |  |
| --- | --- | --- | --- |
| General | Radio access technology | - | NR TDD |
| TDD configuration | - | Entry1:  pattern1{ dl-UL-TransmissionPeriodicity ms3 nrofDownlinkSlots 3 nrofDownlinkSymbols 6 nrofUplinkSlots 2 nrofUplinkSymbols 4}  pattern2{ dl-UL-TransmissionPeriodicity ms2 nrofDownlinkSlots 4 nrofDownlinkSymbols 0 nrofUplinkSlots 0 nrofUplinkSymbols 0}  Entry2:  pattern1{ dl-UL-TransmissionPeriodicity ms3 nrofDownlinkSlots 3  nrofDownlinkSymbols 6 nrofUplinkSlots 2 nrofUplinkSymbols 4}  pattern2{ dl-UL-TransmissionPeriodicity ms2 nrofDownlinkSlots 1 nrofDownlinkSymbols 10 nrofUplinkSlots 2 nrofUplinkSymbols 0} |
| Nominal sub-carrier spacing | - | 30 kHz |
| SSB sub-carrier spacing | - | 30 kHz |
| Nominal FFT size | - | 4096 |
| Total channel bandwidth | - | Entry1: 100MHz x 1CC  Entry2: 80MHz x 1CC |
| Number of spatial/antenna streams | - | 4 |
| Fronthaul Ethernet link | - | 25Gbps x 1lane |
| PRACH preamble format | - | Entry1: B4  Entry2: Long preamble F0 |
| RU category | 4.1.1 | Category A |
| LAA | - | FALSE |
| Delay management | Network delay determination | 4.3.3 | Defined Transport Method |
| RU adaptation of delay profile information (based on O-DU delay profile and transport delay) | 4.3.3.2 | FALSE |
| O-DU timing advance type | 4.3.4-4.3.5, Annex B | Fixed Timing Advance |
| T1a\_max\_up | 4.3, Annex B | Less than or equal to 345us |
| T1a\_min\_up | 4.3, Annex B | More than or equal to 294us |
| T2a\_max\_up | 4.3, Annex B | More than or equal to 345us |
| T2a\_min\_up | 4.3, Annex B | Less than or equal to 134us |
| Tcp\_adv\_dl | 4.3.2, Annex B | 125 us |
| Ta3\_max\_up | 4.3, Annex B | Less than or equal to 171us |
| Ta3\_min\_up | 4.3, Annex B | More than or equal to 50us |
| Ta4\_max\_up | 4.3, Annex B | More than or equal to 331us |
| Ta4\_min\_up | 4.3, Annex B | Less than or equal to 50us |
| Ta3\_max\_up (scs=1.25kHz) | 4.3, Annex B | Less than or equal to 1650us |
| Ta3\_min\_up (scs=1.25kHz) | 4.3, Annex B | More than or equal to 827us |
| Ta4\_max\_up (scs=1.25kHz) | 4.3.2-4.3.3, Annex B | More than or equal to 1810us |
| Ta4\_min\_up (scs=1.25kHz) | 4.3.2-4.3.3, Annex B | Less than or equal to 827us |
| T1a\_max\_cp\_ul | 4.3.2-4.3.3, Annex B | Less than or equal to 336us |
| T1a\_min\_cp\_ul | 4.3.2-4.3.3, Annex B | More than or equal to 285us |
| T2a\_max\_cp\_ul | 4.3.2-4.3.3, Annex B | More than or equal to 336us |
| T2a\_min\_cp\_ul | 4.3.2-4.3.3, Annex B | Less than or equal to 125us |
| T12\_max | 4.3, Annex B | 160 us |
| T12\_min | 4.3, Annex B | 0 us |
| T34\_max | 4.3, Annex B | 160 us |
| T34\_min | 4.3, Annex B | 0 us |
| Non-delay managed U-Plane traffic | 4.3.6 | FALSE |
| C/U-Plane transport | Transport encapsulation | 5.1.1-5.1.2 | Ethernet |
| Jumbo frames | 5.1.2 | FALSE |
| Transport header | 5.1.3 | eCPRI |
| eCPRI concatenation | 5.1.3.1 | FALSE |
| eAxC ID DU\_Port\_ID bitwidth | 5.1.3.1.6 | 2 |
| eAxC ID BandSector\_ID bitwidth | 5.1.3.1.6 | 6 |
| eAxC ID CC\_ID bitwidth | 5.1.3.1.6 | 4 |
| eAxC ID RU\_Port\_ID bitwidth | 5.1.3.1.6 | 4 |
| Fragmentation | 5.5 | Application layer fragmentation |
| Transport prioritization across C/U/S/M-Plane | 5.3 | Default L2 CoS priority |
| Transport prioritization within U-Plane | 5.3 | False (Default U-Plane priority applies) |
| Separation of C/U-Plane and M-Plane traffic | 5.4 | VLAN ID |
| Transport-based separation within C/U-Plane traffic | 5.4 | FALSE |
| Digital Power Scaling | UL gain\_correction | 8.1.3.2 | 0dB |
| Beamforming | RU beamforming type | 4.1.1 | Digital beamforming |
| Beamforming control method | 7.4, Annex J | Beamforming ID based |
| IQ compression | U-Plane data compression method | 8, Annex A | Block floating point |
| U-Plane data IQ bitwidth | 8, Annex D | 14 |
| IQ data frame format not including udCompHdr field | 8.3.3.13 | TRUE |
| C-Plane | Section Type 0 | 7.4.2 | TRUE |
| Section Type 1 | 7.4.2 | TRUE |
| Section Type 3 | 7.4.2 | TRUE |
| Section Type 5 | 7.4.2 | FALSE |
| Section Type 6 | 7.4.2 | FALSE |
| Section Type 7 | 7.4.2 | FALSE |
| "symInc" flag | 7.4.5.3 | FALSE (always set to '0') |
| C-Plane for PRACH formats with preamble repetition | 7.3.2 | Single C-Plane message |
| Section extension 1 | 7.4.6 | FALSE |
| Section extension 2 | 7.4.6 | FALSE |
| Section extension 3 | 7.4.6 | FALSE |
| Section extension 4 | 7.4.6 | FALSE |
| Section extension 5 | 7.4.6 | FALSE |
| S-Plane | PTP Full Timing Support (G.8275.1) | 5.2.3, 10.1, 11 | TRUE |
| PTP Partial Timing Support (G.8275.2) | 5.2.3, 10.1, 11 | FALSE |
| Local PRTC | 5.2.3, 10.1, 11 | FALSE |
| Topology configuration | 11.2.2  10, 11.2.3 (for PLFS) | Entry1: lls-C1 (can also apply lls-C2)  Entry2: lls-C3 |

#### A.2.1.3 NR TDD IOT Profile 3 - NR-TDD-FR2-CAT-A-ABF

Profile Test Configurations:

* NR-TDD-FR2-CAT-A-ABF\_[100MHz-SSB240kHz&PRACHC0-eAxCID2644-llsC1C2]
* NR-TDD-FR2-CAT-A-ABF\_[200MHz-SSB240kHz&PRACHC0-eAxCID2644-llsC1C2]
* NR-TDD-FR2-CAT-A-ABF\_[300MHz-SSB240kHz&PRACHC0-eAxCID2644-llsC1C2]
* NR-TDD-FR2-CAT-A-ABF\_[400MHz-SSB240kHz&PRACHC0-eAxCID2644-llsC1C2]
* NR-TDD-FR2-CAT-A-ABF\_[100MHz-SSB120kHz&PRACHA3-eAxCID2644-llsC1C2]
* NR-TDD-FR2-CAT-A-ABF\_[200MHz-SSB120kHz&PRACHA3-eAxCID2644-llsC1C2]
* NR-TDD-FR2-CAT-A-ABF\_[300MHz-SSB120kHz&PRACHA3-eAxCID2644-llsC1C2]
* NR-TDD-FR2-CAT-A-ABF\_[400MHz-SSB120kHz&PRACHA3-eAxCID2644-llsC1C2]
* NR-TDD-FR2-CAT-A-ABF\_[800MHz-SSB120kHz&PRACHA3-eAxCID2644-llsC1C2]
* NR-TDD-FR2-CAT-A-ABF\_[100MHz-SSB240kHz&PRACHC2-eAxCID4246-llsC1C2]
* NR-TDD-FR2-CAT-A-ABF\_[200MHz-SSB240kHz&PRACHC2-eAxCID4246-llsC1C2]
* NR-TDD-FR2-CAT-A-ABF\_[400MHz-SSB240kHz&PRACHC2-eAxCID4246-llsC1C2]
* NR-TDD-FR2-CAT-A-ABF\_[600MHz-SSB240kHz&PRACHC2-eAxCID4246-llsC1C2]
* NR-TDD-FR2-CAT-A-ABF\_[800MHz-SSB240kHz&PRACHC2-eAxCID4246-llsC1C2]
* NR-TDD-FR2-CAT-A-ABF\_[200MHz-SSB120kHz&PRACHA3-eAxCID2644-llsC3]
* NR-TDD-FR2-CAT-A-ABF\_[400MHz-SSB120kHz&PRACHA3-eAxCID2644-llsC3]
* NR-TDD-FR2-CAT-A-ABF\_[600MHz-SSB120kHz&PRACHA3-eAxCID2644-llsC3]
* NR-TDD-FR2-CAT-A-ABF\_[800MHz-SSB120kHz&PRACHA3-eAxCID2644-llsC3]

**Table A.2.1.3-1: NR TDD IOT Profile 3 - NR-TDD-FR2-CAT-A-ABF**

| **Category** | **Item** | **Related O-RAN CUS-Plane specification section(s)** |  |
| --- | --- | --- | --- |
| General | Radio access technology | - | NR TDD |
| TDD configuration | - | dl-UL-TransmissionPeriodicity: ms0p625 nrofDownlinkSlots: 3 nrofDownlinkSymbols: 10 nrofUplinkSlots: 1 nrofUplinkSymbols: 2 |
| Nominal sub-carrier spacing | - | 120 kHz |
| SSB sub-carrier spacing | - | Entry1: 240kHz Entry2: 120KHz |
| Nominal FFT size | - | 1024 |
| Total channel bandwidth | - | Entry1: 100MHz x 1CC Entry2: 100MHz x 2CC Entry3: 100MHz x 3CC Entry4: 100MHz x 4CC Entry5: 100MHz x 6CC Entry6: 100MHz x 8CC |
| Number of spatial/antenna streams | - | 2 |
| Fronthaul Ethernet link | - | 25Gbps x 1lane for 100MHz x 1,2,3,4CC, 25Gbps x 2lane for 100MHz x 6,8CC |
| PRACH preamble format | - | Entry1: C0 Entry2: A3 Entry3: C2 |
| RU category | 4.1.1 | Category A |
| LAA | - | FALSE |
| Delay management | Network delay determination | 4.3.3 | Defined Transport Method |
| RU adaptation of delay profile information (based on O-DU delay profile and transport delay) | 4.3.3.2 | FALSE |
| O-DU timing advance type | 4.3.4-4.3.5, Annex B | Fixed Timing Advance |
| T1a\_max\_up | 4.3, Annex B | Less than or equal to 264us |
| T1a\_min\_up | 4.3, Annex B | More than or equal to 213us |
| T2a\_max\_up | 4.3, Annex B | More than or equal to 264us |
| T2a\_min\_up | 4.3, Annex B | Less than or equal to 53us |
| Tcp\_adv\_dl | 4.3.2, Annex B | 63 us |
| Ta3\_max\_up | 4.3, Annex B | Less than or equal to 90us |
| Ta3\_min\_up | 4.3, Annex B | More than or equal to 20us |
| Ta4\_max\_up | 4.3, Annex B | More than or equal to 250us |
| Ta4\_min\_up | 4.3, Annex B | Less than or equal to 20us |
| T1a\_max\_cp\_ul | 4.3.2-4.3.3, Annex B | Less than or equal to 274us |
| T1a\_min\_cp\_ul | 4.3.2-4.3.3, Annex B | More than or equal to 223us |
| T2a\_max\_cp\_ul | 4.3.2-4.3.3, Annex B | More than or equal to 274us |
| T2a\_min\_cp\_ul | 4.3.2-4.3.3, Annex B | Less than or equal to 63us |
| T12\_max | 4.3, Annex B | 160 us |
| T12\_min | 4.3, Annex B | 0 us |
| T34\_max | 4.3, Annex B | 160 us |
| T34\_min | 4.3, Annex B | 0 us |
| Non-delay managed U-Plane traffic | 4.3.6 | FALSE |
| C/U-Plane transport | Transport encapsulation | 5.1.1-5.1.2 | Ethernet |
| Jumbo frames | 5.1.2 | FALSE |
| Transport header | 5.1.3 | eCPRI |
| eCPRI concatenation | 5.1.3.1 | FALSE |
| eAxC ID DU\_Port\_ID bitwidth | 5.1.3.1.6 | Entry1: 2 Entry2: 4 |
| eAxC ID BandSector\_ID bitwidth | 5.1.3.1.6 | Entry1: 6 Entry2: 2 |
| eAxC ID CC\_ID bitwidth | 5.1.3.1.6 | 4 |
| eAxC ID RU\_Port\_ID bitwidth | 5.1.3.1.6 | Entry1: 4 Entry2: 6 |
| Fragmentation | 5.5 | Application layer fragmentation |
| Transport prioritization across C/U/S/M-Plane | 5.3 | Default L2 CoS priority |
| Transport prioritization within U-Plane | 5.3 | False (Default U-Plane priority applies) |
| Separation of C/U-Plane and M-Plane traffic | 5.4 | VLAN ID |
| Transport-based separation within C/U-Plane traffic | 5.4 | FALSE |
| Digital Power Scaling | UL gain\_correction | 8.1.3.2 | 0dB |
| Beamforming | RU beamforming type | 4.1.1 | Analog beamforming |
| Beamforming control method | 7.4, Annex J | Beamforming ID based |
| IQ compression | U-Plane data compression method | 8, Annex A | Block floating point |
| U-Plane data IQ bitwidth | 8, Annex D | 14 |
| IQ data frame format not including udCompHdr field | 8.3.3.13 | TRUE |
| C-Plane | Section Type 0 | 7.4.2 | TRUE |
| Section Type 1 | 7.4.2 | TRUE |
| Section Type 3 | 7.4.2 | TRUE |
| Section Type 5 | 7.4.2 | FALSE |
| Section Type 6 | 7.4.2 | FALSE |
| Section Type 7 | 7.4.2 | FALSE |
| "symInc" flag | 7.4.5.3 | FALSE (always set to '0') |
| C-Plane for PRACH formats with preamble repetition | 7.3.2 | Single C-Plane message |
| Section extension 1 | 7.4.6 | FALSE |
| Section extension 2 | 7.4.6 | FALSE |
| Section extension 3 | 7.4.6 | FALSE |
| Section extension 4 | 7.4.6 | FALSE |
| Section extension 5 | 7.4.6 | FALSE |
| S-Plane | PTP Full Timing Support (G.8275.1) | 7.2.3, 10.1, 11 | TRUE |
| PTP Partial Timing Support (G.8275.2) | 5.2.3, 10.1, 11 | FALSE |
| Local PRTC | 5.2.3, 11 | FALSE |
| Topology configuration | 11.2.2  10, 11.2.3 (for PLFS) | Entry1: lls-C1 (can also apply lls-C2)  Entry2: lls-C3 |

#### A.2.1.4 NR TDD IOT M-MIMO Profile 1 - NR-TDD-FR1-CAT-B-mMIMO-RTWeights-BFP

Profile Test Configurations:

* NR-TDD-FR1-CAT-B-mMIMO-RTWeights-BFP\_[ConfigDDDFUUDDDD-100MHz1CC-8SS-25Gbpsx2lane-PRACHF0-noJumbo-BFW.12bitFP-llsC1-SE1\_DM1]
* NR-TDD-FR1-CAT-B-mMIMO-RTWeights-BFP\_[ConfigDDDFUUDDDD-100MHz1CC-8SS-25Gbpsx2lane-PRACHC2-Jumbo-BFW.12bitFP-llsC1noPLFS-SE11\_DM1]
* NR-TDD-FR1-CAT-B-mMIMO-RTWeights-BFP\_[ConfigDDDFUUDDDD-100MHz1CC-16SS-25Gbpsx2lane-PRACHF0-noJumbo-BFW.9bitBFP-llsC1noPLFS-SE11\_DM1]
* NR-TDD-FR1-CAT-B-mMIMO-RTWeights-BFP\_[ConfigDDDFUUDDDD-100MHz1CC-16SS-25Gbpsx2lane-PRACHB4-noJumbo-BFW.12bitFP-llsC3-SE1\_DM1]
* NR-TDD-FR1-CAT-B-mMIMO-RTWeights-BFP\_[ConfigDDDFU-100MHz1CC-8SS-25Gbpsx2lane-PRACHF0-noJumbo-BFW.12bitFP-llsC1noPLFS-SE1] \_DM1
* NR-TDD-FR1-CAT-B-mMIMO-RTWeights-BFP\_[ConfigDDDFU-100MHz1CC-8SS-25Gbpsx2lane-PRACHB4-noJumbo-BFW.9bitBFP-llsC1-SE11] \_DM1
* NR-TDD-FR1-CAT-B-mMIMO-RTWeights-BFP\_[ConfigDDDFU-100MHz1CC-16SS-25Gbpsx2lane-PRACHF0-noJumbo-BFW.12bitFP-llsC1-SE1\_DM1]
* NR-TDD-FR1-CAT-B-mMIMO-RTWeights-BFP\_[ConfigDDDFU-100MHz1CC-16SS-25Gbpsx2lane-PRACHC2-Jumbo-BFW.12bitFP-llsC3-SE11\_DM1]
* NR-TDD-FR1-CAT-B-mMIMO-RTWeights-BFP\_[ConfigDDDFUUDDDD-100MHz1CC-16SS-25Gbpsx2lane-PRACHF0-noJumbo-BFW.9bitBFP-llsC1noPLFS-SE11\_DM2]
* NR-TDD-FR1-CAT-B-mMIMO-RTWeights-BFP\_[ConfigDDDFU-100MHz1CC-8SS-25Gbpsx2lane-PRACHB4-noJumbo-BFW.9bitBFP-llsC1-SE11\_DM2]

**Table A.2.1.4-1: NR TDD IOT M-MIMO Profile 1 - NR-TDD-FR1-CAT-B-mMIMO-RTWeights-BFP**

|  |  |  |  |
| --- | --- | --- | --- |
| **Category** | **Item** | **Related O-RAN CUS-Plane specification section(s)** |  |
| General | Radio access technology | - | NR TDD |
| TDD configuration | - | Entry1: DDDFUUDDDD Entry2: DDDFU |
| Nominal sub-carrier spacing | - | 30kHz |
| SSB sub-carrier spacing | - | 30kHz |
| Nominal FFT size | - | 4096(100MHz\_BW) |
| Total channel bandwidth | - | 100MHz x 1 CC |
| Number of spatial/antenna streams | - | Entry1: 8L (DL), 8 streams (UL) Entry2: 16L (DL), 16 streams (UL) |
| Fronthaul Ethernet link | - | 25Gbps x 2 lane (16L, 1CC) |
| PRACH preamble format | - | Entry1: Long preamble F0 Entry2: B4 Entry3: C2 |
| RU category | 4.1.1 | Category B |
| LAA | - | FALSE |
| Delay management | Network delay determination | 4.3.3 | Defined Transport Method |
| RU adaptation of delay profile information | 4.3.3.2 | FALSE |
| (based on O-DU delay profile and transport delay) |
| O-DU timing advance type | 4.3.4-4.3.5, Annex B | Fixed timing Advance |
| T1a\_max\_up | 4.3, Annex B | Less than or equal to Entry1:345us Entry2: 475us  (Note 2) |
| T1a\_min\_up | 4.3, Annex B | More than or equal to Entry1: 294us Entry2: 400us |
| T1a\_max\_cp\_dl | 4.3, Annex B | Less than or equal to Entry1: 669us  Entry2: 971us |
| T1a\_min\_cp\_dl | 4.3, Annex B | More than or equal t Entry1: 419us Entry2: 550us |
| T2a\_max\_up | 4.3, Annex B | More than or equal to Entry1: 345us Entry2: 475us |
| T2a\_min\_up | 4.3, Annex B | Less than or equal to Entry1: 134us Entry2: 240us |
| T2a\_max\_cp\_dl | 4.3.2, Annex B | More than or equal to Entry1: 669us Entry2: 971us |
| T2a\_min\_cp\_dl | 4.3, Annex B | Less than or equal to Entry1: 259us  Entry2: 390us |
| Tcp\_adv\_dl | 4.3, Annex B | Entry1: 125us Entry2: 150us |
| Ta3\_max\_up | 4.3, Annex B | Less than or equal to Entry1: 171us Entry2: 280us |
| Ta3\_min\_up | 4.3, Annex B | More than or equal to 50us |
| Ta4\_max\_up | 4.3, Annex B | More than or equal to Entry1: 331us Entry2: 440us |
| Ta4\_min\_up | 4.3, Annex B | Less than or equal to 50us |
| Ta3\_max\_up (scs=1.25kHz) | 4.3, Annex B | Less than or equal to 1650us |
| Ta3\_min\_up (scs=1.25kHz) | 4.3, Annex B | More than or equal to 827us |
| Ta4\_max\_up (scs=1.25kHz) | 4.3.2-4.3.3, Annex B | More than or equal to 1810us |
| Ta4\_min\_up (scs=1.25kHz) | 4.3.2-4.3.3, Annex B | Less than or equal to 827us |
| T1a\_max\_cp\_ul | 4.3.2-4.3.3, Annex B | Less than or equal to Entry1: 535us Entry2: 840us |
| T1a\_min\_cp\_ul | 4.3.2-4.3.3, Annex B | More than or equal to Entry1: 285us Entry2: 419us |
| T2a\_max\_cp\_ul | 4.3, Annex B | More than or equal to Entry1: 535us Entry2: 840us |
| T2a\_min\_cp\_ul | 4.3, Annex B | Less than or equal to Entry1: 125us Entry2: 259us |
| T12\_max | 4.3, Annex B | 160us |
| T12\_min | 4.3, Annex B | 0us |
| T34\_max | 4.3, Annex B | 160us |
| T34\_min | 4.3, Annex B | 0us |
| Non-delay managed U-Plane traffic | 4.3.6 | Support |
| C/U-Plane transport | Transport encapsulation | 5.1.1-5.1.2 | Ethernet |
| Jumbo frames | 5.1.2 | Entry1: TRUE  Entry2: FALSE |
| Transport header | 5.1.3 | eCPRI |
| eCPRI concatenation | 5.1.3.1 | FALSE |
| eAxC ID DU\_Port\_ID bitwidth | 5.1.3.1.6 | 5 |
| eAxC ID BandSector\_ID bitwidth | 5.1.3.1.6 | 1 |
| eAxC ID CC\_ID bitwidth | 5.1.3.1.6 | 2 |
| eAxC ID RU\_Port\_ID bitwidth | 5.1.3.1.6 | 8 |
| Fragmentation | 5.5 | Application layer fragmentation |
| Transport prioritization across C/U/S/M-Plane | 5.3 | Default L2 CoS Priority |
| Transport prioritization within U-Plane | 5.3 | TRUE |
| Seperation of C/U-Plane and M-Plane traffic | 5.4 | VLAN ID |
| Transport-based separation within C/U-Plane traffic | 5.4 | FALSE |
| Digital Power Scaling | UL gain\_correction | 8.1.3.2 | 0 dB |
| Beamforming | O-RU beamforming type | 4.1.1 | Digital beamforming |
| Beamforming control method | 7.4, Annex J | RT Weights (Frequency Domain) |
| BFW IQ | 7.4, Annex J | Entry 1: Fixed Point, 12-bit Entry 2: BFP, 9-bit |
| IQ compression | U-Plane data compression method | 8, Annex A | BFP |
| U-Plane (DL/UL) data IQ bitwidth | 8, Annex D | 9 |
| IQ data frame format not including udCompHdr field | 8.3.3.13 | TRUE |
| C-Plane | Section Type 0 | 7.4.2 | TRUE |
| Section Type 1 | 7.4.2 | TRUE |
| Section Type 3 | 7.4.2 | TRUE |
| Section Type 5 | 7.4.2 | FALSE |
| Section Type 6 | 7.4.2 | FALSE |
| Section Type 7 | 7.4.2 | FALSE |
| "symInc" flag | 7.4.5.3 | FALSE (always set to "0") |
| C-Plane for PRACH formats with preamble repetition | 7.3.2 | Single C-Plane message |
| Section extension 1 (beamforming weights) | 7.4.6 | Entry 1: FALSE  Entry 2: TRUE  (Note 1) |
| Section extension 2 (beamforming attributes) | 7.4.6 | FALSE |
| Section extension 3 (DL Precoding configuration parameters and indications) | 7.4.6 | FALSE |
| Section extension 4 (modulation compr. params) | 7.4.6 | FALSE |
| Section extension 5 (modulation compression additional scaling parameters) | 7.4.6 | FALSE |
| Section extension 6 (Non-contiguous PRB allocation) | 7.4.7 | FALSE |
| Section extension 7 (Multiple-eAxC designation) | 7.4.7 | FALSE |
| Section extension 8 (regularization factor) | 7.4.7 | FALSE |
| Section extension 9 (Dynamic Spectrum Sharing parameters) | 7.4.7 | FALSE |
| Section extension 10 (Multiple ports grouping) | 7.4.7 | FALSE |
| Section extension 11 (Flexible BF weights) | 7.4.7 | Entry 1: TRUE  Entry 2: FALSE  (Note 1) |
| Section extension 12 | 7.4.7 | FALSE |
| Section extension 13 | 7.4.7 | FALSE |
| Section extension 14 | 7.4.7 | FALSE |
| Section extension 15 | 7.4.7 | FALSE |
| Section extension 16 | 7.4.7 | FALSE |
| Section extension 17 | 7.4.7 | FALSE |
| S-Plane | PTP Full Timing Support (G.8275.1) | 5.2.3, 10.1, 11 | TRUE |
| PTP Partial Timing Support (G.8275.2) | 5.2.3, 10.1, 11 | FALSE |
| Local PRTC | 5.2.3, 10.1, 11 | FALSE |
| Topology configuration | 11.2.2 10, 11.2.3 (for PLFS) | Entry 1) lls-C1 (can also apply lls-C2) Entry 2) lls-C1 (PLFS not required by O-RU) Entry 3) lls-C3 |

Note 1: Either Section extension 1 or Section extension 11 should be used for IOT (ie, (FALSE, TRUE) or (TRUE, FALSE)).

Note 2: When two entries are present for parameters in section 'Delay Management', DM1 refers to Entry1 and DM2 to Entry2. DM1/2 are used as identifiers in list "Profile Test Configurations".

#### A.2.1.5 NR TDD IOT M-MIMO Profile 2 - NR-TDD-FR1-CAT-B-mMIMO-RTWeights-ModComp

Profile Test Configurations:

* NR-TDD-FR1-CAT-B-mMIMO-RTWeights-ModComp\_[ConfigDDDFUUDDDD-100MHz1CC-8SS-25Gbpsx2lane-PRACHF0-noJumbo-12bitFP.BFW-llsC1-SE1-SE4\_DM1]
* NR-TDD-FR1-CAT-B-mMIMO-RTWeights-ModComp\_[ConfigDDDFUUDDDD-100MHz1CC-8SS-25Gbpsx2lane-PRACHC2-Jumbo-12bitFP.BFW-llsC1noPLFS-SE11-SE5\_DM1]
* NR-TDD-FR1-CAT-B-mMIMO-RTWeights-ModComp\_[ConfigDDDFUUDDDD-100MHz1CC-16SS-25Gbpsx2lane-PRACHF0-noJumbo-9bitBFP.BFW-llsC1noPLFS-SE11-SE5\_DM1]
* NR-TDD-FR1-CAT-B-mMIMO-RTWeights-ModComp\_[ConfigDDDFUUDDDD-100MHz1CC-16SS-25Gbpsx2lane-PRACHB4-noJumbo-12bitFP.BFW-llsC3-SE1-SE5\_DM1]
* NR-TDD-FR1-CAT-B-mMIMO-RTWeights-ModComp\_[ConfigDDDFUUDDDD-100MHz1CC-16SS-25Gbpsx2lane-PRACHF0-Jumbo-9bitBFP.BFW-llsC1-SE11-SE4\_DM1]
* NR-TDD-FR1-CAT-B-mMIMO-RTWeights-ModComp\_[ConfigDDDFUUDDDD-100MHz2CC-8SS-25Gbpsx3lane-PRACHF0-noJumbo-12bitFP.BFW-llsC1-SE1-SE4\_DM1]
* NR-TDD-FR1-CAT-B-mMIMO-RTWeights-ModComp\_[ConfigDDDFUUDDDD-100MHz2CC-8SS-25Gbpsx3lane-PRACHC2-Jumbo-12bitFP.BFW-llsC1noPLFS-SE11-SE5\_DM1]
* NR-TDD-FR1-CAT-B-mMIMO-RTWeights-ModComp\_[ConfigDDDFUUDDDD-100MHz2CC-16SS-25Gbpsx3lane-PRACHF0-noJumbo-9bitBFP.BFW-llsC1noPLFS-SE11-SE5\_DM1]
* NR-TDD-FR1-CAT-B-mMIMO-RTWeights-ModComp\_[ConfigDDDFUUDDDD-100MHz2CC-16SS-25Gbpsx3lane-PRACHB4-noJumbo-12bitFP.BFW-llsC3-SE1-SE4\_DM1]
* NR-TDD-FR1-CAT-B-mMIMO-RTWeights-ModComp\_[ConfigDDDFU-100MHz1CC-8SS-25Gbpsx2lane-PRACHF0-noJumbo-12bitFP.BFW-llsC1noPLFS-SE1-SE5\_DM1]
* NR-TDD-FR1-CAT-B-mMIMO-RTWeights-ModComp\_[ConfigDDDFU-100MHz1CC-8SS-25Gbpsx2lane-PRACHB4-noJumbo-9bitBFP.BFW-llsC1-SE11-SE5\_DM1]
* NR-TDD-FR1-CAT-B-mMIMO-RTWeights-ModComp\_[ConfigDDDFU-100MHz1CC-16SS-25Gbpsx2lane-PRACHF0-noJumbo-12bitFP.BFW-llsC1-SE1-SE4\_DM1]
* NR-TDD-FR1-CAT-B-mMIMO-RTWeights-ModComp\_[ConfigDDDFU-100MHz1CC-16SS-25Gbpsx2lane-PRACHC2-Jumbo-12bitFP.BFW-llsC3-SE11-SE5\_DM1]
* NR-TDD-FR1-CAT-B-mMIMO-RTWeights-ModComp\_[ConfigDDDFU-100MHz1CC-16SS-25Gbpsx2lane-PRACHF0-Jumbo-9bitBFP.BFW-llsC1noPLFS-SE11-SE4\_DM1]
* NR-TDD-FR1-CAT-B-mMIMO-RTWeights-ModComp\_[ConfigDDDFU-100MHz2CC-8SS-25Gbpsx3lane-PRACHF0-noJumbo-12bitFP.BFW-llsC1noPLFS-SE1-SE4\_DM1]
* NR-TDD-FR1-CAT-B-mMIMO-RTWeights-ModComp\_[ConfigDDDFU-100MHz2CC-8SS-25Gbpsx3lane-PRACHB4-noJumbo-9bitBFP.BFW-llsC1-SE11-SE5\_DM1]
* NR-TDD-FR1-CAT-B-mMIMO-RTWeights-ModComp\_[ConfigDDDFU-100MHz2CC-16SS-25Gbpsx3lane-PRACHF0-noJumbo-12bitFP.BFW-llsC1-SE1-SE4\_DM1]
* NR-TDD-FR1-CAT-B-mMIMO-RTWeights-ModComp\_[ConfigDDDFU-100MHz2CC-16SS-25Gbpsx3lane-PRACHC2-Jumbo-12bitFP.BFW-llsC3-SE11-SE5\_DM1]
* NR-TDD-FR1-CAT-B-mMIMO-RTWeights-ModComp\_[ConfigDDDFUUDDDD-100MHz1CC-16SS-25Gbpsx2lane-PRACHF0-noJumbo-9bitBFP.BFW-llsC1noPLFS-SE11-SE5\_DM2]
* NR-TDD-FR1-CAT-B-mMIMO-RTWeights-ModComp\_[ConfigDDDFU-100MHz1CC-8SS-25Gbpsx2lane-PRACHB4-noJumbo-9bitBFP.BFW-llsC1-SE11-SE5\_DM2]

**Table A.2.1.5-1: NR TDD IOT M-MIMO Profile 2 - NR-TDD-FR1-CAT-B-mMIMO-RTWeights-ModComp**

|  |  |  |  |
| --- | --- | --- | --- |
| **Category** | **Item** | **Related O-RAN CUS-Plane specification section(s)** |  |
| General | Radio access technology | - | NR TDD |
| TDD configuration | - | Entry1: DDDFUUDDDD Entry2: DDDFU |
| Nominal sub-carrier spacing | - | 30kHz |
| SSB sub-carrier spacing | - | 30kHz |
| Nominal FFT size | - | 4096(100MHz\_BW) |
| Total channel bandwidth | - | Entry1: 100MHz x 1 CC Entry2: 100 MHz x 2 CC |
| Number of spatial/antenna streams | - | Entry1: 8L (DL), 8 streams (UL) Entry2: 16L (DL), 16 streams (UL) |
| Fronthaul Ethernet link | - | Entry1: 25Gbps x 2 lane (16L, 1CC) Entry2: 25Gbps x 3 lane (16L, 2CC) |
| PRACH preamble format | - | Entry1: Long preamble F0 Entry2: B4 Entry3: C2 |
| O-RU category | 4.1.1 | Category B |
| LAA | - | FALSE |
| Delay management | Network delay determination | 4.3.3 | Defined Transport Method |
| O-RU adaptation of delay profile information (based on lls-CU delay profile and transport delay) | 4.3.3.2 | FALSE |
| O-DU timing advance type | 4.3.4-4.3.5, Annex B | Fixed timing Advance |
| T1a\_max\_up | 4.3, Annex B | Less than or equal to Entry1: 345us Entry2: 475us  (Note 3) |
| T1a\_min\_up | 4.3, Annex B | More than or equal to Entry1: 294us Entry2: 400us |
| T1a\_max\_cp\_dl | 4.3, Annex B | Less than or equal to Entry1: 669us Entry2: 971us |
| T1a\_min\_cp\_dl | 4.3, Annex B | More than or equal to Entry1: 419us Entry2: 550us |
| T2a\_max\_up | 4.3, Annex B | More than or equal to Entry1: 345us Entry2: 475us |
| T2a\_min\_up | 4.3, Annex B | Less than or equal to Entry1: 134us Entry2: 240us |
| T2a\_max\_cp\_dl | 4.3.2, Annex B | More than or equal to Entry1: 669us Entry2: 971us |
| T2a\_min\_cp\_dl | 4.3, Annex B | Less than or equal to Entry1: 259us Entry2: 390us |
| Tcp\_adv\_dl | 4.3, Annex B | Entry1: 125us Entry2: 150us |
| Ta3\_max\_up | 4.3, Annex B | Less than or equal to Entry1: 171us Entry2: 280us |
| Ta3\_min\_up | 4.3, Annex B | More than or equal to 50us |
| Ta4\_max\_up | 4.3, Annex B | More than or equal to Entry1: 331us Entry2: 440us |
| Ta4\_min\_up | 4.3, Annex B | Less than or equal to 50us |
| Ta3\_max\_up (scs=1.25kHz) | 4.3, Annex B | Less than or equal to 1650us |
| Ta3\_min\_up (scs=1.25kHz) | 4.3, Annex B | More than or equal to 827us |
| Ta4\_max\_up (scs=1.25kHz) | 4.3.2-4.3.3, Annex B | More than or equal to 1810us |
| Ta4\_min\_up (scs=1.25kHz) | 4.3.2-4.3.3, Annex B | Less than or equal to 827us |
| T1a\_max\_cp\_ul | 4.3.2-4.3.3, Annex B | Less than or equal to Entry1: 535us Entry2: 840us |
| T1a\_min\_cp\_ul | 4.3.2-4.3.3, Annex B | More than or equal to Entry1: 285us Entry2: 419us |
| T2a\_max\_cp\_ul | 4.3, Annex B | More than or equal to Entry1: 535us Entry2: 840us |
| T2a\_min\_cp\_ul | 4.3, Annex B | Less than or equal to Entry1: 125us Entry2: 259us |
| T12\_max | 4.3, Annex B | 160us |
| T12\_min | 4.3, Annex B | 0us |
| T34\_max | 4.3, Annex B | 160us |
| T34\_min | 4.3, Annex B | 0us |
| Non-delay managed U-Plane traffic | 4.3.6 | Support |
| C/U-Plane transport | Transport encapsulation | 5.1.1-5.1.2 | Ethernet |
| Jumbo frames | 5.1.2 | Entry1: TRUE  Entry2: FALSE |
| Transport header | 5.1.3 | eCPRI |
| eCPRI concatenation | 5.1.3.1 | FALSE |
| eAxC ID DU\_Port\_ID bitwidth | 5.1.3.1.6 | 5 |
| eAxC ID BandSector\_ID bitwidth | 5.1.3.1.6 | 1 |
| eAxC ID CC\_ID bitwidth | 5.1.3.1.6 | 2 |
| eAxC ID RU\_Port\_ID bitwidth | 5.1.3.1.6 | 8 |
| Fragmentation | 5.5 | Application layer fragmentation |
| Transport prioritization across C/U/S/M-Plane | 5.3 | Default L2 CoS Priority |
| Transport prioritization within U-Plane | 5.3 | TRUE |
| Seperation of C/U-Plane and M-Plane traffic | 5.4 | VLAN ID |
| Transport-based separation within C/U-Plane traffic | 5.4 | FALSE |
| Digital Power Scaling | UL gain\_correction | 8.1.3.2 | 0 dB |
| Beamforming | O-RU beamforming type | 4.1.1 | Digital beamforming |
| Beamforming control method | 7.4, Annex J | RT Weights (Frequency Domain) |
| BFW IQ | 7.4, Annex J | Entry 1: Fixed Point, 12-bit Entry 2: BFP, 9-bit |
| IQ compression | U-Plane data compression method | 8, Annex A | DL: Mod COMP, UL: BFP |
| U-Plane (DL/UL) data IQ bitwidth | 8, Annex D | DL: Mod COMP, 4 bits (max)  UL: BFP, 9 bits |
| IQ data frame format not including udCompHdr field | 8.3.3.13 | TRUE |
| C-Plane | Section Type 0 | 7.4.2 | TRUE |
| Section Type 1 | 7.4.2 | TRUE |
| Section Type 3 | 7.4.2 | TRUE |
| Section Type 5 | 7.4.2 | FALSE |
| Section Type 6 | 7.4.2 | FALSE |
| Section Type 7 | 7.4.2 | FALSE |
| "symInc" flag | 7.4.5.3 | FALSE (always set to "0") |
| C-Plane for PRACH formats with preamble repetition | 7.3.2 | Single C-Plane message |
| Section extension 1 (beamforming weights) | 7.4.6 | Entry 1: FALSE  Entry 2: TRUE  (Note 1) |
| Section extension 2 (beamforming attributes) | 7.4.6 | FALSE |
| Section extension 3 (DL Precoding configuration parameters and indications) | 7.4.6 | FALSE |
| Section extension 4 (modulation compr. params) | 7.4.6 | Entry 1: TRUE  Entry 2: FALSE  (Note 2) |
| Section extension 5 (modulation compression additional scaling parameters) | 7.4.6 | Entry 1: FALSE  Entry 2: TRUE  (Note 2) |
| Section extension 6 (Non-contiguous PRB allocation) | 7.4.7 | FALSE |
| Section extension 7 (Multiple-eAxC designation) | 7.4.7 | FALSE |
| Section extension 8 (regularization factor) | 7.4.7 | FALSE |
| Section extension 9 (Dynamic Spectrum Sharing parameters) | 7.4.7 | FALSE |
| Section extension 10 (Multiple ports grouping) | 7.4.7 | FALSE |
| Section extension 11 (Flexible BF weights) | 7.4.7 | Entry 1: TRUE  Entry 2: FALSE  (Note 1) |
| Section extension 12 | 7.4.7 | FALSE |
| Section extension 13 | 7.4.7 | FALSE |
| Section extension 14 | 7.4.7 | FALSE |
| Section extension 15 | 7.4.7 | FALSE |
| Section extension 16 | 7.4.7 | FALSE |
| Section extension 17 | 7.4.7 | FALSE |
| S-Plane | PTP Full Timing Support (G.8275.1) | 5.2.3, 10.1, 11 | TRUE |
| PTP Partial Timing Support (G.8275.2) | 5.2.3, 10.1, 11 | FALSE |
| Local PRTC | 5.2.3, 10.1, 11 | FALSE |
| Topology configuration | 11.2.2 10, 11.2.3 (for PLFS) | Entry 1) lls-C1 (can also apply lls-C2) Entry 2) lls-C1 (PLFS not required by O-RU) Entry 3) lls-C3 |

Note 1: Either Section extension 1 or Section extension 11 should be used for IOT (ie, (FALSE, TRUE) or (TRUE, FALSE)).

Note 2: Either Section extension 4 or Section extension 5 should be used for IOT (ie, (FALSE, TRUE) or (TRUE, FALSE)).

Note 3: When two entries are present for parameters in section 'Delay Management', DM1 refers to Entry1 and DM2 to Entry2. DM1/2 are used as identifiers in list "Profile Test Configurations"

#### A.2.1.6 NR TDD IOT M-MIMO Profile 3 - NR-TDD-FR1-CAT-B-mMIMO-ChInfo-BFP

Profile Test Configurations:

* NR-TDD-FR1-CAT-B-mMIMO-ChInfo-BFP\_[ConfigDDDFUUDDDD-100MHz1CC-16SS-25Gbpsx2lane-PRACHF0-Jumbo-llsC1noPLFS]
* NR-TDD-FR1-CAT-B-mMIMO-ChInfo-BFP\_[ConfigDDDFUUDDDD-100MHz1CC-8SS-25Gbpsx2lane-PRACHC2-noJumbo-llsC1]
* NR-TDD-FR1-CAT-B-mMIMO-ChInfo-BFP\_[ConfigDDDFUUDDDD-100MHz1CC-16SS-25Gbpsx2lane-PRACHB4-Jumbo-llsC3]
* NR-TDD-FR1-CAT-B-mMIMO-ChInfo-BFP\_[ConfigDDDFU-100MHz1CC-16SS-25Gbpsx2lane-PRACHF0-noJumbo-llsC1]
* NR-TDD-FR1-CAT-B-mMIMO-ChInfo-BFP\_[ConfigDDDFU-100MHz1CC-8SS-25Gbpsx2lane-PRACHB4-noJumbo-llsC1noPLFS]
* NR-TDD-FR1-CAT-B-mMIMO-ChInfo-BFP\_[ConfigDDDFU-100MHz1CC-16SS-25Gbpsx2lane-PRACHC2-Jumbo-llsC3]

**Table A.2.1.6-1: NR TDD IOT M-MIMO Profile 3 - NR-TDD-FR1(30kHzSRS)-CAT-B-mMIMO-ChInfo-BFP**

|  |  |  |  |
| --- | --- | --- | --- |
| **Category** | **Item** | **Related O-RAN CUS-Plane specification section(s)** |  |
| General | Radio access technology | - | NR TDD |
| TDD configuration | - | Entry1: DDDFUUDDDD Entry2: DDDFU |
| Nominal sub-carrier spacing | - | 30kHz |
| SSB sub-carrier spacing | - | 30kHz |
| Nominal FFT size | - | 4096(100MHz\_BW) |
| Total channel bandwidth | - | 100MHz x 1 CC |
| Number of spatial/antenna streams | - | Entry1: 8L (DL), 8 streams (UL) Entry2: 16L (DL), 16 streams (UL) |
| Fronthaul Ethernet link | - | 25Gbps x 2 lane (16L, 1CC) |
| PRACH preamble format | - | Entry1: Long preamble F0 Entry2: B4 Entry3: C2 |
| O-RU category | 4.1.1 | Category B |
| LAA | - | FALSE |
| Delay management | Network delay determination | 4.3.3 | Defined Transport Method |
| O-RU adaptation of delay profile information (based on lls-CU delay profile and transport delay) | 4.3.3.2 | FALSE |
| O-DU timing advance type | 4.3.4-4.3.5, Annex B | Fixed timing Advance |
| T1a\_max\_up | 4.3, Annex B | Less than or equal to 345us |
| T1a\_min\_up | 4.3, Annex B | More than or equal to 294us |
| T1a\_max\_cp\_dl | 4.3, Annex B | Less than or equal to 820us |
| T1a\_min\_cp\_dl | 4.3, Annex B | More than or equal to 769us |
| T2a\_max\_up | 4.3, Annex B | More than or equal to 345us |
| T2a\_min\_up | 4.3, Annex B | Less than or equal to 134us |
| T2a\_max\_cp\_dl | 4.3.2, Annex B | More than or equal to 820us |
| T2a\_min\_cp\_dl | 4.3, Annex B | Less than or equal to 609us |
| Tcp\_adv\_dl | 4.3, Annex B | 475us |
| Ta3\_max\_up | 4.3, Annex B | Less than or equal to 171us |
| Ta3\_min\_up | 4.3, Annex B | More than or equal to 50us |
| Ta4\_max\_up | 4.3, Annex B | More than or equal to 331us |
| Ta4\_min\_up | 4.3, Annex B | Less than or equal to 50us |
| Ta3\_max\_up (scs=1.25kHz) | 4.3, Annex B | Less than or equal to 1650us |
| Ta3\_min\_up (scs=1.25kHz) | 4.3, Annex B | More than or equal to 827us |
| Ta4\_max\_up (scs=1.25kHz) | 4.3.2-4.3.3, Annex B | More than or equal to 1810us |
| Ta4\_min\_up (scs=1.25kHz) | 4.3.2-4.3.3, Annex B | Less than or equal to 827us |
| T1a\_max\_cp\_ul | 4.3.2-4.3.3, Annex B | Less than or equal to 336us |
| T1a\_min\_cp\_ul | 4.3.2-4.3.3, Annex B | More than or equal to 285us |
| T2a\_max\_cp\_ul | 4.3, Annex B | More than or equal to 336us |
| T2a\_min\_cp\_ul | 4.3, Annex B | Less than or equal to 125us |
| T12\_max | 4.3, Annex B | 160us |
| T12\_min | 4.3, Annex B | 0us |
| T34\_max | 4.3, Annex B | 160us |
| T34\_min | 4.3, Annex B | 0us |
| Non-delay managed U-Plane traffic | 4.3.6 | Support |
| C/U-Plane transport | Transport encapsulation | 5.1.1-5.1.2 | Ethernet |
| Jumbo frames | 5.1.2 | Entry1: TRUE  Entry2: FALSE |
| Transport header | 5.1.3 | eCPRI |
| eCPRI concatenation | 5.1.3.1 | FALSE |
| eAxC ID DU\_Port\_ID bitwidth | 5.1.3.1.6 | 5 |
| eAxC ID BandSector\_ID bitwidth | 5.1.3.1.6 | 1 |
| eAxC ID CC\_ID bitwidth | 5.1.3.1.6 | 2 |
| eAxC ID RU\_Port\_ID bitwidth | 5.1.3.1.6 | 8 |
| Fragmentation | 5.5 | Application layer fragmentation |
| Transport prioritization across C/U/S/M-Plane | 5.3 | Default L2 CoS Priority |
| Transport prioritization within U-Plane | 5.3 | TRUE |
| Seperation of C/U-Plane and M-Plane traffic | 5.4 | VLAN ID |
| Transport-based separation within C/U-Plane traffic | 5.4 | FALSE |
| Digital Power Scaling | UL gain\_correction | 8.1.3.2 | 0 dB |
| Beamforming | O-RU beamforming type | 4.1.1 | Digital beamforming |
| Beamforming control method | 7.4, Annex J | Chan Info (Frequency Domain) |
| BFW IQ | 7.4, Annex J | NA |
| IQ compression | U-Plane data compression method | 8, Annex A | BFP |
| U-Plane (DL/UL) data IQ bitwidth | 8, Annex D | 9 |
| IQ data frame format not including udCompHdr field | 8.3.3.13 | TRUE |
| C-Plane | Section Type 0 | 7.4.2 | TRUE |
| Section Type 1 | 7.4.2 | TRUE |
| Section Type 3 | 7.4.2 | TRUE |
| Section Type 5 | 7.4.2 | TRUE |
| Section Type 6 | 7.4.2 | TRUE |
| Section Type 7 | 7.4.2 | FALSE |
| "symInc" flag | 7.4.5.3 | FALSE (always set to "0") |
| C-Plane for PRACH formats with preamble repetition | 7.3.2 | Single C-Plane message |
| Section extension 1 (beamforming weights) | 7.4.6 | FALSE |
| Section extension 2 (beamforming attributes) | 7.4.6 | FALSE |
| Section extension 3 (DL Precoding configuration parameters and indications) | 7.4.6 | FALSE |
| Section extension 4 (modulation compr. params) | 7.4.6 | FALSE |
| Section extension 5 (modulation compression additional scaling parameters) | 7.4.6 | FALSE |
| Section extension 6 (Non-contiguous PRB allocation) | 7.4.7 | FALSE |
| Section extension 7 (Multiple-eAxC designation) | 7.4.7 | FALSE |
| Section extension 8 (regularization factor) | 7.4.7 | FALSE |
| Section extension 9 (Dynamic Spectrum Sharing parameters) | 7.4.7 | FALSE |
| Section extension 10 (Multiple ports grouping) | 7.4.7 | TRUE |
| Section extension 11 (Flexible BF weights) | 7.4.7 | FALSE |
| Section extension 12 | 7.4.7 | FALSE |
| Section extension 13 | 7.4.7 | FALSE |
| Section extension 14 | 7.4.7 | FALSE |
| Section extension 15 | 7.4.7 | FALSE |
| Section extension 16 | 7.4.7 | TRUE |
| Section extension 17 | 7.4.7 | FALSE |
| S-Plane | PTP Full Timing Support (G.8275.1) | 5.2.3, 10.1, 11 | TRUE |
| PTP Partial Timing Support (G.8275.2) | 5.2.3, 10.1, 11 | FALSE |
| Local PRTC | 5.2.3, 10.1, 11 | FALSE |
| Topology configuration | 11.2.2 10, 11.2.3 (for PLFS) | Entry 1) lls-C1 (can also apply lls-C2) Entry 2) lls-C1 (PLFS not required by O-RU) Entry 3) lls-C3 |

#### A.2.1.7 NR TDD IOT M-MIMO Profile 4 - NR-TDD-FR1-CAT-B-mMIMO-ChInfo-ModComp

Profile Test Configurations:

* NR-TDD-FR1-CAT-B-mMIMO-ChInfo-ModComp\_[ConfigDDDFUUDDDD-100MHz1CC-16SS-25Gbpsx2lane-PRACHF0-Jumbo-llsC1noPLFS]
* NR-TDD-FR1-CAT-B-mMIMO-ChInfo-ModComp\_[ConfigDDDFUUDDDD-100MHz1CC-8SS-25Gbpsx2lane-PRACHC2-noJumbo-llsC1]
* NR-TDD-FR1-CAT-B-mMIMO-ChInfo-ModComp\_[ConfigDDDFUUDDDD-100MHz1CC-16SS-25Gbpsx2lane-PRACHB4-Jumbo-llsC3]
* NR-TDD-FR1-CAT-B-mMIMO-ChInfo-ModComp\_[ConfigDDDFUUDDDD-100MHz2CC-16SS-25Gbpsx3lane-PRACHF0-Jumbo-llsC1noPLFS]
* NR-TDD-FR1-CAT-B-mMIMO-ChInfo-ModComp\_[ConfigDDDFUUDDDD-100MHz2CC-8SS-25Gbpsx3lane-PRACHC2-noJumbo-llsC1]
* NR-TDD-FR1-CAT-B-mMIMO-ChInfo-ModComp\_[ConfigDDDFUUDDDD-100MHz2CC-16SS-25Gbpsx3lane-PRACHB4-Jumbo-llsC3]
* NR-TDD-FR1-CAT-B-mMIMO-ChInfo-ModComp\_[ConfigDDDFU-100MHz1CC-16SS-25Gbpsx2lane-PRACHF0-noJumbo-llsC1]
* NR-TDD-FR1-CAT-B-mMIMO-ChInfo-ModComp\_[ConfigDDDFU-100MHz1CC-8SS-25Gbpsx2lane-PRACHB4-noJumbo-llsC1noPLFS]
* NR-TDD-FR1-CAT-B-mMIMO-ChInfo-ModComp\_[ConfigDDDFU-100MHz1CC-16SS-25Gbpsx2lane-PRACHC2-Jumbo-llsC3]
* NR-TDD-FR1-CAT-B-mMIMO-ChInfo-ModComp\_[ConfigDDDFU-100MHz2CC-16SS-25Gbpsx3lane-PRACHF0-noJumbo-llsC1]
* NR-TDD-FR1-CAT-B-mMIMO-ChInfo-ModComp\_[ConfigDDDFU-100MHz2CC-8SS-25Gbpsx3lane-PRACHB4-noJumbo-llsC1noPLFS]
* NR-TDD-FR1-CAT-B-mMIMO-ChInfo-ModComp\_[ConfigDDDFU-100MHz2CC-16SS-25Gbpsx3lane-PRACHC2-Jumbo-llsC3]

**Table A.2.1.7-1: NR TDD IOT M-MIMO Profile 4 - NR-TDD-FR1-CAT-B-mMIMO-ChInfo-ModComp**

|  |  |  |  |
| --- | --- | --- | --- |
| **Category** | **Item** | **Related O-RAN CUS-Plane specification section(s)** |  |
| General | Radio access technology | - | NR TDD |
| TDD configuration | - | Entry1: DDDFUUDDDD Entry2: DDDFU |
| Nominal sub-carrier spacing | - | 30kHz |
| SSB sub-carrier spacing | - | 30kHz |
| Nominal FFT size | - | 4096(100MHz\_BW) |
| Total channel bandwidth | - | Entry1: 100MHz x 1 CC Entry2: 100 MHz x 2 CC |
| Number of spatial/antenna streams | - | Entry1: 8L (DL), 8 streams (UL) Entry2: 16L (DL), 16 streams (UL) |
| Fronthaul Ethernet link | - | Entry1: 25Gbps x 2 lane (16L, 1CC) Entry2: 25Gbps x 3 lane (16L, 2CC) |
| PRACH preamble format | - | Entry1: Long preamble F0 Entry2: B4 Entry3: C2 |
| O-RU category | 4.1.1 | Category B |
| LAA | - | FALSE |
| Delay management | Network delay determination | 4.3.3 | Defined Transport Method |
| O-RU adaptation of delay profile information (based on lls-CU delay profile and transport delay) | 4.3.3.2 | FALSE |
| O-DU timing advance type | 4.3.4-4.3.5, Annex B | Fixed timing Advance |
| T1a\_max\_up | 4.3, Annex B | Less than or equal to 345us |
| T1a\_min\_up | 4.3, Annex B | More than or equal to 294us |
| T1a\_max\_cp\_dl | 4.3, Annex B | Less than or equal to 820us |
| T1a\_min\_cp\_dl | 4.3, Annex B | More than or equal to 769us |
| T2a\_max\_up | 4.3, Annex B | More than or equal to 345us |
| T2a\_min\_up | 4.3, Annex B | Less than or equal to 134us |
| T2a\_max\_cp\_dl | 4.3.2, Annex B | More than or equal to 820us |
| T2a\_min\_cp\_dl | 4.3, Annex B | Less than or equal to 609us |
| Tcp\_adv\_dl | 4.3, Annex B | 475us |
| Ta3\_max\_up | 4.3, Annex B | Less than or equal to 171us |
| Ta3\_min\_up | 4.3, Annex B | More than or equal to 50us |
| Ta4\_max\_up | 4.3, Annex B | More than or equal to 331us |
| Ta4\_min\_up | 4.3, Annex B | Less than or equal to 50us |
| Ta3\_max\_up (scs=1.25kHz) | 4.3, Annex B | Less than or equal to 1650us |
| Ta3\_min\_up (scs=1.25kHz) | 4.3, Annex B | More than or equal to 827us |
| Ta4\_max\_up (scs=1.25kHz) | 4.3.2-4.3.3, Annex B | More than or equal to 1810us |
| Ta4\_min\_up (scs=1.25kHz) | 4.3.2-4.3.3, Annex B | Less than or equal to 827us |
| T1a\_max\_cp\_ul | 4.3.2-4.3.3, Annex B | Less than or equal to 336us |
| T1a\_min\_cp\_ul | 4.3.2-4.3.3, Annex B | More than or equal to 285us |
| T2a\_max\_cp\_ul | 4.3, Annex B | More than or equal to 336us |
| T2a\_min\_cp\_ul | 4.3, Annex B | Less than or equal to 125us |
| T12\_max | 4.3, Annex B | 160us |
| T12\_min | 4.3, Annex B | 0us |
| T34\_max | 4.3, Annex B | 160us |
| T34\_min | 4.3, Annex B | 0us |
| Non-delay managed U-Plane traffic | 4.3.6 | Support |
| C/U-Plane transport | Transport encapsulation | 5.1.1-5.1.2 | Ethernet |
| Jumbo frames | 5.1.2 | Entry1: TRUE  Entry2: FALSE |
| Transport header | 5.1.3 | eCPRI |
| eCPRI concatenation | 5.1.3.1 | FALSE |
| eAxC ID DU\_Port\_ID bitwidth | 5.1.3.1.6 | 5 |
| eAxC ID BandSector\_ID bitwidth | 5.1.3.1.6 | 1 |
| eAxC ID CC\_ID bitwidth | 5.1.3.1.6 | 2 |
| eAxC ID RU\_Port\_ID bitwidth | 5.1.3.1.6 | 8 |
| Fragmentation | 5.5 | Application layer fragmentation |
| Transport prioritization across C/U/S/M-Plane | 5.3 | Default L2 CoS Priority |
| Transport prioritization within U-Plane | 5.3 | TRUE |
| Seperation of C/U-Plane and M-Plane traffic | 5.4 | VLAN ID |
| Transport-based separation within C/U-Plane traffic | 5.4 | FALSE |
| Digital Power Scaling | UL gain\_correction | 8.1.3.2 | 0 dB |
| Beamforming | O-RU beamforming type | 4.1.1 | Digital beamforming |
| Beamforming control method | 7.4, Annex J | Chan Info (Frequency Domain) |
| BFW IQ | 7.4, Annex J | NA |
| IQ compression | U-Plane data compression method | 8, Annex A | DL: Mod COMP, UL: BFP |
| U-Plane (DL/UL) data IQ bitwidth | 8, Annex D | DL: Mod COMP, 4 bits (max) UL: BFP, 9 bits |
| IQ data frame format not including udCompHdr field | 8.3.3.13 | TRUE |
| C-Plane | Section Type 0 | 7.4.2 | TRUE |
| Section Type 1 | 7.4.2 | TRUE |
| Section Type 3 | 7.4.2 | TRUE |
| Section Type 5 | 7.4.2 | TRUE |
| Section Type 6 | 7.4.2 | TRUE |
| Section Type 7 | 7.4.2 | FALSE |
| "symInc" flag | 7.4.5.3 | FALSE (always set to "0") |
| C-Plane for PRACH formats with preamble repetition | 7.3.2 | Single C-Plane message |
| Section extension 1 (beamforming weights) | 7.4.6 | FALSE |
| Section extension 2 (beamforming attributes) | 7.4.6 | FALSE |
| Section extension 3 (DL Precoding configuration parameters and indications) | 7.4.6 | FALSE |
| Section extension 4 (modulation compr. params) | 7.4.6 | FALSE |
| Section extension 5 (modulation compression additional scaling parameters) | 7.4.6 | TRUE |
| Section extension 6 (Non-contiguous PRB allocation) | 7.4.7 | FALSE |
| Section extension 7 (Multiple-eAxC designation) | 7.4.7 | FALSE |
| Section extension 8 (regularization factor) | 7.4.7 | FALSE |
| Section extension 9 (Dynamic Spectrum Sharing parameters) | 7.4.7 | FALSE |
| Section extension 10 (Multiple ports grouping) | 7.4.7 | TRUE |
| Section extension 11 (Flexible BF weights) | 7.4.7 | FALSE |
| Section extension 12 | 7.4.7 | FALSE |
| Section extension 13 | 7.4.7 | FALSE |
| Section extension 14 | 7.4.7 | FALSE |
| Section extension 15 | 7.4.7 | FALSE |
| Section extension 16 | 7.4.7 | TRUE |
| Section extension 17 | 7.4.7 | FALSE |
| S-Plane | PTP Full Timing Support (G.8275.1) | 5.2.3, 10.1, 11 | TRUE |
| PTP Partial Timing Support (G.8275.2) | 5.2.3, 10.1, 11 | FALSE |
| Local PRTC | 5.2.3, 10.1, 11 | FALSE |
| Topology configuration | 11.2.2 10, 11.2.3 (for PLFS) | Entry 1) lls-C1 (can also apply lls-C2) Entry 2) lls-C1 (PLFS not required by O-RU) Entry 3) lls-C3 |

### A.2.2 NR FDD

#### A.2.2.1 NR FDD IOT Profile 1 - NR-FDD-FR1(15kHzSCS)-CAT-B-DBF

Profile Test Configurations:

* NR-FDD-FR1(15kHzSCS)-CAT-B-DBF\_[20MHz-8SS-PRACH0-9bitIQ-llsC2]
* NR-FDD-FR1(15kHzSCS)-CAT-B-DBF\_[30MHz-8SS-PRACH0-9bitIQ-llsC2]
* NR-FDD-FR1(15kHzSCS)-CAT-B-DBF\_[20MHz-16SS-PRACH0-9bitIQ-llsC2]
* NR-FDD-FR1(15kHzSCS)-CAT-B-DBF\_[30MHz-16SS-PRACH0-9bitIQ-llsC2]
* NR-FDD-FR1(15kHzSCS)-CAT-B-DBF\_[20MHz-8SS-PRACHC2-9bitIQ-llsC2]
* NR-FDD-FR1(15kHzSCS)-CAT-B-DBF\_[30MHz-8SS-PRACHC2-9bitIQ-llsC2]
* NR-FDD-FR1(15kHzSCS)-CAT-B-DBF\_[20MHz-16SS-PRACHC2-9bitIQ-llsC2]
* NR-FDD-FR1(15kHzSCS)-CAT-B-DBF\_[30MHz-16SS-PRACHC2-9bitIQ-llsC2]
* NR-FDD-FR1(15kHzSCS)-CAT-B-DBF\_[20MHz-8SS-PRACH0-12bitIQ-llsC3]
* NR-FDD-FR1(15kHzSCS)-CAT-B-DBF\_[30MHz-8SS-PRACH0-12bitIQ-llsC3]
* NR-FDD-FR1(15kHzSCS)-CAT-B-DBF\_[20MHz-16SS-PRACH0-12bitIQ-llsC3]
* NR-FDD-FR1(15kHzSCS)-CAT-B-DBF\_[30MHz-16SS-PRACH0-12bitIQ-llsC3]
* NR-FDD-FR1(15kHzSCS)-CAT-B-DBF\_[20MHz-8SS-PRACHC2-12bitIQ-llsC3]
* NR-FDD-FR1(15kHzSCS)-CAT-B-DBF\_[30MHz-8SS-PRACHC2-12bitIQ-llsC3]
* NR-FDD-FR1(15kHzSCS)-CAT-B-DBF\_[20MHz-16SS-PRACHC2-12bitIQ-llsC3]
* NR-FDD-FR1(15kHzSCS)-CAT-B-DBF\_[30MHz-16SS-PRACHC2-12bitIQ-llsC3]

**Table A2.2.1-1: NR FDD IOT Profile 1 - NR-FDD-FR1(15kHzSCS)-CAT-B-DBF**

| **Category** | **Item** | **Related O-RAN CUS-Plane specification section(s)** |  |
| --- | --- | --- | --- |
| General | Radio access technology | - | NR FDD |
| TDD configuration | - | NA |
| Nominal sub-carrier spacing | - | 15 kHz |
| SSB sub-carrier spacing | - | 15 kHz |
| Nominal FFT size | - | 2048 |
| Total channel bandwidth | - | Entry1: 20MHz Entry2: 20MHz+10MHz |
| Number of spatial/antenna streams | - | Entry1: 8 Entry2: 16 |
| Fronthaul Ethernet link | - | 25Gbps x 1lane for 8 spatial streams, 25Gbps x 2lane for 16 spatial streams |
| PRACH preamble format | - | Entry1: 0 Entry2: C2 |
| RU category | 4.1.1 | Category B |
| LAA | - | FALSE |
| Delay management | Network delay determination | 4.3.3 | Defined Transport Method |
| RU adaptation of delay profile information (based on O-DU delay profile and transport delay) | 4.3.3.2 | FALSE |
| O-DU timing advance type | 4.3.4-4.3.5, Annex B | Fixed Timing Advance |
| T1a\_max\_up | 4.3, Annex B | Less than or equal to 437us |
| T1a\_min\_up | 4.3, Annex B | More than or equal to 366us |
| T2a\_max\_up | 4.3, Annex B | More than or equal to 437us |
| T2a\_min\_up | 4.3, Annex B | Less than or equal to 206us |
| Tcp\_adv\_dl | 4.3.2, Annex B | 125 us |
| Ta3\_max\_up | 4.3, Annex B | Less than or equal to 232us |
| Ta3\_min\_up | 4.3, Annex B | More than or equal to 70us |
| Ta4\_max\_up | 4.3, Annex B | More than or equal to 392us |
| Ta4\_min\_up | 4.3, Annex B | Less than or equal to 70us |
| T1a\_max\_cp\_ul | 4.3.2-4.3.3, Annex B | Less than or equal to 356us |
| T1a\_min\_cp\_ul | 4.3.2-4.3.3, Annex B | More than or equal to 285us |
| T2a\_max\_cp\_ul | 4.3.2-4.3.3, Annex B | More than or equal to 356us |
| T2a\_min\_cp\_ul | 4.3.2-4.3.3, Annex B | Less than or equal to 125us |
| T12\_max | 4.3, Annex B | 160 us |
| T12\_min | 4.3, Annex B | 0 us |
| T34\_max | 4.3, Annex B | 160 us |
| T34\_min | 4.3, Annex B | 0 us |
| Non-delay managed U-Plane traffic | 4.3.6 | FALSE |
| C/U-Plane transport | Transport encapsulation | 5.1.1-5.1.2 | Ethernet |
| Jumbo frames | 5.1.2 | FALSE |
| Transport header | 5.1.3 | eCPRI |
| eCPRI concatenation | 5.1.3.1 | FALSE |
| eAxC ID DU\_Port\_ID bitwidth | 5.1.3.1.6 | 2 |
| eAxC ID BandSector\_ID bitwidth | 5.1.3.1.6 | 3 |
| eAxC ID CC\_ID bitwidth | 5.1.3.1.6 | 3 |
| eAxC ID RU\_Port\_ID bitwidth | 5.1.3.1.6 | 8 |
| Fragmentation | 5.5 | Application layer fragmentation |
| Transport prioritization across C/U/S/M-Plane | 5.3 | Default L2 CoS priority |
| Transport prioritization within U-Plane | 5.3 | False (Default U-Plane priority applies) |
| Separation of C/U-Plane and M-Plane traffic | 5.4 | VLAN ID |
| Transport-based separation within C/U-Plane traffic | 5.4 | FALSE |
| Digital Power Scaling | UL gain\_correction | 8.1.3.2 | 0dB |
| Beamforming | RU beamforming type | 4.1.1 | Digital beamforming |
| Beamforming control method | 7.4, Annex J | Beamforming ID based |
| IQ compression | U-Plane data compression method | 8, Annex A | Block floating point |
| U-Plane data IQ bitwidth | 8, Annex D | Entry1: 9 Entry2: 12 |
| IQ data frame format not including udCompHdr field | 8.3.3.13 | TRUE |
| C-Plane | Section Type 0 | 7.4.2 | TRUE |
| Section Type 1 | 7.4.2 | TRUE |
| Section Type 3 | 7.4.2 | TRUE |
| Section Type 5 | 7.4.2 | FALSE |
| Section Type 6 | 7.4.2 | FALSE |
| Section Type 7 | 7.4.2 | FALSE |
| "symInc" flag | 7.4.5.3 | FALSE (always set to '0') |
| C-Plane for PRACH formats with preamble repetition | 7.3.2 | Single C-Plane message |
| Section extension 1 | 7.4.6 | FALSE |
| Section extension 2 | 7.4.6 | FALSE |
| Section extension 3 | 7.4.6 | FALSE |
| Section extension 4 | 7.4.6 | FALSE |
| Section extension 5 | 7.4.6 | FALSE |
| S-Plane | PTP Full Timing Support (G.8275.1) | 5.2.3, 10.1, 11 | TRUE |
| PTP Partial Timing Support (G.8275.2) | 5.2.3, 10.1, 11 | FALSE |
| Local PRTC | 5.2.3, 10.1, 11 | FALSE |
| Topology configuration | 11.2.2  10, 11.2.3 (for PLFS) | Entry1: lls-C2 Entry2: lls-C3 |

#### A.2.2.2 NR FDD IOT Profile 2 - NR-FDD-FR1-CAT-B-DBF

Profile Test Configurations:

* NR-FDD-FR1-CAT-B-DBF\_[20MHz-8SS-9bitIQ-llsC2]
* NR-FDD-FR1-CAT-B-DBF\_[30MHz-8SS-9bitIQ-llsC2]
* NR-FDD-FR1-CAT-B-DBF\_[20MHz-16SS-9bitIQ-llsC2]
* NR-FDD-FR1-CAT-B-DBF\_[30MHz-16SS-9bitIQ-llsC2]
* NR-FDD-FR1-CAT-B-DBF\_[20MHz-8SS-12bitIQ-llsC3]
* NR-FDD-FR1-CAT-B-DBF\_[30MHz-8SS-12bitIQ-llsC3]
* NR-FDD-FR1-CAT-B-DBF\_[20MHz-16SS-12bitIQ-llsC3]
* NR-FDD-FR1-CAT-B-DBF\_[30MHz-16SS-12bitIQ-llsC3]

**Table A.** **2.2.2-1: NR FDD IOT Profile 2 - NR-FDD-FR1-CAT-B-DBF**

| **Category** | **Item** | **Related O-RAN CUS-Plane specification section(s)** |  |
| --- | --- | --- | --- |
| General | Radio access technology | - | NR FDD |
| TDD configuration | - | NA |
| Nominal sub-carrier spacing | - | 30 kHz |
| SSB sub-carrier spacing | - | 30 kHz |
| Nominal FFT size | - | 1024 |
| Total channel bandwidth | - | Entry1: 20MHz Entry2: 20MHz+10MHz |
| Number of spatial/antenna streams | - | Entry1: 8 Entry2: 16 |
| Fronthaul Ethernet link | - | 25Gbps x 1lane for 8 spatial streams, 25Gbps x 2lane for 16 spatial streams |
| PRACH preamble format | - | 0 |
| RU category | 4.1.1 | Category B |
| LAA | - | FALSE |
| Delay management | Network delay determination | 4.3.3 | Defined Transport Method |
| RU adaptation of delay profile information (based on O-DU delay profile and transport delay) | 4.3.3.2 | FALSE |
| O-DU timing advance type | 4.3.4-4.3.5, Annex B | Fixed Timing Advance |
| T1a\_max\_up | 4.3, Annex B | Less than or equal to 345us |
| T1a\_min\_up | 4.3, Annex B | More than or equal to 294us |
| T2a\_max\_up | 4.3, Annex B | More than or equal to 345us |
| T2a\_min\_up | 4.3, Annex B | Less than or equal to 134us |
| Tcp\_adv\_dl | 4.3.2, Annex B | 125 us |
| Ta3\_max\_up | 4.3, Annex B | Less than or equal to 171us |
| Ta3\_min\_up | 4.3, Annex B | More than or equal to 50us |
| Ta4\_max\_up | 4.3, Annex B | More than or equal to 331us |
| Ta4\_min\_up | 4.3, Annex B | Less than or equal to 50us |
| T1a\_max\_cp\_ul | 4.3.2-4.3.3, Annex B | Less than or equal to 336us |
| T1a\_min\_cp\_ul | 4.3.2-4.3.3, Annex B | More than or equal to 285us |
| T2a\_max\_cp\_ul | 4.3.2-4.3.3, Annex B | More than or equal to 336us |
| T2a\_min\_cp\_ul | 4.3.2-4.3.3, Annex B | Less than or equal to 125us |
| T12\_max | 4.3, Annex B | 160 us |
| T12\_min | 4.3, Annex B | 0 us |
| T34\_max | 4.3, Annex B | 160 us |
| T34\_min | 4.3, Annex B | 0 us |
| Non-delay managed U-Plane traffic | 4.3.6 | FALSE |
| C/U-Plane transport | Transport encapsulation | 5.1.1-5.1.2 | Ethernet |
| Jumbo frames | 5.1.2 | FALSE |
| Transport header | 5.1.3 | eCPRI |
| eCPRI concatenation | 5.1.3.1 | FALSE |
| eAxC ID DU\_Port\_ID bitwidth | 5.1.3.1.6 | 2 |
| eAxC ID BandSector\_ID bitwidth | 5.1.3.1.6 | 3 |
| eAxC ID CC\_ID bitwidth | 5.1.3.1.6 | 3 |
| eAxC ID RU\_Port\_ID bitwidth | 5.1.3.1.6 | 8 |
| Fragmentation | 5.5 | Application layer fragmentation |
| Transport prioritization across C/U/S/M-Plane | 5.3 | Default L2 CoS priority |
| Transport prioritization within U-Plane | 5.3 | False (Default U-Plane priority applies) |
| Separation of C/U-Plane and M-Plane traffic | 5.4 | VLAN ID |
| Transport-based separation within C/U-Plane traffic | 5.4 | FALSE |
| Digital Power Scaling | UL gain\_correction | 8.1.3.2 | 0dB |
| Beamforming | RU beamforming type | 4.1.1 | Digital beamforming |
| Beamforming control method | 7.4, Annex J | Beamforming ID based |
| IQ compression | U-Plane data compression method | 8, Annex A | Block floating point |
| U-Plane data IQ bitwidth | 8, Annex D | Entry1: 9 Entry2: 12 |
| IQ data frame format not including udCompHdr field | 8.3.3.13 | TRUE |
| C-Plane | Section Type 0 | 7.4.2 | TRUE |
| Section Type 1 | 7.4.2 | TRUE |
| Section Type 3 | 7.4.2 | TRUE |
| Section Type 5 | 7.4.2 | FALSE |
| Section Type 6 | 7.4.2 | FALSE |
| Section Type 7 | 7.4.2 | FALSE |
| "symInc" flag | 7.4.5.3 | FALSE (always set to '0') |
| C-Plane for PRACH formats with preamble repetition | 7.3.2 | Single C-Plane message |
| Section extension 1 | 7.4.6 | FALSE |
| Section extension 2 | 7.4.6 | FALSE |
| Section extension 3 | 7.4.6 | FALSE |
| Section extension 4 | 7.4.6 | FALSE |
| Section extension 5 | 7.4.6 | FALSE |
| S-Plane | PTP Full Timing Support (G.8275.1) | 5.2.3, 10.1, 11 | TRUE |
| PTP Partial Timing Support (G.8275.2) | 5.2.3, 10.1, 11 | FALSE |
| Local PRTC | 5.2.3, 10.1, 11 | FALSE |
| Topology configuration | 11.2.2  10, 11.2.3 (for PLFS) | Entry1: lls-C2 Entry2: lls-C3 |

#### A.2.2.3 NR FDD IOT Profile 3 - NR-FDD-FR1-CAT-A-NoBF

Profile Test Configurations:

* NR-FDD-FR1-CAT-A-NoBF\_[20MHz-9bitIQ-llsC2]
* NR-FDD-FR1-CAT-A-NoBF\_[30MHz-9bitIQ-llsC2]
* NR-FDD-FR1-CAT-A-NoBF\_[20MHz-12bitIQ-llsC3]
* NR-FDD-FR1-CAT-A-NoBF\_[30MHz-12bitIQ-llsC3]

**Table A2.2.3-1: NR FDD IOT Profile 3 - NR-FDD-FR1-CAT-A-NoBF**

| **Category** | **Item** | **Related O-RAN CUS-Plane specification section(s)** |  |
| --- | --- | --- | --- |
| General | Radio access technology | - | NR FDD |
| TDD configuration | - | NA |
| Nominal sub-carrier spacing | - | 30 kHz |
| SSB sub-carrier spacing | - | 30 kHz |
| Nominal FFT size | - | 1024 |
| Total channel bandwidth | - | Entry1: 20MHz Entry2: 20MHz+10MHz |
| Number of spatial/antenna streams | - | 4 |
| Fronthaul Ethernet link | - | 10Gbps x 1 lane |
| PRACH preamble format | - | 0 |
| RU category | 4.1.1 | Category A |
| LAA | - | FALSE |
| Delay management | Network delay determination | 4.3.3 | Defined Transport Method |
| RU adaptation of delay profile information (based on O-DU delay profile and transport delay) | 4.3.3.2 | FALSE |
| O-DU timing advance type | 4.3.4-4.3.5, Annex B | Fixed Timing Advance |
| T1a\_max\_up | 4.3, Annex B | Less than or equal to 345us |
| T1a\_min\_up | 4.3, Annex B | More than or equal to 294us |
| T2a\_max\_up | 4.3, Annex B | More than or equal to 345us |
| T2a\_min\_up | 4.3, Annex B | Less than or equal to 134us |
| Tcp\_adv\_dl | 4.3.2, Annex B | 125 us |
| Ta3\_max\_up | 4.3, Annex B | Less than or equal to 171us |
| Ta3\_min\_up | 4.3, Annex B | More than or equal to 50us |
| Ta4\_max\_up | 4.3, Annex B | More than or equal to 331us |
| Ta4\_min\_up | 4.3, Annex B | Less than or equal to 50us |
| T1a\_max\_cp\_ul | 4.3.2-4.3.3, Annex B | Less than or equal to 336us |
| T1a\_min\_cp\_ul | 4.3.2-4.3.3, Annex B | More than or equal to 285us |
| T2a\_max\_cp\_ul | 4.3.2-4.3.3, Annex B | More than or equal to 336us |
| T2a\_min\_cp\_ul | 4.3.2-4.3.3, Annex B | Less than or equal to 125us |
| T12\_max | 4.3, Annex B | 160 us |
| T12\_min | 4.3, Annex B | 0 us |
| T34\_max | 4.3, Annex B | 160 us |
| T34\_min | 4.3, Annex B | 0 us |
| Non-delay managed U-Plane traffic | 4.3.6 | FALSE |
| C/U-Plane transport | Transport encapsulation | 5.1.1-5.1.2 | Ethernet |
| Jumbo frames | 5.1.2 | FALSE |
| Transport header | 5.1.3 | eCPRI |
| eCPRI concatenation | 5.1.3.1 | FALSE |
| eAxC ID DU\_Port\_ID bitwidth | 5.1.3.1.6 | 2 |
| eAxC ID BandSector\_ID bitwidth | 5.1.3.1.6 | 3 |
| eAxC ID CC\_ID bitwidth | 5.1.3.1.6 | 3 |
| eAxC ID RU\_Port\_ID bitwidth | 5.1.3.1.6 | 8 |
| Fragmentation | 5.5 | Application layer fragmentation |
| Transport prioritization across C/U/S/M-Plane | 5.3 | Default L2 CoS priority |
| Transport prioritization within U-Plane | 5.3 | False (Default U-Plane priority applies) |
| Separation of C/U-Plane and M-Plane traffic | 5.4 | VLAN ID |
| Transport-based separation within C/U-Plane traffic | 5.4 | FALSE |
| Digital Power Scaling | UL gain\_correction | 8.1.3.2 | 0dB |
| Beamforming | RU beamforming type | 4.1.1 | No beamforming |
| Beamforming control method | 7.4, Annex J | Beamforming ID based (always "0") |
| IQ compression | U-Plane data compression method | 8, Annex A | Block floating point |
| U-Plane data IQ bitwidth | 8, Annex D | Entry1: 9 Entry2: 12 |
| IQ data frame format not including udCompHdr field | 8.3.3.13 | TRUE |
| C-Plane | Section Type 0 | 7.4.2 | TRUE |
| Section Type 1 | 7.4.2 | TRUE |
| Section Type 3 | 7.4.2 | TRUE |
| Section Type 5 | 7.4.2 | FALSE |
| Section Type 6 | 7.4.2 | FALSE |
| Section Type 7 | 7.4.2 | FALSE |
| "symInc" flag | 7.4.5.3 | FALSE (always set to '0') |
| C-Plane for PRACH formats with preamble repetition | 7.3.2 | Single C-Plane message |
| Section extension 1 | 7.4.6 | FALSE |
| Section extension 2 | 7.4.6 | FALSE |
| Section extension 3 | 7.4.6 | FALSE |
| Section extension 4 | 7.4.6 | FALSE |
| Section extension 5 | 7.4.6 | FALSE |
| S-Plane | PTP Full Timing Support (G.8275.1) | 5.2.3, 10.1, 11 | TRUE |
| PTP Partial Timing Support (G.8275.2) | 5.2.3, 10.1, 11 | FALSE |
| Local PRTC | 5.2.3, 10.1, 11 | FALSE |
| Topology configuration | 11.2.2  10, 11.2.3 (for PLFS) | Entry1: lls-C2 Entry2: lls-C3 |

#### A.2.2.4 NR FDD IOT Profile 4 - NR-FDD-FR1(15kHzSCS)-CAT-A-NoBF

Profile Test Configurations:

* NR-FDD-FR1(15kHzSCS)-CAT-A-NoBF\_[10MHz-4SS-PRACHF0-9bitIQ-llsC2]
* NR-FDD-FR1(15kHzSCS)-CAT-A-NoBF\_[20MHz-4SS-PRACHF0-9bitIQ-llsC2]
* NR-FDD-FR1(15kHzSCS)-CAT-A-NoBF\_[10MHz-4SS-PRACHF0-12bitIQ-llsC2]
* NR-FDD-FR1(15kHzSCS)-CAT-A-NoBF\_[20MHz-4SS-PRACHF0-12bitIQ-llsC2]
* NR-FDD-FR1(15kHzSCS)-CAT-A-NoBF\_[10MHz-4SS-PRACHF0-9bitIQ-llsC3]
* NR-FDD-FR1(15kHzSCS)-CAT-A-NoBF\_[20MHz-4SS-PRACHF0-9bitIQ-llsC3]
* NR-FDD-FR1(15kHzSCS)-CAT-A-NoBF\_[10MHz-4SS-PRACHF0-12bitIQ-llsC3]
* NR-FDD-FR1(15kHzSCS)-CAT-A-NoBF\_[20MHz-4SS-PRACHF0-12bitIQ-llsC3]
* NR-FDD-FR1(15kHzSCS)-CAT-A-NoBF\_[10MHz-2SS-PRACHF0-9bitIQ-llsC2]
* NR-FDD-FR1(15kHzSCS)-CAT-A-NoBF\_[20MHz-2SS-PRACHF0-9bitIQ-llsC2]
* NR-FDD-FR1(15kHzSCS)-CAT-A-NoBF\_[10MHz-2SS-PRACHF0-12bitIQ-llsC2]
* NR-FDD-FR1(15kHzSCS)-CAT-A-NoBF\_[20MHz-2SS-PRACHF0-12bitIQ-llsC2]
* NR-FDD-FR1(15kHzSCS)-CAT-A-NoBF\_[10MHz-2SS-PRACHF0-9bitIQ-llsC3]
* NR-FDD-FR1(15kHzSCS)-CAT-A-NoBF\_[20MHz-2SS-PRACHF0-9bitIQ-llsC3]
* NR-FDD-FR1(15kHzSCS)-CAT-A-NoBF\_[10MHz-2SS-PRACHF0-12bitIQ-llsC3]
* NR-FDD-FR1(15kHzSCS)-CAT-A-NoBF\_[20MHz-2SS-PRACHF0-12bitIQ-llsC3]
* NR-FDD-FR1(15kHzSCS)-CAT-A-NoBF\_[10MHz-2SS-PRACHF0-14bitIQ-llsC1C2]
* NR-FDD-FR1(15kHzSCS)-CAT-A-NoBF\_[10MHz-2SS-PRACHF1-14bitIQ-llsC1C2]

**Table A2.2.4-1: NR FDD IOT Profile 4 - NR-FDD-FR1(15kHzSCS)-CAT-A-NoBF**

| **Category** | **Item** | **Related O-RAN CUS-Plane specification section(s)** |  |
| --- | --- | --- | --- |
| General | Radio access technology | - | NR FDD |
| TDD configuration | - | NA |
| Nominal sub-carrier spacing | - | 15 kHz |
| SSB sub-carrier spacing | - | 15 kHz |
| Nominal FFT size | - | 1024 for 10MHz BW, 2048 for 20MHz BW |
| Total channel bandwidth | - | Entry1: 10MHz Entry2: 20MHz |
| Number of spatial/antenna streams | - | Entry1: 4 Entry2: 2 |
| Fronthaul Ethernet link | - | 10Gbps x 1 lane |
| PRACH preamble format | - | Entry1: Long preamble F0  Entry2: Long preamble F1 |
| RU category | 4.1.1 | Category A |
| LAA | - | FALSE |
| Delay management | Network delay determination | 4.3.3 | Defined Transport Method |
| RU adaptation of delay profile information (based on O-DU delay profile and transport delay) | 4.3.3.2 | FALSE |
| O-DU timing advance type | 4.3.4-4.3.5, Annex B | Fixed Timing Advance |
| T1a\_max\_up | 4.3, Annex B | Less than or equal to 437us |
| T1a\_min\_up | 4.3, Annex B | More than or equal to 366us |
| T2a\_max\_up | 4.3, Annex B | More than or equal to 437us |
| T2a\_min\_up | 4.3, Annex B | Less than or equal to 206us |
| Tcp\_adv\_dl | 4.3.2, Annex B | 125 us |
| Ta3\_max\_up | 4.3, Annex B | Less than or equal to 232us |
| Ta3\_min\_up | 4.3, Annex B | More than or equal to 70us |
| Ta4\_max\_up | 4.3, Annex B | More than or equal to 392us |
| Ta4\_min\_up | 4.3, Annex B | Less than or equal to 70us |
| Ta3\_max\_up (scs=1.25kHz) | 4.3, Annex B | Less than or equal to 1650us |
| Ta3\_min\_up (scs=1.25kHz) | 4.3, Annex B | More than or equal to 827us |
| Ta4\_max\_up (scs=1.25kHz) | 4.3.2-4.3.3, Annex B | More than or equal to 1810us |
| Ta4\_min\_up (scs=1.25kHz) | 4.3.2-4.3.3, Annex B | Less than or equal to 827us |
| T1a\_max\_cp\_ul | 4.3.2-4.3.3, Annex B | Less than or equal to 356us |
| T1a\_min\_cp\_ul | 4.3.2-4.3.3, Annex B | More than or equal to 285us |
| T2a\_max\_cp\_ul | 4.3.2-4.3.3, Annex B | More than or equal to 356us |
| T2a\_min\_cp\_ul | 4.3.2-4.3.3, Annex B | Less than or equal to 125us |
| T12\_max | 4.3, Annex B | 160 us |
| T12\_min | 4.3, Annex B | 0 us |
| T34\_max | 4.3, Annex B | 160 us |
| T34\_min | 4.3, Annex B | 0 us |
| Non-delay managed U-Plane traffic | 4.3.6 | FALSE |
| C/U-Plane transport | Transport encapsulation | 5.1.1-5.1.2 | Ethernet |
| Jumbo frames | 5.1.2 | FALSE |
| Transport header | 5.1.3 | eCPRI |
| eCPRI concatenation | 5.1.3.1 | FALSE |
| eAxC ID DU\_Port\_ID bitwidth | 5.1.3.1.6 | 2 |
| eAxC ID BandSector\_ID bitwidth | 5.1.3.1.6 | 6 |
| eAxC ID CC\_ID bitwidth | 5.1.3.1.6 | 4 |
| eAxC ID RU\_Port\_ID bitwidth | 5.1.3.1.6 | 4 |
| Fragmentation | 5.5 | Application layer fragmentation |
| Transport prioritization across C/U/S/M-Plane | 5.3 | Default L2 CoS priority |
| Transport prioritization within U-Plane | 5.3 | False (Default U-Plane priority applies) |
| Separation of C/U-Plane and M-Plane traffic | 5.4 | VLAN ID |
| Transport-based separation within C/U-Plane traffic | 5.4 | FALSE |
| Digital Power Scaling | UL gain\_correction | 8.1.3.2 | 0dB |
| Beamforming | RU beamforming type | 4.1.1 | No beamforming |
| Beamforming control method | 7.4, Annex J | Beamforming ID based (always "0") |
| IQ compression | U-Plane data compression method | 8, Annex A | Block floating point |
| U-Plane data IQ bitwidth | 8, Annex D | Entry1: 9 Entry2: 12  Entry3: 14 |
| IQ data frame format not including udCompHdr field | 8.3.3.13 | TRUE |
| C-Plane | Section Type 0 | 7.4.2 | TRUE |
| Section Type 1 | 7.4.2 | TRUE |
| Section Type 3 | 7.4.2 | TRUE |
| Section Type 5 | 7.4.2 | FALSE |
| Section Type 6 | 7.4.2 | FALSE |
| Section Type 7 | 7.4.2 | FALSE |
| "symInc" flag | 7.4.5.3 | FALSE (always set to '0') |
| C-Plane for PRACH formats with preamble repetition | 7.3.2 | Single C-Plane message |
| Section extension 1 | 7.4.6 | FALSE |
| Section extension 2 | 7.4.6 | FALSE |
| Section extension 3 | 7.4.6 | FALSE |
| Section extension 4 | 7.4.6 | FALSE |
| Section extension 5 | 7.4.6 | FALSE |
| S-Plane | PTP Full Timing Support (G.8275.1) | 5.2.3, 10.1, 11 | TRUE |
| PTP Partial Timing Support (G.8275.2) | 5.2.3, 10.1, 11 | FALSE |
| Local PRTC | 5.2.3, 10.1, 11 | FALSE |
| Topology configuration | 11.2.2  10, 11.2.3 (for PLFS) | Entry1: lls-C2 (can also apply lls-C1) Entry2: lls-C3 |

### A.2.3 LTE FDD

#### A.2.3.1 LTE FDD IOT Profile 1 - LTE-FDD-FR1-CAT-B-DBF

Profile Test Configurations:

* LTE-FDD-FR1-CAT-B-DBF\_[20MHz-8SS-9bitIQ-llsC2]
* LTE-FDD-FR1-CAT-B-DBF\_[30MHz-8SS-9bitIQ-llsC2]
* LTE-FDD-FR1-CAT-B-DBF\_[20MHz-16SS-9bitIQ-llsC2]
* LTE-FDD-FR1-CAT-B-DBF\_[30MHz-16SS-9bitIQ-llsC2]
* LTE-FDD-FR1-CAT-B-DBF\_[20MHz-8SS-12bitIQ-llsC3]
* LTE-FDD-FR1-CAT-B-DBF\_[30MHz-8SS-12bitIQ-llsC3]
* LTE-FDD-FR1-CAT-B-DBF\_[20MHz-16SS-12bitIQ-llsC3]
* LTE-FDD-FR1-CAT-B-DBF\_[30MHz-16SS-12bitIQ-llsC3]

**Table A.2.3.1-1: LTE FDD IOT Profile 1 - LTE-FDD-FR1-CAT-B-DBF**

| **Category** | **Item** | **Related O-RAN CUS-Plane specification section(s)** |  |
| --- | --- | --- | --- |
| General | Radio access technology | - | LTE FDD |
| TDD configuration | - | NA |
| Nominal sub-carrier spacing | - | 15 kHz |
| SSB sub-carrier spacing | - | NA |
| Nominal FFT size | - | 2048 |
| Total channel bandwidth | - | Entry1: 20MHz Entry2: 20MHz+10MHz |
| Number of spatial/antenna streams | - | Entry1: 8 Entry2: 16 |
| Fronthaul Ethernet link | - | 25Gbps x 1lane for 8 spatial streams, 25Gbps x 2lane for 16 spatial streams |
| PRACH preamble format | - | 0 |
| RU category | 4.1.1 | Category B |
| LAA | - | FALSE |
| Delay management | Network delay determination | 4.3.3 | Defined Transport Method |
| RU adaptation of delay profile information (based on O-DU delay profile and transport delay) | 4.3.3.2 | FALSE |
| O-DU timing advance type | 4.3.4-4.3.5, Annex B | Fixed Timing Advance |
| T1a\_max\_up | 4.3, Annex B | Less than or equal to 437us |
| T1a\_min\_up | 4.3, Annex B | More than or equal to 366us |
| T2a\_max\_up | 4.3, Annex B | More than or equal to 437us |
| T2a\_min\_up | 4.3, Annex B | Less than or equal to 206us |
| Tcp\_adv\_dl | 4.3.2, Annex B | 125 us |
| Ta3\_max\_up | 4.3, Annex B | Less than or equal to 232us |
| Ta3\_min\_up | 4.3, Annex B | More than or equal to 70us |
| Ta4\_max\_up | 4.3, Annex B | More than or equal to 392us |
| Ta4\_min\_up | 4.3, Annex B | Less than or equal to 70us |
| T1a\_max\_cp\_ul | 4.3.2-4.3.3, Annex B | Less than or equal to 356us |
| T1a\_min\_cp\_ul | 4.3.2-4.3.3, Annex B | More than or equal to 285us |
| T2a\_max\_cp\_ul | 4.3.2-4.3.3, Annex B | More than or equal to 356us |
| T2a\_min\_cp\_ul | 4.3.2-4.3.3, Annex B | Less than or equal to 125us |
| T12\_max | 4.3, Annex B | 160 us |
| T12\_min | 4.3, Annex B | 0 us |
| T34\_max | 4.3, Annex B | 160 us |
| T34\_min | 4.3, Annex B | 0 us |
| Non-delay managed U-Plane traffic | 4.3.6 | FALSE |
| C/U-Plane transport | Transport encapsulation | 5.1.1-5.1.2 | Ethernet |
| Jumbo frames | 5.1.2 | FALSE |
| Transport header | 5.1.3 | eCPRI |
| eCPRI concatenation | 5.1.3.1 | FALSE |
| eAxC ID DU\_Port\_ID bitwidth | 5.1.3.1.6 | 2 |
| eAxC ID BandSector\_ID bitwidth | 5.1.3.1.6 | 3 |
| eAxC ID CC\_ID bitwidth | 5.1.3.1.6 | 3 |
| eAxC ID RU\_Port\_ID bitwidth | 5.1.3.1.6 | 8 |
| Fragmentation | 5.5 | Application layer fragmentation |
| Transport prioritization across C/U/S/M-Plane | 5.3 | Default L2 CoS priority |
| Transport prioritization within U-Plane | 5.3 | False (Default U-Plane priority applies) |
| Separation of C/U-Plane and M-Plane traffic | 5.4 | VLAN ID |
| Transport-based separation within C/U-Plane traffic | 5.4 | FALSE |
| Digital Power Scaling | UL gain\_correction | 8.1.3.2 | 0dB |
| Beamforming | RU beamforming type | 4.1.1 | Digital beamforming |
| Beamforming control method | 7.4, Annex J | Beamforming ID based |
| IQ compression | U-Plane data compression method | 8, Annex A | Block floating point |
| U-Plane data IQ bitwidth | 8, Annex D | Entry1: 9 Entry2: 12 |
| IQ data frame format not including udCompHdr field | 8.3.3.13 | TRUE |
| C-Plane | Section Type 0 | 7.4.2 | TRUE |
| Section Type 1 | 7.4.2 | TRUE |
| Section Type 3 | 7.4.2 | TRUE |
| Section Type 5 | 7.4.2 | FALSE |
| Section Type 6 | 7.4.2 | FALSE |
| Section Type 7 | 7.4.2 | FALSE |
| "symInc" flag | 7.4.5.3 | FALSE (always set to '0') |
| C-Plane for PRACH formats with preamble repetition | 7.3.2 | Single C-Plane message |
| Section extension 1 | 7.4.6 | FALSE |
| Section extension 2 | 7.4.6 | FALSE |
| Section extension 3 | 7.4.6 | TRUE |
| Section extension 4 | 7.4.6 | FALSE |
| Section extension 5 | 7.4.6 | FALSE |
| S-Plane | PTP Full Timing Support (G.8275.1) | 5.2.3, 10.1, 11 | TRUE |
| PTP Partial Timing Support (G.8275.2) | 5.2.3, 10.1, 11 | FALSE |
| Local PRTC | 5.2.3, 10.1, 11 | FALSE |
| Topology configuration | 11.2.2  10, 11.2.3 (for PLFS) | Entry1: lls-C2 Entry2: lls-C3 |

#### A.2.3.2 LTE FDD IOT Profile 2 - LTE-FDD-FR1-CAT-A-NoBF

Profile Test Configurations:

* LTE-FDD-FR1-CAT-A-NoBF\_[10MHz-2SS-9bitIQ-llsC1C2]
* LTE-FDD-FR1-CAT-A-NoBF\_[20MHz-2SS-9bitIQ-llsC1C2]
* LTE-FDD-FR1-CAT-A-NoBF\_[10MHz-2SS-12bitIQ-llsC1C2]
* LTE-FDD-FR1-CAT-A-NoBF\_[20MHz-2SS-12bitIQ-llsC1C2]
* LTE-FDD-FR1-CAT-A-NoBF\_[10MHz-4SS-9bitIQ-llsC3]
* LTE-FDD-FR1-CAT-A-NoBF\_[20MHz-4SS-9bitIQ-llsC3]
* LTE-FDD-FR1-CAT-A-NoBF\_[10MHz-4SS-12bitIQ-llsC3]
* LTE-FDD-FR1-CAT-A-NoBF\_[20MHz-4SS-12bitIQ-llsC3]
* LTE-FDD-FR1-CAT-A-NoBF\_[10MHz-2SS-9bitIQ-llsC3]
* LTE-FDD-FR1-CAT-A-NoBF\_[15MHz-2SS-9bitIQ-llsC3]
* LTE-FDD-FR1-CAT-A-NoBF\_[15MHz-4SS-9bitIQ-llsC3]
* LTE-FDD-FR1-CAT-A-NoBF\_[20MHz-2SS-9bitIQ-llsC3]
* LTE-FDD-FR1-CAT-A-NoBF\_[40MHz-2SS-12bitIQ-llsC1C2]
* LTE-FDD-FR1-CAT-A-NoBF\_[20MHz-4SS-12bitIQ-llsC1C2]
* LTE-FDD-FR1-CAT-A-NoBF\_[20MHz-4SS-12bitIQ-llsC1C2-Jumbo]
* LTE-FDD-FR1-CAT-A-NoBF\_[20MHz-2SS-12bitIQ-llsC3-Jumbo]
* LTE-FDD-FR1-CAT-A-NoBF\_[20MHz-4SS-12bitIQ-llsC3-Jumbo]
* LTE-FDD-FR1-CAT-A-NoBF\_[40MHz-4SS-12bitIQ-llsC3-Jumbo]
* LTE-FDD-FR1-CAT-A-NoBF\_[5MHz-2SS-16bitIQ-llsC1C2]
* LTE-FDD-FR1-CAT-A-NoBF\_[60MHz-4SS-16bitIQ-llsC1C2-Jumbo]

**Table A.2.3.2-1: LTE FDD IOT Profile 2 - LTE-FDD-FR1-CAT-A-NoBF**

| **Category** | **Item** | **Related O-RAN CUS-Plane specification section(s)** |  |
| --- | --- | --- | --- |
| General | Radio access technology | - | LTE FDD |
| TDD configuration | - | NA |
| Nominal sub-carrier spacing | - | 15 kHz |
| SSB sub-carrier spacing | - | NA |
| Nominal FFT size | - | 1024 for 10MHz BW, 1536 for 15MHz BW, 2048 for 20MHz BW |
| Total channel bandwidth | - | Entry1: 5MHz Entry2: 10MHz Entry3: 15MHz Entry4: 20MHz Entry5: 20MHz+20MHz Entry6: 20MHz+20MHz+20MHz |
| Number of spatial/antenna streams | - | Entry1: 2 Entry2: 4 |
| Fronthaul Ethernet link | - | 10Gbps x 1lane |
| PRACH preamble format | - | 0 |
| RU category | 4.1.1 | Category A |
| LAA | - | FALSE |
| Delay management | Network delay determination | 4.3.3 | Defined Transport Method |
| RU adaptation of delay profile information (based on O-DU delay profile and transport delay) | 4.3.3.2 | FALSE |
| O-DU timing advance type | 4.3.4-4.3.5, Annex B | Fixed Timing Advance |
| T1a\_max\_up | 4.3, Annex B | Less than or equal to 437us |
| T1a\_min\_up | 4.3, Annex B | More than or equal to 366us |
| T2a\_max\_up | 4.3, Annex B | More than or equal to 437us |
| T2a\_min\_up | 4.3, Annex B | Less than or equal to 206us |
| Tcp\_adv\_dl | 4.3.2, Annex B | 125 us |
| Ta3\_max\_up | 4.3, Annex B | Less than or equal to 232us |
| Ta3\_min\_up | 4.3, Annex B | More than or equal to 70us |
| Ta4\_max\_up | 4.3, Annex B | More than or equal to 392us |
| Ta4\_min\_up | 4.3, Annex B | Less than or equal to 70us |
| T1a\_max\_cp\_ul | 4.3.2-4.3.3, Annex B | Less than or equal to 356us |
| T1a\_min\_cp\_ul | 4.3.2-4.3.3, Annex B | More than or equal to 285us |
| T2a\_max\_cp\_ul | 4.3.2-4.3.3, Annex B | More than or equal to 356us |
| T2a\_min\_cp\_ul | 4.3.2-4.3.3, Annex B | Less than or equal to 125us |
| T12\_max | 4.3, Annex B | 160 us |
| T12\_min | 4.3, Annex B | 0 us |
| T34\_max | 4.3, Annex B | 160 us |
| T34\_min | 4.3, Annex B | 0 us |
| Non-delay managed U-Plane traffic | 4.3.6 | FALSE |
| C/U-Plane transport | Transport encapsulation | 5.1.1-5.1.2 | Ethernet |
| Jumbo frames | 5.1.2 | Entry1: FALSE Entry2: TRUE |
| Transport header | 5.1.3 | eCPRI |
| eCPRI concatenation | 5.1.3.1 | FALSE |
| eAxC ID DU\_Port\_ID bitwidth | 5.1.3.1.6 | 2 |
| eAxC ID BandSector\_ID bitwidth | 5.1.3.1.6 | 6 |
| eAxC ID CC\_ID bitwidth | 5.1.3.1.6 | 4 |
| eAxC ID RU\_Port\_ID bitwidth | 5.1.3.1.6 | 4 |
| Fragmentation | 5.5 | Application layer fragmentation |
| Transport prioritization across C/U/S/M-Plane | 5.3 | Default L2 CoS priority |
| Transport prioritization within U-Plane | 5.3 | False (Default U-Plane priority applies) |
| Separation of C/U-Plane and M-Plane traffic | 5.4 | VLAN ID |
| Transport-based separation within C/U-Plane traffic | 5.4 | FALSE |
| Digital Power Scaling | UL gain\_correction | 8.1.3.2 | 0dB |
| Beamforming | RU beamforming type | 4.1.1 | No beamforming |
| Beamforming control method | 7.4, Annex J | Beamforming ID based (always "0") |
| IQ compression | U-Plane data compression method | 8, Annex A | Entry1: Block floating point Entry2: No compression |
| U-Plane data IQ bitwidth | 8, Annex D | For Block floating point: Entry1: 9 Entry2: 12 For No compression: 16 |
| IQ data frame format not including udCompHdr field | 8.3.3.13 | TRUE |
| C-Plane | Section Type 0 | 7.4.2 | TRUE |
| Section Type 1 | 7.4.2 | TRUE |
| Section Type 3 | 7.4.2 | TRUE |
| Section Type 5 | 7.4.2 | FALSE |
| Section Type 6 | 7.4.2 | FALSE |
| Section Type 7 | 7.4.2 | FALSE |
| "symInc" flag | 7.4.5.3 | FALSE (always set to '0') |
| C-Plane for PRACH formats with preamble repetition | 7.3.2 | Single C-Plane message |
| Section extension 1 | 7.4.6 | FALSE |
| Section extension 2 | 7.4.6 | FALSE |
| Section extension 3 | 7.4.6 | FALSE |
| Section extension 4 | 7.4.6 | FALSE |
| Section extension 5 | 7.4.6 | FALSE |
| S-Plane | PTP Full Timing Support (G.8275.1) | 5.2.3, 10.1, 11 | TRUE |
| PTP Partial Timing Support (G.8275.2) | 5.2.3, 10.1, 11 | FALSE |
| Local PRTC | 5.2.3, 10.1, 11 | FALSE |
| Topology configuration | 11.2.2  10, 11.2.3 (for PLFS) | Entry1: lls-C1 (can also apply lls-C2) Entry2: lls-C3 |

### A.2.4 LTE TDD

#### A.2.4.1 LTE TDD IOT Profile 1 - LTE-TDD-FR1-CAT-A-DBF

Profile Test Configurations:

* LTE-TDD-FR1-CAT-A-DBF\_[20MHz-9bitIQ-llsC2]
* LTE-TDD-FR1-CAT-A-DBF\_[30MHz-9bitIQ-llsC2]
* LTE-TDD-FR1-CAT-A-DBF\_[40MHz-9bitIQ-llsC2]
* LTE-TDD-FR1-CAT-A-DBF\_[20MHz-16bitIQ-llsC2]
* LTE-TDD-FR1-CAT-A-DBF\_[30MHz-16bitIQ-llsC2]
* LTE-TDD-FR1-CAT-A-DBF\_[40MHz-16bitIQ-llsC2]
* LTE-TDD-FR1-CAT-A-DBF\_[20MHz-9bitIQ-llsC3]
* LTE-TDD-FR1-CAT-A-DBF\_[30MHz-9bitIQ-llsC3]
* LTE-TDD-FR1-CAT-A-DBF\_[40MHz-9bitIQ-llsC3]
* LTE-TDD-FR1-CAT-A-DBF\_[20MHz-16bitIQ-llsC3]
* LTE-TDD-FR1-CAT-A-DBF\_[30MHz-16bitIQ-llsC3]
* LTE-TDD-FR1-CAT-A-DBF\_[40MHz-16bitIQ-llsC3]

**Table A.2.4.1-1: LTE TDD IOT Profile 1 - LTE-TDD-FR1-CAT-A-DBF**

| **Category** | **Item** | **Related O-RAN CUS-Plane specification section(s)** |  |
| --- | --- | --- | --- |
| General | Radio access technology | - | LTE TDD |
| TDD configuration | - | subframeAssignment sa2 |
| Nominal sub-carrier spacing | - | 15 kHz |
| SSB sub-carrier spacing | - | NA |
| Nominal FFT size | - | 1024 for 10MHz BW, 2048 for 20MHz BW |
| Total channel bandwidth | - | Entry1: 20MHz  Entry2: 20MHz+10MHz  Entry3: 20MHz+20MHz |
| Number of spatial/antenna streams | - | 8 |
| Fronthaul Ethernet link | - | 10Gbps x 1 lane for 20MHz  10Gbps x 2 lane for 20MHz+10MHz, 20MHz+20MHz |
| PRACH preamble format | - | 0 |
| RU category | 4.1.1 | Category A |
| LAA | - | FALSE |
| Delay management | Network delay determination | 4.3.3 | Defined Transport Method |
| RU adaptation of delay profile information (based on O-DU delay profile and transport delay) | 4.3.3.2 | FALSE |
| O-DU timing advance type | 4.3.4-4.3.5, Annex B | Fixed Timing Advance |
| T1a\_max\_up | 4.3, Annex B | Less than or equal to 437us |
| T1a\_min\_up | 4.3, Annex B | More than or equal to 366us |
| T2a\_max\_up | 4.3, Annex B | More than or equal to 437us |
| T2a\_min\_up | 4.3, Annex B | Less than or equal to 206us |
| Tcp\_adv\_dl | 4.3.2, Annex B | 125 us |
| Ta3\_max\_up | 4.3, Annex B | Less than or equal to 232us |
| Ta3\_min\_up | 4.3, Annex B | More than or equal to 70us |
| Ta4\_max\_up | 4.3, Annex B | More than or equal to 392us |
| Ta4\_min\_up | 4.3, Annex B | Less than or equal to 70us |
| T1a\_max\_cp\_ul | 4.3.2-4.3.3, Annex B | Less than or equal to 356us |
| T1a\_min\_cp\_ul | 4.3.2-4.3.3, Annex B | More than or equal to 285us |
| T2a\_max\_cp\_ul | 4.3.2-4.3.3, Annex B | More than or equal to 356us |
| T2a\_min\_cp\_ul | 4.3.2-4.3.3, Annex B | Less than or equal to 125us |
| T12\_max | 4.3, Annex B | 160 us |
| T12\_min | 4.3, Annex B | 0 us |
| T34\_max | 4.3, Annex B | 160 us |
| T34\_min | 4.3, Annex B | 0 us |
| Non-delay managed U-Plane traffic | 4.3.6 | FALSE |
| C/U-Plane transport | Transport encapsulation | 5.1.1-5.1.2 | Ethernet |
| Jumbo frames | 5.1.2 | FALSE |
| Transport header | 5.1.3 | eCPRI |
| eCPRI concatenation | 5.1.3.1 | FALSE |
| eAxC ID DU\_Port\_ID bitwidth | 5.1.3.1.6 | 4 |
| eAxC ID BandSector\_ID bitwidth | 5.1.3.1.6 | 3 |
| eAxC ID CC\_ID bitwidth | 5.1.3.1.6 | 3 |
| eAxC ID RU\_Port\_ID bitwidth | 5.1.3.1.6 | 6 |
| Fragmentation | 5.5 | Application layer fragmentation |
| Transport prioritization across C/U/S/M-Plane | 5.3 | Default L2 CoS priority |
| Transport prioritization within U-Plane | 5.3 | False (Default U-Plane priority applies)-Plane |
| Separation of C/U-Plane and M-Plane traffic | 5.4 | VLAN ID |
| Transport-based separation within C/U-Plane traffic | 5.4 | FALSE |
| Digital Power Scaling | UL gain\_correction | 8.1.3.2 | 0dB |
| Beamforming | RU beamforming type | 4.1.1 | Digital beamforming |
| Beamforming control method | 7.4, Annex J | Beamforming weight based |
| IQ compression | U-Plane data compression method | 8, Annex A | Entry1: Block floating point  Entry2: No compression |
| U-Plane data IQ bitwidth | 8, Annex D | 9 for Block floating point, 16 for No compression |
| IQ data frame format not including udCompHdr field | 8.3.3.13 | TRUE |
| C-Plane | Section Type 0 | 7.4.2 | TRUE |
| Section Type 1 | 7.4.2 | TRUE |
| Section Type 3 | 7.4.2 | TRUE |
| Section Type 5 | 7.4.2 | FALSE |
| Section Type 6 | 7.4.2 | FALSE |
| Section Type 7 | 7.4.2 | FALSE |
| "symInc" flag | 7.4.5.3 | FALSE (always set to '0') |
| C-Plane for PRACH formats with preamble repetition | 7.3.2 | Single C-Plane message |
| Section extension 1 | 7.4.6 | FALSE |
| Section extension 2 | 7.4.6 | FALSE |
| Section extension 3 | 7.4.6 | TRUE |
| Section extension 4 | 7.4.6 | FALSE |
| Section extension 5 | 7.4.6 | FALSE |
| S-Plane | PTP Full Timing Support (G.8275.1) | 5.2.3, 10.1, 11 | TRUE |
| PTP Partial Timing Support (G.8275.2) | 5.2.3, 10.1, 11 | FALSE |
| Local PRTC | 5.2.3, 10.1, 11 | FALSE |
| Topology configuration | 11.2.2  10, 11.2.3 (for PLFS) | Entry1: lls-C2  Entry2: lls-C3 |

# Revision History

|  |  |  |
| --- | --- | --- |
| **Date** | **Revision** | **Description** |
| 2019.09.05 | 01.00 | First published version for Fronthaul Interoperability Test Specification (IOT) |
| 2020.03.13 | 02.00 | Second published version for Fronthaul Interoperability Test Specification (IOT) |
| 2020.11.5 | 03.00 | Implement change requests, minor editorials, slave replaced by subordinate  CIS\_2020 10 13-oRAN-WG4 IoT CR CIS-16 SSHv2 ciphers (3)  O-RAN.WG4.IOT.v2.00\_FM\_RVG3  Includes text mandating both the IOT Profile and the Spec version are nominated to ensure the appropriate parameter values are referenced. |
| 2021.03.18 | 04.00 | Rename Profiles as Profile Test Configurations NOK-0052  M-Plane correction NEC-0009 rev1  M-Plane system recovery action for S-Plane degraded conditions NEC-0010  Update eaxc\_id to align with M-Plane and CUS-Plane description  Update eaxc\_id to eaxc-id to align with M-Plane Specification  Include mMIMO IOT profile and associated test equipment update  mMIMO Profile Test Configurations and FFS  Includes values of Ta3\_max-up, Ta3\_min\_up, Ta4\_max\_up, Ta4\_min\_up in the mMIMO profiles which were accidentally omitted. |
| 2021.07.06 | 05.00 | CRs and text proposals were implemented along with editorial updates  Correct description of delay profile tests MAV-0017  Add mMIMO IOT profile test configurations VIA-CR0005  Update mMIMO IOT profile re section extension 1,11 and 4,5 MAV-0022 & 0026  Add mMIMO PRACH delay parameters VIA-CR0006  Updating IOT profile for S-plane and aligning them with CUS table 8-2 NOK-0075  Annex A text to clarify the intent and completeness of an IOT profile test |
| 2021.11.14 | 06.00 | CR and text proposals and editorial updates and updates to references  IQ compression field correction for mMIMO IOR profiles MAV-0027  New mMIMO IOT profile timing parameters ERI-0030  Update of NR TDD IOT profile 1 CHM-0003  Update of NR TDD profile 2 DCM-0015  Update of NR FDD profile4 DCM-0016  M-Plane IOT profile for IPv6 and TLS RMI-0003 + IOT Profile Configurations |
| 2022.03.08 | 07.00 | CR and text proposals and editorial updates  Correct M-Plane tests to use Ipv6/TLS VIA-0007  Add M-Plane hybrid mode profile Ipv6/TLS VIA-0008 |
| 2022.08.03 | 08.00 | CR text proposals, update reference to CUS/M specs, editorial updates  O-RAN FH IOT profile modifications for NR TDD DCM-0020  IOT Profile modifications for TDD configuration of UL heavy pattern DCM-0021  Removal of Annex ZZZ and related references |
| 2022.11.08 | 09.00 | CR text proposals, editorial updates  Alignment to template VIA CR-0009  IOT-profile-terminology update QCM CR-0056 |
| 2023.03.17 | 10.00 | CR text proposals, editorial updates  Align to TSC drafting rules NEC CR-0020  Modification to delay management tests VIA CR-0009  Proposed set of parameters to assign as modifiable or forbidden for Customized IOT Profiles concept introduced into version 9.0 VIA CR-0008 |
| 2024.03.18 | 11.00 | CR text proposals, editorial updates  Clarification that it is mandatory to test at least 1 synchronization topology and provided clear test classifications for each test DTAG -0001 |
| 2024.07.03 | 12.00 | CR text proposals, editorial updates  Update that it is conditional mandatory to test M-Plane hybrid mode, conditional upon the O-DU supporting it. DCM-022 |

# History

|  |  |  |
| --- | --- | --- |
| Date | Revision | Description |
| 2019.09.05 | 01.00 | Published as Final version 01.00 |
| 2020.03.13 | 02.00 | Published as Final version 02.00 |
| 2020.11.05 | 03.00 | Published as Final version 03.00 |
| 2021.03.18 | 04.00 | Published as Final version 04.00 |
| 2021.07.06 | 05.00 | Published as Final version 05.00 |
| 2021.11.14 | 06.00 | Published as Final version 06.00 |
| 2022.03.08 | 07.00 | Published as Final version 07.00 |
| 2022.07.14 | 07.03 | Published as Final version 08.00 |
| 2022.10.27 | 08.01 | Published as Final version 09.00 |
| 2023.03.17 | 09.01 | Published as Final version 10.00 |
| 2024.03.18 | 10.03 | Published as Final version 11.00 |
| 2024.07.03 | 11.03 | Published as Final version 11.00 |
---

- View in [Reader Mode](https://simewu.com/spec-reader/pages/08-WG4/O-RAN.WG4.IOT.0-R004-v12.00.docx).
- Go back to [Table of Contents](../README.md).
- Download the [Original Document](https://github.com/Simewu/spec-reader/raw/refs/heads/main/documents/O-RAN.WG4.IOT.0-R004-v12.00.docx).
