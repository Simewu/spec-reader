## O-RAN.WG1.TR.Decoupled-SMO-Architecture-R004-v03.00.docx

- View in [Reader Mode](https://simewu.com/spec-reader/pages/11-WG1/O-RAN.WG1.TR.Decoupled-SMO-Architecture-R004-v03.00.docx).
- Go back to [Table of Contents](../README.md).
- Download the [Original Document](https://github.com/Simewu/spec-reader/raw/refs/heads/main/documents/O-RAN.WG1.TR.Decoupled-SMO-Architecture-R004-v03.00.docx).

---

![webwxgetmsgimg (7).jpeg](../assets/images/bea03973c631.jpg) **O-RAN-WG1.Decoupled-SMO-Architecture-R004-v3.00 v02.00.01**

Technical Report

O-RAN Work Group 1 (Use Cases and Overall Architecture)

Decoupled SMO Architecture

Prepared by the O-RAN ALLIANCE e.V. Copyright (C) 2024 by the O-RAN ALLIANCE e.V.

By using, accessing or downloading any part of this O-RAN specification document, including by copying, saving, distributing, displaying or preparing derivatives of, you agree to be and are bound to the terms of the O-RAN Adopter License Agreement contained in the Annex ZZZ of this specification. All other rights reserved.

O-RAN ALLIANCE e.V.
Buschkauler Weg 27, 53347 Alfter, Germany
Register of Associations, Bonn VR 11238
VAT ID DE321720189

1

Contents

List of figures 4

List of tables 4

Foreword 5

Modal verbs terminology 5

Introduction 5

1 Scope 6

2 References 6

2.1 Informative references 6

3 Definition of terms, symbols and abbreviations 7

3.1 Terms 7

3.2 Symbols 7

3.3 Abbreviations 8

4 SMO Context based on current O-RAN specifications 8

4.1 Existing services in O-RAN specifications 8

4.2 Other services and external terminations 10

5 SMO Services: Scenarios and Use Cases 11

5.1 RAN NF OAM related SMOSs 11

5.1.1 RAN NF Performance Assurance Management SMO Service (NFPM) 12

5.1.2 RAN NF Fault Supervision Management SMO Service (NFFM) 12

5.1.3 RAN NF Provisioning Management SMO Service (NFCM) 12

5.2 Non-RT RIC related SMOSs 13

5.2.1 rApps Management SMOS 13

5.3 Topology and Inventory related SMOS 13

5.3.1 Topology Exposure and Inventory Management SMOS 13

5.4 Service Management and Exposure (SME) SMOS 14

5.4.1 Overview 14

5.4.2 Use Case: SME reuse for SMO 14

5.5 Data Management and Exposure (DME) SMOS 14

5.5.1 Overview 14

5.5.2 Use Case: DME data types handling for SMO 14

5.6 O-Cloud resources management and orchestration related SMOSs 15

5.6.1 Network Function Orchestration SMOS (NFO) 15

5.6.1.1 Overview 15

5.6.2 Federated O-Cloud Orchestration and Management SMOS (FOCOM) 15

5.6.2.1 Overview 15

5.6.2.2 Use Case: O-Cloud management 15

5.7 RAN Network Slice Subnet Management SMOS 16

5.7.1 Overview 16

5.7.2 Use Case: RAN Network Slice Subnet Management 16

5.8 RAN Analytics SMOS 16

5.8.1 Overview 16

5.8.2 Use Case: RAN traffic analytics sharing with 5GC 17

5.9 Service Orchestration SMOS 17

5.9.1 Overview 17

5.9.2 Use Cases for SO SMOS 18

5.10 Service Assurance SMOS 18

5.10.1 Overview 18

5.10.2 Use Case: 18

5.11 Software package onboarding SMOS 19

5.11.1 Overview 19

5.12 AI/ML Workflow SMOSs 19

5.12.1 Overview 19

5.12.2 Use Cases 19

5.13 Policy Management and Information (PMI) SMOS 20

5.13.1 Overview 20

6 SMO Functions (SMOFs) 21

6.1 Possible Solutions for SMOF deployment 21

6.1.1 Overview 21

6.1.2 Solution Approach 1: RAN NF OAM SMO Function (RNOAMF) 21

6.1.3 Solution Approach 2: O-Cloud Resources Management and Orchestration SMO Function (ORMO SMOF) 21

6.1.4 Solution Approach x: Non-RT RIC SMO Function (nonRTR SMOF) 21

6.1.5 Solution Approach: RAN analytics SMOS in non-RT RIC (NONRTR SMOF) 22

6.1.6 Solution Approach: Service Orchestration and Assurance (SOSA) SMOF 23

6.1.7 Solution Approach: Separate SO SMOF and SA SMOF 24

6.2 Recommended Architectural Approach 25

6.2.1 Overview 25

7 Conclusion 27

Annex: Change History 47

# List of figures

Figure 4.1-1: Non-RT RIC Reference Architecture as per [i.3] 9

Figure 4.1-2: Categories of SMOSs based on documented O-RAN SMO capabilities 9

Figure 4.1-3 : SBA representation of the documented SMO services in July 2022 specifications 10

Figure 6.1.5-1: RAN Analytics SMOS in the non-RT RIC, in the SMO architecture 23

Figure 6.2.1-1: SMO capabilities represented as SMOSs in the SMO SBA approach 26

# List of tables

Table 7-1: Proposed SMOSs and status of work as of October 2023 28

# Foreword

This Technical Report (TR) has been produced by O-RAN Alliance.

# Modal verbs terminology

In the present document "**shall**", "**shall not**", "**should**", "**should not**", "**may**", "**need not**", "**will**", "**will not**", "**can**" and "**cannot**" are to be interpreted as described in clause 3.2 of the O-RAN Drafting Rules (Verbal forms for the expression of provisions).

"**must**" and "**must not**" are **NOT** allowed in O-RAN deliverables except when used in direct citation.

# Introduction

The O-RAN Service Management and Orchestration (SMO) covers a wide and diverse range of functions; some are specific to the Radio Access Network (RAN) domain while others are relatively more generic functions which integrate across RAN and other domains such as cloud infrastructure and other networks. The SMO includes the Non-RT RIC, and the O-RAN architecture assigns some specific SMO functions as being anchored inside or outside the Non-RT RIC Framework. There are several SMO functions which can be implemented in different ways by different solution providers. This study analyses how to improve O-RAN SMO architecture to support multi-vendor interoperability and it looks at integration of existing standardized functions with new ones defined in O-RAN.

There is a strong need for O-RAN to identify and decouple SMO Functions (SMOFs) and the related SMO Services (SMOSs) within the SMO for the following reasons:

1. Operators could have legacy systems covering some SMO Functions which need to integrate with other newer SMO Functions.
2. Operators could integrate SMO into their existing network, management, orchestration, and RAN control elements by consuming the services provided by SMO.
3. Deployment and scaling considerations could indicate a natural separation of functions into SMO Functions such that there is an M:N mapping of the number of different SMO Functions in an operator's network.
4. SMO Functions could be supplied by different vendors.
5. RAN-specific and generic functions are likely to have different development cycles.
6. The operational requirements, deployment, scaling, life cycle management of different components could be different.

There is an opportunity for O-RAN to provide more specification detail within the SMO in terms of realization of components and their connectivity. This would meet the needs of the industry which are listed above. The benefits of such specification work include:

1. Decoupling and better definition of the different SMO Functions fosters ecosystem partnerships and enables optimized solution choices for operators.
2. Decoupling and better definition of the different SMO Functions facilitates better standardized interactions between the RAN and non-RAN (e.g., transport and core) systems.
3. Specifying each of the SMO Functions and the corresponding SMO Services could help to better understand the security requirements of these SMO Functions rather than looking at the SMO as a black box from one vendor.

The objective of this Technical Report is to propose solutions for a decoupled SMO architecture to enable standardized interworking between SMO Functions from different vendors, so as to better serve the needs of mobile network operators.

# 1 Scope

The contents of the present document are subject to continuing work within O-RAN and may change following formal O-RAN approval. Should the O-RAN Alliance modify the contents of the present document, it will be re-released by O-RAN with an identifying change of version date and an increase in version number as follows:

version xx.yy.zz

where:

xx: the first digit-group is incremented for all changes of substance, i.e. technical enhancements, corrections, updates, etc. (the initial approved document will have xx=01). Always 2 digits with leading zero if needed.

yy: the second digit-group is incremented when editorial only changes have been incorporated in the document. Always 2 digits with leading zero if needed.

zz: the third digit-group included only in working versions of the document indicating incremental changes during the editing process. External versions never include the third digit-group. Always 2 digits with leading zero if needed.

The objective of this Technical Report is to study the high-level requirements for the decoupled SMO architecture, and propose solutions for the decoupled SMO architecture.

# 2 References

## 2.1 Informative references

References are either specific (identified by date of publication and/or edition number or version number) or non-specific. For specific references, only the cited version applies. For non-specific references, the latest version of the referenced document (including any amendments) applies.

NOTE: While any hyperlinks included in this clause were valid at the time of publication, O-RAN cannot guarantee their long term validity.

The following referenced documents are not necessary for the application of the present document but they assist the user with regard to a particular subject area.

1. 3GPP TR 21.905: "Vocabulary for 3GPP Specifications".
2. O-RAN.WG1.O-RAN-Architecture-Description, "O-RAN Working Group 1; O-RAN Architecture Description".
3. O-RAN.WG2.Non-RT-RIC-ARCH-TS, "O-RAN Working Group 2; Non-RT RIC Architecture Technical Specification".
4. O-RAN-WG4. MP.0-v09.00: "O-RAN Working Group 4 (Open Fronthaul Interfaces WG) Management Plane Specification".
5. O-RAN-WG10.OAM-Architecture-v07.00: "O-RAN Operations and Maintenance Architecture v07.00".
6. O-RAN-WG10.O1-Interface-v07.00: "O-RAN Operations and Maintenance Interface Specification v07.00".
7. O-RAN.WG1.Use-Cases-Analysis-Report-R003-v10.00: "O-RAN Working Group 1 Use Cases Analysis Report".
8. O-RAN.WG2.R1GAP, "O-RAN Working Group 2; R1 interface: General Aspects and Principles".
9. O-RAN.WG6.O2-GA&P-v02.00,"O2 Interface General Aspects and Principles"
10. O-RAN.WG1.Use-Cases-Detailed-Specification: "O-RAN Working Group 1 Use Cases Detailed Specification".
11. O-RAN.WG1.Slicing-Architecture-v08.00: "O-RAN Working Group 1 Slicing Architecture".
12. O-RAN.WG6.ORCH-USE-CASES-v04.00: "O-RAN.WG6.ORCH-USE-CASES-v04.00 Technical Specification*"*
13. O- RAN.WG2.R1 UCR, O-RAN Working Group 2 (Non-RT RIC and A1 interface WG) R1 Use Cases and Requirements
14. 3GPP TS 28.104 "3rd Generation Partnership Project; Technical Specification Group Services and System Aspects; Management and orchestration; Management Data Analytics (MDA)"
15. 3GPP TS 23.288 "3rd Generation Partnership Project; Technical Specification Group Services and System Aspects; Architecture enhancements for 5G System (5GS) to support network data analytics services"
16. 3GPP TS28.531 "3rd Generation Partnership Project; Technical Specification Group Services and System Aspects; Management and orchestration; Provisioning"
17. 3GPP TS28.532 "3rd Generation Partnership Project; Technical Specification Group Services and System Aspects; Management and orchestration; Generic management services
18. 3GPP TS28.541 "Management and orchestration; 5G Network Resource Model (NRM); Stage 2 and stage 3"
19. 3GPP TR28.801 "Telecommunication management; Study on management and orchestration of network slicing for next generation network"
20. 3GPP TS 28.530 "3rd Generation Partnership Project; Technical Specification Group Services and System Aspects; Management and orchestration; Concepts, use cases and requirements"

1. O-RAN.WG10.TAI-v01.00; "Topology Exposure and Inventory Management Services; Use Cases and Requirement Specification".

# 3 Definition of terms, symbols and abbreviations

## 3.1 Terms

For the purposes of the present document, the terms and definitions given in 3GPP TR 21.905 [i.1] and the following apply. A term defined in the present document takes precedence over the definition of the same term, if any, in 3GPP TR 21.905 [i.1].

For the purposes of the present document, the following terms apply:

**CNF:** Function in the network designed using cloud-native principles and orchestrated using cloud-native technologies.

**Non-RT RIC:** O-RAN Non-Real-Time RAN Intelligent Controller.Please refer to [i.3] for more information.

**Non-RT RIC Framework:** Please refer to [i.3] for more information.

**SMO:** A Service Management and Orchestration system as described in [i.2] Section 4.3.1

**SMO Service (SMOS):** Standardized cohesive set of management, orchestration and automation capabilities offered by an SMO Function.

**SMO Functions (SMOFs):** Internal SMO entities which provide one or more SMO Services.
Note: An SMO Function exposes standardized interfaces which enable interoperability between SMO Functions.

**VNF:** see definition in ETSI GR NFV 003.

## 3.2 Symbols

For the purposes of the present document, the following symbols apply:

NRB Transmission bandwidth configuration, expressed in units of resource blocks (for E-UTRA) <example symbol definition>

## 3.3 Abbreviations

For the purposes of the present document, the abbreviations given in 3GPP TR 21.905 [i.1] and the following apply. An abbreviation defined in the present document takes precedence over the definition of the same abbreviation, if any, in 3GPP TR 21.905 [i.1].

CNF Cloud-native Network Function

DME Data Management and Exposure

DMS Deployment Management Service

IMS Infrastructure Management Service

IV Inventory management

PNF Physical Network Function

SA Service Assurance

SME Service Management and Exposure

SMO Service Management and Orchestration

SMOF SMO Function

SMOS SMO Service

SO Service Orchestration

SOSA Service Orchestration and Assurance

TE Topology Exposure

VNF Virtualised Network Function

# SMO Context based on current O-RAN specifications

## Existing services in O-RAN specifications

According to definition, a SMOS is a set of capabilities offered by an SMOF. This clause summarizes SMO-related capabilities and services identified and/or defined in July 2022 O-RAN specifications.

The architecture of the SMO is captured in different O-RAN specifications, each focusing on different areas of SMO. The non-RT RIC architecture described in [i.3] specifies the reference architecture of the Non-RT RIC as part of the SMO framework, as shown in the figure 6-1 of [i.3] and reiterated below for visibility:

![A picture containing diagram  Description automatically generated](../assets/images/3bc99787d2e3.png)

Figure 4.1-1: Non-RT RIC Reference Architecture as per [i.3]

Based on the figure 4.1-1 above, the SMO contains a series of functionalities. Several R1 services are identified, and are being described in [i.8] chapter 3, for exposure via R1 interface:

* Service management and exposure services (SME)
* Data management and exposure services (DME)
* A1-related Services
* O1-related Services
* O2-related Services
* AI/ML Workflow Services.

In addition, the O2 services are described in [i.9], and there are two main services identified over O2 interface, O2DMS and O2IMS, which have the corresponding functionality coordinated via NFO and FOCOM respectively. The O1 services are identified in [i.6] and are represented as SMOSs in section 5 of this document.

The SMO capabilities have been specified in O-RAN WG specifications in various manners (either as interface services, or subsets of functions). Taking into consideration the main SMO capabilities in the July 2022 O-RAN specifications, there are three categories of SMO capabilities that can be derived and further be used as a base for the SMOS definitions:

* Non-RT RIC related SMOSs
* O-Cloud management and orchestration related SMOSs
* RAN NF OAM related SMOSs.

The three SMOS categories are depicted in figure 4.1-2 below.

![Shape  Description automatically generated](../assets/images/a5bd971e6c2e.png)

Figure 4.1-2: Categories of SMOSs based on documented O-RAN SMO capabilities

Figure 4.1-3 provides an SBA representation of the identified SMO capabilities (e.g., R1 Services and the R1 service interfaces, O2dms and O2ims services, RAN NF OAM services) based on July 2022 O-RAN specifications.

For consistency with the SBA approach of this document and the definition of a SMOS, these SMO capabilities are represented as candidates to be used as a basis for identifying SMOSs. Identification of SMOFs which produce the SMOSs are addressed in section 6 of this document.

![Graphical user interface, application  Description automatically generated](../assets/images/f7e2b09a8ecb.png)

Figure 4.1-3 : SBA representation of the documented SMO services in July 2022 specifications

The following sections of the present document will address*:*

1. The naming of the interfaces can be done as part of the normative stage 2 work based on the analysis and recommendations from section 5,6 and 7.
2. Though the figure does not explicitly illustrate, an objective for this study, is to determine a common set of SMOSs' across the SMOFs. When this is the case, these are indicated throughout the next sections, by explicit statements about use of several common SMOSs by the different SMOS producers.

## Other services and external terminations

Requirements for "External Terminations" described in Figure 4.1-1 are not yet addressed in the July 2022 O-RAN specifications.

An example of external exposure of SMO Services using SME and DME principles, can be represented in an SBA approach as depicted in figure 4.2-1.

![Diagram  Description automatically generated](../assets/images/454798550156.png)

Figure 4.2-1: SMO external terminations

In Figure 4.1-1, the "Other SMO framework functions" and the "Other Non-RT RIC framework functions" have been used as placeholder for aspects not yet defined in the O-RAN specifications from their services perspective.

Examples of essential functionality in SMO to be addressed in this study, include:

1. Service Orchestration, including aspects of coordinating the orchestration of a chain of RAN NFs, their connectivity, and the assurance of such RAN NF chaining.
2. Topology and Inventory management
3. Network Slice Subnet management (see [i.11]for use cases and functional description).

# SMO Services: Scenarios and Use Cases

## RAN NF OAM related SMOSs

The SMO manages O-RAN Network Functions (NFs) using the O-RAN OAM Architecture [WG10.OAM]. As listed in the O-RAN OAM architecture section 2.2.1.1 [WG10.OAM], these O-RAN Network functions (NFs) include the following radio side entities: Near-RT RIC, O-CU-CP, O-CU-UP, O-DU, and O-RU Managed Functions. As shown in "Figure 4.1-1: High Level Architecture of O-RAN" of the O-RAN Architecture Specification [WG1.ARCH], the O-RAN Network Functions communicate with the SMO via O1, A1 and Open Fronthaul M-plane interfaces. In the current O-RAN architecture, the NF-related Management Services (MnS) over the O1 interface and Open Fronthaul M-Plane interface are consumed by the SMO. As defined in 3GPP, MnS composed of 3 parts: Component A, B and C. In order to meet the demand for the consumption of MnS, e.g., collect data of MnS component B and C for intelligent analysis, and consume MnS component A for operating O-RAN NFs, we envision that the SMO needs to have the capability to consume the NF-related MnS and provide related services to different SMO Functions (SMOFs) as a set of RAN NF OAM SMO Services.

Examples of Management Services supported by O-RAN are listed in section 3.3.1.1 of [WG10.OAM] and section 2 of [WG10.O1]. As an example, in order to fulfil the UE service SLA assurance, Non-RT RIC will consume RAN NF OAM SMO Services to collect OAM data for analysis. Non-RT RIC will host policies and applications which can be used to generate actions which are executed through the SMO external interfaces, e.g., A1 and O1 interfaces. In order to fulfil the optimization goal or end user service SLA assurance in use cases such as Context-Based Dynamic HO Management for V2X, Flight Path Based Dynamic UAV Radio Resource Allocation, Radio Resource Allocation for UAV Application Scenario, QoE Optimization, RAN Slice SLA assurance [WG1.UC-DS], it is a pre-requisite that measurement data, RAN PM data, QoE data need to be collected and provided to Non-RT RIC for further analyzing.

Different intelligent use cases require different types of RAN management data, including performance data, alarm data, and NF NRM-related data. The SMO needs to have the capability to collect this data and provide it efficiently to SMOFs. The triggering of data collection and the consumption of data can be accomplished with SMO RAN NF OAM SMO Services. In alignment with [WG10.O1][WG4.M-Plane], the SMO offers the following three RAN NF OAM SMO Services, and details of each are described in sections 5.1.1, 5.1.2, and 5.1.3 respectively:

* RAN NF Performance Assurance Management SMO Service (NFPM): Provide RAN NF performance data collection obtained by consuming PM MnS via O1 interface and Open Fronthaul M-Plane interface.
* RAN NF Fault Supervision Management SMO Services (NFFM): Provide RAN NF fault data (e.g., Alarm) collection obtained by consuming FM MnS via O1 interface and Open Fronthaul M-Plane interface.
* RAN NF Provisioning Management SMO Services (NFCM): Provide RAN NF NRM-related data collection and modification services and obtained by consuming MnS via O1 interface and Open Fronthaul M-Plane interfaces.

The interfaces exposing the RAN NF OAM SMO Services for consumption by other SMOFs provide flexible mechanisms to allow their service consumers to narrow down the target of their requests (e.g., to specific areas, NFs, cells, etc.).

### RAN NF Performance Assurance Management SMO Service (NFPM)

#### Use Case: Performance Management for O-RAN NF instances

##### 5.1.1.1.1 High Level Description

To monitor real-time performance data and enable consumers within SMO to detect issues in advance, it is needed for SMOFs to consume performance measurement jobs of an NF. The NFPM SMOS provides a mechanism for the NFPM SMOS consumers to create and terminate the PM job as well as querying the related PM information.
The collected performance data is reported to the NFPM SMOS consumer in the format of files or data streaming in accordance with the requested method.

### RAN NF Fault Supervision Management SMO Service (NFFM)

#### Use Case: Enable Fault Supervision Services for NF instances

##### 5.1.2.1.1. High Level Description

For the purposes of Fault Supervision, it is needed for SMOFs to get alarm list alarm list, clear or acknowledge one or multiple alarms of an NF. The service for a one-time query is also required.

### RAN NF Provisioning Management SMO Service (NFCM)

#### Use Case: Enable Configuration Management for O-RAN NF instances

##### 5.1.3.1.1 High Level Description

For the purposes of Configuration Management, it is needed for SMOFs to manage configuration (creation, deletion, modification, or query) of an NF.
The NFCM SMOS provides a mechanism for the NFCM SMOS consumers to request a change to the network over the appropriate interface, such as the O1 and Open Fronthaul M-plane interfaces. NFCM manages changes to the network in terms of conflict and frequency of change. It is also responsible for translating a provisioning request into the proper format for the configuration schema of the targeted NF(s) and then uses the appropriate protocol, such as the O1 and Open Fronthaul M-Plane, to affect the change in the element. The NFCM SMOS also provides a mechanism to receive and facilitate processing of all CM notifications from the NF(s), including notification of configuration changes which were not directly requested by the NFCM SMOS mechanism.

## Non-RT RIC related SMOSs

### rApps Management SMOS

#### Overview

The non-RT RIC provides management services to support rApps. The rApp management service handles management aspects specific to rApps such as:

* rApp Configuration Management (CM): enables management of the rApp configuration settings,
* rApp Performance Management (PM): offers support for performance reporting on an rApp performance, or of the rApp communication with the non-RT RIC framework (rApp usage of R1 interface),
* rApp Fault Management (FM): provides the fault reporting capabilities to rApps, so they can consume it to report faults that are related to the rApp, or to the rApp communication with the non-RT RIC framework (rApp usage of R1 interface),
* rApp Logging Information: enables rApps to convey their logging information to the non-RT RIC framework,
* rApp lifecycle management services, that expose services that allow to trigger rApp software lifecycle management.

## Topology and Inventory related SMOS

### Topology Exposure and Inventory Management SMOS

For the SMO to perform efficient operation and maintenance of O-RAN and to enable a global view of the O-RAN resources, it is important to maintain an inventory of O-RAN resources. Visualization and optimization of the network rely upon knowing and maintaining the relationship between O-RAN resources (i.e. network view). Topology Exposure (TE) and Inventory Management (IV) services provide an up-to-date information of O-RAN resources and their relationships.

NOTE: O-RAN resources include resources used to realize the O-RAN Radio Network including network functions, subnet slice, cloud resources, radio resources, and transport resources.

O-RAN.WG1.Use-Cases-Detailed-Specification [i.10] specifies use cases related to optimization of radio resources which can benefit from Topology Exposure Service to provide network view of the radio resources. O-RAN.WG1.Slicing-Architecture [i.11] specifies use cases related to RAN network slice that deal with network slice resources which can benefit from Topology Exposure Service to provide network view of the available RAN, cloud and transport resources. Topology Exposure Service can assist the Network Subnet Slice Management Service to identify the available or impacted O-DU, O-CU and O-RU instances. O-RAN.WG6.ORCH-USE-CASES [i.12]specifies use cases related to discovery/allocation/deallocation of various types of cloud resources to O-Cloud instance and xNF LCM. These use cases will benefit from Topology Exposure Service to provide them the network view of cloud resources.

O-RAN WG10 Architecture Specification [i.5] has a service provisioning use case that refers to population of information about VNFs and PNFs in the inventory. There is a functional requirement for SMO (REQ-M&O-FUN4) to support the inventory of newly activated PNFs and VNFs. Inventory Management Service will satisfy this requirement.

The Topology Exposure and Inventory Management SMOSs are expected to offer CRUD capabilities and notifications pertaining to change events on O-RAN resource objects.

NOTE: The Topology Exposure and Inventory Management Service(s) definition as part of stage 2 work will be based on outcome from the WG10 Topology Exposure and Inventory Management WI.

## Service Management and Exposure (SME) SMOS

### Overview

The SME service is introduced in the [i.8] section 3.1. While the SME was initially targeted for management and exposure of rApp services in the [i.8], its services are applicable to any entities within the SMO that fulfil the roles of Service Producer and/or Service Consumer.

In a decomposed service-based SMO architecture, the SME can be leveraged as a generic SMOS, handling service management and exposure for any SMOSs within SMO. The SME SMOS provides a set of common SMO capabilities that are needed for all SMO Services.

Several of the SME services are applicable to any SMOSs:

* SMOS registration,
* SMOS discovery,
* Authentication and authorization to access a SMOS,
* Communication support between SMOS Service Producers and SMOS Service Consumers (SMOS Communication),
* Bootstrap of new SMOSs (optional),
* Heartbeat of SMOSs (optional).

### Use Case: SME reuse for SMO

The use cases described for the SME in [i.13] section 4 can be applicable to any SMOSs beyond rApps, where a SMOF can act in a role of one, or both, the Service Producer and Service Consumer.

## Data Management and Exposure (DME) SMOS

### Overview

The DME services and their producers, the logical DME functions, are introduced in the Non-RT RIC Architecture specification [i.3], providing capabilities that allow DME Data Consumers to discover data types, consume collected data, and further allow DME Data Producers to register data types and to produce data for collection. The DME services can handle any registered data types and expose them for discovery and consumption to DME Data Consumers. In the [i.8] section 3.2, both the DME Data Producer and DME Data Consumer are restricted to refer only to rApps, because the scope of [i.8] is the R1 interface between rApps and the SMO/Non-RT RIC framework.

In a decomposed service-based SMO architecture, the DME SMOS can be leveraged as an enabler handling any SMOS data types, therefore any SMOF can be a DME Data Producer and/or a DME Data Consumer.

The definition of DME services as exposed via the R1 interface currently specifies how rApps interact with the DME services in the roles of DME Data Producer and DME Data Consumer. Within the SMO wider scope these two roles are now associated with any of the SMOFs which can benefit from using DME SMOS to register, produce, discover and consume data.

### Use Case: DME data types handling for SMO

There are several use cases described for the DME in [i.13] section 5. These use cases are also applicable to any SMOFs in a role of one, or both, of DME Data Producer and DME Data Consumer.

## O-Cloud resources management and orchestration related SMOSs

### Network Function Orchestration SMOS (NFO)

### Overview

The NFO SMOS is responsible for the orchestration of the O-Cloud resources, used for the deployment of the NF Deployments that constitute the cloudified NFs, either using the ETSI NFV O2DMS profile or the Kubernetes(R) O2DMS profile. That includes the initial deployment of the software and any subsequent lifecycle management actions necessary on the respective NF Deployments instances, such as healing, updates, scaling, software upgrades, termination, etc. The functionality of the NFO is introduced in [i.9].

O-RAN NFs can also be deployed as PNFs, in which case O-Cloud resources are not used (rather the appliance model applies).

The deployment constructs PNF, CNF and VNF do not impose any specific cardinality with the O-RAN NF. It is expected that one O-RAN NF has a [0..n] cardinality with any of the PNF, CNF or VNF.

#### Use Case: NF Deployments

Several orchestration use cases are described in [i.12].

### Federated O-Cloud Orchestration and Management SMOS (FOCOM)

### Overview

The Federated O-Cloud Orchestration and Management is introduced in [i.9]. Its capabilities cover management of O-Cloud resources and provide two main categories of services:

* the O-Cloud Infrastructure Resource Management,
* the management of the abstracted resources and DMSes (e.g., the management of the software deployed to provide virtualization technologies such as containers or VMs).

The capabilities of FOCOM SMOS include:

* maintaining the O-Cloud Infrastructure data in the SMO inventory,
* monitoring the infrastructure,
* provisioning the infrastructure,
* infrastructure software management,
* infrastructure lifecycle management.

### Use Case: O-Cloud management

The O-Cloud basic use cases providing several scenarios related to different aspects of the O-Cloud lifecycle management and for O-Cloud software management are defined in [i.12].

## RAN Network Slice Subnet Management SMOS

### Overview

The RAN Network Slice Subnet management (NSSM) exposes the RAN subnetwork slice provisioning related capabilities as specified in section 6.2 "Management services for network slice subnet provisioning" in TS 28.531 [i.16] with the operations defined in TS 28.532 [i.17]and Network slice subnet NRM related information models defined in clause 6.3 of TS 28.541 [i.18].
The NSSI (Network Subnet Slice Instance defined in TS 28.530 [i.20]) provisioning operations include:

* create an NSSI; activate an NSSI; deactivate an NSSI; modify an NSSI; terminate an NSSI, get NSSI data, allocate NSSI to an NSI, deallocate NSSI from NSI.

The NSSI provisioning data reporting adds support for subscription/notification mechanisms for some of the provisioning operations: notifications of creation, notification of deletion, notification of attribute changes.

A RAN NSSM SMOS producer relies on other SMOSs in order to provide the NSSI provisioning functionality, e.g.:

* SME SMOS, for the registration of the RAN subnet slice management capabilities offered and for discovery of other SMOSs that it needs to consume,
* SO SMOS, that performs the orchestration and management coordination required for the NSSI's components:
* the component RAN NFs that best match the requirements received from the RAN NSSM SMOS producer,
* coordination with NFO Producer to request LCM actions as needed for the O-RAN NF Deployments, and coordination with FOCOM to request O-Cloud management actions,
* where applicable, to obtain the suitable TNs for the RAN NFs inter and intra-connections, that fulfil the requirements received,
* SA SMOS, that performs the assurance of the overall RAN service represented by the NSSI components, based on the service requirements and characteristics provided.

### Use Case: RAN Network Slice Subnet Management

Use cases for RAN Network Slice Subnet Management are described in [i.19]and in clause 3 of [i.11]

## RAN Analytics SMOS

### Overview

RAN analytics SMOS consumes data and services produced by the SMO then it processes and analyses them using its internal logic and algorithms to produce RAN analytics output. The RAN analytics output includes RAN traffic predictions or statistics (such as UE mobility predictions) and recommendations related to RAN management.

RAN analytics are useful for both internal SMO consumption as well as external consumers (e.g., 5GC such as NWDAF, as specified in 3GPP TS 28.104 [i.14] and 3GPP TS 23.288 [i.15]).

The 3GPP MDA as specified in 3GPP TS 28.104 uses input data that relates to both RAN traffic and RAN management data and has defined several data types related to RAN analytics. These data types are also useful in O-RAN context and can be extended with additional analytics data types that address O-RAN use cases and requirements such as the ones listed in section 5.2.3.1 of this document.

NOTE: the RAN traffic analytics exposed in a real-time manner via the Y1 interface are not analysed in this document. Whether SMO consumes Y1 or not is not addressed in the present document.

RAN Analytics SMOS registers with DME the data types of the RAN analytics, and/or RAN management analytics that they produce. This allows the analytics data discovery by interested consumers via DME. Such analytics data types can be the existing standardized 3GPP MDA data types specified in 3GPP TS 28.104 [i.14],or they can be new analytics data types defined in O-RAN.

The SMO exposes RAN analytics to SMOS consumers (e.g., internal in SMO, or 5GC NF such as NWDAF, or other SMOS external consumers) via SME, with a service interface based on the MDA interface specified in 3GPP TS 28.104 [i.14]. Asynchronous data delivery to external SMOS consumers via DME is achieved using the DME push data service described in R1 GAP [i.9] section 5.2.6.3 "Push data service".
External SMOS consumers that want to consume the RAN analytics SMOS offered by the SMO, need to be able to:

* Consume the discovery service of the SME to discover the RAN analytics SMOS in the SMO, using the interface exposed by SME for that purpose.
* Consume services produced by DME SMOS to perform one, or more of: data discovery for the RAN Analytics SMOS data types, subscriptions to RAN analytics data types of interest, the Pull data and/or Push data from DME.
* Consume the RAN Analytics SMOS, by performing the needed service invocations requests following the MDA interface specification from 3GPP TS 28.104[i.14].

### Use Case: RAN traffic analytics sharing with 5GC

The use cases are described in section 3.23 "Use case 23: Sharing Non-RT RIC Data with the Core" of the WG1 Use Cases Analysis report [i.7] and in section 3.23 "Use case 23: Sharing Non-RT RIC Data with the Core" of the WG1 Use Cases Detailed Specification [i.10]In order to fulfil the use case, it is important to make RAN analytics SMOS capabilities discoverable by 5GC (e.g., by NWDAF).

The use cases for the 3GPP MDA data are specified in 3GPP TS 28.104 [i.14].

## Service Orchestration SMOS

### Overview

As part of a zero-touch automation goal for the management of RAN, the SMO is expected to be capable to coordinate autonomously the execution of its services. The Service Orchestration (SO) SMOS plays an important role in the overall SMO automation.

The SO SMOS provides the overseeing capabilities to automate orchestration of one or more O-RAN NFs and associated management (e.g., CM day 0..n) that allow to correlate, sequence and coordinate individual actions performed using other SMOSs, with the end goal of fulfilling requirements that impact one or several NFs, O-Cloud and the Transport Networks (TN) used to interconnect O-RAN NFs (inter-NF) and NF Deployments (intra-NF) when they are deployed over different sites. The SO SMOS offers automation capabilities based on standardized models for automation flows, that enable proper correlation, sequencing, and timing of the needed actions, such as:

* Coordination of the orchestration for one or more RAN NFs (also including multiple NF Deployments), including taking the homing decision considering both the application-level requirements (e.g., assurance levels expected the proximity to radio equipment, etc.) and non-functional requirements (e.g., infrastructure capabilities needed).
* Coordination of management and orchestration for RAN service requests (which could include multiple RAN NFs) that must meet the RAN E2E service requirements and characteristics (e.g., overall availability, RAN E2E SLA, areas for coverage, number of subscribers supported, etc).
* Decomposition of RAN service requests (multiple O-RAN NFs) into the appropriate O-RAN NF constituents, deriving their dimensioning, characteristics and configuration required, to fulfil the received RAN service request.
* Based on data obtained on TNs, selection of a suitable TN that fulfils the requirements of the RAN E2E service requirements and characteristics (e.g., RAN E2E service latency, throughput).
* Capability to process service requests received from upper layer service orchestrators and to perform any required actions to fulfil such request in the RAN management domain.

### Use Cases for SO SMOS

#### Use case: SO dynamic resource orchestration

##### 5.9.2.1.1 High Level Description

This use case shows how the Service Orchestrator dynamically adjusts resource provisioning as traffic demand changes, as expected in the use case described in[i.10]. The SO SMOS consumer in this use case is an SO SMOS Consumer (e.g., rApp) which uses AI/ML to forecast traffic demand and then, based on the forecast, translates it into a request to the SO SMOS Producer. An example of a request is to specify an optimized topology information for a certain traffic volume over a period of time by shutting down several O-RAN NFs for Network Energy Saving, moving the remaining O-RAN NFs to appropriate O-cloud nodes, and rearranging connections between O-RAN NFs.

Based on the received SO SMOS request, the SO determines that in order to fulfil it, it will have to take a series of actions, such as: change the current configuration of several O-RAN NFs by making a request to the RAN NF OAM SMOF (NFCM SMOS Producer) and make several NF Deployment LCM requests to the ORMO SMOF (NFO SMOS). Additionally, it involves requesting Network configuration changes to external Transport Network (TN) Manager.

## Service Assurance SMOS

### Overview

The SA SMOS responsibility is to sustain the required assurance levels set for the RAN E2E services, or for the O-RAN NFs instances that are managed and orchestrated by the SMO. For this purpose, it collects, consolidates, and detects when the RAN E2E service or NF level assurance falls below the required levels, so that subsequent remedial actions can be taken.

The SA SMOS offers a closed loop automation approach, where:

* It monitors/observes the data that is relevant to assessing the current RAN E2E service and NF assurance levels (including the application and O-Cloud resources used by the software).
* It analyses the observed data in order to determine if the RAN E2E service and NF assurance levels are met or not.
* In case the RAN E2E service and NF assurance levels are not met, decisions are taken on a course of remedial actions.
* The identified actions (e.g., configuration changes, scaling, changes of connectivity, etc.) are executed in collaboration with other SMO services (SO, RAN NF OAM, etc.).
* The closed loop automation is continuously applied, as the data that is relevant to show the result of the remedial actions is again monitored and analysed. Any needed decisions are taken and resulting actions continue to be executed as part of the closed loop automation for assurance purposes, until the monitoring data collected shows an outcome that meets the required assurance levels.

### Use Case:

#### High Level description:

## Software package onboarding SMOS

### Overview

The software package onboarding SMOS provides support for onboarding software packages such as O-RAN NFs, O-RAN rApps, and O-RAN xApps. The software package onboarding SMOS exposes capabilities for:

* software packages ingestion into SMO,
* security verification of the software packages (e.g., integrity protection such as vendor signatures, etc),
* validation of software packages to ensure that the format and contents can be understood by the SMO,
* extraction of the software package artifacts into appropriate catalogues and storage of software images into the appropriate repos.

## AI/ML Workflow SMOSs

### Overview

AI/ML workflow SMO Services enable the management of AI/ML related capability in support of O-RAN SMO operations.

The following AI/ML workflow services are currently identified in e.g., [i.3]:

* AI/ML training services: allow an AI/ML training service consumer to request training of an AI/ML model by specifying the training requirements (e.g., required data, model, validation criteria, etc).
* AI/ML model management and exposure services:
* AI/ML model registration/deregistration: allows an AI/ML SMOS producer to register, update the registration of, and deregister the AI/ML model that it provides. An AI/ML SMOS producer needs to be authorised to register, update the registration of, or deregister the AI/ML model it provides.
* AI/ML model discovery: allows an AI/ML SMOS consumer to discover registered AI/ML model(s) based on its selection criteria if it is provided. The AI/ML SMOS consumer needs to be authorised to discover registered AI/ML models.
* AI/ML model change subscription: allows an AI/ML SMOS consumer to subscribe and receive notifications of changes of a registered AI/ML model.
* AI/ML model storage: allows an AI/ML SMOS consumer to request the storage of an AI/ML model it registered and the AI/ML model associated information.
* AI/ML model training capability registration/deregistration (optional service): allows an AI/ML SMOS producer to register/update/deregister its capability of training an AI/ML model.
* AI/ML model retrieval: allows an AI/ML SMOS consumer to request model location details of a specific version of a registered AI/ML model.
* AI/ML model performance monitoring services: allow an authorised AI/ML SMOS consumer to request monitoring the performance of a deployed AI/ML model.

### Use Cases

Use cases involving AI/ML workflow SMO Services are described in [i.10]. Examples are:

* QoE optimization
* Massive MIMO Beamforming Optimization
* RAN Slice SLA Assurance
* Energy Saving

## Policy Management and Information (PMI) SMOS

### Overview

A policy refers to a set of rules, guidelines, or conditionsthat govern the behaviour and actions of O-RAN resources and services. Policies are used to automate various aspects of network resources and services; they ensure that the network services and their resources operate in accordance with predefined rules and objectives. Policies can typically be expressed in a structured format that defines the scope, objectives, and conditional statements or constraints.

For the SMO to ensure that O-RAN resources such as O-Cloud, O-RAN nodes are allocated and managed consistently and efficiently, it is important to manage these O-RAN resources through polices. One of the most important goals of Policy Management and Information (PMI) is to support policy-driven decision processes controlled by the SMO within the O-RAN system.

There are three different roles related to policies:

1. Policy Administration Point (PAP), responsible for the provisioning of policies (create, update, delete, get),

(As defined in NIST Glossary here https://csrc.nist.gov/glossary/term/policy\_administration\_point)

1. Policy Decision Point (PDP), responsible to determine where in a decision process a certain policy can be applied, (As defined in NIST Glossary here https://csrc.nist.gov/glossary/term/pdp)
2. Policy Enforcement Point (PEP), responsible for the executing the actions derived from the policies. (As defined in NIST Glossary here https://csrc.nist.gov/glossary/term/policy\_enforcement\_point)

Depending on the use case, a SMOF can act in one or more of these roles.

The Policy Management and Information (PMI) SMOS allows service consumers to specify and provision policies for SMOFs such as the producers of NFO, FOCOM, RANOAM etc., and A1 policies for the Near-RT RIC etc., hence representing the PAP role only. Policy Management and Information (PMI) SMOS decouples policy management from the underlying entities that apply and execute them, i.e., which play a PDP and/or PEP role. The PDP/PEP role can be played by SMOFs or by entities outside SMO, such as in case of A1 policies by the Near-RT RIC.

The Policy Management and Information (PMI) SMOS main capabilities are listed below (non-exhaustive list):

* Policy type registration and deregistration: A PMI SMOS consumer can request to create and register the policy types it supports with Policy Management and Information (PMI), also allows to delete, and deregister policy types. Some examples of policy types can be resource management, LCM such as healing and scaling, monitoring etc.
* Discover and Query Policy types: A PMI SMOS consumer can request to discover, and query supported policy types.
* Create, Query/Read, Update, Delete policies: PMI SMOS consumers can request to create, query/read, update and delete policies for any SMOF (as well as A1 policies for the near-RT RIC) that is supporting the related policy types as known to the PMI.
* Discover Policies: A PMI SMOS consumer can request to discover policies maintained by PMI SMOS producer.
* Policy Status: PMI SMOS consumer request to query/read status of policies, such as enforced, running, not enforced etc. obtained by PMI SMOS producer from the PDPs and PEPs.
* Subscribe/Notify: A PMI SMOS consumer can subscribe for notifications of events such as policy changes related to policies and policy types.

# SMO Functions (SMOFs)

## Possible Solutions for SMOF deployment

### Overview

This clause describes examples of deployment scenarios for SMO Functions (SMOF).

### Solution Approach 1: RAN NF OAM SMO Function (RNOAMF)

This solution addresses the SMOSs described in section 5.1 "RAN NF OAM related SMOSs".

This solution approach considers the deployment scenario where there is a RAN NF OAM SMO Function (RNOAMF) which provides the functionality for operations, administration, maintenance, and management of the radio side of the O-RAN architecture as envisioned in the O-RAN OAM architecture [WG10.OAM]. The RAN NF OAM SMO Services (NFPM, NFFM, NFCM) listed in section 5.1.1, 5.1.2, 5.1.3 are produced by the RAN NF OAM SMOF. These SMO Services represent an essential aspect of the SMO and will typically be consumed by the Non-RT RIC and possibly by other SMO Functions. In addition, they could also be consumed by entities within the RAN NF OAM SMOF, for example for coordination or correlation.

### Solution Approach 2: O-Cloud Resources Management and Orchestration SMO Function (ORMO SMOF)

This solution addresses the SMOSs described in section 5.x "O-Cloud resources management and orchestration related SMOSs" and places the NFO SMOS and the FOCOM SMOS together into one SMO Function, the ORMO SMOF.
This approach leverages on the synergies between the two SMOSs and aims to facilitate a level of coordination between them. This is useful specifically in orchestration scenarios, where an automated sequence of NFO and FOCOM actions needs to be orchestrated in order to fulfil the successful deployment of a CNF or a VNF into the right infrastructure resources, respecting the infrastructure requirements from the deployment descriptors of the CNF or VNF.

#### SMOF interactions within SMO

The ORMO SMOF can register its service capabilities using the services of the SME SMOS described in section 5.y. It enables their discoverability by other SMOFs, as well as their external exposure via SME. The ORMO SMOF can discover other SMOSs by consuming SME services.

The ORMO SMOF uses the Topology and Inventory SMOSs to obtain data about inventoried resources managed by other SMOFs (e.g., PNFs for connectivity, cell topology, etc). The ORMO SMOF uses the Topology and Inventory SMOSs to update availability and characteristics data about O-Cloud infrastructure resources and NF deployments managed by ORMO SMOSs.

The ORMO SMOF consumes the DME SMOS described in section 5.5, to:

* register the data types it produces, using the services of the DME SMOS described in section 5.5. This enables the discoverability of ORMO data types by other SMOFs, as well as their external exposure via SME and DME.
* discover data types produced by other SMOSs, for subsequent consumption as part of the ORMO SMOF internal logic.

### Solution Approach x: Non-RT RIC SMO Function (nonRTR SMOF)

#### Overview

This solution addresses the SMOSs described in section 5.2 "Non-RT RIC related SMOSs" and places them under one SMOF.

The nonRTR SMOF offers two main types of capabilities:

* nonRTR SMOF framework capabilities, and
* rApps capabilities, which complement the existing SMOSs and provide enhancements to SMO overall capabilities.

The nonRTRF framework services allow exposure of SMOSs to rApps via the R1 interface.

#### SMOF interactions within SMO

The nonRTR SMOF interacts with other services in SMO, as follows:

* It registers its service capabilities using the services of the SME SMOS described in section 5.4. This enables the discoverability of the nonRTR SMOF services (including rApps) by other SMOFs, as well as their external exposure via SME.
* It discovers via the SME SMOS other available SMOSs available in the SMO,
* It registers the data types produced by the nonRTR (including rApps) using the services offered by the DME SMOS described in section 5.5;
* It discovers via the DME SMOS other data types available for consumption in the SMO,
* It consumes Topology Exposure and Inventory Management SMOS described in section 5.3:
* to obtain topology data about the RAN network resources, O-Cloud resources, transport resources and any relationship(s) between them.
* to obtain also any network inventory asset data related to RAN, O-Cloud and transport that does not imply a relationship with other assets (e.g., versions of the software available, etc).
* to request updates of topology and inventory data, for the assets that the nonRTR SMOF (including rApps) is authorized and/or responsible to update.
* It consumes any other SMOSs that is authorized to consume from the SMO, such as the RAN NF OAM SMOSs described in section 5.1 and O-Cloud Resources Management and Orchestration SMOSs described in section 5.6.

### Solution Approach: RAN analytics SMOS in non-RT RIC (NONRTR SMOF)

This solution addresses the RAN Analytics SMOS described in section 5.x "RAN Analytics SMOS" and places it under the nonRTR SMOF, as a SMOS produced by rApps.

The rationale behind this solution proposal is that given the wide variety of RAN analytics that can be offered, as well as the fact that support for new RAN analytics (traffic and/or RAN MDA) need to be flexibly added on the fly, the RAN analytics SMOS is produced by the non-RT RIC via rApps.

A depiction of the RAN analytics SMOS in non-RT RIC is shown in the figure below.

![Graphical user interface  Description automatically generated](../assets/images/bcc15a2b451a.png)

Figure 6.1.5-1: RAN Analytics SMOS in the non-RT RIC, in the SMO architecture

### Solution Approach: Service Orchestration and Assurance (SOSA) SMOF

This solution addresses the SMOSs described in clause 5.9 "Service Orchestration SMOS" and 5.10 "Service Assurance SMOS" and places the SO SMOS and the SA SMOS together into one SMO Function, the SOSA SMOF.
The SO and SA SMOSs have functional correlation and interdependencies, such as orchestration decisions being taken using assurance input and assurance being achieved by leveraging orchestration and automation capabilities. This approach is considering the synergies between the two SMOSs and aims to facilitate a closer coordination between them.

#### SMOF interactions within SMO

The SOSA SMOF consumes other SMOSs to realize and deliver the SO and SA SMOSs, as follows:

* It consumes the SME SMOS described in section 5.4, to:
* register its service capabilities using the services of the SME SMOS. This enables their discoverability by other SMOFs, as well as their external exposure via SME.
* discover other SMOSs by consuming SME services.
* As applicable, perform service invocation for any SMOSs, by requesting authorization from SME.
* It consumes the DME SMOS described in section 5.5, to:
* register the data types it produces, using the services of the DME SMOS described in section 5.5. This enables the SOSA data types' discoverability by other SMOFs, as well as their external exposure via SME and DME.
* discover data types produced by other SMOSs, for subsequent consumption as part of the SOSA SMOF internal logic.
* It consumes the Topology and Inventory SMOSs described in section 5.3, to:
* query the TE &IV SMOS to obtain data about inventoried resources managed by other SMOFs (e.g., PNFs for connectivity, cell topology, existing NF instances, etc.) that is needed as input in order to realize its SMOSs.
* populate data using the TE &IV SMOS when it created new RAN services, or to update information related to the successful outcome of the orchestration decisions that it has taken.
* It consumes the RAN NF OAM related SMOSs described in section 5.1, to:
* make OAM management requests related to the O-RAN NFs (e.g., CM, PM, FM).
* It consumes the NFO SMOS described in section 5.6.1, to:
* make lifecycle management requests for the NF Deployments and request day 0 configurations.
* It consumes the FOCOM SMOS described in section 5.6.2, to:
* request management of O-Cloud infrastructure resources, in preparation for deployments of the O-RAN NFs (e.g., obtain information about certain O-Cloud resources, change infrastructure resources allocation to a Node Cluster, create new Node Clusters).
* obtain PM, FM data about the O-Cloud resources which have running NF Deployment instances.
* obtain O-Cloud inventory information about O-Cloud resources.
* It consumes SMOSs offered by rApps via the non-RT RIC, that complement and enhance the functionality offered to SOSA SMOSs, such as:
* RAN Analytics SMOS as described 5.8, to use as input to its orchestration and/or assurance decisions.
* rApps services that provide resolution for the functional composition of requested RAN services and/or O-RAN NFs.
* other rApps that provide services and data that can be consumed by the SOSA SMOF.

#### SMOF interactions with services outside SMO

The SOSA SMOF interacts with Transport Network (TN) domain Managers, which are external to the SMO, to:

* request a connectivity that meets certain characteristics.
* query the TN topology to discover existing TNs and their data that are relevant and of interest to the SOSA SMOF.
* retrieve FCAPS data that is relevant for SOSA SMOF to understand the SLA fulfilment level for the TNs is using (e.g., enable monitoring FM, PM for TN by the SMO).

The SOSA SMOF interacts with upper layer service orchestrators to perform any required actions to fulfil such request in the RAN management domain.

### Solution Approach: Separate SO SMOF and SA SMOF

This solution addresses the SMOSs described in section 5.9 "Service Orchestration SMOS" and section 5.10 "Service Assurance SMOS" and places the SO SMOS in the SO SMOF and the SA SMOS in the SA SMOF or in the non-RT RIC SMOF.

NOTE: When SA SMOS placed in rApp via Non-RT RIC SMOF, R1 Interface shall include SA related services

#### SO SMOF

##### 6.1.7.1.1 SO SMOF interactions within SMO

The SO SMOF interactions with the SMOS Producers of: SME, DME, TE &IV, RAN NF OAM SMOSs, NFO and FOCOM, are same as described in section 6.1.5.1 of this present document.

#### SA SMOF

##### 6.1.7.2.1 SA SMOF interactions within SMO

The SA SMOF interactions with the SMOS Producers of: SME, DME, TE &IV, RAN NF OAM SMOSs, NFO and FOCOM, are same as described in section 6.1.5.1 of this present document.

In addition, the SA SMOF consumes other SMOSs to realize and deliver the SA SMOS as follows:

* It consumes services of SO SMOS that enable the functionality offered by SA SMOSs, such as:
* To request SO SMOS services for orchestration related actions (e.g., configuration changes, scaling, changes of connectivity, policies etc.) .
* To request coordination of management and orchestration for RAN service requests that include multiple RAN NFs that must meet the RAN E2E service requirements and characteristics (e.g., overall availability, RAN E2E SLA, areas for coverage, number of subscribers supported, etc).
* To interact with SO SMOS within joint closed control loops automation, that involve both SO and SA SMOSs.
* It consumes services of rApps via Non-RT RIC that may assist the functionality offered by SA SMOSs, such as:
* RAN Analytics SMOS as described 5.8, to use as input to its assurance activities.
* Non-RT RIC services realized via rApps that provide resolution for the functional composition of requested RAN services and/or O-RAN NFs.
* Non-RT RIC services realized via rApps that provide other supporting services (e.g., AI/ML-enabled services).

## Recommended Architectural Approach

### Overview

The SMO capabilities identified as SMOSs in clause 5 of this document are represented in a service-based architecture in the figure 6.2.1-1 below. All the SMO Service producers represented in figure 6.2.1-1 can also be SMOS consumers.

![A screenshot of a computer  Description automatically generated](../assets/images/78e3464d9648.png)

Figure 6.2.1-1: SMO capabilities represented as SMOSs in the SMO SBA approach

Following the Service Based Architecture principles, only SMO Services are specified to ensure interoperability.

A SMOF implementation can produce and/or consume any combinations of one or more SMOSs, provided that the SMOF complies with the O-RAN specifications of the interfaces exposing the SMOSs.

Except for the Non-RT RIC SMOF which is defined to provide support for rApps and for A1 related SMOSs, the definition of SMOFs is in general not in scope of the O-RAN specifications, as the interoperable functional behaviour of SMOFs is only specified via the SMOS Producer/Consumer roles. For example, a particular Non-RT RIC implementation may be a SMOF producing SME SMOS, DME SMOS, AI/ML workflow SMOS, and the SMOSs anchored in the Non-RT RIC, where both the SME SMOS and DME SMOS are produced and consumed only internally to the SMO.

In order to ensure consistency with the already specified functions related to the SMO interfaces within the O-RAN network domain (i.e., O1, O-FH M-plane, O2, and A1), the following SMOSs identified in section 5 of the present document are recommended to be specified:

* RAN NF OAM SMO Services, including
* RAN NF Performance Assurance Management (NFPM)
* RAN NF Fault Supervision Management (NFFM)
* RAN NF Provisioning Management (NFCM)
* Others, e.g., Tracing, Logging, etc.
* Network Functions Orchestration (NFO) SMOS
* Federated O-Cloud Orchestration and Management (FOCOM) SMOS
* Service Management and Exposure (SME) SMOS [i.8]
* Data Management and Exposure (DME) SMOS [i.8]
* Topology Exposure and Inventory Management (TE&IV) SMOS [i.21]
* RAN Analytics SMOS
* Service & Subnet Slice Orchestration SMOS
* Service & Subnet Slice Assurance SMOS
* AI/ML workflow (AIMLWF) SMOS [i.8]
* rApp Management SMOS [i3]
* A1 Enrichment Information Management SMOS [i.8]
* A1 Policy Management SMOS [i.8]
* Software package onboarding SMOS
* RAN Network Slice Subnet Management,
* Policy Management and Information (PMI).

SME SMOS supports the exposure of other SMOSs, as described in sect. 4.2, to both internal and external SMOS consumers.

DME SMOS supports the exposure of data produced by SMOS Producers, to both internal and external SMOS consumers.

Examples of external SMOS consumers are 5GC/NWDAF, E2E Service Management Domain.

NOTE: the details of the SMO Services that are already defined, or under definition, by O-RAN are described in the referenced specifications.

As an implementation option, SMOS (e.g. RAN Analytics, Service Assurance, etc. - see sect. 6.1) can be provided by SMOF such as the Non-RT RIC SMOF (which can be realized with rApps), or as SMOFs outside Non-RT RIC. Whether the two options will have different requirements on the definition of the SMOS is FFS in the normative phase.

# Conclusion

The analysis conducted in the "Decoupled SMO Architecture" work item demonstrated the feasibility of a Service Based architecture for SMO to be standardized according to the principles described in Sect. 6.2.

SMO Services (SMOS) candidate for the standardization were identified to support the proposed use cases. A description of SMOS and related use case examples is provided in Sect. 5.

For the subsequent normative phase, the following items are identified:

* update the O-RAN Architecture Description specification to reflect the SBA SMO architecture and principles,
* identify the SMOS interfaces to start with in the first phase, and identify the WGs to support ATG, according to their scope and terms of reference,
* define Stage 2 and Stage 3 workplan.

The summary of the SMOS services and the status of related service interface work as of October 2023 is captured in table 7-1 below.

|  |  |  |
| --- | --- | --- |
| **Standardized SMOS Interface** | **Status** | **Reference section** |
| RAN NF OAM: PM | Initial service description exists in [i.8] [i.3] | 5.1.1 |
| RAN NF OAM: FM | Initial service description exists in [i.8] [i.3] | 5.1.2 |
| RAN NF OAM: CM | Initial service description exists in [i.8] [i.3] | 5.1.3 |
| Non-RT RIC related SMOSs: rApp management | Initial service description will be defined in [i.8] (logging available). | 5.2.1 |
| A1 Policy Management SMOS | Initial service description exists in [i.8] |  |
| A1 Enrichment Information Management SMOS | Initial service description exists in [i.8] |  |
| TE & IV | Initial Information Model exists in [i.21] | 5.3 |
| SME | Initial service description exists in [i.8] [i.3] | 5.4 |
| DME | Initial service description exists in [i.8] [i.3] | 5.5 |
| NFO | New interface to be specified | 5.6.1 |
| FOCOM | New interface to be specified | 5.6.2 |
| RAN analytics | Initial interface description exists in [i.14]. To be further expanded for O-RAN data types. | 5.8 |
| RAN Network Slice Subnet Management | Interface and operations defined in TS 28.531 [i.16]TS 28.532 [i.17]and Network slice subnet NRM related information models defined in clause 6.3 of TS 28.541 [i.18] | 5.7 |
| Service Orchestration | New interface to be specified | 5.9 |
| Service Assurance | New interface to be specified | 5.10 |
| SW package onboarding | New interface to be specified | 5.11 |
| AI/ML workflows | Initial service description will be defined in [i.8] | 5.12 |
| Policy Management and Information (PMI) | New interface to be specified | 5.13 |

Table 7-1: Proposed SMOSs and status of work as of October 2023

Table 3:

Annex A (informative):
Example Diagrams of Scenarios and Use Cases for SMOS

A.1 Use Case NFFM SMOS: Enable Fault Supervision Services

| Use Case Stage | Evolution / Specification | <<Uses>>  Related use |
| --- | --- | --- |
| Goal | NFFM SMOS provides fault supervision services to the NFFM SMOS consumers. |  |
| Actors and Roles | 1. RNOAMF (producer of NFFM SMOS): RAN OAM SMOF that produces RAN OAM SMOS. 2. NFFM SMOS Consumer: SMOF that consumes NFFM SMOS. 3. O-RAN NF: O-CU-CP, O-CU-UP, O-DU, O-RU or near-RT RIC. 4. SME: Service Management Exposure SMOS. |  |
| Assumptions | None |  |
| Pre-conditions | 1. The RNOAMF (NFFM SMOS) works normally and can provide NFFM SMOS to other SMOF(s). 2. RNOAMF (NFFM SMOS) has registered its data types with DMESs SMOF. 3. Secure network connectivity is already available between O-RAN NF(s). 4. O-RAN NF(s) works normally. |  |
| Begins when | NFFM SMOS Consumer decides to get active alarm list, clear, or acknowledge one or multiple alarms on an NF instance. |  |
| Step 1 | RNOAMF registers NFFM SMOS capabilities by using SME SMOS: GetAlarmList, AcknowledgeAlarms, ClearAlarms; |  |
| Step 2 | NFFM SMOS Consumer discovers the NFFM services via SME SMOS. |  |
| Step 3 | NFFM SMOS Consumer requests service |  |
| Step 4-7 | Service Request is for GetAlarmList |  |
| Step 4 | RNOAMF gets alarm list from the O-RAN NF over O1 interface. |  |
| Step 5 | O-RAN NF returns Alarm List over O1 interface. |  |
| Step 6 | RNOAMF gets alarm list from the O-RAN NF over Open Fronthaul M-plane interface. |  |
| Step 7 | O-RAN NF returns Alarm List over Open Fronthaul M-Plane interface. |  |
| Step 8-15 | Service request is for AcknowledgeAlarms |  |
| Step 8 | If the O-RAN NF supports manual alarm Acknoweldge, RNOAMF sets the acknowledged state for specified alarms in the O-RAN NF over O1 interface. |  |
| Step 9 | O-RAN NF returns success or fail of Modification request |  |
| Step 10 | O-RAN NF sends FM notification. |  |
| Step 11 | If the O-RAN NF supports manual alarm Acknoweldge, RNOAMF sets the acknowledged state for specified alarms in the O-RAN NF over Open Fronthaul M-Plane interface. |  |
| Step 12 | O-RAN NF returns success or fail of Modification request |  |
| Step 13 | O-RAN NF sends FM notification. |  |
| Step 14 | RNOAMF sends AlarmAcknowledged notification if a subscription for it exists |  |
| Step 15 | RNOAMF sends modification notification if a subscription for it exists |  |
| Step 16-23 | Service request is for ClearAlarms |  |
| Step 16 | RNOAMF sets the cleared state for specified alarms in the O-RAN NF over O1 interface. |  |
| Step 17 | O-RAN NF returns success or fail of Modification request |  |
| Step 18 | O-RAN NF sends FM notification. |  |
| Step 19 | RNOAMF sets the cleared state for specified alarms in the O-RAN NF over Open Fronthaul M-Plane interface. |  |
| Step 20 | O-RAN NF returns success or fail of Modification request |  |
| Step 21 | O-RAN NF sends FM notification. |  |
| Step 22 | RNOAMF sends AlarmCleared notification if a subscription for it exists |  |
| Step 23 | RNOAMF sends modification notification if a subscription for it exists |  |
| Step 24 | RNOAMF returns success or fail of service request |  |
| Ends when | SMOS Consumer receives the success or fail of the request. |  |
| Exceptions | Not applicable |  |
| Post Conditions | Not applicable |  |
| Traceability | TODO: FFS |  |

@startuml

Autonumber

skinparam sequenceArrowThickness 2

skinparam ParticipantPadding 5

skinparam BoxPadding 10

Box "Service Management & Orchestration\nFramework\n(Subscriber)" #gold

Participant " SMOS Consumer" as SMOF

Participant "RNOAMF (NFFM SMOS)" as SMOS

Participant "Service Management Exposure" as SMES

end box

Box "O-RAN" #lightpink

Participant "O-RAN\nNF" as NF

end box

ref over SMOS, SMES : Register Fault Supervision Services:\n\tGetAlarmList/Acknowledge Alarms/Clear Alarms

ref over SMOF, SMES : Discover Fault Supervision Services

Autonumber 3

SMOF -> SMOS : ServiceRequest

Alt Request is for AlarmList

Opt If retrieving Alarmlist from O-RAN NF is needed

Alt Use O1

SMOS -> NF : <<01>> Request to get AlarmList

NF --> SMOS : <<01>> AlarmList

Else Use M-Plane

SMOS -> NF : <<Open FH M-Plane>> Request to get AlarmList

NF --> SMOS : <<Open FH M-Plane>> AlarmList

end

end

Else if Request is for AcknowledgeAlarms

Opt Manual Alarm Acknowledge is supported

Alt Use O1

SMOS -> NF : <<01>> Modification

NF --> SMOS : <<01>> Success/Fail

NF ->> SMOS : FM Notification

Else Use M-Plane

SMOS -> NF : <<Open FH M-Plane>> Modification

NF --> SMOS : <<Open FH M-Plane>> Success/Fail

NF ->> SMOS : FM Notification

End

End

Opt If a qualifying Alarm notification subscription exists

SMOS ->> SMOF : AlarmAcknowledgeNotification End

Opt If a qualifying CM notification subscription exists

SMOS ->> SMOF : ModificationNotification

End end

Else Request is for ClearAlarms

Alt Use O1

SMOS -> NF : <<01>> Modification

NF --> SMOS : <<01>> Success/Fail

NF ->> SMOS : FM Notification

else Use M-Plane

SMOS -> NF : <<Open FH M-Plane>> Modification

NF --> SMOS : <<Open FH M-Plane>> Success/Fail

NF ->> SMOS : FM Notification

end

Opt If a qualifying Alarm notification subscription exists

SMOS ->> SMOF : AlarmClearNotification

End

Opt If a qualifying CM notification subscription exists

SMOS ->> SMOF : ModificationNotification

EndEnd

SMOS --> SMOF : RequestResponse

@enduml

@startuml

Autonumber

skinparam sequenceArrowThickness 2

skinparam ParticipantPadding 5

skinparam BoxPadding 10

Box "Service Management & Orchestration\nFramework\n(Subscriber)" #gold

Participant "Other SMOF (Consumer)" as SMOF

Participant "RNOAMF (NFFM SMOS)" as SMOS

Participant "Service Management Exposure" as SMES

end box

Box "O-RAN" #lightpink

Participant "xNF" as NF

end box

SMOS -> SMES : Register Fault Supervision Services:\n\tGetAlarmList\n\tAcknowledgeAlarms\n\tClearAlarms

SMOF -> SMES : Discover Fault Supervision Services

SMOF -> SMOS : ServiceRequest

Alt Request is for AlarmList

Opt If retrieving Alarmlist from xNF is needed

SMOS -> NF : <<01>> ReadMOI AlarmList

NF --> SMOS : <<01>> AlarmList

end

Else if Request is for AcknowledgeAlarms

Opt Manual Alarm Acknowledge is supported

SMOS -> NF : <<01>> ModifyMOI Alarm

NF --> SMOS : <<01>> ModifyMOI Success/Fail

Opt If a qualifying Alarm notification subscription exists

SMOS ->> SMOF : AlarmAcknowledgeNotification

End

Opt If a qualifying CM notification subscription exists

SMOS ->> SMOF : MOIModificationNotification

End

end

Else Request is for ClearAlarms

SMOS -> NF : <<01>> ModifyMOI Alarm

NF --> SMOS : <<01>> ModifyMOI Success/Fail

Opt If a qualifying Alarm notification subscription exists

SMOS ->> SMOF : AlarmClearNotification

End

Opt If a qualifying CM notification subscription exists

SMOS ->> SMOF : MOIModificationNotification

End

End

SMOS --> SMOF : RequestResponse

@enduml

@startuml

Autonumber

skinparam sequenceArrowThickness 2

skinparam ParticipantPadding 5

skinparam BoxPadding 10

Box "Service Management & Orchestration\nFramework\n(Subscriber)" #gold

Participant "Other SMOF (Consumer)" as SMOF

Participant "RNOAMF (NFFM SMOS)" as SMOS

Participant "Service Management Exposure" as SMES

end box

Box "O-RAN" #lightpink

Participant "xNF" as NF

end box

SMOS -> SMES : Register Fault Supervision Services:\n\tGetAlarmList\n\tAcknowledgeAlarms\n\tClearAlarms

SMOF -> SMES : Discover Fault Supervision Services

SMOF -> SMOS : ServiceRequest

Alt Request is for AlarmList

Opt If retrieving Alarmlist from xNF is needed

SMOS -> NF : <<01>> ReadMOI AlarmList

NF --> SMOS : <<01>> AlarmList

end

Else if Request is for AcknowledgeAlarms

Opt Manual Alarm Acknowledge is supported

SMOS -> NF : <<01>> ModifyMOI Alarm

NF --> SMOS : <<01>> ModifyMOI Success/Fail

Opt If a qualifying Alarm notification subscription exists

SMOS ->> SMOF : AlarmAcknowledgeNotification

End

Opt If a qualifying CM notification subscription exists

SMOS ->> SMOF : MOIModificationNotification

End

end

Else Request is for ClearAlarms

SMOS -> NF : <<01>> ModifyMOI Alarm

NF --> SMOS : <<01>> ModifyMOI Success/Fail

Opt If a qualifying Alarm notification subscription exists

SMOS ->> SMOF : AlarmClearNotification

End

Opt If a qualifying CM notification subscription exists

SMOS ->> SMOF : MOIModificationNotification

End

End

SMOS --> SMOF : RequestResponse

@enduml

@startuml

Autonumber

skinparam sequenceArrowThickness 2

skinparam ParticipantPadding 5

skinparam BoxPadding 10

Box "Service Management & Orchestration\nFramework\n(Subscriber)" #gold

Participant "Other SMOF (Consumer)" as SMOF

Participant "RNOAMF (NFFM SMOS)" as SMOS

Participant "Service Management Exposure" as SMES

end box

Box "O-RAN" #lightpink

Participant "xNF" as NF

end box

SMOS -> SMES : Register Fault Supervision Services:\n\tGetAlarmList\n\tAcknowledgeAlarms\n\tClearAlarms

SMOF -> SMES : Discover Fault Supervision Services

SMOF -> SMOS : ServiceRequest

Alt Request is for AlarmList

Opt If retrieving Alarmlist from xNF is needed

SMOS -> NF : <<01>> ReadMOI AlarmList

NF --> SMOS : <<01>> AlarmList

end

Else if Request is for AcknowledgeAlarms

Opt Manual Alarm Acknowledge is supported

SMOS -> NF : <<01>> ModifyMOI Alarm

NF --> SMOS : <<01>> ModifyMOI Success/Fail

Opt If a qualifying Alarm notification subscription exists

SMOS ->> SMOF : AlarmAcknowledgeNotification

End

Opt If a qualifying CM notification subscription exists

SMOS ->> SMOF : MOIModificationNotification

End

end

Else Request is for ClearAlarms

SMOS -> NF : <<01>> ModifyMOI Alarm

NF --> SMOS : <<01>> ModifyMOI Success/Fail

Opt If a qualifying Alarm notification subscription exists

SMOS ->> SMOF : AlarmClearNotification

End

Opt If a qualifying CM notification subscription exists

SMOS ->> SMOF : MOIModificationNotification

End

End

SMOS --> SMOF : RequestResponse

@enduml

![?????? ?????????  ???????????](../assets/images/1cdd1d24d626.png)

A.2 Use Case: Performance Management for NF instances

| Use Case Stage | Evolution / Specification | <<Uses>>  Related use |
| --- | --- | --- |
| Goal | NFPM SMOS provides performance measurement services to the NFPM SMOS consumers. |  |
| Actors and Roles | 1. RNOAMF (producer of NFPM SMOS): RAN OAM SMOF that produces RAN OAM SMOS 2. NFPM SMOS Consumer: SMOF that consumes NFPM SMOS 3. O-RAN NF: O-CU-CP, O-CU-UP, O-DU, O-RU or near-RT RIC 4. SME: Service Management Exposure SMOS |  |
| Assumptions | None |  |
| Pre-conditions | 1. The RNOAMF (NFPM SMOS) works normally, and can provide NFPM SMOS to other SMOF(s) 2. RNOAMF (NFPM SMOS) has registered its data types with DMESs SMOF 3. Secure network connectivity is already available between O-RAN NF(s) 4. O-RAN NF(s) work normally. |  |
| Begins when | NFPM SMOS Consumer decides to create, query, or terminate one or multiple performance measurement job(s) on a NF instance. |  |
| Step 1 | RNOAMF registers NFPM SMOS capabilities using the SME SMOS: Creation / Query / Termination of measurement job, target O-RAN NFs (as applicable). |  |
| Step 2 | NFPM SMOS Consumer discovers the NFPM services via SME SMOS. |  |
| Creation of measurement job | | |
| Step 3 | NFPM SMOS Consumer requests creation of PM job to RNOAMF (producer of NFPM) for a specific O-RAN NF instance. |  |
| Step 4-7 | RNOAMF requests collecting performance data to O-RAN NF instance over O1 or Open Fronthaul M-plane. |  |
| Step 8 | The result of PM job creation for the O-RAN NF instance is returned by RNOAMF to NFPM SMOS Consumer. |  |
| Performance reporting: File format | | |
| Step 9 | If the collected data are file format, notification that file is ready is sent from RNOAMF to NFPM SMOS Consumer. |  |
| Step 10 | NFPM SMOS Consumer fetches the file from SMO. |  |
| Performance reporting: Data streaming. | | |
| Step 11 | RNOAMF provides the performance data stream to the NFPM SMOS consumer. |  |
| Query of measurement job | | |
| Step 12 | NFPM SMOS Consumer queries RNOAMF about the information on the PM job(s). |  |
| Step 13 | RNOAMF provides NFPM SMOS Consumer with the requested PM information. |  |
| Termination of measurement job | | |
| Step 14 | NFPM SMOS Consumer requests termination of PM job to RNOAMF. |  |
| Step 15-18 | RNOAMF requests stopping the PM job to collect performance data from the O-RAN NF instance. |  |
| Step 19 | The result of PM job termination is returned by RNOAMF to the NFPM SMOS Consumer. |  |
| Ends when | All the steps identified above are successfully completed. |  |
| Exceptions | Not applicable |  |
| Post Conditions | Not applicable |  |
| Traceability | TODO: FFS |  |

@startuml

Autonumber

skinparam sequenceArrowThickness 2

skinparam ParticipantPadding 5

skinparam BoxPadding 10

Box "Service Management & Orchestration\nFramework\n(Subscriber)" #gold

Participant " SMOS Consumer" as SMOF

Participant "RNOAMF (NFCM SMOS)" as SMOS

Participant "Service Management and Exposure" as SMES

end box

Box "O-RAN" #lightpink

Participant "O-RAN\nNF" as NF

end box

SMOS <-> SMES : Register Configuration Management Services:\n\tCreate/Delete \n\tModify/Query configuration

SMOF <-> SMES : Discover Configuration Management Services

SMOF -> SMOS : ServiceRequest

== Creation ==

SMOS -> NF : << O1 >> Creation

NF --> SMOS : << O1 >> Success/Fail

== Deletion ==

SMOS -> NF : << O1 >> Deletion

NF --> SMOS : << O1 >> Success/Fail

== Modification ==

Alt Use O1

SMOS -> NF : << O1 >> Modification

NF --> SMOS : << O1 >> Success/Fail

Opt If a qualifying CM notification subscription exists

NF ->> SMOS : CM Notification

End

Else Use OpenFH M-Plane

SMOS -> NF : << OpenFH M-plane >> Modification

NF --> SMOS : << OpenFH M-plane >> Success/Fail

Opt If a qualifying CM notification subscription exists

NF ->> SMOS : CM Notification

End

End

== Query ==

Opt If retrieving config from O-RAN NF is needed

Alt Use O1

SMOS -> NF : << O1 >> get

NF --> SMOS : << O1 >> the data

Else Use OpenFH M-Plane

SMOS -> NF : << OpenFH M-plane >> get

NF --> SMOS : << OpenFH M-plane >> the data

End

End

====

Opt If a qualifying CM notification subscription exists

SMOS ->> SMOF : CM Notification

End

SMOS --> SMOF : RequestResponse

@enduml

![](../assets/images/02436e3f844f.png)

A.3 Use Case: Enable Configuration Management Services

| Use Case Stage | Evolution / Specification | <<Uses>>  Related use |
| --- | --- | --- |
| Goal | NFCM SMOS provides configuration services to the NFCM SMOS consumers. |  |
| Actors and Roles | 1. RNOAMF(producer of NFCM SMOS): RAN OAM SMOF that produces RAN OAM SMOS. 2. NFCM SMOS Consumer: SMOF that consumes NFCM SMOS. 3. O-RAN NF: O-CU-CP, O-CU-UP, O-DU, O-RU or near-RT RIC. 4. SME: Service Management and Exposure SMOS. |  |
| Assumptions | None |  |
| Pre-conditions | 1. The RNOAMF(NFCM SMOS) works normally, and can provide NFCM SMOS to other SMOF(s). 2. RNOAMF(NFCM SMOS) has registered its data types with DMESs SMOF. 3. Secure network connectivity is already available between O-RAN NF(s). 4. O-RAN NF(s) works normally. |  |
| Begins when | NFCM SMOS Consumer decides to manage configuration(creation, deletion, modification, or query) on an NF instance. |  |
| Step 1 | RNOAMF registers NFCM SMOS capabilities using the SME SMOS: Create, Delete, Modify, or Query configuration target O-RAN NF(s)(as applicable). |  |
| Step 2 | NFCM SMOS Consumer discovers the NFCM services via SME SMOS. |  |
| Step 3 | NFCM SMOS Consumer requests service. |  |
| Create configuration | | |
| Step 4 | RNOAMF requests O-RAN NF to create instance over O1 interface. |  |
| Step 5 | O-RAN NF returns success or fail of creation request. |  |
| Delete configuration | | |
| Step 6 | RNOAMF requests O-RAN NF to delete instance over O1 interface. |  |
| Step 7 | O-RAN NF returns success or fail of deletion request. |  |
| Modify configuration | | |
| Step 8,11 | RNOAMF requests O-RAN NF to modify instance or data over O1 or Open Fronthaul M-plane interface. |  |
| Step 9,12 | O-RAN NF returns success or fail of modification request. |  |
| Step10,13 | O-RAN NF sends CM notification. |  |
| Query configuration | | |
| Step 14,16 | RNOAMF requests O-RAN NF to query over O1 or Open Fronthaul M-plane interface if retrieving config from the O-RAN NF instance is needed. |  |
| Step 15,17 | O-RAN NF returns the data. |  |
| Step 18 | RNOAMF sends CM notification if a subscription for it exists. |  |
| Step 19 | RNOAMF returns success or fail of service request. |  |
| Ends when | NFCM SMOS Consumer receives the success or fail of the request. |  |
| Exceptions | Not applicable |  |
| Post Conditions | Not applicable |  |
| Traceability | TODO: FFS |  |

@startuml

Autonumber

skinparam sequenceArrowThickness 2

skinparam ParticipantPadding 5

skinparam BoxPadding 10

Box "Service Management & Orchestration\nFramework\n(Subscriber)" #gold

Participant " SMOS Consumer" as SMOF

Participant "RNOAMF (NFCM SMOS)" as SMOS

Participant "Service Management and Exposure" as SMES

end box

Box "O-RAN" #lightpink

Participant "O-RAN\nNF" as NF

end box

SMOS <-> SMES : Register Configuration Management Services:\n\tCreate/Delete \n\tModify/Query configuration

SMOF <-> SMES : Discover Configuration Management Services

SMOF -> SMOS : ServiceRequest

== Creation ==

SMOS -> NF : << O1 >> Creation

NF --> SMOS : << O1 >> Success/Fail

== Deletion ==

SMOS -> NF : << O1 >> Deletion

NF --> SMOS : << O1 >> Success/Fail

== Modification ==

Alt Use O1

SMOS -> NF : << O1 >> Modification

NF --> SMOS : << O1 >> Success/Fail

Opt If a qualifying CM notification subscription exists

NF ->> SMOS : CM Notification

End

Else Use OpenFH M-Plane

SMOS -> NF : << OpenFH M-plane >> Modification

NF --> SMOS : << OpenFH M-plane >> Success/Fail

Opt If a qualifying CM notification subscription exists

NF ->> SMOS : CM Notification

End

End

== Query ==

Opt If retrieving config from O-RAN NF is needed

Alt Use O1

SMOS -> NF : << O1 >> get

NF --> SMOS : << O1 >> the data

Else Use OpenFH M-Plane

SMOS -> NF : << OpenFH M-plane >> get

NF --> SMOS : << OpenFH M-plane >> the data

End

End

====

Opt If a qualifying CM notification subscription exists

SMOS ->> SMOF : CM Notification

End

SMOS --> SMOF : RequestResponse

@enduml

![?????? ?????????  ???????????](../assets/images/03fec8c5d7ac.png)

A.4 Use Case SO SMOS: SO dynamic resource orchestration

Here, we focus on the role of the SO SMOS and the SO SMOS Producer interactions with other SMOSs, to fulfil the service orchestration request.

The following SO SMOS capabilities are used for enabling dynamic resource orchestration:

* + SO SMOS exposes its service orchestration capabilities with the SME SMOS and consumes SME SMOS to discover other SMOSs it might need to consume.
  + SO SMOS Producer supports the reception of service orchestration requests from SO SMOS Consumers e.g., non-RT RIC SMOF.
  + SO SMOS Producer should be able to execute the service orchestration request received from the SO SMOS Consumers by decomposing the service orchestration request into appropriate management and orchestration actions, and consuming other SMOSs such as the NFCM SMOS, NFO SMOS, TE &IV SMOS, etc.
  + SO SMOS Producer can determine the feasibility of executing received service orchestration request (e.g., orchestration policies can be used as part of a decision process).
  + SO SMOS Producer can consume the NFCM SMOS to request configuration of the O-RAN NFs and to change the connection points configuration between O-RU and O-DU, O-DU and O-CU.
  + When the SO SMOS Producer has to reduce the capacity of an O-RAN NF instance (e.g., to scale down, disable or terminate O-DU and O-CU instances), it determines the composition of the affected O-RAN NFs into their constituent NF Deployments. Then the SO SMOS Producer requests the identified LCM actions on each of the NF Deployments, by consuming the NFO SMOS.
  + SO SMOS Producer can interact with Transport Network (TN) Managers (external to SMO). The SO SMOS Producer requests TN configuration changes to the network devices of TN that constitute the front-haul and mid-haul associated with O-RU, O-DU and O-CU connection, by consuming the external services exposed by a TN Manager.
  + SO SMOS Producer can consume the TE & IV SMOS to update the RAN related topology information in the TE &IV repository upon successful completion of the service orchestration actions.

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Goal | SO SMOS implements service orchestration based on the service orchestration request generated by the SO SMOS Consumer (e.g., an rApp). |  |
| Actors and Roles | SME SMOS:Service Management and Exposure, described in sect. 5.4.  SO SMOS Consumer (e.g., rApp)  SO SMOS Producer  ORMO SMOF (NFO SMOS Producer), described in sect. 6.1.2  RAN NF OAM SMOF (NFCM SMOS Producer), described in section 6.1.1  TN Managers, external to SMO  TE & IV SMOS described in section 5.3. |  |
| Assumptions | O2 interface connectivity is established between SMO and O-Cloud  O1 interface connectivity is established.  Network is operational. |  |
| Pre-conditions | The rApp has discovered the SO SMOS capabilities via SME.  The SO SMOS Consumer (e.g., rApp) is an authorized consumer.  RAN NF OAM SMOF registered its NFCM SMOS capabilities with SME.  ORMO registered the NFO SMOS capabilities with SME.  TN Manager registered the TN Manager service capabilities with SME.  TE & IV SMOS is registered with SME. |  |
| Begins when | The operator has made the decision to suspend unnecessary resources during off-peak hours.  The rApp has determined the service orchestration request it has to make to the SO SMOS Producer |  |
| Step 1 (M) | SO SMOS Producer registers the SO SMOS capabilities with the SME. |  |
| Step 2 (M) | After successful service registration, the SME SMOS Producer responds to SO SMOS Producer with the service profile ID. |  |
| Step 3 (M) | The SO SMOS Consumer (e.g., rApp) determines that it needs to make a service orchestration request. The SO SMOS Consumer will consume services of the SME SMOS to discover the SO SMOS. |  |
| Step 4 (M) | The SO SMOS Consumer uses the SO SMOS to make the request for shutdown and redeployment of several O-RAN NFs. |  |
| Step 5 (M) | SO SMOS Producer determines the necessary actions for the service request, in this use case, these are configuration changes to O-RAN NFs and LCM actions on their constituent NF Deployment instances. |  |
| Step 6 (M) | SO SMOS Producer performs the actions it identified by consuming the NFCM SMOS to make configuration changes to the O-RAN NFs. |  |
| Step 7 (M) | SO SMOS Producer queries the latest topology information by consuming the TE & IV SMOS to find out which NF Deployment instances are related to the O-RAN NFs. |  |
| Step 8 (M) | SO SMOS Producer performs the LCM actions it identified as appropriate on the respective NF Deployment instances (e.g., terminate) by consuming the NFO SMOS. |  |
| Step 9 (M) | SO SMOS Producer performs the actions it identified by consuming the TN Management Service to make network setting changes to the front-haul and mid-haul. |  |
| Step 10 (O) | SO SMOS notifies its SO SMOS Consumer (e.g., rApp) about the completion of the service orchestration actions. |  |
| Ends when | The SO has completed the requested service orchestration actions. |  |
| Exceptions | TBD |  |
| Post Conditions | End |  |

@startuml

skinparam ParticipantPadding 5

skinparam BoxPadding 10

skinparam defaultFontSize 12

autonumber

Box "O-Cloud" #lightseagreen

participant "DMS" as DMS

participant "IMS" as IMS

End box

Box "Service Management and Orchestration Framework" #gold

Participant "ORMO SMOS\n(NFO & FOCOM)" as ORMO

Participant "RAN NF OAM SMOS" as OAM

Participant "TE & IV SMOS" as TEIV

Participant "SO SMOS" as TM

Participant "SME SMOS" as SME

Participant "Non-RT RIC SMOS" as nRT

participant "rApp" as rAP

End box

Participant "TN Manager" as TNM

Box " O-RAN Nodes" #lightpink

Participant "E2-Node(s)" as E2NODES

End box

group Service registration

Note over ORMO

ORMO SMOS registers services

related to Orchestration with SME SMOS

End note

ORMO -> SME : Register services

SME --> ORMO : Success (Service Profile ID)

Note over OAM

RAN NF OAM SMOS registers services

related to PM, FM ,CM with SME SMOS

End note

OAM -> SME : Register services

SME --> OAM : Success (Service Profile ID)

Note over TNM

TN Management Service registers services

End note

TNM -> SME : Register services

SME --> TNM : Success (Service Profile ID)

Note over TEIV

TE & IV SMOS registers services

related to topology with SME SMOS

End note

TEIV -> SME : Register services

SME --> TEIV : Success (Service Profile ID)

Note over TM

SO SMOS registers services

related to orchestration with SME SMOS

End note

TM -> SME : Register services

SME --> TM : Success (Service Profile ID)

end

group Service discovery

Note over TM, nRT

Non-RT RIC SMOS discovers RAN NF OAM SMOS with SME SMOS.

End note

nRT -> SME : <<R1>> Discover RAN NF OAM SMOS

SME --> nRT : <<R1>> Discovery Result

Note over TM, nRT

Non-RT RIC SMOS discovers TE & IV SMOS with SME SMOS.

End note

nRT -> SME : <<R1>> Discover TEIV SMOS

SME --> nRT : <<R1>> Discovery Result

Note over TM, nRT

Non-RT RIC SMOS discovers SO SMOS with SME SMOS.

End note

nRT -> SME : <<R1>> Discover SO SMOS

SME --> nRT : <<R1>> Discovery Result

Note over TM, nRT

SO SMOS discovers ORMO SMOS with SME SMOS.

End note

TM -> SME : Discover ORMO SMOS

SME --> TM : Discovery Result

Note over TM, nRT

SO SMOF discovers RAN NF OAM SMOS with SME SMOS.

End note

TM -> SME : Discover RAN NF OAM SMOS

SME --> TM : Discovery Result

Note over TM, nRT

SO SMOF discovers TN Manager Service with SME SMOS.

End note

TM-> SME : Discover TN Manager Service

SME --> TM : Discovery Result

Note over TM, nRT

SO SMOS discovers TE & IV SMOS with SME SMOS.

End note

TM -> SME : Discover TEIV SMOS services

SME --> TM : Discovery Result

End

group Analysis

Note over nRT, rAP

rApp gets PM data from RAN NF OAM SMOS

End note

rAP <-> OAM : Query and collect PM Data

rAP -> rAP : Estimate wireless bandwidth\n utilization for all cells to identify periods of low activity

rAP -> rAP : Monitor when topology changes occur

Note over nRT, rAP

rApp gets topology from TE & IV SMOS

End note

rAP <-> TEIV : Query and collect topology Data

rAP -> rAP : Based on the current topology\n and the estimated wireless bandwidth utilization of all cells, \n rApp calculates the optimal topology to apply \nduring low operation from the viewpoint of power saving.

end

group Deployment

Note over nRT, rAP

rApp requests service orchestration to SO SMOS

End note

rAP -> TM : Service Orchestration Request

TM -> TM : Decision of configuration change procedure

loop Repeat until deployment is complete

TM -> ORMO : Resource Deployment Request

ORMO <-> IMS : <<O2>> O2 action

ORMO <-> DMS : <<O2>> O2 action

ORMO -> TEIV : Notify O-cloud Information

TEIV --> ORMO : Confirm success

ORMO --> TM : Resource Deployment Response

TM -> OAM : Configuration change request

OAM <-> E2NODES : <<O1>> O1 action

OAM -> TEIV : Notify NF Information

TEIV --> OAM : Confirm success

OAM --> TM : Configuration change response

TM -> TNM : network change request

TNM -> TNM : Change switch setteing

TNM -> TEIV : Notify Network Information

TEIV --> TNM : Confirm success

OAM --> TM : Configuration change response

end

group Inventory Update

TM -> TEIV : Query and collect topology Data

TEIV --> TM :Return topology Data

TM -> TM : Verify that topology Data\n has changed to that requested by rApp.

end

TM --> rAP : Service Orchestration Complete

group Option Sequence

rAP -> TEIV : Query and collect topology Data

TEIV --> rAP : Return topology Data

rAP -> rAP : Verify that topology Data\n has changed to that requested by rApp.

end

end

@enduml

![](../assets/images/7ea823d72c38.png)

Annex: Change History

|  |  |  |
| --- | --- | --- |
| Date | Revision | Description |
| 2022.xx.yy | 01.00 | Published as Final version 01.00 |
| 2024.xx.yy | 02.00 | Published as Final version 02.00 |
| 2024-05-13 | V02.00.01 | Incorporated approved CR:   * CMCC-2023.12.01-WG1-CR-103-DEC\_SMO-TR\_\_addRecommandSolution\_v07 |
| 2024-07-10 | V02.00.01 | Updated the SMO release title and file naming, from R003 to R004 |
---

- View in [Reader Mode](https://simewu.com/spec-reader/pages/11-WG1/O-RAN.WG1.TR.Decoupled-SMO-Architecture-R004-v03.00.docx).
- Go back to [Table of Contents](../README.md).
- Download the [Original Document](https://github.com/Simewu/spec-reader/raw/refs/heads/main/documents/O-RAN.WG1.TR.Decoupled-SMO-Architecture-R004-v03.00.docx).
