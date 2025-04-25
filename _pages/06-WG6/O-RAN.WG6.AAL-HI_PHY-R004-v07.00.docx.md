---
title: O-RAN.WG6.AAL-HI_PHY-R004-v07.00.docx.md
author: O-RAN Alliance, WG6
layout: post
---

- View in [GitHub Mode]({{site.github_page_url}}/O-RAN.WG6.AAL-HI_PHY-R004-v07.00.docx.md).
- Go back to [Table of Contents]({{site.baseurl}}/).
- Download the [Original Document]({{site.download_url}}/O-RAN.WG6.AAL-HI_PHY-R004-v07.00.docx).

---

* toc
{:toc}

---

# ![webwxgetmsgimg (7).jpeg]({{site.baseurl}}/assets/images/9c69df009b87.jpg)O-RAN.WG6.AAL-HI\_PHY-R004-v07.00

*Technical Specification*

**O-RAN Working Group 6 (Cloudification and Orchestration Workgroup)**

**Acceleration Abstraction Layer High-PHY Profiles**

Copyright (C) 2025 by the O-RAN ALLIANCE e.V.

The copying or incorporation into any other work of part or all of the material available in this specification in any form without the prior written permission of O-RAN ALLIANCE e.V. is prohibited, save that you may print or download extracts of the material of this specification for your personal use, or copy the material of this specification for the purpose of sending to individual third parties for their information provided that you acknowledge O-RAN ALLIANCE as the source of the material and that you inform the third party that these conditions apply to them and that they must comply with them.

O-RAN ALLIANCE e.V., Buschkauler Weg 27, 53347 Alfter, Germany Register of Associations, Bonn VR 11238, VAT ID DE321720189

# 1 Contents

1. List of figures 3
2. List of tables 3
3. Foreword 3
4. Modal verbs terminology 4
5. Executive summary 4
6. Introduction 4
7. 1 Scope 5
8. 2 References 5
9. 2.1 Normative references 5
10. 2.2 Informative references 5
11. 3 Definition of terms, symbols and abbreviations 6
12. 3.1 Terms 6
13. 3.2 Symbols 6
14. 3.3 Abbreviations 6
15. 4 Overview 7
16. 4.1 Purpose 7
17. 4.2 Document Structure 8
18. 5 AALI Configuration and Management 9
19. 5.1 Introduction 9
20. 5.2 Summary of Capabilities reported through the AALI-C-Mgmt Interface 9
21. 6 AAL Profile Specifications 10
22. 6.1 Profile Specifications Overview 10
23. 6.1.1 Naming 10
24. 6.2 O-DU AAL\_DOWNLINK\_High-PHY Profile Specification 10
25. 6.2.1 Profile Operation 10
26. 6.2.2 Summary of Capabilities 11
27. 6.2.2b Summary of Configuration 13
28. 6.2.3 PDSCH Channel Model 14
29. 6.2.4 PDCCH Channel Model 22
30. 6.2.5 CSI-RS Channel Model 27
31. 6.2.6 SSB Model 29
32. 6.2.7 Beamforming 34
33. 6.3 O-DU AAL\_UPLINK\_High-PHY Profile Specification 36
34. 6.3.1 Profile Operation 36
35. 6.3.2 Summary of Capabilities 37
36. 6.3.2b Summary of Configuration 39
37. 6.3.3 PUSCH Channel Model 41
38. 6.3.4 PUCCH Channel Model 48
39. 6.3.5 SRS Channel Model 57
40. 6.3.6 PRACH Channel Model 60
41. 6.3.7 Beamforming 62
42. Annex A [informative] Stage-3 Support for AAL\_DOWNLINK\_High-PHY and AAL\_UPLINK\_High-
43. PHY using FAPI 65
44. History 68

46

47

1 List of figures

1. Figure 4.1-1: AAL\_DOWNLINK\_High-PHY Profile 7
2. Figure 4-1-2: AAL\_UPLINK\_High-PHY Profile 8

4

5

6

7

# 8 List of tables

1. Table 5.2-1: High-PHY Profile Capabilities Reported through the AALI-C-Mgmt Interface 9
2. Table 5.2-2: Attribute Properties for Carrier Group 9
3. Table 6.2.2-1: Sample AAL\_DOWNLINK\_High-PHY Profile Capabilities 11
4. Table 6.2.3.2-1: PDSCH Data Parameters 15
5. Table 6.2.3.2-2: PDSCH DM-RS Parameters 20
6. Table 6.2.5.2: CSI-RS Parameters 28
7. Table 6.2.6.2-2: PBCH DM-RS Parameters 33
8. Table 6.2.6.2-3: PSS & SSS Parameters 33
9. Table 6.2.7.2-1: Weight-based Dynamic Beamforming Parameters for Downlink 35
10. Table 6.2.7.4-1: Channel-Information-Based Beamforming Parameters for Downlink 36
11. Table 6.3.2-1: Sample AAL\_UPLINK\_High-PHY Profile Capabilities 37
12. Table 6.3.2b-1: Sample Carrier Configurations pertinent to AAL\_UPLINK\_High-PHY 39
13. Table 6.3.3.2-1: PUSCH Data Parameters 42
14. Table 6.3.3.2-2: PUSCH DM-RS Parameters 46
15. Table 6.3.3.2-3: PUSCH PT-RS Parameters 47
16. Table 6.3.4.2-1: PUCCH Format 0 Parameters 50
17. Table 6.3.4.2-3: PUCCH Format 1 DM-RS Parameters 52
18. Table 6.3.4.2-4: PUCCH Formats 2/3/4 Parameters 53
19. Table 6.3.4.2-5: PUCCH Formats 2/3/4 DM-RS Parameters 56
20. Table 6.3.5.2-1: SRS Parameters 57
21. Table 6.3.6.2-1: PRACH Parameters 60
22. Table 6.3.7.2-1: Weight-based Dynamic Beamforming Parameters for Uplink 63
23. Table 6.3.7.4-1: Channel-Information-Based Beamforming Parameters for Downlink 63

32

33 Foreword

1. This Technical Specification (TS) has been produced by WG6 of the O-RAN Alliance.
2. The content of the present document is subject to continuing work within O-RAN and may change following formal O-
3. RAN approval. Should the O-RAN Alliance modify the contents of the present document, it will be re-released by O-
4. RAN with an identifying change of version date and an increase in version number as follows:
5. version xx.yy.zz
6. where:
7. xx: the first digit-group is incremented for all changes of substance, i.e. technical enhancements, corrections,
8. updates, etc. (the initial approved document will have xx=01). Always 2 digits with leading zero if needed.
9. yy: the second digit-group is incremented when editorial only changes have been incorporated in the document.
10. Always 2 digits with leading zero if needed.
11. zz: the third digit-group included only in working versions of the document indicating incremental changes during
12. the editing process. External versions never include the third digit-group. Always 2 digits with leading zero if
13. needed.

# 1 Modal verbs terminology

* 1. In the present document "**shall**", "**shall not**", "**should**", "**should not**", "**may**", "**need not**", "**will**", "**will not**", "**can**" and
  2. "**cannot**" are to be interpreted as described in clause 3.2 of the O-RAN Drafting Rules (Verbal forms for the expression
  3. of provisions).
  4. "**must**" and "**must not**" are **NOT** allowed in O-RAN deliverables except when used in direct citation.

# 6 Executive summary

1. This document provides the description of the requirements and stage-2 information models to implement an
2. Acceleration Abstraction Layer (AAL) for the High-PHY functionality hosted by an AAL-LPU that is associated with
3. an O-RAN Distributed Unit (O-DU). Informative examples of stage-3 implementations are described in informational
4. Annexes of this present document.

# 11 Introduction

1. This document specifies how to accelerate the High-PHY functionality of an O-DU where the High-PHY Acceleration
2. Function (AF) is hosted on an AAL-LPU that is assigned to the AAL Application that is part of the O-DU. This
3. document also specifies a set of AAL Profiles and procedures for utilizing the AALI Common Management (AALI-C-
4. Mgmt) and Application (AALI-C-App) interfaces to convey the information elements specified by the AAL Profiles.

16

1 1 Scope

1. The present document specifies the requirements and stage-2 information models for the AAL\_DOWNLINK\_High-
2. PHY and the AAL\_UPLINK\_High-PHY Profiles. Informative examples of stage-3 implementations for the AAL
3. Profiles specified in this present document are described in informational Annexes of this present document.

# 5 2 References

## 2.1 Normative references

* 1. References are either specific (identified by date of publication and/or edition number or version number) or
  2. non-specific. For specific references, only the cited version applies. For non-specific references, the latest version of the
  3. referenced document (including any amendments) applies.
  4. NOTE: While any hyperlinks included in this clause were valid at the time of publication, O-RAN cannot
  5. guarantee their long term validity.
  6. The following referenced documents are necessary for the application of the present document.

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| 13 | [1] | Void |
| 14 | [2] | Void |
| 15 | [3] | Voic |
| 16 | [4] | 3GPP TS 38.211: "NR; Physical channels and modulation". |
| 17 | [5] | 3GPP TS 38.212: "NR; Multiplexing and channel coding". |
| 18 | [6] | 3GPP TR 38.300: "NR; NR and NG-RAN Overall Description". |
| 19 | [7] | O-RAN WG6: Acceleration Abstraction Layer General Aspects and Principles, v06.00, November 2023 |
| 20 | [8] | O-RAN WG4 Control, User and Synchronization Plane Specification, v14.00, November 2023 |
| 21 | [9] | Void |
| 22 | [10] | Void |
| 23 | [11] | Acceleration Abstraction Layer AAL Profile - MUMIMO BeamForming/Precoder Calculation, v01.00, |
| 24 |  | February 2020 |
| 25 | [12] | O-RAN WG6 Acceleration Abstraction Layer Common API v06.00, November 2023 |

</div>

## 2.2 Informative references

1. The following referenced documents are not necessary for the application of the present document, but they assist the
2. user with regard to a particular subject area.
3. [i.1] SCF 222: "5G FAPI: PHY API Specification", v07.00, August 2023
4. [i.2] SCF 223: "5G FAPI: Front-End Unit API Specification", v05.00, August 2023 31

1

# 2 3 Definition of terms, symbols and abbreviations

## 3.1 Terms

* 1. For the purposes of the present document, the terms given in [7] apply.

## 3.2 Symbols

* 1. For the purposes of the present document, the symbols given in [7] apply.

## 3.3 Abbreviations

* 1. For the purposes of the present document, the terms and definitions given in the O-RAN Acceleration Abstraction
  2. Layer General Aspects and Principles [7] and the following abbreviations apply:

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| 10 | AALI | Acceleration Abstraction Layer interface |
| 11 | CB | Code Block |
| 12 | 3GPP | 3rd Generation Partnership Project |
| 13 | OFH | O-RAN Front Haul |
| 14 | O-CU | O-RAN Centralized Unit |
| 15 | O-DU | O-RAN Distributed Unit |
| 16 | O-RU | O-RAN Radio Unit |
| 17 | TB | Transport Block |
| 18 |  |  |

</div>

1

# 2 4 Overview

## 4.1 Purpose

1. The AAL General Aspects and Principles is described in [7] including a high level architecture of the AAL and
2. definition of the AAL Profiles. This document details the AAL specification consisting of the requirements, information
3. model and description of the interface to implement an AALI for the AAL\_DOWNLINK\_High-PHY and
4. AAL\_UPLINK\_High-PHY profiles.
5. NOTE: The present document requires inline accelerators supporting High-PHY profiles in inline acceleration mode to
6. implement both AAL\_DOWNLINK\_High-PHY and AAL\_UPLINK\_High-PHY profiles. Support for partial profiles is
7. for FFS.

##### These profiles are illustrated below:

L2+

**PDSCH TB(s)**

TB CRC attachment

CB segmentation +

CRC attachment

LDPC encoding

**PDCCH (DCI)**

<div class="table-wrapper" markdown="block">

|  |
| --- |
| CRC attachment |
| Polar encoding |
| Rate matching |
| Scrambling |
| Modulation  (QPSK) |

</div>

**PBCH TB**

Rate matching

**PDSCH DM-RS**

CB concatenation

**/PT-RS**

Sequence generation

Scrambling

**PDCCH DM-RS**

Modulation

Sequence generation

Layer mapping

Modulation

Modulation

**PSS/SSS**

**PBCH DM-RS**

Sequence Generation

Modulation

<div class="table-wrapper" markdown="block">

|  |
| --- |
| PBCH payload generation |
| Scrambling |
| TB CRC  attachment |
| Polar encoding |
| Rate matching |
| Data scrambling |
| Modulation  (QPSK) |

</div>

**CSI-RS/TRS**

Sequence Generation

Modulation

Precoding\*

Precoding\*

Precoding\*

Precoding\*

RE mapping

RE mapping

RE mapping

RE mapping

IQ compression\*

IQ compression\*

IQ compression\*

IQ compression\*

12

O-RAN FH (7-2x lower layer split)

##### 13 Figure 4.1-1: AAL\_DOWNLINK\_High-PHY Profile

14

L2+

**PUSCH Data**

TB CRC check

**PUCCH**

<div class="table-wrapper" markdown="block">

|  |
| --- |
| CB CRC + CB  desegmentation |
| LDPC decoding |
| Rate  dematching |
| CB de-  concatenation |
| Descrambling |

</div>

**Format 1**

Demodulation

**UCI**

De- modulation

**PUSCH**

**DM-RS/ PT-RS**

**PUCCH**

**Format 0**

**UCI**

**PUCCH**

**Format 1 DM-RS**

**PUCCH**

**Format 2/3/4 DM-RS**

IQ decompression\*

IQ decompression\*

RE demapping

RE demapping

RE demapping

RE demapping

detection

detection

Sequence

Channel

Estimation

Sequence

Channel

Estimation

Channel equalization

IQ

decompression\*

IQ decompression\*

Channel

equalization

Channel

equalization

IDFT for DFT-s

OFDM

**PUCCH**

**Format 2/3/4 UCI**

<div class="table-wrapper" markdown="block">

|  |
| --- |
| CRC Check |
| Polar/Block  decoding |
| Rate  dematching |
| De-  scrambling |
| De-  modulation |
| IDFT for DFT-s OFDM |

</div>

**PRACH**

Preamble

detection & delay estimation

**SRS**

IFFT

Noise estimation

Peak search

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| Channel  estimation | Sequence | Sequence  detection |
| detection |

</div>

Root Sequence

correlation

Sequence

detection

RE demapping

RE demapping

IQ

decompression\*

IQ

decompression\*

1

O-RAN FH (7-2x lower layer split)

1. **Figure 4-1-2: AAL\_UPLINK\_High-PHY Profile**

## 4.2 Document Structure

1. This present document is structured as follows: Clause 4 presents the overview and main purpose of this specification.
2. Clause 5 will present the high level AALI configuration and management principles for the AAL\_DOWNLINK\_High-
3. PHY and AAL\_UPLINK\_High-PHY Profiles. Clause 6 presents the Profile Overview for these two profiles, sample
4. capabilities, inputs, and outputs as well as AAL-LPU parameters for the channels constituting the profiles. 8

9

# 1 5 AALI Configuration and Management

## 5.1 Introduction

1. The AALI-C-Mgmt APIs specified in [12] are used to configure the AAL Profiles specified in the present document.
2. The AALI-C-App operations and events specified in [12] are used by the AAL Application to convey the AAL Profile's
3. information elements specified in the present document.

## 5.2 Summary of Capabilities reported through the AALI-C-Mgmt

1. Interface
2. Table 5.2-1 contains a list of capabilities for the AAL-Profiles specified in this present document. The reporting of these
3. capabilities is optional and may be reported through the AALI-C-Mgmt interface as inputs to assist management
4. systems in reconciling the configuration of the AAL-Profile with its capabilities along with any capability extensions.
5. These capabilities are also used in the assignment of the AAL Application with an AAL-LPU supporting the AAL-
6. Profiles specified in this present document.

##### Table 5.2-1: High-PHY Profile Capabilities Reported through the AALI-C-Mgmt Interface

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **Capability**  **name** | **Data Type/Description** | **Properties** | **Applicable**  **AAL-Profiles** |
| carrierGroup | **Data Type:** array  **Description:** The carrier groups supported by the AAL-Profile. A carrier is set of carriers that can pool capabilities (e.g., bandwidth layer). | x-support-qualifier: M  x-isInvariant: True x-inventoryNotification True nullable: False  x-isOrdered: False title: Numerologies minItems: 1  uniqueItems: True items: Numerology | AAL\_DOWNLINK\_High  -PHY  AAL\_UPLINK\_High- PHY |

</div>

14

##### 15 Table 5.2-2: Attribute Properties for Carrier Group

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Attribute name** | **Data Type/Description** | **Properties** |
| id | **Data Type:** string  **Description:** The identifier of the carrier group. | x-support-qualifier: M  readOnly: True  x-isInvariant: True x-inventoryNotification True nullable: False |
| supportedNumerol ogies | **Data Type:** array  **Description:** The list of supported numerologies as described in table 4.2-1/3GPP TS 38.211 [4]. | x-inventoryNotification True nullable: False  format: integer8  minimum: 0  maximum: 4 |
| numCarriers | **Data Type:** integer  **Description:** Number of carriers for this carrier group. | x-support-qualifier: M  readOnly: True  x-isInvariant: True x-inventoryNotification True nullable: False  format: integer8  minimum: 1  maximum: 255 |
| bandwidthLayers | **Data Type:** integer  **Description:** The value is the aggregate bandwidth layers across all carriers in this carrier group. | x-support-qualifier: M  readOnly: True  x-isInvariant: True x-inventoryNotification True  nullable: False |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Attribute name** | **Data Type/Description** | **Properties** |
|  |  | format: integer64  x-units: HzLayer |

</div>

1

2

# 3 6 AAL Profile Specifications

## 6.1 Profile Specifications Overview

1. This section contains information for each AAL Profile that is specified in this present document. An AAL Profile may
2. provide APIs for a specific profile configuration that may be required in addition to the general AAL configuration
3. APIs. AAL Profile specific configuration shall be done on a per AAL-LPU basis. Each AAL Profile shall define a list
4. of capabilities that will be used to define the operations supported by the AAL-LPU.
5. A normative stage-3 definition for this High-PHY Profile specification is FFS and could leverage aspects of various
6. options including but not limited to SCF-222.
7. An informative example of one possible mapping of the stage-2 HI-PHY Profile in this document is provided in Annex
8. A.

### 6.1.1 Naming

1. Parameters and capabilities based on this stage-2 specification shall follow the following naming guidelines:
2. ? Parameter and capability names shall start with a lowercase letter;
3. ? No spaces may be used in the names;
4. ? The names shall consist only of letters and digits and hyphens;
5. ? The first letter of each non-initial word in a name shall be capitalized.
6. ? Acronyms in the beginning of a parameter are lower case, uppercase otherwise
7. ? Acronyms are hyphenated from preceding or succeeding upper case

## 6.2 O-DU AAL\_DOWNLINK\_High-PHY Profile Specification

1. This profile provides acceleration functionality for the following channels and signals:
2. ? PDSCH (including Data, DM-RS and PT-RS)
3. ? PDCCH (including Data and DM-RS)
4. ? CSI-RS
5. ? SSB (Including PSS, SSS and PBCH)
6. This clause presents parametrization for each of these channels and signals, and pertinent carrier configuration.

### 6.2.1 Profile Operation

1. The AAL\_DOWNLINK\_High-PHY Profile interface shall work on a slot basis, where the slot, numerology and SFN
2. are signaled for the API.
3. The input data is specific to each downlink channel composing the profile. The output data is a set of C/U-Plane O-
4. RAN Fronthaul (OFH) packets [8].
5. The AAL-LPU interfaces directly with the OFH and is responsible for handling its exchange of information with OFH.
6. As much as possible, parameter redundancy should be avoided. Where this is not possible, the AAL-LPU shall assume
7. that redundant parameters are consistent.

### 6.2.2 Summary of Capabilities

1. The AAL\_DOWNLINK\_High-PHY Profile capabilities shall be reported to the application.
2. Table 6.2.2-1 lists a subset of the AAL\_DOWNLINK\_High-PHY profile capabilities that should be reported to the
3. application with respect to the acceleration of the various channel functionality and interaction.
4. NOTE: Additional capabilities can also be reported by the AALI implementation.
5. AALI-P capapbi

##### Table 6.2.2-1: Sample AAL\_DOWNLINK\_High-PHY Profile Capabilities

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Capability** | **Short summary** | **3GPP Spec Reference** |
| 3gpp-Release | Releases of 3GPP Specifications that are used. For example, Release 16, Release 17 | [https://www.3gpp.org/specifications/](https://www.3gpp.org/specifications/work-plan) [work-plan](https://www.3gpp.org/specifications/work-plan) |
| maxPDSCH-TB-PerSlot | Number of PDSCH TB(s) per slot | Outside the scope of 3GPP |
| pdsch-CB-CRC | Supported with CB CRC caching in AAL-LPU, Supported with CB CRC reporting to L1, or Not supported | Outside the scope of 3GPP |
| cyclicPrefix | Normal, Extended or either | 3GPP TS 38.211, sec 4.2 |
| subcarrierSpacing-DL | 15, 30, 60, 120, 240 kHz; can be  channel-specific. | 3GPP TS 38.211, sec 4.2 |
| supportedBandwidth-DL | 5, 10, 15, ... MHz | 3GPP TS 38.104, sec 5.3 |
| pdsch-MappingType | A, B or both | 3GPP TS 38.211, sec 7.4.1.1.2 |
| pdsch-AllocationType | 0, 1 or both | 3GPP TS 38.214, sec 5.1.2.2 |
| pdsch-VRB-ToPRBMapping | interleaved, non-interleaved or both | 3GPP TS 38.211, sec 7.3.1.6 |
| pdsch-DMRS-ConfigTypes | 1, 2 or both | 3GPP TS 38.211, sec 7.4.1.1.2 |
| pdsch-DMRS-AdditionalPos | pos0-pos3 | 3GPP TS 38.211, sec 6.4.1.1.3 |
| pdsch-DMRS-MaxLength | 1 or 2 | 3GPP TS 38.211, sec 7.4.1.1.2 |
| pdsch-CBG | Supported with TB CRC caching in AAL-LPU, Supported with TB CRC reporting to the AAL Application, or Not supported | 3GPP TS 38.212, sec 5.4.2.1,  7.3.1.2.2 |
| maxModulationOrderDL | QPSK, 16-QAM, etc. | 3GPP TS 38.214, sec 5.14.3 |
| pdsch-PTRS | Supported or not | 3GPP TS 38.211, sec 7.4.1.2 |
| maxCORESETsPerSlot | Maximum number of CORESETs per slot | Outside the scope of 3GPP |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| cce-MappingType | Interleaved or not | 3GPP TS 38.211, sec 7.3.2.2 |
| precoderGranularityCORESET | Wideband (all contiguous RBs) or same as REG bundle | 3GPP TS 38.211, sec 7.3.2.2 |
| coreset-OutsideFirst3OfdmSymbols | Supported or not | 3GPP TS 38.213, sec 13 |
| pdcch-PrecoderSupport | Short Cyclic Delay Diversity, Precoder Cycling, None, etc. | Outside the scope of 3GPP |
| ssb-RateMatch | Rate Match around SSB: supported or not |  |
| csi-RS-RM | Rate Match around CSI-RS: Supported or not |  |
| rm-PatternTypeAndMethod | Rate Match around PrbSymbPattern: Bitmp, Coreset, Either or Neither |  |
| pdcch-RateMatch | Rate Match around PDCCH: Supported or not |  |
| lte-CRS-RM-Method | Rate Match around LTE CRS: Supported by static configuration, by explicit slot indication, not supported |  |
| maxNumCarriersBW-LayersProduct DL | Maximum bandwidth\*layers product support for forming joint precoders across bandwidth, and across baseband antenna ports. Includes the option of "no support" | Outside the scope of 3GPP |
| spatialMUX-PerDL- ChannelType-DL | Ability to spatially multiplex same or different channel types (PDSCH, PDCCH, etc.). Includes the option of "no support" | Outside the scope of 3GPP |
| maxNum-MU-MIMO- LayersPer-DL-ChannelType | The maximum number of layers that can be multiplexed (can be channel specific). | Outside the scope of 3GPP |
| maxNumber-MIMO-Layers-PDSCH | The maximum number of layers that can be allocated to a UE | 3GPP TS 38.211, sec 7.3.1.3 |
| precodingWeightsType | Support for using precoding weights supplied by the AAL Application, or computed in AAL-LPU [11], or semistatic look tables, or any combination. | Outside the scope of 3GPP |
| bch-PayloadFlag | Full payload (32 bits) or portion of payload originating form higher- layers (24 bits), or either | 3GPP TS 38.212, sec 7.1.1 |
| ... | ... | ... |

</div>

1

* 1. Aali-mgmtm
  2. empty

### 6.2.2b Summary of Configuration

1. A carrier to which the AAL\_DOWNLINK\_High-PHY channel models apply shall be configurable by the application.
2. Table 6.2.2b-1 lists a subset of the carrier configurations pertinent to AAL\_DOWNLINK\_High-PHY.
3. NOTE: Additional configuration parameters are possible for the AALI implementation.

##### Table 6.2.2b-1: Sample Carrier Configurations pertinent to AAL\_DOWNLINK\_High-PHY

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Configuration** | **Short summary** | **3GPP Spec Reference** |
| dl-Bandwidth | Carrier bandwidth, for the DL transmission | 3GPP TS 38.104, sec 5.2, 5.3  3GPP TS 38.211, sec 4.4.4.2 |
| dl-Frequency | Carrier reference frequency (e.g. Point A, or RF reference frequency), for the DL transmisison | 3GPP TS 38.104, sec 5.2, 5.3  3GPP TS 38.211, sec 4.4.4.2 |
| dl-GridSize | numerology *u*, for DL transmission; can correspond to 15, 30, 60, 120,  240 kHz. | 3GPP TS 38.211, sec 4.2 |
| dl-CarrierOffset | Offset to carrier or k?, per  0  numerology *u* | 3GPP TS 38.331, sec 6.3.2  3GPP TS 38.211, sec 5.3.1 |
| num-TX-Ant | Number of baseband antenna ports for DL transmission | Outside the scope of 3GPP |
| prb-SymbRM-Patterns | Semistatic configuration of bitmap- based set of RBs and symbols, to reference for PDSDCH rate match purposes | 3GPP TS 38.214, sec 5.1.4.1  3GPP TS 38.331, sec 6.3.2 |
| coreset-RM-Patterns | Semistatic CORESET-based set of RBs and symbols, to reference for PDSDCH rate match purposes | 3GPP TS 38.214, sec 5.1.4.1  3GPP TS 38.331, sec 6.3.2 |
| lte-CRS-RM-Patterns | Semistatic LTE CRS patterns, to reference for PDSDCH rate match purposes | 3GPP TS 38.214, sec 5.1.4.1  3GPP TS 38.331, sec 6.3.2 |
| beamformingTable | Semistatic configuration of beamforming vectors for DL transmission | Largely outside the scope of 3GPP.  In some implementations, the beamforming vectors might be related to CSI-RS ports. |
| precodingTable | Semistatic configuration of precoding matrics for DL transmission | Largely outside the scope of 3GPP.  In some implementations semistatic precoding matrices might be related to PMI reports in 3GPP TS 38.214, sec 5.2.2.2 |
| [Semistatic configuration of DL Channel parameters.] | Alternative semistatic provisioning of some semistatic DL Channel parameters; See the respective Power Offset parameters in the tables in the quoted reference sections for e.g.: | c.f Table 6.2.6.2-3 |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
|  | **SSB**: Ncell, Lmax, offsetToPointA, u,  ID  u0, kSSB, Case, SSB candidates, SSB period, Power offset, beams  - can be for multiple SSB  configurations. |  |
| [Power offset configurations] | Alternative semistatic configuration pertaining to semistatic power offset parameters for DL Channel models. See the respective Power offset parameters in the reference sections. | c.f Sections 6.2.3, 6.2.4, 6.2.5 and 6.2.6 |
| [U-plane configuration] | Semistatic configuration for correct routing of OFH packets towards the O-RU. The parameters include, but not limited to:   * Processing Elements * Configured low-level-tx-end points * Transmit carriers | Sec D.3.8 of ORAN-WG4-MP.0.v007.01 |

</div>

1

1. NOTE 1: Additional configuration parameters may be added in future releases to support additional features beyond
2. basic 3GPP Rel-15.
3. NOTE 2: The summary description of configuration parameters outside the scope of 3GPP is not meant to restrict
4. the mechanism or data type for such configuration.

### 6.2.3 PDSCH Channel Model

1. Per section 5.1.3.2.7 of the O-RAN AAL GAnP document [7] for the PDSCH High PHY Profile, the PDSCH Channel
2. model of the AAL\_DOWNLINK\_High-PHY Profile supports acceleration of PDSCH Data, DM-RS and PT-RS
3. functionalities.
4. The set of accelerated functions associated with the processing of PDSCH TB(s) is as follows:
5. ? TB CRC attachment
6. ? CB segmentation and CRC attachment
7. ? LDPC encoding
8. ? Rate matching
9. ? CB concatenation
10. ? Scrambling
11. ? Modulation
12. ? Layer mapping
13. ? Precoding 1
    1. Configurable functional block, depends on implementation and/or system configuration
14. ? RE mapping
15. ? Power Offset
16. ? IQ compression[1] 4
17. The set of accelerated functions associated with the processing of PDSCH DM-RS is as follows:
18. ? PDSCH DM-RS sequence generation
19. ? Modulation
20. ? Precoding[1]
21. ? RE mapping
22. ? Power Offset
23. ? IQ compression[1] 12
24. The set of accelerated functions associated with the processing of PDSCH PT-RS is as follows:
25. ? Sequence Generation
26. ? Layer Mapping
27. ? Modulation
28. ? Precoding[1]
29. ? RE Mapping
30. ? Power Offset
31. ? IQ compression[1] 21

#### 6.2.3.1 PDSCH input for AAL\_DOWNLINK\_High-PHY Profile

1. The AAL\_DOWNLINK\_High-PHY profile shall signal PDSCH allocation(s) per slot. The input consists of the TB(s),
2. and the associated parameters for the PDSCH allocation.

#### 6.2.3.2 PDSCH Parameters

1. The following parameters are required to be supported by the AALI implementation when offloading operations. The
2. AAL Application shall supply all relevant parameters; for ease of reading, the parameters are organized per signal type:
3. Data, DM-RS, PT-RS.
4. PDSCH Data Parameters

##### Table 6.2.3.2-1: PDSCH Data Parameters

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **AAL-LPU parameters** | **Short summary** | **3GPP Spec Reference** |
| MAC PDU for TB(s) | | |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| nrOfCodewords | number of codewords in the PDSCH transmission (CW index q  = 0,1)  In case of single-codeword transmission, q = 0. | 3GPP TS 38.214, sec 5.1.3.2 (max #CW)  3GPP TS 38.211, sec 7.3.1.1 (q index) |
| mac-PDU[q] | Initial transmission/non-CBG- based Re-tx: full TB to transmit CBG-based Re-tx: CBs to re- transmit | 3GPP TS 38.214, sec 5.1.3.2 (non-CBG  ReTx/initial Tx)  3GPP TS 38.214, sec 5.1.7 (CBG-based  Tx) |
| tb-Size[q] | Transport block size. Computed at L2. | 3GPP TS 38.214, sec 5.1.3.2 |
| TB CRC | | |
| dl-TB-CRC-CW[q] | Compute CRC once, reuse in case of re-transmission (CBG case: must be appended if last CB is retransmitted).  NOTE: support for CRC caching is up to implementation and may be subject to capabilities. | 3GPP TS 38.212, sec 7.2.1 |
| CB Segmentation + CRC | | |
| isLastCB-Present [q] | In case of CBG-based Re-tx, and last CBG is re-tx (CBGTI in 38.212), TB CRC is appended to the last CRC in the MAC Payload. Separate per CW  CB CRC is computed in L1 accelerator from MAC PDU (no special controls needed for initial tx; see CB Concatenation section for handling options in case of CBG Re-tx)  NOTE: Cached CRC provisioning is up to implementation and may be subject to capabilities. | 3GPP TS 38.214, sec 5.1.3.2  3GPP TS 38.212, sec 7.3.1.2.2 |
| LDPC Encoding | | |
| rv-Index[q] | redundancy version, per CW. Determines starting position k\_0 in the circular buffer. In DCI, or from aggregation, or from first TB. | 3GPP TS 38.212, Table 5.4.2.1-2,  3GPP TS 38.214, Table 5.1.2.1-2 |
| targetCodeRate[q] or (mcs-Table and mcs-Index[q]). | targetCodeRate[q]: target code rate (per CW)  Explicit, for initial transmission. Implicit from tb-Size and allocation, for retransmissions.  mcs-Table and mcs-Index[q]: target code rate can be extracted | 3GPP TS 38.212, sec 5.4.2.1  3GPP TS 38.214, sec 5.1.3.1 |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
|  | from the index (first transmission), or as above for retransmissions. |  |
| newData[q] | Signals whether there is a new transmission, or a retransmission (per CW) | 3GPP TS 38.212, sec 7.3.1.2.1/2 |
| ldpc-Baseraph[q] | LDPC base graph to use (can be explicit, or derived from TB size and initial target rate) (per CW) | 3GPP TS 38.212, sec 7.2.2 |
| tb-SizeLBRM-Bytes or nCB | tbSizeLBRM-Bytes: Reference TBS for allocations subject to rateMatching = limitedBufferRM; impacts circular buffer length  nCB = circular buffer length, after account for any FBRM/LBRM considerations. | 3GPP TS 38.212, sec 5.4.2.1, 7.2.5 |
| Rate Matching references (determining unavailable REs) | | |
| ssb-PDUs-For RM | Set of SSBs, where PDSCH mapping is not possible. | 3GPP TS 38.214, sec 5.1.4 |
| prbSymRM-Patterns | Bitmap-based set of RBs and symbols not available for allocation | 3GPP TS 38.214, sec 5.1.4.1  3GPP TS 38.331, sec 6.3.2 |
| coreset-RM-Patterns | CORESET-based set of RBs and symbols not available for allocation | 3GPP TS 38.214, sec 5.1.4.1  3GPP TS 38.331, sec 6.3.2 |
| dci-Index | Index of a granting DCI; Rate Matching applies around the PDCCH grant index by this number, for the allocation (+ special consideration for AL16 candidates).  See the 'same-index CCE Candidate' currently part of PDCCH Profile. Alternatively, that field can be signaled as a part of the PDSCH Profile, as it is applicable to PDSCH Rate Matching. | 3GPP TS 38.214, sec 5.1.4.1 |
| lte-CRS-RM-Patterns | LTE-CRS REs not available for allocation (+MBSFN awareness, for LTE-CRS RE mapping to symbols)  NOTE: In 3GPP, this is an RRC parameter | 3GPP TS 38.214, sec 5.1.4.2  3GPP TS 38.331, sec 6.3.2 |
| csi-RS-For-RM | CSI-RS REs not available for allocation | 3GPP TS 38.214, sec 5.1.4.2  3GPP TS 38.331, sec 6.3.2 |
| CB Concatenation | | |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| isLastCB-Present [q] | | CBG-based Re-tx: presence of last CB requires TB CRC to be re- appended. | 3GPP TS 38.214, sec 5.1.3.2  3GPP TS 38.212, sec 7.3.1.2.2 |
| *see section on MAC PDU for TB(s)* | | CB concatenation is handled in L2, in case of CBG-retx. CB CRC attachment in L1 Accelerator.  Alternatively, CB concatenation can be handled exclusively in L1 accelerator, based on CBGTI signaling from L2 | see section on MAC PDU for TB(s) |
| Scrambling | | | |
| nID-PDSCH or cInit [q] | | nID-PDSCH: data scrambling identity (PCI by default)  cInit[q]: scrambling initialization for codeword q. | 3GPP TS 38.211, sec 7.3.1.1  3GPP TS 38.300, sec 3.1 |
| rnti | | RNTI associated with the PDSCH transmission | 3GPP TS 38.211, sec 7.3.1.1 |
| Modulation | | | |
| qam-ModOrder[q] or (mcs-Table and mcsIndex[q]). | | qam-ModOrder[q]: Signaled via MCS in DCI; also impacts bit interleaving  mcs-Table and mcs-Index[q]: modulation can be extracted from the MCS table and index. | 3GPP TS 38.214, sec 5.1.3.1  3GPP TS 38.212, sec 5.4.2.2 |
| Layer Mapping | | | |
| nrOfLayers | | total number of layers (when > 4, assignment to codewords described in 38.211. | 3GPP TS 38.211, sec 7.3.1.3  3GPP TS 38.214, sec 5.1 |
| Precoding | | | |
| *See section 6.2.7* | | Conceptually similar to FH signaling when precoding for Cat-  B. 3GPP leaves DL precoding to implementation.  Per layer (which also implies per CW) |  |
| RE Mapping | | | |
| Frequency Domain | bwp-Start | Start, w.r.t. CRB, of bandwidth part: VRBs indexing is relative to the Bandwidth part for the PDSCH allocation | 3GPP TS 38.211, sec 7.3.1.6 |
| bwp-Size | Size of bandwidth part: VRBs indexing is relative to the Bandwidth part for the PDSCH allocation | 3GGP TS 38.211, sec 7.3.1.6 |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
|  | subcarrierSpacing | subcarrier spacing impacts waveform generation, including centering | 3GPP TS 38.211, sec 4.2, 5.3.1 |
| numDMRS-CDM-  GrpsNoData | No PDSCH mapping on DMRS CDM groups marked as having no data. | 3GPP TS 38.214, sec 5.1.3.2  3GPP TS 38.212, sec 7.3.1.2.2  3GPP TS 38.214, Table 4.1-1 |
| resourceAlloc | Mapping to VRBs: bitmap-based (type 0) or offset & length (type 1) | 3GPP TS 38.214, sec 5.1.2.2 |
| rb-Bitmap | type 0: allocation is based on this bitmap. In 3GPP, it is signaled at RB group resolution | 3GPP TS 38.214, sec 5.1.2.2.1  3GPP TS 38.212, sec 7.3.1.2.2 |
| rb-Start | type 1: start of allocation derived from DCI RIV | 3GPP TS 38.214, sec 5.1.2.2.2  3GPP TS 38.212, sec 7.3.1.2.2 |
| rb-Size | type1: number of contiguously allocated VRBs derived from DCI RIV | 3GPP TS 38.214, sec 5.1.2.2.2  3GPP TS 38.212, sec 7.3.1.2.2 |
| vrb-ToPRB-Mapping | virtual resource blocks are mapped to physical resource blocks: interleaved or non-interleaved | 3GPP TS 38.211, sec 7.3.1.6  3GPP TS 38.212, sec 7.3.1.2.1/2 |
| coreset-Type | RB bundling for VRB mapping depends on CORESET and DCI Type (BWP is assumed consistent with CORESET Type): "DCI 1\_0 with SI-RNTI-based CRC in Type0-PDCCH CSS in CORESET0", or otherwise. | 3GPP TS 38.211, sec 7.3.1.6 |
| Time Domain | startSymbolIndex | Start symbol index, for the allocation | 3GPP TS 38.214, Table 5.1.2.1-1 |
| nrOfSymbols | Number of symbols, for the allocation | 3GPP TS 38.214, Table 5.1.2.1-1 |
| cyclicPrefix | Cyclic prefix type. Impacts time- domain allocation, including waveform generation.  NOTE: Applies only to u=2. | 3GPP TS 38.211, sec 4.2, 5.3.1  3GPP TS 38.214, Table 5.1.2.1-1 |
| Rate Matching | *see the rate matching section* | Rate Matching determines which (RE x Symbol) resources are / are not available for RE mapping. | 3GPP TS 38.214, sec 5.1.4 |
| Power Offset | | | |
|  | <acceleration based on hard-coded values> | Derived based on table 3GPP TS  38.214 table 4.1-1, DMRS Config Type and number of DMRS CDM groups without data | 3GPP TS 38.214, sec 4.1, Table 4.1-1 |

</div>

1

* 1. PDSCH DM-RS Parameters

##### Table 6.2.3.2-2: PDSCH DM-RS Parameters

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **AAL-LPU parameters** | | **Short summary** | **3GPP Spec Reference** |
| Sequence Generation | | | |
| pdsch-DMRS-ScramblingId or cInitFirstSymbol | | N\_{ID}: scrambling identifier for n\_{SCID}  c\_{init}[l]: scrambling initialization for DMRS symb l. | 3GPP TS 38.211, sec 7.4.1.1.1 |
| n-SCID | | sequence index (from DCI; defaults to 0) | 3GPP TS 38.211, sec 7.4.1.1.1 |
| Modulation | | | |
| <acceleration based on hard-coded values> | | PDSCH DM-RS uses QPSK  modulation | 3GPP TS 38.211, sec 7.4.1.1.1 |
| Precoding | | | |
| [see PDSCH data precoding] | | DMRS follows PDSCH-data precoding |  |
| RE Mapping | | | |
| Frequency Domain | bwp-Start | see PDSCH data table | 3GPP TS 38.211, section 7.3.1.6 |
| bwp-Size | see PDSCH data table | 3GGP TS 38.211, section 7.3.1.6 |
| subcarrierSpacing | see PDSCH data table | 3GPP TS 38.211, sec 4.2, 5.3.1 |
| resourceAlloc | see PDSCH data table | 3GPP TS 38.214, sec 5.1.2.2 |
| rb-Bitmap | see PDSCH data tab;e | 3GPP TS 38.214, sec 5.1.2.2.1  3GPP TS 38.212, sec 7.3.1.2.2 |
| rb-Start | see PDSCH data table | 3GPP TS 38.214, sec 5.1.2.2.2  3GPP TS 38.212, sec 7.3.1.2.2 |
| rb-Size | see PDSCH data table | 3GPP TS 38.214, sec 5.1.2.2.2  3GPP TS 38.212, sec 7.3.1.2.2 |
| vrb-to-PRB-Mapping | see PDSCH data table | 3GPP TS 38.211, sec 7.3.1.6  3GPP TS 38.212, sec 7.3.1.2.1/2 |
| refPoint | NOTE:  Reference point for RE mapping depends on CORESET Type and target for grant:   * subcarrier 0 of lowest RB of CORSET0, or * subcarrier 0 of CRB0 | 3GPP TS 38.211, sec 7.4.1.1.2 |
| dmrs-Ports | Bitmap of DMRS ports, for each layer. OC weights applied to DM-RS REs are  based on DM-RS CDM group | 3GPP TS 38.211, sec 7.4.1.1.2 |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
|  |  | and identifier for each DM-RS port. |  |
| dmrs-ConfigType | DMRS configuration type controls port to CDM group correspondence and frequency density (type 1: 8 ports, type  2:12 ports) | 3GPP TS 38.211, sec 7.4.1.1.2 |
| Time Domain | dl-DMRS-SymbPos | location of DMRS in slot sufficiently captures the impact of upper layer parameters, e.g., mapping type, additional pos | 3GPP TS 38.211, sec  7.4.1.1.2 and Tables 7.4.1.1.2-3 and  7.4.1.1.2-4 |
| dmrs-Ports | Bitmap of DMRS ports, for each layer. OC weights applied to DM-RS REs are based on DM-RS CDM group and identifier for each DM-RS port. | 3GPP TS 38.211, sec 7.4.1.1.2 |
| cyclicPrefix | see PDSCH data table | 3GPP TS 38.211, sec 4.2, 5.3.1  3GPP TS 38.214, Table 5.1.2.1-1 |
| Power Offset | | | |
| powerControOffset-SS | | power offset with respect to SSS | 3GPP TS 38.214, sec 5.2.2.3.1  3GPP TS 38.214, sec 4.1  3GPP TS 38.213, sec 4.1 |

</div>

1

1. PDSCH PT-RS Parameters

##### Table 6.2.3.2-2: PDSCH PR-RS Parameters

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **AAL-LPU parameters** | **Short summary** | **3GPP Spec Reference** |
| Sequence Generation | | |
| ptrs-PortIndex | DMRS port associated with the PT-RS port according to clause  5.1.6.3 in [6, TS 38.214]. | 3GPP TS 38.211, sec 7.4.1.2.1 |
| Layer Mapping | | |
| ptrs-PortIndex | DMRS port associated with the PT-RS port according to clause  5.1.6.3 in [6, TS 38.214]. | 3GPP TS 38.211, sec 7.4.1.2.2  3GPP TS 38.214, sec 5.1.6.3 |
| Modulation | | |
| <acceleration based on hard- coded values> | PDSCH PTRS uses QPSK  modulation, like PDSCH DMRS | 3GPP TS 38.211, sec 7.4.1.1.1 |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| Precoding | | | |
| <same as the associated dmrs  Port(s)> | |  |  |
| RE Mapping | | | |
| Frequency Domain | bwp-Start | see PDSCH data table | 3GPP TS 38.211, section 7.3.1.6 |
| bwp-Size | see PDSCH data table | 3GGP TS 38.211, section 7.3.1.6 |
| subcarrierSpacing | see PDSCH data table | 3GPP TS 38.211, sec 4.2, 5.3.1 |
| ptrs-FreqDensity | frequency density (includes  the case where there is no PT-RS) | 3GPP TS 38.214, sec 5.1.6.3, Table 5.1.6.3-2 |
| ptrs-RE-Offset | re offset (can depend on  DMRS association and RRC signaling of resourceElementOffset) | 3GPP TS 38.211, sec 7.4.1.2.2 , table 7.4.1.2.2-1  3GPP TS 38.331, sec 6.3.1 |
| rnti | RNTI associated with the  PDSCH transmission | 3GPP TS 38.211, sec 7.4.1.2.2 |
| Time Domain | ptrs-TimeDensity | time density (includes the case where there is no PT- RS) | 3GPP TS 38.214, sec 5.1.6.3Table 5.1.6.3-1 |
| dl-DMRS-SymbPos | see PDSCH DMRS table  symbols used for DMRS (PT-RS skips over these) | 3GPP TS 38.211, sec  7.4.1.1.2 and Tables 7.4.1.1.2-3 and 7.4.1.1.2-4 |
| cyclicPrefix | see PDSCH data table | 3GPP TS 38.211, sec 4.2, 5.3.1  3GPP TS 38.214, Table 5.1.2.1-1 |
| Power Offset | | | |
| n-EPRE-RatioOf-PDSCH-To-  PTRS | | Derived based on table  3GPP TS 38.214 table 4.1-2,  epre-Ratio and number of associated DMRS ports | 3GPP TS 38.214, sec 4.1, Table 4.1-2 |

</div>

1

### 6.2.4 PDCCH Channel Model

1. Per section 5.1.3.2.7 of the O-RAN AAL GAnP document [7] for the PDCCH High-PHY Profile, the PDCCH Channel
2. model of the AAL\_DOWNLINK\_High-PHY Profile supports acceleration of PDCCH Data and DM-RS functionality.
3. The set of accelerated functions associated with the processing of PDCCH DCIs is as follows:
4. ? CRC attachment
5. ? Polar encoding
6. ? Rate matching
7. ? Scrambling
8. ? Modulation (QPSK)
9. ? Precoding[1]
10. ? RE mapping
11. ? IQ compression[1]
12. ? Power Offset 4
13. The set of accelerated functions associated with the processing of PDCCH DM-RS is as follows:
14. ? Sequence generation
15. ? Modulation
16. ? Precoding[1]
17. ? RE mapping
18. ? IQ compression[1] 11

#### 6.2.4.1 PDCCH input for AAL\_DOWNLINK\_High-PHY Profile

1. The AAL\_DOWNLINK\_High-PHY profile shall signal PDCCH CORESET allocation(s) per slot. The input data
2. consists of the DCI payloads and the associated parameters for the PDCCH CORESET and DCI mapping.

#### 6.2.4.2 PDCCH Parameters

1. The following parameters are required to be supported by the AALI implementation when offloading operations. The
2. AAL Application shall supply all relevant parameters; for ease of reading, the parameters are organized per signal type:
3. Data, DM-RS.
4. PDCCH Data Parameters

##### Table 6.2.4.2-1: PDCCH Data Parameters

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **AAL-LPU parameters** | | **Summary** | **3GPP Spec Reference** |
| MAC PDU(s) - DCI payloads | | | |
| num-DCI | | number of DCIs in the CORESET | 3GPP TS 38.213, section 10.1 |
| per- DCI | payload | DCI payload generated by L2 | 3GPP TS 38.212, sec 7.3, 7.3.1 |
| payload-Size | Transport block size. Computed at L2. | 3GPP TS 38.212, sec 7.3, 7.3.1 |
| PDU CRC | | | |
| per-DCI | n-RNTI-PDCCH-Data | CRC computation detailed in 38.212 # payload size A from MAC  # parity size L hardcoded to 24 bits # generator polynomial hard-coded to g\_{CRC24C}(D)  # CRC scrambled with RNTI | 3GPP TS 38.212, sec 7.3.2 |
| Polar Encoding | | | |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| aggregationLevel | | Encoding detailed in 38.212:  # input sequence (payload with CRC) has K=A + 24 bits  # n\_{max} is hardcoded to 9 # I\_{IL} is hardcoded to 1  # n\_{PC} is hardcoded to 0  # n\_{PC}^{wm} is hardcoded to 0  =========  N: encoded bit length is a direct function of K (A+24) and E (#no- DMRS PDCCH symbols based on *AL* \* 2) and a set of hardcoded parameters.  Interleaving: function of I\_IL (hardcoded for PDCCH) and a set of additional hardcoded table and parameters, operates on the payload  Encoding: function of n\_{PC} (hardcoded for PDCCH), n\_{PC}^{wm} (hardcoded for PDCCH), + additional spec hard- coded tables and parameters, operates on the interleaved payload | 3GPP TS 38.212, sec 7.3.3 |
| Rate Matching | | | |
| aggregationLevel | | Rate matching detailed in 38.212 # out size E = 2\*#non-DMRS REs (function of Aggregation Level)  # rate match algorithm uses this E, the size of the original sequence + CRC (K), n\_{PC} (hardcoded to 0) and n\_{BIL} (hardcoded to 0) to operate on the polar-coded payload | 3GPP TS 38.214, sec 7.3.4 |
| Scrambling | | | |
| per-DCI | n-ID-PDCCH-Data or cInit | n\_{ID}: data scrambling identity (PCI by default, can be UE-specific)  c\_{init}: scrambling initialization | 3GPP TS 38.211, sec 7.3.2.3 |
| n-RNTI-PDCCH-Data | RNTI-based scrambling associated with the DCI transmission (0 for CSS) | 3GPP TS 38.211, sec 7.3.2.3 |
| Modulation | | | |
| <acceleration based on hard- coded values> | | PDCCH uses QPSK modulation | 3GPP TS 38.211, sec 7.3.2.4  3GPP TS 38.211, sec 5.1.3 |
| Precoding | | | |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| per-DCI | *See section 6.2.7* | Conceptually similar to FH signaling when precoding for Cat-B. 3GPP leaves DL precoding to implementation. |  |
| RE Mapping | | | |
| Frequency Domain | coreset-BWP-Start | Start, w.r.t. CRB, of bandwidth part: RBs indexing for the frequency domain allocation is relative to the Bandwidth part for the PDCCH allocation | 3GPP TS 38.211, sec 7.3.2.2  3GPP TS 38.331, sec 6.3.2 |
| coreset-BWP-Size | Size of bandwidth part: RBs indexing for the frequency domain allocation is relative to the Bandwidth part for the PDCCH allocation | 3GGP TS 38.211, section 7.3.1.6 |
| subcarrierSpacing | subcarrier spacing impacts waveform generation, including centering | 3GPP TS 38.211, sec 4.2, 5.3.1 |
| regBundleSize | Number of REGs in an REG Bundle | 3GPP TS 38.211, sec 7.3.2.2  3GPP TS 38.331, sec 6.3.2 |
| interleaverSize | Interleaver size | 3GPP TS 38.214, sec 5.1.2.2.2  3GPP TS 38.212, sec 7.3.1.2.2 |
| cce-REG- MappingType | Mapping of Control Channel Elements (CCE) to Resource Element Groups (REG) | 3GPP TS 38.211, sec 7.3.2.2  3GPP TS 38.211, sec 7.4.1.3.2  3GPP TS 38.331, sec 6.3.2 |
| freqDomainResource | Bitmap signaling the frequency domain resources for the CORESET. Each bit corresponds a group of 6 RBs, with grouping starting from the first RB group in the BWP. Validity and bit mapping per the RRC parameter frequencyDomainResources in 38.331  This parameter applies to both regular CORESETs, as well as CORESET0. For the interpretation regarding CORESET0, see section 13 of 38.213. | 3GPP TS 38.211, sec. 7.3.2.2  3GPP TS 38.331, sec 6.3.2  3GPP TS 38.213, sec 13 |
| shiftIndex | offset used in the computation of the interleaver function for CCE-to- REG mapping | 3GPP TS 38.211, sec 7.3.2.2 |
| precoderGranularity | Precoder granularity in frequency domain (for data, this is strictly not needed, as it will be accounted for in the precoding) | 3GPP TS 38.211, sec 7.3.2.2  3GPP TS 38.211, sec 7.4.1.3.2 |
| FD  per DCI | cce-Index | cce Index for sending the DCI | 3GPP TS 38.213, sec 10.1 |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
|  | collocated-AL16- Candidate | indicates presence of an AL-16 candidate existing at the same CCE Index, for PDSCH rate matching purposes  NOTE: This information is relevant to PDSCH rate matching, and could be signaled in PDSCH for rate matching purposes, instead. See the Rate Matching section of the PDSCH Profile | 3GPP TS 38.214, sec 5.1.4.1 |
| aggregationLevel | aggregation level for the DCI | 3GPP TS 38.211, sec 7.3.2.1  3GPP TS 38.213, sec 10.1 |
| Time Domain | startSymboIndex | Start symbol index, for the allocation | 3GPP TS 38.211, sec. 7.3.2.2 |
| durationSymbols | Number of symbols, for the allocation | 3GPP TS 38.211, sec. 7.3.2.2 |
| cyclicPrefix | Cyclic prefix type. Impacts time- domain allocation, including waveform generation | 3GPP TS 38.211, sec 4.2, 5.3.1  3GPP TS 38.214, Table 5.1.2.1-1 |
| Power Offset | | | |
| [Power offset w.r.t. SSS] can be hardcoded, for MVP. | | see PDCCH DMRS table. Can be set to the same value. | 3GPP TS 38.214, sec 5.2.2.3.1  3GPP TS 38.214, sec 4.1  3GPP TS 38.213, sec 4.1 |

</div>

1

1. PDCCH DM-RS Parameters

##### Table 6.2.4.2-2: PDCCH DM-RS Parameters

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **AAL-LPU parameters** | | **Summary** | **3GPP Spec Reference** |
|  | | | |
| per DCI | n-ID-PDCCH-  Data or cInit | N\_{ID}: scrambling identifier  c\_{init}: scrambling initialization for DMRS. | 3GPP TS 38.211, sec 7.4.1.3.1 |
| Modulation | | | |
| <acceleration based on hard- coded values> | | PDCCH DM-RS uses QPSK  modulation | 3GPP TS 38.211, sec 7.4.1.3.1 |
| Precoding | | | |
| per DCI | [see PDCCH data precoding] | DMRS follows PDCCH-data precoding |  |
| RE Mapping | | | |
| Frequency Domain | coreset-BWP- Start | see PDCCH data table | 3GPP TS 38.211, section 7.3.2.2 |
| coreset-BWP- Size | see PDCCH data table | 3GGP TS 38.211, section 7.3.2.2 |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
|  | subcarrierSpacin g | see PDCCH data table | 3GPP TS 38.211, sec 4.2, 5.3.1 |
| coreset-Type | reference point for RE mapping physical resources of DMRS depends on CORESET type (#0 or not) | 3GPP TS 38.211, sec 7.4.1.3.2 |
| precoderGranula rity | Precoder granularity in frequency domain (impacts whether DMRS should be generated for all RBs or only allocated RBs) | 3GPP TS 38.211, sec 7.3.2.2  3GPP TS 38.211, sec 7.4.1.3.2 |
| Freq Domain per DCI | cce-Index | see PDCCH data table | 3GPP TS 38.213, sec 10.1 |
| aggregationLeve l | see PDCCH data table | 3GPP TS 38.211, sec 7.3.2.1  3GPP TS 38.213, sec 10.1 |
| Time Domain | startSymbolInde x | see PDCCH data table | 3GPP TS 38.211, sec. 7.3.2.2 |
| durationSymbols | see PDCCH data table | 3GPP TS 38.211, sec. 7.3.2.2 |
| cyclicPrefix | see PDCCH data table | 3GPP TS 38.211, sec 4.2, 5.3.1  3GPP TS 38.214, Table 5.1.2.1-1 |
| Power Offset | | | |
| powerControlOffsetSS | | power offset with respect to SSS | 3GPP TS 38.214, sec 5.2.2.3.1  3GPP TS 38.214, sec 4.1  3GPP TS 38.213, sec 4.1 |

</div>

1

### 6.2.5 CSI-RS Channel Model

1. Per section 5.1.3.2.7 of the O-RAN AAL GAnP document [7] for the CSI-RS High PHY Profile, the CSI-RS Channel
2. model of the AAL\_DOWNLINK\_High-PHY Profile supports acceleration of CSI-RS functionality.
3. The set of accelerated functions associated with the processing of CSI-RS is as follows:
4. ? CSI-RS sequence generation
5. ? Modulation
6. ? Precoding[1]
7. ? RE mapping
8. ? IQ compression[1]
9. ? Power Offset 12

#### 6.2.5.1 CSI-RS input for AAL\_DOWNLINK\_High-PHY Profile

1. The AAL\_DOWNLINK\_High-PHY profile shall signal CSI-RS Resource(s) per slot. The input consists of the CSI-RS
2. resource parameters.
3. CSI-RS Parameters
4. The following parameters are required to be supported by the AALI implementation when offloading operations. The
5. AAL Application shall supply all relevant parameters.

#### 6.2.5.2 CSI-RS Parameters

##### Table 6.2.5.2: CSI-RS Parameters

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **AAL-LPU Parameters** | | **Summary** | **3GPP Spec Reference** |
| Sequence Generation | | | |
| scrambId or cInitFirstSymbol | | n\_{ID}: scrambling id  c\_{init}[l]: scrambling initialization for symb [l] | 3GPP TS 38.211, sec 7.4.1.5.2 |
| Modulation | | | |
| <acceleration based on hard-coded values> | | CSI-RS uses QPSK modulation | 3GPP TS 38.211, sec 7.4.1.5.2 |
| Precoding | | | |
| *See section 6.2.7* | | Conceptually similar to FH signaling when precoding for Cat-B. 3GPP leaves DL precoding to implementation. |  |
| RE Mapping | | | |
| Frequency Domain | subcarrierSpacing | subcarrier spacing impacts waveform generation, including centering | 3GPP TS 38.211, sec 4.2, 5.3.1 |
| startingRB | PRB where this CSI resource starts in relation to CRB#0 | 3GPP TS 38.331, sec 6.3.2 |
| nrOfRBs | Number of PRBs across which this CSI resource spans. | 3GPP TS 38.331, sec 6.3.2 |
| freqDomain | Bitmap defining the frequencyDomainAllocation, with interpretation subject to the Row selection for table 7.4.1.5.3-1 | 3GPP TS 38.331, sec 6.3.2  3GPP TS 38.211, sec 7.4.1.5.3 |
| row | row indicating the CSI-RS location in table 7.4.1.5.3-1. Can be used to derive;   * density ? (see also Frequency Density) * cdmType * ports * ar{k} in the (ar{k},   ar{l})-tuple | 3GPP TS 38.331, sec 6.3.2  3GPP TS 38.211, sec 7.4.1.5.3 |
|  | freqDensity | Indicates whether even or odd PRBs are occupied by CSI-RS. | 3GPP TS 38.331, sec 6.3.2  3GPP TS 38.211, sec 7.4.1.5.3 |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
|  |  | Applicable when density = dot5 (0.5) |  |
| Time Domain | row | row indicating the CSI-RS location in table 7.4.1.5.3-1. Can be used to derive;   * ar{l} in the (ar{k},   ar{l})-tuple | 3GPP TS 38.331, sec 6.3.2  3GPP TS 38.211, sec 7.4.1.5.3 |
| symbL0 | value of l\_0 for the interpretation of table 7.4.1.5.3-1. Signaled by RRC parameter firstOFDMSymbolInTimeDomain | 3GPP TS 38.331, sec 6.3.2  3GPP TS 38.211, sec 7.4.1.5.3 |
| symbL1 | value of l\_1 for the interpretation of table 7.4.1.5.3-1. Signaled by RRC parameter firstOFDMSymbolInTimeDomain2 | 3GPP TS 38.331, sec 6.3.2  3GPP TS 38.211, sec 7.4.1.5.3 |
| cyclicPrefix | Cyclic prefix type. Impacts time- domain allocation, including waveform generation | 3GPP TS 38.211, sec 4.2, 5.3.1  3GPP TS 38.214, Table 5.1.2.1-1 |
| Power Offset | | | |
| powerControlOffsetSS | | power offset with respect to SSS | 3GPP TS 38.214, sec 5.2.2.3.1 |

</div>

1

### 6.2.6 SSB Model

1. Per section 5.1.3.2.7 of the O-RAN AAL GAnP document [7] for the PBCH High-PHY Profile, the SSB Channel model
2. of the AAL\_DOWNLINK\_High-PHY Profile supports acceleration of PSS+SSS and PBCH Data and PBCH DM-RS
3. functionality.
4. The set of accelerated functions associated with the processing of PSS+SSS is as follows:
5. ? Sequence generation
6. ? Modulation
7. ? Precoding[1]
8. ? RE mapping
9. ? IQ compression[1]
10. ? Power Offset 13
11. The set of accelerated functions associated with the processing of PBCH Data is as follows:
12. ? PBCH payload generation
13. ? Scrambling
14. ? TB CRC attachment
15. ? Polar encoding
16. ? Rate matching
17. ? Data scrambling
18. ? Modulation (QPSK)
19. ? Precoding[1]
20. ? RE mapping
21. ? IQ compression[1] 6
22. The set of accelerated functions associated with the processing of PBCH DM-RS is as follows:
23. ? Sequence generation
24. ? Modulation
25. ? Precoding[1]
26. ? RE mapping
27. ? IQ compression[1]
28. ? Power Offset 14

#### 6.2.6.1 SSB input for AAL\_DOWNLINK\_High-PHY Profile

1. The AAL\_DOWNLINK\_High-PHY profile shall signal SSB allocation(s), per slot (up to two per slot and SSB
2. configuration, at the SSB slot numerology). The input consists of the PBCH payload and the associated SSB resource
3. allocation parameters.

#### 6.2.6.2 SSB Parameters

1. The following parameters are required to be supported by the AALI implementation when offloading operations. The
2. AAL Application shall supply all relevant parameters; for ease of reading, the parameters are organized per signal type:
3. PBCH Data, PBCH DM-RS, PSS&SSS.
4. PBCH Data Parameters

##### Table 6.2.6.2-1: PBCH Data Parameters

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **AAL-LPU Parameters** | **Summary** | **3GPP Spec Reference** |
| MAC PDU(s) | | |
| bch-Payload | PBCH payload (generated by L2, or in AAL-LPU) - may be the full payload (32 bits) or only the portion supplied from higher layers (24 bits). | 3GPP TS 38.212, sec 7.1, 7.1.1 |
| Payload Scrambling | | |
| physCellId or cInit | N\_{ID}^{cell}: Physical layer cell ID, as defined in as defined in 3GPP TS 38.211, section 7.4.2.1  c\_{init}: scrambling initialization | 3GPP TS 38.211, sec 7.4.1.4.1, 7.1.2 |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| l-Max | Maximum number of candidate SS/PBCH blocks in a half frame | 3GPP TS 38.211, sec 7.3.3.1, 7.1.2 |
| CRC | | |
| <acceleration based on hard-coded values> | CRC computation detailed in 38.212:  # (scrambled) payload size A from MAC: 24+8=32 bits (Rel- 15,16)  # parity size L hardcoded to 24 bits  # generator polynomial hard- coded to g\_{CRC24C}(D) | 3GPP TS 38.212, sec 7.1.3 |
| Polar Coding | | |
| <acceleration based on hard-coded values> | Encoding detailed in 38.212: # input sequence (scrambled  payload with CRC) has K = B = 32 + 24 = 56 bits (result of adding up two hardcoded numbers)  # n\_{max} is hardcoded to 9 # I\_{IL} is hardcoded to 1  # n\_{PC} is hardcoded to 0  # n\_{PC}^{wm} is hardcoded to 0  =========  N: encoded bit length is a direct function of K (56) and E (rate match output 864, spelled out in spec) and a set of hard-coded parameters = 512  Interleaving: function of I\_IL (hardcoded for PBCH) and a set of additional hardcoded table and parameters, operates on the payload  Encoding: function of n\_{PC} (hardcoded for PBCH), n\_{PC}^{wm} (hardcoded for PBCH), + additional spec hard- coded tables and parameters, operates on the interleaved payload | 3GPP TS 38.212, sec 7.1.4 |
| Rate Matching | | |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| <acceleration based on hard-coded values> | | Rate matching detailed in 38.212 # out size E = 864, explicit in the spec, but can be derived as (#non-DMRS REs \* 2)  # rate match algorithm uses this E, the size of the original sequence + CRC (K = 56), n\_{PC} (hardcoded to 0) and n\_{BIL} (hardcoded to 0) to operate on the polar-coded payload | 3GPP TS 38.212, sec 7.1.5 |
| Scrambling | | | |
| l-Max | | Maximum number of candidate SS/PBCH blocks in a half frame | 3GPP TS 38.211, sec 7.3.3.1 |
| ssb-BlockIndex | | candidate SS/PBCH block index | 3GPP TS 38.211, sec 7.3.3.1 |
| Modulation | | | |
| <acceleration based on hard-coded values> | | PBCH data uses QPSK modulation | 3GPP TS 38.211, sec 7.3.3.2  3GPP TS 38.211, sec 5.1.3 |
| Precoding | | | |
| *See section 6.2.7* | | Conceptually similar to FH signaling when precoding for Cat-B. 3GPP leaves DL precoding to implementation. |  |
| RE Mapping | | | |
| Frequency Domain | ssb-OffsetToPointA | Frequency offset between point A and the lowest subcarrier of the lowest resource block, which has the subcarrier spacing provided by the higher-layer parameter subCarrierSpacingCommon and overlaps with the SS/PBCH block" | 3GPP TS 38.211, sec 4.4.4.2 |
| subcarrierSpacing | subcarrier spacing impacts waveform generation, including centering | 3GPP TS 38.211, sec 4.2, 5.3.1 |
| ssb-SubcarrierOffset | subcarrier offset | 3GPP TS 38.211, sec 7.4.3.1 |
| Time Domain | case | Case determines first symbol mapping | 3GPP TS 38.213, sec 4.1 |
| ssb-BlockIndex | Used to derive the SSB index in slot | 3GPP TS 38.213, sec 4.1 |
| Power Offset | | | |
| <acceleration based on hard-coded values> | | The UE assumes that SSS, PBCH DM-RS, and PBCH data have same EPRE | 3GPP TS 38.213, sec 4.1 |

</div>

1

1. PBCH DM-RS Parameters

##### Table 6.2.6.2-2: PBCH DM-RS Parameters

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **AAL-LPU Parameters** | | **Summary** | **3GPP Spec Reference** |
| Sequence Generation | | | |
| physCellId | | Physical cell ID | 3GPP TS 38.211, sec 7.4.1.4.1, 7.4.2.1 |
| l-Max | | Maximum number of candidate SS/PBCH blocks in a half frame | 3GPP TS 38.211, sec 7.4.1.4.1 |
| i-SSB | | candidate SSB SS/PBCH block index; can also be derived from l-Max and ssb-BlockIndex | 3GPP TS 38.211, sec 7.4.1.4.1 |
| Modulation | | | |
| <acceleration based on hard-coded values> | | PBCH DM-RS uses QPSK  modulation | 3GPP TS 38.211, sec 7.4.1.4.1 |
| Precoding | | | |
| [see PBCH data precoding] | | DMRS follows PDCCH- data precoding |  |
| RE Mapping | | | |
| Frequency Domain | offsetToPointA | see PBCH data | 3GPP TS 38.211, sec 4.4.4.2 |
| subcarrierSpacing | see PBCH data | 3GPP TS 38.211, sec 4.2, 5.3.1 |
| ssb-SubcarrierOffset | see PBCH data | 3GPP TS 38.211, sec 7.4.3.1 |
| Time Domain | case | see PBCH data | 3GPP TS 38.213, sec 4.1 |
| ssb-BlockIndex | see PBCH data | 3GPP TS 38.213, sec 4.1 |
| Power Offset | | | |
| <acceleration based on hard-coded values> | | The UE assumes that SSS, PBCH DM-RS, and PBCH  data have same EPRE | 3GPP TS 38.213, sec 4.1 |

</div>

3

1. PSS & SSS Parameters

##### Table 6.2.6.2-3: PSS & SSS Parameters

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **AAL-LPU Parameters** | **Summary** | **3GPP Spec Reference** |
| Sequence Generation | | |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| physCellId | | Physical cell ID - used to derive N\_ID(1) for SSS and N\_ID(2) for PSS | 3GPP TS 38.211, sec 7.4.2.1, 7.4.2.2.1,  7.4.2.3.1 |
| Modulation | | | |
| <acceleration based on hard-coded values> | | PSS and SSS use BPSK modulation | 3GPP TS 38.211, sec 7.4.2.2.1,  7.4.2.3.1 |
| Precoding | | | |
| *See section 6.2.7* | | Conceptually similar to FH signaling when precoding for Cat-B. 3GPP leaves DL precoding to implementation. |  |
| RE Mapping | | | |
| Freq Domain | offsetToPointA | see PBCH data tab | 3GPP TS 38.211, sec 4.4.4.2 |
| subcarrierSpacing | see PBCH data tab | 3GPP TS 38.211, sec 4.2, 5.3.1 |
| ssb-SubcarrierOffset | see PBCH data tab | 3GPP TS 38.211, sec 7.4.3.1 |
| Time Domain | case | see PBCH data tab | 3GPP TS 38.213, sec 4.1 |
| ssb-BlockIndex | see PBCH data tab | 3GPP TS 38.213, sec 4.1 |
| Power Offset | | | |
| beta-PSS | | PSS EPRE to SSS EPRE in an SSB | 3GPP TS 38.213, sec 4.1 |

</div>

1

### 6.2.7 Beamforming

1. In this release, the AAL\_DOWNLINK\_High-PHY profile supports the following beamforming methods available for
2. OFH signaling:
3. ? Predefined-Beam Beamforming, as defined in section 10.4.2.1 of [8];
4. ? Weight-based Dynamic Beamforming, as defined in section 10.4.2.2 of [8];
5. ? Attribute-Based Dynamic Beamforming, as defined in section 10.4.3 of [8];
6. ? Channel-Information-Based Beamforming, as defined in section 10.4.4 of [8]. 9

#### 6.2.7.1 Predefined-Beam Beamforming

1. The AALI shall support the AAL Application signaling of the following parameters, as needed for AAL-LPU-signaling
2. of beamId in C-Plane Section Types 1, 3 [8]:
3. ? frequency-domain beam indices
4. ? time-domain-domain beam indices
5. ? a mixture of the two ("hybrid beamforming").

#### 6.2.7.2 Weight-based Dynamic Beamforming

* 1. The AALI shall support the AAL Application signaling of the following parameters, as needed for AAL-LPU-signaling
  2. of beamforming weight vectors of (bfwI, bfwQ) in C-Plane Extensions 1, 11, 19 [8]:

##### Table 6.2.7.2-1: Weight-based Dynamic Beamforming Parameters for Downlink

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **AAL-LPU Parameters** | **Summary** | **AAL-LPU Role** |
| AAL-LPU ? AAL Application | | |
| Channel Estimation Abstraction | A representation of SRS-based channel observations, as documented in the SRS channel model in section 6.3.5.2, e.g. for usage antennaSwitch | Signals an abstraction of the Channel Estimation to the AAL Application |
| AAL Application ? AAL-LPU | | |
| rnti[\*] | Selected UEs for scheduling (for an illustration refer to the L users referenced in Appendix J.4 of [8] | Compute precoding weights for the selected UEs and layers, e.g. based on the reported Channel Estimation and its Abstraction (if beamforming weights are not provided by the AAL Application).  Signal to O-RU beamforming vectors of weights (bfwI, bfwQ) over C-Plane for the AAL Application-selected UEs and layers.  Alternatively, the beamforming weights may be consumed in AAL-LPU itself,  e.g. Cat-A, when precoding is applied in the O-DU. |
| chosenLayers[\*] | Per UE: selected Layers for scheduling (for an illustration refer to the K layers referenced in Appendix  J.4 of [8] |
| Beamforming weights, per UE [optional] | Beamforming weights for the layers of the selected UEs , where beamforming weights may be specified explicitly or may be sent to AAL-LPU as handle to AAL-LPU  [11] contexts that uniquely specify the beamforming weights to apply. |

</div>

5

#### 6.2.7.3 Attribute-Based Dynamic Beamforming

1. The AALI shall support the AAL Application signaling of the following parameters, as needed for AAL-LPU-signaling
2. of beamforming attributes (bfAzPt, bfZePt, bfAz3dd, bfZe3dd, bfAzSl, bfZeSl) in C-Plane Extensions 2 [8]:
3. ? Zenith main and 3dB angles
4. ? Azimuth main and 3dB angles
5. ? Sidelobe Angles 12

#### 6.2.7.4 Channel-Information-Based Beamforming

1. The AALI shall support the AAL Application signaling of the following parameters, as needed for
2. AAL\_DOWNLINK\_High-PHYprofile signaling of channel estimate vectors of (ciIsample, ciQsample) in C-Plane
3. Section 6 [8]:

##### Table 6.2.7.4-1: Channel-Information-Based Beamforming Parameters for Downlink

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **AAL-LPU Parameters** | **Summary** | **AAL-LPU Role** |
| AAL-LPU ? AAL Application | | |
| [Channel Estimation Abstraction] | A representation of SRS-based channel observations, as documented in the SRS channel model in section 6.3.5.2, e.g. for usage antennaSwitch | Signals an abstraction of the Channel Estimation to the AAL Application |
| AAL Application ? AAL-LPU | | |
| rnti[\*] | Selected UEs for scheduling (for an illustration refer to the L users referenced in Appendix J.4 of [8] | Signal to O-RU the Channel Estimates for the AAL Application-selected UEs and layers |
| chosenLayers[\*] | Per UE: selected Layers for scheduling (for an illustration refer to the K layers referenced in Appendix  J.4 of [8] |

</div>

2

## 6.3 O-DU AAL\_UPLINK\_High-PHY Profile Specification

1. This profile provides acceleration functionality for the following channels and signals:
2. ? PUSCH (including Data, DM-RS and PT-RS)
3. ? PUCCH (Data) - Format 0
4. ? PUCCH (including Data and DM-RS) - Format 1
5. ? PUCCH (including Data and DM-RS) - Formats 2, 3, 4
6. ? SRS
7. ? PRACH

11

1. This section presents parametrization for each of these channels and signals, and pertinent carrier configuration.

### 6.3.1 Profile Operation

1. The AAL\_UPLINK\_High-PHY Profile interface shall work on a slot basis. An operation can be performed one slot at a
2. time, where the slot, numerology and SFN are signaled for the API.
3. The output data is specific to each uplink channel composing the profile.
4. The input data consists of:
5. ? a set of AAL Application-supplied parameters for each of the modelled uplink channels
6. ? a set of U-Plane OFH packets. 20
7. For the OFH packets, the AAL-LPU interfaces directly with the OFH and is responsible for handling its exchange of
8. information with OFH.
9. As much as possible, parameter redundancy should be avoided. Where this is not possible, the AAL-LPU can assume
10. that redundant parameters are consistent.

### 6.3.2 Summary of Capabilities

1. The AAL\_UPLINK\_High-PHY Profile capabilities shall be reported to the application.
2. Table 6.3.2-1 lists a subset of the AAL\_UPLINK\_High-PHY profile capabilities that should be reported to the
3. application with respect the acceleration of the various channel functionalities and interaction.
4. NOTE: Additional capabilities can also be reported by the AALI implementation.

##### Table 6.3.2-1: Sample AAL\_UPLINK\_High-PHY Profile Capabilities

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Capability** | **Short summary** | **3GPP Spec Reference** |
| 3gpp-Release | Rel-15, Rel-16, ... | [https://www.3gpp.org/specifications/](https://www.3gpp.org/specifications/work-plan) [work-plan](https://www.3gpp.org/specifications/work-plan) |
| max-PUSCH-TB-PerSlot | Number of PUSCH TBs per slot | Outside the scope of 3GPP |
| cyclicPrefix | Normal or Extended | 3GPP TS 38.211, sec 4.2 |
| subcarrierSpacing-UL | 15, 30, 60, 120, 240 kHz; can be  channel-specific. | 3GPP TS 38.211, sec 4.2 |
| supportedBandwidth-UL | 5, 10, 15, ... MHz | 3GPP TS 38.104, sec 5.3 |
| uci-MUX-UL-SCH-in-PUSCH | Supported or not | 3GPP TS 38.212, sec 6.3.2 |
| pusch-FrequencyHopping | Supported or not | 3GPP TS 38.214, sec 6.3 |
| pusch-DMRS-ConfigTypes | 1 or 2 or both | 3GPP TS 38.211, sec 6.4.1.1.3 |
| pusch-DMRS-MaxLen | 1 or 2 | 3GPP TS 38.211, sec 6.4.1.1.3 |
| pusch-MappingType | A or B or both | 3GPP TS 38.211, sec 6.4.1.1.3 |
| dfts-OFDM | Supported or not | 3GPP TS 38.211, sec 6.3.1.4 |
| pusch-CBG | Supported or not | 3GPP TS 38.212, sec 5.4.2.1,  7.3.1.1.2 |
| pusch-Max-PTRS | Maximum number of UL PTRS | 3GPP TS 38.211, sec 6.4.1.2 |
| pusch-AggregationFactor | 1-8 or not supported | 3GPP TS 38.214, sec 6.1.2.1 |
| pusch-LBRM-Support | Supported or not | 3GPP TS 38.212, sec 5.4.2.1 |
| pucch-Formats | Bitmap indicating the support for Formats 0, 1, 2, 3 or 4 | 3GPP TS 38.211, sec 6.3.2 |
| pucch-GroupAndSequenceHopping | Group, sequence or neither | 3GPP TS 38.211, sec 6.3.2.2 |
| max-PUCCH-PerSlot | Max number of PUCCH Resources per slot | Outside the scope of 3GPP |
| pucch-Aggregation | Supported or not (formats 1, 3, 4) |  |
| supported-SRS-Usage | beamManagement, codebook, nonCodebook, antennaSwitching, including any combination. If none of the supported reports (see "SRS  report type support") requires usage | 3GPP TS 38.214, sec 6.2.1 |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
|  | awareness, this usage support may be omitted or set to all usage types. |  |
| allowed-SRS-reportsPerUsage | e.g. SVD (singular value decomposition), or H (raw channel) report or SINR, or 2D-DFT basis, or other reports, subsampled in frequency domain. | Sec [0] |
| dft-Size-Azimuth and dft-Size- Elevation | DFT size and oversampling factor in azimuth and in elevation (only applicable when SRS report type 2D- DFT basis is supported).  The DFT size in azimuth should equal the product of the number of antenna elements in azimuth and the azimuth oversampling factor.  The DFT size in elevation should equal the product of the number of antenna elements in elevation and the elevation oversampling factor. | Outside the scope of 3GPP |
| maxNumStrongestBeamsToReport | Parameter K\_DFT\_beams defined as the number of strongest beams per SRS basis vector for SRS report type 2D-DFT basis (only applicable when SRS report type 2D-DFT basis is supported). | Outside the scope of 3GPP |
| min-RB-resolutionFor-SRS | RB resolution at which the SRS reports may be subsampled | Outside the scope of 3GPP |
| max-SRS-ChannelReportsPerSlot | Maximum number of SRS reports per slot | Outside the scope of 3GPP |
| max-SRS-TX-AntennaPortsPerUE | Maximum number of ports to sample per UE | Partly outside the scope of 3GPP  3GPP TS 38.211, sec 6.4.1.4.1 |
| SRS Configurations:   * maxNumConsecutive-SRS-Sl ots * srs-FrequencyHopping * max--SRS-CombSize * maxNumSRS-CyclicShifts | Capabilities regarding SRS configurations:   * Support for consecutive SRS symbols * SRS frequency hopping * Comb Size * Cyclic shifts | 3GPP TS 38.211, sec 6.4.1.4 |
| SRS distribution:   * maxDutyCycleInPercentage * srs-SymbolsBitmap * maxNumSRS-SymbPerSlot | Capabilities regarding SRS occurrence in time:   * Duty Cycle: Maximum proportion of SRS-bearing slots in an SRS period. * Bitmap of symbol locations per slot | 3GPP TS 38.211, sec 6.4.1.4  Partly outside 3GPP Scope |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
|  | * Symbols per slot   This capability is agnostic to SRS trigger type (e.g. periodic / semi- persistent / aperiodic). |  |
| prach-LongFormats  prach-ShortFormats | 0-3, A1-3, B1-4, C0-1 | 3GPP TS 38.211, sec 6.3.3 |
| prach-RestrictedSets | Type A, B, none | 3GPP TS 38.211, sec 6.3.3 |
| max-PRACH-FD-OccasionsPerSlot | Per configuration | 3GPP TS 38.211, sec 6.3.3.2 |
| maxNum-PRACH-Configurations | Max number of PRACH configurations | 3GPP TS 38.331, 6.3.2 |
| maxNum-TD-FD-PRACH-Occasions PerSlot | Max number of Time and Frequency domain ROs per slot, across all configurations | Outside the scope of 3GPP |
| prach-RootProcessingRate | Number of roots that can be processed per unit of time. Can be per preamble format | Outside the scope of 3GPP |
| prach-OccasionsQueueSize | The maximum queue size for processing Rach Occasions | Outside the scope of 3GPP |
| maxNum-UCI-Maps | Limitations regarding to the storage of UCI Part1?Part2 maps: maximum number of maps | Outside the scope of 3GPP |
| maxNumCarriersBWLayersProduct- UL | Support for forming joint precoders across bandwidth, and across baseband antenna ports. Includes the option of "no support". | Outside the scope of 3GPP |
| maxNum-MU-MIMO-LayersPer-UL  -ChannelType | The maximum number of layers that can be multiplexed (can be channel specific) | Outside the scope of 3GPP |
| max-MIMO-LayersNon-CB-PUSCH max-MIMO-Layers-CB-PUSCH | The maximum number of layers that can be allocated to a UE, per MIMO scheduling type | 3GPP TS 38.211, sec 6.3.1.3 |
| ... | ... | ... |

</div>

1

### 6.3.2b Summary of Configuration

* 1. A carrier to which the AAL\_UPLINK\_High-PHY channel models apply shall be configurable by the application.
  2. Table 6.3.2b-1 lists a subset of the carrier configurations pertinent to AAL\_UPLINK\_High-PHY.
  3. NOTE: Additional configuration parameters are possible for the AALI implementation.

##### Table 6.3.2b-1: Sample Carrier Configurations pertinent to AAL\_UPLINK\_High-PHY

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Configuration** | **Short summary** | **3GPP Spec Reference** |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| ul-Bandwidth | Carrier bandwidth for the UL reception | 3GPP TS 38.104, sec 5.2, 5.3  3GPP TS 38.211, sec 4.4.4.2 |
| ul-Frequency | Carrier reference frequency (e.g. Point A, or RF reference frequency), for the UL reception | 3GPP TS 38.104, sec 5.2, 5.3  3GPP TS 38.211, sec 4.4.4.2 |
| ul-GridSize | numerology *u*, for UL reception (except PRACH); can correspond to 15, 30, 60, 120 kHz. | 3GPP TS 38.211, sec 4.2 |
| ul-CarrierOffset | Offset to carrier or k?, per  0  numerology *u* | 3GPP TS 38.331, sec 6.3.2  3GPP TS 38.211, sec 5.3.1 |
| max-RX-Antennas | Number of baseband antenna ports for UL reception | Outside the scope of 3GPP |
| shift7dot5kHz | Indicates whether there is 7.5 kHz shift or not. | 3GPP TS 38.331, sec 6.3.2 |
| uci-Configuration | Semistatic maps for to reference in assisting L1 to computed the actual size of CSI part 2 | 3GPP TS 38.213, sec 9.3 |
| rssi-MeasurementSupport rsrp-MeasurementSupport | Selection of power metrics (e.g. absolute, relative) and scale (dB, linear) | Partly outside the scope of 3GPP. Some of the units are defined in 3GPP TS 38.133,  e.g. for RSSI and RSRP |
| beamformingTable | Semistatic configuration beamforming vectors for UL reception | Outside the scope of 3GPP |
| [Semistatic configuration of UL Channel Model parameters] | Alternative semistatic provisioning of some semistatic UL Channel Model parameters, e.g. see the respective PRACH parameters in the PRACH Chanel Model Section 6.3.6.2:  **PRACH**: restrictedSetConfig,  Ntotal , *Ncs*, M, k1, uPUSCH,  preamble  u*PRACH*, k, prachStartSymbol, prachFormat, NRA,slot,  t  preambleStartIndex | c.f Table 6.3.6.2-1 |
| [U-plane configuration] | Semistatic configuration for correct routing of OFH packets towards the O-RU. The parameters include, but not limited to:   * Processing Elements * Configured low-level-rx-end points * Receive carriers | Sec D.3.8 of ORAN-WG4-MP.0.v007.01 |

</div>

1

1. NOTE 1: Additional configuration parameters may be added in future releases to support additional features beyond
2. basic 3GPP Rel-15.
3. NOTE 2: The summary description of configuration parameters outside the scope of 3GPP is not meant to restrict
4. the mechanism or data type for such configuration. 3

### 6.3.3 PUSCH Channel Model

1. Per section 5.1.3.3.7 of the O-RAN AAL GAnP document [7] for the PUSCH High-PHY Profile, the PUSCH Channel
2. model of the AAL\_UPLINK\_High-PHY Profile supports acceleration of PUSCH Data, DM-RS and PT-RS
3. functionality.
4. The set of accelerated functions associated with the processing of PUSCH TB(s) is as follows:
5. ? IQ decompression[1]
6. ? RE de-mapping
7. ? Combining
8. ? Channel estimation (see DM-RS and PT-RS)
9. ? Channel equalization (see DM-RS and PT-RS)
10. ? Transform precoding (optional- only required for DFT-s-OFDM waveform)
11. ? Demodulation
12. ? Descrambling
13. ? Rate de-matching
14. ? LDPC decoding
15. ? CRC check
16. ? UCI Decoding 21
17. The set of accelerated functions associated with the processing of PUSCH DM-RS is as follows:
18. ? IQ decompression[1]
19. ? RE de-mapping
20. ? Combining
21. ? Demodulation
22. ? Sequence detection 28
23. The set of accelerated functions associated with the processing of PUSCH PT-RS is as follows:
24. ? IQ decompression[1]
25. ? RE de-mapping
26. ? Combining
27. ? Demodulation
28. ? Layer demapping
29. ? Sequence detection

#### 6.3.3.1 PUSCH input and output for AAL\_UPLINK\_High-PHY Profile

1. The AAL\_UPLINK\_High-PHY profile shall signal PUSCH allocation(s) per slot.
2. From the AAL Application, the PUSCH interface receives the associated parameters for the PUSCH allocation.
3. The output data consists of:
4. ? the CRC status for the PUSCH codeword, as well as optionally for individual CBs.
5. ? in cases of successful CRC verification: the TB(s) output of the decoder.
6. ? in case of UCI inclusion: the included UCI payload(s)

#### 6.3.3.2 PUSCH Parameters

1. The following parameters are required to be supported by the AALI implementation when offloading operations. The
2. AAL Application shall supply all relevant parameters; for ease of reading, the parameters are organized per signal type:
3. Data, DM-RS, PT-RS.
4. PUSCH Data Parameters

##### Table 6.3.3.2-1: PUSCH Data Parameters

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **AAL-LPU parameters** | **Short summary** | **3GPP Spec Reference** |
| MAC TB | | |
| tb-Size | Transport block size. Computed at L2. | 3GPP TS 38.214, sec 6.1.4.2 |
| ? mac-PDU (if TB CRC passes) | This is an output: the TB corresponding to the PUSCH codeword |  |
| UCI detection (if relevant) | | |
| csi-Part1BitLength | Size of UCI part 1 (or single UCI) | 3GPP TS 38.212, sec 6.3.2.4 |
| alphaScaling | Needed to compute number of coded symbols per layer | 3GPP TS 38.212, sec 6.3.2.4 |
| harq-ACK-BitLength | Number of HARQ-ACK bits | 3GPP TS 38.212, sec 6.3.2.4 |
| betaOffset-HARQ-ACK or codedModulationSymbPerLayer-A CK | betaOffsetHarq: Beta Offset for HARQ-ACK bits.  codedModulationSymbPerLayer: Q'\_{ACK}, the number of coded modulation symbols per layer for HARQ-ACK transmission | 3GPP TS 38.212, sec 6.3.2.4 |
| betaOffset-CSI-Part1 or codedModulationSymbPerLayer-C SI-Part1 | betaOffsetCsiPart1: Beta Offset for CSI part 1 bits.  codedModulationSymbPerLayer-CSI  -Part1: Q'\_{CSI-1}, number of coded modulation symbols per layer for CSI part 1 transmission | 3GPP TS 38.212, sec 6.3.2.4 |
| betaOffset-CSI-Part2 | Beta Offset for CSI part 2 bits. | 3GPP TS 38.212, sec 6.3.2.4 |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| uci-Part1ToPart2Correspondence | Mappings from Csi Part1 to length and priorities of CSI part 2 reports. Needed to compute in L1 the actual size of CSI part 2 | 3GPP TS 38.213, sec 9.3 |
| ? uci-Payload | This is an output: Uninterpreted UCI payload; part 1, if UCI is composed of two parts |  |
| ? uci-Part2Payload | This is an output: Uninterpreted UCI part 2, if UCI is composed of two parts |  |
| CRC Check | | |
| ? crc-Indication | This is an output: CRC Status for CW + other metrics (e.g. SINR) | 38.212, section 6.2.1 |
| CB CRC and CB Desegmentation | | |
| num-CB | number of expected code blocks | 3GPP TS 38.214, sec 5.2.2 |
| cb-PresentAndPosition[\*] | Presence indicator (e.g. bitmap), for each CB | 3GPP TS 38.214, sec 6.2.3 |
| ? cb-CRC-Status | This is an output: CRC Status per CB  + other metrics (e.g. SINR) | 3GPP TS 38.214, sec 6.2.3 |
| LDPC Decoding | | |
| rv-Index | redundancy version, per CW. Determines starting position k\_0 in the circular buffer. In DCI, or from aggregation. | 3GPP TS 38.214, sec 6.1.4, sec 6.1.2.1 |
| targetCodeRate or  (mcs-Table and mcs-Index) | targetCodeRate: R, target code rate Explicit, for initial transmission.  Implicit from TBSize and allocation, for retransmissions.  MCS Table and MCS index: target code rate can be extracted from the index (first transmission), or as above for retransmissions. | 3GPP TS 38.214, sec 6.1.4.1 |
| newData | Signals whether there is a new transmission, or a retransmission (per CW) | 3GPP TS 38.212, sec 7.3.1.1  3GPP TS 38.214, sec 5.1.7.2 |
| harq-Process-ID | harq process number for the UL buffer | 3GPP TS 38.212, sec 7.3.1.1 |
| ldpc-BaseGraph | LDPC base graph to use (can be explicit, or derived from TB size and initial target rate) (per CW) | 3GPP TS 38.212, sec 7.2.2 |
| numIterations | Number of iterations for LDPC decoding. Refer to NOTE 1 at bottom of table. | Not applicable. |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
|  | Note: This is an optional parameter |  |
| earlyTermination-OnOff | To enable/disable early termination of LDPC decoding. Refer to NOTE 2 at bottom of table.  Note: This is an optional parameter | Not applicable. |
| Rate Dematching | | |
| tb-Size-LBRM or  n-CB | TBS\_{LBRM}: Reference TBS for allocations subject to rateMatching  = limitedBufferRM; impacts circular buffer length  N\_{CB} = circular buffer length, after account for any FBRM/LBRM considerations. | 3GPP TS 38.212, sec 5.4.2.1, 6.2.5 |
| num-CB | number of expected code blocks. Also uses the rate match size E\_r, which is a computed field | 3GPP TS 38.212, sec 6.2.6 |
| cb-Size[\*] | number of bits in each CB | 3GPP TS 38.212, sec 6.2.6 |
| CB Deconcatentation | | |
| num-CB | number of expected code blocks. Also uses the rate match size E\_r, which is a computed field | 3GPP TS 38.212, sec 6.2.6 |
| cb-Size[\*] | number of bits in each CB | 3GPP TS 38.212, sec 6.2.6 |
| Descrambling | | |
| n-ID-PUSCH or c-Init | n\_{ID}: data scrambling identity (PCI by default)  c\_{init}: scrambling initialization | 3GPP TS 38.211, sec 6.3.1.1 |
| rnti | RNTI associated with the PDSCH transmission | 3GPP TS 38.211, sec 6.3.1.1 |
| Demodulation | | |
| qam-ModOrder or  (mcs-Table and mcs-Index) | Q\_m: Signaled via MCS in DCI  MCS Table and MCS index: modulation can be extracted from the MCS table and index. | 3GPP TS 38.214, sec 6.1.4.1 |
| IDFT for DFT-s-OFDM | | |
| transformPrecoding | Signaled in DCI | 3GPP TS 38.214, sec 6.3.1.4 |
| Channel Estimation & Equalization | | |
| <see PUSCH DMRS> |  |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| <see PUSCH PTRS> | |  |  |
| Combining | | | |
| *See section 6.2.7 and section 6.3.7* | | Combiner matrix is per PUSCH allocation |  |
| RE Demapping | | | |
| **Frequency**  **Domain** | bwp-Start | Start, w.r.t. CRB, of bandwidth part: VRBs indexing is relative to the Bandwidth part for the PUSCH allocation | 3GPP TS 38.211, sec 6.3.1.7 |
| bwp-Size | Size of bandwidth part: VRBs indexing is relative to the Bandwidth part for the PUSCH allocation | 3GPP TS 38.211, sec 6.3.1.7 |
| subcarrierSpacing | subcarrier spacing impacts waveform generation, including centering | 3GPP TS 38.211, sec 4.2, 5.3.1 |
| num-DMRS-CDM-GrpsN oData | No PUSCH mapping on DMRS CDM groups marked as having no data. | 3GPP TS 38.212, sec 7.3.1.1 |
| resourceAlloc | Bitmap-based (type 0) or offset & length (type 1) | 3GPP TS 38.214, sec 6.1.2.2 |
| rb-Bitmap | type 0: allocation is based on this bitmap. In 3GPP, it is signaled at RB group resolution | 3GPP TS 38.214, sec 6.1.2.2.1  3GPP TS 38.212, sec 7.3.1.1.2 |
| rb-Start | type 1: start of allocation derived from DCI RIV | 3GPP TS 38.214, sec 6.1.2.2.2  3GPP TS 38.212, sec 7.3.1.1.2 |
| rb-Size | type1: number of continuously allocated VRBs derived from DCI RIV | 3GPP TS 38.214, sec 5.1.2.2.2  3GPP TS 38.212, sec 7.3.1.1.2 |
| intraSlotFrequencyHoppin g | indicates whether PUSCH allocation is based on intra-slot frequency hopping | 3GPP TS 38.212, sec 7.3.1.1  3GPP TS 38.214, sec 6.3 |
| pusch-SecondHop-PRB | location of the second frequency hop | 3GPP TS 38.214, sec 6.3 |
| tx-DirectCurrentLocation | indicates the subcarrier index within the carrier corresponding to the numerology of the corresponding uplink BWP | 3GPP TS 38.331, sec 6.3.2 |
| shift7dot5kHz | Indicates whether there is 7.5 kHz shift or not. | 3GPP TS 38.331, sec 6.3.2 |
| **Time Domain** | startSymbolIndex | Start symbol index, for the allocation | 3GPP TS 38.214, Table 6.1.2.1-1 |
| nrOfSymbols | Number of symbols, for the allocation | 3GPP TS 38.214, Table 6.1.2.1-1 |
| cyclicPrefix | Cyclic prefix type. Impacts time- domain allocation, including waveform generation | 3GPP TS 38.211, sec 4.2, 5.3.1  3GPP TS 38.214, Table 5.1.2.1-1 |

</div>

1

1. PUSCH DM-RS Parameters

##### Table 6.3.3.2-2: PUSCH DM-RS Parameters

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **AAL-LPU parameters** | | **Short summary** | **3GPP Spec Reference** |
| DMRS Sequence | | | |
| pusch-DMRS-ScramblingId or  c-InitFirstSymbol | | pusch-DMRS-ScramblingId: N\_{ID}, scrambling identifier for n\_{SCID}  c InitFirstSymbol: c\_{init}[l], scrambling initialization for DMRS symb l (CP-OFDM) or for entire DMRS (Rel- 15 DFT-S-OFDM) | 3GPP TS 38.211, sec 6.4.1.1.1.1/2 |
| n-SCID | | sequence index (from DCI; defaults to 0) | 3GPP TS 38.211, sec 6.4.1.1.1.1/2 |
| pusch-DMRS-Identity | | N\_{ID}^{RS}, same as N\_ID^PUSCH, or PCI (DFT-S-OFDM) | 3GPP TS 38.211, sec 6.4.1.1.1.2 |
| groupOrSequenceHopping | | indicates whether sequence or group hopping is enabled | 3GPP TS 38.211, sec 6.4.1.1.1.2 |
| low-PAPR-GroupNumber | | U: low PAPR group number [DFT-s- OFDM] | 3GPP TS 38.211, sec 5.2.2 |
| low-PAPR-SequenceNumber | | V: low PAPR sequence number [DFT-s- OFDM] | 3GPP TS 38.211, sec 5.2.2 |
| Demodulation | | | |
| transformPrecoding | | CP-OFDM: PUSCH DM-RS uses QPSK  modulation  DFT-s-OFDM: PUSCH DMRS uses  low-PAPR sequences | 3GPP TS 38.211, sec 6.4.1.1.1.1/2 |
| Combining | | | |
| [see PUSCH data combining] | | DMRS follows PUSCH-data combining |  |
| ul-TPMI-Index | | [optional] PMI of the UE, can help with combiner formation | 3GPP TS 38.211, sec 6.3.1.5 |
| RE Demapping | | | |
| Frequency Domain | bwp-Start | see PUSCH data table | 3GPP TS 38.211, sec 6.3.1.7 |
| bwp-Size | see PUSCH data table | 3GPP TS 38.211, sec 6.3.1.7 |
| subcarrierSpacing | see PUSCH data table | 3GPP TS 38.211, sec 4.2, 5.3.1 |
| dmrs-Ports | DMRS ports per layer; OC weights are applied to DM-RS REs, based on DM- RS CDM group and identifier for each DM-RS port. | 3GPP TS 38.211, sec 6.4.1.1.3 |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| Time Domain | ul-DMRS-SymbPos | location of DMRS in a slot sufficiently captures the impact of upper layer parameters, e.g. mapping type, additional pos | 3GPP TS 38.211, sec 6.4.1.1.3 |
| dmrs-ConfigType | DMRS configuration type controls port to CDM group correspondence | 3GPP TS 38.211, sec 6.4.1.1.3 |
| dmrs-Ports | DMRS ports per layer; OC weights are applied to DM-RS REs, based on DM- RS CDM group and identifier for each DM-RS port. | 3GPP TS 38.211, sec 6.4.1.1.3 |
| cyclicPrefix | see PUSCH data table | 3GPP TS 38.211, sec 4.2, 5.3.1  3GPP TS 38.214, Table 5.1.2.1-1 |

</div>

1

1. NOTE 1: As for numIterations parameter in LDPC Decoding, there can be several use cases to apply the optimal
2. number of LDPC decoding iterations, such as- 1) in a case when more number of LDPC iterations (as part
3. of the entire allowed processing resources) should be allocated to URLLC traffic than eMBB traffic if
4. they coexist, 2) in a case when cell coverage would improve with increased number of LDPC iterations
5. for cell-edge users (e.g., with minimum MCS and small PDU length), and 3) in a case when VoIP such as
6. small data size would be benefited from increased number of LDPC iterations. The numIterations
7. parameter in LDPC Decoding is assumed to be always set by AAL application as same as other
8. parameters in LDPC Decoding, and the support of the numIterations parameter in AALI implementation
9. at HWA is optional (e.g., the default value is "0", which is set by AAL application when AALI
10. implementation does not support this parameter. In that case, AALI implementation may simply choose
11. to ignore this parameter (or the value)). Note that the aforementioned examples are not meant to be an
12. exhaustive list, and AAL applications may choose to set this parameter for other use cases not mentioned
13. here. The actual range of numIterations parameter value would be as per the AALI implementation.
14. NOTE 2: As for earlyTermination-OnOff parameter in LDPC Decoding, there would be several use cases to
15. optimize the early termination of LDPC decoding iterations, such as - 1) in a case where it would be
16. preferable to prioritize energy efficiency rather than minimizing the BLER (which leads to
17. earlyTermination-OnOff to be on), and 2) in a case where early termination would be preferable for
18. configured grant. The earlyTermination-OnOff parameter in LDPC Decoding is assumed to be always set
19. by AAL application as same as other parameters in LDPC Decoding, and the support of the
20. earlyTermination-OnOff parameter in AALI implementation at HWA is optional (e.g., the default value is
21. "0", which means early termination is off. AAL application will ONLY set this value to 1 (i.e. ON) when
22. AALI implementation supports this feature.). Note that the aforementioned examples are not meant to be
23. an exhaustive list, and AAL applications may choose to set this parameter for other use cases not
24. mentioned here.

26

27

1. PUSCH PT-RS Parameters

##### Table 6.3.3.2-3: PUSCH PT-RS Parameters

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **AAL-LPU parameters** | **Short summary** | **3GPP Spec Reference** |
| Sequence Detection | | |
| num-PTRS-Ports | number of PT-RS ports (Rel-15: only one) | 3GPP TS 38.212, sec 7.3.1.1.2 |
| ptrs-DMRS-port[\*] | DM-RS ports associated with each of the PT\_RS ports | 3GPP TS 38.214, sec 6.2.3.1  3GPP TS 38.212, sec 7.3.1.1.2 |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| ul-PTRS-SampleDensity | | N\_{group}^{PT-RS}: Number of PT-RS groups [DFTS-OFDM case] | 3GPP TS 38.211, sec 6.4.1.2.1.2  3GPP TS 38.214, sec 6.2.3.2 |
| ul-PTRS-  TimeDensityTransformPrecodin g | | N\_{samp}^ {group}: Number of samples per PT-RS group [DFTS-OFDM case] | 3GPP TS 38.211, sec 6.4.1.2.1.2  3GPP TS 38.214, sec 6.2.3.2 |
| n-ID-PUSCH | | N\_{ID}: Identity for associated PUSCH | 3GPP TS 38.211, sec 6.4.1.2.1.2 |
| Layer Demapping | | | |
| num-PTRS-Ports | | number of PT-RS ports | 3GPP TS 38.212, sec 7.3.1.1.2 |
| ptrs-DMRS-Port[\*] | | DM-RS ports associated with each of the PT-RS ports | 3GPP TS 38.214, sec 6.2.3.1  3GPP TS 38.212, sec 7.3.1.1.2 |
| Combining | | | |
| [same as the associated DMRS Port(s)] | |  |  |
| RE Demapping | | | |
| **Frequency Domain** | bwp-Start | see PUSCH data table | 3GPP TS 38.211, section 7.3.1.6 |
| bwp-Size | see PUSCH data table | 3GGP TS 38.211, section 7.3.1.6 |
| subcarrierSpacing | see PUSCH data table | 3GPP TS 38.211, sec 4.2, 5.3.1 |
| ptrs-FreqDensity | K\_{PT-RS}, frequency density (includes the case where there is no PT-RS) | 3GPP TS 38.214, sec 6.2.3.1,  table 6.2.3.1-2 |
| ptrs-RE-Offset | k\_{ref}^{RE}, re offset (can depend on DMRS association and RRC signaling of resourceElementOffset) | 3GPP TS 38.211, sec 6.4.1.2.2,  table 6.4.1.2.2.1-1  3GPP TS 38.331, sec 6.3.1 |
| rnti | RNTI associated with the PUSCH transmission | 3GPP TS 38.211, sec 7.4.1.2.2 |
| **Time Domain** | ptrs-TimeDensity | L\_{PT-RS}, time density (includes the case where there is no PT-RS) [CP- OFDM] | 3GPP TS 38.214, sec 6.2.3.1,  table 6.2.3.1-1 |
| ul-DMRS-SymbPos | see PUSCH DMRS table  symbols used for DMRS (PT-RS skips over these) | 3GPP TS 38.211, sec  7.4.1.1.2 and Tables 7.4.1.1.2-3  and 7.4.1.1.2-4 |
| cyclicPrefix | see PUSCH data table | 3GPP TS 38.211, sec 4.2, 5.3.1  3GPP TS 38.214, Table 5.1.2.1-1 |
| Power Offset | | | |
|  | ul-PTRS-Power | alpha\_ {PTRS}^{PUSCH}: PUSCH to PT-RS power ratio per layer per RE | 3GPP TS 38.214, sec 6.2.3.1,  Table 6.2.3.1-3 |

</div>

1

### 6.3.4 PUCCH Channel Model

* 1. Per section 5.1.3.3.7 of the O-RAN AAL GAnP document [7] for the PUCCH High-PHY Profile, the PUCCH Channel
  2. model of the AAL\_UPLINK\_High-PHY Profile supports acceleration of PUCCH Format 0, Format 1 UCI and DM-RS
  3. and Formats 2,3,4 UCI and DM-RS.

1. The set of accelerated functions associated with the processing of PUCCH Format 0 is as follows:
2. ? IQ decompression[1]
3. ? RE de-mapping
4. ? Sequence detection 5
5. The set of accelerated functions associated with the processing of PUCCH Format 1 UCI is as follows:
6. ? IQ decompression[1]
7. ? RE de-mapping
8. ? Channel estimation
9. ? Channel equalization
10. ? Demodulation

12

1. The set of accelerated functions associated with the processing of PUCCH Format 1 DM-RS is as follows:
2. ? IQ decompression[1]
3. ? RE de-mapping
4. ? Combining
5. ? Demodulation
6. ? Sequence detection 19
7. The set of accelerated functions associated with the processing of PUCCH Formats 2, 3, 4 is as follows:
8. ? IQ decompression[1]
9. ? RE de-mapping
10. ? Channel estimation
11. ? Channel equalization
12. ? Transform precoding (optional- only required for DFT-s-OFDM waveform)
13. ? Demodulation
14. ? Descrambling
15. ? Rate de-matching
16. ? Polar/Block decoding
17. ? CRC check 31
18. The set of accelerated functions associated with the processing of PUCCH Formats 2, 3, 4 DM-RS is as follows:
19. ? IQ decompression[1]
20. ? RE de-mapping
21. ? Combining
22. ? Demodulation
23. ? Sequence detection 4

#### 6.3.4.1 PUCCH input and output for AAL\_UPLINK\_High-PHY Profile

1. The AAL\_UPLINK\_High-PHY profile shall signal PUCCH resource(s) per slot.
2. From the AAL Application, the PUCCH interface receives the associated parameters for the configuration of the
3. PUCCH resource.
4. The output data consists of:
5. ? the CRC or detection status of the PUCCH UCI payload (HARQ, SR or CSI), as well as related metrics (e.g.
6. SINR)
7. ? The UCI Payload: HARQ, SR (Formats 0/1) or transparent UCI payload(s) (Formats 2/3/4).

#### 6.3.4.2 PUCCH Parameters

1. The following parameters are required to be supported by the AALI implementation when offloading operations. The
2. AAL Application shall supply all relevant parameters; for ease of reading, the parameters are grouped as follows, in
3. alignment with the O-RAN AAL GAnP document [7]: PUCCH Format 0, PUCCH Format 1 (UCI and DMRS),
4. PUCCH Formats 2/3/4 (UCI and DMRS). Only one of these sets of parameters is applicable to any one PUCCH
5. resource:

19

1. PUCCH Format 0 Parameters

##### Table 6.3.4.2-1: PUCCH Format 0 Parameters

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **AAL-LPU parameters** | **Short summary** | **3GPP Spec Reference** |
| UCI | | |
| sr-BitLen | indicates whether SR can be indicated (lengths 0 or 1) | 3GPP TS 38.213, sec 9.2 |
| bitLen-HARQ | indicates number of HARQ bits | 3GPP TS 38.213, sec 9.2 |
| ? sr-Indication  ? harq-Value[\*] | This is an output: SR and HARQ observations, or outcome of detection; Also: metrics like SINR, RSRP, etc. | 3GPP TS 38.213, sec 9.2 |
| Sequence Detection | | |
| pucch-GroupHopping | indicates whether group, sequence or no hopping is applied | 3GPP TS 38.211, sec 6.3.2.2.1 |
| n-ID-PUCCH-Hopping | hopping identifier | 3GPP TS 38.211, sec 6.3.2.2.1 |
| initialCyclicShift | initial cyclic shift | 3GPP TS 38.211, sec 6.3.2.2.2 |
| RE Demapping | | |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **Frequency Domain** | bwp-Start | Start, w.r.t. CRB, of bandwidth part: VRBs indexing is relative to the Bandwidth part for the PUCCH allocation | 3GPP TS 38.211, sec 6.3.1.7 |
| bwp-Size | Size of bandwidth part: VRBs indexing is relative to the Bandwidth part for the PUCCH allocation | 3GPP TS 38.211, sec 6.3.1.7 |
| subcarrierSpacing | subcarrier spacing impacts waveform generation, including centering | 3GPP TS 38.211, sec 4.2, 5.3.1 |
| prb-Start | RB\_{BWP}^{offset}, PRB offset, prior to any hopping | 3GPP TS 38.213, sec 9.2.1 |
| intraSlotFrequencyHopping | indicates whether the allocation hops in frequency or not | 3GPP TS 38.211, sec 6.3.2.2.1 |
| secondHop-PRB | RB offset of the second hop, in case of intra-slot frequency hopping | 3GPP TS 38.213, sec 9.2.1 |
| **Time Domain** | startSymbolIndex | first symbol for the PUCCH allocation | 3GPP TS 38.213, sec 9.2.2 |
| nrOfSymbols | number of symbols for the PUCCH allocation | 3GPP TS 38.213, sec 9.2.2 |
| cyclicPrefix | Cyclic prefix type. Impacts time-domain allocation, including waveform generation | 3GPP TS 38.211, sec 4.2, 5.3.1  3GPP TS 38.214, Table 5.1.2.1-1 |

</div>

1

* 1. PUCCH Format 1 UCI Parameters

##### Table 6.3.4.2-2: PUCCH Format 1 UCI Parameters

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **AAL-LPU parameters** | **Short summary** | **3GPP Spec Reference** |
| UCI | | |
| sr-BitLen | indicates whether SR can be indicated (lengths 0 or 1) | 3GPP TS 38,213, sec 9.2.4 |
| bitLen-HARQ | indicates number of HARQ bits | 3GPP TS 38,213, sec 9.2.2 |
| ? sr-Indication  ? harq-Value[\*] | This is an output: SR and HARQ observations, if any (or outcome of detection + metrics like SINR, RSRP) |  |
| Demodulation | | |
| pucch-GroupHopping | indicates whether group, sequence or no hopping is applied | 3GPP TS 38.211, sec 6.3.2.2.1 |
| n-ID-PUCCH-Hopping | hopping identifier | 3GPP TS 38.211, sec 6.3.2.2.1 |
| initialCyclicShift | initial cyclic shift | 3GPP TS 38.211, sec 6.3.2.2.2 |
| timeDomain-OCC-Idx | index of orthogonal sequence w | 3GPP TS 38.211, sec 6.3.2.4.1  3GPP TS 38.213, section 9.2.1 |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| sr-BitLen and bitLen-HARQ | | Number of bits determines modulation: BPSK or QPSK | 3GPP TS 38.211, sec 6.3.2.4.1 |
| Channel Estimation and Equalization | | | |
| [see PUCCH Format 1 DM-RS] | |  |  |
| RE Demapping | | | |
| **Frequency Domain** | bwp-Start | Start, w.r.t. CRB, of bandwidth part: VRBs indexing is relative to the Bandwidth part for the PUCCH allocation | 3GPP TS 38.211, sec 6.3.1.7 |
| bwp-Size | Size of bandwidth part: VRBs indexing is relative to the Bandwidth part for the PUCCH allocation | 3GPP TS 38.211, sec 6.3.1.7 |
| subcarrierSpacing | subcarrier spacing impacts waveform generation, including centering | 3GPP TS 38.211, sec 4.2, 5.3.1 |
| prb-Start | RB\_{BWP}^{offset}: PRB offset, prior to any hopping | 3GPP TS 38.213, sec 9.2.1 |
| intraSlotFrequencyHopping | indicates whether the allocation hops in frequency or not | 3GPP TS 38.211, sec 6.3.2.2.1 |
| secondHop-PRB | RB offset of the second hop, in case of intra-slot frequency hopping | 3GPP TS 38.213, sec 9.2.1 |
| **Time Domain** | startSymbolIndex | first symbol for the PUCCH allocation | 3GPP TS 38.213, sec 9.2.2 |
| nrOfSymbols | number of symbols for the PUCCH allocation | 3GPP TS 38.213, sec 9.2.2 |
| cyclicPrefix | Cyclic prefix type. Impacts time-domain allocation, including waveform generation | 3GPP TS 38.211, sec 4.2, 5.3.1  3GPP TS 38.214, Table 5.1.2.1-1 |

</div>

1

1. PUCCH Format 1 DM-RS Parameters

##### Table 6.3.4.2-3: PUCCH Format 1 DM-RS Parameters2

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **AAL-LPU parameters** | **Short summary** | **3GPP Spec Reference** |
| Descrambling | | |
| pucch-GroupHopping | indicates whether group, sequence or no hopping is applied | 3GPP TS 38.211, sec  6.3.2.2.1, 6.4.1.3.1.1 |
| n-ID-PUCCH-Hopping | hopping identifier | 3GPP TS 38.211, sec  6.3.2.2.1, 6.4.1.3.1.1 |
| initialCyclicShift | initial cyclic shift | 3GPP TS 38.211, sec  6.3.2.2.2, 6.4.1.3.1.1 |

</div>

**2** All the parameters in this PUCCH Format 1 DM-RS table are also present in the PUCCH Format 1 UCI table

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| timeDomain-OCC-Idx | | index of orthogonal sequence w | 3GPP TS 38.211, sec  6.3.2.4.1, 6.4.1.3.1.1  3GPP TS 38.213, sec  9.2.1 |
| RE Demapping | | | |
| **Frequency Domain** | bwp-Start | Start, w.r.t. CRB, of bandwidth part: VRBs indexing is relative to the Bandwidth part for the PUCCH allocation | 3GPP TS 38.211, sec  6.3.1.7, 6.4.1.3.1.2 |
| bwp-Size | Size of bandwidth part: VRBs indexing is relative to the Bandwidth part for the PUCCH allocation | 3GPP TS 38.211, sec  6.3.1.7, 6.4.1.3.1.2 |
| subcarrierSpacing | subcarrier spacing impacts waveform generation, including centering | 3GPP TS 38.211, sec  4.2, 5.3.1, 6.4.1.3.1.2 |
| prb-Start | PRB offset, prior to any hopping | 3GPP TS 38.213, sec  9.2.1 |
|  |  | 3GPP TS 38.211, sec  6.4.1.3.1.2 |
| intraSlotFrequencyHoppin g | indicates whether the allocation hops in frequency or not | 3GPP TS 38.211, sec  6.3.2.2.1, 6.4.1.3.1.2 |
| secondHop-PRB | RB offset of the second hop, in case of intra- slot frequency hopping | 3GPP TS 38.213, sec  9.2.1 |
|  |  | 3GPP TS 38.211, sec  6.4.1.3.1.2 |
| **Time Domain** | startSymbolIndex | first symbol for the PUCCH allocation | 3GPP TS 38.213, sec |
|  |  | 9.2.2 |
|  |  | 3GPP TS 38.211, sec |
|  |  | 6.4.1.3.1.2 |
| nrOfSymbols | number of symbols for the PUCCH | 3GPP TS 38.213, sec |
|  | allocation | 9.2.2 |
|  |  | 3GPP TS 38.211, sec |
|  |  | 6.4.1.3.1.2 |
| cyclicPrefix | Cyclic prefix type. Impacts time-domain | 3GPP TS 38.211, sec |
|  | allocation, including waveform generation | 4.2, 5.3.1, 6.4.1.3.1.2 |
|  |  | 3GPP TS 38.214, Table |
|  |  | 5.1.2.1-1 |

</div>

1

1. PUCCH Format 2/3/4 UCI Parameters

##### Table 6.3.4.2-4: PUCCH Formats 2/3/4 Parameters

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **AAL-LPU parameters** | **Short summary** | **3GPP Spec Reference** |
| UCI | | |
| sr-BitLen | O^{SR}, indicates the number of SR bits | 3GPP TS 38.213, sec 9.2  3GPP TS 38.212, Table 6.3.1.4-1 |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| bitLen-HARQ | O^{ACK}, indicates number of HARQ bits | 3GPP TS 38.213, sec 9.2  3GPP TS 38.212, Table 6.3.1.4-1 |
| csi-Part1BitLength | O^{CSI-part1}, indicates the number of CSI part 1 bits | 3GPP TS 38.213, sec 9.2  3GPP TS 38.212, Table 6.3.1.4-1 |
| uci-Part1ToPart2Correspondence | Mappings from CSI Part1 to length and priorities of CSI part 2 reports. Needed to compute in L1 the actual size of CSI part 1 (Formats 3,4) | 3GPP TS 38.213, sec 9.2.5 |
| ? uci-Payload | This is an output: Uninterpreted UCI payload (or outcome of decoding + metrics like SINR, RSRP, etc.) | 3GPP TS 38.213, sec 9.2 |
| ? uci-Part2Payload | This is an output: Uninterpreted UCI part 2, if UCI is composed of two parts |  |
| formatType | 2, 3 or 4 | 3GPP TS 38.213, sec 9.2.2 |
| CRC check | | |
| <acceleration based on hardcoded parameters> | CRC size and generator depend on the payload size A, and fixed parameters | 3GPP TS 38.212, sec 6.3.1.2 |
| Polar/Block decoding | | |
| <acceleration based on hardcoded parameters> | Encoding depends on the payload size A, and corresponding number of code blocks, and fixed parameters | 3GPP TS 38.212, sec 6.3.1.3 |
| Rate de-matching | | |
| nrOfSymbols | N\_{symb,UCI}^{PUCCH,\*}: number of symbols carrying UCI for PUCCH formats 2/3/4 respectively | 3GPP TS 38.212, Table 6.3.1.4-1 |
| pre-DFT-OCC-Idx | N\_{SF}^{PUCCH,\*}: spreading factor for PUCCH formats 4 | 3GPP TS 38.212, Table 6.3.1.4 |
| prb-Size | N\_{PRBI}^{PUCCH,\*}: actual number of RBs used by the UE for this allocation, for each format, respectively | 3GPP TS 38.213, sec 9.2.1 |
| pi2-BPSK | \pi/2-BPSK: indicates that Formats 3-4 use \pi/2-BPSK, rather than QPSK modulation  NOTE: QPSK for Format 2 | 3GPP TS 38.211, sec 6.3.2.6.2, sec  6.3.2.5.2 |
| maxCodeRate | R\_{UCI}^{max}: Max coding rate to determine how to feedback UCI | 3GPP TS 38.212, Table 6.3.1.4.1-1 |
| Descrambling | | |
| rnti | RNTI associated with the PUCCH transmission | 3GPP TS 38.211, sec 6.3.2.5.1 and  6.3.2.6.1 |
| nId-PUCCH-Scrambling | n\_{ID}: scrambling id (PCI by default) | 3GPP TS 38.211, sec 6.3.2.5.1 and  6.3.2.6.1 |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| or  c-Init | | c\_{init}: scrambling initialization |  |
| Demodulation | | | |
| <acceleration based on already- defined parameters> | | See \pi/2-BPSK parameter |  |
| Block-wise Despreading | | | |
| pre-DFT-OCC-Idx | | index of orthogonal sequence for Format 4. | 3GPP TS 38.213, section 9.2.1 |
| pre-DFT-OCC-Len | | length of orthogonal sequence for Format 4. | 3GPP TS 38.213, section 9.2.1 |
| IDFT for DFT-s-OFDM | | | |
| prb-Size | | Actual number of RBs used by the UE for this allocation (Format 3) | 3GPP TS 38.213, sec 9.2.1 |
| number of symbols | | number of symbols for the PUCCH allocation | 3GPP TS 38.213, sec 9.2.2 |
| Channel Estimation and Equalization | | | |
| [see PUCCH Format 2/3/4 DM-RS] | |  |  |
| RE Demapping | | | |
| **Frequency Domain** | bwp-Start | Start, w.r.t. CRB, of bandwidth part: VRBs indexing is relative to the Bandwidth part for the PUCCH allocation | 3GPP TS 38.211, sec 6.3.1.7 |
| bwp-Size | Size of bandwidth part: VRBs indexing is relative to the Bandwidth part for the PUCCH allocation | 3GPP TS 38.211, sec 6.3.1.7 |
| subcarrierSpacing | subcarrier spacing impacts waveform generation, including centering | 3GPP TS 38.211, sec 4.2, 5.3.1 |
| prb-Start | PRB offset, prior to any hopping | 3GPP TS 38.213, sec 9.2.1 |
| prb-Size | N\_{PRBI}^ {PUCCH,\*}: actual number of RBs used by the UE for this allocation, for each format, respectively | 3GPP TS 38.213, sec 9.2.1 |
| intraSlotFrequencyHoppin g | indicates whether the allocation hops in frequency or not | 3GPP TS 38.211, sec 6.3.2.2.1  3GPP TS 38.212, sec 6.3.1.4 |
| secondHop-PRB | RB offset of the second hop, in case of intra-slot frequency hopping | 3GPP TS 38.213, sec 9.2.1 |
| **Tim**  **e Do** | startSymbolIndex | first symbol for the PUCCH allocation | 3GPP TS 38.213, sec 9.2.2 |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
|  | nrOfSymbols | N\_{symb,UCI}^ {PUCCH,\*}: number of symbols for the PUCCH allocation | 3GPP TS 38.213, sec 9.2.2 |
| cyclicPrefix | Cyclic prefix type. Impacts time- domain allocation, including waveform generation | 3GPP TS 38.211, sec 4.2, 5.3.1  3GPP TS 38.214, Table 5.1.2.1-1 |

</div>

1

1. PUCCH Format 2/3/4 DM-RS Parameters

##### Table 6.3.4.2-5: PUCCH Formats 2/3/4 DM-RS Parameters

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **AAL-LPU parameters** | | **Short summary** | **3GPP Spec Reference** |
| Descrambling | | | |
| nId0-PUCCH-DMRS-Scrambling or  c-InitFirstSymbol | | N\_{ID}^0: scrambling ID 0 for Format 2  c\_{init}[l]: scrambling initialization, per DMRS symb l. | 3GPP TS 38.211, sec 6.4.1.3.2.1 |
| pucch-GroupHopping | | indicates whether group, sequence or no hopping is applied (Formats 3/4) | 3GPP TS 38.211, sec 6.3.2.2.1 |
| n-ID-PUCCH-Hopping | | hopping identifier (Formats 3/4) | 3GPP TS 38.211, sec 6.3.2.2.1 |
| initialCyclicShift | | initial cyclic shift (Formats 3/4) | 3GPP TS 38.211, sec 6.3.2.2.2 |
| pre-DFT-OCC-Idx | | index of orthogonal sequence for Format 4. | 3GPP TS 38.213, section 9.2.1 |
| pre-DFT-OCC-Len | | length of orthogonal sequence for Format 4. | 3GPP TS 38.213, section 9.2.1 |
| RE Demapping | | | |
| **Frequency Domain** | bwp-Start | Start, w.r.t. CRB, of bandwidth part: VRBs indexing is relative to the Bandwidth part for the PUCCH allocation | 3GPP TS 38.211, sec 6.3.1.7 |
| bwp-Size | Size of bandwidth part: VRBs indexing is relative to the Bandwidth part for the PUCCH allocation | 3GPP TS 38.211, sec 6.3.1.7 |
| subcarrierSpacing | subcarrier spacing impacts waveform generation, including centering | 3GPP TS 38.211, sec 4.2, 5.3.1 |
| prb-Start | PRB offset, prior to any hopping | 3GPP TS 38.213, sec 9.2.1 |
| prb-Size | N\_{PRBI}^ {PUCCH,\*}:  Actual number of RBs used by the UE for this allocation, for each format, respectively | 3GPP TS 38.213, sec 9.2.1 |
| intraSlotFrequencyHopping | indicates whether the allocation hops in frequency or not | 3GPP TS 38.211, sec 6.3.2.2.1  3GPP TS 38.212, sec 6.3.1.4 |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
|  | secondHop-PRB | RB offset of the second hop, in case of intra-slot frequency hopping | 3GPP TS 38.213, sec 9.2.1 |
| **Time Domain** | startSymbolIndex | first symbol for the PUCCH allocation | 3GPP TS 38.213, sec 9.2.2 |
| nrOfSymbols | N\_{symb,UCI}^ {PUCCH,\*}: number of symbols for the PUCCH allocation | 3GPP TS 38.213, sec 9.2.2 |
| add-DMRS-Flag | Indicates 2 additional DMRS symbols per hop of a PUCCH Format 3 or 4 (depending on length) | 3GPP TS 38.213, sec 9.2.2 |
| cyclicPrefix | Cyclic prefix type. Impacts time-domain allocation, including waveform generation | 3GPP TS 38.211, sec 4.2, 5.3.1  3GPP TS 38.214, Table 5.1.2.1-1 |

</div>

1

### 6.3.5 SRS Channel Model

1. Per section 5.1.3.3.7 of the O-RAN AAL GAnP document [7] for the SRS High-PHY Profile, the SRS Channel model
2. of the AAL\_UPLINK\_High-PHY Profile supports acceleration of SRS.
3. The set of accelerated functions associated with the processing of SRS is as follows:
4. ? IQ decompression[1]
5. ? RE de-mapping
6. ? Channel estimation

#### 6.3.5.1 SRS input and output for AAL\_UPLINK\_High-PHY Profile

1. The AAL\_UPLINK\_High-PHY profile shall signal SRS Resource(s) per slot.
2. From the AAL Application, the SRS interface receives the associated parameters for the configuration of the SRS
3. Resource.
4. The output data consists of the channel estimation metrics

#### 6.3.5.2 SRS Parameters

1. The following parameters are required to be supported by the AALI implementation when offloading operations. The
2. AAL Application shall supply all relevant parameters; for ease of reading, the parameters are grouped as follows, in
3. alignment with the O-RAN AAL GAnP document [7]: 18
4. SRS Parameters

##### Table 6.3.5.2-1: SRS Parameters

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **AAL-LPU parameters** | **Short summary** | **3GPP Spec Reference** |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| Channel Estimation (report types are per implementation and may be optional. Combinations - of one or  more, or even none - of report types linked to an SRS resource are also possible, and AAL-LPU shall indicate this in a capability) | | | | |
| srs-Usage | | | usage of the SRS resource:  beamManagement, codebook, nonCodebook, antennaSwitching | 3GPP TS 38.331, sec  6.3.2 |
| report type | | | Requested report type; may depend on usage |  |
| **SVD report**  **type** | iq-Representation | | Size and formats e.g. BFP, etc  used for encoding channel eigenvector matrices (format of U, V entries) | *See section 6.2.7 and*  *section 6.3.7* |
| singularValueRepresentati  on | | Size and formats e.g. BFP, etc  used for encoding channel singular values |
| prg-Size | | frequency resolution of SVD  report, e.g. RB, PRG, etc |
| ?  channel-SVD-Representra tion | | at the required resolution |
| **H (raw**  **channel) report type** | iq-Representation | | Size and formats e.g. BFP, etc  used for encoding channel matrices (format of H entries) | *See section 6.2.7 and*  *section 6.3.7* |
| prg-Size | | frequency resolution of H report,  e.g. RB, PRG, etc |
| ? channel-IQ-Matrix | | at the required resolution |
| **SINR report**  **type** | prg-Size | | frequency resolution of SINR  report, e.g. RB, PRG, etc |  |
| ? sinr-Report | | at the required resolution (per symbol) |  |
| **2D-DFT**  **basis report type** | prg-Size | | Frequency resolution of 2D-DFT  reports, e.g. RB, PRG, etc |  |
| ?  channel-2D- DFT-Repres entation | beam-Indi  ces | Strongest K\_DFT\_beams 2D-  DFT beam indices per SRS basis vector |  |
| beam-Val  ues | Measured beam values for  K\_DFT\_beams strongest 2D-DFT beams per SRS basis vector |
| Rank | Channel rank |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **Additional report types can be added** |  | |  |  |
| RE demapping | | | | |
| numAntPorts | | | N\_{ap}^{SRS}: number of SRS Ports | 3GPP TS 38.211, sec  6.4.1.4.1 |
| cyclicShift | | | n\_{SRS}^{CS}: cyclic shift | 3GPP TS 38.211, sec  6.4.1.4.2 |
| sequence-ID | | | n\_{ID}^{SRS}: SRS sequence identity | 3GPP TS 38.211, sec  6.4.1.4.2 |
| groupOrSequenceHopping | | | SRS Group and Sequence Hopping: Group, sequence or neither | 3GPP TS 38.211, sec  6.4.1.4.2 |
| Frequency domain | bwp-Start | | Start, w.r.t. CRB, of bandwidth part: VRBs indexing is relative to the Bandwidth part for the allocation | 3GPP TS 38.211, sec  6.3.1.7 |
| bwp-Size | | Size of bandwidth part: VRBs indexing is relative to the Bandwidth part for the allocation | 3GPP TS 38.211, sec  6.3.1.7 |
| subcarrierSpacing | | subcarrier spacing impacts waveform generation, including centering | 3GPP TS 38.211, sec  4.2, 5.3.1 |
| combSize | | K\_{TC}: transmission comb number | 3GPP TS 38.211, sec  6.4.1.4.2 |
| combOffset | | ar{k}\_{TC}: transmission comb offset | 3GPP TS 38.211, sec  6.4.1.4.3 |
| frequencyShift | | n\_{shift}: frequency domain shift value | 3GPP TS 38.211, sec  6.4.1.4.3 |
| frequencyPosition | | n\_{RRC}: frequency domain position | 3GPP TS 38.211, sec  6.4.1.4.3 |
| Frequency Hopping Signaling Alt-1: RRC  parameters | configInd ex | C\_{SRS}: SRS bandwidth config index | 3GPP TS 38.211, sec  6.4.1.4.3 |
| bandwidth Index | B\_{SRS}: SRS bandwidth index | 3GPP TS 38.211, sec  6.4.1.4.3 |
| frequency Hopping | b\_{hop}: frequency hopping | 3GPP TS 38.211, sec  6.4.1.4.3 |
| Frequency Hopping Signaling Alt-2: L2  computed fields | srs-Bandw idthSize | m\_{SRS,b}: SRS bandwidth size | 3GPP TS 38.211, sec  6.4.1.4.3 |
| srs-Bandw idthStart | PRB index (w.r.t. CRB0) for the start of SRS signal transmission, per symbol | 3GPP TS 38.211, section 6.4.1.4.2 |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| Time domain | numSymbols | N\_{symb}^{SRS}: number of consecutive OFDM symbols for SRS | 3GPP TS 38.211, sec  6.4.1.4.1 |
| timeStartPosition | l\_0: the starting position in the time domain given | 3GPP TS 38.211, sec  6.4.1.4.1 |
| t-SRS | T\_{SRS}: periodicity for SRS | 3GPP TS 38.211, sec  6.4.1.4.3 |
| t-Offset | T\_{offset}: slot offset | 3GPP TS 38.211, sec  6.4.1.4.3 |
| numRepetitions | Corresponds to R: Repetition factor | 3GPP TS 38.211, sec  6.4.1.4.3 |

</div>

1

### 6.3.6 PRACH Channel Model

1. Per section 5.1.3.3.7 of the O-RAN AAL GAnP document [7] for the PRACH High-PHY Profile, the PRACH Channel
2. model of the AAL\_UPLINK\_High-PHY Profile supports acceleration of PRACH.
3. The set of accelerated functions associated with the processing of PRACH is as follows:
4. ? IQ decompression[1]
5. ? RE de-mapping
6. ? Root sequence generation and correlation
7. ? IFFT
8. ? Noise estimation
9. ? Peak search for power delay profile
10. ? Preamble detection and delay/timing advance estimation

#### 6.3.6.1 PRACH input and output for AAL\_UPLINK\_High-PHY Profile

1. The AAL\_UPLINK\_High-PHY profile shall signal PRACH Resource Occasion(s) per slot.
2. From the AAL Application, the PRACH interface receives the associated parameters for the configuration of the
3. PRACH Occasion.
4. The output data consists of the PRACH detection outcome and metrics

#### 6.3.6.2 PRACH Parameters

1. The following parameters are required to be supported by the AALI implementation when offloading operations. The
2. AAL Application shall supply all relevant parameters; for ease of reading, the parameters are grouped as follows, in
3. alignment with the O-RAN AAL GAnP document [7]: 22
4. PRACH Parameters

##### Table 6.3.6.2-1: PRACH Parameters

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **AAL-LPU parameters** | **Short summary** | **3GPP Spec Reference** |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| Preamble Detection + Delay Estimation | | |
| ? preambleIndex[\*] | list of detected preambles, per RO |  |
| ? timingAdvanceOffset[\*] | per detected preamble & RO: timing advance | 3GPP TS 38.213, sec 4.2 |
| ? detection metrics:   * preamblePwr[\*] * preamble-SNR[\*] | per detected preamble & RO: SINR, Rx Power, etc. |  |
| Peak Search | | |
| <see Root Sequence Correlation> | Correlation is over the root sequences with valid preambles in each RACH occasion. The mechanism for detecting peaks is per implementation. |  |
| Noise Estimation | | |
| <per implementation> | One possibility is to perform noise estimation on an unused root sequence, in which case the identity of the unused root sequence can be signaled.  NOTE: Noise estimation is implementation-specific, and this channel profile does not currently assume any one implementation. |  |
| iFFT | | |
| <based on RE mapping parameters and sequence length> | The formula for generating the PRACH waveform is provided in the reference to the right. | 3GPP TS 38.211, sec 5.3.2 |
| Root Sequence Correlation | | |
| restrictedSetConfig | Configuration of an unrestricted set or one of two types of restricted sets, type A and type B | 3GPP TS 38.211, sec 6.3.3.1 |
| numPreambleIndices | N\_{preamble}^{total}: number of preambles, per PRACH occasions | 3GPP TS 38.213, section 8.1 |
| startPreambleIndex | preamble index start for each PRACH occasion in this PRACH configuration | 3GPP TS 38.213, section 8.1 |
| prach-ZeroCorrConf | PRACH Zero CorrelationZone Config which is used N\_{cs}: cyclic shift interval | 3GPP TS 38.211, sec 6.3.3.1 |
| RE Demapping | | |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **Frequency Domain** | num-FD-RA | From M: number of FDM occasions per PRACH slot | 3GPP TS 38.211, sec 6.3.3.2 |
| prach-FrequencyOffset | k1[\*]: offset in units of BWP REs (per RO) | 3GPP TS 38.211, sec 5.3.2 |
| ul-BWP-PUSCH-SCS | u\_{PUSCH}: subcarrier spacing of UL BWP and of maximal SCS BWP | 3GPP TS 38.211, sec 5.3.2 |
| prach-SubcarrierSpaci ng | u\_{PRACH}: subcarrier spacing of PRACH preamble | 3GPP TS 38.211, sec 5.3.2 |
| prach-GuardbandOffse t | ar{k}: guard offset from k1 (can be derived from the SCS for PRACH and PUSCH and PRACH format) | 3GPP TS 38.211, sec 6.3.3 |
| **Time Domain** | prach-StartSymbol | starting symbol | 3GPP TS 38.211, sec 6.3.3.2,  Tables 6.3.3.2-2 to 6.3.3.2-4 |
| prach-Format | formats of the PRACH slot (0, 1, 2, 3, A1, ... A3/B3) | 3GPP TS 38.213, sec 9.2.2 |
| numPRACH-Ocas | From N\_t^{RA,slot}: number of Time domain PRACH occasions within a PRACH slot | 3GPP TS 38.213, sec 9.2.2 |
| cyclicPrefix | Cyclic prefix type. Impacts time-domain allocation, including waveform generation | 3GPP TS 38.211, sec 4.2, 5.3.1  3GPP TS 38.214, Table 5.1.2.1-1 |

</div>

1

### 6.3.7 Beamforming

* 1. In this release, the AAL\_UPLINK\_High-PHY profile supports the following beamforming methods available for OFH
  2. signaling:
  3. - Predefined-Beam Beamforming, as defined in section 10.4.2.1 of [8];
  4. - Weight-based Dynamic Beamforming, as defined in section 10.4.2.2 of [8];
  5. - Attribute-Based Dynamic Beamforming, as defined in section 10.4.3 of [8];
  6. - Channel-Information-Based Beamforming, as defined in section 10.4.4 of [8]. 9

#### 6.3.7.1 Predefined-Beam Beamforming

1. The AALI shall support the AAL Application signaling as described in section 6.2.7.1

#### 6.3.7.2 Weight-based Dynamic Beamforming

1. The AALI shall support the AAL Application signaling of the following parameters, as needed for
2. AAL\_UPLINK\_High-PHY profile signaling of beamforming weight vectors of (bfwI, bfwQ) in C-Plane Extensions 1,
3. 11, 19 [8]:

##### 1 Table 6.3.7.2-1: Weight-based Dynamic Beamforming Parameters for Uplink

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **AAL-LPU Parameters** | **Summary** | **AAL-LPU Role** |
| AAL-LPU ? AAL Application | | |
| Channel Estimation Abstraction | A representation of SRS-based channel observations, as documented in the SRS channel model in section 6.3.5.2, e.g. for usage: codebook or usage: noncodebook | Signals an abstraction of the Channel Estimates to the AAL Application |
| AAL Application ? AAL-LPU | | |
| rnti [\*] | Selected UEs for scheduling (for an illustration refer to the L users referenced in Appendix J.4 of [8] | Compute combining weights for the selected UEs and Precoders, e.g. based on the reported Channel Estimation and its Abstraction.  Signal to O-RU beamforming vectors of weights (bfwI, bfwQ) over C-Plane for the AAL Application-selected UEs and Precoders |
| ul-TPMI | UE-based Precoder: selected precoding matrix for scheduling the UEs (see section 6.3.1.5 in of 3GPP TS 38.211) |

</div>

2

1. The High-PHY AAL API shall be extensible to allow, in future releases, the optional ability for the beamforming
2. weights to be generated outside the AAL-LPU that consumes them for generating the appropriate C- and U-plane
3. signaling by the accelerator, e.g. to generate the corresponding U-Plane eAxC I/Q sample streams and C-plane ueId
4. field(s).

7

#### 6.3.7.3 Attribute-Based Dynamic Beamforming

1. The AALI shall support the AAL Application signaling as described in section 6.2.7.3

#### 6.3.7.4 Channel-Information-Based Beamforming

1. The AALI shall support the AAL Application signaling of the following parameters, as needed for AAL-LPU-signaling
2. of channel estimate vectors of (ciIsample, ciQsample) in C-Plane Section 6 [8]:

##### Table 6.3.7.4-1: Channel-Information-Based Beamforming Parameters for Downlink

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **AAL-LPU Parameters** | **Summary** | **AAL-LPU Role** |
| AAL-LPU ? AAL Application | | |
| [Channel Estimation Abstraction] | A representation of SRS-based channel observations, as documented in the SRS channel model in section 6.3.5.2, e.g. for usage: codebook or usage: noncodebook | Signals an abstraction of the Channel Estimation the AAL Application |
| AAL Application ? AAL-LPU | | |
| rnti | Selected UEs for scheduling (for an illustration refer to the L users referenced in Appendix J.4 of [8] | Signal to O-RU the Channel Estimates for the AAL Application-selected UEs and Precoders |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| chosenLayers[\*] | Per UE: Selected precoding matrix for scheduling the UEs (see section 6.3.1.5 in of 3GPP TS 38.211) |  |

</div>

1

2

1

2 Annex A [informative] Stage-3 Support for

3 AAL\_DOWNLINK\_High-PHY and AAL\_UPLINK\_High-PHY

4 using FAPI

1. This annex illustrates how SCF-222 [i.1] and SCF-223 [i.2] can be used to provide stage-3 support for the
2. AAL\_DOWNLINK\_High-PHY and AAL\_UPLINK\_High-PHY profiles in this document.
3. In particular:
4. ? Profile capabilities (sections 6.2.2 and 6.3.2) and Configurations (sections 6.2.2b and 6.3.2b) are supported via
5. the SCF P5 interface
6. ? Profile slot-level APIs (DL sections 6.2.3 - 6.2.7, UL sections 6.3.3 - 6.3.7) are supported via the SCF P7
7. interface
8. ? Channel Models referenced in this document correspond to PDUs, which are transported over SCF P7 APIs in

13 SCF-222

1. NOTE:
2. ? this illustration does not preclude other stage-3 implementations of the the stage-2 APIs referenced this
3. document, nor does it preclude the addition of other features or extensions in the future.
4. ? alignment of this document with non-O-RAN Alliance specifications is not required. 18
5. An illustration of this stage-3 support is further illustrated below for mapping of the CSI-RS Channel Model parameters
6. from section 6.2.5 to CSI-RS PDU and related parameters in SCF-222 [i.1] and SCF-223 [i.2]:

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **AAL-LPU Parameters** | | **Summary** | **SCF-222 [i.1] / SCF-223 [i.2]**  **Reference [i.1]** |
| Sequence Generation | | | |
| n\_{ID} or c\_{init}[l] | | n\_{ID}: scrambling id  c\_{init}[l]: scrambling initialization for symb [l] | *ScrambId* signals n\_{ID} |
| Modulation | | | |
| <acceleration based on hard-coded values> | | CSI-RS uses QPSK modulation | <QPSK>, implicit |
| Precoding | | | |
| *See section 6.2.7* | | Conceptually similar to FH signaling when precoding for Cat-  B. 3GPP leaves DL precoding to implementation. | *Precoding and Beamforming*  Attribute-based beamforming is supported in SCF-223 |
| RE Mapping | | | |
| Frequency Domain | u, u\_{0} | subcarrier spacing impacts waveform generation, including centering | *SubcarrierSpacing* signals u |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
|  |  |  | The full set of numerologies, including u\_{0} is semistatically configured in P5 *dlFrequency*. |
| startingRB | PRB where this CSI resource starts in relation to CRB#0 | *StartRB* signals startingRB |
| nrofRBs | Number of PRBs across which this CSI resource spans. | *NrOfRBs* signals nrofRBs |
| Frequency Domain Allocation | Bitmap defining the frequencyDomainAllocation, with interpretation subject to the Row selection for table 7.4.1.5.3-1 | *FreqDomain* signals Frequency Domain Allocation |
| CSI-RS locations Row | row indicating the CSI-RS location in table 7.4.1.5.3-1. Can be used to derive;   * density ? (see also Frequency Density) * cdmType * ports * ar{k} in the (ar{k},   ar{l})-tuple | *Row* signals CSI-RS locations Row |
| Time Domain | Density Dot5 Prb Location | Indicates whether even or odd PRBs are occupied by CSI-RS.  Applicable when density = dot5 (0.5) | *FreqDensity* signals Density Dot5 Prb Location |
| CSI-RS locations Row | row indicating the CSI-RS location in table 7.4.1.5.3-1. Can be used to derive;   * ar{l} in the (ar{k},   ar{l})-tuple | *Row* signals CSI-RS locations Row |
| l\_0 | value of l\_0 for the interpretation of table 7.4.1.5.3-1. Signaled by RRC parameter firstOFDMSymbolInTimeDomain | *SymbL0* signals l\_0 |
| l\_1 | value of l\_1 for the interpretation of table 7.4.1.5.3-1. Signaled by RRC parameter firstOFDMSymbolInTimeDomain2 | *SymbL1* signals l\_1 |
| Cyclic Prefix | Cyclic prefix type. Impacts time- domain allocation, including waveform generation | *CyclicPrefix* signals Cyclic Prefix |
| Power Offset | | | |
| [Power offset w.r.t. SSS] | | power offset with respect to SSS | *powerControlOffsetProfileNR* and *powerControlOffsetSSProfileNR* signal power offset via 3GPP look-up tables. |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
|  |  | *csiRsPowerOffsetProfileSSS* signals actual "Ratio of CSI-RS EPRE to SSS EPRE" [i.1]. |

</div>

1

2

1 History

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Date** | **Revision** | **Description** |
| 2024.12.10 | 07.00 | Addition of new parameters for LDPC decoding in PUSCH Data parameters (clause 6.3.3.2). |
| 2024.03.25 | 06.00 | Published from version 05.00.02 |
| 2023.03.17 | 05.00 | Published from version 04.00.02 |
| 2022.11.21 | 04.00 | Published from version 03.00.04 |
| 2022.07.29 | 03.00 | Published from version 02.00.03 |
| 2022.03.29 | 02.00 | Published from version 01.00.01 |
| 2021.11.15 | 01.00 | Published from version 00.00.12 |

</div>

2
---

- View in [GitHub Mode]({{site.github_page_url}}/O-RAN.WG6.AAL-HI_PHY-R004-v07.00.docx.md).
- Go back to [Table of Contents]({{site.baseurl}}/).
- Download the [Original Document]({{site.download_url}}/O-RAN.WG6.AAL-HI_PHY-R004-v07.00.docx).
