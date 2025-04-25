## O-RAN.WG6.AAL FEC.R004-v04.00.docx

- View in [Reader Mode](https://simewu.com/spec-reader/pages/06-WG6/O-RAN.WG6.AAL%20FEC.R004-v04.00.docx).
- Go back to [Table of Contents](../README.md).
- Download the [Original Document](https://github.com/Simewu/spec-reader/raw/refs/heads/main/documents/O-RAN.WG6.AAL FEC.R004-v04.00.docx).

---

|  |
| --- |
| ![webwxgetmsgimg (7).jpeg](../assets/images/bea03973c631.jpg)O-RAN.WG6.AAL FEC-R004-v04.00 |

|  |
| --- |
| Technical Specification |
|  |

|  |
| --- |
| O-RAN Work Group 6  Acceleration Abstract Layer  FEC Profiles  Testing Template |

|  |
| --- |
|  |
| Copyright (C) 2024 by the O-RAN ALLIANCE e.V.  The copying or incorporation into any other work of part or all of the material available in this specification in any form without the prior written permission of O-RAN ALLIANCE e.V. is prohibited, save that you may print or download extracts of the material of this specification for your personal use, or copy the material of this specification for the purpose of sending to individual third parties for their information provided that you acknowledge O-RAN ALLIANCE as the source of the material and that you inform the third party that these conditions apply to them and that they must comply with them.  O-RAN ALLIANCE e.V., Buschkauler Weg 27, 53347 Alfter, Germany  Register of Associations, Bonn VR 11238, VAT ID DE321720189 |

Contents

List of figures 5

List of tables 5

Foreword 6

Modal verbs terminology 6

Executive summary 6

Introduction 6

1 Scope 7

2 References 7

2.1 Normative references 7

2.2 Informative references 8

3 Definition of terms, symbols, and abbreviations 8

3.1 Terms 8

3.2 Symbols 8

3.3 Abbreviations 8

4 Overview 9

4.1 Purpose 9

4.2 Document Structure 12

5 AALi Configuraton and Management 13

5.1 AAL Configuration and Management 13

5.2 Initalization and Configuration 13

5.2.1 Get Number of AAL LPU's 13

5.2.2 Get AAL-LPU Fine Grained Capabilities 13

5.2.3 Setup and Allocate AAL LPU Queues 14

5.2.4 Configure AAL-LPU Queues 14

5.3 AAL-LPU Management and AAL-LPU Queue management 14

5.4. AAL Statistics 14

6 AAL Profile Specifications 15

6.1 Profile Specifications Overview 15

6.1.1 Operation Representation 15

6.1.2 Profile Capabaillities 16

6.1.3 Memory Management 16

6.2 O-DU AAL PDSCH FEC Profile Specification 16

6.2.1 AAL FEC PDSCH Profile Capabilities 16

6.2.2 AAL PDSCH FEC Profile Operations 18

6.3 O-DU AAL PUSCH FEC Profile Specification 19

6.3.1 AAL FEC PUSCH Profile Capabilities 19

6.3.2 AAL PUSCH FEC Profile Operations 21

6.4 AAL Profile API Definitions 22

6.4.1 O-RAN AAL FEC API Terminology 22

Annex (informative): Change History 30

# List of figures

Figure 4.1-1 AAL\_PDSCH\_FEC Profile 10

Figure 4.1-2 AAL\_PUSCH\_FEC Profile 11

# List of tables

Table 5.2.2-1: AAL-LPU Capabilities 14

Table 5.2.4-1: AAL-LPU Queue Configuration 15

Table 6.1.1.1-1: AAL\_PDSCH\_FEC Profile Capabilities 18

Table 6.2.2-1: AAL\_PDSCH\_FEC Profile parameters 19

Table 6.2.2.1-1: CB-mode parameters 19

Table 6.2.2.2-1: TB-mode parameters 19

Table 6.3.1.2-1: AAL\_PUSCH\_FEC Profile capabilities 21

Table 6.3.2-1: AAL\_PUSCH\_FEC Profile Parameters 22

Table 6.3.2.1-1: AAL\_PUSCH\_FEC Profile CB-Mode Parameters 22

Table 6.3.2.2-1: AAL\_PUSCH\_FEC Profile TB-Mode Parameters 23

# Foreword

This Technical Specification (TS) has been produced by WG6 of the O-RAN Alliance.

The content of the present document is subject to continuing work within O-RAN and may change following formal O-RAN approval. Should WG6 the O-RAN Alliance modify the contents of the present document, it will be re-released by O-RAN with an identifying change of version date and an increase in version number as follows:

version xx.yy.zz

where:

xx: the first digit-group is incremented for all changes of substance, i.e. technical enhancements, corrections, updates, etc. (the initial approved document will have xx=01). Always 2 digits with leading zero if needed.

yy: the second digit-group is incremented when editorial only changes have been incorporated in the document. Always 2 digits with leading zero if needed.

zz: the third digit-group included only in working versions of the document indicating incremental changes during the editing process. External versions never include the third digit-group. Always 2 digits with leading zero if needed.

# Modal verbs terminology

In the present document "**shall**", "**shall not**", "**should** ", "**should not**", "**may**", "**need not**", "**will**", "**will not**", "**can**" and "**cannot**" are to be interpreted as described in clause 3.2 of the O-RAN Drafting Rules (Verbal forms for the expression of provisions).

"**must**" and "**must not**" are **NOT** allowed in O-RAN deliverables except when used in direct citation.

# Executive summary

Void

# Introduction

Void.

# 1 Scope

The present document specifies the Acceleration Abstraction Layer for the AAL\_PDSCH\_FEC and AAL\_PUSCH\_FEC Profiles as defined in [7], including the AAL and the management and orchestration requirements of AAL-LPUs providing HW Accelation for the fore mentioned AAL profiles.

# 2 References

## 2.1 Normative references

References are either specific (identified by date of publication and/or edition number or version number) or non-specific. For specific references, only the cited version applies. For non-specific references, the latest version of the referenced document (including any amendments) applies.

NOTE: While any hyperlinks included in this clause were valid at the time of publication, O-RAN cannot guarantee their long-term validity.

The following documents contain provisions which, through reference in this text, constitute provisions of the present document. 3GPP references refer to 3GPP release 16.

1. 3GPP TR 21.905: "Vocabulary for 3GPP Specifications".
2. Void
3. WG6 2020 Use Case for BBU Pooling, 2019.
4. 3GPP TS 38.211: "NR; Physical channels and modulation".
5. 3GPP TS 38.212: "NR; Multiplexing and channel coding".
6. Void
7. O-RAN WG6 Acceleration Abstraction Layer General Aspects and Principles
8. O-RAN WG6 Acceleration Abstraction Layer Common API
9. OSC AAL Specifications [o-ran-sc/o-du/phy/aal](https://gerrit.o-ran-sc.org/r/gitweb?p=o-du/phy.git;a=tree;f=aal;hb=e1d2661715dc40d2b25e3ce89ac524bc0b13a97a)

## 2.2 Informative references

References are either specific (identified by date of publication and/or edition number or version number) or non-specific. For specific references, only the cited version applies. For non-specific references, the latest version of the referenced document (including any amendments) applies.

NOTE: While any hyperlinks included in this clause were valid at the time of publication, O-RAN cannot guarantee their long-term validity.

The following referenced documents are not necessary for the application of the present document, but they assist the user with regard to a particular subject area.

1. O-RAN Software Community <https://wiki.o-ran-sc.org/display/ORAN>
2. DPDK coding style <https://doc.dpdk.org/guides/contributing/coding_style.html>
3. 3GPP TR 38.300: "NR; NR and NG-RAN Overall Description".

# 3 Definition of terms, symbols, and abbreviations

## 3.1 Terms

For the purposes of the present document, the terms and definitions given in [7] apply.

## 3.2 Symbols

For the purposes of the present document, the symbols given in apply: Not applicable

## 3.3 Abbreviations

For the purposes of the present document, the abbreviationsapply:

AAL Acceleration Abstraction Layer

AALi Acceleration Abstraction Layer interface

AAL-LPU Accelleration Abstraction Layer Logical Processing Unit

CB Code Block

CNF Containerized Network Function

NF Network Function

O-CU O-RAN Centralized Unit

O-DU O-RAN Distributed Unit

O-RU O-RAN Radio Unit

OS Operating System

OSC O-RAN Software Community

TB Transport Block

# 4 Overview

## 4.1 Purpose

The AAL General Aspects and Principles is described in [7] including a high-level architecture of the AAL and definition of the AAL profiles. This document details the AAL specification consisting of the description of the interface, information models and requirements to implement an AALi, for the AAL\_PUSCH\_FEC and AAL\_PDSCH\_FEC Profiles, shown below in Figure 4.1-1and Figure 4.1-2.

![](../assets/images/b0d0a8ce46b8.emf.png)

Figure 4.1-1 AAL\_PDSCH\_FEC Profile

![](../assets/images/b11241e4117f.emf.png)

Figure 4.1-2 AAL\_PUSCH\_FEC Profile

## 4.2 Document Structure

This present document is structured as follows: chapter 4 presents the overview and main purpose of this specification. Chapter 5 presents the AAL Hardware Acceleration Management specification for the AAL\_PUSCH\_FEC and AAL\_PDSCH\_FEC Profiles. Chapter 6 presents the common AALi requirements for an AAL-LPU supporting one or more AAL\_PUSCH\_FEC and/or AAL\_PDSCH\_FEC Profiles.

# 5 AALi Configuraton and Management

The chapter defines the common configuration and management aspects of the AALi as they relate to the AAL\_PUSCH\_FEC and AAL\_PDSCH\_FEC profiles. The AALi configuration and management APIs are the API's that an AAL application (O-DU) executes to configure and manage the AAL-LPU(s) that have been allocated to the application by the O-Cloud.

The below section describes the requirements of the AALi presented to the Application.

## 5.1 AAL Configuration and Management

## 5.2 Initalization and Configuration

As per sequence diagram in Chapter 4.1.1.3 in [7] the below list of high-level configuration and management interfaces shall be supported.

* Get Number of AAL LPU's
* Get AAL LPU Fine Grain capabilities
* Setup and Allocate AAL LPU Queues
* Configure AAL LPU Queues

### 5.2.1 Get Number of AAL LPU's

The AALi shall provide an interface to retrieve a count of the number of AAL-LPU's available to be used by the application.

### 5.2.2 Get AAL-LPU Fine Grained Capabilities

The AALi shall provide an interface to retrieve the capabilities of an AAL-LPU. The capabilities that shall be reported by the AALi are defined in Table 5.2.2-1.

Table 5.2.2-1: AAL-LPU Capabilities

|  |
| --- |
| Capability |
| The AAL Profile(s) supported by this instance of the AAL-LPU, AAL\_PUSCH\_FEC or AAL\_PDSCH\_FEC. |
| Maximum number of AAL-LPU Queues Supported by this instance of the AAL-LPU |
| Number of AAL-LPU Queues Currently configured by this instance of the AAL-LPU |
| AAL-LPU State (started, stop) |
| AAL-LPU Queue Size restrictions if any. |
| AAL-LPU maximum priority if the AAL-LPU supports Queues Priorities. |
| Whether the AAL-LPU supports per-queue interrupts (If not supported poll mode must be supported) |
| Any memory alignment requirements on input and output buffers to the AAL-LPU |
| External Memory sizes available to the LPU, in the case of HARQ for AAL\_PUSCH\_FEC profile this would be the size of the HARQ memory available to store HARQ buffers in. This size shall be reported in kB. |
| Any AAL Profile Specific capabalities that are supported as defined in Table 6.1.1.1-1: and |

### 5.2.3 Setup and Allocate AAL LPU Queues

The AALi shall provide an interface to setup and allocate AAL-LPU Queues.

### 5.2.4 Configure AAL-LPU Queues

The AALi shall provide an interface to configure the AAL-LPU's queues setup from section 5.2.3. The AAL-LPU Queue configuration API shall support the configurations defined in Table 5.2.4-1.

Table 5.2.4-1: AAL-LPU Queue Configuration

|  |
| --- |
| Queue Configuration |
| The size of the queue to configure. This is the number of entries a queue can hold. |
| The priority of the queue if priority is supported. |
| AAL Profile that is supported, either AAL\_PUSCH\_FEC or AAL\_PDSCH\_FEC |

## 5.3 AAL-LPU Management and AAL-LPU Queue management

As per sequence diagram in Clause 5.3.2 in [8] the below list defines the high-level AAL-LPU and AAL-LPU Queue management interfaces shall be supported by an AAL Implementation.

* Start AAL-LPU
* AAL-LPU Queue Start
* AAL-LPU Queue Stop
* AAL-LPU Stop
* Close AAL-LPU

## 5.4. AAL Statistics

The AALi shall provide an interface to retrieve statistics from an AAL-LPU Device and/or AAL-LPU Queue. The statistics shall include error counts. In addition, the AAL Implementation shall provide an interface to reset statistic counters in the AAL-LPU.

# 6 AAL Profile Specifications

## 6.1 Profile Specifications Overview

This section contains information for each supported AAL profile . A profile may provide several APIs for specific profile configuration in addition to the general AAL configuration APIs. Profile specific configuration shall be applied on a per queue basis and only for functionality that cannot be changed at run time. Each profile shall define a capabilities list that will be used to define the operations supported by the AAL-LPU.

### 6.1.1 Operation Representation

Operations offloaded to the AAL-LPU are represented by a single operation context that shall include all necessary information required by the AAL Implementation to process the operation.

The operation context defines the operation type as supported by the AAL Profile. It includes an operation status, a reference to the operation specific data, which can vary in size and content depending on the operation/profile being provisioned. Application software is responsible for specifying all the operation-specific fields that are then used by the AAL-LPU to process the requested operation.

Scheduling of AAL operations on an application data path is performed using a burst oriented asynchronous API set. A queue on an AAL-LPU accepts a burst of operations (1 to N number of operations) using enqueue API. The enqueue API will place the operations to be processed on the AAL-LPU's hardware input. The dequeue API will retrieve any processed operations available from the queue on the AAL-LPU.

### 6.1.2 Profile Capabaillities

Each Profile has a set of capabilities which capture the functions supported by each implementation. This includes optional features such a interrupts and debug interfaces. The AAL shall provide an API to report the capabilities of the underlying AAL implementation as per clause 5.2.2.

### 6.1.3 Memory Management

The AAL Implementation shall provide any profile specific memory management (examples allocate and free memory) as required by the AAL Implementation.

## 6.2 O-DU AAL PDSCH FEC Profile Specification

As per O-RAN AAL GAnP document [7] the PDSCH FEC Profile shall support

* CRC Generation
* LDPC Encoding
* PDSCH Rate Matching

### 6.2.1 AAL FEC PDSCH Profile Capabilities

The AAL FEC PDSCH Profile interface shall support operations on both a code block (CB) and a transport block (TB) basis.

An operation can be performed on one CB at a time "CB-mode". An operation can be performed on one or multiple CBs that logically belong to a TB "TB-mode". The input data is the CB or TB input to the encoder. The output data is the ratematched CB or TB data.

The input and output buffers shall be allocated by the application according to 6.1.3.

The input buffer shall contain the input code block or transport block data the operation is to be performed on.

The output buffer is mandatory and is the encoded CB(s). In CB-mode it contains the encoded CB of size e (E in 3GPP TS 38.212 section 6.2.5). In TB-mode it contains multiple contiguous encoded CBs of size ea or eb. The output buffer is allocated by the application with enough room for the output data.

The following modes of operation shall be supported:

CB-mode: one CB (with CRC24B appended to the output buffer if required)

CB-mode: one CB making up one TB (with CRC16 or CRC24A appended to the output buffer if required)

TB-mode: one or more CB of a partial TB (with CRC24B(s) appended to the output buffer if required)

TB-mode: one or more CB of a complete TB (with CRC16, CRC24A and CRC24B(s) appended to the output buffer if required)

The AAL\_PDSCH\_FEC Profile shall list the CRC's supported in its capabilities. The AAL Implementation of the AAL\_PDSCH\_FEC Profile shall provide the flexibility for the application to configure the operation in CB-mode with application selected CRC type and TB-mode with application selected CRC type.

In CB-mode an application can select whether CRC24A is appended to the CB or not. If configured not to append CRC24A then the application not the AAL Implementation, shall calculate and append CRC24A before calling AAL. The input data length is inclusive of CRC24A/B where present and is equal to the code block size K'. Note that code block length will always be a multiple of 8 and it is assumed that there are 8 bits packed into each byte.

In TB-mode, the input data length shall equal the total size of the CBs inclusive of any CRC24A and CRC24B..

In the case of a partial TB the AAL Application shall provide the index of the first CB in the group of CBs and the number of CBs in the group..

The number of CBs in the group should not be confused with c, the total number of CBs in the full TB (C as per 3GPP TS 38.212 section 5.2.2).

When using CB-mode, concatentation of the output code blocks into a transport block, is not performaned by the AAL Implementation.

The AAL\_PDSCH\_FEC Profile capabilities shall be reported to the application as per Table 5.2.2-1: AAL-LPU Capabilities . The AAL\_PDSCH\_FEC Profile capabilities are defined in Table 6.1.1.1-1: AAL\_PDSCH\_FEC Profile Capabilities, these capabilities shall be reported to the application andmay not be implemented by the AALi implementation. BG: a bit unlcear what's being specified- the application function of AAL functions here.

#### 6.1.1.1 Summary of AAL\_PDSCH\_FEC Profile capabilities

Table 6.1.1.1-1 lists the AAL\_PDSCH\_FEC profile capabilities that shall be reported to the application.

Should be silent here. Table 6.1.1.1-1: AAL\_PDSCH\_FEC Profile Capabilities

|  |
| --- |
| Capabilities |
| Whether interrupts are supported by this AAL-LPU |
| What CRCs are supported (CRC24A, CRC24B, CRC16) |
| Support for input Scatter Gather |
| Support for concatenation of non-byte-aligned output code blocks |

### 6.2.2 AAL PDSCH FEC Profile Operations

The following parameters shall be supported by the AAL Implementation when offloading operations.

Table 6.2.2-1: AAL\_PDSCH\_FEC Profile parameters

|  |
| --- |
| Parameters |
| The input TB or CB data. |
| The encoded rate matched TB or CB output buffer. |
| Capabilities selection for CRC Types required to be applied |
| Rate matching redundancy version [3GPP TS38.212, section 5.4.2] |
| LDPC Base graph 1 or LDPC Base graph 2. [3GPP TS38.212, section 5.2.2] |
| Zc, LDPC lifting size. [3GPP TS38.212, section 5.2.2] |
| Ncb, length of the circular buffer in bits. [3GPP TS38.212, section 5.4.2.1] |
| Qm, modulation order {2,4,6,8}. [3GPP TS38.212, section 5.4.2.2] |
| Number of Filler bits, n\_filler = K - K' [3GPP TS38.212 section 5.2.2] |
| Whether transport block or code block applies to this operation. |

#### 6.2.2.1 CB-Mode Parameters

When using code block mode the following additional parameters shall be supported by the AALi implementation

Table 6.2.2.1-1: CB-mode parameters

|  |
| --- |
| Parameters |
| E, length after rate matching in bits. [3GPP TS38.212, section 5.4.2.1] |

#### 6.2.2.2 TB-Mode Parameters

Table 6.2.2.2-1: TB-mode parameters

|  |
| --- |
| Description |
| Ea, length after rate matching in bits, r < cab. [3GPP TS38.212, section 5.4.2.1] |
| Eb, length after rate matching in bits, r >= cab. [3GPP TS38.212, section 5.4.2.1] |
| The total number of CBs in the TB or partial TB |
| The index of the first CB in the inbound mbuf data, default is 0 |
| cab, The number of CBs that use Ea before switching to Eb, [0:255] |

## 6.3 O-DU AAL PUSCH FEC Profile Specification

This section defines the AAL PUSCH FEC Profile specification. As per O-RAN AAL GAnP document [7] the AAL\_PUSCH\_FEC Profile shall upport the following functions

* PUSCH Rate De-matching
* LDPC Decoder
* CRC Check

NOTE: the AAL\_PUSCH\_FEC Profile only supports PUSCH Forward Error Correction. It shall not include support for PUSCH UCI

### 6.3.1 AAL FEC PUSCH Profile Capabilities

The decode operations are invoked through enqueue and dequeue functions. The operation context defines the parameters used to configure the operation to be accelerated. These parameters are defined in 6.3.2.

The input and output buffers shall be allocated by the application according to 6.1.3.The input buffer shall contain the encoded CB data to be decoded and is the Virtual Circular Buffer data stream with null padding. Each byte in the input circular buffer is the LLR value of each bit of the original CB.

The output buffer shall contain the hard\_output which is the decoded CBs of size K' (CRC24A/B or CRC16 is the last 24bit or 16bits in each decoded CB. The AAL Implementation shall give the option to drop the CRC. Where CRC Drop is set then the CRC will not be present at the end of the buffer). In transport block mode the hard\_output will contain the decoded transport block.

The AAL Implementation may support the optional soft output buffer which is an LLR rate matched output of size e (this is E as per 3GPP TS 38.212 section 6.2.5).

The AAL Implementation may support optional harq input buffer which is a buffer with the input to the HARQ combination function. If the AAL-LPU supports internal memory capability and is enabled, then the HARQ shall be stored in the AAL-LPU internal memory and shall not visible to the application.

The AAL Implementation may support the optional HARQ Combined output which is a buffer for the output of the HARQ combination function of the AAL-LPU. If the AAL-LPU supports internal memory capability and is enabled, then the HARQ is stored in memory internal to the AAL-LPU and not visible to application.

As with the AAL PDSCH FEC Profile, the decode interface works on both a code block (CB) and a transport block (TB) basis.

The following modes of operation shall be supported:

CB-mode: one CB (CRC24B if required)

CB-mode: one CB making up one TB (CRC16 or CRC24A if required)

TB-mode: one or more CB making up a partial TB (CRC24B(s) if required)

TB-mode: one or more CB making up a complete TB (CRC16, CRC24A and CRC24B(s) if required)

The buffer length is inclusive of CRC24A/B where present and is equal the code block size K'.

The first CB Virtual Circular Buffer (VCB) index is given by r but the number of the remaining CB VCBs shall be calculated by the AAL implementation.

The input buffer length shall equal the total size of the CBs inclusive of any CRC24A and CRC24B in case they were appended by the application.

#### 6.3.1.1 LLR Compression

The AAL PUSCH FEC Profile may support compression of the LLR bits used for the HARQ data. This improves PCIE memory bandwidth and memory storage. LLR compression support shall be reported through the AAL to the application..

#### 6.3.1.2 Summary of AAL\_PUSCH\_FEC Profile capabilities

Table 6.3.1.2-1 lists the AAL\_PUSCH\_FEC profile capabilities that shall be reported to the application.

BG: be silent or be specific- which others or say nothing. Table 6.3.1.2-1: AAL\_PUSCH\_FEC Profile capabilities

|  |
| --- |
| Capabilities |
| LLR size in bits. Each LLR is a two's complement number. This can be AAL-LPU implementation specific. |
| LLR numbers of decimals bit for arithmetic representation. This can be AAL-LPU implementation specific. |
| Type of CRC Support (CRC24A, CRC24B, CRC16) |
| CRC Dropping supported and configurable |
| HARQ Combine input enabling and disabling |
| HARQ Combine output enabling and disabling |
| Soft Output enabling and disabling |
| LDPC Iteration stop enabling and disabling, that is stopping on successful decode (syndrome check) |
| Whether Scatter Gather of input buffers is supported |
| Support for concatenation of non byte aligned output code blocks |
| If an AAL-LPU supports input/output HARQ compression. Compressed would be packed 6bit LLRs as opposed to 6bit LLR per byte |
| If an AAL-LPU supports input LLR compression. Packed 6bit LLR inputs. |
| If an AAL-LPU supports HARQ input to/from AAL-LPU's internal memory. |
| If an AAL-LPU supports HARQ output to/from AAL-LPU's internal memory. |
| If an AAL-LPU includes LLR filler bits in the circular buffer for HARQ memory. If not enabled, it is assumed the filler are not in HARQ memory and handled directory by the LDPC decoder. |

### 6.3.2 AAL PUSCH FEC Profile Operations

The following parameters shall be supported by the AAL Implementation when offloading operations.

Table 6.3.2-1: AAL\_PUSCH\_FEC Profile Parameters

|  |
| --- |
| Description |
| The input Virtual Circular Buffer for this code block, one LLR per bit of the original CB or TB. See **Error! Reference source not found.** |
| The hard decisions buffer for the decoded output, size K' for each CB when in code block mode, otherwise TB or partial TB output. See **Error! Reference source not found.** |
| The soft LLR output LLR stream buffer - optional |
| The HARQ combined LLR stream input buffer - optional. See **Error! Reference source not found.** |
| The HARQ combined LLR stream output buffer - optional. See **Error! Reference source not found.** |
| Optional capabilities configuration as per |
| Rate matching redundancy version [3GPP TS38.212, section 5.4.2.1] |
| The maximum number of iterations to perform in decoding CB in this operation - input |
| The number of iterations that were performed in decoding CB in this decode operation - output |
| LDPC Base graph 1 or 2. [3GPP TS38.212, section 5.2.2] |
| Zc, LDPC lifting size. [3GPP TS38.212, section 5.2.2] |
| Ncb, length of the circular buffer in bits. [3GPP TS38.212, section 5.4.2.1] |
| Qm, modulation order {1,2,4,6,8}. [3GPP TS38.212, section 5.4.2.2] |
| Number of Filler bits, n\_filler = K-K' [3GPP TS38.212 section 5.2.2] |
| Code Block or Transport Block |

#### 6.3.2.1 CB-Mode Parameters

When CB-Mode is used, the following additional parameters shall be suppored

Table 6.3.2.1-1: AAL\_PUSCH\_FEC Profile CB-Mode Parameters

|  |
| --- |
| Description |
| Rate matching output sequence length in bits or LLRs.  [3GPP TS38.212, section 5.4.2.1] |

#### 6.3.2.2 TB-Mode Parameters

When TB-Mode is used, the following additional parameters shall be supported

Table 6.3.2.2-1: AAL\_PUSCH\_FEC Profile TB-Mode Parameters

|  |
| --- |
| Description |
| Ea, length after rate matching in bits, r < cab. [3GPP TS38.212, section 5.4.2.1] |
| Eb, length after rate matching in bits, r >= cab. [3GPP TS38.212, section 5.4.2.1] |
| The total number of CBs in the TB or partial TB |
| The index of the first CB in the inbound mbuf data, default is 0 |
| cab, The number of CBs that use Ea before switching to Eb, [0:255] |

## 6.4 AAL Profile API Definitions

O-RAN and the O-RAN Software Community[7] has published a normative definition of the AAL FEC API's. The AAL FEC API definitions are based on the WG6 AAL FEC profile requirements in [7] and this document. Refer to AAL Repository [9] in the OSC for APIs decription details. This current version uses the git tag version oran\_e\_maintenance\_release\_v1.0

### 6.4.1 O-RAN AAL FEC API Terminology

The O-RAN AAL FEC API definition is based on DPDK, as such the naming convention and coding styles follow DPDK guidelines [i2]. This section gives an overview of the DPDK terminology mapping to the profile specification[9].

|  |  |
| --- | --- |
| **AAL FEC Profile Terminology** | **AAL FEC API Terminology** |
| AAL-LPU | Device ID |
| AAL Queue | Queue ID |
| AAL\_PDSCH\_FEC | RTE\_BBDEV\_OP\_LDPC\_ENC |
| AAL\_PUSCH\_FEC | RTE\_BBDEV\_OP\_LDPC\_DEC |

#### 6.4.1.1 Configuration and Management

The configuration and management interfaces are defined in rte\_bbdev.h in the O-RAN AAL Speciffication repo [9]

#### 6.4.1.2 FEC Profile Operations

The AAL profile operations are defined in rte\_bbdev\_op.h in the the O-RAN AAL Speciffication repo [9]. The mapping of profile definition to the API implementation for the AAL\_PDSCH\_FEC Profile parameters as defined previously in Table 6.2.2-1 is demonstrated below in

|  |  |
| --- | --- |
| Parameters from Table 6.2.2-1: 6.2.2-1 | DPDK rte\_bbdev\_op\_ldpc\_enc structure data field |
| The input TB or CB data. | struct rte\_bbdev\_op\_data input |
| The encoded rate matched TB or CB output buffer. | struct rte\_bbdev\_op\_data output |
| Capabilities selection for CRC Types required to be applied | /\*\* Flags from rte\_bbdev\_op\_ldpcenc\_flag\_bitmasks \*/  uint32\_t op\_flags; |
| Rate matching redundancy version [3GPP TS38.212, section 5.4.2] | uint8\_t rv\_index; |
| LDPC Base graph 1 or LDPC Base graph 2. [3GPP TS38.212, section 5.2.2] | uint8\_t basegraph; |
| Zc, LDPC lifting size. [3GPP TS38.212, section 5.2.2] | uint16\_t z\_c; |
| Ncb, length of the circular buffer in bits. [3GPP TS38.212, section 5.4.2.1] | uint16\_t n\_cb; |
| Qm, modulation order {2,4,6,8}. [3GPP TS38.212, section 5.4.2.2] | uint8\_t q\_m; |
| Number of Filler bits, n\_filler = K - K' [3GPP TS38.212 section 5.2.2] | uint16\_t n\_filler; |
| Whether transport block or code block applies to this operation. | /\*\* [0 - TB : 1 - CB] \*/  uint8\_t code\_block\_mode; |

Annex (informative):
Change History

|  |  |  |
| --- | --- | --- |
| Date | Revision | Description |
| 2021.05.06 | 00.00.01 | Initial draft of specification - Overview, Configuration and management, profile specifications. |
| 2021.07.06 | 00.00.02 | Updates to PDSCH FEC Profile to include code block concatenation. |
| 2022.03.24 | 02.00.00 | Added Reference to normative stage 3 implementation published in O-RAN Software Community. |
| 2022.06.17 | 03.00.00 | Added support for CBGTI |
| 2024.04.26 | 03.00.01 | Updated to ETSI template, removed and updated references. Clarified text and verbal forms. |
| 2024.07.29 | 03.00.02 | Editorial change to remove stray comment. |
| 2024.07.31 | 04.00.00 | Published as version 4 |
---

- View in [Reader Mode](https://simewu.com/spec-reader/pages/06-WG6/O-RAN.WG6.AAL%20FEC.R004-v04.00.docx).
- Go back to [Table of Contents](../README.md).
- Download the [Original Document](https://github.com/Simewu/spec-reader/raw/refs/heads/main/documents/O-RAN.WG6.AAL FEC.R004-v04.00.docx).
