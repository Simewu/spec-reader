## O-RAN.WG10.TS.OAM-Architecture-R004-v14.00.docx

- View in [Reader Mode](https://simewu.com/spec-reader/pages/03-WG10/O-RAN.WG10.TS.OAM-Architecture-R004-v14.00.docx).
- Go back to [Table of Contents](../README.md).
- Download the [Original Document](https://github.com/Simewu/spec-reader/raw/refs/heads/main/documents/O-RAN.WG10.TS.OAM-Architecture-R004-v14.00.docx).

---

## ![](../assets/images/37dd2533fadc.jpg)O-RAN.WG10.TS.OAM-Architecture-R004-v14.00

*Technical Specification*

1

**O-RAN Work Group 10 O-RAN Operations and Maintenance Architecture**

Copyright (C) 2025 by the O-RAN ALLIANCE e.V.

The copying or incorporation into any other work of part or all of the material available in this specification in any form without the prior written permission of O-RAN ALLIANCE e.V. is prohibited, save that you may print or download extracts of the material of this specification for your personal use, or copy the material of this specification for the purpose of sending to individual third parties for their information provided that you acknowledge O-RAN ALLIANCE as the source of the material and that you inform the third party that these conditions apply to them and that they must comply with them.

O-RAN ALLIANCE e.V., Buschkauler Weg 27, 53347 Alfter, Germany Register of Associations, Bonn VR 11238, VAT ID DE321720189

# Contents

Foreword 4

Modal verbs terminology 4

1. Scope 5
2. References 6
   1. Normative References 6
   2. Informative references 6
3. Definition of terms, symbols and abbreviations 7
   1. Terms 7
   2. Symbols 7
   3. Abbreviations 7
4. O-RAN Overview 8
   1. Scope and Objectives 8
   2. End-to-End OAM Use Cases (informative) 8
      1. O-RAN Provisioning Use Case 8
      2. O-RAN Measurement Data Collection Use Case 13
      3. O-RAN Configuration 20
      4. Use Cases for O-RU Hierarchical Management Architecture Model 23
      5. Network Energy Saving Use Cases 31
      6. Policy management 36
5. OAM Architecture 39
   1. Architectural Principles 39
      1. Alarm Dictionary Overview 40
      2. Alarm Dictionary Association with O-RAN Entities and Content 40
      3. Compatibility for O1 Interface 41
   2. Architecture Requirements 42
      1. Functional Requirements 42
      2. Non-Functional Requirements 43
      3. Security Requirements 43
   3. Reference Architecture 44
      1. Architectural Building Blocks 44
      2. Basic OAM Architecture 45
      3. O-RU Management Models and Managed Deployment Options 48
      4. Network Functions Deployed behind a NAT 48
      5. Relationships between the O1 NRM entities and Architectural entities 49
6. Application Lifecycle Management (LCM) 50
   1. Scope 51
      1. Application Package Model 51
      2. App Development Lifecycles 53
      3. App Onboarding Lifecycles 54
      4. App Operation Lifecycles 56
   2. Common Application Lifecycle Conclusions 57
      1. Information Consumers 57
      2. Solution SW Package Lifecycle 58
      3. Onboarded SW Package Lifecycles 58
      4. Onboarded ManagementDescriptor Certification Lifecycle 58
      5. Application Training Lifecycle 59
      6. Deploy Instance Lifecycle 59

Annex A (informative): Cardinality 60

Annex B: Void 61

Annex C (informative): Common App Lifecycle Flows 62

* 1. Solution SW Package Lifecycle 62
  2. Onboarded SW Package Lifecycle 66
  3. Onboarded ManagementDescriptor Certification Lifecycle 70
  4. Application Training Lifecycle 72
  5. Deploy rApp Instance Lifecycle 73

Annex D (normative): Shared O-RU 76

* 1. Introduction 76
  2. Single Operator Shared O-RU 76
     1. O-DU(s) roles 76
     2. Configuring O-RU 76
     3. Supervision Monitoring per O-DU 77
     4. NETCONF call home 77
  3. Multi Operator Shared O-RU 77
     1. O-DU(s) roles 77
     2. Configuring O-RU general OAM related configuration 78
     3. Managing O-RU general OAM related functions 78
     4. NETCONF server user account provisioning for shared resource operators 78
     5. NETCONF call home 78
     6. Enhanced sro-id based NETCONF access control 79
     7. Supervision Monitoring per O-DU 79
     8. Processing element configuration 79
     9. Carrier Partitioning and Configuration in Shared O-RU 79
     10. Notification of configuration updates 79
     11. Shared O-RU Reset Co-ordination 79
     12. Locked administrative state 80
     13. Antenna calibration 80
     14. Shared O-RU with antenna line devices 80
     15. Shared O-RU operation in combination with shared cell 80
  4. Content of Open Fronthaul M-Plane ODU ID 80
  5. Content of Open Fronthaul M-Plane SRO ID 80

Annex E (informative): Network Energy Saving 81

* 1. Introduction 81
  2. Cell and carrier deactivation / activation 81
     1. Flow description 81
  3. Void 83
  4. Void 83

Annex F (informative): Policy Example 84

Annex ZZZ: Void 85

Annex (informative): Change History 86

# Foreword

This Technical Specification (TS) has been produced by WG10 of the O-RAN Alliance.

The content of the present document is subject to continuing work within O-RAN and may change following formal O- RAN approval. Should the O-RAN Alliance modify the contents of the present document, it will be re-released by O- RAN with an identifying change of version date and an increase in version number as follows:

version xx.yy.zz where:

xx: the first digit-group is incremented for all changes of substance, i.e., technical enhancements, corrections, updates, etc. (the initial approved document will have xx=01). Always 2 digits with leading zero if needed.

yy: the second digit-group is incremented when editorial only changes have been incorporated in the document.

Always 2 digits with leading zero if needed.

zz: the third digit-group included only in working versions of the document indicating incremental changes during the editing process. External versions never include the third digit-group. Always 2 digits with leading zero if needed.

# Modal verbs terminology

In the present document "**shall**", "**shall not**", "**should**", "**should not**", "**may**", "**need not**", "**will**", "**will not**", "**can**" and "**cannot**" are to be interpreted as described in clause 3.2 of the O-RAN Drafting Rules (Verbal forms for the expression of provisions).

"**must**" and "**must not**" are **NOT** allowed in O-RAN deliverables except when used in direct citation.

# Scope

This document defines O-RAN OAM architecture and interface functions. The OAM architecture supports a variety of management network deployment models, including the model of management entities (NMS/EMS/MANO) connecting directly to NEs, and the indirect connection (e.g., Open Fronthaul M-Plane involved) model. A separate OAM interface document provides details of the functions and protocols conveyed over the interface, that include management functions, procedures, operations, and corresponding solutions.

# References

### Normative References

References are either specific (identified by date of publication and/or edition number or version number) or

non-specific. For specific references, only the cited version applies. For non-specific references, the latest version of the referenced document (including any amendments) applies. In the case of a reference to a 3GPP document, a non- specific reference implicitly refers to the latest version of that document in Release 18.

NOTE: While any hyperlinks included in this clause were valid at the time of publication, O-RAN cannot guarantee their long-term validity.

The following referenced documents are necessary for the application of the present document.

1. O-RAN TS O-RAN.WG4.MP.0: "O-RAN Management Plane Specification" (referred to as "OFH M- Plane")
2. O-RAN TS O-RAN.WG10.O1-Interface: "O-RAN O1 Interface Specification" (referred to as "O1- Interface")
3. O-RAN TS O-RAN.WG10.Information Model and Data Models: "O-RAN Information Model and Data Models Specification" (referred to as "IM/DM")
4. O-RAN TS O-RAN.WG11.SecReqSpecs: "O-RAN Security Requirements and Controls Specifications" (referred to as "SecReqSpecs")
5. O-RAN TS O-RAN.WG10.O1PMeas: "O-RAN O1 Performance Measurements Specification" (referred to as "O1-PMeas")
6. O-RAN TS O-RAN.WG1.Use-Cases-Detailed-Specification: "O-RAN Use Cases Detailed Specification" (referred to as "UC DetailedSpec")

## Informative references

References are either specific (identified by date of publication and/or edition number or version number) or

non-specific. For specific references, only the cited version applies. For non-specific references, the latest version of the referenced document (including any amendments) applies. In the case of a reference to a 3GPP document, a non- specific reference implicitly refers to the latest version of that document in Release 18.

NOTE: While any hyperlinks included in this clause were valid at the time of publication, O-RAN cannot guarantee their long-term validity.

The following referenced documents are not necessary for the application of the present document, but they assist the user with regard to a particular subject area:

[i.1] 3GPP TR 21.905: "Vocabulary for 3GPP Specifications"

[i.2] 3GPP TS 28.622: "Telecommunication management; Generic Network Resource Model (NRM) Integration Reference Point (IRP); Information Service (IS)".

[i.3] 3GPP TS 28.532: Management and orchestration; Generic management services [i.4] 3GPP TS 28.533: Management and orchestration; Architecture framework

[i.5] 3GPP TS 28.550: Management and orchestration; Performance assurance [i.6] Void

[i.7] O-RAN White Paper: "O-RAN: Towards an Open and Smart RAN", October 2018

[i.8] O-RAN TS O-RAN.WG6.ORCH-USE-CASES, "O-RAN Cloudification and Orchestration Use Cases and Requirements for O-RAN Virtualized RAN" (referred to as "CLD-ORCH-UC")

[i.9] O-RAN TS O-RAN.WG6.O2-GA&P: "O-RAN O2 Interface General Aspects and Principles" (referred to as "O2-GA&P")

[i.10] O-RAN TS O-RAN.WG1.OAD: "O-RAN Architecture Description" (referred to as "OAD") [i.11] Void

[i.12] RFC 6241, "Network Configuration Protocol (NETCONF)", IETF, June 2011 [i.13] Void

[i.14] O-RAN TS O-RAN.WG4.CUS.0: "O-RAN Control, User and Synchronization Plane Specification" (referred to as "OFH CUS-Plane")

[i.15] 3GPP TS 23.501: "System Architecture for the 5G System (5GS)"

[i.16] O-RAN TS O-RAN.WG10.NRM: "O-RAN O1 Network Resource Model Specification" (referred to as "O1-NRM")

[i.17] 3GPP TS 32.156: "Telecommunication Management; Fixed Mobile Convergence (FMC) Model repertoire" [i.18] O-RAN TR O-RAN.WG1.NESUC: "Network Energy Saving Use Cases Technical Report" (referred to as

"NESUC")

# Definition of terms, symbols and abbreviations

## Terms

For the purposes of the present document, the terms and definitions given in 3GPP TR 21.905 [i.1], 3GPP TS 28.533 [i.4], OAD [i.10], and the following apply. A term defined in the present document takes precedence over the definition of the same term, if any, in 3GPP TR 21.905 [i.1], 3GPP TS 28.533 [i.4], and OAD [i.10].

**Service Planning**: The activity of a Service Operator around certifying a solution configuration for deployment into their network.

**Service Provider**: A network provider who is planning to deploy applications into their network.

**Solution Provider**: An application developer who delivers applications to Service Providers.

## Symbols

VOID

## Abbreviations

For the purposes of the present document, the abbreviations given in 3GPP TR 21.905 [i.1], 3GPP TS 28.533 [i.4], OAD [i.10], and the following apply. An abbreviation defined in the present document takes precedence over the definition of the same abbreviation, if any, in 3GPP TR 21.905 [i.1], 3GPP TS 28.533 [i.4], and OAD [i.10].

ALD Antenna Line Device

ASM Advanced Sleep Mode

CMT Container Management Technology

CNA Cloud Native Application

CNAD Cloud Native Application Developer CNF Cloud-native Network Function

COTS Commercial Off-the-Shelf

CP Cloud Provider

DMS Deployment Management Service

DS Data Store

EMS Element Management System

ESP Energy Saving Policy

FTP File Transfer Protocol

FTPeS Explicit SSL File Transfer Protocol

FOCOM Federated O-Cloud Orchestration and Management LCM Lifecycle Management

MANO Management and Orchestration

MMP Meet-Me-Point

NAT Network Address Translation

NFO Network Function Orchestration

NFV Network Function Virtualization

PCP Port Control Protocol

RTE Run Time Environment

SDK Software Development Kit

SDLC Software Development LifeCycle

SFTP SSH File Transfer Protocol

UPNP Universal Plug-N-Play

VNF Virtualized Network Function

VNFD Virtualized Network Function Descriptor

# O-RAN Overview

## Scope and Objectives

The O-RAN OAM Architecture identifies management services, managed functions and managed elements supported in O-RAN, including the interworking between service management and orchestration and other O-RAN components such as infrastructure management. Requirements are derived from end-to-end OAM use cases, using the initial provisioning of O-RAN service across VNFs and PNFs as the primary use case. The architecture identifies the interfaces between O-RAN Service Management and Orchestration and Managed Elements for different models and example deployment options. It provides a description of the LifeCycle Management for applications delivered from a Solution Provider to a Service Provider/Network Operator.

## End-to-End OAM Use Cases (informative)

### O-RAN Provisioning Use Case

Editor's note: The content of this clause is no longer technically relevant and needs to be reviewed and revised.

#### Basic Objective

In the O-RAN architecture, the radio side includes Near-RT RIC, O-CU-CP, O-CU-UP, O-DU, and O-RU Network Functions (NFs). The management side is comprised of the Service Management and Orchestration Framework (and thus the Non-RT RIC). In the NFV environment, O-RAN Network Functions can also be implemented in a virtualized form, and thus include an Infrastructure layer (e.g., COTS/White Box/Peripheral hardware and virtualization layer) based on an O-Cloud.

The current use case focuses on O-RAN Network Function deployment rather than physical construction. According to the radio coverage requirements, operators may deploy the O-RAN NFs on dedicated physical resources and/or virtualized resources in a specific area.

This use case assumes that the O-RAN NFs are deployed based on a Network Design using Virtualized Network Functions (VNFs) for centralized functions and Physical Network Functions (PNFs) for functions closer to the customer, so that the sequence calls for deployment of VNFs for the Near-RT RIC, O-CU-CP and O-CU-UP first followed by PNFs for the O-DU and O-RU. Note: RF functions are always realized as PNFs, but the O-DU can be realized as a PNF or VNF; this document uses PNF as an example to illustrate the associated OAM flows.

It is also assumed that secure network connectivity is already available between RAN components.

#### Entities/Resources Involved

To support the O-RAN network provisioning, the Service Management and Orchestration Framework needs to support the following capabilities:

* O-RAN NF deployed in selected area
  1. For non-virtualized parts, the Service Management and Orchestration Framework supports the deployment of PNFs on the target dedicated physical resources which satisfy the coverage requirements, with management through the O1 interface.
  2. For VNFs, the Service Management and Orchestration Framework has the capability to interact with the O- Cloud to perform NF life cycle management, e.g., instantiate the VNF on the target infrastructure through the O2 interface (e.g., indicate the selected geo-location for each VNF to be instantiated, where close to the PNFs).
  3. The Service Management and Orchestration Framework has the capability to consume the provisioning management service through the O1 interface to manage the configuration of the NF, details are described in O1-Interface [2].
* O-RAN network provisioning
  1. Based on the deployed NFs, the Service Management and Orchestration Framework configures the IP addressing, etc. in the PNFs and VNFs to support connectivity between them (this operation may also be performed during the instantiation steps).
  2. Operators can operate and maintain the network dynamically through the O1 and/or O2 interface by means of:
     1. Reconfiguration of the NFs
     2. System update (usually refers to software management, without adding NFs) and system upgrade (the NFs can be added/removed/modified)

According to above, the Service Management and Orchestration Framework together with the O-Cloud implements the O-RAN NF deployment and provisioning, creating an O-RAN network to provide service to consumers.

#### Solutions

Table 4.2.1.3-1 shows the O-RAN provisioning procedures.

**Table 4.2.1.3-1: O-RAN provisioning**

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Goal | O-RAN provisioning |  |
| Actors and Roles | [1]. Service Management and Orchestration Framework: NFO, OAM Functions, Non-RT RIC  [2]. O-Cloud: DMS  [3]. PNF  [4]. VNF |  |
| Assumptions |  |  |
| Pre-conditions | [1]. The Service Management and Orchestration Framework and O- Cloud are connected and interact.  [2]. O-Cloud supports platform and resource management. [3]. The PNF was constructed/installed but not activated.  [4]. The VNF Software Package has been uploaded to the O-Cloud. [5]. Secure network connectivity is already available between RAN  components. |  |
| Begins when | The network operator/manager decides to deploy an O-RAN network in  specific geo-location |  |
| Step 1 (M) | The service designer deploys Service Model and Artifacts to SMO |  |
| Step 2 (M) | SMO on boarding the VNF Descriptors for the service to the O-Cloud |  |
| Step 3 (M) | The radio planner orders RAN Service Deployment |  |
| Step 4 (M) | The SMO initiates the O-RAN Service instantiation |  |
| Step 5 (M) | The SMO interacts with O-Cloud to instantiate Near-RT RIC based on  Near-RT RIC VNFD |  |
| Step 6 (M) | The O-Cloud creates VNF of Near-RT RIC |  |
| Step 7 (M) | The O-Cloud notifies the SMO the Near-RT RIC has been instantiated  and SMO updates its inventory |  |
| Step 8 (M) | The SMO configures the Near-RT RIC |  |
| Step 9 (M) | The O-Cloud creates VNF of O-CU-CP |  |
| Step 10 (M) | The O-Cloud notifies the SMO the O-CU-CP has been instantiated and  SMO updates its inventory |  |
| Step 11 (M) | The SMO prepares configuration, e.g., Near-RT RIC related |  |
| Step 12 (M) | The SMO configures the O-CU-CP |  |
| Step 13 (M) | The SMO interacts with the O-Cloud to instantiate O-CU-UP. For  multiple O-CU-UP VNF, steps 13 to 17 are repeated |  |
| Step 14 (M) | The O-Cloud creates VNF of O-CU-UP |  |
| Step 15 (M) | The O-Cloud notifies the SMO the O-CU-UP has been instantiated and  SMO updates its inventory |  |
| Step 16 (M) | The SMO prepares configuration, e.g., Near-RT RIC, O-CU-CP related |  |
| Step 17 (M) | The SMO configures the O-CU-UP |  |
| Step 18 (O) | The SMO deploys xApp to the Near-RT RIC |  |
| Step 19 (O) | After the above steps the Near-RT RIC may subscribe to the O-CU-CP  via the E2 interface |  |
| Step 20 (O) | After the above steps the Near-RT RIC may subscribe to the O-CU-UP  via the E2 interface |  |
| Step 21 (M) | SMO adds O-DU into inventory, e.g., with an O-DU.ID for each O-DU.  For multiple O-DU this step is repeated |  |
| Step 22 (M) | SMO adds O-RU into inventory in the O-DU record, e.g., with an O-  RU.ID for each O-RU. For multiple O-RU this step is repeated |  |
| Step 23 (M) | The field technician powers on the O-DU |  |
| Step 24 (M) | The O-DU sends Registration to the SMO  Note: the controller address is determined |  |
| Step 25 (M) | The SMO registers the O-DU as on-line |  |
| Step 26 (M) | The SMO prepares O-DU configuration, e.g., related information from  Near-RT RIC and O-CU-CP, O-CU-UP |  |
| Step 27 (M) | The SMO configures the O-DU |  |
| Step 28 (O) | The SMO may deploy xApp to Near-RT RIC |  |

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>> Related use** |
| Step 29 (O) | After the above steps the Near-RT RIC may interact with O-DU via E2 interface |  |
| Step 30 (M) | The field technician powers on the O-RU |  |
| Step 31 (M) | The O-RU registers to the O-DU  Note: additional actions for hybrid case not shown |  |
| Step 32 (M) | The O-DU sends Config Change Notification to the SMO indicating O- RU on-line |  |
| Step 33 (M) | The SMO registers the O-RU as on-line |  |
| Step 34 (M) | The SMO configures the O-RU via O-DU |  |
| Step 35 (M) | The O-DU gets O-RU configuration information from the SMO |  |
| Step 36 (M) | The O-DU configures the O-RU |  |
| Step 37 (M) | O-RU Registration is sent to the SMO. |  |
| Step 38 (M) | The SMO registers the O-RU as on-line |  |
| Step 39 (M) | The SMO prepares O-RU configuration, e.g., including co-related O-DU. |  |
| Step 40 (M) | The SMO configures the O-RU |  |
| Ends when | All O-RAN network functions needed for service have been registered and configured; SMO holds current inventory of all O-RAN network functions |  |
| Exceptions | Not applicable |  |
| Post Conditions | The O-RAN network has been established and is ready to provide service to customers |  |
| Traceability | REQ-M&O-FUN1, REQ-M&O-FUN2, REQ-M&O-FUN3, REQ-M&O- FUN4, REQ-M&O-FUN5, REQ-M&O-FUN6, REQ-M&O-FUN9, REQ- M&O-FUN10 |  |

![](../assets/images/8dcbeb18988c.png)

![](../assets/images/851f1e1ed486.png)

**Figure 4.2.1.3-1: O-RAN Provisioning Use Case**

### O-RAN Measurement Data Collection Use Case

#### Basic Objective

In this use case, the Non-RT RIC as the intelligent management center located in Service Management and Orchestration Framework determines that measurement data is needed and interacts with the SMO OAM Functions to collect measurement data from network for AI/ML training/inference/analyzing, and then generate optimization operations in order to improve the end-to-end user service experience and the network performance.

According to the Service Management and Orchestration Framework, to fulfill the Non-RT RIC requested data collection, the following capability should be supported by the SMO (framework):

1. The SMO should support the MnS component Type A (defined in 3GPP TS 28.533 [i.4]) generation and the corresponding operation performing (defined in 3GPP TS 28.532 [i.3] and 3GPP TS 28.550 [i.5]), according to the measurement data collection request from the Non-RT RIC
2. The SMO (framework) should support the MnS component type C (defined in 3GPP TS 28.533 [i.4]) consumption such as the measurement data requested by the Non-RT RIC

The current use case focuses on the Non-RT RIC requested measurement data collection and consumption, the SMO should generate the PM Job and perform the PM Job control operations accordingly, and the SMO (framework) should support the measurement data consumption by the Non-RT RIC.

Notes:

1. In the O-RAN SMO framework, in order to avoid PM Job conflict, it is suggested that the SMO take the responsibility for generating the PM Job and performing the PM Job control related operations.
2. In this use case, the MnS producer of an O-RAN NF decides if the PM Job is acceptable or not, in other words, it is ultimately this MnS producer which decides whether the measurement data collection task can be established or not.

#### Entities/Resources Involved

Roles in the PM Job Control related operations:

1. The Non-RT RIC: PM Job initiator
2. The SMO (framework): measurement service component type A consumer
3. The MnF of the O-RAN NF: measurement service component type A producer

To fulfill the Non-RT RIC requested measurement data collection by the SMO on the O1/O2 interface, the information related to the collection task shall comply with O1-Interface [2], clause 6.3.

The measurement data collection information provided by the Non-RT RIC should be converted into a PM Job, and any management operations to the data collection task requested by the Non-RT RIC should be converted into the O1/O2 interface supported PM Job control related management service operations by the SMO.

Roles in the NotifyFileReady subscribing:

1. SMO: management service component type A consumer (consumerReference, as defined in 3GPP TS 28.532 [i.3])
2. MnF of the O-RAN NF: producer of notifications Roles in the measurement data consumption:
3. SMO: management service component type C consumer
4. MnF of the NFs: producer of streaming data
5. File Server: storage the measurement data file

#### Solutions

##### Measurement Data Collection Creation

Table 4.2.2.3.1-1 shows the procedure of the Non-RT RIC requested measurement data collection task fulfilled by the SMO on the O1/O2 interface.

**Table 4.2.2.3.1-1: Measurement Data Collection Creation**

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Goal | O-RAN Measurement Data Collection |  |
| Actors and Roles | [1]. Service Management and Orchestration Framework [2]. Non-RT RIC  [3]. O-Cloud  [4]. MnF(s) of the O-RAN NFs  [5]. O-RAN NFs, e.g., O-CU, O-DU, O-RU, Near-RT RIC. |  |
| Assumptions | None |  |
| Pre-conditions | [1]. The SMO and the Non-RT RIC are connected and interact. [2]. O-RAN components are in running status.  [3]. Secure network connectivity is already available between RAN components. |  |
| Begins when | The Non-RT RIC determines that it needs measurement data from the MnF of O-RAN NF (e.g., O-CU-CP) and corresponding O-Cloud  infrastructure resources. |  |
| Step 1 (M) | The Non-RT RIC provides the information of the measurement data  to the SMO |  |
| Step 2 (M) | The SMO generates a PM Job as the Non-RT RIC required |  |
| Step 3.1 (M) | SMO performs PM Job control management to the MnF via the O1  interface, e.g., Operation createMeasurementJob defined in 3GPP TS 28.550 [i.5] |  |
| Step 3.2 (M) | The SMO performs PM Job control management to the O-Cloud over the O2 interface for the infrastructure resources related to the O-CU-  CP instance. |  |
| Step 4.1 (M) | The MnF responds to the SMO with the PM Job creation result. The  PM Job ID should be contained. |  |
| Step 4.2 (M) | The O-Cloud responds to the SMO with the PM Job creation result  with the PM Job ID. |  |
| Step 5.1 (M) | The SMO subscribes to PM Notifications to the MnF instance via the O1 interface. consumerReference defined in 3GPP TS 28.532 [i.3],  clause 11.6.1.3 may be the SMO address. |  |
| Step 5.2 (M) | The SMO subscribes to O-RAN NF related infrastructure resource  instance PM data to the O-Cloud over the O2 interface |  |
| Step 6.1 (M) | The MnF provides the result of this operation to the SMO |  |
| Step 6.2 (M) | The O-Cloud provides the SMO with the result of the subscription to  the O-CU-CP infrastructure resource instance |  |
| Step 7 (M) | The SMO provides the result of the measurement data collection  establishment to the Non-RT RIC |  |
| Ends when | Non-RT RIC has measurement data |  |
| Exceptions | None |  |
| Post Conditions | The Non-RT RIC initiated measurement data collection has been fulfilled by the SMO; the measured O-RAN MnFs generate measured  data as the PM Job required. The subscription to the File Ready notification has been created successfully |  |
| Traceability | REQ-M&O-FUN7 |  |

![](../assets/images/f5c7e7eb44b2.png)

**Figure 4.2.2.3.1-1: Measurement Data Collection Creation**

##### Measurement Data File Consumption

With the performance data file reporting method:

* The measurement data file may be stored in a file server, and the path should be contained in the NotifyFileReady.
* Once the measurement data file has been prepared, the MnF of the O-CU-CP instance shall report the notification NotifyFileReady to the SMO.

Table 4.2.2.3.2-1 shows the measurement data file consumption.

**Table 4.2.2.3.2-1: Measurement Data File Ready Report**

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>> Related use** |
| Goal | O-RAN Measurement Data Collection |  |
| Actors and Roles | [1]. Service Management and Orchestration Framework [2]. Non-RT RIC  [3]. O-Cloud  [4]. MnF(s) of the O-RAN NFs  [5]. O-RAN NFs, e.g., O-CU, O-DU, O-RU, Near-RT RIC. |  |
| Assumptions | None |  |
| Pre-conditions | [1]. The SMO and the Non-RT RIC are connected and interact. [2]. O-RAN components are in running status.  [3]. Secure network connectivity is already available between RAN components. |  |
| Begins when | The SMO shall perform the Operation Subscribe to provide the consumer information to the measurement data producer in the MnF of the NF. The producer in the MnF of the NF shall report the  NotifyFileReady once the measurement data file has been prepared |  |
| Step 1.1 (M) | The MnF of the O-CU-CP sends the notification NotifyFileReady to the SMO, and it is consumed by the SMO |  |
| Step 1.2 (M) | The O-Cloud reports the infrastructure resource measured data file to the SMO |  |
| Step 2 (M) | The SMO retrieves the data file from the FileServer, and the collected  data is eventually consumed by the Non-RT RIC |  |
| Ends when | SMO has collected data |  |
| Exceptions | None |  |
| Post Conditions | The SMO has received the notification of NotifyFileReady successfully, the data file is consumed by the Non-RT RIC |  |
| Traceability | REQ-M&O-FUN7 |  |

![](../assets/images/6de6481e94c2.png)

**Figure 4.2.2.3.2-1: Measurement Data File Consumption**

##### Measurement Streaming Data Consumption

With the streaming reporting method:

* The consumer related information was taken to the producer in the operation of performance data collection creation.
* The performance data streaming service producer shall establish streaming connection(s) to the consumer, in this use case, the MnF of the O-CU-CP acts as the performance data streaming service producer and the SMO as the consumer.
* The MnF of the O-CU-CP shall send measured data on the established connection(s).

Table 4.2.2.3.3-1 shows the streaming connection(s) establishment and streaming data consumption.

**Table 4.2.2.3.3-1: Measurement Streaming Data Consumption**

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>> Related use** |
| Goal | O-RAN Measurement Data Collection |  |
| Actors and Roles | [1]. Service Management and Orchestration Framework [2]. Non-RT RIC  [3]. O-Cloud  [4]. MnF(s) of the O-RAN NFs  [5]. O-RAN NFs, e.g., O-CU, O-DU, O-RU, Near-RT RIC. |  |
| Assumptions | None |  |
| Pre-conditions | [1]. The SMO and the Non-RT RIC are connected and interact. [2]. O-RAN components are in running status.  [3]. Secure network connectivity is already available between RAN components. |  |
| Begins when | The MnF of the O-CU-CP starts streaming connection(s) establishment to the SMO, and reports the measured data as the PM  Job required |  |
| Step 1 (M) | The MnF of the O-CU-CP interworks with the SMO to establish streaming connection(s). the connection(s) should not be released until the PM Job is stopped |  |
| Step 2.1 (M) | The MnF of the O-CU-CP reports the measured data to the SMO as the PM Job required via the streaming connection(s) |  |
| Step 2.2 (O) | The O-Cloud reports the infrastructure resource measured data to the SMO |  |
| Ends when | SMO receives measured data |  |
| Exceptions | None |  |
| Post Conditions | The streaming connection(s) has been established between the MnF of the O-CU-CP and the SMO successfully.  The SMO consumed the measured data successfully |  |
| Traceability | REQ-M&O-FUN7 |  |

![](../assets/images/906aef76852b.png)

**Figure 4.2.2.3.3-1: Measurement Streaming Data Consumption**

### O-RAN Configuration

#### Basic Objective

The objective of the use case is to provide the ability for the SMO to configure an O-RAN NF and to receive Configuration Management (CM) notifications from the MnF of the O-RAN NF. The Configure O-RAN NF Use Case in this clause shows how O-RAN uses NETCONF as specified in O1-Interface [2] to configure O-RAN NFs.

#### Entities/Resources Involved

Roles in the Provisioning Use Case:

1. SMO is the Provisioning MnS Consumer
2. MnF of the O-RAN NF is the Provisioning MnS Producer

#### Configure O-RAN NF Use Case

The Configure O-RAN NF Use Case illustrates the sequence of NETCONF commands and Provisioning MnS operations, as specified in O1-Interface [2], to configure a NF.

Before issuing any NETCONF commands, the NETCONF session shall be established. Before changing the configuration of a NF, the appropriate target data store in the associated MnF should be locked to prevent other NETCONF clients, non-NETCONF clients, and human users from interfering with the configuration changes. Note that locking the data store is optional and is at the discretion of the SMO/operator.

Configuration changes are made using the Create Managed Object Instance operation, Delete Managed Object Instance operation or Modify Managed Object Instance Attributes operation as specified in O1-Interface [2]. If desired, SMO may first read the current NF configuration using the Read Managed Object Instance Attributes operation as specified in O1-Interface [2], before modifying the configuration, in order to ensure that the SMO is synchronized with the current NF configuration. Note that reading the current configuration is optional and is at the discretion of the SMO/operator.

If the changes are made in a candidate data store, SMO shall commit the changes to the running data store to make them effective.

If the SMO wishes to receive CM notifications, SMO shall subscribe to CM notifications using the Subscription Control operation, as specified in O1-Interface [2].

Multiple provisioning operations can be executed in sequence, one at a time, under the same lock session. When the SMO has finished sending all the commands that modify the configuration of the data store, the SMO should unlock the target data store so that other clients can make changes. Note that unlocking the data store is optional and is at the discretion of the SMO/operator.

Finally, if the SMO has no more provisioning operations to perform at this time, SMO can terminate the NETCONF session. Note that terminating the NETCONF session is optional and is at the discretion of the SMO/operator.

Table 4.2.3.3-1 shows the End-to-End Use Case for the SMO to configure a NF.

**Table 4.2.3.3-1: Configure NF**

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Goal | Configure NF |  |
| Actors and Roles | [1]. Service Management and Orchestration Framework [2]. MnF of the O-RAN NF  [3]. O-RAN NF |  |
| Assumptions | None |  |
| Pre-conditions | [1]. Operator has prepared the NF configuration and provided it to the SMO.  [2]. SMO is in an operational state. [3]. NF is in an operational state.  [4]. SMO is managing the NF via its MnF.  [5]. (Optional) SMO has subscribed to CM Notifications, if desired. |  |
| Begins when | SMO decides to configure the NF. |  |
| Step 1 (O) | If there is no NETCONF session established, SMO uses the NETCONF Session Establishment operation to establish a NETCONF session to the MnF of an NF. | O1-Interface [2],  clause 6.1.81 |
| Step 2 (O) | (Optional) If the target DS is not locked, SMO uses the NETCONF Lock Data Store operation to lock a target data store (DS) on a MnF of the NF. Note that locking the data store is optional and is at the discretion of the SMO/operator. | O1-Interface [2],  clause 6.1.10 |

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Step 3 (O) | (Optional) If desired, SMO reads the current NF configuration using the Read Managed Object Instance Attributes operation to ensure that the SMO is synchronized with the current NF configuration before modifying it. Note that reading the current configuration is optional and is at the discretion of the SMO/operator. | O1-Interface [2],  clause 6.1.5 |
| Step 4 (M) | SMO configures the MnF data store. Configuration changes are made using the Create Managed Object Instance operation, Delete Managed Object Instance operation or Modify Managed Object Instance Attributes operation.  Multiple provisioning operations can be sent in sequence, one at a time, under the same lock session. | O1-Interface [2],  clauses 6.1.2,  6.1.3, 6.1.4 |
| Step 5 (O) | If configuration changes were made in the candidate data store, SMO uses the NETCONF Commit operation to commit the changes to the running data store and make them effective. | O1-Interface [2],  clause 6.1.12 |
| Step 6 (O) | If SMO has subscribed to CM Notifications, The MnF of the NF sends the appropriate CM notification, using the Notify Managed Object Instance Creation operation, Notify Managed Object Instance Deletion operation, Notify Managed Object Instance Attribute Value Changes operation, or Notify Managed Object Instance Changes operation. | O1-Interface [2],  clauses 6.1.6 |
| Step 7 (O) | (Optional) If SMO has successfully completed configuration changes, and if the data store is locked, SMO uses the NETCONF Unlock Data Store operation to unlock a target data store (DS) on the MnF of the NF. Note that unlocking the data store is optional and is at the discretion of the SMO/operator. | O1-Interface [2],  clause 6.1.11 |
| Step 8 (O) | If SMO is finished sending NETCONF commands, SMO uses the NETCONF Session Termination operation to terminate a NETCONF session on the MnF of the NF. Note that terminating the NETCONF session is optional and is at the discretion of the SMO/operator. | O1-Interface [2],  clause 6.1.9 |
| Ends when | Step 4 or later optional steps complete |  |
| Exceptions | See RFC 6241 [i.12] |  |
| Post Conditions | NF configuration has been updated in the running DS. |  |
| Traceability | O1-Interface [2] REQ-GNC-FUN-1, REQ-GNC-FUN-2, REQ- GNC-FUN-3, REQ-GNC-FUN-4, REQ-GNC-FUN-5, REQ- GNC-FUN-6, REQ-GNC-FUN-7, REQ-GNC-FUN-8, REQ- GNC-FUN-9 | O1-Interface [2],  clause 6.1.1 |

![](../assets/images/60dee96160b0.png)

**Figure 4.2.3.3-1: Configure NF**

### Use Cases for O-RU Hierarchical Management Architecture Model

Editor's note: The use cases in this clause have not yet been fully aligned with the format and terminology of the rest of this specification.

#### O-RU Software Management through O-DU

##### O-RU Software Inventory through O-DU

Editor's note: The content of this clause has not yet been aligned with O1-Interface [2].

Description

The SMO retrieves the software inventory information of an O-RU.

Procedures

**Precondition:**

- O-DU has retrieved the software inventory information of connected O-RUs at startup.

![](../assets/images/907cf0a3b2ba.jpg)

**Figure 4.2.4.1.1.2-1: Software Inventory**

1. SMO establishes NETCONF session with O-DU.
2. O-DU receives NETCONF <rpc><get><filter> from SMO where software aggregated model is indicated to retrieve information of software slot of O-RU.
3. O-DU returns requested data in NETCONF <rpc-reply> response.
4. SMO terminates NETCONF session with O-DU.

##### O-RU Software Download and Install through O-DU

Description

The SMO triggers the software download to a target O-RU through the managing O-DU as described in O1-Interface [2], clause 6.8.3.

After software download, O-DU triggers software install on the O-RU as described in OFH M-Plane [1], clause 8.6.

Procedures

Editor's note: The content of this clause has not yet been aligned with O1-Interface [2].

![](../assets/images/cb61fed57173.png)

**Figure 4.2.4.1.2.2-1: Software Download**

1. SMO establishes NETCONF session with O-DU.
2. SMO sends NETCONF <rpc><software-download><remote-file-path><softwarePackage> with ru-instance-id to trigger a download of the software and to identify the target O-RU.
   1. O-DU validates the request.
3. O-DU returns NETCONF <rpc-reply><software-download-status>.
4. SMO terminates NETCONF session with O-DU.

Alternative 1: O-RU directly downloads the software package from software server.

1. O-DU sends <rpc><software-download> toward O-RU with remote-file-path.
2. O-RU returns <rpc-reply><software-download>.
3. O-RU downloads the software package.

Alternative 2: O-RU indirectly downloads the software package from software server.

1. O-DU downloads software package of O-RU from software server and temporarily stores in the storage on itself. NOTE: storing SW package in O-DU may be removed after step 14.

b. O-DU decides whether download is needed or not by comparing manifest file and information of software slot.

1. O-DU sends <rpc><software-download> toward O-RU with remote-file-path.
2. O-RU returns <rpc-reply><software-download>.
3. O-RU downloads the software package.
4. O-RU sends <notification><download-event> to notify the result of download process.
5. O-DU sends <rpc><software-install> to perform the software install for O-RU. O-DU selects an install slot based on O1-Interface [2].
6. O-RU returns <rpc-reply><software-install>.
7. O-RU sends <notification><install-event> to notify the result of install process.
8. When download operation is completed, O-DU sends download-event NETCONF downloadFile notification to SMO with the final status of the download (success or the reason for failure).

##### O-RU Software Activation through O-DU

Editor's note: The content of this clause has not yet been aligned with O1-Interface [2].

Description

O-DU receives a software activation trigger from the SMO for an O-RU, and O-DU executes the software activation mechanism on that O-RU.

Procedures

![](../assets/images/ca3c553a85a4.png)

**Figure 4.2.4.1.3.2-1: Software Activate**

1. SMO establishes NETCONF session with O-DU.
2. SMO sends NETCONF <rpc><software-activate><softwarePackage> with ru-instance-id to trigger an activation of the software slot on O-RU.
   1. O-DU validates the request.
3. O-DU returns status to the SMO in the NETCONF <rpc-reply> response.
4. SMO terminates NETCONF session with O-DU.
5. O-DU sends <rpc><software-activation> to activate the software slot on O-RU. The most recently used slot to install is selected.
6. O-RU returns status into <rpc-reply>.
7. O-DU receives <notification><activation-event>.
8. O-DU sends <rpc><reset> toward O-RU to apply the newly installed and activated software.
9. O-RU returns <rpc-reply>.
   1. O-RU starts reset process.
10. When O-DU retrieves software inventory information of all reset O-RU in the startup, O-DU sends a softwareActivate notification to SMO with the final status of the software activate and O-RU reset results.

#### O-RU Performance Assurance Management through O-DU

Editor's note: The content of this clause has not yet been aligned with O1-Interface [2].

##### O-RU Performance Data File Reporting through O-DU

The measured result file created by O-RU will be periodically uploaded to O-DU's internal storage aligned with the OFH M-Plane [1], clause 10.3. O-DU will handle the file as described in O1-Interface [2], clause 6.3.1.

Alternatively, the measured result file created by O-RU will be forwarded to the FTP server configured by O-DU. In this case, the Performance Assurance MnS Consumer shall provide the remote-SFTP-upload-path and its credentials to O-RU, so that it can upload the PM data file directly.

##### O-RU Performance Assurance Control through O-DU

The performance measurements to be collected in O-RU are controlled by SMO via O-DU as described in O1-Interface [2], clause 6.3.3.

#### O-RU Alarm Management through O-DU

Editor's note: The content of this clause has not yet been aligned with O1-Interface [2].

##### Description

In the hierarchical management model, O-DU is responsible for managing AlarmRecords in the AlarmList, including both O-DU alarms and O-RU alarms.

O-DU receives a NETCONF based alarm notification from the O-RU, converts the NETCONF based alarm notification to an O-RAN fault notification, updates AlarmRecords and sends the O-RAN fault notification to SMO.

O-DU alarms and O-RU alarms may have the same alarm-id; in this case, they are distinguished using nfcNamingCode in the VES common event header.

##### Procedures

![](../assets/images/0b04e1c92f1c.jpg)

**Figure 4.2.4.3.2-1: Operation to merge O-RU Alarms by O-DU**

#### O-RU Provisioning Management through O-DU

##### O-RU Configuration through O-DU

Configuration steps for the hierarchical management model are as follows:

1. SMO configures O-DU as described in O1-Interface [2], clause 6.1.
2. O-DU configures O-RU as described in the OFH M-Plane [1].

##### Cell Configuration and Activation in Hierarchical Management Architecture Model

Editor's note: The content of this clause has not yet been aligned with O1-Interface [2].

Description

After cell configuration on the O-DU, followed by carrier configuration on the O-RU, SMO may activate cells.

Procedures

Editor's note: The content of this clause needs to be reviewed and potentially revised to ensure that the F1 message content is technically valid.

![](../assets/images/0b5b684973a1.png)

**Figure 4.2.4.4.2.2-1: Cell activation procedure**

##### Forwarding Configuration Change Notifications from O-RU through O-DU

Editor's note: The content of this clause has not yet been aligned with O1-Interface [2].

Editor's note: The content of this clause currently has a dependency to the O-RU aggregated model and, due to this, needs to be reviewed and potentially revised.

Description

The O-DU is responsible for presenting O-RU configuration to SMO. The SMO is responsible for subscribing to any parameters of interest using the subscription mechanism as described in O1-Interface [2], clause 6.1.7.

Once the SMO has subscribed, the SMO will receive a notification for each value change of the parameter(s) from the O-DU.

Procedures

![](../assets/images/f5830bd58a55.jpg)

**Figure 4.2.4.4.3.2-1: Notification to the SMO preceded by the O-RU notification**

![](../assets/images/32a20b6f3120.jpg)

**Figure 4.2.4.4.3.2-2: Notification to the SMO preceded by the O-DU <get> operation**

### Network Energy Saving Use Cases

#### RF Channel Reconfiguration

##### TRX Control

Basic Objective

The objective of this use case is to illustrate an operator's use of TRX Control-based energy savings via corresponding policy/configuration by the SMO over the O1 interface.

Entities/Resources Involved

Roles in the TRX Control use case:

SMO playing the role of Provisioning MnS Consumer

O-DU playing the role of Provisioning MnS Producer

O-RU

Description

The use case illustrates the interactions between the involved entities in the context of TRX Control-based energy savings for the O-RU.

Table 4.2.5.1.1.3-1 shows the SMO providing policy/configuration details to the O-DU for implementing TRX Control- based energy saving in O-RU.

**Table 4.2.5.1.1.3-1: TRX Control**

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Goal | Provide TRX Control-based energy savings policy/configuration to the O-DU. |  |
| Actors and Roles | [1]. Service Management and Orchestration Framework (SMO) as the Provisioning MnS Consumer  [2]. O-DU as the Provisioning MnS Producer  [3]. O-RU |  |
| Assumptions | None |  |
| Pre-conditions | [1]. Connection is successfully established between MnS Producer of O-DU and MnS Consumer via O1 interface.  [2]. Connection is successfully established between O-DU and O- RU via Open Fronthaul M-Plane.  [3]. In hierarchical deployment, O-DU is aware of the TRX Control- related O-RU capabilities.  [4]. MnS Consumer has subscribed to CM Notifications. |  |
| Begins when | SMO decides to provide the policy to O-DU for the TRX Control- based energy savings. |  |
| Step 0 | MnS Consumer retrieves TRX Control-related capabilities from MnS Producer as below: | 1. clause 4.2.3.3 2. clause 4.2.4.4.1 |

|  |  |  |
| --- | --- | --- |
|  | 1. MnS Consumer retrieves TRX Control-related capabilities from MnS Producer of O-DU via O1 interface. 2. **Hierarchical architecture:** MnS Consumer retrieves TRX Control-related capabilities of the O-RU from the MnS Producer of O-DU via O1 interface. 3. **Hybrid architecture:** MnS Consumer retrieves TRX Control- related capabilities from O-RU via Open Fronthaul M-Plane. | c. OFH M-Plane [1], clause  20.3.2.2 |
| Step 1 (M) | MnS Consumer provides TRX Control-based energy saving-related policy/configuration details to the MnS Producer. | clause 4.2.3.3 |
| Step 2 (M) | The O-DU examines the condition(s) provided in configuration/policy related to TRX Control. |  |
| Step 3.1 (M) | O-DU monitors relevant data and watches for the thresholds configured/provided in the policy of Step 1 to be satisfied. |  |
| Step 3.2 (M) | Once conditions are satisfied, the O-DU communicates appropriate antenna mask values and sleep mode to the O-RU using Open Fronthaul C-Plane message. See NOTE 1. | OFH CUS-Plane [i.14], clauses 16.1, 16.2 |
| Step 3.3 (M) | The O-RU processes the Open Fronthaul C-Plane message and activates corresponding TRX Control configuration. |  |
| Step 3.4 (O) | O-RU sends the ACK/NACK message to O-DU via Open Fronthaul C-Plane. | OFH CUS-Plane [i.14], clause 16.1 |
| Step 4.1 (O) | MnS Consumer needs to be made aware of execution of this step via notification. |  |
| Step 4.2 (O) | MnS Consumer analyses the policy status. |  |
| Step 5.1 (O) | MnS Consumer needs to be made aware of execution of this step via counter. | clause 4.2.2.3.2 |
| Step 5.2 (O) | MnS Consumer analyses the PM data. |  |
| Step 6 (O) | MnS Consumer removes some of the policies. | clause 4.2.3.3 |
| Step 7 (O) | MnS Consumer needs to be made aware of the policy status via notification. | clause 4.2.3.3 |
| Ends when | MnS Consumer removes all TRX Control-based energy saving related policy/configuration details from the MnS Producer. |  |
| Exceptions | None |  |
| Post Conditions | MnS Consumer is informed about the result of TRX Control based energy saving related actions. |  |
| Traceability | Editor's note: Requirements to be added later. |  |
| NOTE 1: See OFH M-Plane [1], clause 20.3.2.5 for more details on the interaction between TRX Control and Advanced Sleep Mode. | | |

![](../assets/images/a465be1ef8b3.png)

**Figure 4.2.5.1.1.3-1: TRX Control based Network energy saving implementation using O1 interface.**

#### Advanced Sleep Mode

##### Basic Objective

The objective of this use case is to illustrate an operator's use of Advanced Sleep Mode-based energy savings via corresponding policy/configuration by the SMO over O1 interface.

##### Entities/Resources Involved

Roles in the Advanced Sleep Mode use case:

1. SMO playing the role of Provisioning MnS Consumer
2. O-DU playing the role of Provisioning MnS Producer
3. O-RU

##### Description

The use case illustrates interactions between the involved entities in the context of Advanced Sleep Mode-based energy savings for the O-RU.

Table 4.2.5.2.3-1 shows the SMO providing policy/configuration details to the O-DU for implementing Advanced Sleep Mode-based energy saving in O-RU.

**Table 4.2.5.2.3-1: Advanced Sleep Mode**

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Goal | Provide Advanced Sleep Mode-based energy savings policy/configuration to the O-DU. |  |
| Actors and Roles | [1]. Service Management and Orchestration Framework (SMO) as the Provisioning MnS Consumer  [2]. O-DU as the Provisioning MnS Producer  [3]. O-RU |  |
| Assumptions | None |  |
| Pre-conditions | [1]. Connection is successfully established between MnS Producer of O-DU and MnS Consumer via O1 interface.  [2]. Connection is successfully established between O-DU and O- RU via Open Fronthaul M-Plane.  [3]. In hierarchical deployment, O-DU is aware of the Advanced Sleep Mode-related O-RU capabilities.  [4]. MnS Consumer has subscribed to CM Notifications. |  |
| Begins when | SMO decides to provide the policy to O-DU for the Advanced Sleep Mode-based energy savings. |  |
| Step 0 | MnS Consumer retrieves Advanced Sleep Mode-related capabilities from MnS Producer as below:   1. MnS Consumer retrieves Advanced Sleep Mode-related capabilities from MnS Producer of O-DU via O1 interface. 2. **Hierarchical architecture:** MnS Consumer retrieves Advanced Sleep Mode-related capabilities of the O-RU from the MnS Producer of O-DU via O1 interface. 3. **Hybrid architecture:** MnS Consumer retrieves Advanced Sleep Mode-related capabilities from O-RU via Open Fronthaul M-Plane. | 1. clause 4.2.3.3 2. clause 4.2.4.4.1 3. OFH M-Plane [1], clause 20.4.1 |
| Step 1 (M) | MnS Consumer provides Advanced Sleep Mode-based energy saving related policy/configuration details to the MnS Producer. | clause 4.2.3.3 |
| Step 2 (M) | The O-DU examines the condition(s) provided in configuration/policy related to Advanced Sleep Mode. |  |
| Step 3.1 (M) | O-DU monitors relevant data and watches for the thresholds configured/provided in the policy of Step 1 to be satisfied. |  |

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Step 3.2 (O) | Once conditions are satisfied, the O-DU activates or deactivates the appropriate Advanced Sleep Mode in O-RU using Open Fronthaul C-Plane message. For Advanced Sleep Mode deactivation, optionally, an Open Fronthaul M-Plane message can be used if deactivation via Open Fronthaul C-Plane is not available. See NOTE 1. | OFH CUS-Plane [i.14], clauses 16.1,  16.3, OFH M-Plane  [1], clause 20.4.2 |
| Step 3.3 (O) | The O-RU processes the Open Fronthaul C-Plane or Open Fronthaul M-Plane message and activates/deactivates the corresponding Advanced Sleep Mode. |  |
| Step 3.4 (O) | O-RU sends the ACK/NACK message to O-DU via Open Fronthaul C-Plane. | OFH CUS-Plane [i.14], clause 16.1 |
| Step 4.1 (O) | MnS Consumer needs to be made aware of execution of this step via notification. |  |
| Step 4.2 (O) | MnS Consumer analyses the policy status. |  |
| Step 5.1 (O) | MnS Consumer needs to be made aware of execution of this step via counter. | clause 4.2.2.3.2 |
| Step 5.2 (O) | MnS Consumer analyses the PM data. |  |
| Step 6 (O) | MnS Consumer removes some of the policies. | clause 4.2.3.3 |
| Step 7 (O) | MnS Consumer needs to be made aware of the policy status via notification. | clause 4.2.3.3 |
| Ends when | MnS Consumer removes all Advanced Sleep Mode-based energy saving related policy/configuration details from the MnS Producer. |  |
| Exceptions | None |  |
| Post Conditions | None |  |
| Traceability | Editor's note: Requirements to be added later. |  |
| NOTE 1: See OFH M-Plane [1], clause 20.3.2.5 for more details on interaction between TRX Control and Advanced Sleep Mode. | | |

![](../assets/images/0ed0736fb482.png)

**Figure 4.2.5.2.3-1: Advanced Sleep Mode based Network energy saving implementation using O1 interface.**

### Policy management

#### Overview

The policy characteristics guide the configuration of NF-specific parameters for optimization and other feature implementation.

O-RAN NEs/NFs report measurement metrics and KPI data to SMO. SMO derives and sends policies for O-RAN NEs/NFs via the O1 interface to achieve specific objectives related to use cases. The policy can be used by network functions (e.g., O-CU-CP and O-DU) to achieve the objective defined in the policy. In this process, O-DU can also influence the O-RU's functionality to achieve various optimizations. Policies may include performance targets, rules/conditions, and associated configurations.

#### Basic Objective

The objective of this use case is to enable an operator through SMO to manage policies using the policy management of the MnF of the NF (e.g., O-CU-CP, O-DU) acting as MnS producer, to support various optimization use cases for that NF via the O1 interface.

#### Entities/Resources Involved

Entities that are involved in the policy management use case:

1. SMO is the MnS Consumer and policy-defining entity
2. MnF of the NF as MnS Producer
3. NF as a policy-enforcing entity

#### Description

The use case demonstrates the interactions between the involved entities within the context of Policy Management.

Table 4.2.6.4-1 illustrates how the SMO provides and manages policies in the MnS Producer, which can be utilized for implementing various optimization features (e.g., Network Energy Saving).

**Table 4.2.6.4-1: Policy management**

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Goal | The SMO manages policies for the MnF of the NF (e.g., O-CU-CP, O- DU) acting as MnS producer to support various optimization features. |  |
| Actors and Roles | [1]. SMO is the MnS Consumer and policy defining entity [2]. MnF of the NF as MnS Producer  [3]. NF as a policy enforcing entity |  |
| Assumptions | None |  |
| Pre-conditions | [1]. Connection is successfully established between MnS Producer and MnS Consumer via O1 interface.  [2]. MnS Consumer has subscribed to MnS Producers for the CM  Notifications. |  |
| Begins when | SMO decides to provide policies to the O-DU and manages them to support various optimization features. |  |
| Step 0 | The MnS Consumer retrieves policy management-related capabilities from the MnS Producer as follows:   1. Receiving and storing policies from the MnS Consumer. 2. Evaluating the policies. 3. Detecting policy conflicts and reporting conflict information. 4. Making policy execution decisions. | O1-Interface [2] |
| Step 1 (O) | The MnS Consumer creates a policy with an associated unique identification to the MnS Producer via O1 interface, based on network and feature-related requirements. |  |
| Step 2 (O) | After completion of the policy creation process, the MnS Producer notifies the MnS Consumer via O1 interface on the result of the policy creation process. |  |

|  |  |  |
| --- | --- | --- |
| Step 3 (O) | MnS Consumer activates the specific policy in MnS Producer via O1 interface. |  |
| Step 4 (O) | After the policy activation completed, the MnS Producer notifies the MnS Consumer via O1 interface. |  |
| Step 5 (O) | MnS Consumer provides the revised policy to the MnS Producer via O1 interface. |  |
| Step 6 (O) | After completion of the policy update process, the MnS Producer notifies the MnS Consumer via O1 interface. |  |
| Step 7 (O) | The E2 node as NF detects the policy conflict and inform to MnS Producer. |  |
| Step 8 (O) | MnS Producer notifies the policy conflict to MnS Consumer via O1 interface |  |
| Step 9 (O) | MnS Consumer deactivates policy in the MnS Producer via O1 interface. |  |
| Step 10 (O) | After the policy deactivation is completed, the MnS Producer notifies the MnS Consumer via O1 interface. |  |
| Step 11 (O) | MnS Consumer deletes the policy in the MnS Producer. |  |
| Step 12 (O) | Once the policy deletion is completed, the MnS Producer notifies the MnS Consumer. |  |
| Step 13 (O) | MnS Consumer queries the status of policy in the MnS Producer. |  |
| Step 14 (O) | The MnS Producer responds to the MnS Consumer with the policy status notification. |  |
| Ends when | MnS Consumer removes all policies from the MnS Producer. |  |
| Exceptions | None |  |
| Post Conditions | MnS Consumer is informed about the result of policy management related actions. |  |
| Traceability | REQ-M&O-FUN13.d, REQ-M&O-FUN13.e, REQ-M&O-FUN13.f |  |

![](../assets/images/4755f63574e6.png)

**Figure 4.2.6.4-1: Policy management procedure**

# OAM Architecture

## Architectural Principles

The following clause provides architecture principles guiding the support of OAM in the O-RAN architecture. Common OAM functions should be supported through a common set of OAM interface protocols across the different components of the O-RAN architecture.

Management Services should, to the degree possible, align with existing standards specifications:

* 3GPP 5G Specifications for management interfaces
* ETSI NFV Specifications for life cycle management
* OFH M-Plane [1]

O-RAN OAM specifications should refer to the 3GPP and ETSI specs and not replicate them here. O-RAN OAM specifications shall identify needed extensions to support O-RAN and exceptions which cannot be supported. It is the goal of O-RAN to drive any needed extensions into standards to maintain alignment between O-RAN and existing standards.

### Alarm Dictionary Overview

Entities that are part of an O-RAN deployment can emit alarm notifications to the SMO to indicate adverse conditions on the entity that the SMO needs to be aware of and potentially take corrective actions for. Entities typically emit alarm notifications on one OAM interface (O2-IMS or O2-DMS for Cloud, O1 for the MnF(s) of O-RAN NFs other than the O-RU, Open FH M-Plane for O-RU).

The Alarm Dictionary allows the SMO to become aware of the alarming capabilities of the O-RAN entity. The alarm dictionary provided by the vendors will be provided in a common, machine-readable format. This will allow the service provider to have a common way of querying or displaying the information they need to help them determine what actions to take when an alarm occurs. The alarm dictionary contains an entry for each alarm that the product emits to the manager. Alarm notification formats are/will be standardized on these interfaces and will contain instance specific information about the condition triggering the alarm such as: an identifier for the alarm, what instance of the entity is alarming and to the degree possible pinpointing where the problem is originating from. Much of the information in the notification will be specific to this instance of the problem occurring. Some information associated with an alarm can be static (such as the alarm name or description) and not dependent upon the instance of the alarm sent in the alarm notification. Typically, this information is descriptive in nature such as providing a detailed description of why an alarm is raised, what the alarming condition means and its impact on the system and vendor suggested repair actions.

To be efficient in transmission, O-RAN expects that vendors provide an alarm dictionary that contains this static information in a machine-readable format which the service provider can consult to determine what actions may be taken when a particular alarm notification is raised.

The alarm dictionary is delivered to the manager as part of:

* Onboarding package when a software delivery of an O-RAN NF or xApp/rApp is made.
* Registration when updates are made to O-Cloud entities.

The alarm dictionary is stored in a repository where the SMO can access it upon reception of an alarm notification to display the information associated with an alarm to a human user to support determining what corrective action to take. The information in the alarm dictionary definitions is not delivered within the alarm notification.

### Alarm Dictionary Association with O-RAN Entities and Content

Each entity emitting alarms has an alarm dictionary version associated with each of its software versions so the SMO can determine which alarm dictionary should be consulted when the entity emits an alarm. Typically, the alarm dictionary will be associated with one or more versions of a delivery of an entity. The alarm dictionary version changes only when an alarm is added to the dictionary, has an element in the dictionary change, or if an alarm is no longer supported. For this reason, a vendor may associate several deliveries of product with the same version of an alarm dictionary.

A vendor shall update the alarm dictionary whenever an alarm is added, deleted, or modified in the product software and provide a "last change" indicator for each alarm entry to make it easy for an Operator to know what has changed from one version of the alarm dictionary to another.

The alarm dictionary provides information about each alarm/alarm family that an O-RAN entity emits to the manager; information that is important for understanding and processing the alarm but is not provided as part of the alarm notification itself. The entries are formatted according to a common Alarm Dictionary schema that is applicable to all O-RAN alarms over any OAM interface (O1, O2, Open Fronthaul M-Plane, Transport).

The alarm dictionary consists of:

* Header - information common for all alarm entries in this version of the Alarm Dictionary
* Alarm Entries - one per alarm containing alarm-specific information Details shall be as defined in IM/DM [3].

### Compatibility for O1 Interface

#### Introduction

Compatibility of the Management Services offered by the MnS Producers (e.g., within NE) and MnS Consumers (e.g., within SMO) enables the correct interworking between them. Compatibility occurs when the MnS Consumer can use the MnS Producer profile, described in 3GPP TS 28.533 [i.4]. Management Services are described by the following three component types:

* MnS component type A: Operations and notifications
* MnS component type B: Information model
* MnS component type C: Performance and Fault information

#### MnS Component type A Compatibility

Editor's note: Content to be added later.

#### MnS Component type B Compatibility

##### Overview

The information model (i.e., model schemas and associated model instances) is considered a system of models with dependency relations between their model elements as described in 3GPP TS 32.156 [i.17], clause 5.

The evolution of the IM exposed by the MnS Producer (e.g., NE) can potentially cause incompatibility with the MnS Consumer (e.g., SMO) based on the use of the exposed IM. A MnS Consumer should be able to manage different NE instances with different MnS Producer profile variants. Likewise, a MnS Consumer that manages multiple NE instances can become incompatible with one or more NE instances that expose different variants of the MnS Producer profiles as described in 3GPP TS 28.533 [i.4], clause 4.2.4.

The evolution of the information model either produced by the MnS Producer (e.g., NE) or consumed by the MnS Consumer (e.g., SMO) can be realised, for example:

* Adding/removing new models exposed by a new MnS Producer
* Adding/modifying/removing model elements to/from an existing model exposed by a MnS Producer

The compatibility between NE and SMO is defined by the ability of the SMO's MnS Consumer to manage the model elements in order to support the management of the RAN.

This evolution of the information model exposed by the MnS Producer as well as the information model used by MnS Consumer requires mechanisms (e.g., identification of model changes) to maintain compatibility between information models of both the MnS Producer and MnS Consumer.

Information Model compatibility scenarios are discussed in the following clauses, introducing the concepts of full and limited compatibility.

##### Information Model Compatibility Scenarios

Editor's note: Content to be added later.

#### MnS Component type C Compatibility

Editor's note: Content to be added later.

## Architecture Requirements

Defines the Architecture requirements applicable to the O-RAN reference architecture. Architecture requirements are derived from Use Cases to be supported and define the functional needs the architecture aims to satisfy.

### Functional Requirements

|  |  |  |
| --- | --- | --- |
| **REQ** | **Description** | **Note** |
| [REQ-M&O-FUN1] | O-RAN OAM Architecture shall support the interaction between the Service Management and Orchestration Framework and the O-Cloud through O2 interface to perform virtualized resource orchestration. | Use Case |
| [REQ-M&O-FUN2] | O-RAN OAM Architecture shall support the capability for the Service Management and Orchestration Framework to consume the provisioning management service exposed by the MnF of each O-RAN NF, regardless of whether the NF is implemented as PNF or VNF, through the O1 interface. | O1-Interface [2] |
| [REQ-M&O-FUN3] | O-RAN OAM Architecture shall support creation, modification, and termination of VNFs in an O-RAN network by the Service Management and Orchestration Framework | Use Case |
| [REQ-M&O-FUN4] | O-RAN OAM Architecture shall support registration and inventory of newly activated VNFs and PNFs by the Service Management and Orchestration Framework | Use Case |
| [REQ-M&O-FUN5] | O-RAN OAM Architecture shall support collection of status change and other indications from VNFs and PNFs by the Service Management and Orchestration Framework | Use Case |
| [REQ-M&O-FUN6] | O-RAN OAM Architecture shall support configuration of VNFs and PNFs by the Service Management and Orchestration Framework, including, for example, addressing information needed to allow them to connect to each other | Use Case |
| [REQ-M&O-FUN7] | O-RAN OAM Architecture shall support management of PM jobs, PM data collection/storage/query/statistical reports from MnFs of O-RAN NFs | Use Case |
| [REQ-M&O-FUN8] | O-RAN OAM Architecture shall support operation logging and operation authority of O-RAN NFs | Use Case |
| [REQ-M&O-FUN9] | O-RAN OAM Architecture shall support management of O-RAN NFs. | 3GPP TS  28.622 [i.2] |
| [REQ-M&O-FUN10] | O-RAN OAM Architecture shall support hierarchical and hybrid management of O-RAN O-DU and O-RU components as defined in OFH M-Plane [1] | Use Case & OFH M-  Plane [1] |
| [REQ-M&O-FUN11] | O-RAN OAM Architecture and interfaces shall support network slicing, where an instance of O-RAN NF may be associated with one or more slices. | Use Case |
| [REQ-M&O-FUN12] | O-RAN OAM Architecture shall support O1 interface to the MnF of each O- RAN NF (with the exception of the RU) even if the MnF is deployed behind a NAT | O1-Interface [2] |
| [REQ-M&O-FUN13.a] | The O-RAN OAM Architecture shall support the capability of the Service Management and Orchestration (SMO) framework to discover the RAN FCAPS-related management capabilities of the O-RAN MnF that terminates the O1 interface. | O1-Interface [2] |
| [REQ-M&O-FUN13.b] | In case of the Hybrid Management Architecture Model, the O-RAN OAM Architecture shall support the capability of the Service Management and Orchestration (SMO) framework to discover the RAN FCAPS-related management capabilities of the O-RAN network function terminating the Open Fronthaul M-Plane interface. | OFH M-  Plane [1] |

|  |  |  |
| --- | --- | --- |
| [REQ-M&O-FUN13.c] | The Service Management and Orchestration (SMO) framework shall have the capability to discover the FCAPS-related management capabilities of the O- Cloud infrastructure. | O2-GA&P [i.9] |
| [REQ-M&O-FUN13.d] | O-RAN OAM Architecture shall support the capability for the Service Management and Orchestration (SMO) framework to provision NES policies over the O1 interface. | Clause 4.2.6; Use Case |
| [REQ-M&O-FUN13.e] | O-RAN OAM Architecture shall support the capability for the Service Management and Orchestration (SMO) framework to manage configuration of O-RAN NFs over the O1 interface. | Use Case |
| [REQ-M&O-FUN13.f] | O-RAN OAM Architecture shall support the capability for the Service Management and Orchestration (SMO) framework to be informed over the O1 interface about detected conflicts related to the policies provisioned over the O1 interface. | Use Case |
| [REQ-M&O-FUN14] | O-RAN OAM Architecture shall support Antenna Line Device (ALD) handling. | UC  DetailedSpec [6], clause  4.20 |

### Non-Functional Requirements

|  |  |  |
| --- | --- | --- |
| [REQ-M&O-NFUN1] | O-RAN OAM Architecture shall support the introduction of new and more cost-effective technologies into the RAN through open, standard interfaces | O-RAN  white paper [i.7] |
| [REQ-M&O-NFUN2] | O-RAN OAM Architecture shall support virtualization of RAN components, allowing operators use of common, off-the-shelf hardware implementations | O-RAN  white paper [i.7] |
| [REQ-M&O-NFUN3] | O-RAN OAM Architecture shall support use of Analytics and Artificial Intelligence/Machine Learning to improve network efficiency and performance and reduce operations costs | O-RAN  white paper [i.7] |
| [REQ-M&O-NFUN4] | O-RAN entities emitting alarms to the SMO shall provide an Alarm Dictionary with the product delivery that is delivered to the SMO at onboarding for O-RAN NFs, xApps and rApps or at registration for O-Cloud entities. | 5.1.1, 5.1.2 |
| [REQ-M&O-NFUN5] | The vendor shall update the alarm dictionary when the entity emitting the alarm supports a new alarm definition, the information associated with the alarm definition changes or the entity no longer supports an alarm definition. For each dictionary entry, the vendor shall indicate the last version in which the alarm entry changed. | 5.1.1, 5.1.2 |
| [REQ-M&O-NFUN6] | The SMO shall maintain the association between an entity version onboarded from a product delivery and its alarm dictionary. | 5.1.1, 5.1.2 |
| [REQ-M&O-NFUN8] | The Alarm Dictionary shall be delivered following the schema to be defined in the IM/DM specification. | 5.1.1, 5.1.2 |

### Security Requirements

|  |  |  |
| --- | --- | --- |
| [REQ-M&O-NFUN4] | O-RAN OAM Architecture shall support security of interactions between the components of an O-RAN network | See note |

Note: more detailed requirements for security are addressed in SecReqSpecs [4].

## Reference Architecture

The reference architecture defines a set of basic architectural building blocks - management services provided by the Management Function(s) of each O-RAN NF- for the O-RAN management domain.

### Architectural Building Blocks

#### O-RAN Management Services and Management Functions

The definition of a Management Service (MnS) is given in 3GPP TS 28.533 [i.4], clause 3.1. O-RAN Management Services (MnS) offer capabilities to manage and orchestrate O-RAN Network Functions. Management Functions of O- RAN NFs expose their management services to consumers. The SMO consumes the management services.

Examples of Management Services supported by O-RAN include:

* Provisioning
* Fault Supervision
* Performance Assurance
* Trace Management
* File Management
* Software Management
* Communication Surveillance
* Startup and Registration of a Physical Network Function (PNF)
* Instantiation and Termination of a Virtualized Network Function (VNF)
* Scaling Management Services for VNF
* Policy Management

The definitions of supported management services and their APIs are specified in O1-Interface [2]. The definition of a Management Function (MnF) is given in 3GPP TS 28.533 [i.4], clause 3.1.

#### O-RAN Network Elements

The definition of a Network Element (NE) is given in 3GPP TS 21.905 [i.1], clause 3.N. In the O-RAN OAM Architecture, an O-RAN Network Element is a logical entity and aggregates O-RAN Network Functions. A set of Management Functions in the NE produce Management Services toward the SMO.

#### O-RAN Network Functions

The O-RAN Network Functions (O-RAN NFs) are defined in OAD [i.10] and include:

* Near-Real-Time Radio Intelligent Controller (Near-RT RIC)
* O-RAN Central Unit - Control Plane (O-CU-CP)
* O-RAN Central Unit - User Plane (O-CU-UP)
* O-RAN Distributed Unit (O-DU)
* O-RAN Radio Unit (O-RU)

#### Apps Hosted by O-RAN Near-RT RICs

The Near-RT RIC has the capability to host Applications (called xApps). An xApp as described in OAD [i.10] is a software application that can be developed independently from its hosting Near-RT RIC instance.

Management of xApps on a hosting Near-RT RIC shall comply with the following principles:

* The hosting Near-RT RIC provides certain services to the xApps via well-defined APIs;
* The xApps are considered to be contained in the same logical Network Element (as defined in clause 5.3.1.2) as the hosting Near-RT RIC;
* The xApps may be managed through a set of O1 MnSs terminated on the containing NE.

#### Service Management and Orchestration Framework

The Service Management and Orchestration Framework is responsible for the management and orchestration of the O- RAN NFs under its span of control. The framework can for example be implemented as a third-party Network Management System (NMS) or orchestration platform.

The Service Management and Orchestration Framework shall provide an integration fabric and data services for the MnFs of the O-RAN NFs. The integration fabric enables interoperation and communication between the SMO and the various MnFs within the O-RAN domain. Data services provide efficient data collection, storage, and movement capabilities for the MnFs. In order to implement multiple OAM architecture options together with RAN service modeling, the modeling of different OAM deployment options and OAM services (integration fabric etc.) shall be supported by the SMO.

#### Non-Real Time Radio Intelligent Controller

The Non-RT RIC is a part of the Service Management & Orchestration Framework and communicates to the Near-RT RIC using the A1 interface, as described in OAD [i.10].

Non-RT control functionality (> 1s) and near-Real Time (near-RT) control functions (< 1s) are decoupled in the RIC. Non-RT functions include service and policy management, RAN analytics and model-training for some of the near-RT RIC functionality, and non-RT RIC optimization.

#### Control Loop Support

O-RAN defines 3 control loops with different latency bands , as described in OAD [i.10], clause 5.2. These loops are not hierarchical but instead run in parallel. This does not mean that an NF with an inner loop will not generate its own event as result of an inner loop failure, but it will not simply propagate the lower-level event received by the inner loop. The three loops are defined as:

* Loop 1: In the O-DU for per TTI/msec resource scheduling (<10 millisecond)
* Loop 2: In the Near-RT RIC and O-CU for resource optimization (10 milliseconds to 1 second)
* Loop 3: In the Service Management and Orchestration Framework for ML Training, Trending, Orchestration (> 1 second)

### Basic OAM Architecture

The overall O-RAN Logical Architecture is shown in OAD [i.10], figure 5.1-2. The O1 interface identified in OAD [i.10], clause 5.1 is used for OAM functions between the O-RAN Service Management and Orchestration Framework and the MnFs of the O-RAN Network Functions (with the exception of the O-RU).

![](../assets/images/49710a1754e6.jpg)

**Figure 5.3.2-1 O-RAN Logical OAM Architecture, O1 and O2 Interfaces**

Figure 5.3.2-1 depicts the O-RAN Logical OAM Architecture for the O1 and O2 interfaces. An O1 interface as described in O1-Interface [2] consists of a set of O-RAN Management Services that together allow management of a set of O-RAN Network Functions of an O-RAN Network Element. An O2 interface as described in O2-GA&P [i.9] consists of services, provided by the O-Cloud, to enable the SMO as a consumer to manage both cloud infrastructure and cloud deployments. The O2 interface has different requirements from the O1 interface.

![](../assets/images/3231ecaa0090.jpg)

**Figure 5.3.2-2 O-RAN Logical OAM Architecture, Hierarchical M-Plane**

Figure 5.3.2-2 depicts the management of an O-RU in the hierarchical model of operation. OFH M-Plane [1], clause

5.1.2 defines the M-Plane architecture model. In the O-RAN Open FH M-Plane hierarchical model, the O-RU is managed by one or more O-DUs using the Open FH M-Plane, and the O-DU presents the O-RU to the SMO via the O1 interface.

![](../assets/images/162b04fea87c.jpg)

**Figure 5.3.2-3 O-RAN Logical OAM Architecture, Hybrid M-Plane**

Figure 5.3.2-3 depicts the management of an O-RU in the hybrid model of operation. In the O-RAN Open FH M-Plane hybrid model, some OAM functions of the O-RU can also be managed directly by the SMO using the Open FH M- Plane. NOTE: the figure uses 5G terminology; however, the same principles will apply for LTE/4G.

3GPP TS 28.533 [i.4], figure 4.5.2 shows examples of MnS deployment scenarios. In the case where Management Functions are deployed as a separate entity from the O-RAN NF (rather than embedded), an O-RAN Network Element contains one or more MnFs producing one or more O1 management services for any number of non-O-RU O-RAN NFs, as shown in Figure 5.3.2-4. The interfaces between the O-RAN NFs and the MnFs within an NE are outside the scope of the O-RAN standardization domain. One or more of the O-RAN NFs in an NE may be Near-RT RICs. The hosted xApps may also be managed through one or more of the MnFs in the NE containing a Near-RT RIC.

![](../assets/images/a51b965ccaf8.jpg)

**Figure 5.3.2-4 O-RAN Logical Network Element**

An O-RU does not conform to the concept of an O-RAN Logical Network Element, since the O-RU exposes the Open FH M-Plane interface rather than O1, and thus it does not expose any 3GPP-aligned MnS. As well, the O-RU can only be deployed as a PNF, and not as a deployment-independent logical function.

The O1 Interface includes implementation of Fault, Configuration, Accounting, Performance, Security (FCAPS) functions, File management and Software management functions for O-RAN Network Functions. For details of the management services supported by O1, see O1-Interface [2].

The O2 Interface enables the management of O-Cloud infrastructures and the deployment life cycle management of O- RAN cloudified NFs that run on an O-Cloud. For details of the functions supported by O2, see O2-GA&P [i.9].

The Open FH M-Plane Interface includes implementation of Fault, Configuration, Accounting, Performance, Security (FCAPS) functions, File management and Software management functions for O-RU. It also specifies the carrier management aspects and is used between O-DU and O-RU.

### O-RU Management Models and Managed Deployment Options

This clause describes some of the possible O-RU management models, providing a high-level description of the models. O-RAN supports multiple deployment options. Adoption of a single O-RU management model or managed deployment option is not required in the O-RAN OAM Architecture. Multiple combinations of deployments may be supported in a network.

#### Flat Management Architecture Model

In the flat model, all entities/nodes are managed directly by the SMO.

#### Hierarchical Management Architecture Model

In the hierarchical model, all entities/nodes except for O-RUs are managed directly by the SMO, but the O-RU is managed directly by the O-DU (and indirectly by the SMO). Clause 4.2.4 of this document specifies the hierarchical management of the O-RU through the O-DU. OFH M-Plane [1] specifies the details of the use of the hierarchical model for the O-RAN O-RU.

#### Hybrid Management Architecture Model

In the hybrid model, all entities/nodes except for O-RUs are managed directly by the SMO. The O-RU is partially managed by the SMO (for FCAPS support) and partially managed by the O-DU. Details of the hybrid model for the O- RU including privilege division between SMO and O-DU can be found in OFH M-Plane [1].

#### Example Managed Deployment Options

O-RAN also supports multiple deployment options. OAD [i.10], Annex A provides several examples of O-RAN deployments. The choice of deployment option is at the discretion of the service provider.

### Network Functions Deployed behind a NAT

Service Providers prefer to not deploy Network Functions behind a NAT, but there are cases where this cannot be avoided, for example:

* exhaustion of public Ipv4 addresses
* deployment in large complexes not owned by the Service Provider (Apartments, Sports Venues etc.)
* connections via third-party networks using a NAT

When a Service Provider deploys NFs behind a NAT it is critical that they are able to retain full management control of these entities.

![](../assets/images/ac9fbd3c8f75.jpg)

**Figure 5.3.4-1 O-RAN NFs behind a NAT**

Four methods of providing the O-RAN SMO with the ability to address a NF behind a NAT and identify data received for a NF behind a NAT are recommended in priority order:

1. Use of IPv6 as Backhaul transport where possible, eliminating the need for a NAT due to exhaustion of public IPv4 addresses
2. Use of persistent VPN tunnels (e.g., IPSec) toward a VPN concentrator (gateway) located outside of network with the NAT. The NF is then accessible through the established tunnel.
3. Use of standard protocol (UPNP or PCP) to establish a port-forwarding rule at the firewall and automatically assign itself a port.
4. Service Provider manually configures the firewall to assign a port to an entity that resides within the protected network.

### Relationships between the O1 NRM entities and Architectural entities

#### Introduction

The architectural entities described in clause 5.3.2 have associated management entities described in O1-NRM [i.16] that encapsulate the manageable characteristics and behaviors of these architectural entities.

#### Managed object relationships to NE and NF architectural entities

The O-RAN NE and NF entities defined in OAD [i.10] are subtypes of, respectively, the 3GPP NE defined in 3GPP TR 21.905 [i.1] and the 3GPP NF defined in 3GPP TS 23.501 [i.15]. As such, the corresponding 3GPP management entities are used to encapsulate the manageable characteristics and behaviors of the O-RAN NE and NF entities. The ManagedElement IOC provides the manageable characteristics and behaviours for the O-RAN NE, and the ManagedFunction IOC provides the manageable characteristics and behaviours for the O-RAN NF. These relationships are depicted in Figure 5.3.5.2-1.

NOTE: By the time the O-RAN NE has been discovered, the O-RAN NE is expected to be comprised of at least 1 O-RAN NF.

![](../assets/images/9f24d4a896a2.jpg)

**Figure 5.3.5.2-1 Managed Object Relationship with O-RAN NE and NF**

#### MnF relationships to NF, NE and MnS architectural entities

As described in clause 5.3.1.1, the MnF exposes management services defined by the O-RAN MnS by acting as an MnS Producer for the O-RAN MnS. The O-RAN MnS is considered a subtype of the MnS defined in 3GPP TS 28.533 [i.4], clause 3.1. Likewise, the O-RAN MnF is considered a subtype of the MnF defined in 3GPP TS 28.533 [i.4], clause 3.1. By acting as a MnS Producer, the O-RAN MnF provides the manageable characteristics and behaviours for a set of O- RAN NFs. These relationships are depicted in Figure 5.3.5.3-1.

NOTE: An O-RAN MnF that provides the manageable characteristics and behaviour for an O-RAN NF does not have to be comprised within the same instance of an O-RAN NE.

![](../assets/images/7af96faa3605.jpg)

**Figure 5.3.5.3-1 MnF relationships to NF, NE and MnS architectural entities**

# Application Lifecycle Management (LCM)

![](../assets/images/bdf39b022a75.jpg)This chapter describes Lifecycle Management of applications that are developed by a Solution Provider and delivered to a Service Provider or Network Operator for deployment in O-RAN. The chapter's current focus is on LCM of rApps and xApps, both as defined in OAD [i.10].

Lifecycle Management follows the basic models of a Software Development Lifecycle by defining the transitional information from one state to another. There are several Software Development Life Cycle (SDLC) definitions. For the purposes of discussion this document generally follows a 7-state model as shown in Figure

6-1. Some states may also include activities that align with other states. However, this level of detail is not depicted here in order to introduce those details later in the document.

A Service Provider or Network Operator has needs which are fulfilled by a Solution Provider. Once the Solution Provider delivers the application it is validated in a test

environment prior to giving to operations to deploy. Usage of the deployed application may result in changes to configuration by the Service Provider or may be feedback to Solution Providers to evolve the capabilities of the network and/or its management.

**Figure 6-1: Generalized Lifecycle**

Although applications may come in many forms the delivery from the Solution Provider to the Service Provider needs to be done in a standardized manner. The seven steps defined in the SDLC are high level. Each may break down into a set of finer grain steps.

## Scope

The end-to-end lifecycle involves two entities, the Solution Provider and the Service Provider. The Solution Provider provides applications for the Service Provider to use in their network. The working flow may be summarized as three phases: Development, Onboarding and Operations, as shown in Figure 6.1-1.

![](../assets/images/2b7a029aa418.jpg)

**Figure 6.1-1 Application Lifecycle Phases**

These applications should be onboarded in a common manner, regardless of how they are deployed. This clause of the specification focuses on the data that is included in the App Package as it is exchanged between the Solution Provider and the Service Provider. This exchange is referred to as the "SP" exchange. This is not a formal interface between systems and therefore is not denoted as other O-RAN interfaces are. Care is given as not to put implementation or tooling mandates on either the Solution Provider in their development of the application, or the Service Provider in the aspect of training or deploying the application. Aspects of the lifecycle across both parties are introduced. However, not all aspects are discussed. Instead, the focus is on those activities that affect the data contained in the SP Exchange.

Later in this document the term "Service Planning" is used to represent activities internal to the Service Provider. This is not the same as the "SP Exchange" used to describe the data passed from the Solution Provider to the Service Provider. The method of the SP Exchange is not defined in this document. It is sometimes referred to as the "Marketplace". The marketplace may be implemented by either the solution provider, the service provider, or an external entity to both. The Marketplace simply represents an exchange between entities which may be done by electronic means or physical media.

The App Development may provide application solutions with or without AI/ML models, while "App Onboard" and "App Operate" are responsible for application onboarding and operations. The application development may be completed in the environment provided by the Service Provider to provide additional privacy and security for the Service Provider.

Applications may or may not utilize AI/ML models. Therefore, although the Model Information may be optional in the App Package, data exchange in the Application Package for applications utilizing AI/ML models is also included.

### Application Package Model

The following UML(R) diagram illustrates the high-level composition of the **Application Package (AppPackage)**. An **Application Package** is the basic unit exchanged between the Solution Provider and Service Provider. The attributes of the entities in the diagram are representative.

NOTE: UML is a registered trademarks/service mark of the Object Management Group, in the United States and other countries. O-RAN is not affiliated with, endorsed, or sponsored by the Object Management Group.

![](../assets/images/07b681c3b4ef.jpg)

**Figure 6.1.1-1: Application Package High Level Model**

The following modifiers can be pre-pended to Model Elements to indicate context: "Solution" The version of the element as defined by the Solution Provider "Onboarded" The initial version of the catalogued elements created during onboarding.

"Catalogue" Subsequent versions of the catalogued package or its elements which may have been adjusted by the Service Provider.

The **AppPackage** contains the **DeploymentDescriptor** and the **ManagementDescriptor**. An optional

**MLModelDescriptor** is supplied for an application employing ML technology.

The **DeploymentDescriptor** describes the deployment options for the application that have been validated by the Solution Provider. It includes one or more **DeploymentItems** describing the requirements for O-Cloud deployment of the application. The **DeploymentDescriptor** and **DeploymentItem** are consumed by the SMO/NFO.

The **ManagementDescriptor** describes the application contained in the **AppPackage**. It contains one or more **ComponentDescriptors** describing the components to be deployed as part of the application as well as elements used for FCAPS functions for the **AppPackage** such as an **AlarmDictionary**, **ConfigurationModel**, **SecurityDescriptor**, etc. The **ManagementDescriptor** and its components are consumed by the SMO/FOCOM.

ML Models may be pre-trained by the Solution Provider and therefore provide initial Training History. The Service Provider may also train the model or retrain the model with a more specialized data set, this is called specialization. The Training History provides the mechanism to record all training and subsequent specializations applied to that training through the Training History.

An example of specialization is a ML Model created to predict the flow of traffic volumes. This algorithm can be generally trained to follow road patterns for devices with a velocity greater than 20 miles per hour. This training may be done by the Solution Provider on a generalized or open data set and recorded in the **MLModelDescriptor**. After onboarding the Service Provider may provide specialized training for dense urban traffic patterns which don't always follow the roads due to periodic traffic congestion This would be an additional Training History record added by the **Service Provider** and referenced as specialization in the Catalogue Training History. Further refinement may also be applied for specific cities such as New York, Los Angeles, or San Francisco which would now add 3 specializations Catalogue Training History records relating to the dense urban Catalogue Training History which is a specialization if the Onboarded Training History.

Once a Catalogue **DeploymentDescriptor** is validated as safe for use in operations it is published to a runtime environment as a Published **DeploymentDescriptor**. Runtime instance data may be applied to the Published **DeploymentDescriptor**. Applications deployed as part of this activity are called App Instances. An App Instance running in the Non-RT RIC Runtime can be referred to as an rApp instance. An App Instance running in the near-RT RIC Runtime can be referred to as an xApp instance. An App Instance running in a training environment is referred to as a Training App instance.

**Diagramming Legend**

The legend depicted in Figure 6.1.1-2 is used across all lifecycle diagrams in this clause and is shown once so it is not required on every diagram. Bolded text on a diagram is an item identified as requiring further discussion later in the document. Text in Italics are items identified for completeness but not requiring further discussion. Meet-Me-Points (MMPs) are places where a major aspect of the lifecycle interchanges. Data may be exchanged through these MMPs but the exact mechanism of the exchange is outside the scope of this document. Destination or Decision points are color

coded according to their user community. Destination or Decision points are not a contributing factor to the data demands of the "SP" Exchange and are therefore not named. Instead the actions or conditions that are used as a transition between points are named as the items of interest.

![](../assets/images/5c181daa147d.jpg)

**Figure 6.1.1-2: Life Cycle Diagram Legend**

### App Development Lifecycles

In the App Development Lifecycle only two aspects are defined, the **Solution AppPackage** Lifecycle and the **Solution App** Lifecycle.

#### Solution App Lifecycle

The Development Lifecycle steps related to the Solution App are shown below in Figure 6.1.2.1-1.

![](../assets/images/cf7b4461ab5c.jpg)

**Figure 6.1.2.1-1: Solution App Development Lifecycle**

Customer feedback can consist of use case requirements, feature requests, defect notifications, or a variety of other comments. These feed the development cycle to develop new application or enhance existing ones. Requirements are usually identified and sent to developers to implement. The outcome of the build process is the container images built using SDKs for their intended deployments. If the application is AI/ML enabled, then the training action is done. The training may happen with synthetic data or with data provided by Service Providers. Information on the training performed is included in the Solution Training History. The completed Solution App is stored in a development repository.

#### Solution AppPackage Lifecycle

The Development Lifecycle steps related the Solution AppPackage are shown below in Figure 6.1.2.2-1.

![](../assets/images/2fbfb53f7285.jpg)

**Figure 6.1.2.2-1: Solution AppPackage App Development Lifecycle**

The Solution AppPackage is used to convey the Solution App through the onboarding process to the Service Provider. It begins by pulling the App out of its repository and placing it in the package as mandated by the exchange requirements. Next security is applied such that the Service Provider can ensure that an Onboarded AppPackage did in fact come from the expected Solution Provider. The secure package, Solution AppPackage, is then delivered to the Service Provider for onboarding.

### App Onboarding Lifecycles

The App Onboarding phase deals with establishing configuration, policies, measurements, and required analytics. The App Onboarding Phase is involved with both AppPackages and Apps, each with its own steps and associated actions. These are treated separately below.

#### Onboarded AppPackage Lifecycles

The Service Design steps associated with an Onboarded AppPackage are shown below:

![](../assets/images/9949b47be1f6.jpg)

**Figure 6.1.3.1-1: Onboarded AppPackage Service Provider Configuration Lifecycle**

An AppPackage is onboarded from the exchange, and its content verified. If valid, its contents (the App) are unpacked and the Onboarded AppPackage and associated Onboarded App are catalogued. If invalid, the Service Provider may provide AppPackage-level feedback to the Solution Provider via the Marketplace.

#### Onboarded App Lifecycles

The App Onboarding Phase for Onboarded Apps is split between normal processing for all applications, named "Configuration", and the lifecycle for "Training" Apps with included AI/ML Models. Workflow can interchange between these cycles iteratively. Each of these is treated separately below.

Note: The Run Time Library shown in the clauses below models a location where apps/Artifacts can be identified as ready for future deployment. It is not intended to imply any particular method of implementation of the SMO.

##### Onboarded App Certification Lifecycle

The Service Operator Certification steps associated with an Onboarded App are shown below:

![](../assets/images/055a604e5bb6.jpg)

**Figure 6.1.3.2.1-1 Onboarded App Service Provider Certification Lifecycle**

Onboarded Apps are made visible in the SMO environment when published into the catalogue. Each recommended configuration of the App is certified prior to publication to a runtime library. If Certification fails, then Service Planning determines the next course of action.

Service Planning aggregates "fix" requests from Configuration which may be passed back to the Solution Provider (at the AppPackage level) as feedback across the SP interface of the Marketplace Exchange. This exchange also aggregates "change" requests from Configuration or Operations and determines if the request is for additional development (a "feature" request) or additional training (a "training" request). The former would be aggregated and passed back to the Solution Provider via the SP interface as described above for "fix" requests. For the latter, the Service Design: Training lifecycle would ensue.

If the Onboarded App requires AI/ML training, then a request through Service Planning is used to train the model. When the "Specialized App" is returned, like non-ML Onboarded Apps it is catalogued and scheduled for certification. Once certified the App is distributed as a Published App to a Run Time Library. From there operations can deploy as either a management (rApp) or network application instance (xApp).

##### App Training Lifecycle

The Service Operator Training Lifecycle associated with a Training App is shown below:

![](../assets/images/5767a4a10785.jpg)

**Figure 6.1.3.2.2-1: Training App Service Provider Training Lifecycle**

When a training request is received then resources within the training environment are scheduled for the application. Data is collected and groomed for training after which a training iteration is executed. At the end of the training cycle a test set is applied to the model and accuracy is calculated. If the test fails or other metadata indicates more training iterations are required, then the cycle repeats. Once the model is adequately trained it is promoted and sent back to service planning for continuation in another lifecycle.

Inside the "Training Lifecycle" the process may require multiple iterations of training before being returned to the Service Planning MMP.

The iteration count is included in the specialization metadata information.

### App Operation Lifecycles

There can be many runtime environments in the service providers' network. Some can be production while others can be for non-production execution, such as offline training and lab certification. This document focuses on the runtime aspects of rApps, which execute within the Non-RT RIC as part of the SMO, and xApps, which execute in the near-RT RIC as part of the RAN. Although they have the same lifecycle steps the data demands due to their operational environment are different and therefore are independently addressed.

#### App Instance Lifecycles

![](../assets/images/64b71680642b.jpg)

**Figure 6.1.4.1-1: Service Provider Runtime Lifecycles**

After the App Instance is created through a deploy operation it is monitored. As monitoring reports the health and workload of the application it is scaled up and down based on demand. Based on monitoring result, a series of operation and management functions are triggered, such as alert management, event management, incident management and further analysis. The analysis results can provide guidance for further actions such as termination, healing and scaling. Finally, when its job is completed, the instance is terminated. While in operation the service provider may discover

defects, performance issues, or identify new features that would be beneficial. Such issue or change request

is communicated to the Service planning where the Application can be retrained or updated. The information may also be sent via the Service Planning to the Solution Provider as feedback.

Operations determine when an application is deployed, or undeployed. Since applications are atomic, the update process is an orchestrated process of deploy and terminate. It is possible for two versions to be active at the same time, but care should be given not to provide overlapping scopes to the application instances, otherwise they may give differing directives to the network in a random order. This can cause a destabilization of the network.

## Common Application Lifecycle Conclusions

The initial conclusion of Common Application Lifecycle procedures is that there is a formalized exchange between the Solution Provider and the Service Provider, the "SP Exchange". The SP Exchange consists of data describing the package and its security. The package also contains information regarding Deployment Configurations, Application Types, Deployable Components, and potentially ML Models. Further details regarding the composition of these areas are defined through analysis of the Actions identified in clause 6.1 as an action requiring further analysis (Bolded). O- RAN use cases for App Operation Lifecycle actions beyond "Deploy" have not been specified. Therefore, the analysis of the App Operation Lifecycles has been limited to the "Deploy" action.

The analysis consists of identifying the actors within the LCM which need information. Each Information Object is then analyzed for the Actions identified above and what is needed by each actor is identified. The actor information requirements are then be coalesced into artifacts such that each artifact is only be consumed by one actor. This maintains a separation of concern regarding artifact composition for different consumers.

### Information Consumers

The following actors are used in the analysis as consumers of information. The CNAD is unique in that it is also the producer of all the artifacts used to convey the information. However, since this is a basic premise it is not used in the analysis to describe its role in artifact generation.

|  |  |  |
| --- | --- | --- |
| **Actor** | **Role** | **Description** |
| **CNAD** | Cloud Native Application Developer | Vendor who wants to develop a CNA to be deployed into an O-RAN network utilizing CMT provided by a CP which in onboarded and deployed by the SMO. |
| **CMT** | Container Management Technology | Technology such as HELM(R) and/or Kubernetes(R) used to manage network functions components using cloud native de facto standards. This is different from the CP as the same CMT might be provided by different CPs.  NOTE: HELM and Kubernetes are registered trademarks/service marks of the Linux Foundation, in the United States and other countries. O- RAN is not affiliated with, endorsed or sponsored by the Linux Foundation. |
| **CP** | Cloud Provider | Cloud provider which provides cloud services including CMT. The exact mechanism or service points to provide the CMT may be cloud specific. This is different than the CMT as a CP can provide multiple CMT. |
| **SMO** | Service Management & Orchestration | This is the main orchestrator for a Telecom Service Provider to onboard and provide lifecycle management of vendor products. |
| **RTE** | Near-RT/Non-RT RIC | The near-RT RIC and Non-RT RIC provide the ability to be extended by 3rd party xApps and rApps, respectively. To integrate these apps into its framework a descriptor is supplied to its Run Time Environment (RTE). |

### Solution SW Package Lifecycle

The Solution SW package lifecycle deals with the Solution Provider creating a secure package that can be delivered to a Service Operator for onboarding. This largely deals with the addition of all the artifacts of the software into a library and then adding security around the files and the package. Annex clause C.1 describes the processing of the artifacts into the package.

* + - 1. Functional Requirements

|  |  |  |
| --- | --- | --- |
| **REQ** | **Description** | **Note** |
| [REQ-ALM-FUN2-1] | The Application Package shall be composed of at least all the mandatory items defined in the Application Package Descriptor and its subtending elements. |  |
| [REQ-ALM-FUN2-2] | The Application Package shall support security requirements as specified in SecReqSpecs [4]. |  |

### Onboarded SW Package Lifecycles

The Onboarded SW Package Lifecycles deal with the importing of an Application Package by first verifying its authenticity and then verifying is consistency. Assuming the package passes those tests the contained artifacts are extracted from the package and added to the SMO catalogue. Annex clause C.2 describes the process of cataloguing the artifacts of the package.

* + - 1. Functional Requirements

|  |  |  |
| --- | --- | --- |
| **REQ** | **Description** | **Note** |
| [REQ-ALM-FUN3-1] | The SMO shall have the capability to verify that Application Package satisfies security requirements as specified in SecReqSpecs [4]. |  |
| [REQ-ALM-FUN3-2] | The SMO shall verify that the values contained in the Application Package descriptors are valid prior to cataloguing. |  |
| [REQ-ALM-FUN3-3] | The SMO shall catalogue the verified artifacts identified in the Application Package. |  |

### Onboarded ManagementDescriptor Certification Lifecycle

The Onboarded ManagementDescriptor Certification Lifecycle entails certifying deployment options prior to utilization in a specific runtime environment. The SMO initiates the fine tuning of such an App for this deployment option. This process may be iterative, and the SMO identifies each refinement of the App and certifies the refinements results in the App being suitable for inclusion in the run time library for deployment. Annex clause C.3 describes the process of certify a deployment option of the package.

* + - 1. Functional Requirements

|  |  |  |
| --- | --- | --- |
| **REQ** | **Description** | **Note** |
| [REQ-ALM-FUN4-1] | The SMO should validate and certify each deployment option defined in the application package prior to deployment. |  |
| [REQ-ALM-FUN4-2] | SMO shall be able to identify a deployment option that requires AI/ML training and initiate the training request. |  |

|  |  |  |
| --- | --- | --- |
| [REQ-ALM-FUN4-3] | SMO shall be able to identify and onboard a new version of an App for a specific deployment delivered from AI/ML Training. |  |

### Application Training Lifecycle

The Application Training Lifecycle deals with the training of an AI/ML Model that was included as part of a deployment option in an application package. The model is trained, and the resultant deployment is returned as a new version of the application. Annex clause C.4 describes the process of training an application deployment option which contains one or more ML Models.

#### Functional Requirements

|  |  |  |
| --- | --- | --- |
| **REQ** | **Description** | **Note** |
| [REQ-ALM-FUN5-1] | The Training Provider shall have the ability to receive training requests. (Note 1) |  |
| [REQ-ALM-FUN5-2] | Training Platform shall acquire the data from the network which satisfy the Data Requirements specified in the MLModelDescriptor. (Note 1) |  |
| [REQ-ALM-FUN5-3] | The Training Provider shall be able to validate that the model has been trained sufficiently, such as passing accuracy thresholds for use in a production setting. (Note 1) |  |
| [REQ-ALM-FUN5-4] | The Training Provider shall deliver an updated version of the App for the specified deployment option in the format that the SMO can onboard. |  |

**Note 1: This requirement is overarching and generalized in nature. Specific requirements for rApps or xApps as specified by other Work Groups shall supersede this requirement when in conflict.**

### Deploy Instance Lifecycle

Deployment of an Application differs only slightly depending on if it is a CNF, xApp, or rApp. Basically, the process of registering with a Run Time Environment is not required when the application is a CNF. The xApp and rApp differ in the registration process and the mechanisms to connect the Application with other Applications of the same type is dependent on the framework used.

The use case for CNF deployment is in CLD-ORCH-UC [i.8], clause 3.2.1. The use case for xApp deployment is in CLD-ORCH-UC [i.8], clause 3.3.2. An example use case for deployment of an rApp is in Annex C.5 of this document.

* + - 1. Functional Requirements

|  |  |  |
| --- | --- | --- |
| **REQ** | **Description** | **Note** |
| [REQ-ALM-FUN6-1] | The SMO shall be able to deploy a CNF using a set of CloudNativeDescriptorFiles and a set of OverrideVariables as defined in the DeploymentItem. |  |
| [REQ-ALM-FUN6-2] | The SMO shall be able to deploy an xApp using a set of CloudNativeDescriptorFiles and a set of OverrideVariables as defined in the DeploymentItem. |  |
| [REQ-ALM-FUN6-3] | The SMO should be able to deploy an rApp using a set of CloudNativeDescriptorFiles and a set of OverrideVariables as defined in the DeploymentItem. |  |

# Annex A (informative):

Cardinality

This informative Annex provides background information regarding the cardinality of different O-RAN architecture elements. It is not intended as a requirement on cardinality.

The RAN network has an expected hierarchical fan out. Therefore, the O-RAN sizing would be:

* Non-RT RIC (1..j)
* Near-RT RIC (1..k)
* O-CU-CP (1..m)
* O-CU-UP (1..n)
* O-DU (1..p)
* O-RU (1..q)

Where: 1<=j; j<=k; k<=m; m<=n; m<=p; p<=q

Due to resiliency and scaling aspects of cloud implementations an O-DU will logically be connected to one O-CU-CP. The O-CU-CP may in fact be a pool of O-CU-CP instances to handle loads.

O-CU-UP NFs will be pooled and aligned with the services they are configured to serve. The O-CU-CP will assign the O-CU-UP that an O-DU needs to connect to for a given UE session.

An O-DU may serve many O-RU NFs depending on its designed capacity to manage the loop 1 processing.

One Near-RT RIC will be connected to multiple O-CU-CP, O-CU-UP, and O-DU NFs. For resiliency the NFs may be connected to more than one Near-RT RIC, however, it shall not require duplication of data to be sent to each RIC instance.

A Near-RT RIC will be connected to one non-RT RIC.

# Annex B: Void

Annex C (informative):

Common App Lifecycle Flows

This clause provides examples of information flow during various lifecycle activities which are not depicted in other O- RAN Specifications.

## Solution SW Package Lifecycle

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>> Related use** |
| Goal | Build a package that a CNAD can deliver to an Operator which can be onboarded onto the SMO. |  |
| Actors and Roles | [1]. Cloud Native Application Developer [2]. Application Package. |  |
| Assumptions | [1]. The application has been successfully verified by the developer [2]. The order in which the artifacts are added are arbitrary and can  be done in any order. The order presented is just one of many  possible orders. |  |
| Pre-conditions | [1]. Developer Repository is available and contains the unpackaged artifacts. |  |
| Begins when | CNAD wants to create an Application Package for delivery to the  operator. |  |
| Step 1 (M) | Add the CMDictionary files to the package. |  |
| Step 2 (O) | Add the certificates which are to be delivered with the package to the  package. |  |
| Step 3 (M) | Add the ManagementDescriptor to the Package |  |
| Step 4 (M) | Add the ExecutableImages to the Package |  |
| Step 5 (O) | Add the RTEDescriptor if an rApp or xApp to the Package |  |
| Step 6 (M) | Add the ComponentDescriptor to the Package |  |
| Step 7 (O) | Add the MLModelDescriptor to the Package |  |
| Step 8 (O) | Add any Training History for the MLModel to the Package |  |
| Step 9 (O) | Add the CloudNativeDescriptor to the Package |  |
| Step 10 (O) | Add the DeploymentDescriptor to the Package |  |
| Step 11 (M) | Compute the Checksum for all files in the Package and add to  Package |  |
| Step 12 (M) | Digitally Sign the Package |  |
| Ends when | The Application Package is Created. |  |
| Exceptions | None identified |  |
| Post Conditions | Application is described in a secure Application Package. |  |
| Traceability | [REQ-ALM-FUN01]; [REQ-ALM-FUN02]; [REQ-ALM-FUN03] |  |

![](../assets/images/b0cff94ce55a.png)

![](../assets/images/bfc375e085fe.png)

## Onboarded SW Package Lifecycle

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>> Related use** |
| Goal | Verify and Unpack a package that a CNAD delivered to an Operator which is placed in the SMO catalogue. |  |
| Actors and Roles | [1]. Cloud Native Application Developer [2]. Service Designer.  [3]. SMO Import Function. [4]. SMO Catalogue. |  |
| Assumptions | [1]. The Application Package has been successfully received from the CNAD.  [2]. The order in which the artifacts are extracted is arbitrary and can be done in any order. The order presented is just one of  many possible orders. |  |
| Pre-conditions | [1]. Catalogue is available. |  |
| Begins when | Service Designer wants onboard and catalog a package received from the CNAD. |  |
| Step 1-2 (M) | Get the package to Import and begin Import |  |
| Step 3-5 (M) | Verify the Signature of the Package |  |
| Step 6-8 (M) | Verify the checksum of all artifacts in the package. |  |
| Step 9 (O) | Add the package to the catalogue. |  |
| Step 10 (M) | Extract the overall Application Package Descriptor |  |
| Step 11-12 (M) | Extract and Catalogue all ConfigurationManagementDescriptionFile |  |
| Step 13-14 (M) | Extract and Catalogue all Certificates |  |
| Step 15-16 (M) | Extract and Catalogue all ExecutableImages |  |
| Step 17-18 (M) | Extract and Catalogue all RTEDescriptor Files |  |
| Step 19 (M) | Catalogue the ManagementDescriptor |  |
| Step 20-21 (M) | Extract and Catalogue all MLModelDescriptors |  |
| Step 22 (M) | Extract each DeploymentDescriptor |  |
| Step 23-24 | Extract and Catalogue each CloudNativeDescriptorFile |  |
| Step 25 (M) | Catalogue each DeploymentDescriptor |  |
| Step 26 (M) | Return success of the Package Import request. |  |
| Ends when | The information elements of the Application Package have been successfully added to the catalogue. |  |
| Exceptions | 1. Package fails signature verification. Feedback is sent to CNAD. Use Case Terminates. 2. File fails Checksum validation. Feedback is sent to CNAD. Use Case Terminates. |  |
| Post Conditions | Application is described the SMO catalogue. |  |
| Traceability | [REQ-ALM-FUN04]; [REQ-ALM-FUN05]; [REQ-ALM-FUN06] |  |

![](../assets/images/dcd86c7f7391.png)

![](../assets/images/bab006dc488b.png)

## Onboarded ManagementDescriptor Certification Lifecycle

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>> Related use** |
| Goal | Certify a deployment option for publication to a runtime library. |  |
| Actors and Roles | [1]. Cloud Native Application Developer [2]. Application Tester.  [3]. Service Planning.  [4]. SMO Catalogue.  [5]. SMO Runtime Library |  |
| Assumptions | [1]. The deployment option has been onboarded. Some instruction for populating the runtime variables and application configuration has been provided. Currently this is outside the of the application package. |  |
| Pre-conditions | [1]. Catalogue is available.  [2]. Certification Environment is available. [3]. Runtime Library is available. |  |
| Begins when | Service Designer wants to certify a deployment option. |  |
| Step 1-3 (M) | Perform Certification Testing |  |
| Step 3 (O) | Modify Configuration Parameters and re-iterate testing until complete. |  |
| Step 4-6 (M) | Testing Complete. Extract Catalogue components for this option and publish to runtime library. |  |
| Step 7-8 (O) | Exception Case 1: Certification failed due to feature defect. Notify  CNAD of failed deployment certification. |  |
| Step 9-13 (M) | Exception Case 2: Certification failed due to lack of training. Send to training and ingest trained model as new application version. |  |
| Step 14 (M) | Exception Case 3: Unspecified Other Failure. |  |
| Ends when | The deployment option is certified and published into a runtime library. |  |
| Exceptions | 1. Deployment Option fails certification. Feedback is sent to CNAD. Use Case Terminates. 2. Deployment Option requires additional training. Use case resumes at Step 1 with the new version to be certified. 3. Other failure cases: Use Case Terminates and failure cause is corrected before restarting the Use Case at step 1. |  |
| Post Conditions | Deployment Option is published in a Runtime Library. Note: The SMO can have several Runtime Libraries for different environments. |  |
| Traceability | [REQ-ALM-FUN07]; [REQ-ALM-FUN08]; [REQ-ALM-FUN09] ; [REQ- ALM-FUN10] ; [REQ-ALM-FUN11] |  |

![](../assets/images/c9c78cef23b4.png)

## Application Training Lifecycle

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Goal | Train one or more ML models which are part of a deployment option for an application. |  |
| Actors and Roles | [1]. Service Planning.  [2]. Training Provider |  |
| Assumptions | [1]. The deployment option has been onboarded and an initial configuration for deployment has been identified. |  |
| Pre-conditions | [1]. Training Provider is available.  [2]. Data required for training is available. |  |
| Begins when | Service Planning requests a deployment option with at least one AI/ML Model to be trained. |  |
| Step 1 (M) | Service Planning initiates a training request |  |
| Step 2 (O) | Training Platform acquires the data from the network which satisfy the Data Requirements specified in the MLModelDescriptor. |  |
| Step 3 (M) | The Training Platform executes the training iteration. |  |
| Step 4 (M) | The Training Platform updates the training history record for the deployment option |  |
| Step 5 (M) | The Training platform validates the ML Model scores to determine if it  now ready to be certified. |  |
| Step 6 (M) | The Training platform returns the newly trained version of the ML Model to Service Planning. |  |
| Ends when | The ML Models of the deployment option successfully pass its qualification scores required for accuracy in a runtime environment. |  |
| Exceptions | None Identified. |  |
| Post Conditions | Deployment Option is returned to Service Planning as a new version of the application. |  |
| Traceability | [REQ-ALM-FUN12]; [REQ-ALM-FUN13]; [REQ-ALM-FUN14]; [REQ- ALM-FUN15] |  |

![](../assets/images/b895f32875d9.jpg)

## Deploy rApp Instance Lifecycle

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Goal | rApp deployment is instantiated on Non-RT RIC, resulting in enhanced capabilities. Configuration and communication between  rApp and SMO is mediated by the Non-RT RIC via the R1 interface. |  |
| Actors and Roles | [1]. Operations Personnel  [2]. SMO (Run Time Library, Network Function Orchestrator, OAM Functions, Non-RT RIC, rApp)  [3]. O-Cloud (Deployment Management Services) [4]. O-RAN (Any NF) |  |
| Assumptions | [1]. The O-Cloud and resultant O2 interface are used to exemplify a cloud. Implementations may vary based on SMO architecture and deployment model.  [2]. The "Deployment Option" to the SMO for the new rApp(s) may include information for the SMO to use for homing purposes, such as desired rApp or rApp type(s) associated with O-Cloud or Non-RT RIC Instance |  |
| Pre-conditions | [1]. SMO is available  [2]. The O-Cloud instance has been installed successfully as per "O- Cloud Deployment Processing" use case.  [3]. Non-RT RIC NF has been deployed successfully on the O- Cloud instance as part of the SMO.  [4]. rApp package has been onboarded onto the SMO. The Onboarded package has at least one deployment option that has been certified and published in the Run-Time Library per the Application Lifecycle. The NF package contains a descriptor that  provides the deployment and resource requirements for the rApp |  |
| Begins when | New rApp is to be instantiated as a SMO deployment on a Non-RT  RIC hosted on an O-Cloud |  |
| Step 1-2 (M) | Ops Personnel query the Run Time Library to find certified deployment  options for the rApp. This includes the Schema Variables for descriptor overrides. Based on the schema the operator provides values for the override variables. |  |
| Step 3 (M) | Ops Personnel makes request to SMO to deploy new rApp(s) on the  Non-RT RIC. |  |
| Step 4 (M) | For the selected option get the DeploymentItems for the selected  option. |  |
| Step 5 (O) | The SMO decomposes the service request and identifies all rApps to  be deployed and the order in which they should be deployed. |  |
| Steps 6-16 | These steps are repeated for each rApp to be deployed as part of the  deployment Option. |  |
| Step 6 (M) | The SMO determines which O-Cloud and Non-RT RIC Instance to deploy the rApp to. This can be done using Policies which match  operator input or other more complex homing policies, or can be explicitly identified by the Ops Personnel. |  |
| Step 7 (M) | For each deployment of the rApp in the deployment option, the following steps 7 - 11 take place:  The deployment requires a CloudNativeDescriptor which is retrieved from the Run Time Library for the current DeploymentItem being deployed. |  |
| Step 8 (M) | SMO directs the O-Cloud DMS using O2 to create the Deployment |  |
| Step 9 (M) | DMS allocates the resources according to the NF Deployment  request. During the NF Deployment instantiation, day-0 configuration can take place. |  |
| Step 10 (M) | DMS returns notification to SMO over O2 indicating that the  deployment has been created and the Deployment ID |  |
| Step 11 (M) | SMO updates its rApp inventory with the received Deployment ID |  |
| Step 12 (M) | rApp registers with the Non-RT RIC via the R1 interface |  |
| Step 13 (O) | Optional implementation of the Non-RT RIC to detect when rApp is requesting data that is anchored in the SMO and initiate a request for  that data. |  |
| Step 14 (O) | Optional implementation of the Network Function Manager to  evaluate current data jobs and determine if data is already available or a job needs to be created or updated. |  |
| Step 15 (O) | Optional implementation of the Network Function Manager to create  or update jobs dynamically. |  |

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>> Related use** |
| Step 16 (M) | If a job is to be updated or created then the O1 interface is used. |  |
| Step 17 (M) | The SMO informs the Ops Personnel of the overall success or failure of the request. |  |
| Ends when | rApp(s) have been instantiated as SMO deployment(s) on the O- Cloud and configured by the SMO via the Non-RT RIC |  |
| Exceptions | rApp Deploy fails - DMS notifies SMO and SMO informs Ops  Personnel |  |
| Post Conditions | rApp is instantiated and incorporated under Non-RT RIC management. |  |
| Traceability | TBD |  |

![](../assets/images/7338aa79c3a2.png)

# Annex D (normative):

Shared O-RU

Editor's note: The content of this Annex has been copied from an earlier specification without significant changes. This content is available for review and subsequent inclusion into the main body of the specification, taking into account both the technical validity of the content and alignment with the rest of the specification. When relevant content is moved, it should at the same time be removed from the Annex, and empty clauses voided.

## Introduction

A Shared O-RU deployment allows one or more operators to connect their O-DUs to an O-RU and share its resources.

An O-DU should simultaneously support connections to non-Shared O-RUs, Multi O-DU O-RUs and/or Multi-Operator O-RUs, dependent on which Shared O-RU features the O-DU supports.

Refer to OFH M-Plane [1] for more details of Shared O-RU.

## Single Operator Shared O-RU

### O-DU(s) roles

In Single Operator Shared O-RU deployment, O-DUs do not have specific access privilege roles as in Multi-Operator Shared O-RU. O-DUs use the same access control groups as in non-Shared O-RU.

In hierarchical deployment, O-DUs all use the same access control group "sudo" toward the Multi O-DU O-RU. One O- DU acts as primary O-DU responsible for configuring general OAM related configuration, supervision per O-DU, NETCONF call home and managing general OAM functions.

Refer to clause 4.2.1 and OFH M-Plane [1], clause 6.5 for further details.

### Configuring O-RU

#### Configuring O-RU general OAM related configuration

In hierarchical deployment, it is recommended that SMO configures general OAM related configuration for each Multi O-DU O-RU using O1 toward only one sharing O-DU (primary). That O-DU then consequently uses the configuration data to configure the Multi O-DU O-RU over its Open Fronthaul M-Plane interface. If SMO configures the same Multi O-DU O-RU through more than one sharing O-DU, it is recommended that SMO validates outside of the O-DUs that the configuration is aligned in all the sharing O-DUs to avoid configuration discrepancy. How validation is done is out of the scope of the present document.

NOTE: O-RU does not check which O-DU(s) is configuring it, nor does it validate if, e.g., same parameter is configured to different allowed values by O-DUs.

In hybrid deployment, it is recommended that SMO directly configures all general OAM related configuration for each Multi O-DU O-RU over its Open Fronthaul M-Plane interface.

Refer to clause 4.2.1 for further details.

#### Managing O-RU general OAM related functions

In hierarchical deployment, it is recommended that SMO manages Multi O-DU O-RU general OAM functions using O1 toward only one sharing O-DU (primary), for example: software management, file Management, synchronization aspects, antenna line devices, operational aspects of external IO, O-RU connectors, beamforming configuration update, user account provisioning. If SMO manages general OAM functions for the same Multi O-DU O-RU through more than one sharing O-DU, it is recommended that SMO co-ordinates the O-DUs that the management is aligned in all of the sharing O-DUs to avoid discrepancy. How validation is done is out of the scope of the present document.

In hybrid deployment, it is recommended that SMO directly manages all Multi O-DU O-RU general OAM functions for each Multi O-DU O-RU over its Open Fronthaul M-Plane interface.

O-DUs may manage other O-RU functions independently, e.g., NETCONF connection establishment, performance management, fault management, static configuration for PRACH and SRS.

Refer to OFH M-Plane [1], clauses 8, 12, 13, 14.4, 14.5, 14.6, 15.4 for further details.

#### Configuring carrier configuration

SMO shall configure only the cells that the O-DU serves and their corresponding carriers over O1 towards that O-DU. The O-DU shall then consequently configure the corresponding tx/rx-array-carriers on the Multi O-DU O-RUs over their Open Fronthaul M-Plane interfaces.

#### Carrier state management

An O-DU shall only activate or deactivate the tx/rx-array-carriers on the Shared O-RU that belongs to the cells that the O-DU serves.

When an O-DU receive a notification from a Shared O-RU indicating tx/rx-array-carrier state change, the O-DU shall treat the notification in the same way as for a non-shared O-RU, i.e., O-DU shall ignore the notifications that do not relate to the O-DU cell's NRSectorCarriers.

### Supervision Monitoring per O-DU

In hierarchical deployment, SMO may configure SecondaryODuInfo including attribute *supervisionPerODu* over O1 on the primary O-DU. The primary O-DU shall then consequently configure Shared Resource Operator O-DU supervision on each Shared O-RU.

In hybrid deployment, SMO instead may configure Shared Resource Operator O-DU supervision directly on each Shared O-RU over its Open Fronthaul M-Plane interface.

Refer to OFH M-Plane [1], clauses 6.7, 19.3.4 for further details.

### NETCONF call home

In hierarchical deployment, SMO may configure the SecondaryODuInfo including attribute *callHomeClientInfo* over O1 only on the primary O-DU. If *callHomeClientInfo* has been configured, the primary O-DU shall then consequently configure call home addresses on each Shared O-RU.

In hybrid deployment, SMO instead may configure call home addresses directly on each Shared O-RU over its Open Fronthaul M-Plane interface.

## Multi Operator Shared O-RU

### O-DU(s) roles

O-DU possible roles towards a Multi Operator Shared O-RU are defined in OFH M-Plane [1]. O-DU role towards all connected Multi Operator Shared O-RUs is configured over O1 by setting *oDuRoleOfSharedORu* to one of the values: "HOST\_AND\_SRO", "HOST" or "SRO".

When O-DU role is set to "HOST\_AND\_SRO", the O-DU simultaneously perform the Shared O-RU Host role and the Shared Resource Operator roles towards all connected Multi Operator Shared O-RUs.

When O-DU role is set to "HOST", the O-DU only performs the Shared O-RU Host role, equaling Neutral Host. That O-DU configures and manages all connected Multi Operator Shared O-RUs but does not have carriers in those O-RUs.

For each Multi Operator Shared O-RU, at most only one connected O-DU should perform the Shared O-RU Host role. If no connected O-DU performs the Shared O-RU Host role, it is assumed that an SMO performs that role, acting as

Neutral Host. However, the scenario in which the Neutral Host is provided by SMO is not considered in this version of the document.

In a hierarchical deployment containing Multi Operator Shared O-RUs, the O-DU performing the Shared O-RU Host role uses the access control group "sudo" toward all connected Multi Operator Shared O-RUs. The O-DUs performing only the Shared Resource Operator role (i.e., not together with the Shared O-RU Host role) use the access control group "carrier" towards all connected Multi Operator Shared O-RUs.

In a hybrid deployment containing Multi Operator Shared O-RUs, if an O-DU performs the Shared O-RU Host role, it uses the access control group "hybrid-odu" toward the Multi O-DU O-RU. The O-DUs performing only the Shared Resource Operator role (i.e., not together with the Shared O-RU Host role) use the access control group "carrier" towards all connected Multi Operator Shared O-RUs.

Following sub-clauses define what shall be configured over O1 to O-DU to realize O-DU functions defined in OFH M- Plane [1].

### Configuring O-RU general OAM related configuration

In hierarchical deployment, it is recommended that SMO configures O-RU general OAM related configuration over O1 toward only the single Shared O-RU Host O-DU. The Shared O-RU Host O-DU shall then consequently configure general OAM related configuration on the Multi Operator O-RUs over their Open Fronthaul M-Plane interfaces.

In hybrid deployment, it is recommended that SMO directly configures general OAM related configuration for each Multi O-DU O-RU over its Open Fronthaul M-Plane interface.

### Managing O-RU general OAM related functions

In hierarchical deployment, it is recommended that SMO manages O-RU general OAM related functions over O1 toward only the single shared O-RU Host O-DU. The Shared O-RU Host O-DU shall then consequently manage general OAM related functions on the Multi Operator O-RUs over their Open Fronthaul M-Plane interfaces.

In hybrid deployment, it is recommended that SMO directly manages Multi O-DU O-RU general OAM functions for each Multi O-DU O-RU over its Open Fronthaul M-Plane interface.

### NETCONF server user account provisioning for shared resource operators

In hierarchical deployment, SMO shall configure the SecondaryODuInfo over O1 only on the Shared O-RU Host O- DU. The Shared O-RU Host O-DU shall then consequently configure Shared Resource Operator user accounts with "carrier" access privilege and *sro-id=sharedResourceOperatorId* on the connected Multi Operator O-RUs over their Open Fronthaul M-Plane interfaces.

NOTE: Value of each *sharedResourceOperatorId* shall be unique and associated with a particular Shared Resource Operator only.

In hybrid deployment, SMO instead configures Shared Resource Operator user accounts with "carrier" access privilege and *sro-id=sharedResourceOperatorId* directly on each Multi Operator O-RU over its Open Fronthaul M-Plane interface.

Refer to OFH M-Plane [1], clause 19.3.1 for further details.

### NETCONF call home

In hierarchical deployment, SMO may configure the SecondaryODuInfo including attribute *callHomeClientInfo* over O1 only on the Shared O-RU Host O-DU. If *callHomeClientInfo* has been configured, the Shared O-RU Host O-DU shall then consequently configure call home addresses on each Shared O-RU.

In hybrid deployment, SMO instead may configure call home addresses directly on each Shared O-RU using its Open Fronthaul M-Plane interface.

Refer to OFH M-Plane [1], clause 19.3.2 for further details.

### Enhanced sro-id based NETCONF access control

SMO shall configure the attribute *sharedResourceOperatorId* over O1 with a unique value on each Shared Resource Operator O-DU. The Shared Resource Operator O-DU shall then consequently use the value of *sharedResourceOperatorId* for the user account of the NETCONF client with sro-id configured on the Multi Operator Shared O-RUs.

Refer to OFH M-Plane [1], clause 19.3.3 for further details.

### Supervision Monitoring per O-DU

In hierarchical deployment, SMO may configure SecondaryODuInfo including attribute *supervisionPerODu* over O1 on the Shared O-RU Host. The Shared O-RU Host shall then consequently configure Shared Resource Operator O-DU supervision on each Shared O-RU.

In hybrid deployment, SMO instead may configure Shared Resource Operator O-DU supervision directly on each Shared O-RU using its Open Fronthaul M-Plane interface.

Refer to OFH M-Plane [1], clauses 6.7, 19.3.4 for further details.

### Processing element configuration

Shared O-RU Host O-DU shall use the value of each Shared Resource Operator O-DUs *sharedResourceOperatorId* attribute to configure a particular O-RU's ru-element list entry as being uniquely associated with a particular Shared Resource Operator. Shared O-RU Host O-DU gets *sharedResourceOperatorId* as defined in D.3.6.

Refer to OFH M-Plane [1], clause 19.4.2.

### Carrier Partitioning and Configuration in Shared O-RU

Only Shared O-RU Host O-DU has access privileges over Open Fronthaul M-Plane to create tx/rx-array-carrier configuration in the Shared O-RU.

NOTE 1: How Shared Resource Operators agree configuration partitioning is outside the scope of the present document. It is assumed that operators mutually agree partitioning.

NOTE 2: How Shared Resource Operators configurations are validated is outside the scope of the present document. It is assumed that operators mutually validate as part of configuration partitioning.

NOTE 3: How Shared Resource Operators agree eAxC-IDs partitioning is out of the scope of the present document. It is assumed that operators mutually agree partitioning.

Refer to clause 4.2.1 and OFH M-Plane [1], clauses 19.6.1, 19.11.

### Notification of configuration updates

A Shared Resource Operator O-DU may configure subscriptions to receive notifications of modifications to a connected shared O-RU's datastore, according to the defined NETCONF access control privileges for the NETCONF client of that Shared Resource Operator.

Refer to clause 4.2.1 and OFH M-Plane [1], clause 19.6.2 for further details.

### Shared O-RU Reset Co-ordination

Co-ordination of Shared O-RU reset is outside the scope of the current specification.

NOTE 1: It is assumed that operator mutually agree time when Shared O-RU Host O-DU reset Shared O-RU. NOTE 2: It is assumed that SMO(s) disable cell(s) in a controlled manner before Shared O-RU reset.

Refer to OFH M-Plane [1], clause 19.10.1 for further details.

### Locked administrative state

Co-ordination of Shared O-RU administrate state change to locked is outside the scope of the current specification.

NOTE 1: It is assumed that operators mutually agree time when Shared O-RU Host O-DU change Shared O-RU administrative state to locked.

NOTE 2: It is assumed that SMO(s) disable cell(s) in a controlled manner before Shared O-RU state is changed to locked.

Refer to OFH M-Plane [1], clause 19.10.2 for further details.

### Antenna calibration

Co-ordination of Shared O-RU antenna calibration timing is outside the scope of the current specification.

NOTE: It is assumed that operators mutually agree timing for Shared O-RU antenna calibrations.

Refer to OFH M-Plane [1], clause 19.10.3 for further details.

### Shared O-RU with antenna line devices

The Shared O-RU Host O-DU is responsible for configuring and controlling antenna line devices.

NOTE: It is assumed that operators mutually share antenna line devices configuration and co-ordinate antenna line operations, e.g., remote electrical tilt.

Refer to OFH M-Plane [1], clauses 14.4, 19.11.6.

### Shared O-RU operation in combination with shared cell

The Shared O-RU Host O-DU is responsible for configuring shared cell copy and combine parameters on behalf of each Shared Resource Operator O-DU.

NOTE: How Shared Resource Operators agree Shared Cell configuration of copy and combine is outside the scope of the present document. It is assumed that operators mutually agree partitioning.

Refer to OFH M-Plane [1], clauses 17, 19.14 for further details.

## Content of Open Fronthaul M-Plane ODU ID

O-DU uses the value of the attribute *oDuIdForSharedORu* as the Open Fronthaul M-Plane odu-id, which is a free text string and can be set to, e.g., concatenated gNBId and gNBDUId.

## Content of Open Fronthaul M-Plane SRO ID

O-DU uses the value of the attribute *sharedResourceOperatorId* as the Open Fronthaul M-Plane sro-id*,* which is a free text string and can be set to, e.g., PLMN ID.

# Annex E (informative):

Network Energy Saving

Editor's note: The content of this Annex has been copied from an earlier specification without significant changes. This content is available for review and subsequent inclusion into the main body of the specification, taking into account both the technical validity of the content and alignment with the rest of the specification. When relevant content is moved, it should at the same time be removed from the Annex, and empty clauses voided.

Editor's note: The content of this clause needs to be reviewed and potentially revised to ensure that the content is relevant to OAM.

## Introduction

This section describes the requirements and scope of the energy saving techniques, as described in NESUC [i.18], relevant to O1 interface and its associated information. The following techniques are employed to attain the network energy saving.

## Cell and carrier deactivation / activation

### Flow description

* + - 1. The O-DU using Open Fronthaul M-Plane interface collects capabilities related to support for Network Energy Saving from the O-RU. The parameters that are exposed are out of scope of this specification.
      2. O-DU using O1 interface exposes to MnS Consumer its capabilities along with O-RU capabilities reported in Step 1.
      3. Via O1 interface the O-DU receives from MnS Consumer configuration needed to enable services.
      4. O-DU internally applies received configuration (assumption: the configuration is valid - otherwise scenario stops with O-DU rejecting received configuration).
      5. O-DU applies configuration to O-RU(s) using Open Fronthaul M-Plane interface where applicable, which is out of scope of this document.
      6. O-DU exposes available traffic and/or load performance and energy consumption measurements data as per its current configuration to MnS Consumer via O1 interface.
      7. MnS Consumer analyses above collected data.
      8. Based on the analysis done in Step 7, MnS Consumer optionally prepares reconfiguration for the O-CU. The way how MnS Consumer controls O-CU is out of scope of this document.
      9. O-DU receives list of cells to be deactivated / activated (it could also be single cell) over F1 interface, which is out of scope of this document.
      10. As an alternative to Step 8, MnS Consumer optionally creates Energy Saving Policies for O-CU. The way how MnS Consumer controls O-CU is out of scope of this document.
      11. O-CU periodically checks the conditions specified in the policy are fulfilled. The way how O-CU checks the conditions stated in the policy is out of scope of this document.
      12. If policy conditions are fulfilled, O-DU optionally receives the list of cells to be activated/deactivated over F1 interface, which is out of scope of this document.
      13. O-DU translates between cells and associated carriers that serve for such cells.
      14. O-DU performs deactivation / activation of carriers in O-RU through Open Fronthaul M-Plane interface, where those carriers determined in Step 9 and Step 13. This is out of scope of this document.
      15. The flow loops to Step 6 as shown in Figure E.2.1-1.

![](../assets/images/eb2e0a8b0411.png)

**Figure E.2.1-1: Network Energy Saving - Cell and carrier deactivation / activation use case**

This method shall be used to achieve energy saving by deactivating a cell(s) and its associated carriers.

From O-DU perspective it does not matter if cell deactivation / activation request is received because of direct command sent to O-CU by MnS Consumer or is result of processing of the policies in the list (conditionals formed in any Energy Saving Policy in the list for cell deactivation or activation are determined as fulfilled by O-CU). In case of policy processing assumed is, that O-CU knows at least one Energy Saving Policy (ESP) that may lead to cell disablement / enablement.

At O-DU level the scenario is always containing list of cells to be deactivated or activated. Content is processed by O- DU. Carriers related to cells requested are determined. Knowing translation between cells and carriers, the O-DU requests O-RU to deactivate / activate determined [tr]x-array-carriers accordingly.

* 1. Void
  2. Void

# Annex F (informative):

Policy Example

A policy can be defined for certain optimization use cases, for instance, Network Energy Saving. The attributes defined for a certain policy may contain a statement, target, resources, constraints, and sometimes trigger as well. The attributes can be activated or applied within a particular policy scope, depending on the condition and/or trigger.

Examples of attributes are defined in Table F-1 below.

**Table F-1: Policy attribute examples**

|  |  |
| --- | --- |
| Policy Scope | Cell A |
| Policy Statement | Achieve energy optimization in Cell A |
| Policy Objective | antenna mask = 1 targetEC = X kWh  QoSImpact = No impact/Min/Medium/Max ValidDuration = X minutes/hours |
| Condition/Trigger | * If traffic is below Y % or * Y % reduction in traffic and Energy consumption is > *K* KWh. |

# Annex ZZZ: Void

# Annex (informative): Change History

|  |  |  |
| --- | --- | --- |
| Date | Revision | Description |
| 2024.07.18 | 13.00 | Final version for July 2024 train |
| 2024.08.21 | 13.00.01 | Incorporates this CR:   * ATT-2024.04.16-WG10-CR-0010-MDC\_UC\_Error\_Corrections-v03 |
| 2024.11.22 | 13.00.02 | Incorporates whitespace corrections and these CRs:   * NOK-2024.09.02-WG10-CR-0092-ALD control addition to OAM Arch spec v03 * RMI.AO-2024.08.20-WG10-CR-0010-OAMArch-   Policy\_Management\_Usecase\_v13 |
| 2024.11.25 | 13.00.03 | Incorporates corrections to earlier CR implementations, punctuation corrections, further whitespace corrections, and these CRs:   * ERI-2024.09.30-WG10-CR-0116-OAMArch\_AbbrevCleanup-v01 * ERI-2024.09.30-WG10-CR-0117-OAMArch\_3GPP\_Rel\_18-v01 * ERI-2024.09.30-WG10-CR-0118-OAMArch\_PlantUML-v01 * ERI-2024.10.01-WG10-CR-0119-OAMArch\_OpenFH-v01 * ERI-2024.10.02-WG10-CR-0120-OAMArch\_TRX\_Ctrl\_cleanup-v01 * ERI-2024.10.02-WG10-CR-0121-OAMArch\_ASM\_cleanup-v01 * ERI-2024.10.02-WG10-CR-0122-OAMArch\_UC\_ITU\_T\_M3020-v01 |
| 2024.11.27 | 13.00.04 | Incorporates corrections to earlier CR implementations |
| 2024.11.27 | 14.00 | Final version for November 2024 train |
---

- View in [Reader Mode](https://simewu.com/spec-reader/pages/03-WG10/O-RAN.WG10.TS.OAM-Architecture-R004-v14.00.docx).
- Go back to [Table of Contents](../README.md).
- Download the [Original Document](https://github.com/Simewu/spec-reader/raw/refs/heads/main/documents/O-RAN.WG10.TS.OAM-Architecture-R004-v14.00.docx).
