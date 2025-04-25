## O-RAN.WG6.ORCH-USE-CASES-R004-v12.00.docx

- View in [Reader Mode](https://simewu.com/spec-reader/pages/06-WG6/O-RAN.WG6.ORCH-USE-CASES-R004-v12.00.docx).
- Go back to [Table of Contents](../README.md).
- Download the [Original Document](https://github.com/Simewu/spec-reader/raw/refs/heads/main/documents/O-RAN.WG6.ORCH-USE-CASES-R004-v12.00.docx).

---

![](../assets/images/743932690492.jpg)O-RAN-WG6.ORCH-USE-CASES-R004-

v12.00

###### *Technical Specification*

**O-RAN Working Group 6 Cloudification and Orchestration Use Cases and Requirements for O-RAN Virtualized RAN**

Copyright (C) 2025 by the O-RAN ALLIANCE e.V.

The copying or incorporation into any other work of part or all of the material available in this specification in any form without the prior written permission of O-RAN ALLIANCE e.V. is prohibited, save that you may print or download extracts of the material of this specification for your personal use, or copy the material of this specification for the purpose of sending to individual third parties for their information provided that you acknowledge O-RAN ALLIANCE as the source of the material and that you inform the third party that these conditions apply to them and that they must comply with them.

O-RAN ALLIANCE e.V., Buschkauler Weg 27, 53347 Alfter, Germany

1

# Table of Contents

1. **Contents**

Table of Contents 2

Table of Figures 4

Foreword 6

Modal verbs terminology 6

1. Scope 7
   1. References 8
   2. Definition of Terms, Symbols and Abbreviations 9
      1. Terms 9
      2. Abbreviations 9
2. Objectives 9
   1. Context and Relationship to other WG6 and O-RAN Work 9
   2. Objectives of this Document 10
   3. Relationship to O-RAN OAM Architecture 10
   4. Functional Description of O-RAN Cloud Infrastructure 11
3. Orchestration Use Cases 11
   1. O-Cloud Basic Use Cases 12
      1. O-Cloud Pre-Deployment Processing Use Case 13
      2. O-Cloud Platform Software Installation Use Case 15
      3. O-Cloud Registration and Initialization Use Case 17
      4. O-Cloud Inventory Update Use Case 19
      5. Hardware Infrastructure Scaling of O-Cloud Post Deployment 21
      6. O-Cloud Platform Software Update Use Case 22
      7. Functional Status Query Use Case 24
      8. Functional Status Update Use Case 27
      9. IMS Software Update Use Case 29
      10. DMS Software Update Use Case 33
      11. Query Information Use Case 36
   2. Network Function Basic Use Cases 40
      1. NF Deployment Instantiation 40
      2. NF Deployment Scale Out 41
      3. NF Deployment Scale In 43
      4. Software Upgrade of NF 45
      5. NF Deployment Termination 49
   3. Near-RT RIC/xAPP Use Cases 50
      1. Configure O-Cloud for Near-RT RIC 50
      2. Deploy xAPP in Near-RT RIC 52
   4. Multi-vendor network provisioning in a mixed PNF/VNF environment 55
   5. Reconfiguration of O-RAN Virtual Network Function(s) 55
      1. High Level Description 55
      2. Sequence Description 56
      3. UML sequence diagram 57
   6. Recovery Use Cases 58
      1. Introduction 58
      2. Network Function Deployment Level Healing Use Case 59
      3. O-Cloud Node Level Healing Use Case 61
      4. O-Cloud Node Backup Use Cases 63
   7. Fault Use Cases 70
      1. Alarm Subscription Use Case 70
      2. Alarm Notification Use Case 72
      3. Alarm Query Use Case 77
      4. IMS Alarm Subscription Query Use Case 79
      5. IMS Alarm Subscription Delete Use Case 82
      6. Alarm Synchronization Use Case 86
      7. Alarm Acknowledge/Clear Use Case 88
      8. Log Query 92
      9. Alarm Dictionary Discovery Use Case 99
      10. Logging Configuration Use Case 102
      11. Alarm List Configuration Use Case 105
      12. Alarm Suppression Use Case 108
      13. Alarm Purge Use Case 117
   8. Performance Use Cases 124
      1. Performance Measurement Job Creation Use Case 124
      2. Performance Management Subscription Use Case 126
      3. Performance Measurement Event Notification Reporting Use Case 130
      4. Performance Measurement Streaming Reporting Use Case 134
      5. Performance Measurement File Reporting Use Case 140
      6. Performance Measurement Job Query Use Case 145
      7. Performance Measurement Job Delete Use Case 147
      8. Performance Measurement Job Update Use Case 152
      9. Performance Measurement Job Suspend Use Case 156
      10. Performance Measurement Job Resume Use Case 159
      11. Performance Management Dictionary Discovery IMS Use Case 164
      12. Performance Management Subscription Query (IMS) Use Case 167
      13. Performance Management Subscription Update (IMS) Use Case 171
      14. Performance Management Subscription Delete (IMS) Use Case 175
      15. Performance Management Configuration Use Case 179
   9. VLAN Management Use Cases 182
      1. VLAN Allocation Use Case 182
      2. VLAN Deallocation Use Case 184
   10. Network Slicing Use Cases 186
       1. Network Slice Creation Use Case 186
       2. Network Slice Deletion Use Case 190
   11. Provisioning Use Cases 191
       1. Network Resource Provisioning for Underlay Network Use Case 191
       2. Create O-Cloud Node Cluster Use Cases 193
       3. Delete Kubernetes (K8s) Cluster Use Case 204
       4. Update O-Cloud Node Cluster Use Cases 207
   12. Resource Optimization Use Cases 216
       1. Introduction 216
       2. O-Cloud Drain Node Use Case 216
       3. O-Cloud Cordon and Uncordon Use Case 218
   13. Heartbeat Monitoring Use Cases 223
       1. Heartbeat Subscription Use Case 223
4. Orchestration Requirements 226
   1. General Requirements 226
   2. Orchestration Requirements Relating to O1 228
   3. Orchestration Requirements Relating to O2 228
   4. Requirements Relating to NF Deployment Descriptor 236

Annex A (Informative): Terminology Used in O-Cloud Requirements 237

Annex (Informative): Change History 238

# Table of Figures

Figure 2-1: Relationship of this Document to Scenario Documents and O-RAN Management Documents 10

Figure 2-2: O-RAN Architecture and Management Interfaces 11

Figure 3-1: O-Cloud Pre-Deployment Processing 15

Figure 3-2: Platform Software Installation 17

Figure 3-3: O-Cloud Deployment Processing 19

Figure 3-4: O-Cloud Inventory Update 20

Figure 3-5: Hardware Infrastructure Scaling 22

Figure 3-6: O-Cloud Platform Software Update 24

Figure 3-7: O-Cloud Functional Status Query 27

Figure 3-8: O-Cloud Functional Status Update 29

Figure 3-9: IMS Software Update 32

Figure 3-10: DMS Software Update 36

Figure 3-11: Query Information 39

Figure 3-12: NF Deployment Instantiation 41

Figure 3-13: NF Deployment Scale Out 43

Figure 3-14: NF Deployment Scale In 45

Figure 3-15: SW Upgrade of Network Function 49

Figure 3-16: NF Deployment Termination 50

Figure 3-17: Configure O-Cloud for Near-RT RIC 52

Figure 3-18: Deploy xAPP 55

Figure 3-19: Reconfiguration 57

Figure 3-20: Remote System Reset of legacy xNB by OSS 59

Figure 3-21:NF Deployment level recovery 61

Figure 3-22: O-Cloud Node level recovery 63

Figure 3-23: O-Cloud Node Backup Creation 66

Figure 3-24: Criteria-based O-Cloud Node Backup Creation 68

Figure 3-25: O-Cloud Node Backup Query 69

Figure 3-26: Alarm Subscription 72

Figure 3-27: Alarm Notification 77

Figure 3-28: Alarm Query 79

Figure 3-29: IMS Alarm Subscription 82

Figure 3-30: IMS Alarm Subscription Deletion 85

Figure 3-31: Alarm Synchronization 88

Figure 3-32: Alarm Acknowledge/Clear 92

Figure 3-33: Log Query 99

Figure 3-34: Alarm Dictionary Discovery 102

Figure 3-35: Logging Configuration 105

Figure 3-36: Alarm List Configuration 108

Figure 3-37: Operator/SMO-Initiated Alarm Suppression 115

Figure 3-38: IMS-Initiated Alarm Suppression 117

Figure 3-39: Alarm Purge 124

Figure 3-40: PM Job Creation 126

Figure 3-41: PM Job Query 147

Figure 3-42: PM Job Delete 151

Figure 3-43: PM Job Update 155

Figure 3-44: PM Job Suspend 159

Figure 3-45: PM Job Resume 163

Figure 3-46: PM Dictionary Discovery 167

Figure 3-47: PM Subscription Query 171

Figure 3-48: PM Subscription Update 175

Figure 3-49: PM Subscription Delete 178

Figure 3-50: PM Configuration 182

Figure 3-51: VLAN Allocation 184

Figure 3-52: VLAN Deallocation 185

Figure 3-53: Network Slice Creation 190

Figure 3-54: Network Slice Deletion 191

Figure 3-55: Network Resource Provisioning for Underlay Network 193

Figure 3-56: Create Kubernetes (K8s) Cluster 198

Figure 3-57: Create O-Cloud Node Cluster using O-Cloud Template 204

Figure 3-58: Delete Kubernetes (K8s) Cluster 206

Figure 3-59: Update O-Cloud Node Cluster 211

Figure 3-60: Update O-Cloud Node Cluster using O-Cloud Template 215

Figure 3-61: O-Cloud Node Draining 218

Figure 3-62: Node Cordon and Uncordon 222

Figure 3-63: Heartbeat Subscription 225

## Foreword

This Technical Specification (TS) has been produced by O-RAN Alliance.

## Modal verbs terminology

In the present document "**shall**", "**shall not**", "**should**", "**should not**", "**may**", "**need not**", "**will**", "**will not**", "**can**" and "**cannot**" are to be interpreted as described in clause 3.2 of the O-RAN Drafting Rules (Verbal forms for the expression of provisions).

"**must**" and "**must not**" are **NOT** allowed in O-RAN deliverables except when used in direct citation.

## Scope

The contents of the present document are subject to continuing work within O-RAN and may change following formal O-RAN approval. Should the O-RAN Alliance modify the contents of the present document, it will be re-released by O- RAN with an identifying change of version date and an increase in version number as follows:

Version xx.yy.zz where:

xx the first digit-group is incremented for all changes of substance, i.e., technical enhancements, corrections, updates, etc. (the initial approved document will have xx=01). Always 2 digits with leading zero if needed.

1. the second digit-group is incremented when editorial only changes have been incorporated in the document.

Always 2 digits with leading zero if needed.

1. the third digit-group included only in working versions of the document indicating incremental changes during the editing process. External versions never include the third digit-group. Always 2 digits with leading zero if needed.

The present document specifics cloudification and orchestration use cases and requirements for O-RAN.

### References

References are either specific (identified by date of publication and/or edition number or version number) or non-specific. For specific references, only the cited version applies. For non-specific references, the latest version of the referenced document (including any amendments) applies.

NOTE: While any hyperlinks included in this clause were valid at the time of publication, O-RAN cannot guarantee their long term validity.

- For a non-specific reference, the latest version applies. In the case of a reference to a 3GPP document (including a GSM document), a non-specific reference implicitly refers to the latest version of that document in Release 16.

The following documents contain provisions which, through reference in this text, constitute provisions of this specification.

1. 3GPP TR 21.905: "Vocabulary for 3GPP Specifications".
2. ETSI GS NFV 003 V1.4.1, "Terminology for Main Concepts in NFV"
3. O-RAN-WG1-O-RAN-Architecture-Description, "O-RAN Architecture Description"
4. O-RAN White Paper: "O-RAN: Towards an Open and Smart RAN", October 2018.
5. O-RAN.WG10.OAM-Architecture: "O-RAN Operations and Maintenance Architecture".
6. O-RAN.WG10.O1-Interface: "O-RAN Operations and Maintenance Interface Specification".
7. O-RAN-WG6.CAD: "Cloud Architecture and Deployment Scenarios for O-RAN Virtualized RAN".
8. O-RAN-WG2.UCR, "Use Case and Requirements Specification"
9. O-RAN-WG6.O2-GA&P: "O2 General Aspects and Principles"
10. O-RAN.WG3.RICARCH: "Near-RT RIC Architecture"
11. O-RAN-WG6.AAL-GAnP: "O-RAN O-Cloud Acceleration Abstraction Layer"
12. ETSI GS NFV-SOL 015 V1.2.1 (2020-12): "Specification of Patterns and Conventions for RESTful NFV- MANO APIs"
13. ETSI 3GPP TS 29.501 V16.5.0 (2020-09): "Principles and Guidelines for Services Definition; Stage 3"
14. O-RAN.WG1.Slicing-Architecture: "O-RAN Working Group 1 Slicing Architecture"
15. ITU-T Recommendation X.731, "Information technology - Open Systems Interconnection - Systems management: State management function", January 1992
16. ETSI GS NFV-IFA 013 V4.2.2 (2021-06): " Network Functions Virtualisation (NFV) Release 4; Management and Orchestration; Os-Ma-Nfvo reference point - Interface and Information Model Specification"

[17] O-RAN.WG6.O2IMS-INTERFACE: "O-RAN O2ims Interface Specification"

[18] O-RAN.SFG.O-RAN-Security-Requirements-Specifications: "O-RAN Security Requirements Specification"

[19] ETSI GS NFV-IFA 032 V4.3.1 (2022-06): "Network Functions Virtualisation (NFV) Release 4; Management and Orchestration; Interface and Information Model Specification for Multi-Site Connectivity Services"

[20] 3GPP TS 28.622 "Telecommunication management; Generic Network Resource Model (NRM) Integration Reference Point (IRP); Information Service (IS)"

[21] IETF RFC 5424 "The Syslog Protocol", March 2009

[22] IETF RFC 8632 "A YANG Data Model for Alarm Management" September 2019 ISSN: 2070-1721

### Definition of Terms, Symbols and Abbreviations

#### Terms

For the purposes of the present document, the terms and definitions given in 3GPP TR 21.905 [1] and the following apply. A term defined in the present document takes precedence over the definition of the same term, if any, in 3GPP TR 21.905 [1].

Cloudified NF A RAN Network Function software that is deployed in the O-Cloud via one or more NF Deployments.

NF Deployment A software deployment on O-Cloud resources that realizes all or part of a Cloudified NF. Managed Function Refer to the 3GPP TS28.622 [20].

Managed Element Refer to the 3GPP TS28.622 [20].

#### Abbreviations

For the purposes of this document, the abbreviations given in 3GPP TR 21.905 [1] and the following apply.

An abbreviation defined in the present document takes precedence over the definition of the same abbreviation, if any, in 3GPP TR 21.905 [1].

3GPP Third Generation Partnership Project

5G Fifth-Generation Mobile Communications

CNF Containerized Network Function

DMS O-Cloud Deployment Management Services FOCOM Federated O-Cloud Orchestration & Management IM Information Model

IMS O-Cloud Infrastructure Management Services

LCM Life Cycle Management

NF Network Function

NFO Network Function Orchestration

NFVI Network Function Virtualization Infrastructure

O-CU O-RAN Central Unit as defined by O-RAN ALLIANCE O-CU-CP O-CU Control Plane

O-CU-UP O-CU User Plane

O-DU O-RAN Distributed Unit (uses Lower-level Split) O-RU O-RAN Radio Unit

PM Job Performance Measurement Job

PNF Physical Network Function

RAN Radio Access Network

SMO Service Management and Orchestration Framework VIM Virtual Infrastructure Manager

VNF Virtual Network Function

WG Working Group

## Objectives

### Context and Relationship to other WG6 and O-RAN Work

This document introduces different use cases for O-RAN orchestration of virtualized RAN and the interfaces used for management and orchestration, in particular the O1 interface between the service management and orchestration framework and the RAN managed functions and the O2 interface between the service management and orchestration framework and the O-Cloud Infrastructure Management Services/Deployment Management Services that controls resource assignment for Virtualized Network Functions.

This document relies on WG1 architecture documents for the overall architecture. WG6 focuses on end-to-end orchestration in O-RAN and virtualization/cloudification of O-RAN functions.

The following documents are used as input on high level O-RAN OAM architecture and functions:

* WG1 O-RAN architecture [3]
* WG10 OAM architecture [5]
* WG10 OAM interface specification (O1) [6]

In addition, the WG6 CADS specification [7] is referenced for input on cloud architecture and terminology, and the WG6 O2 General Aspects and Principles [9] is referenced for details of the O2 interface and its usage

The details of implementing orchestration interfaces and models are covered in follow on documents, such as are shown in purple in Figure 2-1.

NOTE: Work on AAL[11] may lead to additional use cases in future.

![](../assets/images/bea29e805f44.jpg)

Figure 2-1: Relationship of this Document to Scenario Documents and O-RAN Management Documents

This document also draws on work from other O-RAN working groups such as WG2 for Non-RT RIC details and WG3 for Near-RT RIC and xAPP details, as well as sources from other industry bodies.

### Objectives of this Document

The O-RAN ALLIANCE seeks to improve RAN flexibility and deployment velocity, while at the same time reducing the capital and operating costs through the adoption of cloud-based architectures.

A key principle is the decoupling of RAN hardware and software for all components including O-CU, O-DU, and O- RU, and the deployment of software components on commodity server architectures supplemented with programmable accelerators where necessary.

Given that the RAN environment will consist of a range of different components that can be realized by either PNFs or VNFs/CNFs it is critical to understand the coordination of RAN components done by the Service Management and Orchestration Framework to deploy and operate RAN services in an O-RAN architecture.

This document defines end-to-end use cases in clause 3 and specifies OAM-related general and interface requirements in clause 4 to support the O-RAN architecture.

### Relationship to O-RAN OAM Architecture

This document follows the high-level O-RAN OAM Architecture defined in O-RAN WG10. The high-level OAM Architecture is given below in Figure 2-2 as taken from [3] but focusing on OAM interfaces O1 and O2 only.

![](../assets/images/33777aae8d0d.jpg)

Figure 2-2: O-RAN Architecture and Management Interfaces

The Use Cases in this document describe the use of the O1 and O2 interfaces for orchestration within an O-RAN.

### Functional Description of O-RAN Cloud Infrastructure

This document uses terminology for O-Cloud components taken from the Cloud Architecture and Deployment Scenarios for O-RAN virtualized RAN Specification [7], and O2 General Aspects and Principles [9], including the O- Cloud Node, IMS and DMS.

## Orchestration Use Cases

These Use Cases focus on the private cloud case where the cloud is managed by the operator. Applicability to the public cloud case is for further study.

The present document provides Use Cases related to Network Function, O-Cloud, SMO and Near-RT RIC. At a high level, the use cases cover similar functionality/scope applicable to O-Cloud and O-Cloud-based Network Functions, such as:

* Instantiation and deployment of O-Cloud and Network Functions
* Updating of O-Cloud and Network Functions
* Scaling of O-Cloud and Network Functions

Instantiation and deployment of O-Cloud in the O-RAN is triggered by the "Service Request" towards SMO and a sequential process involving the use cases described in clauses 3.1.1, 3.1.2, 3.1.3. The instantiation of Network Function is described in clause 3.2.1.

Updating of O-Cloud and Network Function can be performed independently and be triggered by the SMO as described in clauses 3.1.6 and 3.2.4, respectively.

Scaling of Network Function is triggered by the SMO as described in clause 3.2.2 (for the scaling out) and clause 3.2.3 (for the scaling in). Scaling of O-Cloud is described in clause 3.1.5.

The roles and actors described in Table 3-1 are used in the use case descriptions.

Table 3-1: Description of actors and roles used in the use cases.

|  |  |
| --- | --- |
| **Actor/Role** | **Description** |
| RAN Planner | Operator planning area deployment of RAN. |
| Cloud Planner | Operator planning O-Cloud instance. |
| Cloud Installation Project Manager | Operator designing each O-Cloud instance. |
| O-Cloud Vendor | Provider of the O-Cloud software. |
| Network Function Install Project Manager | Operator designing each Network Function instance. |
| Network operator | Operator operating operator's network. |
| Cloud Installer | Operator installing O-Cloud Node |
| Cloud Maintainer | Operator that operates and manages O-Cloud Nodes |
| SMO | See [3]. SMO is further divided into FOCOM, NFO and OAM Functions. |
| IMS | See [9] |
| DMS | See [9] |
| O-Cloud Node(s) | See [7] |
| Near-RT RIC | See [3] |
| xAPP | See [10] |
| Network Function (Application) | Network Function that is instantiated and managed. |
| Network Controller | Entity responsible for managing, controlling and setting up network connectivity. |

NOTE 1: The UML(R) Sequence Diagrams in the use cases follow the template defined in the OAM Architecture [5] Appendix B. An arrow with dashed lines is used to indicate a synchronous return message.

NOTE 2: UML(R) is a registered trademark of the Object Management Group, in the United States and other countries. O-RAN is not affiliated with, endorsed or sponsored by the Object Management Group.

There might be various situations where the IMS software or its data store itself has become corrupt. In this situation, the IMS as a producer entity might not be able to perform its functions over the O2ims interface. This problem applies to all the following use cases. Ways or strategies of how to recover or react to a non-functional IMS will be covered in the Loss of O2ims of Management Link Use Case [NOTE 3: use case to be added in future].

For all the following use cases, there are common messaging framework errors and exceptions that can occur. For example, if a response message is never received because of a network outage, it is expected that eventually the system will time out. These standard code responses will apply to all the following use cases and are not mentioned explicitly as separate exceptions within the use cases.

For all the following use cases, it is possible that the IMS is processing a request while another new request operating on the same objects arrives from the same or another authorized entity. This is a race condition. A race condition can occur either at the management level (SMO), or at the transaction level (O2ims or O2dms Interface). For example, a PM subscription query request is being processed by the IMS and while the IMS is processing that operation, a new PM subscription query request arrives. NOTE 4: This would be resolved in the management implementation (SMO) or in the stage 3 (O2ims or O2dms interface) implementation. Some possible solution implementations are a semaphore flag (managing entity side) that only allows one entity to access the resources at a time. Another possible implementation is a "currency" field that would be a token mechanism that can be used to identify transactions.

### O-Cloud Basic Use Cases

Cloud Platforms are identified in order for the SMO to take advantage of them. In traditional data center clouds these have been manually or externally added to the SMO for homing of NF deployments since the numbers are typically low from hundreds of cloud regions to even several thousand. However, in the case of edge clouds the number of deployments scale into the 10K to 100K range, in which case this process needs to more closely resemble the way RAN elements are "discovered". Even in this latter case, the rationale for edge clouds is for specific performance requirements, therefore not all edge clouds are equivalent. This Use Case describes how the SMO discovers and manages a cloud implementation that meets the O-RAN specifications as described in the Cloud Architecture and Deployment Scenarios for O-RAN virtualized RAN [7]. Such a cloud instance is generally referred to as an O-Cloud which is comprised of O-Cloud Nodes (Compute, Storage, and Network), dedicated resources for the O-Cloud.

This group of Use Cases includes the following:

* Pre-processing where before the O-Cloud is activated the SMO is configured with the identity of the O-Cloud so that registration can be done
* Basic platform software installation by the SMO and IMS
* O-Cloud deployment processing where the O-Cloud registers with SMO and has its identity and software version checked
* Capabilities Exchange where the SMO either queries for O-Cloud capabilities or is notified autonomously that there has been a change in O-Cloud capabilities
* O-Cloud hardware upgrade where a new O-Cloud Node is added
* O-Cloud software update where the platform software version is upgraded or downgraded in the O-Cloud

The end result of the group of use cases is an active O-Cloud registered with SMO and ready for the deployment of Network Functions.

NOTE 1: Where Personnel are shown as part of the Use Case, the roles and terminology used are given for purposes of illustration only.

NOTE 2: Regarding security and authentication of an entity that interacts with the IMS, which typically the FOCOM in the SMO, the topic of security and authentication will be addressed by the O-RAN security focus group (SFG). A common solution which affects all the following use cases will be studied and specified by the SFG. This is currently FFS. When these are better understood, each of the following use cases will be updated to reflect the security & authentication requirements.

#### O-Cloud Pre-Deployment Processing Use Case

##### High Level Description

This Use Case describes the SMO being configured to add an O-Cloud into its inventory prior to the O-Cloud itself being activated and attempting to register with the SMO.

The Use Case assumes that this will be part of a sequence of "Service Requests" to the SMO, one for the deployment of the O-Cloud and one for the Network Function(s) that will run on that O-Cloud instance. In the latter request, information is assumed to be present on the NF Service Requests to identify the O-Cloud instance, as described in a later Use Case.

NOTE: In some cases, there could potentially be a single "Service Request" to SMO containing information about both the O-Cloud and Network Function(s) that will run on that O-Cloud instance, but this is not covered in the Use Case.

##### Sequence Description

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>> Related use** |
| Goal | SMO creates an object in its Inventory and generates Global O-Cloud ID that is provided as input to the O-Cloud genesis and used in the O-Cloud Registration (see 3.1.3 O-Cloud Registration and Initialization Use Case).  . | 3.1.3 |
| Actors and Roles | RAN Planner Cloud Planner  Cloud Installation Project Manager SMO |  |
| Assumptions |  |  |
| Preconditions | 1. SMO is available. 2. The cloud blueprint (see Annex A of the present specification) is available to the Cloud Installation Project Manager, which has been created based on the requirements from the RAN Buildout Plan of Record. |  |
| Begins when | Decision to deploy an O-Cloud to support RAN growth/coverage has been made jointly by the RAN Planner and the Cloud Planner |  |
| Step 1 (M) | Cloud Installation Project Manager issues a "service request" to the SMO to update its Inventory, i.e., indicate that a new O-Cloud is to be inventoried. |  |
| Step 2 (M) | SMO generates Global O-Cloud ID, and creates an inventory record with the Global O-Cloud ID. The Global O-Cloud ID represents a globally unique identifier for the new O-Cloud instance by the SMO and for handling the  registration process. |  |
| Step 3 (M) | SMO confirms update to Cloud Installation Project Manager. |  |
| Ends when | SMO has updated inventory with the Global O-Cloud ID of the planned O-Cloud. |  |
| Exceptions | None identified. |  |
| Post Conditions | SMO has created an inventory record with the Global O-Cloud ID for the planned O-Cloud. |  |
| Traceability | REQ-ORC-GEN1; REQ-ORC-GEN2 |  |

##### UML sequence diagram

![](../assets/images/93dcb3d7afb2.jpg)

Figure 3-1: O-Cloud Pre-Deployment Processing

#### O-Cloud Platform Software Installation Use Case

##### High Level Description

The Use Case describes the deployment of the O-Cloud and installation of O-Cloud Platform Software on an O-Cloud Node. The Cloud Installer begins the installation by installing the hardware for the O-Cloud Nodes and notifying SMO to begin Cloud Build. SMO then loads O-Cloud Platform Software on a first O-Cloud Node in the O-Cloud, which then brings up any additional O-Cloud Nodes in the O-Cloud.

During activation of other O-Cloud Nodes, the O-Cloud Management Plane activates IMS, which then notifies the SMO of its availability. The SMO then sends IMS the required set of O-Cloud Node Roles and Personalities to support. The IMS loads necessary basic software for O-Cloud onto the other O-Cloud Nodes and also configures and activates one or more DMSs.

It is assumed that hardware to deploy O-Cloud Management Software is pre-configured and ready. Network connectivity between O-Cloud network gateways(s) and SMO is assumed to be ready, as per the "O-Cloud Pre- Deployment Processing Use Case" described in clause 3.1.1.

For O-Cloud resources managed by a Hardware Accelerator Manager (HAM), which is defined in O-RAN WG6.AAL- GAnP [11], Clause 3.1, the IMS informs the HAM what SW artifacts to be installed and activated for HWA resources managed by that HAM. The HAM is responsible for obtaining, installing and activating the SW artifacts. For further information, see O-RAN WG6.AAL-GAnP [11], Clause 4.2.1.

##### Sequence Description

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>> Related use** |
| Goal | The O-Cloud is initialized and communicating with the SMO. |  |
| Actors and Roles | Cloud Installation Project Manager: Cloud Installer:  SMO: FOCOM IMS  DMS  O-Cloud Node Network Controller |  |
| Assumptions | 1. Through some means (e.g., manual installation), an application will be loaded to the O-Cloud, that application at minimum having the following abilities:    1. Having knowledge of its own O-Cloud ID, IP address, the IP address endpoint or url of the SMO and any necessary security keys or passwords for communication using O2.    2. Being able to communicate at least the IMS Address endpoint and Cloud Id of this O-Cloud instance.    3. Being able to generate a registration event to the SMO including its Cloud ID.    4. Being able to process requests to load SW onto an O-Cloud Node in the O-Cloud |  |
| Preconditions | 1. SMO is available 2. Network connectivity exists between the O-Cloud and SMO 3. SMO has basic software for the O-Cloud available for download 4. SMO holds inventory that includes the O-Cloud ID for the O-Cloud. |  |
| Begins when | Work order triggers O-Cloud installation processing. |  |
| Step 1, 2 (M) | Cloud Installation Project Manager generates a work order to the Cloud Installer for the new O-Cloud;  Cloud Installer installs the new O-Cloud Nodes, sets up connectivity of the O- Cloud Nodes to the O-Cloud network gateway(s) (e.g., with Network Controller) and responds to Cloud Installation Project Manager |  |
| Step 3 (M) | Cloud Installer notifies SMO of the new O-Cloud Build  NOTE 1: Cloud Installer shall provide SMO with information to connect with the new O-Cloud Build, including the target O-Cloud Node in the O-Cloud and identity of the basic software for O-Cloud to be loaded on the O-Cloud |  |
| Step 4 (M) | SMO loads basic software for O-Cloud on the first O-Cloud Node;  First O-Cloud Node then brings up additional O-Cloud Nodes in the O-Cloud including IMS (NOTE 2: details of how the IMS and other O-Cloud Nodes are brought up are specific to the O-Cloud implementation) |  |
| Step 5 (O) | If network connectivity has not been established between O-Cloud Nodes and with transport network via O-Cloud Gateway, IMS performs the network resource provisioning for the Underlay Network (infrastructure-level network) interconnecting the O-Cloud Node(s), which means the configuration of O- Cloud Node(s) and if necessary, configuration of the O-Cloud Network Fabric for L2 level connectivity and O-Cloud Gateway for L3 level connectivity.  NOTE 3: Network resource provisioning for the Underlay Network can be also performed independently as described in clause 3.11.1. |  |
| Step 6 (M) | IMS loads basic O-Cloud software onto the other O-Cloud Nodes, activates DMS and creates SW inventory. |  |
| Ends when | O-Cloud has IMS and DMS activated and has created SW inventory. |  |
| Exceptions | None identified |  |
| Post Conditions | O-Cloud software has been installed. In addition, network resources for the Underlay Network have been provisioned and network connectivity has been established between O-Cloud Nodes and with transport network via O-Cloud Gateway.  O-Cloud ready to register with SMO, with information to connect to SMO and activated IMS with SW inventory and activated DMS(s). |  |
| Traceability | REQ-ORC-GEN3; REQ-ORC-GEN4; REQ-ORC-GEN5; REQ-ORC-O2-1; REQ-ORC-O2-2; REQ-ORC-O2-45; REQ-ORC-O2-46 |  |

##### UML sequence diagram

![](../assets/images/c44f7d298732.jpg)

Figure 3-2: Platform Software Installation

#### O-Cloud Registration and Initialization Use Case

##### High Level Description

This Use Case describes the sequence for registration and initialization of the newly deployed O-Cloud. The SMO queries the O-Cloud for its SW inventory, checks to see if this requires any updates, configures the O-Cloud and queries the O-Cloud for available DMS. Following this sequence, the O-Cloud is available for NF deployments to be instantiated.

##### Sequence Description

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>> Related use** |
| Goal | O-Cloud is initialized and registered with the SMO, ready for NF deployments to be instantiated. |  |
| Actors and Roles | SMO: FOCOM IMS  DMS  O-Cloud Node |  |
| Assumptions | None |  |
| Preconditions | 1. SMO and O-Cloud IMS are available 2. Network connectivity exists between O-Cloud and SMO and between all nodes of O-Cloud. All O-cloud nodes are preconfigured for the O- Cloud. 3. SMO has been configured with O-Cloud ID in its inventory and is ready for O-Cloud registration |  |
| Begins when | IMS and DMS are ready to register O-Cloud to accept new NF deployments |  |
| Step 1 (M) | IMS initiates the O2 O-Cloud Registration Process using O2ims services (for details see [9]) |  |
| Step 2-3 (M) | SMO queries IMS for current SW inventory, and IMS responds with SW inventory data. |  |
| Step 4-5 (ALT) | SMO checks SW inventory.   1. If SW inventory does not match required inventory:    1. SMO executes software update (see clauses 3.1.6, 3.1.9 and 3.1.10)    2. IMS installs new software, activates and notifies SMO it is available    3. return to Step 2 2. If SW inventory matches the required inventory, continue to next Step |  |
| Step 6 (M) | SMO configures O-Cloud using O2 |  |
| Step 7-9 (M) | SMO queries O-Cloud to discover and Inventory new DMS using O2 Infrastructure Inventory Services [9]  O-Cloud returns list of new O-Cloud Deployment Management Services end points.  NOTE: O-Cloud Inventory Services may provide additional information such as a Cloud Inventory reference. |  |
| Step 10-12 (M) | For each DMS, SMO retrieves DMS capabilities using O-Cloud Inventory Update (see clause 3.1.4) and registers DMS in its inventory. |  |
| Ends when | O-Cloud has registered with SMO and SMO has checked software version, configuration, and available DMS |  |
| Exceptions | O-Cloud ID not found in inventory |  |
| Post Conditions | O-Cloud ready to support new NF deployments |  |
| Traceability | REQ-ORC-GEN6; REQ-ORC-GEN7; REQ-ORC-GEN8; REQ-ORC-GEN9; REQ-ORC-O2-3; REQ-ORC-O2-4; REQ-ORC-O2-5; REQ-ORC-O2-6 |  |

##### UML sequence diagram

![](../assets/images/a01991603337.jpg)

Figure 3-3: O-Cloud Deployment Processing

#### O-Cloud Inventory Update Use Case

##### High Level Description

This Use Case describes the procedure for the SMO and O-Cloud to update inventory information about its type and current capabilities using O2 Infrastructure Inventory Services [9], including resource build configurations (aka "flavors"), capacity, utilization and availability. This procedure is invoked initially at deployment of the O-Cloud and can be invoked at later times to identify changes in the capabilities of the O-Cloud. Two patterns are possible, one using query/response from the SMO in order to get current inventory, e.g., before instantiating a new NF deployment and one triggered by autonomous indications from the O-Cloud when there has been a change in inventory status.

##### Sequence Description

|  |  |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| **Use Case Stage** | | **Evolution / Specification** | | | | | | **<<Uses>> Related use** |
| Goal | | O-Cloud is initialized and communicating deployments to be instantiated. | with | the | SMO, | ready | for |  |
| Actors Roles | and | SMO: FOCOM IMS | | | | | |  |
| Assumptions | | Notification Event has been configured into the IMS by the SMO | | | | | |  |
| Preconditions | | 1. SMO is available 2. O-Cloud has been installed and activated 3. SMO has registered O-Cloud and software version in its inventory | | | | | |  |
| Begins when | | 1. SMO is deploying or scaling up a new O-cloud or 2. SMO determines that it needs to query O-cloud to determine if O- Cloud can support a new NF deployment or 3. Capabilities change has occurred in the O-cloud and SMO has previously subscribed to notification of capability changes. | | | | | |  |
| Step 1,2 (ALT) | | In the Query/Response pattern, the SMO uses O2 Inventory Services to update its inventory record for the O-Cloud IMS/DMS capabilities.  IMS responds with what it supports | | | | | |  |
| Step 3 (ALT) | | In the Event Notification pattern, using O2 O-Cloud Monitoring Services [9] IMS sends notification event to the SMO due to a change in inventory | | | | | |  |
| Ends when | | SMO receives up-to-date capabilities information from IMS and updates the O-Cloud inventory record | | | | | |  |
| Exceptions | | None identified | | | | | |  |
| Post Conditions | | SMO holds updated inventory | | | | | |  |
| Traceability | | REQ-ORC-GEN10; REQ-ORC-GEN11; REQ-ORC-GEN12; REQ-ORC- GEN13; REQ-ORC-O2-7; REQ-ORC-O2-8 | | | | | |  |

##### UML sequence diagram

![](../assets/images/67521118fe36.jpg)

Figure 3-4: O-Cloud Inventory Update

#### Hardware Infrastructure Scaling of O-Cloud Post Deployment

##### High Level Description

After the initial deployment of an O-Cloud, it may be necessary to scale up resources. In this use case, we examine how the SMO will discover and manage a new O-Cloud Node that has been cabled and powered up to be part of an existing O-Cloud.

##### Sequence Description

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>> Related use** |
| Goal | Additional O-Cloud Nodes are powered on for an existing O-Cloud; O-Cloud initializes new O-Cloud Node and communicates the presence of additional resources to SMO. |  |
| Actors and Roles | Cloud Planner Cloud Installer SMO/ FOCOM IMS  O-Cloud Node |  |
| Assumptions | 1. Notification Event has been configured into the IMS by the SMO 2. The additional O-Cloud Node is cabled to be part of the existing O-Cloud at the site |  |
| Preconditions | 1. SMO is available 2. O-Cloud is operational and known to SMO 3. Network connectivity exists between the O-Cloud and the SMO 4. Network connectivity exists between the new O-Cloud Node and IMS 5. Cloud Installer knows (from Cloud Planner) the need to add O-Cloud Node(s) to the existing O-Cloud 6. IMS has been configured with the O-Cloud blueprint for the new O-Cloud Node |  |
| Begins when | Decision to add additional resources to an existing O-Cloud has been made and new O-Cloud Node is installed and powered on. |  |
| Step 1 (M) | New O-Cloud Node interacts with IMS to get basic software for O-Cloud load and configuration |  |
| Step 2 (M) | SMO executes the O-Cloud Inventory Update procedure (clause 3.1.4), in this use case using the Event Notification Pattern, IMS informs SMO of change in inventory due to the new O-Cloud Node and SMO updates its inventory record  with the information in the notification. |  |
| Ends when | O-Cloud has added new O-Cloud Node |  |
| Exceptions | None identified |  |
| Post Conditions | Additional O-Cloud Node is available in O-Cloud. SMO holds updated inventory. |  |
| Traceability | REQ-ORC-GEN14; REQ-ORC-GEN15; REQ-ORC-O2-8 |  |

##### UML sequence diagram

![](../assets/images/e5f0031c7950.jpg)

Figure 3-5: Hardware Infrastructure Scaling

#### O-Cloud Platform Software Update Use Case

##### High Level Description

Edge clouds deployments can range in the 10K to 100K range across an operator network. Rolling O-Cloud software updates (upgrades and downgrades) need to be performed without service disruption for both VM and container-based workloads. Across a region, it may be necessary to update all edge O-Clouds in a serial fashion in order to minimize potential disruptions or in a parallel fashion where a set amount of edge O-Clouds in a region are simultaneously updated. Compute and storage nodes of individual edge O-Clouds can also be updated in a serial or parallel hitless fashion. Within an individual O-Cloud, the IMS migrates Network Function deployments from the affected O-Cloud Nodes before the software update in order to avoid service disruption (in this use case, it is assumed that IMS does this autonomously). From an SMO perspective, offloading the update strategy of an edge O-Cloud to a regional and local controller substantially reduces the update complexity.

Fault handling of an O-Cloud update is critical. Individual nodes can fail during the update process and may need to be replaced. Rolling back of the update prior to a successful completion shall also be supported.

In this use case, we examine how the SMO will update a single O-Cloud. It is assumed that the software update does not affect the IMS itself, and that the IMS is capable of performing the software update and migrating NF deployments from the affected O-Cloud Nodes without affecting active services.

For O-Cloud resources managed by a Hardware Accelerator Manager (HAM), which is defined in O-RAN WG6.AAL- GAnP [11], Clause 3.1, the IMS informs the HAM what SW artifacts to be updated for HWA resources managed by that HAM. The HAM is responsible for obtaining and updating the SW artifacts. For further information, see O-RAN WG6.AAL-GAnP [11], Clause 4.2.1.

##### Sequence Description

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>> Related use** |
| Goal | Update (upgrade or downgrade) the platform software of an existing O-Cloud |  |
| Actors and Roles | Cloud Maintainer  SMO: FOCOM/OAM Functions IMS  O-Cloud Node |  |
| Assumptions | Software update to O-Cloud is available  IMS supports software update, including software update rollback mechanism, and NF deployment migration |  |
| Preconditions | 1. SMO is available 2. O-Cloud is operational and known to SMO 3. Affected O-Cloud Nodes have no NF deployments running or NF deployments can be migrated to other O-Cloud Nodes. 4. O-Cloud Node spare resources are available at the O-Cloud in order to support NF deployment migration during the update process. |  |
| Begins when | Decision to update the platform software is made. |  |
| Step 1 (M) | Cloud Maintainer requests that SMO update platform software on an existing O-Cloud instance. Cloud Maintainer can specify the version of software to be  upgraded or downgraded. |  |
| Step 2,3 (M) | SMO triggers software download and validation procedure at the O-Cloud using O2 Software Management Services |  |
| Step 4-6 (M) | IMS gets software package of the requested version from SMO and validates internally;  IMS notifies SMO that software download is complete |  |
| Step 7-8 (M) | SMO requests pre-check procedure be done by IMS to determine if software update is acceptable or not acceptable;  IMS responds with pre-check response |  |
| Step 9-10 (M) | If the pre-check indicates update is acceptable:   1. SMO directs IMS to activate the software update; 2. IMS determines the update process (software parts to update, points of control for rolling back, etc.) before starting the software update; 3. IMS migrates NF deployments from affected O-Cloud Nodes - note original requirements for these NF deployments shall continue to be met; 4. IMS updates software image (e.g., hypervisor) on the affected O-Cloud Nodes; 5. IMS checks the request from SMO; if restart is required, IMS performs restart.   If the pre-check indicates update is not acceptable, stop update procedure and SMO returns failure response to O-Cloud operator. |  |
| Step 11-13 (ALT) | IMS determines that O-Cloud Node has updated software and is in running state;  IMS updates its SW inventory. IMS notifies SMO that O-Cloud software has been updated and SMO updates its inventory. |  |
| Step 14-15 (ALT) | In case of software update failure, IMS rolls back to the original version (the version which was running before initiating the software update).  IMS notifies SMO that IMS failed in O-Cloud software update. |  |
| Step 16 (M) | The O-Cloud Software Update response is returned to O-Cloud operator by SMO. |  |
| Ends when | SUCCESS: O-Cloud has updated software successfully.  FAILURE: The O-Cloud software has been rolled back to the original version. |  |
| Exceptions | Software update is not acceptable, in which case update does not proceed. The O-Cloud software has been rolled back to the original version. |  |
| Post Conditions | SUCCESS: (1) SMO holds updated inventory   1. O-Cloud running with updated O-Cloud software 2. IMS holds updated SW inventory   FAILURE: The O-Cloud software has been rolled back to the original version. |  |
| Traceability | REQ-ORC-GEN16; REQ-ORC-GEN17; REQ-ORC-O2-9 |  |

##### UML sequence diagram

![](../assets/images/c7f72755240e.jpg)

Figure 3-6: O-Cloud Platform Software Update

#### Functional Status Query Use Case

##### High Level Description

The purpose of the functional status query use case is to allow for the request of state and status information from the O-Cloud. Standardized state and status information can be found in ITU-T X.731 (see reference [15]). While X.731 concepts originate in a wireless RAN context, they are useful and applicable to the management and reporting of O- Cloud resources.

NOTE 1: For an operator to indicate something is in maintenance, the Administrative State Attribute (from X.731) values of "*locked*" and "*shutting down*" could be used.

NOTE 2: For an operator to indicate something is undergoing test, the Availability Status attribute (X.731) "*in test*" and the Control Status Attribute (X.731) "*subject to test*" and "*reserved for test*" could be used.

For example, an operator wants to see that things are "healthy" and operating with no faults. They could issue a functional status query on the O-Cloud; and the query would return an operational state of "*enabled*" with no alarm status of "*alarm outstanding*" for all resources.

##### Sequence Description

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>> Related use** |
| Goal | The goal of this use case is to inform an operator, SMO user, or entity of the functional status of the O-Cloud Resources.  This allows a user to query states and their attending status. The supported states of the O-Cloud Resources are: Operational, Administrative, and Usage. Each of the states have status attributes associated with them: alarm status, procedural status, availability status, control status, standby status and unknown status. The full description is defined in ITU-T X.731 TMN reference [15].  Some logical resources: the O-Cloud in aggregate, and O-Cloud resource pools, which are a collection of resources may or may not have a status.  The three status indicators above give a sense of the current performance and current fault situation for the O-Cloud resource.  Status can be requested by the SMO to the O-Cloud IMS. Furthermore, the API can be used by any entity.  The Status query also has query criteria that is evaluated when resolving the query request. |  |
| Actors and Roles | O-Cloud Operator - The O-Cloud operator is a user that is interested in getting functional status query results.  SMO (FOCOM) - The FOCOM within the SMO is used in this use case to represent any consumer of the status query service.  IMS - The IMS within the O-Cloud is used to represent any provider of the functional status query service. |  |
| Assumptions | A requesting entity does not need a subscription of any kind to query for Status. |  |
| Preconditions | The O-Cloud is operational.  The FOCOM (SMO) has connectivity to IMS.  Security authorization, and privilege access has been established between the FOCOM (SMO) and IMS. |  |
| Begins when | This use case begins when either of the following two situations happens:   1. The O-Cloud Operator initiates a functional status query for an O- Cloud resource. 2. The SMO initiates a functional status query   NOTE 1: while not depicted in the flow, any other entity with the proper credentials can initiate a functional status query of the O-Cloud resource. |  |
| Step 1.1 (ALT) | FUNCTIONAL STATUS QUERY INITIATED FROM OPERATOR - A status  query is initiated from the Operator to the FOCOM (SMO) with functional status  query criteria that specifies what type of O-Cloud resource states and state values the operator is interested in. |  |
| Step 1.2 (ALT) | FUNCTIONAL STATUS QUERY INITIATED FROM SMO - A status query may  also be initiated from the FOCOM (SMO) directly with functional status query  criteria that specifies what type of O-Cloud resource states and state values to retrieve from the IMS. |  |
| Step 2 (M) | FUNCTIONAL STATUS QUERY REQUEST FROM FOCOM TO IMS - A status  query is processed by the FOCOM (SMO) towards the IMS in the O-Cloud with the functional status query criteria. |  |
| Step 3 (ALT) | SUCCESSFUL STATUS RESPONSE - The response is returned for the functional status query with state status content matching the status query criteria.  NOTE 2: A functional status query on the O-Cloud resource with no status criteria will return a successful status for the full-service object. |  |

|  |  |  |
| --- | --- | --- |
| Step 4 (ALT) | STATUS OBJECT NOT FOUND - This is an alt step. This is an exception case for the Functional Status Query basic case. In this situation, the service object to be queried was not found. A "status not found" response is sent to the subscriber. For example, a status query was performed on a non-existent O-  Cloud resource. |  |
| Step 5 (ALT) | STATUS NO CONTENT - This is an alt step. This is an exception case for the Functional Status Query basic case. In this situation, the evaluation of the query parameters returned no content (an empty set). A "no content" response is sent to the subscriber. For example, if the given criteria [(only operational state = disabled) and (only operational state= operational)] would never return any  result. |  |
| Step 6 (ALT) | STATUS OTHER QUERY FAILURE - This is an alt step. This exception case occurs when the Functional Status Query encounters a problem that is not defined as part of this scenario. |  |
| Step 7 (O) | OPERATOR FUNCTIONAL STATUS QUERY RESPONSE - This is an optional  step. When the situation requires that a response to the operator is needed, the Functional Status Query response is returned to the requester with the status query information matching the criteria given in the request. |  |
| Ends when | This scenario ends at any of the ALT cases, or with a successful Functional Status Query response. |  |
| Exceptions | This use case can encounter three basic alternate cases.  OBJECT NOT FOUND - The first a Functional Status query is attempted on a non-existent O-Cloud resource.  NO CONTENT - The second alternate case is a "No Content" case where the Query parameters return an empty set.  OTHER QUERY FAILURE - A problem occurs that is not defined as part of this use case. |  |
| Post-conditions | SUCCESS: Functional Status information is returned successfully matching the criteria in the functional status query request.  FAILURE: An exception notification has been issued. |  |
| Traceability | REQ-ORC-O2-19, REQ-ORC-O2-20 |  |

##### UML Sequence Diagram

![](../assets/images/b279f101d8d7.jpg)

Figure 3-7: O-Cloud Functional Status Query

#### Functional Status Update Use Case

##### High Level Description

The purpose of the functional status update use case is to update the state and status of the O-Cloud Resources.

##### Sequence Description

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>> Related use** |
| Goal | The goal of this use case is to allow SMO to request to update the functional status of the O-Cloud Resources.  This allows a user to update the state and status information of the O-Cloud Resources.  NOTE 1: Some logical resources: the O-Cloud in aggregate, and O-Cloud Resource pools, which are a collection of resources may or may not have a status.  NOTE 2: The state indicators give a sense of the current performance and current fault situation for the O-Cloud Resource.  Status update can be requested by the SMO (FOCOM) to the O-Cloud IMS. Furthermore, the API can be used by any entity. |  |

|  |  |  |
| --- | --- | --- |
| Actors and Roles | O-Cloud Operator - A Cloud Service Provider (CSP) or entity using the SMO.  FOCOM/SMO - The FOCOM within the SMO is used in this use case to represent the initiator of the Functional Status Update request.  IMS - The IMS in the O-Cloud responds to the Functional Status Update request.  NOTE 3: It is assumed in the use case flow that managed objects refer to underlying O-Cloud Resources, so the interactions are shown towards the IMS. The use case could be revisited in future versions of the present document once additional analysis on the impacts of functional status update is done on various  types of managed objects, e.g., objects managed by the DMS. |  |
| Assumptions |  |  |
| Preconditions | O-CLOUD OPERATIONAL - The O-Cloud is operational. CONNECTIVITY - The SMO (FOCOM) has connectivity to IMS.  SECURITY - Security authorization, and privilege access has been established between the SMO (FOCOM) and IMS. |  |
| Begins when | This use case begins when either of the following two situations happens:   1. The O-Cloud Operator initiates a functional status update for an O- Cloud Resource. 2. The SMO initiates a functional status update.   NOTE 4: while not depicted in the flow, any other entity with the proper credentials can initiate a functional status update of the O-Cloud Resource. |  |
| Step 1.1 (ALT) | FUNCTIONAL STATUS UPDATE INITIATED FROM OPERATOR - A status  update is initiated from the Operator to the SMO (FOCOM). |  |
| Step 1.2 (ALT) | FUNCTIONAL STATUS UPDATE INITIATED FROM SMO - A status update is  initiated from the SMO (FOCOM) directly. |  |
| Step 2 (M) | FUNCTIONAL STATUS UPDATE REQUEST FROM FOCOM TO IMS - A  status update request is sent by the SMO (FOCOM) to the IMS. IMS updates the status of O-Cloud Resources. |  |
| Step 3 (ALT) | SUCCESSFUL STATUS RESPONSE - The response is returned to the SMO (FOCOM) for the functional status update. |  |
| Step 4 (ALT) | STATUS OBJECT NOT FOUND - This is an alt step. This is an exception case for the Functional Status Update basic case. In this situation, the managed object to be updated was not found. An "object not found" response is sent to the SMO (FOCOM). For example, a status update was requested to be  performed on a non-existent O-Cloud Resource. |  |
| Step 5 (ALT) | STATUS OTHER UPDATE FAILURE - This is an alt step. This exception case occurs when the Functional Status Update encounters a problem that is not defined as part of this scenario. An "other update failure" response is sent to the  SMO (FOCOM). |  |
| Step 6 (O) | OPERATOR FUNCTIONAL STATUS UPDATE RESPONSE - This is an  optional step. When the situation requires that a response to the O-Cloud Operator is needed, the Functional Status Update response is returned to the requester by the SMO (FOCOM). |  |
| Ends when | This scenario ends at any of the ALT cases, or with a successful Functional Status Update response. |  |
| Exceptions | This use case can encounter two basic exception cases.  OBJECT NOT FOUND - The first a functional status update is attempted on a non-existent O-Cloud Resource.  OTHER UPDATE FAILURE - A problem occurs that is not defined as part of this use case. |  |
| Post-conditions | SUCCESS: Functional Status is updated successfully. FAILURE: An exception notification has been issued. |  |
| Traceability | REQ-ORC-O2-50, REQ-ORC-O2-51 |  |

##### UML Sequence Diagram

![](../assets/images/72fe6b907d8e.jpg)

Figure 3-8: O-Cloud Functional Status Update

#### IMS Software Update Use Case

##### High Level Description

This use case focuses on the update of IMS software. For the O-Cloud Platform Software update, please see 3.1.6.

##### Sequence Description

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **>>Uses<<**  **Related use** |
| Goal | Update the O-Cloud IMS software. |  |
| Actors and Roles | O-Cloud Operator  SMO: FOCOM Functions IMS |  |
| Assumptions | Software updates to O-Cloud IMS are available.  IMS supports software update. |  |
| Preconditions | 1. SMO is available 2. O-Cloud is operational and known to SMO 3. Required IMS software image(s) are available in SMO (details on how IMS obtains the image(s) are FFS) |  |

|  |  |  |
| --- | --- | --- |
|  | 4) The IMS is healthy |  |
| Begins when | Decision to update the O-Cloud IMS software is made. |  |
| Step 1 (M) | O-Cloud Operator requests that SMO update O-Cloud IMS software version. |  |
| Step 2-3 (M) | SMO (FOCOM) queries IMS for current SW inventory, and IMS responds with SW inventory data. |  |
| Step 4 (OPT) | If SW inventory does not match required inventory:  - SMO (FOCOM) triggers software download and validation procedure at the O-Cloud. |  |
| Step 5 (M) | The IMS triggers the download of the requested software version image(s)  NOTE: IMS gets requested software package from the SMO (either using push or pull mechanism). |  |
| Step 6.1(ALT) | IMS notifies SMO (FOCOM) that valid software is now available |  |
| Step 6.2 (ALT) | **ALT EXCEPTION: Requested IMS software version could not be downloaded**  IMS notifies SMO (FOCOM) that requested software could not be downloaded |  |
| Step 6.3 (ALT) | SMO (FOCOM) notifies the O-Cloud Operator that the IMS Software Update was unsuccessful |  |
| Step 7 (M) | SMO (FOCOM) requests pre-check procedure be done by IMS to determine if requested software update is acceptable or not. |  |
| Step 8 (M) | The IMS performs the pre-check on requested software version |  |
| Step 9.1 (ALT) | IMS responds to indicate that requested update is acceptable. |  |
| Step 9.2 (ALT) | **ALT EXCEPTION: Requested IMS software version is not acceptable**  IMS notifies SMO (FOCOM) that requested IMS software version is not acceptable |  |
| Step 9.3 (ALT) | SMO (FOCOM) notifies the O-Cloud Operator that the requested IMS Software Update was unsuccessful |  |
| Step 10 (M) | If the pre-check indicates update is acceptable SMO (FOCOM) directs IMS to activate the software update. |  |
| Step 11 (M) | The IMS:   * Ensures its specific update conditions are met * Performs the update * Performs its specific testing procedure(s) |  |
| Step 12.1 (ALT) | IMS updates the O-Cloud Software Inventory |  |
| Step 12.2 (ALT) | IMS notifies SMO (FOCOM) that the Software Update procedure was performed successfully |  |
| Step 12.3 (ALT) | **ALT EXCEPTION: Activation of requested software failed**  During the Update procedure, IMS encounters some failure and rolls back any update(s) made.  IMS notifies SMO (FOCOM) that the IMS Software Update procedure was unsuccessful |  |

|  |  |  |
| --- | --- | --- |
| Step 13 (M) | SMO (FOCOM) sends O-Cloud Software Update response |  |
| Ends when | IMS software update has been performed successfully or when one of the Exception cases have been encountered |  |
| Exceptions | **Requested IMS software version could not be downloaded** - This exception is encountered when the requested software could not be downloaded by IMS  **Requested IMS software version is not acceptable** - This exception is encountered when the IMS determines that the downloaded software version is not acceptable  **Activation of requested software failed** - This exception is encountered when the IMS encounters an error during the Update procedure |  |
| Post Conditions | Update is successful:   * O-Cloud running with the requested IMS software version. * IMS holds updated SW inventory. * SMO holds updated inventory.   An Exception occurred:   * O-Cloud is running with the same IMS software version as at onset of the Use Case |  |
| Traceability | [REQ-ORC-O2-75], [REQ-ORC-O2-76] |  |

##### UML Sequence Diagram

![](../assets/images/db84f53fa633.png)

Figure 3-9: IMS Software Update

#### DMS Software Update Use Case

##### High Level Description

This use case focuses on the update (upgrade/downgrade) of a DMS software within an O-Cloud. For the O-Cloud platform upgrade (e.g., Kubernetes), please see 3.1.6.

##### Sequence Description

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **>>Uses<<**  **Related use** |
| Goal | Software Update (upgrade/downgrade) of a DMS within an O-Cloud. |  |
| Actors and Roles | O-Cloud Operator  SMO: FOCOM Functions IMS  A DMS within the O-Cloud |  |
| Assumptions | IMS supports update (upgrade/downgrade) of a DMS software within the O-Cloud |  |
| Preconditions | 1. SMO is available 2. O-Cloud is operational and known to SMO 3. Required DMS software is available 4. The IMS is healthy |  |
| Begins when | Decision to update the software of a DMS within an O-Cloud is made. |  |
| Step 1 (M) | O-Cloud Operator requests that SMO updates the software version of a DMS within an O-Cloud. |  |
| Step 2-3 (M) | SMO (FOCOM) queries IMS for current SW inventory, and IMS responds with SW inventory data. |  |
| Step 4 (OPT) | If SW inventory does not match required inventory:  SMO (FOCOM) provides the software version information to the IMS. |  |
| Step 5 (M) | When the SMO (FOCOM) has not provided the actual software image(s), the IMS obtains the requested DMS software version image(s). |  |
| Step 6.1(ALT) | IMS notifies SMO (FOCOM) that requested software is now available |  |
| Step 6.2 (ALT) | **ALT EXCEPTION: Requested DMS software version could not be obtained**  IMS notifies SMO (FOCOM) that requested DMS software could not be obtained |  |
| Step 6.3 (ALT) | SMO (FOCOM) notifies the O-Cloud Operator that the DMS Software Update was unsuccessful |  |
| Step 7 (M) | SMO (FOCOM) requests pre-check procedure be done by IMS to determine if requested DMS software update is acceptable or not. |  |
| Step 8 (M) | The IMS performs the pre-check on requested DMS software version |  |
| Step 9.1 (ALT) | IMS responds to indicate that requested DMS update is acceptable. |  |

|  |  |  |
| --- | --- | --- |
| Step 9.2 (ALT) | **ALT EXCEPTION: Requested DMS software version is not acceptable**  IMS notifies SMO (FOCOM) that requested DMS software version is not acceptable |  |
| Step 9.3 (ALT) | SMO (FOCOM) notifies the O-Cloud Operator that the requested DMS Software Update was unsuccessful |  |
| Step 10 (M) | If the pre-check indicates update is acceptable, SMO (FOCOM) directs IMS to install the new software. |  |
| Step 11 (M) | The IMS allocates needed resources (if necessary) and installs the requested DMS software  The IMS:   * Marks the DMS as modified * Performs its specific testing procedure(s)   The updated DMS performs basic testing (e.g., pre-flight checks) |  |
| Step 12.1(ALT) | IMS updates the O-Cloud SW inventory |  |
| Step 12.2 (O) | IMS sends Inventory Change Notification if SMO (FOCOM) has subscribed |  |
| Step 12.3(ALT) | IMS notifies SMO (FOCOM) that the DMS Software Update procedure was performed successfully |  |
| Step 12.4 (ALT) | **ALT EXCEPTION: Activation of requested software failed**  During the Update procedure, IMS encounters some failure and rolls back any update(s) made.  IMS notifies SMO (FOCOM) that the DMS Software Update procedure was unsuccessful |  |
| Step 13 (M) | SMO (FOCOM) sends O-Cloud Software Update response |  |
| Ends when | DMS software update has been performed successfully or when one of the Exception cases have been encountered |  |
| Exceptions | **Requested DMS software version could not be obtained** - This exception is encountered when the requested DMS software could not be obtained by IMS  **Requested DMS software version is not acceptable** - This exception is encountered when the IMS determines that the DMS software version is not acceptable  **Activation of requested software failed** - This exception is encountered when the IMS encounters an error during the DMS Update procedure |  |
| Post Conditions | Update is successful:   * O-Cloud is running with the updated DMS active with the requested software version. * IMS holds updated SW inventory. * SMO holds updated inventory.   An Exception occurred:  O-Cloud is running with the same DMS software version as at onset of the Use Case |  |

|  |  |  |
| --- | --- | --- |
| Traceability | [REQ-ORC-O2-79], [REQ-ORC-O2-80] |  |

##### UML Sequence Diagram

![](../assets/images/cf7c161c0893.png)

Figure 3-10: DMS Software Update

#### Query Information Use Case

##### High Level Description

This is an O-Cloud basic use case that governs the behavior and flow for getting readable attributes of objects in the O2 Information Model by a qualified entity. The entity would usually be the SMO or O-Cloud Operator; however, it could also be another authorized user/technician, or authorized management function. The Query Information Use Case enables an authorized consumer to query and retrieve various information related to the O-Cloud infrastructure and its resources.

The Query filter identifies a set of objects of interest for the Query operation. If no filter is given with the Query, then all objects are qualified, and the Query would return information on all objects. The attribute selector within the Query request is used to indicate the attributes that are of interest from the set of objects identified in the filter. If no attribute selector is specified, then the Query response returns all information of the qualified objects given in the filter.

NOTE: The Query operation could return attributes of the Read/Write property that is read-only, read & write but not write-only.

There are existing Query use cases in this document that act on specific objects in the information model. This Query Information use case describes the overall behavior applicable to query use cases.

##### Sequence Description

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **>>Uses<<** |
| **Use Case Title** | Query Information Use Case |  |
| **Goal** | The goal of the Query Information Use Case is the following:   * To return information on objects of interest specified in the Query filter within the Query Information request. If the Query filter contains both objects that do and do not exist, then the request will return information only for those objects that do exist. * To return all information on all objects if no objects are specified in the Query filter within the Query Information request. * To return read-only and read & write attribute value(s) of objects of interest specified in the attribute selector within the Query Information request. If the attribute selector contains both attributes that do and do not exist, then the request will return information only for the attribute(s) that do exist. NOTE 1: queries for write-only attributes are not honored. * To return all attribute value(s) of object(s) of interest if no attribute selector is specified within the Query Information request. * To Provide a framework for Query Information that applies to all APIs. |  |
| **Actors and Roles** | **Cloud Operator** - The Cloud operator is a consumer (or entity) using or interfacing with the SMO (FOCOM).  **SMO (FOCOM)** - The FOCOM within the SMO is used in this use case to represent any consumer of the Query information response.  **IMS** - The IMS within the O-Cloud processes the Query Information request and receives the request over the O2ims interface. |  |
| **Assumptions** | There are no assumptions for this use case |  |

|  |  |  |
| --- | --- | --- |
| **Preconditions** | **Connectivity** - The Subscriber has connectivity to the publisher by some mechanism.  **O-Cloud Operational** - The O-Cloud is installed, operating, and registered with the SMO.  **Privilege** - The consumer identification and privileges of a SMO user have been verified to be able to perform O2 operations. |  |
| **Begins when** | The use case begins when:   1. An operator at the SMO wishes to query for information in the O-   Cloud, or   1. A management entity, typically the SMO, autonomously wishes to query for information in the O-Cloud |  |
| **Step 1.1 (ALT)** | **QUERY INFORMATION REQUEST INITIATED FROM OPERATOR (ALT)** -  The authorized entities initiate a Query Information request with a query filter and an attribute selector. An authorized entity would usually be the O-Cloud Operator; however, it could also be another authorized management function.  The query filter specifies the objects of interest for the Query Information request.  The attribute selector specifies the relevant attributes for the objects of interest. |  |
| **Step 1.2 (ALT)** | **QUERY INFORMATION REQUEST INITIATED FROM SMO (ALT)** -  The SMO autonomously initiates a Query Information request with a query filter and an attribute selector.  The query filter specifies the objects of interest for the Query Information request.  The attribute selector specifies the relevant attributes for the objects of interest. |  |
| **Step 2 (M)** | **QUERY INFORMATION REQUEST OVER O2 INTERFACE** -  Either the Operator initiated, or the SMO autonomously initiated a Query Information Request from Steps 1.1 or 1.2 which both result in a Query Information Request over the O2 interface.  Connection authentication is verified by the IMS. The IMS process the Query Information request. |  |
| **Step 3 (ALT)** | **IMS PROCESSES REQUEST**  The IMS authenticates the connection. The IMS processes the Query Information request.  **SUCCESSFUL QUERY INFORMATION** -  If the Query Information operation was successful, the IMS passes to FOCOM (SMO) the results matching the Query filter and attribute selector in the Query Information request. See the goals (above) for how the filter and selector are expected to work.  NOTE 2: If the attribute selector requests for a write-only attribute, this would be a valid query information request, but it would not return a value (see the goals above). It would be left to implementation on the specific behavior. |  |
| **Step 4 (ALT)** | **EXCEPTION: QUERY WITH NO EXISTING OBJECTS OR ATTRIBUTES (ALT)** |  |

|  |  |  |
| --- | --- | --- |
|  | This exception is encountered when a Query Information request specifies objects and attributes that do not exist. There are no objects that match in the query filter and/or there are no attributes that match in the attribute selector. |  |
| **Step 5 (ALT)** | **EXCEPTION: QUERY WITH NO EXISTING OBJECTS OR ATTRIBUTES (ALT)**  The SMO returns to the requesting entity that a query with no existing objects or attributes exception was encountered. |  |
| **Step 6 (ALT)** | The IMS encountered an unexpected condition, such as an internal software fault.  **EXCEPTION: UNEXPECTED CONDITION (ALT)** -  If possible, the IMS returns to FOCOM (SMO) that it has encountered an unexpected condition (software fault). |  |
| **Step 7 (ALT)** | **EXCEPTION: UNEXPECTED CONDITION (ALT)** -  A response is sent to the requesting entity from the SMO, that the IMS encountered an unexpected condition processing the request.  The Use Case ends. |  |
| **Step 8 (ALT)** | **QUERY INFORMATION RESPONSE**  The SMO returns to the requesting entity a Query Information response with the results matching the Query filter and attribute selector in the Query Information request. See the goals (above) for how the filter and selector are expected to work.  This step is a matching to step 1.1 |  |
| **Ends when** | This Use Case ends when the Query Information operation has either successfully been accomplished or one of the two exception cases have been encountered. |  |
| **Exceptions** | **EXCEPTION: QUERY WITH NO EXISTING OBJECTS OR ATTRIBUTES**  This exception is encountered when a Query Information request specifies objects and attributes that do not exist. An exception notification will be returned; and the use case will end this this situation.  **EXCEPTION: UNEXPECTED CONDITION**  The IMS encountered an unexpected condition, such as an internal software fault. An exception notification will be returned; and the use case will end this this situation. |  |
| **Post-conditions** | **SUCCESS** - The requests objects and requested attributes from the Query filter and attribute selector respectively are enclosed in the Query Information response back to the requesting entity or the SMO if the request was autonomously initiated by the SMO.  **FAILURE** - The request was not able to be completed. No other "clean up" needs to occur. An exception notification has been issued. |  |
| **Traceability** | [REQ-ORC-O2-3], [REQ-ORC-O2-96] |  |

##### UML Sequence Diagram

![](../assets/images/7748c3571513.jpg)

Figure 3-11: Query Information

### Network Function Basic Use Cases

#### NF Deployment Instantiation

##### High Level Description

This Use Case describes the instantiation of a new NF Deployment on an O-Cloud.

The following Use Case adopts terms from the high-level model described in Clause 4 of the OAM Architecture [5]. For definition purposes the terms adopted are defined below. However, if the definition is in conflict with the OAM Architecture, then the OAM Architecture will supersede these definitions.

**DeploymentDescriptor**: The Deployment Descriptor describes a deployment option that has been

validated by the Solution Provider of the application. The Deployment Descriptor contains design-time information and data that describes an application and that is used by the SMO for the deployment of the application workload.

The NF Deployment instantiation on the O-Cloud may be part of a larger procedure instantiating multiple NF Deployments and of multiple connected Cloudified NFs, in which case the SMO will coordinate the timing of instantiation across O-Clouds and O-Cloud Nodes, the configuration of transport needed between O-Cloud Nodes and other requirements such as addressing and security used for connecting the Network Functions.

The NF Deployment instantiation can also be performed in the context of an upgrade of a Cloudified NF.

##### Sequence Description

|  |  |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | | | | | | | **<<Uses>> Related use** |
| Goal | Instantiate an NF Deployment on the O-Cloud. | | | | | | |  |
| Actors and Roles | NFO - Network Function Orchestration DMS - Deployment Management Services | | | | | | |  |
| Assumptions | There are no assumptions for this use case. | | | | | | |  |
| Preconditions | 1. SMO is available. 2. The O-Cloud instance has been installed successfully as per "O- Cloud Deployment Processing" use case. 3. NF Deployment package has been onboarded onto the SMO. The NF Deployment package contains a DeploymentDescriptor that provides the deployment and resource requirements for the NF Deployment. 4. The DeploymentDescriptor for the NF Deployment has been selected and runtime variables for the selected DeploymentDescriptor are determined. 5. Homing of the NF Deployment has been determined based on the infrastructure requirements in the DeploymentDescriptor and the specific absolute homing requirements (e.g., target O-Cloud) or relative constraints (e.g., affinities/anti-affinities).   See note 1.   1. The O-Cloud Node Cluster has been provisioned (through the IMS) with capabilities required for the NF Deployments. | | | | | | |  |
| Begins when | New NF Deployment is determined to be deployed on the O-Cloud. | | | | | | |  |
| Step 1 (M) | NFO requests the DMS to instantiate the new NF Deployment. See note 2. | | | | | | |  |
| Step 2 (M) | DMS allocates the resources according to the NF Deployment request. During the NF Deployment instantiation, initial configuration based on NFO's  provided configuration values can take place, e.g., to enable NF Deployment connectivity. | | | | | | |  |
| Step 3 (M) | NFO receives completion. | information | about | the | NF | Deployment | instantiation |  |
| Ends when | NF Deployment has been instantiated on the O-Cloud. | | | | | | |  |

|  |  |  |
| --- | --- | --- |
| Exceptions | None identified. |  |
| Post Conditions | NFO updates the composition of the Cloudified NF based on the NF Deployment instantiation, and Cloudified NF Registration follows (O-RAN WG10.O1-Interface [6], clause 6.10.1, which is out of scope for the present  use case). |  |
| Traceability | REQ-ORC-GEN18; REQ-ORC-GEN19; REQ-ORC-GEN20; REQ-ORC-O1- 1; REQ-ORC-O2-10; REQ-DESC-1, REQ-DESC-2, REQ-DESC-3 |  |
| NOTE 1: This can range from a trivial exercise (e.g., the NF Deployment Request identifies the target O-Cloud by Cloud Id) to a highly complex exercise (if the SMO were to determine an appropriate vacant O-Cloud instance based on homing policies such as latency tolerance, NF Deployment requirements to cloud capability matching, etc.).  NOTE 2: It is not precluded that one or multiple interactions between the NFO and DMS are performed for the NF Deployment instantiation. | | |

##### UML sequence diagram

![](../assets/images/610bde9fd3e0.jpg)

Figure 3-12: NF Deployment Instantiation

#### NF Deployment Scale Out

##### High Level Description

This use case describes an SMO initiated scale out of an NF Deployment in order to expand its capacity. This results in horizontal elasticity as allocating additional resources to the NF Deployment enables it to provide its functionality at the desired performance and capacity level.

NOTE: An NF Deployment is part of a Cloudified NF, thus expanding the capacity of the NF Deployment consequently also expands the capacity of a Cloudified NF.

##### Sequence Description

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>> Related use** |
| Goal | To allocate additional resources to an NF Deployment on the O-Cloud to meet its service demands. |  |
| Actors and Roles | SMO: NFO DMS  NF Deployment |  |
| Assumptions | 1. SMO has collected the necessary information to scale out the NF Deployment e.g., information from NF Deployment descriptor. 2. The NFO receives a trigger to scale out an NF Deployment. 3. NF Deployment monitoring is operational. |  |
| Preconditions | 1. SMO is available 2. The DMS in the O-Cloud is available and connected to the SMO. 3. NF Deployment is instantiated. |  |
| Begins when | SMO determines that scale out is needed and triggers the NFO to begin NF Deployment scale out. |  |
| Step 1 (M) | The NFO requests the DMS to scale out the NF Deployment by providing updated scaling information. |  |
| Step 2 (M) | The DMS scales the NF Deployment as per the received request by allocating the required resources to the NF Deployment. |  |
| Step 3 (M) | The DMS informs the NFO that the NF Deployment scaling was performed successfully. |  |
| Ends when | NF Deployment has been scaled out on the O-Cloud. |  |
| Exceptions | DMS cannot allocate the required resources to scale out the NF Deployment. |  |
| Post Conditions | If needed, reconfiguration of the NF Deployment may occur via the Cloudified NF and O1. |  |
| Traceability | REQ-ORC-GEN22 |  |

##### UML sequence diagram

![](../assets/images/1a40773733b0.jpg)

Figure 3-13: NF Deployment Scale Out

#### NF Deployment Scale In

##### High Level Description

This Use Case describes an SMO initiated scale in of an NF Deployment in order to reduce its capacity to the desired level. This results in horizontal elasticity and allows the NF Deployment to consume only the resources it needs based on the level of demand.

##### Sequence Description

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>> Related use** |
| Goal | To deallocate O-Cloud resources from an NF Deployment to reduce its capacity to the desired level. |  |
| Actors and Roles | SMO: NFO DMS  NF Deployment |  |
| Assumptions | 1. SMO has collected the necessary information to scale in the NF Deployment e.g., information from NF Deployment descriptor. 2. The NFO receives a trigger to scale in an NF Deployment. 3. NF Deployment monitoring is operational. |  |
| Preconditions | 1. SMO is available 2. The DMS in the O-Cloud is available and connected to the SMO. 3. The NF Deployment is instantiated. |  |
| Begins when | SMO determines that NF Deployment scale in is needed and triggers the NFO to begin NF Deployment Scale In. |  |
| Step 1 (M) | The NFO requests the DMS to scale in the NF Deployment by providing updated scaling information. |  |
| Step 2 (M) | The DMS scales the NF Deployment as per the received request by deallocating resources from the NF Deployment. |  |
| Step 3 (M) | The DMS informs the NFO that the NF Deployment scaling was performed successfully. |  |
| Ends when | NF Deployment has been scaled in on the O-Cloud. |  |
| Exceptions | DMS cannot deallocate the resources to scale in the NF Deployment. |  |
| Post Conditions | If needed, reconfiguration of the NF Deployment may occur via the Cloudified NF and O1. |  |
| Traceability | REQ-ORC-GEN23 |  |

##### UML sequence diagram

![](../assets/images/3da8a3869cc8.jpg)

Figure 3-14: NF Deployment Scale In

#### Software Upgrade of NF

##### High Level Description

NOTE: This use case is described as an NF level procedure. The SMO to O-Cloud interaction is at the level of NF Deployment rather than NF level.

This Use Case describes SMO-managed upgrade to the software of the Network Function. This covers the software deployment and its activation. Once activated the NF is configured by SMO similar to the NF deployment use case.

This use case illustrates the build-and-replace NF software upgrade approach. This approach utilizes a graceful or soft upgrade where the old NF is not deleted until this can be done without disrupting existing traffic it supports. Other approaches could be developed specific to containerization such as break-fix, or the PNF form of Upgrade-in-place.

More complex scenarios such as support of zero traffic loss may be explored in future versions.

##### Sequence Description

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>> Related use** |
| Goal | Network Function software is upgraded according to build-and-replace approach. |  |
| Actors and Roles | SMO: NFO and OAM Functions DMS  Network Function (Application): |  |
| Assumptions | 1. A mechanism is available for the element to start and stop receiving traffic. This mechanism is likely to be specific to the NF. It is generally referred to as "place in traffic" and "remove from traffic". The details of how these are achieved are not depicted in this use case. 2. In this use case example, the NF is one ME with one deployment image. This may not always be the case in which several images and deployments may be required before the new element can be placed into traffic. |  |

|  |  |  |
| --- | --- | --- |
| Preconditions | 1. SMO is available 2. O-Cloud is available 3. NF has been successfully deployed and is operational in the network 4. A new NF package and software image is available for the NF instance at the SMO |  |
| Begins when | Network operations has determined to perform the upgrade |  |
| Step 1 (O) | SMO checks with DMS to see if software image for upgrade is already in O- Cloud software image repository. Note that if the version exists then no change occurs. |  |
| Step 2 (M) | If new version of software image is not available on the O-Cloud software image  repository, the SMO requests to add the software image to the O-Cloud software image repository. |  |
| Step 3 (M) | SMO requests the DMS to instantiate a new NF deployment corresponding to the new version of the NF |  |
| Step 4 (M) | DMS allocates the resources according to the NF deployment request. |  |
| Step 5 (M) | SMO configures new NF instance into traffic.  NOTE: The Global identifier handling while moving traffic from Old NF to New NF is not in scope of the present use case. |  |
| Step 6,7 (M) | SMO verifies that the new NF is properly processing traffic, e.g., while the NF instance provides FM/PM reports. |  |
| The following steps are followed if the new NF is behaving as expected. | | |
| Step 8 (M) | SMO configures the old NF instance to be taken out of traffic |  |
| Step 9 (M) | SMO waits for all traffic to be migrated from old NF to new NF |  |
| Step 10 (M) | Once the old NF has been taken out of traffic, SMO tells DMS to delete the NF deployment of old NF |  |
| Step 11 (M) | DMS deletes the resources of the NF deployment of old NF |  |
| Rollback: The following steps are followed If there is a problem with the new NF | | |
| Step 12 (M) | SMO configures the new NF instance to be taken out of traffic |  |
| Step 13 (M) | SMO waits for all traffic to be migrated from new NF to old NF |  |
| Step 14 (OM) | Once the new NF has been taken out of traffic, SMO requests the DMS to delete the NF deployment of new NF |  |
| Step 15 (M) | DMS deletes resources of the NF deployment of new NF |  |
| Ends when | Network traffic is flowing through the new NF executing the newer software version. |  |
| Exceptions | 1. Software fails to start or properly process traffic, Rollback is executed 2. Old NF cannot be taken out of traffic or upgrade involves multiple NFs. Original NF (Old NF) is left running until traffic can be migrated. |  |
| Post Conditions | NF is updated with new software version |  |
| Traceability | REQ-ORC-GEN22, REQ-ORC-GEN23 |  |

##### UML sequence diagram

![](../assets/images/6d70de198c13.jpg)

Figure 3-15: SW Upgrade of Network Function

#### NF Deployment Termination

##### High Level Description

This Use Case describes the termination of a NF Deployment on an O-Cloud, and notification to the SMO once the termination of resources for the NF Deployment has been completed.

##### Sequence description

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>> Related use** |
| Goal | To terminate NF Deployment that has been instantiated in the O-Cloud. |  |
| Actors and Roles | NFO DMS |  |
| Assumptions | 1. The SMO has identified the NF Deployment to be terminated. 2. The NF Deployment to be terminated does not provide services. |  |
| Pre-condition | 1. SMO is available. 2. NF Deployment is instantiated. |  |
| Begins when | Existing NF Deployment is determined to be terminated on the O-Cloud. |  |
| Step 1 (M) | The NFO requests the DMS to terminate the NF Deployment by providing relevant information e.g. NF Deployment identifier. |  |
| Step 2 (M) | The DMS terminates the NF Deployment and deallocates the O-Cloud resources assigned to that NF Deployment. |  |
| Step 3 (M) | The DMS informs the NFO about the NF Deployment termination status. |  |
| Ends when | NF Deployment in the O-Cloud has been terminated. |  |
| Exceptions | DMS cannot terminate the requested NF Deployment due to, e.g. incorrect NF Deployment identifier, internal O-Cloud error, etc. |  |
| Post Conditions | Termination is successful:   * NF Deployment has been terminated. An Exception occurred: * O-Cloud did not terminate NF Deployment. |  |
| Traceability | REQ-ORC-O2-11 |  |

##### UML sequence diagram

![](../assets/images/cec30dc087e0.jpg)

Figure 3-16: NF Deployment Termination

### Near-RT RIC/xAPP Use Cases

#### Configure O-Cloud for Near-RT RIC

##### High Level Description

This Use Case defines an optional procedure using Custom Resources to configure a Kubernetes O-Cloud to support the Near-RT RIC function by using, as an example, the Kubernetes(R) Custom Resource Definitions (CRD).

NOTE 1: Similar procedure may be used for O-Cloud configuration for other functions as well.

NOTE 2: Kubernetes(R) and K8s(R) are registered trademarks of the Linux Foundation, in the United States and other countries. O-RAN is not affiliated with, endorsed or sponsored by the Linux Foundation.

The Near-RT RIC may require a Custom Resource to ensure proper lifecycle management of the near-RT RIC and its xAPPs. This capability has to be added to the O-Cloud prior to a near-RT RIC service deployment. There are multiple ways to add a custom resource. For example, Custom Resource Definitions (CRD) is easier and requires no programming. Another possibility is to use API Aggregation which requires programming but is more flexible in terms of API behaviors. Both options require a "service" in Kubernetes to be deployed. The following example illustrates the CRD initial installation.

##### Sequence Description

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>> Related use** |
| Goal | Enable the cloud to advertise to the SMO that it supports a Near-RT RIC deployment. |  |
| Actors and Roles | Cloud Installation Project Manager SMO: NFO  DMS |  |
| Assumptions | O-Cloud is Kubernetes based and an instance of the Near-RT RIC Custom Resource Definition has not been previously installed |  |
| Preconditions | 1. SMO is available 2. O-Cloud is available 3. Near-RT RIC Service Type Descriptor has been onboarded to the SMO |  |
| Begins when | Cloud Installation Project Manager identifies that the O-Cloud is intended to support the deployment of a Near-RT RIC |  |
| Step 1 (M) | Cloud Install Project Manager makes request to SMO to deploy the CRD Service to an O-Cloud enabling it to support Near-RT RIC deployments |  |
| Step 2 (M) | The SMO decomposes the service request and identifies all O-Clouds to be enabled. |  |
| Steps 3-5 | These steps are repeated for each O-Cloud to be enabled. |  |
| Step 3 (M) | SMO request O-Cloud to create the CRD (Deploy Service) |  |
| Step 4 (M) | DMS returns status update when created |  |
| Step 5 (M) | The SMO recognizes that the O-Cloud can now support Near-RT RIC deployments and updates the O-Cloud Capabilities using the O-Cloud  Inventory Update process in clause 3.1.4. |  |
| Step 6 (M) | The SMO informs the Cloud Installation Project Manager of the overall success or failure of the request. |  |
| Exceptions | O-Cloud cannot support CRD Service deployment or deployment fails. Deployment is cancelled and SMO is notified of failure. SMO informs Project Manager. |  |
| Post Conditions | O-Cloud can support Near-RT RIC deployments. SMO holds updated inventory. |  |
| Traceability |  |  |

##### UML Sequence Diagram

![](../assets/images/a6f9d359d5cd.png)

Figure 3-17: Configure O-Cloud for Near-RT RIC

#### Deploy xAPP in Near-RT RIC

##### High Level Description

xAPPs are developed independent of the near-RT RIC in which they execute. This Use Case describes how an xAPP is instantiated and associated with a near-RT RIC.

##### Sequence Description

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>> Related use** |
| Goal | xAPP deployment is instantiated on Near-RT RIC, resulting in enhanced  capabilities. Configuration and communication between xAPP and SMO is mediated by the ME containing the Near-RT RIC MF. |  |
| Actors and Roles | xAPP Install Project Manager  NFO - Network Function Orchestration OAM Functions  DMS - Deployment Management Services Near-RT RIC  xAPP |  |
| Assumptions | The "Service Request" to the SMO for the new xAPP(s) may include information for the SMO to use for homing purposes, such as desired xAPP or xAPP type(s) associated with O-Cloud or RIC Instance |  |
| Preconditions | 1. SMO is available 2. The O-Cloud instance has been installed successfully as per "O- Cloud Deployment Processing" use case. 3. Near-RT RIC NF has been deployed successfully on the O-Cloud instance and has been activated and has connected to the SMO using O1 4. xAPP has been onboarded onto the SMO containing an xAPP descriptor that provides the deployment requirements for the xAPP. 5. No MOI exists for the xAPP in the Near-RT RIC 6. xAPP Install Project Manager has selected a deployment option from the Run Time Library and determined runtime variables for the selected option |  |
| Begins when | New xAPP(s) are to be instantiated on a Near-RT RIC hosted on an O-Cloud |  |
| Step 1 (M) | Network Function Install Project Manager makes request to SMO to deploy new xAPP(s) on the Near-RT RIC |  |
| Step 2 (M) | The SMO decomposes the service request and identifies all xAPPs to be deployed and the order in which they should be deployed. |  |
| Steps 3-15 | These steps are repeated for each xAPP to be deployed as part of the service request. |  |
| Step 3 (M) | The SMO determines which O-Cloud and Near-RT RIC Instance to deploy the xAPP to. This can be done using Policies which match operator input or  other more complex homing policies or can be explicitly identified by the Project Manager. |  |
| Step 4 (O) | If SMO needs additional deployment-related information for the template override, e.g., the Near-RT RIC API NodePort assignment, SMO uses O1 to retrieve configuration data from the Near-RT RIC, otherwise SMO uses internal stored data |  |
| Step 5 (M) | 1. SMO maps known RIC variables to xAPP variables to allow RIC and xAPP to interoperate and fills in the xAPP configuration with assigned values. 2. SMO uses config information to determine template override parameters for xAPP and create an override file (see Note) |  |
| Step 6 (M) | For each xAPP Deployment of the xAPP, steps 6 - 10 take place:  SMO retrieves the CloudNativeDescriptor from the Run Time Library for the current xAPP Deployment. |  |
| Step 7 (M) | SMO directs the O-Cloud DMS using O2 to create the xAPP Deployment |  |
| Step 8 (M) | DMS allocates the resources according to the xAPP Deployment request. During xAPP Deployment instantiation, initial SMO connectivity configuration can take place. |  |
| Step 9 (M) | DMS returns notification to SMO over O2 indicating that the xAPP deployment has been created and the Deployment ID |  |
| Step 10 (M) | SMO updates its xAPP inventory with the received Deployment ID |  |
| Steps 11-14 (M) | The xAPP reads its initial configuration. Once complete, xAPP registers with the Near-RT RIC and exchanges its schemas and initial configuration as needed. Near-RT RIC uses this information to create and populate the xAPP  MOI(s), including configuring E2 subscriptions, A1 Policies supported, A1 Enrichment Subscriptions, and inter xAPP data sharing. |  |

|  |  |  |
| --- | --- | --- |
| Step 15 (O) | If the SMO has previously subscribed to CM notifications from the Near-RT RIC, then the Near-RT RIC sends SMO notification of an MOI create event. Note SMO will restart a new Netconf session to receive an update on Near- RT RIC capabilities including the newly deployed xAPP |  |
| Steps 16 (M) | The SMO informs the Network Function Install Project Manager of the overall success or failure of the request. |  |
| Ends when | xAPP(s) have been instantiated on the O-Cloud and configured by the SMO via the Near-RT RIC |  |
| Exceptions | MOI Creation fails - Near RT RIC notifies SMO and SMO informs Network Function Install Project Manager  xAPP Deploy fails - DMS notifies SMO and SMO informs Network Function Install Project Manager |  |
| Post Conditions | xAPP is instantiated and incorporated under near-RT RIC management. SMO holds updated inventory that includes "deployment ID"  Near-RT RIC holds MOI of the xAPP. |  |
| Traceability | REQ-ORC-GEN19, REQ-ORC-O1-2, REQ-ORC-O2-4 |  |

NOTE: Information could be, for example, RIC namespace, IP address or ports needed to access RIC services, as determined by WG3

##### UML Sequence Diagram

![](../assets/images/df1e2876731b.jpg)

Figure 3-18: Deploy xAPP

### Multi-vendor network provisioning in a mixed PNF/VNF environment

A Use Case description of multi-vendor provisioning of an O-RAN service can be found in the O-RAN OAM Architecture specification [5].

### Reconfiguration of O-RAN Virtual Network Function(s)

#### High Level Description

A common orchestration request is the reconfiguration of one or a set of cloud-based O-RAN Virtual Network Functions in order to affect the behavior of the RAN. The action taken could be, for example, to re-optimize network traffic patterns or update the load balancing of traffic across the RAN network. The trigger for this action could be any

number of events such as non-real time traffic analysis by the Non-RT RIC, or input from non-RAN sources such as upcoming natural events or scheduled human events.

In such cases the SMO will either be told or determine by its own analysis which Virtual Network Functions need reconfiguration and in which order this is done if multiple Virtual Network Functions are involved. If a problem develops during reconfiguration then SMO may optionally invoke a fallback procedure to revert the Virtual Network Functions to their original configuration. As in reconfiguration of PNFs, O1 Interface [6] Provisioning Management is used.

NOTE: There may be a need for SMO to initially reroute traffic away from the affected Virtual Network Functions and subsequently revert traffic to the original patterns. This could be done by using Network Function Reconfiguration on adjacent Network Functions that send or receive information from the affected Network Functions.

#### Sequence Description

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>> Related use** |
| Goal | Reconfigure O-RAN Virtual Network Functions based on the need to modify RAN network behavior, for example re-optimize traffic patterns or load balance traffic in response to new conditions. |  |
| Actors and Roles | SMO: OAM Functions  SMO/Non-RT RIC: source point for RAN policy control function Other RAN Elements: O-CU, O-DU |  |
| Assumptions | 1. All relevant functions and components are instantiated. 2. O1 interface connectivity is established with RAN elements. 3. SMO will reconfigure transport as needed to accommodate traffic rerouting, reconfigured network functions and traffic reversion |  |
| Preconditions | 1. Network is operational. 2. SMO has established the data collection and sharing process, and SMO/Non-RT RIC has access to this data. 3. Trigger conditions for reconfiguration are set in the SMO/Non-RT RIC, e.g., by the network operator. |  |
| Begins when | SMO/Non-RT RIC analyses performance data or other inputs and determines that reconfiguration of RAN network functions is required. |  |
| Step 1 (M) | SMO/Non-RT RIC request NF reconfiguration. SMO/OAM Functions determines an order of reconfiguration across affected RAN network functions. |  |
| Step 2-4 (M) | SMO performs relevant configuration updates in RAN over O1 interface for each network function that needs to be reconfigured, in an order determined by SMO or specified to SMO. Detailed procedures for O1 provisioning follow [6] section  2.1. |  |
| Step 5-7 (M) | SMO determines via notification from the affected network functions that reconfiguration has been successful |  |
| Step 8 (M) | SMO/Non-RT RIC monitors the performance of the RAN following reconfiguration by collecting and monitoring the relevant performance KPIs and counters using O1 |  |
| Step 9-11 (O) | If a fallback procedure has been identified by SMO and it determines that reconfiguration has not been successful, SMO initiates fallback by configuring the affected network functions back to their original configuration. |  |
| Ends when | The SMO/Non-RT RIC verifies that the O-RAN Virtual Network Function's performance monitoring conforms to the reconfiguration. |  |
| Exceptions | None identified |  |
| Post Conditions | O-RAN Virtual Network Functions have been reconfigured.  SMO/Non-RT RIC continues to monitor the performance of the RAN by collecting and monitoring the relevant performance KPIs and counters using O1 |  |
| Traceability | REQ-ORC-GEN21; REQ-ORC-O1-2 |  |

#### UML sequence diagram

![](../assets/images/c25036001d5f.jpg)

Figure 3-19: Reconfiguration

### Recovery Use Cases

#### Introduction

When an operator experiences problems with an O-Cloud NF Deployment(s), O-Cloud Node(s), or O-Cloud instance, it is possible for the operator to initiate a recovery at different levels of the O-Cloud.

These can include the following:

1. Application-level healing

This causes an application within an NF on the O-Cloud to be healed on operator request, and is accomplished through the O1 interface between SMO and the associated NF. Typically, the network operator tries to execute the Application level healing as part of recovering from NF's application failures via O1.

The Application level healing is out of scope of the present document since it is foreseen that the interactions are only on the O1 interface.

1. NF Deployment level healing (refer to clause 3.6.2)

Another level of healing is by acting upon the NF Deployments (e.g., workloads in Kubernetes case) that realize an NF instance, where either the network operator can execute the NF Deployment level healing via O2dms, or the O-Cloud internal deployment management functions can execute built-in or configured procedures for auto- healing of the NF Deployment, e.g., based on workload monitoring in O-Cloud.

When the healing of an NF Deployment within an O-Cloud is triggered via an operator request, it is accomplished through the O2dms interface between SMO and the DMS responsible for the deployment management services of the NF Deployment of concern.

In the case of auto-healing, the DMS may automatically trigger healing of the NF Deployment, where no operator request over O2dms interface is necessary.

1. O-Cloud Node level healing (refer to clause 3.6.3)

This causes one or more O-Cloud Nodes within an O-Cloud to be healed on operator request, and is accomplished through the O2ims interface between SMO and the IMS responsible for infrastructure management services for that O-Cloud Node. This can be used as part of recovery of the resources within the O-Cloud, i.e., the O-Cloud Node level healing. It is also possible that IMS executes built-in or configured procedures for auto-healing of the O-Cloud Node. This level of healing needs extra trigger considerations because it can affect multiple NFs running on the O-Cloud Node(s). For instance, "draining" the O-Cloud Node (i.e., migrating the NF deployments out from the affected O-Cloud Node) and/or setting the O-Cloud Node into maintenance mode can be done before requesting the O-Cloud Node healing. Related NF deployment requirements from the NF deployment descriptor and cloud native descriptors that are available to the O-Cloud DMS are taken into consideration as part of the O- Cloud Node healing (e.g., graceful evacuation of Pods based on Pod disruption budgets set for that NF).

In the case of auto-healing, the IMS may automatically trigger healing of the O-Cloud Node, where no operator requires over O2ims interface is necessary.

1. O-Cloud instance level healing

This causes an O-Cloud instance to be healed on operator request. This last level of healing, i.e., O-Cloud instance level healing, can be seen as a last resort action and it needs extra trigger considerations because it can affect multiple NFs and O-Cloud Nodes residing in the O-Cloud instance.

*Editor's Note: It is for further study whether this can be accomplished through the O2 interface.*

The ordering or which one of the healings to use or execute is up to network operator policies, e.g., in some cases a cascading might be tried, while in other cases the operator might decide to activate a specific healing without cascading among them.

For illustrative purposes, the following is explanation about typical system reset cases in legacy deployments. In legacy deployment cases, when the xNB experiences some issue at the software level, e.g., the software on the xNB is not responding to the operations of the remote management tool due to possible software failures, "physical hardware" level reset is performed to re-gain software level control. For performing this action, typically an OSS sends a "system reset" signal to the target xNB. This procedure is necessary to reset the system (CU and DU) in xNB without performing a "manual intervention" at the radio antenna site, e.g., "personnel pushing power button". Figure 3-16 illustrates an

example of remote system reset in the legacy deployment case. System reset does not apply in exactly the same way for recovery of NF and O-Cloud systems but healing at different levels can be supported using O2 as described above.

![](../assets/images/36495079f5d8.jpg)

Figure 3-20: Remote System Reset of legacy xNB by OSS

#### Network Function Deployment Level Healing Use Case

##### High Level Description

Depending on the O-Cloud technology, in some cases the capability of auto-healing of the NF deployments is available intrinsically in the O-Cloud platform. In that case, the NF deployment requirements from the NF deployment descriptors and cloud native descriptors are taken into account together with the runtime state of the NF Deployment in O-Cloud, to activate the NF Deployment auto-healing process.

When such O-Cloud DMS capability is not available or there is a need for an operator triggered recovery as one or more O-RAN NF(s) is (are) experimenting some failure, and the error could not be fixed by using the O1 interface services, then as a possible step, the network operator could trigger SMO to request the DMS to perform an NF Deployment level healing to attempt to fix the problem.

The healing of an NF Deployment may be performed via different means depending on the type of resources required for the NF Deployment (e.g., VM or container). For instance, both in VM-based and container-based NF Deployments, the capability to restart the VM or OS Container/Pod can be leveraged. The NF Deployment could be restarted (stop and start), or its associated resources be reallocated/replaced on the same or different O-Cloud Nodes.

NOTE: Alternatively, if the O-Cloud cannot perform the healing, new NF Deployment instances can be created on O-Cloud Nodes with resources of equivalent characteristics and profile as defined in that NF deployment descriptors and cloud native descriptors. This can be performed in the context of service recovery, not a healing of a specific NF Deployment.

This use case describes the procedure to attempt to heal specific NF Deployments using the O2dms interface services.

##### Sequence description

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>> Related use** |

|  |  |  |
| --- | --- | --- |
| Goal | SMO and DMS attempt to fix the failure on O-RAN NF's responsiveness, via the O2 interface by requesting the healing of the associated NF Deployments. |  |
| Actors and Roles | Network Operator  SMO: NFO/OAM Functions DMS  NF Deployment |  |
| Assumptions | 1. Notification Event has been configured in the DMS by the SMO to inform SMO of issues with NF deployments 2. NF does not respond on O1 3. SMO can be aware of NF Deployments failures, e.g., via notifications (see 1)) |  |
| Preconditions | 1. SMO is available 2. The O-Cloud has been installed and activated and is known to SMO 3. The O2 interface exists between the O-Cloud and SMO and is functional. |  |
| Begins when | This use case begins when either of the following two situations happens:   1. Network operations has determined, either by explicit request or via some network operation policies , to trigger the NF Deployment level healing and SMO has a work order with the specific set of NF Deployments to heal. 2. DMS detects some faults with NF Deployment and triggers auto- healing |  |
| Step 1.1 (ALT) | SMO requests to the DMS using O2dms services to heal one or more NF Deployments. |  |
| Step 1.2 (ALT) | DMS initiates auto-healing |  |
| Step 2(O) | If SMO has previously subscribed to the status update of the NF Deployment, DMS notifies SMO of the start of healing.  NOTE 1: The notification may be sent in both cases before SMO-initiated healing and auto-healing. |  |
| Step 3 (M) | The DMS performs the healing of the NF Deployments indicated in the request or determined via auto-healing.  NOTE 2: Step 3 can be looped for each NF Deployments to heal.  NOTE 3: Regarding the "healing" mechanisms, see also description in clause 3.6.2.1. |  |
| Step 4 (O) | STATUS UPDATE NOTIFICATION - When the situation requires that a NF Deployment status change notification to the SMO is needed, the NF Deployment status change notification is returned to the SMO by the DMS.  NOTE 4: The notification may be sent in both cases after SMO initiated healing and auto-healing. |  |
| Ends when | Healing of NF Deployment(s) is completed. |  |
| Exceptions | None identified. |  |
| Post Conditions | NF Deployments have been healed. |  |
| Traceability | REQ-ORC-O2-12, REQ-ORC-O2-77 |  |

##### UML sequence diagram

![](../assets/images/3fd92fc643e2.jpg)

Figure 3-21:NF Deployment level recovery

#### O-Cloud Node Level Healing Use Case

##### High Level Description

Depending on the O-Cloud technology, in some cases the capability of auto-healing of the O-Cloud Nodes is available intrinsically in the O-Cloud platform.

When such O-Cloud IMS capability is not available or there is a need for an operator triggered recovery as one or more O-RAN NF(s) is (are) experiencing some failure, and the error could not be fixed by using the O1 or O2dms interface services, then as a possible step, the network operator could trigger SMO to request the IMS to perform an O-Cloud Node level healing to attempt to fix the problem. In addition, certain events received by SMO about malfunctioning O- Cloud Node resources could indicate or trigger the need to heal those resources, even in the case that such resource is not actually being allocated for running the whole or part of an O-RAN NF.

The healing of an O-Cloud Node may be performed via different means. For instance, the O-Cloud Node could be restarted (stop and start the node) or reallocated to use other O-Cloud Resources or O-Cloud Infrastructure resources.

This use case describes the procedure to attempt to heal specific O-Cloud Nodes using the O2ims interface services. This procedure can be invoked when some faults are identified that could be resolved by healing O-Cloud Nodes.

##### Sequence description

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>> Related use** |
| Goal | SMO and IMS attempt to fix the failure on O-RAN NF's responsiveness via O1 interface by requesting the healing of O-Cloud Nodes. |  |
| Actors and Roles | Network Operator SMO: FOCOM IMS  O-Cloud Node |  |
| Assumptions | 1. Notification Event has been configured in the IMS by the SMO 2. NF does not respond on O1 3. SMO can be aware of O-Cloud Nodes failures |  |
| Preconditions | 1. SMO is available 2. The O-Cloud has been installed and activated and is known to SMO 3. Network connectivity exists between the O-Cloud and SMO |  |
| Begins when | This use case begins when either of the following two situations happens:   1. Work order from the network operator triggers the O-Cloud Node level healing. The work order can indicate a specific set of O-Cloud Nodes. 2. IMS detects some faults with O-Cloud Node and triggers auto-healing. |  |
| Step 1.1 (ALT) | SMO sends a request to the IMS using O2ims services to heal one or more O- Cloud Nodes. |  |
| Step 1.2 (ALT) | IMS initiates auto-healing |  |
| Step 2 (O) | If SMO has previously subscribed to the status update of the O-Cloud Node. IMS notifies the start of healing.  NOTE 1: The notification may be sent in both cases before SMO initiated healing and auto-healing. |  |
| Step 3 (M) | The IMS performs the healing of the O-Cloud Nodes indicated in the request.  NOTE 2: Steps 3 and 4 can be looped for each O-Cloud Nodes to heal.  NOTE 3: NF Deployments running on the O-Cloud Node may need to be healed in conjunction with the O-Cloud Node healing. |  |
| Step 4 (O) | NF Deployments are reallocated as needed. |  |
| Step 5 (O) | STATUS UPDATE NOTIFICATION - When the situation requires that an O- Cloud Node status change notification to the SMO is needed, the O-Cloud Node status change notification is returned to the SMO by the IMS.  NOTE 4: The notification may be sent in both cases after SMO initiated healing and auto-healing. |  |
| Ends when | Healing of the O-Cloud Node is completed. |  |
| Exceptions | None identified. |  |

|  |  |  |
| --- | --- | --- |
| Post Conditions | O-Cloud Nodes have been healed. |  |
| Traceability | REQ-ORC-O2-13, REQ-ORC-O2-78 |  |

##### UML sequence diagram

![](../assets/images/c5c04e3b17bc.jpg)

Figure 3-22: O-Cloud Node level recovery

#### O-Cloud Node Backup Use Cases

##### Introduction

The use cases introduced in clause 3.6.4 concern about O-Cloud Node backup.

When an O-Cloud Node experiences some failure, the O-Cloud Node can be healed by restarting or reallocating the O- Cloud Node on other O-Cloud Resources, as described in the O-Cloud Node Level Healing Use Case, clause 3.6.3 of the present document. In order to reallocate an O-Cloud Node, information and current state data about the O-Cloud Node is necessary. This is referred in the following as "O-Cloud Node backup".

The O-Cloud Node backup might be automatically created by the O-Cloud based on certain policy or configuration. In other cases, O-Cloud Operator might explicitly request to create an O-Cloud Node backup.

The following set of use cases describe the procedure to create an O-Cloud Node backup initiated by O-Cloud Operator, SMO, or IMS based on backup criteria.

SMO can specify the information to backup within the O-Cloud Node Backup request. The specific items to backup for each O-Cloud Node could differ based on implementation, but in all cases, it needs to contain the necessary items for restoration and rollback. The followings are the examples of information and data to be backed up:

* Running configurations of O-Cloud Node, or
* O-Cloud inventory information (such as its type, capabilities, and resource build configurations, for example, a reference to the Initiation Configuration Set (ICS) that has been used for O-Cloud Node initialization) as described in O-Cloud Inventory Update Use Case, clause 3.1.4, or
* O-Cloud blueprint of the functionality and resources as described in [REQ-ORC-GEN14].

It is useful to create a backup before update in order to be able to rollback to the original state in case of a failure during the update procedure. In addition to the backup before update, automatic or periodic backup is also useful to restore the latest information in case of unexpected failure of O-Cloud Node. The probable triggers to create an O-Cloud Node Backup are:

* after initialization of new O-Cloud Node,
* before software update on O-Cloud Node for rollback in case of update failure,
* before reconfiguration of O-Cloud Node for fallback in case of problem during reconfiguration,
* on a request from O-Cloud Operator,
* periodical backup timer (done in case of unexpected failure of O-Cloud Node), and
* automatic backup based on backup criteria configured on the IMS.

NOTE 1: It is not a mandatory procedure to create a backup after O-Cloud Node initialization or before O-Cloud Node update.

SMO can configure the backup criteria on the IMS such as backup target, interval, threshold, and trigger for automatic/periodic backup.

O-Cloud Node backup can be initiated by the O-Cloud Operator and SMO. O-Cloud Node backup can be also initiated by IMS based on backup criteria. O-Cloud Operator can query the backup status of O-Cloud Node or backed-up O- Cloud Node information itself by using the O-Cloud Node Backup Query Use Case (see clause 3.6.4.4).

In the following, clause 3.6.4.2 describes the O-Cloud Node backup creation initiated by O-Cloud Operator or SMO. Clause 3.6.4.3 describes the backup criteria configuration on the IMS and O-Cloud Node backup creation based on the backup criteria. And finally, clause 3.6.4.4 describes the O-Cloud Node backup query.

NOTE 2: O-Cloud Node backup request and O-Cloud Node backup criteria configuration by SMO provide the means to SMO and O-Cloud Operator to control the backup process considering aspects beyond the current status of the O-Cloud, e.g., network wide level management, etc. However, it is also possible that IMS can have pre-configured or perform by design O-Cloud Node backups by itself.

NOTE 3: The present use case considers only aspects of backup applied to O-Cloud Nodes. However, backup processes can also be applicable to other O-Cloud components and resources. How the use case could be further evolved or related to other use cases of backing up other O-Cloud components is not handled in the present document version, and it might be considered in future ones to realize a broader concept of O- Cloud Backup.

NOTE 4: Requirements for these use cases are for further study in future train.

##### O-Cloud Node Backup Creation Use Case

* + - * 1. High Level Description

This use case describes the creation of an O-Cloud Node backup triggered by the O-Cloud Operator or SMO.

* + - * 1. Sequence Description

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>> Related use** |
| Goal | Create an O-Cloud Node backup, i.e., a backup of specified information on an existing O-Cloud Node. |  |
| Actors and Roles | O-Cloud Operator - The O-Cloud Operator is an entity interfacing with the SMO. |  |

|  |  |  |
| --- | --- | --- |
|  | SMO: FOCOM - The FOCOM within the SMO is the consumer that will request the O-Cloud Node backup.  IMS - The IMS processes the request of O-Cloud Node backup. |  |
| Assumptions | IMS supports backup mechanism without affecting related NF deployments and consumed O-Cloud resources. |  |
| Pre-conditions | 1. SMO is available 2. The O-Cloud has been installed and activated and is known to SMO 3. Network connectivity exists between the O-Cloud and SMO 4. Privilege - The consumer identification and privileges have been verified to be able to perform O2 operations |  |
| Begins when | This use case begins in either of these two cases:   1. The O-Cloud Operator initiates an O-Cloud Node backup creation request 2. The SMO initiates an O-Cloud Node backup creation request |  |
| Step 1.1 (ALT) | BACKUP CREATION INITIATED BY OPERATOR - An O-Cloud Node backup  creation request is initiated from the O-Cloud Operator towards SMO. O-Cloud Operator can specify the information to backup. |  |
| Step 1.2 (ALT) | BACKUP CREATION INITIATED BY SMO - An O-Cloud Node backup creation is initiated by the SMO. |  |
| Step 2 (M) | BACKUP CREATION REQUEST - The O-Cloud Node backup creation request is composed by the SMO and sent to the IMS. |  |
| Step 3 (M) | IMS PROCESSES BACKUP CREATION REQUEST - The IMS processes the  backup creation request. The IMS creates a backup of the requested O-Cloud Node information. |  |
| Step 4.1 (ALT) | BACKUP SUCCESS - The backup creation was successfully performed by the IMS without any issues. A success response is returned to the SMO by the IMS. The response can include information about the backup that has been  performed, such as time of backup, backed-up version, etc. |  |
| Step 4.2 (ALT) | EXCEPTION: UNEXPECTED CONDITION - The IMS might not be able to comply to the request. A response is sent from the IMS to the SMO. |  |
| Step 5 (M) | BACKUP CREATION RESPONSE - If the backup creation request has been initiated by the O-Cloud Operator, a backup creation response is sent back to the requesting entity. The response can include information about the backup that has been performed, such as time of backup, backed-up version, etc. |  |
| Ends when | The O-Cloud Node backup has been created successfully or when IMS encounters an unexpected condition. |  |
| Exceptions | IMS was unable to create a backup of the O-Cloud Node due to unexpected conditions. |  |
| Post-conditions | SUCCESS: The O-Cloud Node backup is created and a response to the backup creation request is sent to the requesting entity.  FAILURE: The exception response has been sent to the requesting entity. |  |
| Traceability | The requirement traceability is not present in this document version. |  |

* + - * 1. UML Sequence Diagram

![](../assets/images/c2db7040ea12.jpg)

Figure 3-23: O-Cloud Node Backup Creation

##### Criteria-Based O-Cloud Node Backup Creation Use Case

* + - * 1. High Level Description

This use case describes the criteria-based backup of O-Cloud Node information, i.e., the IMS triggers the O-Cloud Node backup creation automatically based on some configured backup criteria. It also describes how the SMO can configure the backup criteria on the IMS for automatic or periodic backups.

By configuring the backup criteria, SMO can specify the backup target, backup interval/threshold/trigger, and retention period. The backup criteria can also include an endpoint to notify the result of criteria-based backup. Authorization policy for updating the backup criteria can be included in the backup criteria.

* + - * 1. Sequence Description

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>> Related use** |
| Goal | Create an O-Cloud Node backup, i.e., backup of specified information on an existing O-Cloud Node, based on configured backup criteria. |  |
| Actors and Roles | O-Cloud Operator - The O-Cloud Operator is an entity interfacing with the SMO. |  |

|  |  |  |
| --- | --- | --- |
|  | SMO: FOCOM - The FOCOM within the SMO is the entity that will configure the O-Cloud Node backup criteria on the IMS.  IMS - The IMS processes the request for configuration of O-Cloud Node backup criteria. It also initiates the O-Cloud Node backup creation based on the backup  criteria. |  |
| Assumptions | IMS supports backup mechanism without affecting related NF deployments and consumed O-Cloud resources. |  |
| Preconditions | 1. SMO is available 2. The O-Cloud has been installed and activated and is known to SMO 3. Network connectivity exists between the O-Cloud and SMO 4. Privilege - The consumer identification and privileges have been verified to be able to perform O2 operations |  |
| Begins when | This use case begins when the O-Cloud Operator initiates a backup criteria configuration request. |  |
| BACKUP CRITERIA CONFIGURATION Steps | | |
| Step 1 (M) | BACKUP CRITERIA CONFIGURATION REQUEST - An O-Cloud Node backup  criteria configuration request is initiated from the O-Cloud Operator towards SMO. The request includes backup criteria to be configured on the IMS. |  |
| Step 2 (M) | BACKUP CRITERIA CONFIGURATION REQUEST - The O-Cloud Node  backup criteria configuration request is sent from the SMO towards IMS. The request includes backup criteria to be configured on the IMS. |  |
| Step 3 (M) | IMS PROCESSES BACKUP CRITERIA CONFIGURATION - IMS processes  the backup criteria configuration request. The IMS configures the backup criteria for automatic/periodic backup of O-Cloud Node.  The backup criteria configuration can either:   * be newly set up, e.g., by providing the necessary backup criteria * be updated, e.g., to update existing backup criteria   The backup criteria can include the backup target, interval, threshold, trigger, retention period, an endpoint to notify about events related to the backup. |  |
| Step 4.1 (ALT) | BACKUP CRITERIA CONFIGURATION SUCCESS - The backup criteria was successfully configured on the IMS without any issues. A success response is  returned to the SMO by the IMS. |  |
| Step 4.2 (ALT) | EXCEPTION: UNEXPECTED CONDITION - The IMS might not be able to comply to the request. A response is sent from the IMS to the SMO. |  |
| Step 5 (M) | BACKUP CRITERIA CONFIGURATION RESPONSE - A backup criteria  configuration response is sent back to the requesting entity. |  |
| CRITERIA-BASED BACKUP CREATION Steps | | |
| Step 6 (M) | BACKUP CREATION TRIGGER BASED ON CRITERIA - IMS triggers an O-  Cloud Node backup based on configured criteria. |  |
| Step 7 (M) | IMS CREATE BACKUP - The IMS creates a backup of O-Cloud Node information. |  |
| Step 8.1 (ALT) | BACKUP SUCCESS - The backup creation was successfully performed by the IMS without any issues. A notification can be sent from the IMS to the SMO to notify that the new backup of O-Cloud Node has been created based on backup  criteria. The notification is mandatory if the backup criteria include an endpoint to notify. |  |
| Step 8.2 (ALT) | EXCEPTION: UNEXPECTED CONDITION - The IMS might not be able to comply to the request. A notification is sent from the IMS to the SMO to notify  that the criteria-based O-Cloud Node backup has failed. The notification is mandatory if the backup criteria include an endpoint to notify. |  |
| Ends when | O-Cloud Node backup criteria has been configured successfully and O-Cloud  Node backup has been created successfully or when IMS encounters an unexpected condition. |  |
| Exceptions | 1. IMS was unable to configure backup criteria due to unexpected conditions. 2. IMS was unable to create a backup of O-Cloud Node based on backup criteria due to unexpected conditions. |  |
| Post-conditions | SUCCESS: O-Cloud backup criteria is configured and O-Cloud Node backup is created.  FAILURE: The exception response has been sent to the SMO. |  |
| Traceability | The requirement traceability is not present in this document version. |  |

* + - * 1. UML Sequence Diagram

![](../assets/images/1fdc2a184984.jpg)

Figure 3-24: Criteria-based O-Cloud Node Backup Creation

##### O-Cloud Node Backup Query Use Case

* + - * 1. High Level Description

This use case concerns the query of O-Cloud Node backup information. O-Cloud Operator can query the backup status of O-Cloud Node (such as time of backup, backed-up version) or backed-up O-Cloud Node information itself (such as backed-up software and status of O-Cloud Node) based on query filtering criteria.

* + - * 1. Sequence Description

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>> Related use** |
| Goal | Query information of one or more O-Cloud Node backups. |  |
| Actors and Roles | O-Cloud Operator - The O-Cloud Operator is an entity interfacing with the SMO. SMO: FOCOM - The FOCOM within the SMO is the consumer that will query the O-Cloud Node backup information.  IMS - The IMS processes the request to query information about the O-Cloud Node backup. |  |
| Assumptions | No assumptions. |  |
| Pre conditions | 1. SMO is available 2. The O-Cloud has been installed and activated and is known to SMO 3. Network connectivity exists between the O-Cloud and SMO 4. Privilege - The consumer identification and privileges have been verified to be able to perform O2 operations |  |
| Begins when | This use case begins when the O-Cloud Operator initiates an O-Cloud Node backup query. |  |

|  |  |  |
| --- | --- | --- |
| Step 1 (M) | BACKUP QUERY REQUEST - A request to query backup information is initiated from the O-Cloud Operator towards SMO. O-Cloud Operator can declare query filter to indicate the information to query. |  |
| Step 2 (M) | BACKUP QUERY REQUEST - A request to query backup information is sent from the SMO towards IMS. The request can include query filter to indicate the information to query. |  |
| Step 3.1 (ALT) | BACKUP QUERY SUCCESS - The query of backup information is  successfully processed by the IMS without any issues. The requested backup information of the O-Cloud Node(s) is returned to the SMO by the IMS. |  |
| Step 3.2 (ALT) | EXCEPTION: UNEXPECTED CONDITION - The IMS might not be able to comply to the request. A response is sent from the IMS to the SMO. |  |
| Step 4 (M) | BACKUP QUERY RESPONSE - A response about the query of backup information is sent back to the requesting entity. The response includes the requested information of the O-Cloud Node backup as specified by the request. |  |
| Ends when | O-Cloud Node backup information has been returned to the requesting entity successfully or when IMS encounters an unexpected condition. |  |
| Exceptions | IMS was unable to return a target O-Cloud Node backup information due to unexpected conditions. |  |
| Post-conditions | SUCCESS: O-Cloud Node backup information has been returned to the requesting entity.  FAILURE: The exception response has been sent to the requesting entity. |  |
| Traceability | The requirement traceability is not present in this document version. |  |

* + - * 1. UML Sequence Diagram

![](../assets/images/888eae4be300.jpg)

Figure 3-25: O-Cloud Node Backup Query

### Fault Use Cases

#### Alarm Subscription Use Case

##### High Level Description

This Use Case supports IMS Alarm Event Subscription as described in ETSI Sol15 Clause 5.9 [12] as a pattern, 3GPP TS29.501-G50 [13].

An alarm subscription allows for one or more consumers to receive alarm event notifications. This is accomplished by the potential subscriber(s) issuing a subscription to the publisher of alarm events.

##### Sequence Description

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>> Related use** |
| Goal | This use case describes a flow where one or more consumers to receive alarm event notifications can issue a subscription to IMS which publishes alarm events.  Each SUBSCRIBER has a *consumer subscription identifier.* There is one *consumer subscription identifier* per subscription. It doesn't have to be unique for that subscription. The consumer subscription identifier is a character string  that can be associated with meta-data within the SMO. |  |
| Actors and Roles | Alarm Event Subscriber (1..n) [e.g. SMO, could be a Proxy]. Alarm Event Publisher [e.g., IMS, DMS] |  |
| Assumptions | There can be multiple subscribers to a single publisher. The subscriber- publisher cardinality is not enforced nor monitored.  Each subscription is associated with one subscriber. Each subscription provides information about a single endpoint for receiving alarm related notifications. Thus, there cannot be multiple endpoints for sending alarm related notifications from a single subscription.  The subscriber may not be the ultimate consumer of notifications. The subscriber is not necessarily the same entity as the endpoint for notifications. |  |
| Preconditions | Operational Subscriber [1...n], Publisher.  Connectivity (Precondition) - The Subscriber has connectivity to the publisher by some mechanism. The mechanism by which the subscriber achieves connectivity to the publisher is out of the scope of this Use Case.  O-Cloud is installed, operating, and registered with SMO. |  |
| Begins when | The use case is triggered when a subscriber wishes to:   1. NOTIFICATION - A subscriber wishes to be notified of O-Cloud Faults 2. ALARM SUBSCRIPTION CHANGE - To change the characteristics of an alarm subscription a user would need to create a new alarm subscription followed by deleting the previous alarm subscription. This is done because there is no alarm subscription update procedure. The sequence is recommended to ensure that no alarms are missed during these two independent operations. 3. TRIGGER - An O-Cloud operator may also initiate a subscription. |  |
| Step 1 (M) | NOTIFICATION CRITERIA - This gives a notification criterion which initiates the subscription. |  |
| Step 2 (M) | SUBSCRIPTION - The subscriber sends an alarm event subscription TO the publisher. The subscription includes the *Consumer Subscription Identifier* |  |
| Step 3 (M) | CALLBACK NOTIFICATION CHECK (Should) - A Reachability Check can be performed between the subscriber and publisher. This is a connectivity and authorization check. This check is optional. However, it is recommended that a reachability check is performed. This step should be performed; though it is  stated as optional in ETSI SOL00015. |  |

|  |  |  |
| --- | --- | --- |
| Step 4 (M) | (ALT) REACHABILITY SUCCESS - This step indicates that the reachability check has passed successfully. |  |
| Step 5 (M) | (ALT) REACHABILITY FAILURE - This step indicates that the reachability check has failed. |  |
| Step 6 (M) | (ALT) Subscription Denied (FAILURE) - The IMS has failed the reachability check. IMS will proceed to deny the subscription. |  |
| Step 7 (M) | (ALT) SUBSCRIPTION STATUS (FAILURE) - If the reachability check has failed, the subscription status will indicate a failure. The use case will end at this point. This is a return to Step 2. |  |
| Step 8 (M) | SUBSCRIPTION ACKNOWLEDGE - The published indicates a subscription acknowledge. This essentially indicates a success for the subscription. (Optional) The *consumer subscription identifier may* be passed back in the subscription acknowledge. |  |
| Step 9 (M) | SUBSCRIPTION STATUS (SUCCESS) - A subscription status will indicate a success back to cloud operator. This is a return to Step 1. |  |
| Ends when | This use case ends when a subscription status has been sent successfully or on one of the failure cases, when there was a subscription failure. |  |
| Exceptions | FAIL CASE 1: FAILURE INDICATION - The Subscription acknowledge indicates a failure.  FAIL CASE 2: CONNECTIVITY ISSUE - Can't reach the publisher. EXCEPTION CASE 1: NON-SEQUITUR FILTER - The specified filter for the subscription has been formulated such that no alarms would ever be sent. For example, if a filter specified to give [(*all severity = major*) and (*all severity = not major*)] would never return any alarms.  ALTERNATE CASE 1: VALIDITY CHECK (Optional) - A validity check confirms the reachability of the callback endpoint, checking that the publisher has permission to reach the consumer through a TLS connection. If a validity check  is performed AND it fails, this would lead to Fail Case 2 (Connectivity Issue). |  |
| Post Conditions | 1. The publisher has the subscriber call-back (a fully qualified URL) and it is persisted. 2. The publisher has created its own internal association for subscription which   includes the consumer subscription identifier, the call-back URL and filter criteria. |  |
| Traceability | REQ-ORC-O2-21, REQ-ORC-O2-22 |  |

##### UML sequence diagram

![](../assets/images/3e7a5d4793a3.jpg)

Figure 3-26: Alarm Subscription

#### Alarm Notification Use Case

##### High Level Description

This Use Case supports Alarm Notification(s) by the alarm publisher (IMS). A condition occurs on an O-Cloud resource which causes the current alarm list to change. This triggers an evaluation of the alarm subscription criteria by the publisher (IMS). If deemed relevant by the subscription criteria, the alarm is sent to the subscription endpoint. The alarm is sent in an alarm notification which is an event that carries the details of these relevant alarms. Alarm

notifications are sent from a publisher to subscriber(s). See the Alarm subscription use case for more details on Alarm subscriptions.

When the fault(s) that caused an alarm has been cleared, the IMS determines which alarm to be cleared, clears the alarm, logs the alarm clearance, and reports it to alarm subscriber (FOCOM).

##### Sequence Description

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>> Related use** |
| Goal | This use case describes the series of actions that occur when a O-Cloud resource encounters a fault that eventually results in an alarm being published by the Alarm Event Publisher (IMS).  All faults are *logged* by the O-Cloud. Note that *simple devices* may not have  the ability to log their faults, hence the O-Cloud would log faults for them. Log management is an area of LCM/FCAPS. |  |
| Actors and Roles | O-Cloud Resource - This is a resource in the O-Cloud that encounters a fault. See WG6 O2 CADS [7] for definition of an O-Cloud Resource.  Alarm Event Publisher - The IMS is the owner of the O-Cloud alarms. The IMS raises the Alarm. The IMS may use other internal functions to help determine whether faults should become alarms. The O-Cloud or O-Cloud resource might remediate a fault obviating the need to raise an alarm.  Alarm Event Subscriber (1..n) - This entity has subscribed to the publisher successfully. For the IMS case, it would be the FOCOM. |  |
| Assumptions | There can be multiple subscribers (SMOs) to a single publisher (IMS).  Each subscription is associated with a particular subscriber. You do not get multiple endpoints for multiple consumers of it. The subscriber could be a proxy.  A *fault* is an error that the O-Cloud resource detects. All faults should be stored and logged in the O-Cloud resource. An *Alarm* is a notification to an end user of a problem that might need their attention. Note that not all faults need to be raised and reported as alarms from the publisher. |  |
| Preconditions | The subscriber has successfully completed an alarm event subscription (Use Case) |  |
| Begins when | This use case begins in one of two cases:   1. A fault or fault clearance is detected or reported from an O-Cloud resource. 2. Alarm has been cleared. |  |
| Step 1.1 (M) | FAULT 1 DETECTED - An O-Cloud resource encounters failure #1, or fault #1 is detected. |  |
| Step 1.2 (M) | FAULT 2 DETECTED - That O-Cloud resource also detects another fault: failure #2, or fault #2. |  |
| Step 1.3 (M) | FAULT LOGGED - The O-Cloud resource logs both the faults. Fault #1 and Fault #2 are logged internally to the resource. |  |
| Step 2 (O) | ALARM ANALYSIS (OPTIONAL) - The O-Cloud itself remediates faults if possible. For example, the resource or O-Cloud may resolve fault 1. The O- Cloud evaluates what faults should become alarms. For example, it may determine that fault 2 should be raised as an alarm and not fault 1. Analysis is done to determine if the fault(s) should become alarms. The O-Cloud or O- Cloud resource might remediate a fault obviating the need to raise an alarm. The O-Cloud implementer decides what O-Cloud resource faults should  become alarms. |  |
| Step 3 (O) | ALARM ENRICHMENT & CORRELATION (OPTIONAL) - Alarm analysis  might be performed. Alarm correlation might be performed as described in the O2 GA&P [9]. |  |

|  |  |  |
| --- | --- | --- |
| Step 4 (O) | ALARM ESCALATION (OPTIONAL) - Alarm escalation might be performed as described in the O2 GA&P [9]. |  |
| Step 5 (M) | ALARM LOGGED - The IMS logs all alarm(s). |  |
| Step 6 (M) | ALARM FILTERING & PUBLISHING - Alarm Filters are evaluated. If the alarm is not filtered by the subscription criteria, the Alarm is published by the alarm event publisher (IMS) for any subscriber. The Alarm is then reported to the FOCOM subscriber. This use case flow illustrates that even though multiple faults were raised on an O-Cloud resource only one alarm was raised in this case. Either success or failure of the alarm notification should be  logged. |  |
| Step 7.1-7.2 (ALT) | FAULT CLEARED AND LOGGED - An O-Cloud resource fault(s) has been cleared and the O-Cloud resource logs the fault(s) clearance. |  |
| Step 8 (M) | ALARM ANALYSIS -The IMS determines which alarm to be cleared by the fault clearance. |  |
| Step 9 (O) | ALARM CORRELATION (OPTIONAL) - Alarm correlation might be performed as described in the O2 GA&P [9]. |  |
| ALT | ALARM CLEARANCE BY SMO OR IMS REQUEST - The Alarm is cleared by FOCOM or IMS using the Alarm Acknowledge/Clear Use Case.  One of the following sets of steps is used;   1. For SMO-initiated Alarm clearance, Step 2 Alarm Clear Request of SMO- initiated Alarm Clear case in Alarm Acknowledge/Clear Use Case 2. For IMS-initiated Alarm clearance, Step 1 Autonomously Initiated Alarm Clear of IMS-initiated Alarm Clear case in Alarm Acknowledge/Clear Use   Case | 3.7.7 Alarm Acknowledge/Clear Use Case |
| Step 10 (M) | ALARM CLEARANCE LOGGED - The IMS logs all alarm clearances. |  |
| Step 11 (ALT) | ALARM CLEARANCE REPORTED - The Alarm clearance is published by the alarm event publisher (IMS) for any subscriber. The Alarm clearance is then reported to the FOCOM subscriber. |  |
| ALT | EXCEPTION: UNEXPECTED CONDITION - The IMS might not be able to process the Alarm Clearance Notification operation. No notification to the SMO is possible for the failure case. |  |
| Ends when | This use case ends when the Alarm Notification has been sent, or on one of the error cases. |  |
| Exceptions | (Alt 1) - Faults are filtered by the O-Cloud. For example, fault 1 has been resolved/filtered, and only fault 2 is reported.  (Alt 2) - IMS filters on what should be reported, and in this example, alarm 2 passed the filter so it is reported. |  |
| Post Conditions | Alarms that pass filters are published to subscribers with a valid subscription. |  |
| Traceability | REQ-ORC-O2-16 |  |

##### UML sequence diagram

![](../assets/images/6f6b153f99b8.jpg)

Figure 3-27: Alarm Notification

#### Alarm Query Use Case

##### High Level Description

This Use Case supports Alarm Query (Alarm History) for O2ims. Alarm query allows for the SMO to query for specific kinds of alarms or groups of alarms based on the alarm query criteria. This is useful for an operator to investigate, track, or debug a system.

##### Sequence Description

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>> Related use** |
| Goal | This Use Case describes the query for alarm(s) from resources. The SMO queries for specific kinds of alarms or groups of alarms through query criteria. Alarms are managed by the O-Cloud and this use case allows a user (SMO) to request for a set of alarms based on the query criteria.  The alarm query criteria specify the alarm characteristics which are to be matched by IMS alarms to be returned as an alarm query results.  In the IMS case, A fault query is a message which is expecting a response message from the IMS which matches the query criteria. FOCOM (SMO) queries the IMS for alarms over O2ims.  Alarm queries within certain periods of time can be used for reconciliation. Combinations of alarm queries can be used for analysis.  An "alarm status" for all the O-Cloud resources can be accomplished by an alarm query with a criterion of "all O-Cloud resources" and "all alarms" (on those resources). |  |
| Actors and Roles | SMO - The FOCOM within the SMO is used in this use case to represent any consumer of the query service.  IMS - The IMS within the O-Cloud is used to represent any provider of the query service. |  |
| Assumptions | The NFO (SMO) can query for alarms WITHOUT an alarm subscription to the IMS.  There is no relationship between an alarm subscription's filter criteria and an alarm query's criteria. |  |
| Preconditions | SMO has connectivity to IMS/DMS. |  |
| Begins when | This use case begins when the cloud operator at the SMO (subscriber) initiates an Alarm Query. |  |
| Step 1.1 (O) | (Alt) ALARM QUERY INITIATED FROM OPERATOR - An alarm query is  initiated from the Operator to the FOCOM with query criteria that specifies what type of alarms the operator is interested in. |  |
| Step 1.2 (O) | (Alt) ALARM QUERY INITIATED FROM SMO - An alarm query may also be initiated from the FOCOM (SMO) with query criteria that specifies what type of alarms to retrieve from the IMS. |  |
| Step 2 (M) | ALARM QUERY FROM FOCOM TO IMS - An alarm query is processed by the FOCOM (SMO) towards the IMS in the O-Cloud with the alarm query criteria. |  |

|  |  |  |
| --- | --- | --- |
| Step 3 (M) | (ALT) SUCCESSFUL ALARM RESPONSE - The response is returned in response for the Alarm Query with alarm content matching the alarm query criteria.  NOTE 1: An alarm query on an O-Cloud resource with no alarms will return a successful alarm response with a null set of alarms.  NOTE 2: To get historical alarms the cloud operator would just perform an alarm query with the appropriate criteria. *For example*, an alarm query with the criteria to request for all alarms with *cleared status* would return historical  alarms based on the retention policy of the alarm list. |  |
| Step 4 (M) | (ALT) ALARM OBJECT NOT FOUND - This is an alt step. This is an exception case for the Alarm Query basic case. In this situation, the alarm that was to be queried was not found. A "alarm not found" response is sent to the subscriber. For example, an alarm query was performed on a non-existent O-  Cloud resource. |  |
| Step 5 (M) | (ALT) ALARM NO CONTENT - This is an alt step. This is an exception case for the Alarm Query basic case. In this situation, the query parameters returned no content (an empty set). A "no content" response is sent to the subscriber. For  example, if the given criteria [(*all severity = major*) and (*all severity = not major*)] would never return any alarms. |  |
| Step 6 (M) | (ALT) ALARM OTHER QUERY FAILURE - This is an alt step. This exception case occurs when the Alarm Query encounters a problem that is not defined as part of this scenario. |  |
| Ends when | This scenario ends at any of the ALT cases, or with a successful Alarm Query response. |  |
| Exceptions | This use case can encounter three basic alternate cases.  OBJECT NOT FOUND - The first an alarm query is attempted on a non- existent O-Cloud resource.  NO CONTENT - The second alternate case is a "No Content" case where the Query parameters return an empty set.  OTHER QUERY FAILURE - A problem occurs that is not defined as part of this use case. |  |
| Post Conditions | Alarms are returned matching the criteria in the query have been returned |  |
| Traceability | REQ-ORC-O2-17, REQ-ORC-O2-18 |  |

##### UML sequence diagram

![](../assets/images/ceabd92ff86d.png)

Figure 3-28: Alarm Query

#### IMS Alarm Subscription Query Use Case

##### High Level Description

This use case is about the Management of Alarm Subscriptions; in particular, the query service operation. The create and delete of an Alarm Subscription is documented in separate use cases. This use case only concerns the query of an Alarm Subscription. Query (cf. query-response) and Read (cf. CRUD operations) are synonymous in this situation.

The query of an Alarm Subscription is the ability of an authorized entity to get the details of an Alarm Subscription including its criteria. An entity here would usually be the SMO or O-Cloud Operator; however, it could also be another authorized user/technician, or authorized management function. Typically, an entity would perform a subscription query to cross-check their alarm subscription. Though, it could also be utilized for management purposes as well.

##### Sequence Description

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>> Related use** |
| Goal | An entity (typically the SMO), desires to query the Alarm Subscription(s) from the IMS. Hence, this use case will describe the query of Alarm Subscription(s). |  |

|  |  |  |
| --- | --- | --- |
|  | Query (cf. query-response) and Read (cf. CRUD operations) are synonymous in this situation.  NOTE 1: An entity may be any authorized user or authorized management function.  NOTE 2: This use case is one in a series of use cases related to alarm subscription management (CRD operations). The create and delete Alarm Subscription operations are described in other use cases.  NOTE 3: The IMS could have more than one alarm subscription. This use case covers the query of one or multiple alarm subscription(s). |  |
| Actors and Roles | O-Cloud Operator - The O-Cloud operator is a user that is interested in getting alarm subscription query results.  SMO (FOCOM) - The FOCOM within the SMO is used in this use case to represent any consumer of the alarm subscription query service.  IMS - The IMS within the O-Cloud is used to represent any provider of the alarm subscription status query service. |  |
| Assumptions | There are no assumptions. |  |
| Preconditions | Connectivity - The Subscriber has connectivity to the publisher by some mechanism. The mechanism by which the subscriber achieves connectivity to the publisher is out of the scope of this Use Case.  O-Cloud Operational - The O-Cloud is installed, operating, and registered with the SMO.  Privilege - The consumer identification and privileges of a SMO user have been verified to be able to perform O2 operations. |  |
| Begins when | QUERY SUBSCRIPTION - The use case begins when an operator at the SMO wishes to query the alarm subscription(s). |  |
| Step 1 (M) | QUERY ALARM SUBSCRIPTION REQUEST - The O-Cloud operator initiates a query for alarm subscription(s) with query criteria. |  |
| Step 2 (M) | QUERY ALARM SUBSCRIPTION REQUEST - The query subscriber subscription request is issued from FOCOM (SMO) to the publisher (IMS) with query criteria.  NOTE 4: The query criteria could include the *Consumer Subscription Identifier(s).* |  |
| Step 3 (ALT) | SUCCESSFUL ALARM SUBSCRIPTION QUERY - A connection  authentication is verified by the publisher (IMS). This is a standard type of check and a standard response would be issued in this case. The query request operation is processed by the publisher. If the query request results in alarm subscription(s) matching the query criteria, then a success response is sent to FOCOM (SMO). |  |
| Step 4 (ALT) | EXCEPTION: QUERY OF NON-EXISTING ALARM SUBSCRIPTION - If the  query operation results in no alarm subscription that matches the query criteria, then an alarm subscription not found is issued back to the requestor.  For example, if a *consumer subscription identifier* does not match any alarm subscription, this exception would be encountered. |  |
| Step 5 (ALT) | EXCEPTION: Unexpected Condition - The IMS might not be able to comply to the request. There might have been a software issue trying to process the alarm subscription query request. |  |

|  |  |  |
| --- | --- | --- |
| Step 6 (M) | QUERY ALARM SUBSCRIPTION RESPONSE - The result of the Alarm Subscription Query is communicated from FOCOM back to O-Cloud operator. This is a return/response for Step 1. |  |
| Ends when | This Use Case ends under two cases:  EXCEPTION CASE - The use case ends when there an exception case is encountered. For example, when a requestor tries to perform a query operation on a non-existent alarm subscription.  QUERY OPERATION SUCCEEDS - The use case will end if the query operation of alarm subscription successfully completed. |  |
| Exceptions | EXCEPTION CASE: NON-EXISTENT SUBSCRIPTION - The query operation  requesting a non-existent alarm subscription.  EXCEPTION CASE: Unexpected Condition - The IMS might not be able to comply to the alarm subscription query request. In this case, the unexpected condition exception is encountered. |  |
| Post-conditions | SUCCESS: The alarm subscription has been returned to the requestor (O- Cloud operator)  FAILURE: An exception notification of a non-existent subscription has been issued. |  |
| Traceability | REQ-ORC-O2-21, REQ-ORC-O2-22, REQ-ORC-O2-15 |  |

##### UML Sequence Diagram

![](../assets/images/3e7a5d4793a3.jpg)

Figure 3-29: IMS Alarm Subscription

#### IMS Alarm Subscription Delete Use Case

##### High Level Description

This use case is about the Management of Alarm Subscriptions; in particular, the delete service operation. The create and query of an Alarm Subscription is documented in separate use cases. This use case only concerns the delete of an Alarm Subscription.

The delete of an Alarm Subscription is the ability of an authorized entity to delete an Alarm Subscription at the IMS. It is also possible to delete all alarm subscriptions associated with the consumer subscription identifier. An entity here would usually be the SMO; however, it could also be another authorized user/technician, or authorized management function.

There is no update operation for an Alarm Subscription. To accomplish an update, an entity would need to first delete a subscription and then create a subscription with the desired subscription criteria.

Any subscription operations that change a subscription shall be logged. Therefore, the delete and create of an alarm subscription shall also be logged. The logging occurs at the O-Cloud IMS.

##### Sequence Description

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>> Related use** |
| Goal | An entity (typically the SMO), desires to delete an Alarm Subscription in the IMS. Hence, this use case will describe the delete of an Alarm Subscription.  NOTE 1: An entity may be any authorized user or authorized management function).  NOTE 2: This use case is one in a series of use cases related to alarm subscription management (CRD operations). The Alarm Subscription Create and Alarm Subscription Query operations are described in other sister use cases. |  |
| Actors and Roles | O-Cloud Operator - The O-Cloud operator is a user that is interested in deleting an alarm subscription.  SMO (FOCOM) - The FOCOM within the SMO is used in this use case to represent any entity interested in deleting an alarm subscription.  IMS - The IMS within the O-Cloud is used to represent any owner of the alarm subscription. |  |
| Assumptions | The entity that owns the alarm subscription owns the security associated with the alarm subscription. This would be FFS to resolve. |  |
| Preconditions | Connectivity - The IMS and FOCOM has connectivity to each other.  O-Cloud Operational - The O-Cloud is installed, operating, and registered with the SMO.  Privilege - The SMO user identification and privileges have been verified to access the delete alarm subscription API. |  |
| Begins when | The use case begins when an operator at the SMO wishes to delete an existing subscription |  |
| Step 1 (M) | Delete Alarm Subscription Request - A request to delete an alarm subscription(s) is initiated by an authorized entity towards the FOCOM.  NOTE 3: The request may also delete all alarm subscriptions associated with the consumer subscription identifier. |  |
| Step 2 (M) | Delete Alarm Subscription Request - A request to delete an alarm subscription(s) is processed by the FOCOM. Privileges are verified. Then, if allowed, FOCOM initiates a request towards the IMS. |  |
| Step 3 (ALT) | EXCEPTION: Alarm Subscription Not Found - Alarm subscriptions are searched to see if it exists at the IMS. If they do not exist, then the IMS responds with an alarm subscription not found. |  |
| Step 4 (M) | Alarm Subscription Not Found - An alarm subscription not found is returned to the requestor by the SMO. In this situation, the Use case ends. |  |

|  |  |  |
| --- | --- | --- |
| Step 5 (ALT) | EXCEPTION: Privilege Not Found - The IMS verifies that the requestor has the privilege to delete the alarm subscription. If privilege check fails, then the IMS responds with an unauthorized request.  NOTE 4: The details about how the IMS verifies that the user has the authentication (privilege) to delete an alarm subscription is FFS.  NOTE 5: The *Alarm Subscription identifier* is an identifier associated with the Alarm Subscription which is created and associated by the IMS. Additionally, an Alarm Subscription also has a *Consumer Subscription Identifier* which is the owner of that Alarm Subscription. See the Alarm Subscription Use Case to see how these are used. |  |
| Step 6 (M) | EXCEPTION: Privilege Not Found - The SMO sends an unauthorized request is returned to the requestor. In this situation, the Use case ends. |  |
| Step 7 (ALT) | EXCEPTION: Unexpected Condition - The IMS might not be able to comply to the request. There might have been a software issue trying to process the alarm subscription query request. The IMS informs the SMO of the response. |  |
| Step 8 (M) | EXCEPTION: Unexpected Condition - A response is sent to the requesting entity from the SMO, that the IMS encountered an unexpected condition processing the request. The Use Case ends. |  |
| Step 9 (ALT) | Delete Subscription Success - The IMS processes the delete alarm subscription operation. A response is sent from the IMS to the SMO. |  |
| Step 10 (M) | Delete Alarm Subscription Response - The delete alarm subscription response is sent to the requestor. |  |
| Ends when | The Use Case Ends when either an alarm subscription deletion has successfully been accomplished or one of the three alt & exception cases have been encountered. |  |
| Exceptions | Alarm Subscription Not Found - If the requested alarm subscription to be deleted is not found, this alt case is encountered.  Privilege Not Found - If the requestor does not have the proper privilege to delete the alarm subscription this exception is encountered.  Unexpected Condition - The IMS might not be able to comply to the request. |  |
| Post-conditions | SUCCESS: The requested alarm subscription to be deleted has been removed at the IMS.  FAILURE: The request was not able to be completed, and either the alarm subscription was not deleted, or it never existed in the first place. |  |
| Traceability | REQ-ORC-O2-23, REQ-ORC-O2-24, REQ-ORC-O2-15 |  |

##### UML Sequence Diagram

![](../assets/images/ee2700a80f66.jpg)

Figure 3-30: IMS Alarm Subscription Deletion

#### Alarm Synchronization Use Case

##### High Level Description

This use case is for Alarm Synchronization. This is a special case, though commonly employed situation, for Alarm Query.

Alarm Synchronization is an Alarm Query on all the alarms of interest. Synchronization is just an alarm query operation with a specific query for all alarm changes within a specific time frame.

The Alarm Synchronization result is the same as a "Get Alarm List" with the entire list requested.

Alarm synchronization may be performed on demand left up to the consumer when to issue the operation.

One example of where alarm synchronization would be used is a situation where the communication link between the client (such as the SMO) and source of truth (such as the O-Cloud) might become disconnected or disrupted. In this case, the client will want to synchronize with the source of truth after a connect is re-established.

A situation might arise such that during the time of disconnection between the O-Cloud and the management layer (FOCOM/SMO), an alarm appeared and was cleared. From the Alarm Query Use case: to get historical alarms, the cloud operator would just perform an alarm query with the appropriate criteria. For example, an alarm query with the criteria to request for all alarms with cleared status would return the historical alarms based on the retention policy of the alarm list. Thus, to perform an Alarm Synchronization for alarm with a long communication outage time an operator could perform this type of operation to synchronize historical alarm lists as well.

##### Sequence Description

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>> Related use** |
| Goal | There are many potential situations where a client and source of truth might become disconnected or disrupted. In this case, the client will need to synchronize with the source of truth after it is able to reconnect.  The Alarm synchronization is a Query on all the active alarms or all alarms of interest.  For example, network fault might prevent communication between the FOCOM/SMO (client), IMS and the O-Cloud infrastructure resources. By the time connectivity has been restored, many new alarm conditions might have arisen and logged. This would motivate the FOCOM/SMO to resynchronize to get the current alarms again. A variety of mechanisms might be used to trigger alarm resynchronization. It might also trigger an upload of the most recent alarm  logs. |  |
| Actors and Roles | O-Cloud Operator - A Cloud Service Provider (CSP) or entity using the SMO.  FOCOM/SMO - The FOCOM within the SMO is used in this use case to represent any consumer of the alarm notification service.  IMS - The IMS in the O-Cloud is the publisher |  |
| Assumptions | Each subscription is associated with a particular subscriber. You do not get multiple endpoints for multiple consumers of it. Furthermore, the subscriber could be a proxy.  NOTE 1: As per the GA&P basic concepts, the O-Cloud is the source of truth for the alarms. |  |
| Preconditions | CONNECTIVITY: SMO has connectivity to IMS in O-Cloud.  SUBSCRIPTION: The subscription Use Case has been successfully executed resulting in the subscriber having a subscription to IMS alarm notifications. |  |

|  |  |  |
| --- | --- | --- |
|  | NOTE 2: there might have previously been a network disruption between the SMO and IMS, but that connection has been restored. |  |
| Begins when | This use case begins when in one of three cases:   1. When the cloud operator at the SMO (subscriber) initiates an Alarm Synchronization operation. 2. When the SMO initiates an alarm synchronization.   Or when the IMS has determined that an alarm synchronization should be performed. |  |
| Step 1.1 (ALT) | ALARM QUERY - An alarm synchronization request is initiated from the O- Cloud Operator towards SMO. The alarm synchronization operation is a query for all alarms of interest. |  |
| Step 1.2 (ALT) | ALARM QUERY - An automatically initiated alarm synchronization from the SMO (FOCOM) towards IMS. Some service in the SMO would trigger this operation. The alarm synchronization operation is a query for all alarms of interest. |  |
| (REF) | ALARM QUERY - Steps 2-6 of the alarm Query Use Case are performed with a filter of "return all alarms of interest". (See the Alarm Query Use Case for more details).  The Alarm Query occurs FROM the FOCOM (SMO) TOWARDS the IMS. |  |
| Step 2 (M) | CORRELATE DATA - The response from the IMS is received by the SMO. The SMO performs a correlation between the alarm data that it has with the alarm data it received from the IMS to identify and resolve discrepancies. |  |
| **IMS Initiated alarm synchronization** | | |
| Step 3 (M) | IMS INITIATE SYNCHRONIZATION - An automatically initiated request to perform an alarm synchronization operation is generated from the IMS towards the SMO (FOCOM). Some condition or service in the IMS has determined that an alarm synchronization should be performed. |  |
| (REF) | ALARM QUERY - Steps 2-6 of the alarm Query Use Case are performed with a filter of "return all alarms of interest". (See the Alarm Query Use Case for more details).  The Alarm Query occurs FROM the FOCOM (SMO) TOWARDS the IMS. |  |
| Step 4 (M) | CORRELATE DATA - The response from the IMS is received by the SMO. The SMO performs a correlation between the alarm data that it has with the alarm data it received from the IMS to identify and resolve discrepancies. |  |
| Ends when | This use Case ends when an exception case is encountered, or the alarm query has been successfully performed.  No new end conditions come with this use case. See the Alarm Query Use Case for more details on the exception cases. |  |
| Exceptions | Typically, when an alarm synchronization is performed, it will perform a query on all the alarms of interest.  The "object not found" and "alarm no content" are exceptions that would not be expected to be encountered performing this use case. The only exception might be "ALARM OTHER QUERY FAILURE". It might be possible that these other exceptions might be encountered in rare circumstances. See the Alarm Query Use Case for more details. |  |
| Post-conditions | SUCCESS: Alarms are returned matching the criteria in the query have been returned.  In this case, all alarms of interest have been received. |  |

|  |  |  |
| --- | --- | --- |
|  | FAILURE: An exception has been encountered and the use case ends with an exception response. |  |
| Traceability | REQ-ORC-O2-25, REQ-ORC-O2-26 |  |

##### UML Sequence Diagram

![](../assets/images/a6736e6a4ee1.jpg)

Figure 3-31: Alarm Synchronization

#### Alarm Acknowledge/Clear Use Case

##### High Level Description

This Use Case relates to Alarm Supervision. It is expected that some O-Cloud infrastructure resources can experience alarm conditions that need to be managed or cleared.

This use case is used for a management entity to acknowledge or request for alarm(s) to be cleared. It is also used for the IMS to clear alarm(s) autonomously. It is expected that some resources could have some alarms that can be manually cleared while other alarms would be automatically cleared.

Acknowledgement of alarms means that a resource type has defined alarms that may require further human intervention; and that the acknowledge function allows an entity to recognize that the condition exists, and that further action might need to be taken.

Some alarms, based on the resource type, may have alarms that can be manually cleared after they have been raised.

##### Sequence Description

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>> Related use** |

|  |  |  |
| --- | --- | --- |
| Goal | This use case related to alarm acknowledge and alarm clear. Alarms can either be automatically or manually cleared.  This use case deals with clearing of O-Cloud alarms manually by a managing entity.  Acknowledge alarms allows for the IMS to track a state change related to an alarm condition that requires acknowledgement. |  |
| Actors and Roles | O-Cloud Operator - A Cloud Service Provider (CSP) or entity using the SMO. FOCOM (SMO) - The FOCOM within the SMO is used in this use case to represent any consumer of the alarm notification service.  IMS - The IMS in the O-Cloud is the publisher. The source of truth for the alarm request to be acknowledged or cleared. |  |
| Assumptions | The SMO is subscribed to notifications from the IMS related to fault management such as clear alarm notifications. | 3.7.1 Alarm Subscription Use Case |
| Preconditions | Connectivity - SMO has connectivity to IMS in O-Cloud. Registered - O-Cloud has registered its IMS with the SMO.  Privileges - The identification & privileges of a SMO user has been verified. |  |
| Begins when | This use case begins when in one of two cases:   1. The O-Cloud operator initiates an alarm acknowledge / clear request. 2. The FOCOM (SMO) initiates an alarm acknowledge / clear request. |  |
| Operator/SMO-INITIATED ALARM ACKNOWLEDGE/CLEAR Steps | | |
| Step 1.1 (ALT) | ALARM ACKNOWLEDGE/CLEAR INITIATED - An alarm acknowledge/clear request is initiated from the O-Cloud Operator towards FOCOM (SMO). The alarm acknowledge/clear operation will request for one or more alarm(s) that are present at the O-Cloud Operator to be either acknowledged or cleared.  NOTE 1: Either Step 1.1 or Step 1.2 is performed. |  |
| Step 1.2 (ALT) | ALARM ACKNOWLEDGE/CLEAR INITIATED - An alarm acknowledge/clear request is initiated by the FOCOM (SMO) to the IMS. The alarm acknowledge/clear operation will request for one or more alarm(s) that are present at the FOCOM to be either acknowledged or cleared.  NOTE 2: Either Step 1.1 or Step 1.2 is performed. |  |
| Step 2 (M) | ALARM ACKNOWLEDGE/CLEAR REQUEST - An alarm acknowledge/clear request is composed and sent to the IMS. |  |
| Step 3 (M) | IMS PERFORMS ALARM ACKNOWLEDGE/CLEAR - The IMS performs the  alarm acknowledge/clear on the O-Cloud alarms. The IMS is the manager of O-Cloud alarms. |  |
| Step 4 (ALT) | ALARM ACKNOWLEDGE/CLEAR SUCCESS - The alarm acknowledge/clear operation was successfully performed by the IMS without any issues. A success response is returned to the FOCOM by the IMS.  For an alarm clear success - the IMS has cleared the alarm. For an alarm acknowledge success - the IMS has registered the acknowledgement of the alarm; but the alarm remains present. |  |
| Step 5 (ALT) | EXCEPTION: ALARM NOT FOUND - If the alarm acknowledge/clear operation was requested on an alarm that does not exist at the IMS, then an alarm not found is returned to FOCOM.  NOTE 3: This means that the FOCOM or O-Cloud Operator has the alarm present, but a mismatch has occurred between them and the IMS. In this  case, an Alarm Synchronization operation might be appropriate. It might also require additional human intervention to rectify the problem. |  |
| Step 6 (ALT) | EXCEPTION: UNEXPECTED CONDITION- The IMS might not be able to comply to the request, or there is an issue with the IMS interworking with the O-Cloud resource such that it is not able to perform the alarm/events acknowledge/clear operation. A response is sent from the IMS to the SMO. NOTE 4: It is expected that the IMS will clear its alarm. Subsequently, it will try to clear the fault associated with the alarm on the actual O-Cloud resource. If that operation fails, an unexpected condition will result.  NOTE 5: The implementation should as far as possible, try to give a response to indicate if it is necessary to acknowledge / clear the alarm again, and what  state the resource would be left in. |  |
| Step 7 (O) | ALARM ACKNOWLEDGE/CLEAR STATUS RESPONSE - An alarm  acknowledge/clear status response is sent back to the requesting entity. The Use Case ends. |  |
| Step 8 (O) | ALARM ACKNOWLEDGE/CLEAR NOTIFICATION - After alarm  acknowledge/clear, an alarm acknowledge/clear notification may be sent to the FOCOM by the IMS using the Alarm Notification Use Case. | 3.7.2 Alarm Notification Use  Case |

|  |  |  |
| --- | --- | --- |
| IMS-INITIATED ALARM CLEAR Steps | | |
| Step 1 (M) | ALARM CLEAR INITIATED - An alarm clear is initiated by the IMS. |  |
| ALT | ALARM CLEAR NOTIFICATION - The alarm clear operation was successfully  performed by the IMS without any issues. An alarm clear notification is sent to the FOCOM by the IMS using the Alarm Notification Use Case. | 3.7.2 Alarm  Notification Use Case |
| ALT | EXCEPTION: UNEXPECTED CONDITION - The IMS might not be able to  process the Alarm Clear operation. No notification to the SMO is possible for the failure case. |  |
| Ends when | This use case ends if the Alarm is not found, or the IMS encounters an unexpected condition, or a successful alarm acknowledge/clear has been  performed and Alarm Acknowledge / Clear Notification is sent to the FOCOM by the IMS. |  |
| Exceptions | ALARM NOT FOUND - if the request alarm(s) to be acknowledge/clear are not present at the IMS, this exception is encountered.  UNEXPECTED CONDITION - If the IMS was unable to perform the alarm acknowledge/clear operation, this exception is encountered. |  |
| Post-conditions | SUCCESS:(1) Response to the Alarm Acknowledge & Clear request is sent to the requesting entity (2) (clear) The alarm(s) at the O-Cloud have been cleared. (3) (acknowledge) The alarm(s) at the O-Cloud have been acknowledge. (4) Alarm Acknowledge / Clear Notification is sent to the FOCOM.  FAILURE:(1) One of the exception responses has been sent to the requesting entity (see above). (2) Depending on the exception, the alarm may still exist at the O-Cloud/IMS. |  |
| Traceability | REQ-ORC-O2-27, REQ-ORC-O2-28, REQ-ORC-O2-29, REQ-ORC-O2-30 |  |

##### UML Sequence Diagram

![](../assets/images/68da14206457.jpg)

Figure 3-32: Alarm Acknowledge/Clear

#### Log Query

##### High Level Description

This use case describes log query. Logs could be queried by the SMO to the IMS via O2. A user, application, or entity can query for logs that are available in the Cloud: both O-Cloud (exposed /IMS) and Cloud Infrastructure. Any log kept in the Cloud infrastructure might be queried through a user interface client or file transfer client such as CLI, SSH2, SFTP; this would be implementation specific.

There are three basic kinds of logs that might be kept within the Cloud (both exposed O-Cloud and Cloud infrastructure):

**ALARM LOGS** - Alarm logs are a record of the alarms that have been raised by the IMS. The IMS keeps and produces an Alarm Log. It is expected that the IMS logs every alarm that it sends to the FOCOM (SMO). Faults are transformed into Alarms by the IMS. Alarm Logs are exposed in an O-Cloud to northbound entities.

**FAULT LOGS** - Faults are kept in the Cloud infrastructure. Faults are raised by a Cloud Infrastructure Resource. Faults are transformed into alarms by the IMS. Thus, not every fault is an alarm. Not all faults are necessarily logged, and the Cloud Infrastructure Resource may keep fault log(s). The creation and operation of Fault Logs is up to implementation. Disclaimer: some implementations could combine Fault and Debug logs together. Fault logs are not necessarily exposed to northbound entities.

**DEBUG LOGS** - The creation and operation of Debug Logs is up to implementation. They might be able to be turned off. The log level would typically be configurable (at the source, middle, and end user level). For example, a typical implementation may use syslog (defined in RFC5424 [21]) which defines a "log level" to show informational (most detail), trace, warnings, errors, to critical (least detail) messages. Disclaimer: some implementations could combine Fault logs and Debug logs together. Debug logs are not necessarily exposed to northbound entities.

**OTHER LOGS** - There may be other logs besides Alarm, Fault and Debug logs that might be kept in the O-Cloud. This would be left to implementation.

The conclusion of this use case may provide either:

* Pull Case - A consumer retrieve the log(s) after being given an endpoint, or
* Push Case - The producer gives a consumer log(s) that match input criteria.

Because this is left to implementation, this use case will address both types as alternate flows. For example, an endpoint might be an IP address, where a user, application, or entity could then use a file transfer client to get logs from. When it is an endpoint, it can have data related to the endpoint not just an IP address.

NOTE: the SMO will likely need to be able to inter-operate with different and sometimes legacy IMS implementations. It is expected that the SMO would need to be able to support both paradigms: one where the IMS returns Log Files from a Log Query request and another where the IMS returns an endpoint and then for the SMO to later fetch Log Files.

##### Sequence Description

|  |  |  |
| --- | --- | --- |
| **USE CASE STAGE** | EVOLUTION / SPECIFICATION | **<<Uses>>**  **Related Use** |
| **Use Case Title** | Log Query Use Case |  |
| **Goal** | This use case deals with the query of the Logs kept in the O-Cloud. This use case has three basic goals:   1. RETRIEVE LOGS - It allows an entity to query for logs based on the request query filter. For example, you could ask for all the alarms and faults in the O-Cloud or ask for all the faults within a certain timeframe, or query for log entries that are occurring frequently. This use case concerns the retrieval and reading of logs within the O-Cloud that are present and managed by the IMS. 2. SYSTEM PROBING - To emulate a "get status" an operator or entity could query for logged faults and alarms that have not been cleared. 3. ASSISTING INVESTIGATIONS - Logs are typically used to assist in investigations.   NOTE 1: The IMS shall store Alarm Logs. Log management is an area of LCM/FCAPS. 3GPP uses the term "*Alarms list*".  The IMS may store Faults and Debug Logs, however this would be implementation specific. |  |

|  |  |  |
| --- | --- | --- |
|  | NOTE 2: see GA&P basic concepts, not all faults are transformed into Alarms. |  |
| **Actors and Roles** | O-Cloud Operator - A Cloud Service Provider (CSP) or entity using the SMO.  FOCOM (SMO) - The FOCOM within the SMO is used in this use case to represent any consumer of Logs in the O-Cloud.  IMS - The IMS in the O-Cloud creates Logs.  NOTE 3: the O-Cloud infrastructure resources may also create fault and debug logs. |  |
| **Assumptions** | All faults are *logged* by the O-Cloud. Note that *simple devices* may not have the ability to log their faults, hence the O-Cloud would log faults for them.  Logs events are time and date stamped. Log events have a severity and source associated with them.  Logs are not kept indefinitely. But it left up to implementation how older events are rotated out. |  |
| **Preconditions** | CONNECTIVITY - SMO has connectivity to IMS in O-Cloud. REGISTERED - O-Cloud has registered its IMS with the SMO.  PRIVILEGES - The identification & privileges of a SMO user has been verified. |  |
| **Begins when** | This use case begins when an entity, typically a O-Cloud operator, wishes to get a log, get a status from logs, or start an investigation that involves logs. |  |
| **Step 1 (M)** | LOG QUERY REQUEST - The Log Query Request comes from the O-Cloud Operator to the SMO (FOCOM).  The Log Query Request contains filter that indicates the logs the consumer is interested in. For example, these filters may include the date (ranges), types of logs, types of events, log level (severity), and device(s)/resource(s) or types of resources. |  |
| **Step 2 (M)** | LOG QUERY REQUEST - The Log Query Request goes from the SMO (FOCOM) to the IMS in the O-Cloud to be processed.  A connection authentication is verified. The Log Query request matching the request filter is processed by the IMS. |  |
|  | NOTE 4: There are two sets of alternate steps:  Alt 1 - steps 3.1, 3.2, and 3.3. This describes a Log Query that returns Log files.  Alt 2 - steps 4.1, 4.2, and 4.3. This describes a Log Query that just returns an endpoint for a requesting entity to then retrieve files later.  NOTE 5: Only one of the Alt series of steps will be used in any given cloud implementation. They are both equivalently viable options. |  |
| **Step 3.1 (ALT)** | REQUESTED LOG FILES RETURNED -  This is a successful case, where the Log Query request results in the return of Log files that match the request filter.  NOTE 6: In the successful case, it is possible that some Logs matching filter could be returned. For example, a request for Logs in the past week for which there were no logs on the 4th day would still successfully return logs for 6 of the 7 days. |  |
| **Step 3.2 (ALT)** | EXCEPTION: NON-EXISTENT LOGS - |  |

|  |  |  |
| --- | --- | --- |
|  | This exception occurs when the Log Query filter results in no data. An object not found is returned.  NOTE 7: Absolutely no data (non-existent logs exception) is different than returning some data (success).  For example, as from the Step 3.1 example, a request for Logs on the 4th day where there was no log data would result in a non-existent logs exception. |  |
| **Step 3.3 (ALT)** | EXCEPTION: NO CONTENT -  In this exception, the evaluation of the Log Query filter returned no content (an empty set). A "*no content*" response is sent to the subscriber.  For example, a filter which asks for all logs within the last 7 days, and all logs not within the last 7 days would be a null request. |  |
| **Step 3.4 (ALT)** | EXCEPTION: FILE UNAVAILABLE FOR IMS PARSING -  In this exception the Log Files exist, however, the records are not available for IMS parsing or retrieval. This might happen because the Log File is not under the management of the IMS.  For example, the log(s) might be in a remote location or in an unknown format. In the former case, a consumer could get an endpoint in order to retrieve the log(s) of interest. In the latter case it would be left to consumer how to interpret the log(s) of interest. |  |
| **Step 4.1 (ALT)** | END POINT RETURNED -  This is a successful case, where the Log Query request results in an endpoint returns, where an entity can then later retrieve the Log files that match the request filter. |  |
| **Step 4.2 (ALT)** | FILE RETRIEVAL  The consumer, after successfully getting an endpoint from the producer, can then later retrieve the Log file(s) matching the request filter.  The specific method by which the consumer obtains the Log file(s) is left up to implementation.  NOTE 8: the endpoint for the consumer is not likely to be the O2ims endpoint but another endpoint within the O-Cloud. |  |
| **Step 4.3 (ALT)** | EXCEPTION: ENDPOINT UNREACHABLE  This exception occurs when the consumer attempts to reach the endpoint (in Step 4.2), however, it is unable to reach the provided endpoint from Step 4.1.  NOTE 9: The server or networking implementation will create the error. |  |
| **Step 4.4 (ALT)** | EXCEPTION: NON-EXISTENT LOGS -  This exception occurs when the Log Query filter results in no data (no files). An  *object not found* is returned.  The use case ends with this failure case. |  |
| **Step 4.5 (ALT)** | EXCEPTION: NO CONTENT -  In this exception, the evaluation of the Log Query filter returned no content (an empty set). A "*no content*" response is sent to the consumer. |  |

|  |  |  |
| --- | --- | --- |
|  | For example, a filter which asks for all logs within the last 7 days, and all logs not within the last 7 days would be a null request.  The use case ends with this failure case. |  |
| **Step 5 (M)** | QUERY STATUS RESPONSE - A query status response is sent back to the requesting entity. |  |
| **Ends when** | This scenario ends when any of the exception cases are encounter, or with one of the two successful Log Query responses (Step 3.1 or Step 4.1). |  |
| **Exceptions** | This use case can encounter four exception (alternate) cases that apply to each of the two sets of Log Query paradigms:  EXCEPTION: NON-EXISTENT LOGS - The first exception is a Log Query request that results in a non-existent log. In this case, an *object not found* is returned and the use case ends.  EXCEPTION: NO CONTENT - The second type of exception case is a "*No Content*" case, where the Log Query filter return an empty set. The use case ends with this failure case.  EXCEPTION: ENDPOINT UNREACHABLE - This exception occurs when the consumer attempts to reach the endpoint. However, it is unable to reach the provided endpoint.  EXCEPTION: FILE UNAVAILABLE FOR IMS PARSING - In this exception the Log Files exist, however, the records are not available for IMS parsing or retrieval. This might happen because the Log File is not under the management of the IMS. |  |
| **Post-conditions** | SUCCESSFUL - In a successful post-condition, either the requested Log(s) matching the request filter are returned or an endpoint is provided for a requesting entity to retrieve logs.  FAILURE - In a failure case, one of the exception cases described above was encountered. A corresponding error is returned to the requesting entity. |  |
| **Traceability** | REQ-ORC-O2-33, REQ-ORC-O2-34, REQ-ORC-O2-35, REQ-ORC-O2-36 |  |

##### UML Sequence Diagram

![](../assets/images/8b9c662052ea.jpg)

Figure 3-33: Log Query

#### Alarm Dictionary Discovery Use Case

##### High Level Description

When a new O-Cloud Resource Type is discovered in the O-Cloud infrastructure either on O-Cloud genesis or during run-time, the IMS would inform FOCOM (SMO) about that new Resource Type so that the appropriate corresponding alarm dictionary can be identified. NOTE: every version of a Resource has its own Resource Type and thus an Alarm Dictionary associated with it.

It is expected that the SMO would have already onboarded the associated Resource Type before it is discovered by the O-Cloud infrastructure, as described in O2 IMS Specification [17]. The four situations where an alarm dictionary could be discovered are:

1. **SOFTWARE UPDATE** - A software update creates a new resource type with its attendant alarm dictionary in inventory. Existing resources can either remain pointing to the existing Resource Type or be software updated to the newly loaded Resource Type. Each Resource Type has its own unique alarm dictionary associated with it at the SMO.
2. **QUERY & SYNCHRONIZATION** - A query service may also result in the discovery of new Resource Types in the O-Cloud infrastructure. Additionally, the initial synchronization of the model between the O- Cloud and management system (SMO) may result in the discovery of Resource Types to be managed. Each Resource Type has its own unique alarm dictionary associated with it.
3. **NEW RESOURCES ADDED** - New objects have been added to the O-Cloud infrastructure. Subsequently, new Resource Types corresponding to those new objects may be added which then may result in an Infrastructure Inventory Event being generated to a consumer (FOCOM/SMO) or subscriber. Each Resource Type has its own unique alarm dictionary associated with it.
4. **IMS LIFE CYCLE SOFTWARE UPDATE** - When the software of the O-Cloud is updated new Resource Types can be discovered.

There are two possible ways the IMS gets the Alarm Dictionary. The SMO might update the IMS with the Alarm Dictionary. In another method, the IMS might get the Alarm Dictionary from the O-Cloud Resource (or external proxy for the resource). See the Resource Type Onboarding LCM Use Case for more details. The source of truth is in the cloud for Cloud Resource types.

##### Sequence Description

|  |  |  |
| --- | --- | --- |
| **USE CASE STAGE** | **EVOLUTION / SPECIFICATION** | **<<Uses>> Related Use** |
| **Use Case Title** | Alarm Dictionary Discovery (IMS) |  |
| **Goal** | The primary goal of this use case is where the consumer (SMO) adds an alarm dictionary corresponding to a new discovered Resource Type in the O-Cloud infrastructure.  A consequence is that the consumer (SMO) has a corresponding alarm dictionary that corresponds to every Resource Type that would emit alarms. The triggers for this use case revolve around insuring that consistency. |  |
| **Actors and Roles** | O-Cloud Operator - The O-Cloud operator is a consumer (or entity) using or interfacing with the SMO (FOCOM).  SMO (FOCOM) - The FOCOM within the SMO is used in this use case to represent any consumer of this use case.  IMS - The IMS within the O-Cloud is used to represent any provider of the responses to the use case triggers. |  |

|  |  |  |
| --- | --- | --- |
| **Assumptions** | No Assumptions |  |
| **Preconditions** | Connectivity - The producer has connectivity to the consumer by some mechanism. The mechanism by which the subscriber achieves connectivity to the publisher is out of the scope of this Use Case.  O-Cloud Operational & Registered - The O-Cloud is installed, operating, and registered with the SMO.  Privilege - The consumer identification and privileges have been verified to be able to perform O2 operations.  Alarm Dictionaries Onboarded - Alarm Dictionar(ies) are onboarded with the Resource Type definition(s) into the O-Cloud Infrastructure Inventory. This is performed by software in the O-Cloud that manages Resource Types. |  |
| **Begins when** | There are four triggers that invokes this Use Case:  Software update of an O-Cloud Resource - When software is updated for an O-Cloud Infrastructure Resource(s), a new Resource Type might be discovered which will trigger this use case.  New Resources deployed - When new Resources are deployed to the O-Cloud Infrastructure, it may cause new Resource Types to be discovered which would subsequently trigger this use case.  Query Infrastructure Inventory - A Query Infrastructure Inventory for a Resource Type triggers this use case. One place this occurs is in O-Cloud Registration & Initialization during O-Cloud genesis, the consumer performs a Query Infrastructure Inventory. The consumer then gets the alarm dictionaries for all of the Resource Types discovered during genesis. See the O-Cloud Registration & Initialization use case.  IMS Life Cycle Software Update - When the software of the O-Cloud is updated new Resource Types can be discovered which will trigger this use case. |  |
| **Step 1 (M)** | Resource Type Record Created - A new Resource Type record is created during O-Cloud onboarding which is when an Alarm dictionary corresponding to that Resource Type is onboarded within the O-Cloud (see pre-conditions).  These triggers cause a new Resource Type record to be *created*:  Software update of an O-Cloud Resource - When software is updated for an O-Cloud Infrastructure Resource(s), a new Resource Type is created.  IMS Life Cycle Software Update - When the software of the O-Cloud is updated new Resource Types record is created.  New Resources deployed - When new Resources are deployed to the O-Cloud Infrastructure, it may cause new Resource Type to be created.  These two triggers would cause a new Resource Type record to be *discovered* by SMO:  Query Infrastructure Inventory - A Query Infrastructure Inventory for a Resource Type is discovered for a previously created Resource Type record.  Infrastructure Inventory Notification - A Infrastructure Inventory notification from the O-Cloud to the subscriber, the IMS will send a copy of the Resource Type record. |  |
| **Step 2 (ALT)** | O-Cloud Infrastructure Inventory Event Notification (Alt) -  Step 2 occurs if a subscription already exists and the Step 1 triggers for creation of new Resource Type(s) or discovery of Resource Type(s). An O-Cloud Infrastructure Inventory Event Notification is sent from the IMS in the O-Cloud over O2ims interface to the consumer, FOCOM/SMO to communicate the Resource Type(s) information.  NOTE 1: For the definition of the InfrastructureInventoryEventNotification see Reference [17]. |  |

|  |  |  |
| --- | --- | --- |
| **Step 3 (ALT)** | Query O-Cloud Info Request -  The consumer, FOCOM/SMO, can send a request to Query the O-Cloud for inventory information. This request will result in the SMO discovering new Resource Type(s). |  |
| **Step 4 (ALT)** | Query O-Cloud Info Response -  The producer, IMS processes the Query request and returns any new Resource Types that have been discovered for a previously created Resource Type record.  NOTE 2: Upon receipt, the consumer, SMO, is expected to associate the new Alarm Dictionaries with the newly discovered Resource Types. The Resource Type object contains the Alarm Dictionary associate with the Resource ID or vendor make & model data. |  |
| **Step 5 (M)** | Alarm Dictionary associated -  It is expected that the consumer, SMO, will associate the Alarm Dictionar(ies) for the new Resource Type(s) sent by the IMS.  NOTE 3: The consumer, SMO, will likely aggregate all the Alarm Dictionaries across the O-Clouds that it has purview to. This is implementation specific.  NOTE 4: (error case) If a Resource Type raises alarms, then there is an Alarm Dictionary, but it was not loaded (due to error), for this use case, the IMS will indicate there is no dictionary for this Resource Type. If later, an alarm is sent for that resource instance with a missing Alarm Dictionary, a user will have to debug and load the Alarm Dictionary post facto. |  |
| **Ends when** | This use case end when the consumer has associated new Alarm Dictionar(ies) to newly create or discovered Resource Type(s). |  |
| **Exceptions** | None |  |
| **Post- conditions** | Success - Upon successful execution of the use case, the consumer, SMO, associates new Alarm Dictionar(ies) to newly discovered or created Resource Type(s).  Failure - No failure cases |  |
| **Traceability** | [REQ-ORC-52], [REQ-ORC-O2-53] |  |

##### UML Sequence Diagram

![](../assets/images/66df8ab747c6.jpg)

Figure 3-34: Alarm Dictionary Discovery

#### Logging Configuration Use Case

##### High Level Description

The Logging Configuration use case defines how IMS administrates, provisions, and configures Logging Management for logs that reside in the O-Cloud generated by O-Cloud Resources. It is related to the Log Query (IMS) Use Case [see Clause 3.7.8 above] because it sets the behavior how IMS handles the management of logging that underpins the Log Query use case. This Use case will cover Logging Configuration. Some examples of Logging Configuration: the configuration of the retention period, the activation of logging, logging rotation of older logs (FIFO), and setting log levels.

Logging Configuration can apply to all the various types of logs kept in the O-Cloud including Alarm, Fault and Debug logs. The direct Logging Configuration toward specific types of logs are implementation specific.

There are Cloud native implementations for storing logs produced from O-Cloud Infrastructure resources. O-Cloud Resources could be physical or logical (see [9]). The Logging Configuration use case should apply to O-Cloud

Resources in a uniform way but should also account for those Cloud specific implementations. For example, the use of logging level by the IMS may not have a perfect "mapping" to a log level from a O-Cloud Infrastructure resource's log.

##### Sequence Description

|  |  |  |
| --- | --- | --- |
| **USE CASE STAGE** | **EVOLUTION / SPECIFICATION** | **<<Uses>>**  **Related Use** |
| **Use Case Title** | Logging Configuration Use Case |  |
| **Goal** | The goal of this use case is to allow IMS to administrate, provision, and configure logs that reside in the O-Cloud generated by O-Cloud Resources. The direct Logging Configuration toward specific types of logs are implementation specific. The following examples are some Logging Configuration operations that might be requested by an entity:   * Configure the retention period of logs * Activate logging * Configure logging rotation (e.g. FIFO retention method) * Configure Log Levels where appropriate.   NOTE: The GA&P describes the triggers for writing Log entries; these are implementation dependent. Some implementations may also use Logging Configuration to define the associated specific Log writing triggers. |  |
| **Actors and Roles** | O-Cloud Operator - The O-Cloud Operator is a consumer (or entity) using or interfacing with the SMO (FOCOM).  SMO (FOCOM) - The FOCOM within the SMO is used in this use case to represent any entity that wants to manage logs.  IMS - The IMS within the O-Cloud processes the Logging Configuration requests as an actor. |  |
| **Assumptions** | Not all O-Cloud Resources will support logging levels. If an O-Cloud Resource produces logs, but does not support the concept of Log Levels, that O-Cloud Resource will just behave as if there is one level. Essentially a binary "on" or "off". |  |
| **Preconditions** | Connectivity - The producer has connectivity to the consumer by some mechanism. The mechanism by which the subscriber achieves connectivity to the publisher is out of the scope of this Use Case.  O-Cloud Operational & Registered - The O-Cloud is installed, operating, and has registered its IMS with the SMO.  Privilege - The consumer identification and privileges have been verified to be able to perform O2 operations, such as Logging Configuration. |  |
| **Begins when** | An entity wants to perform Logging Configuration activities such as administrating, provisioning, and configuring how logging works. |  |
| **Step 1 (M)** | Logging Configuration Operation  An entity, or O-Cloud Operator requests for Logging Configuration operation such as any of the following:   * Configure the retention period of logs * Activate logging * Configure logging rotation (e.g. FIFO retention method) * Configure Log Levels where appropriate. |  |

|  |  |  |
| --- | --- | --- |
| **Step 2 (M)** | Logging Configuration Operation The Logging Configuration operation of Step 1 goes from the FOCOM to the IMS over the O2 IMS interface. |  |
| **Step 3.1 (ALT)** | Logging Configuration Success  In the successful case, the result of the Logging Configuration operation is returned to the requestor, typically the SMO (FOCOM). |  |
| **Step 3.2 (ALT)** | Exception: Invalid Configuration  In this exception case, the entity or O-Cloud Operator has requested for a setting or operation that is invalid, outside the bounds of its allowed limits, or not understood by the IMS Logging Management framework.  Because this is an atomic request, and not a transactional request, the operation will either fail or succeed. That is, an entity does not send multiple operations together in a single request. |  |
| **Step 3.3 (M)** | Logging Configuration Operation Status  The Logging Configuration Operation Status is returned to the O-Cloud Operator or entity from the SMO (FOCOM) with the result of the Logging Configuration operation. That status would include any associated information with the operation or exception codes. |  |
| **Ends when** | This use case ends when the Logging Configuration Operation has been successfully performed or has encountered an exception. |  |
| **Exceptions** | This use case has invalid configuration as an exception. This might occur if an entity tries to request for a configuration value that is outside the bounds of its allowed limits. |  |
| **Post-conditions** | Success - Upon successful execution of the use case, the requesting entity is informed of the results of the Logging Configuration operation.  Failure - If the invalid configuration exception has been encountered, no values are changed; and it is expected that the O-Cloud IMS will continue to behave as before. A failure result is sent to the requestor. |  |
| **Traceability** | [REQ-ORC-O2-54], [REQ-ORC-O2-55] |  |

##### UML Sequence Diagram

![](../assets/images/4d871eaa1811.jpg)

Figure 3-35: Logging Configuration

#### Alarm List Configuration Use Case

##### High Level Description

This use case describes how the Alarm List is configured through a service operation. The SMO, or an authorized entity can request to configure the behavior of Alarm List Management at the IMS.

Faults are errors that an O-Cloud infrastructure resource detects (and stores). The fault is sent to the IMS. The IMS performs the task of sending alarm notifications to an end user (SMO or subscribing entity) and mapping the incoming faults to alarms. The IMS keeps all the current alarms in an alarm list. The request to configure the Alarm List is sent from the FOCOM towards the IMS. The request has attributes which describe the Alarm List properties to be adjusted. The Retention Period of alarms and Extension attributes can be changed by the Alarm List Configuration operation.

After the Retention Period expires, alarms in the alarm list would be purged or archived based on alarm policy. For example, the Alarm List configuration request could have an attribute to specify to Retention Period by the IMS for 72 hours. Another operation to configure the Alarm List behavior could adjust the optional value(s) in the Extension attribute list of the Alarm List. Additional extensions attributes in the Alarm List Configuration request could change other aspects of Alarm List Management behavior by the IMS. This would allow for implementation specific behavior. For example, an Alarm List extension attribute might cause certain types of alarms from a certain compute node resource to be purged or archived after a certain period of time or based on triggers. Other extension attributes might define overflow behavior, or alarm list composition handling.

##### Sequence Description

|  |  |  |
| --- | --- | --- |
| **USE CASE STAGE** | **EVOLUTION / SPECIFICATION** | **<<Uses>> Related Use** |
| **Use Case Title** | Alarm List Configuration Use Case |  |

|  |  |  |
| --- | --- | --- |
| **Goal** | The goals for this use case are to allow for a consumer (SMO) or requesting entity to configure the Alarm List attributes:   1. The request can change the Alarm List retention per Resource Type 2. The request could change the additional extension attributes to adjust other aspects of Alarm List management.   Note: The IMS behavior of what happens to the alarms after the Retention Period expires depends on alarm list retention policy. Alarm list retention policy could be altered by the additional extension attribute(s). What happens to alarms currently in the Alarm List when an Alarm List Configuration request arrives is also up to Alarm list retention policy.  Note: It would be implementation specific the kind of alarm list retention policy that would be employed and whether there would be a default behavior.  Note: See the Purge of Alarms Use Case. | Purge of Alarms Use Case |
| **Actors and Roles** | **O-Cloud Operator -** The O-Cloud Operator is a consumer (or entity) using or interfacing with the SMO (FOCOM).  **SMO (FOCOM)** - The FOCOM within the SMO is used in this use case to represent any consumer of this use case.  **IMS** - The IMS within the O-Cloud is used to represent any provider of the responses to the use case triggers. |  |
| **Assumptions** | There are no assumptions. |  |
| **Preconditions** | **Connectivity** - The producer has connectivity to the consumer by some mechanism. The mechanism by which the subscriber achieves connectivity to the publisher is out of the scope of this Use Case.  **O-Cloud Operational & Registered** - The O-Cloud is installed, operating, and registered with the SMO.  **Privilege** - The consumer identification and privileges of a SMO user have been verified to be able to perform O2 operations.  Note: it is possible that the IMS currently has no alarms in its Alarm List. It is ok to invoke this use case with an empty Alarm List |  |
| **Begins when** | This use case begins when an entity or operator requests for configuration of Alarm List management operations. |  |
| **Step 1 (M)** | **ALARM LIST CONFIGURATION REQUEST**  An entity, or O-Cloud Operator requests for an Alarm List Configuration to the SMO.  The Alarm List Configuration request contains the Resource Types that should be affected by the update. The request may apply to the entire Alarm List as well. The alarm Retention Period per Resource Type(s) are given in the request and additional extension attributes to adjust other aspects of Alarm List Management can also be included in the request. |  |
| **Step 2 (M)** | **ALARM LIST CONFIGURATION REQUEST**  The Alarm List Configuration request is sent from the SMO (or entity) to IMS in the O-Cloud.IMS processes the Alarm List Configuration request by adjusting the Retention Period(s) from the request.  NOTE: The SMO may perform prechecks on the Alarm List Configuration request based on implementation. For example, the SMO may check that the Retention Period is within a valid range, or that the Resource Types are valid. |  |
| **Step 3.1 (ALT)** | **ALARM LIST CONFIGURATION RESPONSE** |  |

|  |  |  |
| --- | --- | --- |
|  | The IMS in the O-Cloud provides a response to the Alarm List Configuration request. See also the Alarm List Management Query Use Case [to be addressed in future].  Note: The Alarm List Configuration response will likely include the updated value(s) of the Alarm List, though this is implementation specific. |  |
| **Step 3.2 (ALT)** | **EXCEPTION: INVALID SETTING**  If the Alarm List Configuration request had a syntactic error, the IMS would encounter this exception.  Note: Specific IMS implementations can support additional extension attributes and define their expected settings and syntax.  An exception will be returned in the Alarm List Configuration response. |  |
| **Step 3.3 (ALT)** | **EXCEPTION: NON-EXISTING RESOURCE TYPE**  If the Alarm List Configuration request applies to resource type (and not to the entire Alarm List), and specified operations are for non-existing resource types, the IMS would encounter this exception.  An exception will be returned in the Alarm List Configuration response. |  |
| **Step 4 (M)** | **ALARM LIST CONFIGURATION RESPONSE**  The SMO provides a response for the Alarm List Configuration request to a requesting operator or entity. |  |
| **Ends when** | This use case ends when the Alarm List Configuration request has been successfully completed, or an exception has been encountered. |  |
| **Exceptions** | **INVALID SETTING** - There was an invalid setting or syntactic error for the Alarm List Configuration request.  **NON-EXISTING RESOURCE TYPE** - For Alarm List Configuration requests that apply to resource types (and not the entire Alarm List), if the request was trying to apply a change to a non-existing Resource Type this exception would be encountered. |  |
| **Post- conditions** | **SUCCESS** - The requested Alarm List Configuration Retention Periods have been updated. There are no additional actions that need to be taken.  **FAILURE** - There are no additional actions that need to be taken. |  |
| **Traceability** | [REQ-ORC-O2-73], [REQ-ORC-O2-74] |  |

##### UML Sequence Diagram

![](../assets/images/550e8c7dfa23.jpg)

Figure 3-36: Alarm List Configuration

#### Alarm Suppression Use Case

##### Introduction

This use case supports Alarm Suppression for O2ims. Alarm Suppression allows for the IMS to suppress alarm notification from the IMS to the SMO. This is useful to avoid alarm floods caused by disasters or maintenance work.

The suppression policy such as type of alarms to be suppressed can be configured with an Alarm Suppression request order. Other suppression criteria, such as suppression level, suppression period, and suppression deactivation policy, can be configured, too. The suppression timer and threshold to activate Alarm Suppression may be configured via an Alarm Suppression request order. The Alarm Suppression criteria can be configured by the SMO or the IMS itself.

The IMS can initiate Alarm Suppression autonomously, for example, in the situation where the O2ims link between the SMO and the IMS is overloaded and the SMO is unable to send the Alarm Suppression request via the O2ims link, or in the situation where there is a loss of communication on the O2ims link. SMO can deactivate the IMS-initiated Alarm Suppression. IMS can also deactivate the SMO-initiated Alarm Suppression.

This use case covers the four operations of Alarm Suppression, which are

1. Activation of Alarm Suppression
2. Query of Alarm Suppression criteria and status
3. Update of Alarm Suppression criteria
4. Deactivation of Alarm Suppression

O-Cloud Operator or the SMO can initiate all of the four operations, Alarm Suppression Activation, Query, Update, and Deactivation. The IMS can initiate the three operations, Alarm Suppression Activation, Update, and Deactivation.

1. Alarm Suppression Activation

The Alarm Suppression Activation request is sent from the SMO to the IMS to activate Alarm Suppression. After processing the activation request, the IMS responds to the SMO with Alarm Suppression Activation status (success or failure). The IMS may include the configured Alarm Suppression criteria and status.

The IMS may also activate Alarm Suppression by configuring Alarm Suppression criteria autonomously. In that case, the activation of Alarm Suppression should be informed to the SMO with the configured Alarm Suppression criteria and status.

NOTE: If an alarm suppression timer or threshold is configured by Alarm Suppression Activation operation, the alarm suppression triggered by the timer or threshold needs to be notified to the SMO.

1. Alarm Suppression Query

The SMO can query the Alarm Suppression status (such as active/inactive) and criteria. The IMS responds to the request with the current Alarm Suppression criteria and status.

1. Alarm Suppression Update

The SMO can request to update the Alarm Suppression criteria. The Alarm Suppression Update request from the SMO to the IMS includes the order that describes how to change the Alarm Suppression criteria that the IMS keeps. After processing the update request, the IMS responds to the SMO with Alarm Suppression Update status (success or failure). The IMS may include the updated Alarm Suppression criteria and status.

The IMS may also update Alarm Suppression by updating Alarm Suppression criteria autonomously. In that case, the update of Alarm Suppression should be informed to the SMO with the updated Alarm Suppression criteria and status.

1. Alarm Suppression Deactivation

When the SMO sends an Alarm Suppression Deactivation request to the IMS, the IMS responds to the request with Alarm Suppression Deactivation status (success or failure).

The IMS may also deactivate Alarm Suppression by removing Alarm Suppression criteria. In that case, the deactivation of Alarm Suppression should be informed to the SMO.

Once the Alarm Suppression is deactivated, the SMO or IMS can trigger the Alarm Synchronization as documented in the Alarm Synchronization Use Case [see Clause 3.7.6] for the suppressed alarms to synchronize and reconcile the state of alarms between IMS and SMO.

NOTE: If an alarm suppression is deactivated by the suppression deactivation policy, the policy-based alarm suppression deactivation needs to be notified to the SMO.

How the IMS implements the Alarm Suppression is via the use of policies. How these policies are managed are described in the Alarm List Configuration Use Case [See 3.7.11].

Different kind of alarms could be raised with the same root cause by different entities. Some intelligence needs to identify a root cause of those alarms and correlate them. With such an alarm correlation, alarms can be suppressed efficiently.

NOTE: How to control the Alarm Suppression with some kind of intelligence is out of scope of this use case.

Section 3.7.12.2 describes the Operator/SMO-initiated Alarm Suppression Activation, Query, Update, and Deactivation. Section 3.7.12.3 describes the IMS-initiated Alarm Suppression Activation, Update, and Deactivation.

##### Operator/SMO-initiated Alarm Suppression

* + - * 1. High Level Description

This use case supports the Operator/SMO-initiated Alarm Suppression. It allows for the SMO to request the IMS to suppress alarm notification, query the suppression criteria and status, update the suppression criteria, and deactivate alarm suppression.

* + - * 1. Sequence Description

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>> Related use** |
| Goal | The goal for this use case is to allow for the SMO to request suppression of alarm notification, query the suppression criteria and status, update the suppression criteria, and deactivate alarm suppression via O2ims. |  |
| Actors and Roles | O-Cloud Operator - The O-Cloud Operator is an entity interfacing with the SMO. FOCOM (SMO) - The FOCOM within the SMO is used in this use case to represent any consumer of this use case.  IMS - The IMS in the O-Cloud is the publisher. The owner of the alarms to be suppressed. The IMS is responsible for transforming faults received from O- Cloud Resource into alarms. It would suppress alarms based on its alarm  suppression criteria. |  |
| Assumptions | It is expected that the fault originating from the source of truth, the O-Cloud Resource, is still raised to the IMS. It is expected that the O-Cloud Resource faults would be logged. The IMS has no expectation that the O-Cloud Resources  suppress the faults. The IMS would also perform the transformation of the fault into an alarm (as normal), and record that an alarm occurred. |  |
| Preconditions | Connectivity - SMO has connectivity to IMS in O-Cloud. Registered - O-Cloud has registered its IMS with the SMO.  Privileges - The identification & privileges of a SMO user has been verified. |  |
| Begins when | This use case begins in one of two cases:   1. The O-Cloud Operator initiates an Alarm Suppression Activation, Query, Update, or Deactivation request. 2. The SMO initiates an Alarm Suppression Activation, Query, Update, or Deactivation request. |  |
|  | ALARM SUPPRESSION ACTIVATION Steps |  |
| Activation: Step 1.1 (ALT) | ALARM SUPPRESSION ACTIVATION INITIATED BY OPERATOR - An Alarm  Suppression Activation request is initiated from the O-Cloud Operator towards SMO. |  |
| Activation: Step 1.2 (ALT) | ALARM SUPPRESSION ACTIVATION INITIATED BY SMO - An Alarm  Suppression Activation is initiated by the SMO. |  |
| Activation: Step 2 (M) | ALARM SUPPRESSION ACTIVATION REQUEST - An Alarm Suppression  Activation request is composed by the SMO and sent to the IMS. |  |
| Activation: Step 3 (M) | IMS PROCESSES ALARM SUPPRESSION ACTIVATION - The IMS  processes the Alarm Suppression Activation request. The IMS has activated Alarm Suppression or set the policy to activate the Alarm Suppression based  on the suppression order in the Alarm Suppression Activation Request. |  |
| Activation: Step 4.1 (ALT) | ALARM SUPPRESSION ACTIVATION SUCCESS - The Alarm Suppression Activation operation was successfully performed by the IMS without any issues. A success response is returned to the SMO by the IMS. The response  may include the configured Alarm Suppression criteria. |  |
| Activation: Step 4.2 (ALT) | EXCEPTION: UNEXPECTED CONDITION - The IMS might not be able to comply to the request. A response is sent from the IMS to the SMO. |  |
| Activation: Step 5 (O) | ALARM SUPPRESSION ACTIVATION RESPONSE - An Alarm Suppression  Activation response is sent back to the requesting entity. The response may include the configured Alarm Suppression criteria. |  |
|  | ALARM SUPPRESSION QUERY Steps |  |
| Query:  Step 1.1 (ALT) | ALARM SUPPRESSION QUERY INITIATED BY OPERATOR - An Alarm  Suppression Query request is initiated from the O-Cloud Operator towards SMO. |  |
| Query:  Step 1.2 (ALT) | ALARM SUPPRESSION QUERY INITIATED BY SMO - An Alarm Suppression  Query is initiated by the SMO. |  |

|  |  |  |
| --- | --- | --- |
|  |  |  |
| Query: Step 2 (M) | ALARM SUPPRESSION QUERY REQUEST - An Alarm Suppression Query request is composed by the SMO and sent to the IMS. |  |
| Query: Step 3 (M) | IMS PROCESSES ALARM SUPPRESSION QUERY - The IMS processes the  Alarm Suppression Query request. |  |
| Query:  Step 4.1 (ALT) | ALARM SUPPRESSION QUERY SUCCESS - The Alarm Suppression Query operation was successfully processed by the IMS without any issues. Alarm  Suppression status is returned to the SMO by the IMS. The response includes the current Alarm Suppression criteria. |  |
| Query:  Step 4.2 (ALT) | EXCEPTION: UNEXPECTED CONDITION - The IMS might not be able to comply to the request. A response is sent from the IMS to the SMO. |  |
| Query: Step 5 (O) | ALARM SUPPRESSION QUERY RESPONSE - An Alarm Suppression status response is sent back to the requesting entity. The response includes the  current Alarm Suppression criteria. |  |
|  | ALARM SUPPRESSION UPDATE Steps |  |
| Update:  Step 1.1 (ALT) | ALARM SUPPRESSION UPDATE INITIATED BY OPERATOR - An Alarm  Suppression Update request is initiated from the O-Cloud Operator towards SMO.  The Alarm Suppression Update request includes the order that describes how to change the Alarm Suppression criteria in the IMS. |  |
| Update:  Step 1.2 (ALT) | ALARM SUPPRESSION UPDATE INITIATED BY SMO - An Alarm  Suppression Update is initiated by the SMO. |  |
| Update: Step 2 (M) | ALARM SUPPRESSION UPDATE REQUEST - An Alarm Suppression Update request is composed by the SMO and sent to the IMS. The request includes the order that describes how to change the Alarm Suppression criteria in the IMS. |  |
| Update: Step 3 (M) | IMS PROCESSES ALARM SUPPRESSION UPDATE - The IMS processes the  Alarm Suppression Update request. The IMS has updated the Alarm Suppression criteria. |  |
| Update:  Step 4.1 (ALT) | ALARM SUPPRESSION UPDATE SUCCESS - The Alarm Suppression Update operation was successfully performed by the IMS without any issues. A success response is returned to the SMO by the IMS. The response may include  the updated Alarm Suppression criteria. |  |
| Update:  Step 4.2 (ALT) | EXCEPTION: UNEXPECTED CONDITION - The IMS might not be able to comply to the request. A response is sent from the IMS to the SMO. |  |
| Update: Step 5 (O) | ALARM SUPPRESSION UPDATE RESPONSE - An Alarm Suppression Update response is sent back to the requesting entity. The response may include the updated Alarm Suppression criteria. |  |
|  | ALARM SUPPRESSION DEACTIVATION Steps |  |
| Deactivation: Step 1.1 (ALT) | ALARM SUPPRESSION DEACTIVATION INITIATED BY OPERATOR - An  Alarm Suppression Deactivation request is initiated from the O-Cloud Operator towards SMO. |  |
| Deactivation: Step 1.2 (ALT) | ALARM SUPPRESSION DEACTIVATION INITIATED BY SMO - An Alarm  Suppression Deactivation is initiated by the SMO. |  |
| Deactivation: Step 2 (M) | ALARM SUPPRESSION DEACTIVATION REQUEST - An Alarm Suppression  Deactivation request is composed by the SMO and sent to the IMS. |  |
| Deactivation: Step 3 (M) | IMS PROCESSES ALARM SUPPRESSION DEACTIVATION - The IMS  processes the Alarm Suppression Deactivation request. The IMS has deactivated the Alarm Suppression. |  |
| Deactivation: Step 4.1 (ALT) | ALARM SUPPRESSION DEACTIVATION SUCCESS - The Alarm  Suppression Deactivation operation was successfully performed by the IMS without any issues. A success response is returned to the SMO by the IMS. |  |
| Deactivation: Step 4.2 (ALT) | EXCEPTION: UNEXPECTED CONDITION - The IMS might not be able to comply to the request. A response is sent from the IMS to the SMO. |  |
| Deactivation: Step 5 (O) | ALARM SUPPRESSION DEACTIVATION RESPONSE - An Alarm  Suppression Deactivation response is sent back to the requesting entity. |  |
| Deactivation: Step 6 (O) | ALARM LIST SYNCHRONIZATION - After deactivation of Alarm Suppression, the Alarm Synchronization Use Case may be invoked to synchronize alarm status in SMO and IMS. | 3.7.6 Alarm Synchronization Use Case |

|  |  |  |
| --- | --- | --- |
| Ends when | This use case ends if the IMS encounters an unexpected condition, or a successful Alarm Suppression Activation / Query / Update / Deactivation operation has been performed. |  |
| Exceptions | UNEXPECTED CONDITION - If the IMS was unable to perform the Alarm Suppression Activation / Query / Update / Deactivation operation, this exception is encountered. |  |
| Post-conditions | SUCCESS:   1. Response to the Alarm Suppression Activation / Query / Update / Deactivation request is sent to the requesting entity. 2. For Alarm Suppression Activation, the alarm notification has been suppressed based on the suppression criteria.   For the Alarm Suppression Query, the suppression criteria have been returned to the SMO.  For the Alarm Suppression Update, the suppression criteria have been updated. For the Alarm Suppression Deactivation, alarm notification has no longer suppressed and alarm status between SMO and IMS are synchronized.  FAILURE: The exception response has been sent to the requesting entity (see above). |  |
| Traceability | REQ-ORC-O2-81, REQ-ORC-O2-82 |  |

* + - * 1. UML Sequence Diagram

![](../assets/images/ae91a5f2bbac.jpg)

Figure 3-37: Operator/SMO-Initiated Alarm Suppression

##### IMS-initiated Alarm Suppression

* + - * 1. High Level Description

This use case supports the IMS-initiated Alarm Suppression. It allows for the IMS to initiate the suppression of alarm notification from IMS to SMO, update of the suppression criteria, and deactivation of alarm suppression.

* + - * 1. Sequence Description

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>> Related use** |
| Goal | The goal for this use case is to allow for the IMS to suppress alarm notification, update the suppression criteria, and deactivate alarm suppression. |  |
| Actors and Roles | O-Cloud Operator - The O-Cloud Operator is an entity interfacing with the SMO. FOCOM (SMO) - The FOCOM within the SMO is used in this use case to represent a receiver of notifications.  IMS - The IMS in the O-Cloud is the publisher. The owner of the alarms to be suppressed. The IMS is responsible for transforming faults received from O- Cloud Resource into alarms. It would suppress alarms based on its alarm  suppression criteria. |  |
| Assumptions | It is expected that the fault originating from the source of truth, the O-Cloud Resource, is still raised to the IMS. It is expected that the O-Cloud Resource faults would be logged. The IMS has no expectation that the O-Cloud Resources suppress the faults. The IMS would also perform the transformation of the fault  into an alarm (as normal), and record that an alarm occurred. |  |
| Preconditions | Connectivity - SMO has connectivity to IMS in O-Cloud. Registered - O-Cloud has registered its IMS with the SMO.  Privileges - The identification & privileges of a SMO user has been verified. |  |
| Begins when | This use case begins when the IMS initiates an Alarm Suppression Activation, Update, or Deactivation operation. |  |
|  | ALARM SUPPRESSION ACTIVATION Steps |  |
| Activation: Step 1 (M) | ALARM SUPPRESSION ACTIVATION INITIATED - An Alarm Suppression  Activation is initiated by the IMS. |  |
| Activation: Step 2.1 (ALT) | ALARM SUPPRESSION ACTIVATION NOTIFICATION - The Alarm  Suppression Activation operation was successfully performed by the IMS without any issues. An Alarm Suppression status change notification is sent to  the SMO by the IMS. The response includes the configured Alarm Suppression criteria. |  |
| Activation: Step 2.2 (ALT) | EXCEPTION: UNEXPECTED CONDITION - The IMS might not be able to  process the Alarm Suppression Activation operation. No notification to the SMO is necessary for the failure case. |  |
|  | ALARM SUPPRESSION UPDATE Steps |  |
| Update: Step 1 (M) | ALARM SUPPRESSION UPDATE INITIATED - An Alarm Suppression Update is initiated by the IMS. |  |
| Update:  Step 2.1 (ALT) | ALARM SUPPRESSION UPDATE NOTIFICATION - The Alarm Suppression  Update operation was successfully performed by the IMS without any issues. An Alarm Suppression status change notification is sent to the SMO by the IMS. The response includes the updated Alarm Suppression criteria. |  |
| Update:  Step 2.2 (ALT) | EXCEPTION: UNEXPECTED CONDITION - The IMS might not be able to process the Alarm Suppression Update operation. No notification to the SMO is necessary for the failure case. |  |
|  | ALARM SUPPRESSION DEACTIVATION Steps |  |
| Deactivation: Step 1 (M) | ALARM SUPPRESSION DEACTIVATION INITIATED - An Alarm Suppression  Deactivation is initiated by the IMS. |  |
| Deactivation: Step 2.1 (ALT) | ALARM SUPPRESSION DEACTIVATION NOTIFICATION - The Alarm  Suppression Deactivation operation was successfully performed by the IMS without any issues. An Alarm Suppression status change notification is sent to the SMO by the IMS. |  |
| Deactivation: Step 2.2 (ALT) | EXCEPTION: UNEXPECTED CONDITION - The IMS might not be able to process the Alarm Suppression Deactivation operation. No notification to the SMO is necessary for the failure case. |  |

|  |  |  |
| --- | --- | --- |
| Deactivation: Step 3 (O) | ALARM LIST SYNCHRONIZATION - After deactivation of Alarm Suppression, the Alarm Synchronization Use Case may be invoked to synchronize alarm status in SMO and IMS. | 3.7.6 Alarm Synchronization Use Case |
| Ends when | This use case ends if the IMS encounters an unexpected condition, or a successful Alarm Suppression Activation / Update / Deactivation operation has been performed. |  |
| Exceptions | UNEXPECTED CONDITION - If the IMS was unable to perform the Alarm  Suppression Activation / Update / Deactivation operation, this exception is encountered. |  |
| Post-conditions | SUCCESS:   1. Notification of the Alarm Suppression Activation / Update / Deactivation is sent to the SMO. 2. For Alarm Suppression Activation, the alarm notification has been suppressed based on the suppression criteria.   For the Alarm Suppression Update, the suppression criteria have been updated. For the Alarm Suppression Deactivation, alarm notification has no longer suppressed and alarm status between SMO and IMS are synchronized.  FAILURE: No notification to the SMO is necessary for the failure case. |  |
| Traceability | REQ-ORC-O2-83 |  |

* + - * 1. UML Sequence Diagram

![](../assets/images/a024556ca576.jpg)

Figure 3-38: IMS-Initiated Alarm Suppression

#### Alarm Purge Use Case

##### High Level Description

The Alarm Purge Use case describes Purging of alarms. Alarms in the alarm list that are older than the Retention Period will be purged. This is the most basic situation, when an alarm in the alarm list is older than the Retention Period, the IMS automatically purges old inactive and acknowledged cleared alarms.

From the Alarm List Configuration use case (see Clause 3.7.11), after the Retention Period expires, alarms in the Alarm List would be purged based on alarm policy. For example, the Retention Period might cause certain types of alarms from a certain Compute Node resource to be purged after a certain period or based on triggers.

This Use Case also describes the forced Purge of alarms requested by the O-Cloud Operator. In this case, alarms to be purged are removed from the Alarm List irrespective of the Retention Period. See RFC 8632 [22] for related specifications. Only inactive alarms or acknowledged active alarms can be purged.

NOTE 1: A forced Purge of alarms might be used if the storage capacity for the Alarm List approaches or is at capacity; and an operator wants to remove (warning and minor) alarms from the Alarm List to free up space.

NOTE 2: If an alarm condition persists after the original alarm is purged that it will reappear as a new alarm (spurred from that same condition) in the Alarm List.

##### Sequence Description

|  |  |  |
| --- | --- | --- |
| **USE CASE STAGE** | **EVOLUTION / SPECIFICATION** | **<<Uses>> Related Use** |
| **Use Case Title** | Alarm Purge Use Case |  |
| **Goal** | This use case describes Alarm Purge operations.   * **Forced Alarm Purge** - Purging Alarms can be requested through a forced Purge operation which purges alarms by removing from the Alarm List irrespective of the Retention Period. * **Alarm List Configuration Use Case** - Alarms can also be purged when the Alarm List Configuration use case changes the Retention Period. Alarms in the Alarm List that are older than the Retention Period will be subject to purging. * **Old Alarms** - When Alarms in the Alarm List are older than the Retention Period, the IMS autonomously purges them by removing from the Alarm List.   NOTE 1: Only inactive alarms or acknowledge active alarms can be purged. | 3.7.11 Alarm List Configuration Use Case |
| **Actors and Roles** | **O-Cloud Operator** - The O-Cloud operator is a user that is interested in performing an Alarm Purge request (forced).  **SMO (FOCOM)** - The FOCOM within the SMO is used in this use case to represent any consumer or management entity that performs the Alarm List Configuration operation or handles the Alarm Purge request (forced).  **IMS** - The IMS within the O-Cloud performs the Alarm Purge operations. |  |
| **Assumptions** | There are no assumptions. |  |
| **Preconditions** | **Connectivity** - The Subscriber has connectivity to the Publisher by some mechanism. The mechanism by which the subscriber achieves connectivity to the publisher is out of the scope of this Use Case.  **O-Cloud Operational** - The O-Cloud is installed, operating, and registered with the SMO.  **Privilege** - The consumer identification and privileges of a SMO user have been verified to be able to perform O2 operations. |  |
| **Begins when** | This use case begins when:   * **Forced Alarm Purge** - An operator at the SMO wishes to purge alarms through an Alarm Purge (forced) operation. * **Alarm List Configuration Use Case** - The Alarm List Configuration operation changes the Retention Period. |  |

|  |  |  |
| --- | --- | --- |
|  | - **Old Alarms** - When the IMS autonomously triggers a process to evaluate if alarms are ready to be purged.  NOTE 2: Additionally, alarms may be purged when a resource is removed or deleted. In this case, the IMS will perform internal clean up to preserve referential integrity. This would be implementation specific. |  |
| **Operator/SMO initiated (Forced) Alarm Purge Steps** | | |
| **Step 1 (M)** | **ALARM PURGE REQUEST (FORCED)**  An entity, or O-Cloud Operator requests for an Alarm Purge to the SMO.  The Alarm Purge request contains an order that requests for inactive and acknowledged alarm(s) to be purged from the Alarm List. |  |
| **Step 2 (M)** | **ALARM PURGE REQUEST (FORCED)**  The Alarm Purge request is sent from the SMO (or entity) to IMS in the O- Cloud.  The IMS processes the Alarm Purge request.  The IMS purges alarms defined in the Alarm Purge request. Only inactive alarms or acknowledge active alarms can be purged. Purged alarms are removed from the Alarm List irrespective of the Retention Period. |  |
| **Step 3.1 (ALT)** | **SUCCESSFUL ALARM PURGE** -  If the purge operation was successful, then a success response is sent to the SMO from the IMS over the O2ims interface |  |
| **Step 3.2 (ALT)** | **SUCCESSFUL ALARM PURGE** -  If the purge operation was successful, then the results from the Alarm Purge command are given to the O-Cloud operator. |  |
| **Step 3.3 (ALT)** | **ALT EXCEPTION: NO ALARMS MATCHING THE ALARM PURGE REQUEST FOUND** -  This exception is encountered when the Alarm Purge request contains only non-existent alarms.  Because no alarms in the Alarm Purge request are in the Alarm List, no alarms will be purged.  An exception is sent from the IMS to the SMO over the O2ims interface indicating that no alarms in the Alarm List match in the alarm purge request. |  |
| **Step 3.4 (ALT)** | **ALT EXCEPTION: NO ALARMS MATCHING THE ALARM PURGE REQUEST FOUND** -  An Alarm Purge Command results are given to the O-Cloud Operator. The Use Case ends. |  |
| **Step 3.5 (ALT)** | **ALT EXCEPTION: UNEXPECTED CONDITION** -  The IMS might not be able to perform the Alarm Purge according to the request. There might have been a software issue trying to process the Alarm Purge request.  An unexpected condition is sent from the IMS to the SMO over the O2ims interface. |  |

|  |  |  |
| --- | --- | --- |
| **Step 3.6 (ALT)** | **ALT EXCEPTION: UNEXPECTED CONDITION** -  A response is sent to the requesting entity from the SMO, that the IMS encountered an unexpected condition processing the request.  The Use Case ends. |  |
| **Alarm Purge from Alarm List Configuration Change of Retention Period Steps** | | |
| **Step 1** | **OLD ALARMS PURGED BY IMS**  The Alarm list Configuration Use Case Steps 1-2 are performed (REF) The IMS processes the Alarm List Configuration request.  The IMS purges alarms because of a change in the Alarm Retention Period. Alarms that are older than the new Alarm Retention Period are purged. Old inactive alarms or acknowledged active alarms are purged by removing them from the Alarm List.  The Alarm list Configuration Use Case Steps 3.1-4 are performed (REF)  NOTE 3: Active alarms and unacknowledged active alarms are not purged irrespective of changes in the Alarm Retention Period changes. | Alarm List Configuration Use Case (3.7.11) |
| **Autonomous Alarm Purge by IMS** | | |
| **Step 1** | **IMS OPERATIONS TRIGGER**  The IMS autonomously triggers a process to evaluate if alarms are ready to be purged. |  |
| **Step 2** | **OLD ALARMS PURGED BY IMS**  Alarms that are older than the Alarm Retention Period are purged autonomously by the IMS. Old inactive alarms or acknowledged active alarms are purged by removing them from the Alarm List.  NOTE 4: The logging of the purge of alarms by the IMS is left to implementation. It is reasonable to expect that the IMS would log the purging of one or more alarms. |  |
| **Ends when** | This Use Case ends under two cases:  **PURGE OPERATION SUCCEEDS** - The use case will end if the Alarm Purge operation successfully completed.  **EXCEPTION CASE** - The use case ends when either the "*No Alarms matching the Alarm Purge request were found*" or "*Unexpected condition*" exceptions are encountered. |  |
| **Exceptions** | **EXCEPTION CASE**: **NO ALARMS MATCHING THE ALARM PURGE**  **REQUEST FOUND** - This exception is encountered when the Alarm Purge request contains only non-existent alarms. In this case, no alarms are purged since none match the request.  **EXCEPTION CASE: UNEXPECTED CONDITION** - The IMS might not be  able to perform to the Alarm Purge request perhaps due to a software fault. In this case, the Unexpected Condition exception is encountered. |  |
| **Post-conditions** | **SUCCESS** - The Alarm Purge operation has been successfully completed and status returned to the requesting entity (e.g., O-Cloud operator). |  |

|  |  |  |
| --- | --- | --- |
|  | **FAILURE** - An exception notification for a "*No Alarms matching the Alarm Purge request were found*" or "*Unexpected Condition*" has been issued. |  |
| **Traceability** | [REQ-ORC-O2-97], [REQ-ORC-O2-98] |  |

##### UML Sequence Diagram

![](../assets/images/4933828d7cc0.jpg)

Figure 3-39: Alarm Purge

### Performance Use Cases

#### Performance Measurement Job Creation Use Case

##### High Level Description

A Performance Measurement Job (PM Job) is a task for collecting measurements and metrics related to O-Cloud Resources. It is the central entity for coordinating performance management activities. The IMS collects metrics and measurements from O-Cloud Resource(s). The PM Job is created in the IMS.

NOTE 1: The concept of PM Job is described in O-RAN WG6 GA&P, Clause 3.9.5. This use case describes:

1. The creation of PM Job(s)
2. The collection and processing of measurement data from O-Cloud Resource(s) tasked by the PM Job. NOTE 2: processing entails operations such as the conversion of counters from one form to another, storage of data, scraping data from one format to another.

##### Sequence Description

|  |  |  |
| --- | --- | --- |
| **USE CASE STAGE** | **EVOLUTION / SPECIFICATION** | **<<Uses>> Related Use** |
| **Use Case Title** | Performance Measurement Job (PM Job) Creation Use Case |  |
| **Goal** | The PM Jobs are created within the IMS.  Performance data is made available to the SMO by the PM Jobs. |  |
| **Actors and Roles** | SMO (FOCOM) - The FOCOM within the SMO is used in this use case to represent any consumer of performance data.  IMS - The IMS within the O-Cloud is used to represent any provider of the performance data.  O-Cloud Resource - This is a resource in the O-Cloud that produces metrics and measurements. See WG6 O2 CADS [7] for definition of an O-Cloud Resource. |  |
| **Assumptions** | There are no assumptions. |  |
| **Preconditions** | Connectivity - The Subscriber has connectivity to the Publisher by some mechanism. The mechanism by which the subscriber achieves connectivity to the publisher is out of the scope of this Use Case. |  |
| **Begins when** | The Use Case begins during O-Cloud genesis when the O-Cloud starts Preinstalled PM jobs. |  |
| **Step 1 (M)** | PREINSTALLED PM JOBS STARTED - O-Cloud Preinstalled PM Jobs are started within the IMS upon cloud genesis. These Preinstalled PM Jobs address Performance Management needs for O-Cloud functions. |  |
| **Step 2 (M)** | IMS INFORMS SMO PREINSTALLED PM JOBS - The IMS informs SMO of the  Preinstalled PM Jobs that have been started within the IMS after O-Cloud genesis. |  |

|  |  |  |
| --- | --- | --- |
| **Step 3 (OPT)** | SMO REQUEST - (Optional) SMO Requests for additional PM Jobs.  (Optional) If the request contains subscription related information, then an *embedded subscription* will be created as part of the created PM Job(s) or threshold(s).  See note 1 and 2. |  |
| **Step 4 (OPT)** | IMS RESPONSE - PM Jobs creation status returns the status of PM Jobs running in the IMS. |  |
| **Step 5.1 (M)** | OPERATION - O-Cloud resources operate. |  |
| **Step 5.2 (M)** | DATA CREATED - Performance data (metrics and measurements) is identified. |  |
| **Step 5.3 (M)** | DATA COLLECTED BY IMS - The O-Cloud resources send performance data to the IMS. The collected performance data is processed according to the PM Jobs. The PM Jobs make the performance data available for reporting. |  |
| **Ends when** | The Use Case ends when the PM Jobs have a body of data ready for reporting. |  |
| **Exceptions** | None specified in the present document version. |  |
| **Post-conditions** | The PM Jobs have performance data across O-Cloud Resources available for subscription reporting. |  |
| **Traceability** | [REQ-ORC-O2-31, REQ-ORC-O2-32] |  |
| NOTE 1: An *embedded subscription* means to optionally embed subscription related into the PM Job or threshold. Ends up in created PM Job objects.  NOTE 2: This allows the SMO to request for a subscription following the ETSI format or the 3GPP procedure. | | |

##### UML Sequence Diagram

![](../assets/images/9bd49e583e9d.jpg)

Figure 3-40: PM Job Creation

#### Performance Management Subscription Use Case

##### High Level Description

This use case describes the flow for an entity to subscribe to Performance Management data from an O-Cloud. Performance Measurement Jobs collect and compose measurements. The PM Subscription determines when and how those measurements are reported. The subscription allows a subscriber to get data that has been collected in the O- Cloud. Once subscribed, the measurement data is sent to a performance management subscriber, an entity north-bound of the O-Cloud. In the O-RAN context, it is the SMO; however, it could be another other subscribing entity.

??

![](../assets/images/063060fe445e.jpg)

Figure 3-41: PM Data and PM Subscription

The Figure above shows the basic flow of Performance Data collection and subscription. Measurement and telemetry data is collected within the O-Cloud and gathered by PM Job(s) and stored locally. The Performance Subscription Manager within the IMS can retrieve the data to be sent to the SMO. There is a publisher and subscriber notification end point that is used to send the performance data to that is defined in the subscription. Measurement reports are composed at the Performance Subscription Manager within the IMS and can then be used to perform analysis on within the SMO.

Performance measurements in an O-Cloud might use event notification reporting, stream-based reporting, or file-based reporting to a subscriber. For performance measurements to be sent, a subscription needs to be created. The subscription indicates an end point for where the performance measurements should be sent to. The subscription filter qualifies what data from the PM Jobs should be sent.

The subscription will indicate the interval. A capabilities exchange could occur between the SMO and the O-Cloud indicating the mechanism and formats supported by the O-Cloud. The SMO can then subscribe to the mechanisms and formats within the subscription filter. In the capabilities exchange, the IMS would report the jobs and their collection intervals.

##### Sequence Description

|  |  |  |
| --- | --- | --- |
| **USE CASE STAGE** | **EVOLUTION / SPECIFICATION** | **<<Uses>> Related Use** |
| **Use Case Title** | Performance Management Subscription (IMS) |  |
| **Goal** | This use case describes a flow where one or more consumers which want to receive performance event reporting notifications (file ready notifications, event notification reporting, or streaming reporting) can issue a subscription to IMS which publishes Performance events. |  |

|  |  |  |
| --- | --- | --- |
|  | Each SUBSCRIBER has a *consumer subscription identifier*. There is one consumer subscription identifier per subscription. It doesn't have to be unique for that subscription. The consumer subscription identifier is a character string that can be associated with meta-data within the SMO. See note. |  |
| **Actors and Roles** | SMO (FOCOM) - The FOCOM within the SMO is used in this use case to represent any consumer of performance measurement data.  IMS - The IMS within the O-Cloud is used to represent any provider of the performance measurement data. |  |
| **Assumptions** | There can be multiple subscribers to a single publisher. The subscriber-publisher cardinality is not enforced nor monitored.  Each subscription is associated with one subscriber. Each subscription provides information about a single endpoint for receiving performance related notifications. Thus, there cannot be multiple endpoints for sending performance related notifications from a single subscription.  The subscriber may not be the ultimate consumer of performance notifications. The subscriber is not necessarily the same entity as the endpoint for notifications. |  |
| **Preconditions** | CONNECTIVITY- The Subscriber has connectivity to the publisher by some mechanism. The mechanism by which the subscriber achieves connectivity to the publisher is out of the scope of this Use Case.  O-Cloud OPERATIONAL- O-Cloud is installed, operating, and the IMS in the O- Cloud has registered with SMO. |  |
| **Begins when** | The use case is triggered when a subscriber wishes to:   1. NOTIFICATION - A subscriber wishes to be notified of O-Cloud performance events. 2. OPERATOR INITIATED - An O-Cloud operator may also initiate a subscription. |  |
| **Step 1 (M)** | NOTIFICATION CRITERIA - This gives a notification criterion which initiates the subscription.  The subscription criteria will indicate whether the subscribing entity wish to have file based, event notification based, or streaming based performance reporting. |  |
| **Step 2 (M)** | SUBSCRIPTION - The subscriber sends a performance event subscription to the publisher. The subscription includes the *Consumer Subscription Identifier.* |  |
| **Step 3 (O)** | CALLBACK REACHABILITY CHECK (Should) - A Reachability Check can be performed between the subscriber and publisher. This is a connectivity and authorization check. This check is optional. However, it is recommended that a reachability check is performed. This step should be performed; though it is stated as optional in ETSI IFA 032 [19]. |  |
| **Step 4 (ALT)** | REACHABILITY SUCCESS - This step indicates that the reachability check has passed successfully. |  |
| **Step 5 (ALT)** | REACHABILITY FAILURE - This step indicates that the reachability check has failed. |  |
| **Step 6 (ALT)** | SUBSCRIPTION DENIED (FAILURE) - The IMS has failed the reachability check. IMS will proceed to deny the performance subscription. |  |

|  |  |  |
| --- | --- | --- |
| **Step 7 (ALT)** | SUBSCRIPTION STATUS (FAILURE) - If the reachability check has failed, the subscription status will indicate a failure. The use case will end at this point. This is a return to Step 2. |  |
| **Step 8 (M)** | SUBSCRIPTION ACKNOWLEDGE - The publisher indicates a subscription acknowledge. This essentially indicates a success for the subscription. (Optional) The *consumer subscription identifier may* be passed back in the subscription acknowledge. |  |
| **Step 9 (M)** | SUBSCRIPTION STATUS (SUCCESS) - A subscription status will indicate a success back to O-Cloud Operator. This is a return to Step 1. |  |
| **Ends when** | This use case ends when a performance subscription status has been sent successfully or on one of the failure cases, when there was a subscription failure. |  |
| **Exceptions** | FAILURE CASE 1: FAILURE INDICATION - The Subscription acknowledge indicates a failure.  FAILURE CASE 2: CONNECTIVITY ISSUE - Can't reach the publisher, the reachability check has failed.  ALTERNATE CASE 1: VALIDITY CHECK (Optional) - A validity check confirms the reachability of the callback endpoint, checking that the publisher has permission to reach the consumer through a TLS connection. If a validity check is performed AND it fails, this would lead to Fail Case 2 (Connectivity Issue). |  |
| **Post-conditions** | SUCCESS: The publisher has the subscriber call-back (a fully qualified URL), and it is persisted. The publisher has created its own internal association for subscription which includes the consumer subscription identifier, the call-back URL and subscription filter.  FAILURE: The performance subscription operation has failed. See the exception cases. |  |
| **Traceability** | REQ-ORC-O2-15, REQ-ORC-O2-37, REQ-ORC-O2-38 |  |
| NOTE: The general event Subscribe pattern is defined in clause 5.9 of ETSI GS NFV-SOL 015 and clause 4.6.2 of 3GPP TS 29.501 [13]. An example of this is in clause 7.5.4 of ETSI GS NFV-IFA 013 for Performance Management subscribe operation with filtering. Examples of Performance Management operations applied to Network Service objects are described in (stage 2) clause 7.5 of ETSI GS NFV-IFA 013 [16]. | | |

##### UML Sequence Diagram

![](../assets/images/0071d4525867.jpg)

Figure 3-42: PM Subscription

#### Performance Measurement Event Notification Reporting Use Case

##### High Level Description

In the context of O-RAN Cloud managed systems, performance measurements can be transmitted by one of three mechanisms: event notification(s), streaming based reporting, or file-based reporting. The performance management subscription use case defined the service connection end point where the events are sent to in the subscription filter.

* **EVENT NOTIFICATIONS** - Event based reporting would send individual events to a subscriber and a connection is opened each time a notification is to be sent. Non-real time performance measurements could use event-notification reporting mechanisms.
* **STREAMING BASED REPORTING** - Streaming is typically used for a continuous session to send performance measurement data. For streaming, the connection is opened and kept open without having to renegotiate.
* **FILE REPORTING** - Off-line, or non-real time performance measurements could use file-based or event- notification reporting mechanisms.

The SMO is expected to support all three of the above mechanisms. However, any given IMS (O-Cloud) implementation may not support all three.

This use case will cover performance management event notification reporting to send performance data. An entity that subscribes to these performance management event notifications will get an event or callback invoked for each reporting message.

Notification reports are based on a subscription. The performance management subscription determines three things:

* **REPORTING FREQUENCY** - The subscription filter indicates the reporting frequency when data is included in a report. The subscription filter establishes the trigger mechanism during the subscription that trigger when the callback would be invoked.
* **METHOD & FORMAT** - The method & format are specified in the subscription filter. The method of delivery is event notifications, streaming based reporting, or file reporting mechanisms. The format being the encoding scheme used for the payload. Formats will be defined in the data model.
* **ITEMS TO REPORT** - It is expected each criterion define: a list of PM Jobs and their lists of measures that are of interest to report.

Event based notification would be utilized for low frequency and low volume of reporting since a session is re- established with the sending of each event. At higher data volumes a continuous session would be more efficient. See the streaming reporting use case for more details.

There are three basic exception cases:

* **CONNECTION LOST** - If connectivity between the subscriber and the publisher (IMS) is lost, a connection would not be able to be opened. There are implementation considerations such as: how long data is held for, recovery of the connection, backing up data, preventing data storms upon recovery, and management after recovery.
* **DATA UNAVAILABLE** - This exception occurs when the performance measurement data is not available in the O-Cloud on the IMS when it should be reported. This results in a missed timing window when data was expected, but it was not available. In the interface, it would be expected a response would indicate data was unavailable. For example, in a RESTful interface an "404" would indicate this exception. There are implementation considerations such as: O-Cloud failures, IMS failures, data recovery, and data synchronization.
* **PM JOB FAILURES & ISSUES** - If the PM Job is unable to perform its function. If there are failures or issues with the PM Job(s) which might result in data being unavailable it is expected that there would alarms that would be raised by the IMS. This results in data being unavailable.

##### Sequence Description

|  |  |  |
| --- | --- | --- |
| **USE CASE STAGE** | **EVOLUTION / SPECIFICATION** | **<<Uses>> Related Use** |
| **Use Case Title** | Performance Measurement Event Notification Reporting (IMS) Use Case |  |
| **Goal** | The following goals for this use case are:  SEND EVENTS - To report performance data through an event-based reporting mechanism to a subscriber.  CONNECTION - To establish a connection to the subscriber to send performance data. |  |
| **Actors and Roles** | SMO (FOCOM) - The FOCOM within the SMO is used in this use case to represent any consumer of performance measurement data.  IMS - The IMS within the O-Cloud is used to represent any publisher of the performance measurement data. |  |

|  |  |  |
| --- | --- | --- |
| **Assumptions** | It is assumed that performance management subscription has been established.  It is also assumed that the Performance Measurement (PM) Job Creation use case has successfully completed. |  |
| **Preconditions** | CONNECTIVITY - The Subscriber has connectivity to the publisher.  AUTHENTICATION - The Publisher has user credentials for the Subscriber's end point.  PM JOB(S) ACTIVE - PM Job(s) are running and actively collecting performance measurement data. |  |
| **Begins when** | When the Performance Subscription Manager (PSM) determines that performance data should be sent |  |
| **Step 1.1 (M)** | DATA TO BE SENT - The Performance Subscription Manager based on the subscription(s) determines that performance data needs to be sent, and the subscription criteria indicate that data should be sent with an event notification. |  |
| **Step 1.2 (M)** | RETRIEVE DATA - The PSM retrieves the performance data from the local storage. The performance data is written by the PM Job(s) within the O-Cloud. The data is composed to be ready to be sent. See note 1. |  |
| **Step 2 (M)** | OPEN CONNECTION - A connection is attempted by the IMS to the subscription endpoint. The subscription endpoint is typically the SMO but could be some other entity. |  |
| **Step 3 (ALT)** | CONNECTION TO ENDPOINT SUCCESSFUL - The connection to the subscription endpoint was opened successfully, and a success response is given to the publisher (IMS). |  |
| **Step 4 (ALT)** | EXCEPTION: CONNECTION CANNOT BE ESTABLISHED - A connection could  not be established to the endpoint. See notes 2, 3, and 4. |  |
| **Step 5 (M)** | SEND PERFORMANCE NOTIFICATION EVENT - A connection has been successfully established. IMS sends performance data in a performance event notification. |  |
| **Step 6 (ALT)** | PERFORMANCE DATA RECEIVED RESPONSE - The performance data was received successfully by the subscriber. A Performance Data Received response is sent to the publisher (IMS). |  |
| **Step 7 (ALT)** | EXCEPTION: RECEIVER REJECTED REQUEST - The receiver (subscriber) is indicating to the publisher (IMS) that it has rejected the data. This might occur with loss of user privilege.  Translations of the data type or not following the proper data format may result in this exception. Conversion of the data was improper. Format rejected. For example, yang data requested, json sent.  This exception is suggested to be logged; however, it is left up to the implementation if it is logged.  In the received rejected data the post-condition is that the subscriber likely suspends the job. The subscription exists, but data cannot be sent. |  |
| **Ends When** | This Use Case ends when either the Performance Management Event Notification has been sent successfully, or one of the two Exception cases has been |  |

|  |  |  |
| --- | --- | --- |
|  | encountered - Connection would not be established, or the receiver rejected the data. |  |
| **Exceptions** | EXCEPTION: CONNECTION CANNOT BE ESTABLISHED - In this case, a  connection to the subscriber endpoint was attempted but could not be established.  EXCEPTION: RECEIVER REJECTED REQUEST - In this case, the subscriber has indicated that it is rejecting the data. |  |
| **Post-conditions** | SUCCESSFUL - A successful post condition is that a connection is successfully opened. The performance management notification event has been sent and then the connection closed.  FAILURE - The use case may end with a post-condition where it encountered one of the two exceptions. If the connection was unable to be established, attempts to reopen the connection might be tried. In the received rejected data the post- condition is that the subscriber likely suspends the job. The subscription exists, but data cannot be sent. |  |
| **Traceability** | [REQ-ORC-O2-39] |  |
| NOTE 1: It might be possible that the resource might be unavailable, and objects are deleted and data from the resource are not available. This would be incorporated into the data to be sent.  NOTE 2: It is expected that most IMS implements would log a fault would be logged in this case by the IMS.  NOTE 3: A dead subscription endpoint might be encountered. In this case, a retry interval might be specified; after which it will attempt to reopen a connection. A configuration for a set number of attempts might also be used.  However, it is left up to implementation for a specific solution.  NOTE 4: This exception is suggested to be logged; however, it is left up to the implementation if it is logged. | | |

##### UML Sequence Diagram

![](../assets/images/6c58cdd542ac.jpg)

Figure 3-43: Performance Measurement Event Notification Reporting

#### Performance Measurement Streaming Reporting Use Case

##### High Level Description

In the context of O-RAN Cloud managed systems, performance measurements can be transmitted by one of three mechanisms: active collection by a consumer, active push by a producer (e.g. streaming-based reporting), and/or file- based reporting. The performance management subscription use case defines the service connection end point where the events are sent to in the subscription filter. Both active push and active collection have similar purposes, but the active control is with either the producer or consumer.

* **ACTIVE PUSH BY A PRODUCER** - A producer (IMS) could send performance data through pushing data to a consumer. At least two options may be identified:
  + **STREAMING** - First is where a connection between consumer & producer persists between the data reports which is like 3GPP streaming reporting (3GPP TS28.532 Clause 11.5). For streaming, the

connection is typically opened and kept open without having to renegotiate. Streaming is used to send a flow of performance measurement data bursts. Once the WebSocket is opened, the meta- data about the streams is exchanged, the consumer can then receive the serialized data. The point is that meta-data does not need to be exchanged with every data burst.

* + **EVENT NOTIFICATIONS -** The second option is by event notifications, where a new connection is reestablished between a consumer and producer for each data reporting. This is like how 5GC SBA works (3GPP TS23.501, TS23.502 services). The data is sent as a payload of a notification. The major difference is in the overhead associated with the notification because even to report a small amount data requires the header and establishing a connection.
* **ACTIVE COLLECTION BY A CONSUMER** - The consumer could also actively collect data from a producer.
  + **CONFIGURATION MANAGEMENT READ ONLY ATTRIBUTES** - Reuse of configuration management approach where attribute conveying the value of performance data is read by the consumer like any other configuration management attribute.
  + **DATA SCRAPING** - Use of data scraping common to cloud native implementations where a collector reads the data from a pre-defined URI.
* **FILE BASED REPORTING** - File based reporting is not used for real-time, historically it is used for low-priority or background collection for large amounts of performance data. The file-based reporting has potential options: file upload by the producer and file download by the consumer following a file ready notification.
  + **FILE UPLOAD BY PRODUCER -** There is not an artificial delay, the data is reported whenever it is available. The shortfall is that it involves action by the producer.
  + **FILE DOWNLOAD BY CONSUMER -** It removes the burden from the producer, but may rely upon either periodic polling, or notification from the producer about the data being ready for download. The latter case is how 3GPP file-based reporting working in 3GPP TS28.532 Clause 11.6; and ETSI ISG NFV specifications (IFA008, IFA013).

The SMO is expected to support all three of the above mechanisms. However, any given IMS (O-Cloud) implementation may not support all three.

To stream performance measurements, a connection session is established between the IMS as a publisher and a subscriber (FOCOM at the SMO). While the connection persists, performance data would be transmitted while it matches the subscription filter.

Performance Data is sent to the subscriber endpoint based on the subscription filter. The PM Jobs collect performance data and store it locally. When the subscription indicates when data would be sent, the Performance Subscription Manager (PSM) within the IMS retrieves data. Then, the PSM formats it and sends it in a notification event in a stream. Thus, streaming-based reporting sends performance data to a subscriber endpoint based on a subscription. The subscription filter may give an interval or specify a trigger. Each element may have a criterion that determines when it is sent.

##### Sequence Description

|  |  |  |
| --- | --- | --- |
| **USE CASE STAGE** | **EVOLUTION / SPECIFICATION** | **<<Uses>> Related Use** |
| **Use Case Title** | Performance Measurement Streaming Reporting Use Case |  |
| **Goal** | This Use Case describes Performance Measurement Streaming Reporting. Performance Measurement data is sent periodically or triggered as specified by the subscription filter.  The connections are kept open for the duration of a streaming session. This use case has the following goals:  - If a connection is not already opened, then open a connection to report streaming performance data. See note 1. |  |

|  |  |  |
| --- | --- | --- |
|  | - Send a series of performance measurement data through the opened connection based on the subscription filter. |  |
| **Actors and Roles** | SMO (FOCOM) - The FOCOM within the SMO is used in this use case to represent any consumer of performance measurement data.  IMS - The IMS within the O-Cloud is used to represent any publisher of the performance measurement data. |  |
| **Assumptions** | SUBSCRIPTION EXISTS - It is assumed that performance management subscription has been established.  PM JOBS - It is also assumed that the Performance Measurement (PM) Job create use case has successfully completed. |  |
| **Preconditions** | CONNECTIVITY - The Subscriber has connectivity to the Publisher.  AUTHENTICATION - The Publisher has user credentials for the Subscriber's end point.  PM JOB(S) ACTIVE - PM Job(s) are running and actively collecting performance measurement data. |  |
| **Begins when** | This use case begins when the subscription filter at the IMS indicates that a streaming performance data session should be opened. -or-  This use case begins when the subscriber initiates a streaming session. |  |
| **Step 1.1 (M)** | DATA TO BE SENT - The Performance Subscription Manager (PSM) based on the subscription(s) determines that performance data needs to be sent, and the subscription filter indicates that data should be sent with a performance measurement streaming reporting. |  |
| **Step 1.2 (M)** | RETRIEVE DATA - The PSM retrieves the performance data from the local storage. The performance data is written by the PM Job(s) within the O-Cloud. The data is composed to be ready to be sent. See notes 2, 3, 4, and 5. |  |
| **Step 2.1 (ALT1)** | PUBLISHER INITIATED SESSION CONNECTION  OPEN CONNECTION - If Publisher (IMS) does not already have a connection to the Subscriber (FOCOM), then IMS attempts to open a connection to the subscription endpoint. The Subscriber is typically the SMO but could be some other entity. |  |
| **Step 2.2 (ALT1)** | PUBLISHER INITIATED SESSION CONNECTION  CONNECTION TO ENDPOINT SUCCESSFUL - The connection to the subscription endpoint was opened successfully, and a success response is given to the publisher (IMS). |  |
| **Step 2.3 (ALT1)** | PUBLISHER INITIATED SESSION CONNECTION  EXCEPTION: CONNECTION CANNOT BE ESTABLISHED - A connection could not be established to the subscription endpoint. See note 6.  In this case, the use case ends. See notes 7 and 8. |  |
| **Step 3.1 (ALT2)** | SUBSCRIBER INITIATED SESSION CONNECTION |  |

|  |  |  |
| --- | --- | --- |
|  | OPEN CONNECTION - If FOCOM does not already have a connection to the Publisher (IMS), then FOCOM attempts to open a connection to the Publisher endpoint. |  |
| **Step 3.2 (ALT2)** | SUBSCRIBER INITIATED SESSION CONNECTION  CONNECTION TO ENDPOINT SUCCESSFUL - The connection to the subscription endpoint was opened successfully, and a success response is given to the Subscriber (FOCOM). |  |
| **Step 3.3 (ALT2)** | SUBSCRIBER INITIATED SESSION CONNECTION  EXCEPTION: CONNECTION CANNOT BE ESTABLISHED - A connection could not be established to the Publisher endpoint.  In this case, the use case ends. See notes 9 and 10. |  |
| **Step 4 (M)** | SEND PERFORMANCE STREAM - A connection has been successfully established or a connection already exists between the Publisher and Subscriber.  The IMS sends performance data in a performance stream. |  |
| **Step 5 (ALT)** | PERFORMANCE DATA RECEIVED RESPONSE - The performance data was received successfully by the Subscriber. A Performance Data Received response is sent to the Publisher (IMS). |  |
| **Step 6 (ALT)** | EXCEPTION: RECEIVER REJECTED REQUEST - The receiver (subscriber) is indicating to the Publisher (IMS) that it has rejected the data. This might occur with loss of user privilege.  Translations of the data type or not following the proper data format may result in this exception. Conversion of the data was improper. Format rejection might also result in this exception. For example, yang data requested, however json sent.  This exception is suggested to be logged; however, it is left up to the implementation if it is logged.  In the received rejected data, the post-condition is that the subscriber likely suspends the subscription. The subscription exists, but data cannot be sent.  See note 11. |  |
| **Ends When** | This Use Case ends when either the Performance Event data has been successfully streamed, or one of the two Exception cases has been encountered: connection would not be established, or the receiver rejected the data. |  |
| **Exceptions** | EXCEPTION: CONNECTION CANNOT BE ESTABLISHED - In this case, a  persistent connection to the Subscriber endpoint did not exist and was attempted but could not be established (in the publisher-initiated case). Also, if a connection to the publisher endpoint could not be established (in the subscriber-initiated case).  EXCEPTION: RECEIVER REJECTED REQUEST - In this case, the Subscriber has indicated that it is rejecting the data. |  |
| **Post-conditions** | SUCCESSFUL - If a connection did not already exist, A successful post condition is that a connection is successfully opened. Then, the performance has been streamed. The connection is kept open. |  |

|  |  |  |
| --- | --- | --- |
|  | FAILURE - The use case may end with a post-condition where it encountered one of the two exceptions. If the connection was unable to be established, attempts to reopen the connection might be tried. In the receiver rejected data exception case, the post-condition is that the Subscriber likely suspends the job. The subscription exists, but data cannot be sent. See note 12. |  |
| **Traceability** | REQ-ORC-O2-40, REQ-ORC-O2-41 |  |
| NOTE 1: Recovery from a failed attempt to open a connection is left to implementation.  NOTE 2: It might be possible that the resource might be unavailable, and objects are deleted and data from the resource are not available. This would be incorporated into the data to be sent.  NOTE 3: There are two alt series of steps:  Alt 1 - steps 2.1, 2.2, and 2.3. This describes a publisher-initiated session connection. In this case, the Publisher opens a permanent connection to the Subscriber.  Alt 2 - steps 3.1, 3.2, and 3.3. This describes a subscriber-initiated session connection. In this case, the Subscriber opens a permanent connection to the Publisher.  NOTE 4: Only one of the Alt series of steps will be used in any given cloud implementation. They are both equivalently viable options.  NOTE 5: An alternative pattern would be that the upon evaluation of the subscription, a session would be established immediately before any data is needed to be sent. This would be left up to implementation.  NOTE 6: It is expected that most IMS implementations would log a fault. This exception is suggested to be logged; however, it is left up to the implementation if it is logged.  NOTE 7: A dead subscription endpoint might be encountered. In this case, a retry interval might be specified; after which it will attempt to reopen a connection. A configuration for a set number of attempts might also be used.  However, it is left up to implementation for a specific solution.  NOTE 8: The protocol that opens the connection should have a means whereby the Publisher (IMS) can assess that a connection could not be established.  NOTE 9: It is expected that most FOCOM implementations would log a fault. This exception is suggested to be logged; however, it is left up to the implementation if it is logged.  NOTE 10: The protocol that opens the connection should have a means whereby the Subscriber (FOCOM) can assess that a connection could not be established.  NOTE 11: This is left to implementation. NOTE 12: This is left to implementation. | | |

##### UML Sequence Diagram

![](../assets/images/5d96f3fa649a.jpg)

Figure 3-44: Performance Measurement Streaming Reporting

#### Performance Measurement File Reporting Use Case

##### High Level Description

In the context of O-RAN Cloud managed systems, performance measurements can be transmitted by one of three mechanisms: active collection by a consumer, active push by a producer (e.g. streaming-based reporting), and/or file- based reporting.

The SMO is expected to support all three of the above mechanisms. However, any given IMS (O-Cloud) implementation may not support all three.

File based reporting has two cases:

* File Upload by Producer (Push) - In a file upload case, the Performance Subscription Manager (PSM) within the IMS determines that data would be sent. Then, the PSM fetches the data, bundles it into a file, and sends the performance data as a file to a subscription end point.
* File download by Consumer (Pull) - In a file download by consumer case, the subscription indicates that the data should be made available. When this event occurs, the PSM retrieves the data and sends a file ready notification to the SMO. Later, the SMO will retrieve the file.

##### Sequence Description

|  |  |  |
| --- | --- | --- |
| **USE CASE STAGE** | **EVOLUTION / SPECIFICATION** | **<<Uses>> Related Use** |
| **Use Case Title** | Performance Measurement File Reporting Use Case |  |
| **Goal** | This Use Case describes Performance Measurement File Reporting. Performance Measurement data is sent periodically or triggered as specified by the subscription filter.  File based reporting has goals based on the two different file reporting cases:   * FILE UPLOAD BY PRODUCER (Push) - In a file upload case, the objective is for the Performance Subscription Manager (PSM) within the IMS to send the performance data as a file to a subscription end point. * FILE DOWNLOAD BY CONSUMER (Pull) - In a file download by consumer case, the goal is for the SMO to eventually retrieve the performance data. This is done after a file ready notification is sent to the subscriber, typically the SMO. |  |
| **Actors and Roles** | SMO (FOCOM) - The FOCOM within the SMO is used in this use case to represent any consumer of performance measurement data.  IMS - The IMS within the O-Cloud orchestrates the sending of the performance measurement data. |  |
| **Assumptions** | FILE FORMATING - The IMS formats the performance data in files that are compliant to the WG6 O2 performance measurement information model. The formatting is not specified in the present document version.  PM JOBS - It is also assumed that the Performance Measurement Job Create use case has successfully completed.  FILE SIZE - The payload size of the performance measurement file is not specified in the present document version. |  |
| **Preconditions** | CONNECTIVITY - The SMO (FOCOM) has connectivity to the IMS.  AUTHENTICATION - The IMS has user credentials for the SMO (FOCOM) end point.  PM JOB(S) ACTIVE - PM Job(s) are running and actively collecting performance measurement data. |  |

|  |  |  |
| --- | --- | --- |
|  | SUBSCRIPTION - A performance management subscription has been established. This applies for either push or pull case. |  |
| **Begins when** | FILE UPLOAD BY PRODUCER (Push) - For this case, the use case begins when the subscription filter at the IMS indicates that a performance data should be sent to a consumer in a file-based format over O2. -or-  FILE DOWNLOAD BY CONSUMER (Pull) - For this case, the use case begins when the subscription filter at the IMS indicates that a file ready notification should be sent to a consumer over O2. |  |
| **Step 1.1 (M)** | DATA TO BE SENT - The Performance Subscription Manager (PSM) based on the subscription(s) determines that performance data needs to be sent, and the subscription filter indicates that data should be sent using performance measurement file reporting. |  |
| **Step 1.2 (M)** | RETRIEVE DATA - The PSM retrieves the performance data from the local storage. The performance data is written by the PM Job(s) within the O-Cloud. The data is composed to be ready to be sent. See note 1. |  |
| **Step 2 (M)** | OPEN CONNECTION - The producer (IMS) opens a connection to the consumer (FOCOM). The producer opens a connection to a consumer endpoint based on the subscription(s). The consumer, or subscriber, is typically the SMO but could be some other entity. |  |
| **Step 2.1 (ALT)** | CONNECTION TO ENDPOINT SUCCESSFUL - The connection to the consumer (subscription) endpoint was opened successfully, and a success response is given to the producer (publisher, IMS). |  |
| **Step 2.2 (ALT)** | EXCEPTION: CONNECTION CANNOT BE ESTABLISHED - A connection could not be established to the consumer endpoint. See notes 2, 3, and 4. |  |
| **Step 3.1 (ALT1)** | See notes 5 and 6.  FILE UPLOAD BY PRODUCER (push)  SEND PERFORMANCE DATA FILE - The producer (IMS) sends the requested Performance Data file(s) to the consumer (FOCOM) over the O2 interface. |  |
| **Step 3.2 (ALT1)** | FILE UPLOAD BY PRODUCER  PERFORMANCE DATA FILE RECEIVED - An acknowledgement is sent from the consumer (FOCOM) to the producer (IMS) that the Performance Data file(s) have been successfully received. |  |
| **Step 3.3 (ALT1)** | FILE UPLOAD BY PRODUCER  EXCEPTION: INVALID FORMAT - In this exception case, the Performance Data file(s) are not following the proper data format. This might result in the improper conversion of the Performance Data. For example, yang data requested, however json sent.  This exception is suggested to be logged; however, it is left up to the implementation if it is logged.  If this exception is encountered, the use case ends. |  |

|  |  |  |
| --- | --- | --- |
| **Step 4.1 (ALT1)** | FILE DOWNLOAD BY CONSUMER (pull)  SEND FILE READY NOTIFICATION - The producer (IMS) sends a *file ready* notification to the consumer (FOCOM) over the O2 interface. This indicates that the requested Performance Data file(s) are ready for retrieval by the consumer. And endpoint is provided to the consumer. |  |
| **Step 4.2 (ALT1)** | FILE DOWNLOAD BY CONSUMER  RETRIEVE PERFORMANCE DATA FILE - The consumer (FOCOM) retrieves the Performance Data file(s) from the endpoint given by the producer (IMS) over the O2 interface. |  |
| **Step 4.3 (ALT1)** | FILE DOWNLOAD BY CONSUMER  PERFORMANCE DATA FILE RECEIVED - An acknowledgement is sent from the consumer (FOCOM) to the producer (IMS) that the Performance Data file(s) have been successfully received. |  |
| **Step 4.4 (ALT1)** | FILE DOWNLOAD BY CONSUMER  EXCEPTION: INVALID FORMAT - In this exception case, the Performance Data file(s) are not following the proper data format. This might result in the improper conversion of the Performance Data. For example, yang data requested, however json sent.  This exception is suggested to be logged; however, it is left up to the implementation if it is logged.  If this exception is encountered, the use case ends. |  |
| **Ends When** | This Use Case ends when either the Performance Data file(s) have been successfully sent, or a *file ready* notification is sent to the consumer.  The Use Case may end with if one of the two Exception cases have been encountered: connection would not be established, or an invalid format. |  |
| **Exceptions** | EXCEPTION: CONNECTION CANNOT BE ESTABLISHED - In this case, a  connection between the consumer and producer could not be established. Specific implementations may log this fault and reattempt to open the connection. If this exception is encountered, the use case ends.  EXCEPTION: INVALID FORMAT - In this exception case, the Performance Data file(s) are not following the proper data format. If this exception is encountered, the use case ends. |  |
| **Post-conditions** | SUCCESSFUL - In a successful post condition, a connection is successfully opened. The producer (IMS) sends the requested Performance Data file(s) to the consumer (FOCOM), or the producer (IMS) sends a *file ready* notification to the consumer (FOCOM) over the O2 interface.  FAILURE - The use case may end with a post-condition where it encountered one of the two exceptions. If the connection was unable to be established, attempts to reopen the connection might be tried based on implementation. In the receiver invalid format exception case, the post-condition is that the files were not sent, and the use case ends. |  |
| **Traceability** | REQ-ORC-O2-42, REQ-ORC-O2-43, REQ-ORC-O2-44 |  |
| NOTE 1: It might be possible that the resource might be unavailable, and objects are deleted and data from the resource are not available. This would be incorporated into the data to be sent. If the resource was out of service for the collection time period, the suspect flag might be raised in the PM data. If the PM job was deleted or gone, the counter would be listed in the deleted measures list so that it is still accounted for in the report by the PSM. | | |

NOTE 2: It is expected and suggested that most IMS implementations would log a fault for this exception. However, it is left up to the implementation if it is logged. If this exception is encountered, the use case ends.

NOTE 3: A dead consumer endpoint might be encountered. In this case, a retry interval might be specified; after which it will attempt to reopen a connection. A configuration for a set number of attempts might also be used.

However, it is left up to implementation for a specific implementation.

NOTE 4: The protocol that opens the connection should have a means whereby the producer (IMS) can assess that a connection could not be established.

NOTE 5: There are two alt series of steps:

Alt 1 - steps 3.1, 3.2, and 3.3. This describes the file upload by Producer case, where the producer pushes performance measurement data to the consumer in a file-based format over O2.

Alt 2 - steps 4.1, 4.2, and 4.3. This describes the file download by Consumer case, where the consumer pulls the performance measurement data after being given a file ready notification by the Producer.

NOTE 6: Only one of the Alt series of steps will be used in any given cloud implementation. They are both equivalently viable options.

##### UML Sequence Diagram

![](../assets/images/f710b30f9aa7.jpg)

Figure 3-45: Performance Measurement File Reporting

#### Performance Measurement Job Query Use Case

##### High Level Description

PM Jobs collect performance data on O-Cloud infrastructure resources. Preinstalled Performance Measurement Jobs (PM Jobs) are started on O-Cloud genesis. Additionally, PM Jobs can be created through a request from a consumer (see the PM Job Creation use case).

This use case describes a flow where a consumer can query for PM Jobs in the O-Cloud.

In the query request, a consumer can specify a query filter for the state of a PM Job(s) of interest. Supported PM Job states include active, suspended, and deprecated defined as follows:

**ACTIVE STATE** - A PM Job that has been created and is currently running is defined to be in the *Active* state.

**SUSPENDED STATE** - A PM Job that has been created, and through a request to stop measurement collection is defined to be in the *suspended state*. See the PM Job Suspend use case for more details [NOTE: for future addition].

**DEPRECATED STATE** - As a result of a PM job deletion request, the PM job is defined to be in the *deprecated*

state. See the PM Job Delete use case (3.8.7).

##### Sequence Description

|  |  |  |
| --- | --- | --- |
| **USE CASE STAGE** | **EVOLUTION / SPECIFICATION** | **<<Uses>>**  **Related Use** |
| **Use Case Title** | Performance Management Job (PM Job) Query Use Case |  |
| **Goal** | The goal of the PM Job Query Use Case is to provide a consumer information about PM Jobs based on the request query filter.  This includes the following goals to allow a consumer to perform:  PM Job Query requests with a query filter for PM Job IDs, PM Job status, and PM Job states.  PM Job Query for all active PM Jobs including Preinstalled PM Jobs.  PM Job Query for specific PM Jobs indicated with specific IDs in the query filter. PM Job Queries for PM Jobs in the Suspended State.  PM Job Queries for PM Jobs in the Deprecated State as a result of delete operations that have not yet been purged. |  |
| **Actors and Roles** | O-Cloud Operator - The O-Cloud Operator is a consumer (or entity) using or interfacing with the SMO (FOCOM).  SMO (FOCOM) - The FOCOM within the SMO is used in this use case to represent any consumer of the PM Job Query information.  IMS - The IMS within the O-Cloud is used to represent any provider of the PM Job Query information. |  |
| **Assumptions** | There are no assumptions. |  |

|  |  |  |
| --- | --- | --- |
| **Preconditions** | Connectivity - The producer has end-to-end connectivity to the consumer.  O-Cloud Operational & Registered - The O-Cloud is installed, operating, and registered with the SMO. |  |
| **Begins when** | This Use Case begins when a consumer initiates a PM Job Query operation. |  |
| **Step 1 (M)** | PM Job Query Request -  A PM Job Query Request is initiated by the O-Cloud Operator towards the consumer (FOCOM/SMO). The PM Job Query contains a filter that specifies the PM Jobs that the operator is interested in. The PM Job Query filter criteria include but are not limited to PM Job owner, PM Job IDs, PM Job state (e.g., suspended, active, deprecated). |  |
| **Step 2 (M)** | PM Job Query Request -  The PM Job Query request with its attendant criteria is passed from the SMO to the IMS.  Privilege - The connection authentication is verified by the IMS. The consumer identification and privileges are verified for the requestor to be able to perform the PM Job Query operation. |  |
| **Step 3 (ALT)** | ALT Successful Query -  The IMS authenticates the connection. The IMS processes the PM Job Query operation.  If the PM Job Query was successful, the producer (IMS) passes to the consumer (FOCOM/SMO) the results matching the PM Job query criteria over the O2 IMS interface.  NOTE: It is possible to formulate a PM Job Query that has nothing matching the criteria; for example, a query for all suspended PM Jobs might be requested; and if there were no suspended PM Jobs, the successful Query would return an empty payload back. |  |
| **Step 4 (ALT)** | ALT EXCEPTION: Query of a Non-Existent PM Job -  This exception is encountered when a PM Job Query is performed with a query filter that requests for a non-existent PM Job. This is a case where the query criteria returned no matching PM Jobs.  The Use Case ends. |  |
| **Step 5 (ALT)** | ALT EXCEPTION: Unexpected Condition -  A response is sent to the requesting entity from the SMO, that the IMS encountered an unexpected condition processing the request.  The Use Case ends. |  |
| **Ends when** | This use case ends when the PM Job has successfully been accomplished, or one of the two exception cases have been encountered. |  |
| **Exceptions** | Query of a Non-Existent PM Job - This exception is encountered when a PM Job Query criteria results in a non-existent PM Job.  Unexpected Condition - This exception occurs when an unexpected condition encountered. |  |

|  |  |  |
| --- | --- | --- |
| **Post-conditions** | Success - The requested (list) of PM Job(s) and their corresponding IDs, state & status matching the PM Job Query request filter are returned to the requestor or consumer.  Failure - The request was not able to be completed. No other "clean up" needs to occur. An exception notification has been issued. |  |
| **Traceability** | [REQ-ORC-O2-56], [REQ-ORC-O2-57] |  |

##### UML Sequence Diagram

![](../assets/images/b72e5592394b.jpg)

Figure 3-41: PM Job Query

#### Performance Measurement Job Delete Use Case

##### High Level Description

PM Jobs collect performance data on O-Cloud infrastructure resources. Preinstalled Performance Measurement Jobs (PM Jobs) are started on O-Cloud genesis. Additionally, PM Jobs can be created through a request from a consumer (see the PM Job Creation use case).

This use case describes a flow where a consumer requests for PM Job(s) to be deleted. A consumer can specify the PM Job(s) to be deleted by the associated PM Job Identifiers (IDs) which can be obtained through a PM Job query or PM Job create.

**DEPRECATED STATE** - As a result of a PM Job deletion request, the PM Job(s) go into the *deprecated* state. Deprecated PM Job(s) records are held for a retention period after which they are purged from the system. It is expected that the retention period can be configured. PM Job(s) stay in the deprecated state until they are purged; thus, PM Job(s) cannot be "resurrected" once they are in the deprecated state.

**SUSPEND BEFORE DELETE** - Only suspended PM Jobs can be deleted. A consumer or owner needs to first suspend the PM Job(s) before they can be deleted. Preinstalled PM Jobs cannot be suspended by a typical consumer request. See the PM Job suspend use case for more details [NOTE 1: use case to be added in future].

**PREINSTALLED PM JOBS** - Preinstalled PM Jobs are unlike normal PM Jobs. Rather, Preinstalled PM Jobs may be deleted by IMS software update, or by privilege settings.

**PM JOB OWNERSHIP** - It is expected that a PM Job has one owner though it might have more than one consumer. A User (Operator or Entity) has a Role, and that Role has Privilege/Permissions associated with. Thus, the role may have the permissions to affect the state or delete a PM Job. Preinstalled PM Jobs also have owners. NOTE 2: Security considerations and analysis from the O-RAN Security Requirements specification [18] is FFS.

**NOTIFICATION AFTER DELETION** - The PM Job deletion operation may affect subscriber(s) that were getting data from the deleted PM Job(s). One of the consequences of this use case is that the subscriber(s) are notified if they had been subscribing to data collected by those PM Job(s) that were deleted. They choose to subscribe to job change notification, or they may take action after getting a report that indicates that those affected measurements were deleted.

NOTE 3: A O-Cloud Operator may wish to minimize the computational overhead within the O-Cloud and thus may delete lower priority PM Job(s).

##### Sequence Description

|  |  |  |
| --- | --- | --- |
| **USE CASE STAGE** | **EVOLUTION / SPECIFICATION** | **<<Uses>>**  **Related Use** |
| **Use Case Title** | PM Job Delete Use Case (O2 IMS) |  |
| **Goal** | The goal of the PM Job Delete Use Case is to enable a consumer or entity to delete existing PM Job(s).  This includes the following goals to allow a consumer to perform:  As a result of a PM Job Deletion request, the PM Job(s) go into the *deprecated*  state.  A check that the requested PM job(s) are in the suspended state is performed before the PM Job deletion request is started.  PM Job Delete operation can request for specific PM Job(s) with their corresponding PM Job ID(s) to be deleted. |  |
| **Actors and Roles** | O-Cloud Operator - The O-Cloud Operator is a consumer (or entity) using or interfacing with the SMO (FOCOM).  SMO (FOCOM) - The FOCOM within the SMO is the actor who issues the PM Job delete request over the O2imsinterface.  IMS - The IMS within the O-Cloud processes the PM Job Delete request and receives the request over the O2imsinterface. |  |

|  |  |  |
| --- | --- | --- |
| **Assumptions** | There are no assumptions. |  |
| **Preconditions** | Connectivity - The producer has end-to-end connectivity to the consumer.  O-Cloud Operational & Registered - The O-Cloud is installed, operating, and registered with the SMO. |  |
| **Begins when** | This use case begins with either:  Operator Request - This use case begins when a O-Cloud Operator requests for a PM Job delete.  Autonomously Triggered - When the SMO autonomously determines that PM Job(s) need to be deleted. |  |
| **Step 1 (ALT)** | PM Job Delete Request (Operator Initiated) (ALT) -  A PM Job Delete Request is initiated by the O-Cloud Operator towards the consumer (FOCOM/SMO). The PM Job Delete request identifies the PM Job(s) that the operator wants to delete.  Privilege - The connection authentication is verified by the IMS. The consumer identification and privileges are verified for the requestor to be able to perform the PM Job Delete operation.  NOTE 1: It is possible to delete a PM Job(s) in the deprecated state. This would return a success; however, it would not result in any action being taken. |  |
| **Step 2 (ALT)** | PM Job Delete Request (Autonomously Initiated) (ALT) -  The PM Job Delete request is initiated autonomously from the SMO. The SMO has some trigger which initiates a PM Job Delete request for PM Job(s) to be deleted. |  |
| **Step 3 (M)** | PM Job Delete Request -  The PM Job Delete request is sent from the SMO to the IMS.  The following are the actions that the IMS does to process the PM job delete request for the specified PM Job(s) to be deleted:  The IMS performs a check that the PM Job(s) to be deleted are in the suspended state.  NOTE 2: it is expected that the SMO uses PM Job identifier to identify the PM job activity to be cleaned up for the PM Jobs to be deleted.  If the PM Job has an embedded subscription, the PM Job deletion operation causes the associated PM subscription to be automatically deleted. |  |
| **Step 4 (ALT)** | PM Job Delete Response (Success) -  The PM Job Delete returns an asynchronous response for the successful case. |  |
| **Step 5 (ALT)** | PM Job State Change Notification  The requestor is informed through a state change notification event of the state and status of the PM Job(s) that were deleted with the request. |  |
| **Step 6 (ALT)** | ALT EXCEPTION: Delete of non-suspended PM Job(s) -  This exception occurs when a PM Job delete requests for the deletion of non- suspended PM Job(s). A response is sent to the requesting entity (SMO), that the deletion request for PM Job(s) not in a suspended state is an exception case. |  |

|  |  |  |
| --- | --- | --- |
|  | The IMS will include the PM Job ID and consumer subscription ID for the PM Job in the response and notification of the PM Job(s) deleted.  The Use Case ends in this exception case.  NOTE 3: The PM Job(s) need to be first placed in suspended mode so that PM jobs are not accidentally mass deleted since the operation cannot be reversed once it is processed. See requirement [REQ-ORC-O2-60] |  |
| **Step 7 (ALT)** | ALT EXCEPTION: Delete of non-existent PM Job(s) -  This exception occurs when a PM Job Delete requests for the deletion of non- existent PM Job(s). The request will not be able to be processed because the PM Job(s) does not exist. A response is sent to the requesting entity (SMO), that a request for the deletion of a non-existent PM Job is invalid.  The Use Case ends when this exception case is encountered.  NOTE 4: A request for a PM Job delete, that had been deprecated (previously deleted) and then subsequently purged, would result in this exception. |  |
| **Step 8 (ALT)** | ALT EXCEPTION: Unexpected Condition -  A response is sent to the requesting entity from the SMO, that the IMS encountered an unexpected condition processing the request.  The Use Case ends. |  |
| **Step 9 (M)** | Request Response -  The PM Job Delete Status is given from the consumer SMO (FOCOM) to the O- Cloud Operator. |  |
| **Ends when** | This use case ends when the PM Job Delete operation has successfully been accomplished, or one of the exception cases have been encountered. |  |
| **Exceptions** | Delete of non-suspended PM Job(s) - This exception is encountered when a PM Job Delete requests for the deletion of non-suspended PM Job(s).  Delete of non-existent PM Job(s) - This exception is encountered when a PM Job Delete requests for the deletion of non-existent PM Job(s).  Unexpected Condition - This exception occurs when an unexpected condition encountered. |  |
| **Post-conditions** | Success - The requested (list) of PM Job(s) matching the PM Job Delete request are returned to the requestor or consumer.  Failure - The request was not able to be completed. No other "clean up" needs to occur. |  |
| **Traceability** | [REQ-ORC-O2-58], [REQ-ORC-O2-59], [REQ-ORC-O2-60], [REQ-ORC-O2-84] |  |

##### UML Sequence Diagram

![](../assets/images/dc87a02a26bd.jpg)

Figure 3-42: PM Job Delete

#### Performance Measurement Job Update Use Case

##### High Level Description

PM Jobs collect performance data on O-Cloud infrastructure resources. Preinstalled Performance Measurement Jobs (PM Jobs) are started on O-Cloud genesis. Additionally, PM Jobs can be created through a request from a consumer (see the PM Job Creation use case).

This use case describes Performance Measurement Job (PM Job) updates that can occur from one of two reasons as described:

**RESOURCE CHANGES** - Resource changes can cause PM Job(s) to update. PM Job(s) collect data from O-Cloud infrastructure resources. When O-Cloud resources are updated, added, or deleted that a PM Job depends on, the PM Job update use case may be invoked. Resources changes can impact the PM Job measure criteria which include the measured Resources, collected Measures, qualified Resource Types, and/or Resource scope criteria which may trigger a PM Job update. It is possible that the result of the evaluation may not alter the PM Job(s).

**UPDATE BY REQUEST** - A consumer (operator or entity) may also request for an update to PM Job(s) through a request operation. A consumer may request for data collection updates for PM Job(s). For example, different data to be collected from O-Cloud infrastructure resources. This may occur autonomously from a consumer, for example through a policy trigger. Only a consumer with the proper permissions that own the PM Job(s) can update the PM Job.

##### Sequence Description

|  |  |  |
| --- | --- | --- |
| **USE CASE STAGE** | **EVOLUTION / SPECIFICATION** | **<<Uses>>**  **Related Use** |
| **Use Case Title** | PM Job Update Use Case (O2 IMS) |  |
| **Goal** | The goal of the PM Job Update Use Case is to enable a consumer or entity to update an existing PM Job information such as the new measured resources or collected measures.  As subordinate goals, the O-Cloud allows a consumer to perform these actions:  An update of the measure selection criteria which in turn updates the measured Resources, collected Measures, qualified Resource Types, measure selection criteria, and/or Resource scope criteria.  Adds, removes, or changes to the above types of things in the PM Job. |  |
| **Actors and Roles** | **O-Cloud Operator -** The O-Cloud operator is a consumer (or entity) using or interfacing with the SMO (FOCOM).  **SMO (FOCOM)** - The FOCOM within the SMO is the actor who issues the PM Job Update request over the O2ims interface.  **IMS** - The IMS within the O-Cloud processes the PM Job Update request and receives the request over the O2ims interface. |  |
| **Assumptions** | There are no assumptions. |  |
| **Preconditions** | **Connectivity** - The producer (IMS) has end-to-end connectivity to the consumer (SMO/FOCOM).  **O-Cloud Operational & Registered** - The O-Cloud is installed, operating, and registered with the SMO. |  |
| **Begins when** | This use case begins with either: |  |

|  |  |  |
| --- | --- | --- |
|  | **Operator Request** - When an O-Cloud operator requests for an update to a PM Job.  **Autonomously Triggered** - When the SMO autonomously determines that a PM Job needs to be updated. |  |
| **Step 1 (ALT)** | **PM Job Update Request (Operator Initiated) (ALT)** -   * A PM Job Update Request is initiated by the O-Cloud operator towards the consumer (FOCOM/SMO). The PM Job Update request identifies the PM Job(s) that the operator wants to update. * The PM Job Update request contains parameters to update via the measure selection criteria. The measure selection criteria can change the measured Resources, collected Measures, qualified Resource Types, and/or Resource scope criteria which will be applied by the target PM Job. NOTE 1: the measure selection criteria are a read/write attributes whereas the others are read-only because updates to those aspects occur through the measure selection criteria.   The PM Job Update request may update different aspects of the PM Job and what it is collecting.  The PM Job Update operation can only be applied to active and suspended PM Jobs. The PM Job Update operation is rejected for deprecated PM Jobs.  NOTE 2: Different PM Jobs may have different permissions based on the role of the requestor. |  |
| **Step 2 (ALT)** | **PM Job Update Request (Autonomously Initiated) (ALT)** -  The PM Job Update request is initiated autonomously from the SMO. The SMO has some trigger which initiates a PM Job Update request for a PM Job to be updated.  The SMO may update measured Resources, collected Measures, qualified Resource Types, measure selection criteria, and/or Resource scope criteria for the target PM Job through the PM Job Update request. |  |
| **Step 3 (M)** | **PM Job Update Request** -  The PM Job Update request is sent from the SMO to the IMS. |  |
| **Step 4 (M)** | **IMS Processes PM Job Update Request -**  The IMS performs the following actions to process the PM Job Update Request:  **Existence** - The IMS checks that the affected PM Job exists.  **Permissions** - The IMS checks the ownership for the PM Job against the permissions (role) of the requestor. A PM Job has one owner. The role has the permissions to update a PM Job. A user (operator or entity) has permissions based on their role.  **Request Parameters** - The IMS processes the parameters in the request which indicate how the PM Job should be updated. These potentially include updates to the measured Resources, collected Measures, qualified Resource Types, measure selection criteria, and/or Resource scope criteria. |  |
| **Step 5 (ALT)** | **PM Job Update Response (Success)** -  The PM Job Update returns an asynchronous response for the successful case. |  |
| **Step 6 (ALT)** | **PM Job Update Notification (Success)** -  Other consumers/subscribers are informed about PM Job Updates to the PM Job(s) that they are subscribing to. |  |
| **Step 7 (ALT)** | **ALT EXCEPTION: Update request for non-existent PM Job** - |  |

|  |  |  |
| --- | --- | --- |
|  | This exception occurs when a PM Job Update requests for the update of a non- existent PM Job. The request will not be able to be processed because the PM Job does not exist. A response is sent to the requesting entity (SMO), that a request for the update of a non-existent PM Job is invalid.  The Use Case ends when this exception case is encountered. |  |
| **Step 8 (ALT)** | **ALT EXCEPTION: Unexpected Condition** -  A response is sent to the requesting entity from the SMO, that the IMS encountered an unexpected condition processing the request.  The Use Case ends when this exception case is encountered. |  |
| **Step 9 (M)** | **UPDATE RESPONSE**  The PM Job Update Response is given from the consumer SMO (FOCOM) to the O-Cloud Operator |  |
| **Ends when** | This use case ends when the PM Job Update operation has successfully been accomplished, or one of the exception cases have been encountered. |  |
| **Exceptions** | **Update of non-existent PM Job** - This exception is encountered when a PM Job Update requests for the update of a non-existent PM Job.  **Unexpected Condition** - This exception occurs when an unexpected condition is encountered. |  |
| **Post-conditions** | **Success** - On a successful PM Job Update operation, the requestor gets a response to their request which includes the result of the operation.  **Failure** - The request was not able to be completed. No other "clean up" for this use case needs to occur within the O-Cloud or IMS. The requestor gets a response to their request indicates the failure. |  |
| **Traceability** | [REQ-ORC-O2-66], [REQ-ORC-O2-67], [REQ-ORC-O2-68] |  |

##### UML Sequence Diagram

![](../assets/images/018db30ab9c5.jpg)

Figure 3-43: PM Job Update

#### Performance Measurement Job Suspend Use Case

##### High Level Description

PM Jobs collect performance data on O-Cloud infrastructure resources. Preinstalled Performance Measurement Jobs (PM Jobs) are started on O-Cloud genesis. Additionally, PM Jobs can be created through a request from a consumer (see the PM Job Creation use case).

This use case describes a flow where a Performance Measurement Job (PM jobs) is suspended. Suspending a PM Job might be done to improve system performance because PM Jobs come at the cost of system overhead and computational cycles. Suspending a PM Job will cause it to be inactive when its report timer is triggered where it would normally collect data.

**DORMANCY PERIODS** - PM Job(s) can be suspended for a specified time period (dormancy period). A consumer may specify when PM Job(s) can be returned to normal operation. The request can either specify a dormancy filter or suspend the PM Job indefinitely ("PM Job Stop"). PM Jobs indefinitely suspended need a consumer request to resume operations. See the PM Job Resume use case.

**RELATION TO PM JOB DELETE OPERATION** - Only suspended PM Jobs can be deleted. A consumer or owner first suspends PM Job(s) before they can be deleted. Preinstalled PM Jobs cannot be suspended by a typical consumer request. See the PM Job delete use case for more details.

**PM JOB OWNERSHIP** - It is expected that a PM Job has one owner, though it might have more than one consumer. The role has the permissions to suspend a PM Job. A User (Operator or Entity) has a Role, and that Role has Privilege/Permissions associated with. Thus, a user (operator or entity) has permissions based on their role. Preinstalled PM Jobs also have owners. Relationship to the Security specification is FFS.

##### Sequence Description

|  |  |  |
| --- | --- | --- |
| **USE CASE STAGE** | **EVOLUTION / SPECIFICATION** | **<<Uses>>**  **Related Use** |
| **Use Case Title** | PM Job Suspend Use Case (O2 IMS) |  |
| **Goal** | The goal of the PM Job Suspend Use Case is to enable a consumer (SMO) or entity to request to suspend existing PM Job. PM Job Suspend operation can request for a specific PM Job with their corresponding PM Job ID to be suspended.  As a result of a PM Job Suspend request goal, the requested PM Job transitions into the *suspend* state. |  |
| **Actors and Roles** | **O-Cloud Operator -** The O-Cloud operator is a consumer (or entity) using or interfacing with the SMO (FOCOM).  **SMO (FOCOM)** - The FOCOM within the SMO is the actor who issues the PM Job Suspend request over the O2ims interface.  **IMS** - The IMS within the O-Cloud processes the PM Job Suspend request and receives the request over the O2ims interface. |  |
| **Assumptions** | There are no assumptions. |  |
| **Preconditions** | **Connectivity** - The producer (IMS) has end-to-end connectivity to the consumer (SMO/FOCOM).  **O-Cloud Operational & Registered** - The O-Cloud is installed, operating, and registered its IMS with the SMO. |  |

|  |  |  |
| --- | --- | --- |
| **Begins when** | This use case begins with either:  **Operator Request** - When an O-Cloud operator requests for a PM Job to be suspended.  **Autonomously Triggered** - When the SMO autonomously determines that a PM Job needs to be suspended. |  |
| **Step 1 (ALT)** | **PM Job Suspend request (Operator Initiated) (ALT)** -  A PM Job Suspend request is initiated by the O-Cloud operator towards the consumer (FOCOM/SMO). The PM Job Suspend request identifies the PM Job that the operator wants to suspend. The request contains the dormancy period and dormancy filter.  **Privilege** - The connection authentication is verified by the IMS. The consumer identification and privileges are verified for the requestor to be able to perform the PM Job Suspend operation.  NOTE 1: It is possible to suspend a PM Job already in the *suspend* state. This operation would return a success; however, it would not result in any action being taken. |  |
| **Step 2 (ALT)** | **PM Job Suspend request (Autonomously Initiated) (ALT)** -  The PM Job Suspend request is initiated autonomously from the SMO. The SMO has some trigger which initiates a PM Job Suspend request for a PM Job to be suspended. |  |
| **Step 3 (M)** | **PM Job Suspend request** -  The PM Job Suspend request is sent from the SMO to the IMS. |  |
| **Step 4 (M)** | **IMS Processes PM Job Suspend request** -  The IMS performs the following actions to process the PM Job Suspend Request:  **Existence** - The IMS checks that the requested PM Job exists.  **Permissions** - The IMS checks the ownership for the PM Job against the permissions (role) of the requestor.  NOTE 2: PM Job(s) have one owner. The role has the permissions to suspend a PM Job. A user (operator or entity) has permissions based on their role.  **Dormancy** - The IMS evaluates the request filter and dormancy periods. The request can specify a PM Job to be suspended for a specified time (dormancy period). The request might suspend a PM Job indefinitely ("PM Job Stop"). |  |
| **Step 5 (M)** | **PM Job Suspend response (Success)** -  The PM Job Suspend returns an asynchronous response in the successful case. |  |
| **Step 6 (M)** | **State Change Notification (Success)** -  The requestor is informed through a state change notification event of the state and status of the PM Job. This is sent because the state and status of the affected PM Job transition to the *suspend* due to a successful PM Job Suspend operation. |  |
| **Step 7 (ALT)** | **ALT EXCEPTION: PM Job Suspend request for non-existent PM Job** -  This exception occurs when a PM Job Suspend requests for the suspend of a non- existent PM Job. The request will not be able to be processed because the PM Job does not exist. A response is sent to the requesting entity (SMO), that a request for the suspension of a non-existent PM Job is invalid. |  |

|  |  |  |
| --- | --- | --- |
|  | The Use Case ends when this exception case is encountered. |  |
| **Step 8 (ALT)** | **ALT EXCEPTION: Unexpected Condition** -  A response is sent to the requesting entity from the IMS, that the IMS encountered an unexpected condition processing the request.  The Use Case ends. |  |
| **Ends when** | This use case ends when the PM Job Suspend operation has successfully been accomplished, or one of the exception cases have been encountered. |  |
| **Exceptions** | **Suspend of non-existent PM Job(s)** - This exception is encountered when a PM Job Suspend requests to suspend a non-existent PM Job(s).  **Unexpected Condition** - This exception occurs when an unexpected condition encountered. |  |
| **Post-conditions** | **Success** - On a successful PM Job Suspend operation, the requestor gets a response to their request which includes the results of the operation. Additionally, subscribed consumer(s) get a State Change Notification of PM Job(s) in the *Suspend* state.  **Failure** - The request was not able to be completed. No other "clean up" needs to occur. The requestor gets a response of the failure. |  |
| **Traceability** | [REQ-ORC-O2-69], [REQ-ORC-O2-70] |  |

##### UML Sequence Diagram

![](../assets/images/b473fb5f251d.jpg)

Figure 3-44: PM Job Suspend

#### Performance Measurement Job Resume Use Case

##### High Level Description

PM Jobs collect performance data on O-Cloud infrastructure resources. Preinstalled Performance Measurement Jobs (PM Jobs) are started on O-Cloud genesis. Additionally, PM Jobs can be created through a request from a consumer (see the PM Job Creation use case).

This use case describes resuming one Performance Measurement Job (PM Job) that has previously been suspended. See the PM Job Suspend Use case for more details.

**RESUMING OPERATIONS** - PM Job(s) in the *suspend* state have had their measurement collection activity halted. The PM Job Resume operation will request that the PM Job start operations again. The PM Job will transition to the *active* state. The PM Job will begin measurement collection at their next scheduled collection interval period. The PM Job will continue to collect measurements based on their criteria. To change the interval times or collection behavior, a PM Job update would need to be performed.

**PM JOB OWNERSHIP** - It is expected that a PM Job has one owner, though it might have more than one consumer. The role has the permissions to resume a PM Job. A User (Operator or Entity) has a Role, and that Role has Privilege/Permissions associated with. Thus, a user (operator or entity) has permissions based on their role. Preinstalled PM Jobs also have owners. Relationship to the Security specification is FFS.

##### Sequence Description

|  |  |  |
| --- | --- | --- |
| **USE CASE STAGE** | **EVOLUTION / SPECIFICATION** | **<<Uses>>**  **Related Use** |
| **Use Case Title** | PM Job Resume Use Case (O2 IMS) |  |
| **Goal** | The goal of the PM Job Resume Use Case is to enable a consumer (SMO) or entity to request to request to resume a previously suspended PM Job. The PM Job Resume operation can be requested for a specified PM Job with its corresponding PM Job ID to be resumed.  As result of a PM Job Resume request, the requested PM Job transitions into the *active* state. Successfully resumed PM Job will start collecting data adding to any existing data sets with a time period and collection filter set for the PM Job including measured Resources, qualified Resource Types, collected Measures, and measure selection criteria.  The PM Job Resume request is a single request to resume one (atomic) PM Job. |  |
| **Actors and Roles** | **O-Cloud Operator -** The O-Cloud operator is a consumer (or entity) using or interfacing with the SMO (FOCOM).  **SMO (FOCOM)** - The FOCOM within the SMO is the actor who issues the PM Job Resume request over the O2ims interface.  **IMS** - The IMS within the O-Cloud processes the PM Job Resume request and receives the request over the O2ims interface. |  |
| **Assumptions** | There are no assumptions. |  |
| **Preconditions** | **Connectivity** - The producer (IMS) has end-to-end connectivity to the consumer (SMO/FOCOM).  **O-Cloud Operational & Registered** - The O-Cloud is installed, operating, and registered its IMS with the SMO. |  |
| **Begins when** | This use case begins with either:  **Operator Request** - When an O-Cloud operator requests for a PM Job Resume operation.  **Autonomously Triggered** - When the SMO autonomously determines that a PM Job needs to be resumed. |  |
| **Step 1 (ALT)** | **PM JOB RESUME REQUEST (Operator Initiated) (ALT)** - |  |

|  |  |  |
| --- | --- | --- |
|  | A PM Job Resume request is initiated by the O-Cloud operator towards the consumer (FOCOM/SMO). The PM Job Resume request specifies the PM Job that the operator wants to resume.  NOTE 1: Different PM Jobs may have different permissions based on the role of the requestor. Thus, some resume requests may be rejected while others are applied.  NOTE 2: It is possible that the requested PM Job is already in the *active* state. This operation would return a success; however, it would not result in any action being taken. |  |
| **Step 2 (ALT)** | **PM JOB RESUME REQUEST (Autonomously Initiated) (ALT)** -  The PM Job Resume request is initiated autonomously from the SMO. In this case, the SMO has a trigger which initiates a PM Job Resume request for a PM Job to be resumed. |  |
| **Step 3 (M)** | **PM JOB RESUME REQUEST** -  The PM Job Resume request is sent from the SMO to the IMS. |  |
| **Step 4 (M)** | **IMS PROCESSES PM JOB RESUME REQUEST -**  The IMS performs the following actions to process the PM Job Resume request:  **PM Job in Suspended State** - The IMS checks that the requested PM Job is in suspended state. Reactivating the suspended PM Job transitioning to the active state and counters populated into the PM table.  **Deprecated State** - The IMS checks that the requested PM Job is not in the deprecated state. The resume of a deprecated PM Job would fail with an appropriate error code.  **Active State** - This would be an idempotent case. The operation would succeed, as the PM job is already in the outcome state.  **Permissions** - The IMS checks the ownership for the PM Job against the permissions (role) of the requestor. PM Jobs have one owner. The role has the permissions to resume a PM Job. A user (operator or entity) has permissions based on their role. |  |
| **Step 5 (ALT)** | **PM JOB RESUME RESPONSE (Success)** -  The PM Job Resume returns an asynchronous response for the successful case. |  |
| **Step 6 (ALT)** | **STATE CHANGE NOTIFICIATION (Success) -**  The requestor and subscribed consumer(s) are informed through a state change notification event of the state and status of the PM Job. This is sent because the state and status of the affected PM Job transition to the *active* state due to a successful PM Job Resume operation. |  |
| **Step 7 (ALT)** | **ALT EXCEPTION: PM JOB RESUME REQUEST FOR A NON-EXISTENT PM JOB** -  This exception occurs when a PM Job Resume requests for the resume of a non- existent PM Job. The request will not be able to be processed because the PM Job does not exist. A response is sent to the requesting entity (SMO), that a request for the resumption of the PM Job is invalid.  The Use Case ends when this exception case is encountered. |  |
| **Step 8 (ALT)** | **ALT EXCEPTION: PM JOB RESUME REQUEST FOR A DEPRECATED PM JOB** |  |

|  |  |  |
| --- | --- | --- |
|  | This exception occurs when a PM Job Resume requests for the resume of a deprecated PM Job. The request will not be able to be processed because the PM Job is in the deprecated state. A response is sent to the requesting entity (SMO), that a request for the resume of the deprecated PM Job is invalid.  The Use Case ends when this exception case is encountered. |  |
| **Step 9 (ALT)** | **ALT EXCEPTION: UNEXPECTED CONDITION** -  A response is sent to the requesting entity from the SMO, that the IMS encountered an unexpected condition processing the request.  The Use Case ends when this exception case is encountered. |  |
| **Step 10 (M)** | **PM JOB RESUME RESPONSE**  The PM Job Update Response is given from the SMO (FOCOM) to the O-Cloud Operator. |  |
| **Ends when** | This use case ends when the PM Job Resume operation has successfully been accomplished, or one of the exception cases have been encountered. |  |
| **Exceptions** | **Resume of non-existent PM Job** - This exception is encountered when a PM Job Resume requests to resume anon-existent PM Job.  **Resume of a Deprecated PM Job** - This exception occurs when a PM Job Resume requests to resume a PM Job in the *Deprecated* state.  **Unexpected Condition** - This exception occurs when an unexpected condition is encountered. |  |
| **Post-conditions** | **Success** - On a successful PM Job Resume operation, the requestor gets a response to their request which includes the result of the operation. Additionally, subscribed consumer(s) get a State Change Notification of PM Job in the *active* state.  **Failure** - The request was not able to be completed. No other "clean up" for this use case needs to occur within the O-Cloud or IMS. The requestor gets a response of the failure. |  |
| **Traceability** | [REQ-ORC-O2-71], [REQ-ORC-O2-72] |  |

##### UML Sequence Diagram

![](../assets/images/7f3193f69697.jpg)

Figure 3-45: PM Job Resume

#### Performance Management Dictionary Discovery IMS Use Case

##### High Level Description

When a new O-Cloud Resource Type is discovered in the O-Cloud infrastructure either on O-Cloud genesis or during run-time, the IMS would inform FOCOM (SMO) about that new Resource Type so that the appropriate corresponding Performance Management Dictionary can be identified.

NOTE: every version of Resource has its own Resource Type and thus a Performance Management Dictionary associated with it.

It is expected that the SMO would have already onboarded the associated Resource Type before it is discovered by the O-Cloud infrastructure, as described in O2 IMS Specification [17]. The four situations where a Performance Management dictionary could be discovered are:

1. RESOURCE SOFTWARE UPDATE - A software update of a Resource creates a new Resource Type with its attendant Performance Management Dictionary in inventory. Existing resources can either remain pointing to the existing Resource Type or be software updated to the newly loaded Resource Type. Each Resource Type has its own unique Performance Management dictionary associated with it at the SMO.
2. QUERY & SYNCHRONIZATION - A query service may also result in the discovery of new Resource Types in the O-Cloud infrastructure. Additionally, the initial synchronization of the model between the O-Cloud and management system (SMO) may result in the discovery of Resource Types to be managed.
3. NEW RESOURCES ADDED - New objects have been added to the O-Cloud infrastructure. Subsequently, new Resource Types corresponding to those new objects may be added which then may result in an Infrastructure Inventory Event being generated to a consumer (FOCOM/SMO) or subscriber.
4. IMS LIFE CYCLE SOFTWARE UPDATE - When the software of the O-Cloud is updated new Resource Types can be discovered. The updated IMS software could come with new Resource types including their Performance Management Dictionaries.

There are two possible ways the IMS gets the Performance Management Dictionary (PM Dictionary). The first is that SMO might update the IMS with the Performance Management Dictionary. The second method is for the IMS to get the Performance Management Dictionary from the O-Cloud Resource (or external proxy for the resource). See the Resource Type Onboarding LCM Use Case for more details. The source of truth is in the cloud for O-Cloud Resource Types.

##### Sequence Description

|  |  |  |
| --- | --- | --- |
| **USE CASE STAGE** | **EVOLUTION / SPECIFICATION** | **<<Uses>> Related Use** |
| **Use Case Title** | Performance Management (PM) Dictionary Discovery (IMS) |  |
| **Goal** | The primary goal of this use case is where the consumer (SMO) adds a Performance Management Dictionary corresponding to a new discovered Resource Type in the O-Cloud infrastructure.  A consequence is that the consumer (SMO) has a corresponding Performance Management Dictionary that corresponds to every Resource Type that would emit Performance Measures. The triggers for this use case revolve around insuring that consistency. |  |
| **Actors and Roles** | **O-Cloud Operator -** The O-Cloud Operator is a consumer (or entity) using or interfacing with the SMO (FOCOM).  **SMO (FOCOM) -** The FOCOM within the SMO is used in this use case to represent any consumer of this use case.  **IMS -** The IMS within the O-Cloud is used to represent any provider of the responses to the use case triggers. |  |

|  |  |  |
| --- | --- | --- |
| **Assumptions** | No Assumptions |  |
| **Preconditions** | **Connectivity -** The producer has connectivity to the consumer by some mechanism. The mechanism by which the subscriber achieves connectivity to the publisher is out of the scope of this Use Case.  **O-Cloud Operational & Registered -** The O-Cloud is installed, operating, and registered with the SMO.  **Privilege** - The consumer identification and privileges have been verified to be able to perform O2 operations.  **Performance Management Dictionaries Onboarded -** Performance Management Dictionar(ies) are onboarded with the Resource Type definition(s) into the O-Cloud Infrastructure Inventory. This is performed by software in the O-Cloud that manages Resource Types. |  |
| **Begins when** | There are four triggers that invokes this Use Case:  **Software update of an O-Cloud Resource -** When software is updated for an O- Cloud Infrastructure Resource(s), a new Resource Type might be discovered which will trigger this use case.  **New Resources deployed -** When new Resources are deployed to the O-Cloud Infrastructure, it may cause new Resource Types to be discovered which would subsequently trigger this use case.  **Query Infrastructure Inventory** - A Query Infrastructure Inventory for a Resource Type triggers this use case. One place this occurs is in O-Cloud Registration & Initialization during O-Cloud genesis, the consumer performs a Query Infrastructure Inventory. The consumer then gets the Performance Management Dictionaries for all the Resource Types discovered during genesis. See the O-Cloud Registration & Initialization use case.  **IMS Life Cycle Software Update -** When the software of the O-Cloud is updated new Resource Types can be discovered which will trigger this use case. |  |
| **Step 1 (M)** | **RESOURCE TYPE RECORD CREATED** (causes Performance Management Dictionary to be onboarded)  When a new Resource Type record is created during O-Cloud onboarding a Performance Management Dictionary corresponding to that Resource Type is onboarded within the O-Cloud (see pre-conditions).  These triggers cause a new Resource Type record to be created:  **Software update of an O-Cloud Resource -** When software is updated for an O- Cloud Resource(s), a new Resource Type is created.  **IMS Life Cycle Software Update -** When the software of the O-Cloud is updated new Resource Types record is created.  **New Resources deployed -** When new Resources are deployed to the O-Cloud Infrastructure, it may cause new Resource Type to be created.  These two triggers would cause a new Resource Type record to be discovered by SMO:  **Query Infrastructure Inventory** - A Query Infrastructure Inventory for a Resource Type is discovered for a previously created Resource Type record.  **Infrastructure Inventory Notification** - A Infrastructure Inventory Notification from the O-Cloud to the subscriber, the IMS will send a copy of the Resource Type record. |  |

|  |  |  |
| --- | --- | --- |
| **Step 2 (ALT)** | **O-CLOUD INFRASTRUCTURE INVENTORY EVENT NOTIFICATION (Alt) -**  The IMS sends an O-Cloud Infrastructure Inventory Event Notification over O2ims interface to the consumer, FOCOM/SMO, if a subscription already exists. This notification is sent if Step 1 triggers the creation of new Resource Type(s) or discovers new Resource Type(s). The O-Cloud Infrastructure Inventory Event Notification communicates the Resource Type(s) information.  NOTE 1: For the definition of the InfrastructureInventoryEventNotification see Reference [17]. |  |
| **Step 3 (ALT)** | **QUERY O-CLOUD INFO REQUEST -**  The consumer, FOCOM/SMO, can send a request to Query the O-Cloud for inventory information. This request will result in the SMO discovering new Resource Type(s). |  |
| **Step 4 (ALT)** | **QUERY O-CLOUD INFO RESPONSE -**  The producer, IMS, processes the Query request and returns any new Resource Types that have been discovered for a previously created Resource Type record.  NOTE 2: Upon receipt, the consumer, SMO, is expected to associate the new Performance Management Dictionary/Dictionaries with the newly discovered Resource Type(s). The Resource Type object contains the Performance Management Dictionary associate with the Resource ID or vendor make & model data.  NOTE 3: The IMS might get the Performance Management Dictionary from the O- Cloud Resource and sent it to the SMO. |  |
| **Step 5 (M)** | **PERFORMANCE Management DICTIONARY ASSOCIATED -**  It is expected that the consumer, SMO, will associate the Performance Management Dictionar(ies) for the new Resource Type(s) sent by the IMS or it already has the proper Performance Management Dictionar(ies).  NOTE 4: The consumer, SMO, will likely aggregate all the Performance Management Dictionaries across the O-Clouds that it has purview to. This is implementation specific.  NOTE 5: (error case) If a Resource Type collects Performance metrics, then there is a Performance Management Dictionary, but it was not loaded (due to error), for this use case, the IMS will indicate there is no dictionary for this Resource Type. If later, a Performance metric is sent for that resource instance with a missing Performance Management Dictionary, a consumer, SMO, will have to debug and potentially attempt to reload the Performance Management Dictionary post facto. |  |
| **Ends when** | This use case ends when the consumer has associated new Performance Management Dictionar(ies) to newly create or discovered Resource Type(s). |  |
| **Exceptions** | None |  |
| **Post-conditions** | **Success -** Upon successful completion of the use case, the consumer, SMO, associates the proper Performance Management Dictionar(ies) to newly discovered or created Resource Type(s).  **Failure -** No failure cases |  |
| **Traceability** | [REQ-ORC-O2-52], [REQ-ORC-O2-53] |  |

##### UML Sequence Diagram

![](../assets/images/a762dc14c048.png)

Figure 3-46: PM Dictionary Discovery

#### Performance Management Subscription Query (IMS) Use Case

##### High Level Description

This use case details the management of Performance Measurement Subscriptions; in particular, the query service operation. The query of a Performance Measurement Subscription is the ability of an authorized entity to get the details of a Performance Measurement Subscription including its performance subscription filter.

The create, update, and delete of a Performance Measurement Subscription is documented in the other Performance Measurement Subscription use cases. This use case only concerns the query of a Performance Measurement Subscription.

NOTE: The query-response paradigm and CRUD paradigm (Read in this case) are synonymous in terms of this use case. That is, Query (cf. query-response) and Read (cf. CRUD operations) are synonymous in for this use case.

The performance framework is described in the GA&P specification (reference [x]). The Performance Measurement Subscription filter defines the following things (among others) for collecting and reporting Performance Measurements over O2ims:

* The subscription filter qualifies what data from the Performance Measurement jobs should be sent.
* The subscription filter indicates the collection timing interval.
* The subscription filter specifies the reporting mechanisms (file-based reporting, stream-based reporting, event notification reporting).
* The subscription filter dictates the report formats.

An entity performing the query would usually be the SMO; however, it could also be another authorized user, technician, or machine (e.g. software, script, etc.). Typically, an entity would perform a subscription query to cross- check their Performance Measurement Subscription. Though, it could also be utilized for other management purposes as well.

Performance Measurement Subscription describes a subscription mechanism dedicated to getting reports for Performance Measurements. The Performance Management Subscription is not used since we have dedicated subscriptions for measurements specifically.

##### Sequence Description

|  |  |  |
| --- | --- | --- |
| **USE CASE STAGE** | **EVOLUTION / SPECIFICATION** | **<<Uses>> Related Use** |
| **Use Case Title** | Performance Measurement Subscription Query |  |
| **Goal** | An entity (typically the SMO), desires to query the Performance Measurement Subscription(s) from the IMS.  NOTE 1: Query (cf. query-response) and Read (cf. CRUD operations) are synonymous in for this use case. This is the "R" in CRUD.  NOTE 2: An entity may be any authorized user or machine (e.g. software or script, etc.).  NOTE 3: This use case is one in a series of use cases related to Performance Measurement Subscription management (CRUD operations). The create, update, and delete Performance Measurement Subscription operations are described in other use cases.  NOTE 4: The IMS could have more than one Performance Measurement Subscription. This use case covers the query of one or multiple Performance Measurement Subscription(s). |  |
| **Actors and Roles** | **O-Cloud Operator** - The O-Cloud operator is a user that is interested in getting Performance subscription query results.  **SMO (FOCOM)** - The FOCOM within the SMO is used in this use case to represent any consumer of the Performance Measurement Subscription query service.  **IMS** - The IMS within the O-Cloud is used to represent any provider of the Performance Measurement Subscription status query service. |  |
| **Assumptions** | There are no assumptions. |  |
| **Preconditions** | **Connectivity** - The Subscriber has connectivity to the publisher by some mechanism. The mechanism by which the subscriber achieves connectivity to the publisher is out of the scope of this Use Case.  **O-Cloud Operational** - The O-Cloud is installed, operating, and registered with the SMO. |  |

|  |  |  |
| --- | --- | --- |
|  | **Privilege** - The consumer identification and privileges of a SMO user have been verified to be able to perform O2 operations. |  |
| **Begins when** | The use case begins when an operator at the SMO wishes to query the Performance Measurement Subscription(s). |  |
| **Step 1 (M)** | **PERFORMANCE SUBSCRIPTION QUERY REQUEST** -  The O-Cloud operator initiates a query for Performance Measurement Subscription(s) with a query filter. |  |
| **Step 2 (M)** | **PERFORMANCE SUBSCRIPTION QUERY REQUEST** -  The query Performance Measurement Subscription request is issued from FOCOM (SMO) to the publisher (IMS) with query filter.  NOTE 5: The query filter could include the *Consumer Subscription Identifier(s).* |  |
| **Step 3 (ALT)** | **SUCCESSFUL PERFORMANCE SUBSCRIPTION QUERY** -  A connection authentication is verified by the publisher (IMS). This is a standard type of check; and a standard response would be issued in this case. The query request operation is processed by the publisher. If the query request results in Performance Subscription(s) matching the query filter, then a success response is sent to FOCOM (SMO) in step 8. |  |
| **Step 4 (ALT)** | **EXCEPTION: QUERY OF NON-EXISTING PERFORMANCE SUBSCRIPTION** - If  the query operation results in no Performance Measurement Subscription that matches the query filter, then a Performance Measurement Subscription not found is issued back to the requestor.  For example, if no *consumer subscription identifier(s)* matches any Performance Subscription, this exception would be encountered.  NOTE 6: If a Performance Measurement Subscription Query has a mixture of valid and non-existing subscriptions, the operation will only return information about the content. |  |
| **Step 5 (ALT)** | **EXCEPTION: QUERY OF NON-EXISTING PERFORMANCE SUBSCRIPTION RESPONSE -**  If the query operation results in no Performance Measurement Subscriptions that match the query filter, then a "no existing Performance Measurement Subscriptions" response is issued from FOCOM to the O-Cloud Operator. This is a return/response for Step 1.  The Use Case ends here. |  |
| **Step 6 (ALT)** | **EXCEPTION: UNEXPECTED CONDITION** -  The IMS might not be able to comply to the request. There might have been a software issue trying to process the Performance Measurement Subscription query request. |  |
| **Step 7 (ALT)** | **EXCEPTION: UNEXPECTED CONDITION** -  The SMO (FOCOM) returns to the operator that there was an unexpected condition. The Use Case ends here. |  |
| **Step 8 (M)** | **QUERY PERFORMANCE SUBSCRIPTION (SUCCESS)** - |  |

|  |  |  |
| --- | --- | --- |
|  | A successful Performance Measurement Subscription query operation will result in a success from FOCOM back to O-Cloud operator. This is a return/response for Step 1. |  |
| **Ends when** | This Use Case ends under two cases:  **EXCEPTION CASE** - The use case ends when there an exception case is encountered. For example, when a requestor tries to perform a query operation where all of the requested Performance Measurement Subscriptions do not exist.  **QUERY OPERATION SUCCEEDS** - The use case will end if the query operation of Performance Measurement Subscription successfully completed. |  |
| **Exceptions** | **EXCEPTION CASE**: **NON-EXISTENT SUBSCRIPTION** - None of the requested  Performance Measurement Subscriptions exist in the query operation.  **EXCEPTION CASE: UNEXPECTED CONDITION** - The IMS might not be able to comply to the Performance Measurement Subscription query request. In this case, the unexpected condition exception is encountered. |  |
| **Post-conditions** | Success: The Performance Measurement Subscription has been returned to the requestor (O-Cloud operator)  Failure: An exception notification of a non-existent Performance Measurement Subscription or Unexpected Condition has been issued. |  |
| **Traceability** | [REQ-ORC-O2-85], [REQ-ORC-O2-86] |  |

##### UML Sequence Diagram

![](../assets/images/309ebdacb0d0.jpg)

Figure 3-47: PM Subscription Query

#### Performance Management Subscription Update (IMS) Use Case

##### High Level Description

This use case describes the update of a Performance Measurement Subscription. ETSI GS NFV-SOL 003 (see Reference x) specifies the API to perform a PM Job update. The update of PM Job allows for the update of the subscription including the callback URIs for the notification of events of PM Jobs.

The create, query, and delete of a Performance Measurement Subscription is documented in other Performance Measurement Subscription related use cases. The query-response paradigm and CRUD paradigm (update in this case) are synonymous in terms of this use case. This use case only concerns the update of a Performance Measurement Subscription.

The Performance Measurement Subscription update allows for an entity to modify the subscription filter for notifications of interest by a consumer with an update order (see below). Because there is metadata related to the Performance Measurement Subscription it is meaningful to have an update operation. The Performance Measurement Subscription update would be able to change the following things:

**Connection Information** - This describes the connection information which includes the Performance Measurement Subscription ID, the Mode, encoding scheme and callback URI.

**Resources, Resource Types** - This part of the update order describes which O-Cloud resources, or the O- Cloud resource types. Any resources that of the specified type, metrics are collected on.

**Delivery Details** - This describes the delivery information including the reporting interval, and whether redundant data should be suppressed.

**Received Measures** - This describes the measures to be received to be reported.

**PM Jobs** - The subscription update can alter the PM Jobs involved.

NOTE: Some modifications concerning the Performance Measurement Subscription, such as callback URI, can also be performed by modifying/updating the underlying PM Jobs.

An entity requesting for a subscription update would usually be the SMO; however, it could also be another authorized user, administrator, technician, or machine (e.g., software, script, etc.). Typically, an endpoint moved, or there are new URI endpoints. Only an entity with the proper permissions or authorization would be allowed to make a PM subscription update.

##### Sequence Description

|  |  |  |
| --- | --- | --- |
| **USE CASE STAGE** | **EVOLUTION / SPECIFICATION** | **<<Uses>> Related Use** |
| **Use Case Title** | Performance Measurement Subscription Update |  |
| **Goal** | An entity (typically the SMO), desires to update the Performance Measurement Subscription(s) from the IMS.  NOTE 1: Update is a basic type of operation (cf. CRUD operations), the "U" in CRUD.  NOTE 2: An entity may be any authorized user or authorized management function.  NOTE 3: This use case is one in a series of use cases related to Performance Measurement Subscription management (CRUD operations). The create, query, and delete Performance Measurement Subscription operations are described in other use cases.  NOTE 4: PM Subscription update is also applicable to embedded subscriptions which are created in PM Job Creation (see the PM Job Creation Use Case). | 3.8.1 PM Job  Creation Use Case |
| **Actors and Roles** | **O-Cloud Operator** - The O-Cloud operator is a user that is interested in updating Performance Measurement Subscription.  **SMO (FOCOM)** - The FOCOM within the SMO is used in this use case to represent any consumer of the Performance Measurement Subscription service.  **IMS** - The IMS within the O-Cloud performs the Performance Measurement Subscription update operation. |  |
| **Assumptions** | There are no assumptions. |  |
| **Preconditions** | **Connectivity** - The Subscriber has connectivity to the publisher by some mechanism. The mechanism by which the subscriber achieves connectivity to the publisher is out of the scope of this Use Case. |  |

|  |  |  |
| --- | --- | --- |
|  | **O-Cloud Operational** - The O-Cloud is installed, operating, and registered with the SMO.  **Privilege** - The consumer identification and privileges of a SMO user have been verified to be able to perform O2 operations. |  |
| **Begins when** | The use case begins when an operator at the SMO wishes to update the Performance Measurement Subscription(s). |  |
| **Step 1 (M)** | **PERFORMANCE MEASUREMENT SUBSCRIPTION UPDATE REQUEST** -  The O-Cloud operator initiates an update for Performance Measurement Subscription(s) with an update order. |  |
| **Step 2 (M)** | **PERFORMANCE MEASUREMENT SUBSCRIPTION UPDATE REQUEST** -  The update Performance Measurement Subscription request is issued from FOCOM (SMO) to the publisher (IMS) with update order. |  |
| **Step 3 (ALT)** | **SUCCESSFUL PERFORMANCE MEASUREMENT SUBSCRIPTION UPDATE** -  A connection authentication is verified by the publisher (IMS). This is a standard type of check; and a standard response would be issued in this case. The update request operation is processed by the publisher. If the update request results in Performance Measurement Subscription(s) matching the update order, then a success response is sent to FOCOM (SMO) in step 8. |  |
| **Step 4 (ALT)** | **EXCEPTION: UPDATE OF NON-EXISTING PERFORMANCE MEASUREMENT**  **SUBSCRIPTION** - If the update operation results in *no* Performance Measurement Subscription that matches the update order, then a Performance Measurement Subscription not found is issued back to the requestor.  For example, if a *consumer subscription identifier* does not match any Performance Measurement Subscription, this exception would be encountered.  NOTE 5: If a Performance Measurement Subscription update has a mixture of valid and non-existing subscriptions, the operation will only perform operations of valid subscriptions. |  |
| **Step 5 (ALT)** | **EXCEPTION: UPDATE OF NON-EXISTING PERFORMANCE MEASUREMENT SUBSCRIPTION RESPONSE -**  If the update operation results in *no* Performance Measurement Subscriptions that match the requested subscriptions to be updated, then a "no existing Performance Measurement Subscriptions" response is issued from FOCOM to the O-Cloud Operator. This is a return/response for Step 1.  The Use Case ends here. |  |
| **Step 6 (ALT)** | **EXCEPTION: UNEXPECTED CONDITION** -  The IMS might not be able to perform the necessary updates according to the request. There might have been a software issue trying to process the Performance Measurement Subscription update request. |  |
| **Step 7 (ALT)** | **EXCEPTION: UNEXPECTED CONDITION** -  The SMO (FOCOM) returns to the operator that there was an unexpected condition. The Use Case ends here. |  |
| **Step 8 (M)** | **UPDATE PERFORMANCE MEASUREMENT SUBSCRIPTION (SUCCESS)** - |  |

|  |  |  |
| --- | --- | --- |
|  | A successful Performance Measurement Subscription update operation will result in a success from FOCOM back to O-Cloud operator. This is a return/response for Step 1. |  |
| **Ends when** | This Use Case ends under two cases:  **EXCEPTION CASE** - The use case ends when an exception case is encountered. For example, when a requestor tries to perform an update operation where no Performance Measurement Subscription(s) match the request.  **UPDATE OPERATION SUCCEEDS** - The use case will end if the update operation of Performance Measurement Subscription successfully completed. |  |
| **Exceptions** | **EXCEPTION CASE**: **NON-EXISTENT SUBSCRIPTION** - This exception is  encountered if the update operation results in *no* Performance Measurement Subscriptions that match the requested subscriptions to be updated.  **EXCEPTION CASE: UNEXPECTED CONDITION** - The IMS might not be able to perform to the Performance Measurement Subscription update request perhaps due to a software fault. In this case, the unexpected condition exception is encountered. |  |
| **Post-conditions** | **SUCCESS** - The Performance Measurement Subscription has been updated successfully and status returned to the requestor (O-Cloud operator).  **FAILURE** - An exception notification of a non-existent Performance Measurement Subscription or Unexpected Condition has been issued. |  |
| **Traceability** | [REQ-ORC-O2-87], [REQ-ORC-O288] |  |

##### UML Sequence Diagram

![](../assets/images/3477f1cfbee9.png)

Figure 3-48: PM Subscription Update

#### Performance Management Subscription Delete (IMS) Use Case

##### High Level Description

This use case is about the Management of Performance Measurement Subscriptions; in particular, the delete service operation. The create, update, and query of a Performance Measurement Subscription are documented in separate use cases. This use case only concerns the deletion of one or more Performance Measurement Subscription(s) based on a list of subscription(s).

The delete of a Performance Measurement Subscription is the ability of an authorized entity to delete a Performance Measurement Subscription towards the IMS. An entity here would usually be the SMO; however, it could also be another authorized user/technician, or machine (e.g., software, script, etc.).

Any subscription operations that change a subscription are logged. Therefore, the delete of a Performance Measurement subscription is expected to be logged within the O-Cloud IMS.

##### Sequence Description

|  |  |  |
| --- | --- | --- |
| **USE CASE STAGE** | **EVOLUTION / SPECIFICATION** | **<<Uses>> Related Use** |
| **Use Case Title** | Performance Measurement Subscription Delete |  |
| **Goal** | An entity (typically the SMO) initiates the delete of one or more Performance Measurement Subscription(s) based on a list of subscription(s). The operation is handled by the IMS.  NOTE 1: Delete is a basic type of operation (cf. CRUD operation), the "D" in CRUD.  NOTE 2: An entity may be any authorized management function.  NOTE 3: This use case is one in a series of use cases related to Performance Measurement Subscription management (CRUD operations). The create, update, and update of Performance Measurement Subscription operations are described in other use cases.  NOTE 4: The PM Job deletion operation in the case of embedded subscriptions causes the associated PM subscription to be automatically deleted.  NOTE 5: If a PM Subscription Delete depends on a PM Job, and that PM Job is deleted through the PM Job delete operation. The PM subscription is automatically deleted. (See the Performance Measurement Job Delete Use Case). | 3.8.7  Performance Measurement Job Delete Use Case |
| **Actors and Roles** | **O-Cloud Operator** - The O-Cloud operator is a user that is interested in deleting a Performance Measurement Subscription.  **SMO (FOCOM)** - The FOCOM within the SMO is used in this use case to represent any consumer or management entity for the Performance Measurement Subscription.  **IMS** - The IMS within the O-Cloud performs the Performance Measurement Subscription delete operation. |  |
| **Assumptions** | There are no assumptions. |  |
| **Preconditions** | **Connectivity** - The Subscriber has connectivity to the Publisher by some mechanism. The mechanism by which the subscriber achieves connectivity to the publisher is out of the scope of this Use Case.  **O-Cloud Operational** - The O-Cloud is installed, operating, and registered with the SMO.  **Privilege** - The consumer identification and privileges of a SMO user have been verified to be able to perform O2 operations. |  |
| **Begins when** | The use case begins when an operator at the SMO wishes to delete Performance Measurement Subscription(s). |  |
| **Step 1 (M)** | **PERFORMANCE SUBSCRIPTION DELETE REQUEST** -  The O-Cloud operator initiates the deletion of one or more Performance Measurement Subscription(s) indicating the list of subscription(s) to be deleted. |  |
| **Step 2 (M)** | **PERFORMANCE SUBSCRIPTION DELETE REQUEST** - |  |

|  |  |  |
| --- | --- | --- |
|  | The delete Performance Measurement Subscription request is issued from FOCOM (SMO) to the publisher (IMS) indicating the list of subscription(s) to be deleted.  NOTE 6: It would be left to protocol design how handle the deletion of multiple subscriptions. |  |
| **Step 3 (ALT)** | **PERFORMANCE MEASUREMENT SUBSCRIPTION DELETE OPERATION** -  A connection authentication is verified by the publisher (IMS). This is a standard type of check. The update request operation to delete one or more Performance Measurement Subscription(s) is processed by the IMS (publisher).  The Performance Measurement Subscription delete operation will be logged by the IMS.  NOTE 7: If some of the PM Subscription(s) exist in the request, and some PM subscription(s) do not, the operation would be processed successfully, returning the ones that were deleted. |  |
| **Step 4 (ALT)** | **PERFORMANCE MEASUREMENT SUBSCRIPTION DELETE** -  If the Performance Measurement Subscription operation was successful, then a success response is sent to the SMO (consumer) over the O2ims interface.  NOTE 8: If the PM Subscription deletion request was successful, the operator is notified in step 7. |  |
| **Step 5 (ALT)** | **ALT EXCEPTION: NO PERFORMANCE MEASUREMENT SUBSCRIPTION(S) FOUND** -  This exception is encountered when the PM Subscription delete operation requests contains only non-existent PM Subscription(s).  In this case, none of the PM Subscription(s) in the request were found.  For example, the PM Job delete operation with associated embedded subscriptions would cause those PM Subscriptions to be deleted. Thus, when this PM Job Subscription request is received, if the request had only those PM Subscriptions listed it would trigger this exception.  A "no Performance Measurement Subscriptions found" response is issued from IMS to FOCOM (SMO).  The Use Case ends. |  |
| **Step 6 (ALT)** | **ALT EXCEPTION: UNEXPECTED CONDITION** -  A response is sent to the requesting entity from the SMO, that the IMS encountered an unexpected condition processing the request.  The Use Case ends. |  |
| **Step 7 (M)** | **DELETE PERFORMANCE MEASUREMENT SUBSCRIPTION RESPONSE -**  A response is returned to the FOCOM (SMO) from the IMS for the delete Performance Measurement Subscription operation. |  |
| **Ends when** | This Use Case ends when either the Performance Measurement Subscription(s) have been deleted successfully, or one of the two Exception cases has been encountered. |  |
| **Exceptions** | **EXCEPTION: NO PERFORMANCE MEASUREMENT SUBSCRIPTION(S)**  **FOUND** - This exception is encountered if *no* Performance Measurement Subscriptions match the Performance Measurement Subscription delete request. |  |

|  |  |  |
| --- | --- | --- |
|  | **EXCEPTION: UNEXPECTED CONDITION** - The IMS might not be able to perform to the Performance Measurement Subscription delete operation perhaps due to a software fault. In this case, the unexpected condition exception is encountered. |  |
| **Post-conditions** | **SUCCESS** - The Performance Measurement Subscription(s) have been deleted successfully and status returned to the requestor (O-Cloud operator).  **FAILURE** - An exception notification of "No Performance Measurement Subscriptions found" or "Unexpected Condition" has been issued. |  |
| **Traceability** | [REQ-ORC-O2-89], [REQ-ORC-O2-90] |  |

##### UML Sequence Diagram

![](../assets/images/df6743877580.jpg)

Figure 3-49: PM Subscription Delete

#### Performance Management Configuration Use Case

##### High Level Description

The Performance Management Configuration use case will allow for a requesting entity to alter other attributes not covered in the Performance Management Job Creation Use Case and the Performance Management Subscription Use Cases.

This use case complements the Performance Measurement Job Creation Use Case, Performance Measurement Job Update Use Case, Performance Management Subscription Use Case, Performance Management Subscription Update Use Case which are other use cases that will configure the behavior of the Performance Management operation.

These other use cases can alter subtending attributes of the PeformanceSubscription and PerformanceManagementJob family of related objects.

Thus, this use case is focused on the ability to change other attributes related to Performance Management operation. For example, the PerformanceMeasureStore class has a retentionPeriod attribute which can be configured with this use case. The definition of the retentionPeriod is covered in the O2 Information Model. See the Alarm Purge Use Case (see clause 3.7.13 in this document) and Alarm List Creation Use Case (see clause 3.7.11 in this document) and Retention Period concepts for further details (O-RAN WG6.O2-GA&P [9])

##### Sequence Description

|  |  |  |
| --- | --- | --- |
| **USE CASE STAGE** | **EVOLUTION / SPECIFICATION** | **<<Uses>> Related Use** |
| **Use Case Title** | Performance Management Configuration Use Case |  |
| **Goal** | This use case described how an authorized entity (typically the SMO) can change the configuration of Performance Management related attributes. See note 1. | Performance Measurement Job Creation, Performance Measurement Job Update, Performance Management Subscription, Performance Management Subscription Update Use Case |
| **Actors and Roles** | **O-Cloud Operator** - The O-Cloud operator is a user that is interested in configuring Performance Management related attributes.  **SMO (FOCOM)** - The FOCOM within the SMO is used in this use case to request for a Performance Management Configuration change.  **IMS** - The IMS within the O-Cloud performs the Performance Management Configuration operation. |  |
| **Assumptions** | There are no assumptions. |  |
| **Preconditions** | **Connectivity** - The Subscriber has connectivity to the Publisher by some mechanism. The mechanism by which the subscriber achieves connectivity to the publisher is out of the scope of this Use Case. |  |

|  |  |  |
| --- | --- | --- |
|  | **O-Cloud Operational** - The O-Cloud is installed, operating, and registered with the SMO.  **Privilege** - The consumer identification and privileges of a SMO user have been verified to be able to perform O2 operations. |  |
| **Begins when** | This use case being when a management entity, typically the SMO, requests for an update of Performance Configuration attributes. |  |
| **Step 1 (M)** | **PERFORMANCE MANAGEMENT CONFIGURATION REQUEST** -  The O-Cloud operator initiates a request to configure Performance Management attributes |  |
| **Step 2 (M)** | **PERFORMANCE MANAGEMENT CONFIGURATION REQUEST** -  The Performance Management Configuration request is issued from the management entity (FOCOM / SMO) to the IMS.  The IMS authenticates the connection.  The IMS configures the attributes values for requested objects. If the IMS is unable to configure the attribute(s) with requested values, they are not updated.  IMS performs post configuration operations. For example, if the retention period is altered, the IMS will purge elements that are older than the new retention period.  See note 2. |  |
| **Step 3 (ALT)** | **PERFORMANCE MANAGEMENT CONFIGURATION OPERATION SUCCESS /PARTIAL SUCCESS** -  **SUCCEEDED** - If every requested attribute was successfully updated, then the IMS responds to the requesting management entity, a Performance Management Configuration succeeded.  **PARTIALLY SUCCEEDED** - If only some of the requested attributes could be configured and some of the requested attributes could not be configured, then the IMS configures the attributes that it can and responds to the requesting management entity, a Performance Management Configuration partially succeeded. |  |
| **Step 4 (ALT)** | **EXCEPTION: ALL REQUESTED OBJECT(S)/ATTRIBUTE(S) NOT FOUND**  -  If the Performance Management Configuration request has only object(s) and attribute(s) that do not exist, then a Performance Management Configuration of *All requested Object(s) and Attribute(s) not found* is issued back to the requestor. See note 3. |  |
| **Step 5 (ALT)** | **EXCEPTION: ALL REQUESTED OBJECT(S) AND ATTRIBUTE(S) NOT FOUND** -  If the configuration operation results in all Performance Management objects and attributes were not found, then a "All requested object and attributes were not found" response is issued from FOCOM to the O-Cloud Operator. This is a return/response for Step 1.  The Use Case ends here. |  |

|  |  |  |
| --- | --- | --- |
| **Step 6 (ALT)** | **EXCEPTION: UNEXPECTED CONDITION IMS to SMO** -  The IMS might not be able to perform the configuration operation. There might have been a software issue encountered in the processing of the Performance Management configuration request.  A response is sent to the requesting entity from the IMS, that the IMS encountered an unexpected condition processing the request. |  |
| **Step 7 (ALT)** | **EXCEPTION: UNEXPECTED CONDITION SMO to O-Cloud Operator** -  The SMO (FOCOM) returns to the operator that there was an unexpected condition.  The Use Case ends here. |  |
| **Step 8 (M)** | **PERFORMANCE MANAGEMENT CONFIGURATION RESPONSE** -  A successful Performance Management Configuration operation will result in a success from FOCOM back to O-Cloud operator. This is a return/response for Step 1. |  |
| **Ends when** | This Use Case ends under two cases:  **EXCEPTION CASE** - The use case ends when an exception case is encountered. For example, when a requestor tries to perform an update operation where all requested object(s) and attribute(s) are not found.  **UPDATE OPERATION SUCCEEDS** - The use case will end if the configuration operation of Performance Management attribute(s) successfully completed. |  |
| **Exceptions** | **EXCEPTION CASE**: **ALL REQUESTED OBJECT(S) AND ATTRIBUTE(S)**  **NOT FOUND** - This exception is encountered if no Performance Management objects and attributes were not found that match those in the Performance Management Configuration request.  **EXCEPTION CASE: UNEXPECTED CONDITION** - The IMS might not be  able to perform to the Performance Management Configuration request perhaps due to a software fault. In this case, the unexpected condition exception is encountered. |  |
| **Post-conditions** | **SUCCESS** - The Performance Management Configuration has resulted in successfully configuration attributes. A status is returned to the requestor (O- Cloud operator).  **FAILURE** - An exception notification none of the request object(s) and attribute(s) were found or an Unexpected Condition has been issued. |  |
| **Traceability** | [REQ-ORC-O2-99], [REQ-ORC-O2-100] |  |
| NOTE 1: The Performance Management Job Creation Use Case and the Performance Management Subscription Use Case allow for a user to configure attributes related to PM Jobs and Performance Management Subscriptions  NOTE 2: Race conditions that may occur because of changing the retention period is resolved through IMS implementation.  NOTE 3: If a Performance Management Configuration update has a mixture of valid objects-attributes and non-existing objects-attributes, then the operation will only be completed for the configurable attribute(s). This would return a partial success indicator (in Step 3). | | |

##### 3.8.15.3 UML Sequence Diagram

![](../assets/images/bf4bad4e364c.jpg)

Figure 3-50: PM Configuration

### VLAN Management Use Cases

#### VLAN Allocation Use Case

##### High Level Description

This Use Case supports allocation of a VLAN ID to support various deployment use cases such a network slice.

As an example, one of the consumers is RAN NSSMF (Network Slice Subnet Management Function) that needs to associate a RAN slice to a VLAN ID during slice subnet provisioning procedures. Within a given O-Cloud, RAN NSSMF uses this VLAN ID as handover between O-Cloud and transport network so that the slice could be carried through the transport network across multiple O-Clouds. If a slice spans multiple O-Clouds, this handover is necessary for each segment of the transport connecting these O-Clouds. See Annex A in the O-RAN.WG1.Slicing-Architecture- v05.00 [14] as to how this VLAN ID is used in various deployments.

The scope of this use case is simply to allocate/reserve a VLAN ID within O-Cloud. As a part of this use case, no configuration is pushed in the O-Cloud.

Since VLANs have a local significance, each O-Cloud manages a pool of VLAN IDs, and returns a VLAN ID upon a query/request from SMO (FOCOM). To avoid using the same VLAN ID multiple times, O-Cloud may take the VLAN ID out of the "available" pool after it allocates it. O-Cloud may choose any mechanism to ensure that same VLAN IDs is not used multiple times.

NOTE: There are other viable identifiers to associate a slice with (such as VLANs, VNIs, VRFs, etc.), In the initial version of O-RAN network slicing, VLAN IDs are used for this purpose. Additional identifiers, or an abstract identifier may be introduced in future. This does not impose any networking constrains within O-Cloud.

##### Sequence Description

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>> Related use** |
| Goal | Allocation of VLAN ID (and associate it to a network slice optionally). See O- RAN.WG1.Slicing-Architecture-v05.00 [14] |  |
| Actors and Roles | RAN NSSMF - acts as a consumer of VLAN Allocation use case for network slice subnet management purposes.  SMO/FOCOM - Federated O-Cloud Orchestration and Management IMS/DMS |  |
| Assumptions | Slicing is used as an example consumer of this VLAN ID allocation service.   1. NSSMF function is available and drives the creation of network slice 2. If network slice spans multiple O-Clouds within RAN domain, below use case request is executed each O-Cloud |  |
| Preconditions | 1. SMO is available 2. The VLAN IDs Pool is available in O-Cloud 3. NF has already been deployed. |  |
| Begins when | As a part of network slice creation, NSSMF requests a VLAN identifier from O- Cloud. Optionally, a metadata may be provided by NSSMF that could include Slice ID.  Metadata is a generic structure that could be passed along with the request. This structure could include various data items such as Slice ID.  As specified in Step 4 below, if metadata is provided, O-Cloud associates VLAN ID with the metadata. |  |
| Step 1 (M) | SMO/FOCOM requests a VLAN ID from O-Cloud. This request may be on O2ims/O2dms |  |
| Step 2(M) | O-Cloud does the feasibility check - i.e., if a VLAN ID is available. |  |
| Step 3 (M) | O-Cloud selects an available VLAN ID from the pool of available VLAN IDs |  |
| Step 4 (O) | O-Cloud associates the VLAN ID to metadata provided by the SMO, which may include slice identification related information.  . |  |
| Step 5 (M) | O-Cloud returns the selected VLAN ID to SMO.  How SMO uses this VLAN ID is described in section 3.9.1.1 |  |
| Ends when | The response is returned |  |
| Exceptions | No VLAN ID is available |  |
| Post Conditions | VLAIN ID is reserved/allocated in O-Cloud |  |
| Traceability | REQ-ORC-GEN24 |  |

##### UML sequence diagram

![](../assets/images/8997f77acdcc.jpg)

Figure 3-51: VLAN Allocation

#### VLAN Deallocation Use Case

##### High Level Description

This use case supports deallocation of a VLAN ID when a given VLAN ID not needed anymore, such as at the time of deletion of a network slice. A given VLAN IDs is a returned back to "available" pool of VLAN IDs in each O-Cloud.

VLAN IDs are a limited/finite set of pool. Therefore, it is important to recycle the VLAN IDs as they are not needed anymore. As an example, when a network slice is deleted, RAN NSSMF sends a deallocate VLAN ID request to O- Cloud. O-Cloud moves the VLAN ID into the pool of available VLAN IDs.

##### Sequence Description

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>> Related use** |
| Goal | Freeing of VLAN ID (associated with network slice). See O-RAN.WG1.Slicing- Architecture-v05.00 [14] |  |
| Actors and Roles | RAN NSSMF - acts as a consumer of VLAN Allocation use case for network slice subnet management purposes.  SMO/FOCOM - Federated O-Cloud Orchestration and Management IMS/DMS |  |
| Assumptions | Slicing is used as an example consumer of this VLAN ID allocation service.  1. NSSMF function is available and drives the deletion of network slice |  |

|  |  |  |
| --- | --- | --- |
|  | 2. If network slice spans multiple O-Clouds within RAN domain, below use case request is executed for each O-Cloud |  |
| Preconditions | 1. SMO is available 2. Network slice already exists | 3.9.1 VLAN ID  Allocation |
| Begins when | As a part of network slice deletion, NSSMF requests O-Cloud to free the VLAN ID associated with the slice. |  |
| Step 1 (M) | O-Cloud verifies that the VLAN ID is valid that is being deleted. If this is not a valid VLAN ID, no action is taken and response with error is returned. Verification of the valid VLAN ID can be multifold, such as:   1. Is this a valid number? 2. Is it within the range of available VLAN IDs pool? |  |
| Step 2 (O) | O-Cloud deletes the metadata previously associated to the VLAN ID |  |
| Step 3 (M) | O-Cloud returns freed VLAN ID to the pool of available VLANs |  |
| Ends when | The response is returned |  |
| Exceptions | Invalid VLAN ID specified |  |
| Post Conditions | VLAN ID is freed in O-Cloud |  |
| Traceability | REQ-ORC-GEN24 |  |

##### UML sequence diagram

![](../assets/images/58ca7fdaf710.jpg)

Figure 3-52: VLAN Deallocation

### Network Slicing Use Cases

#### Network Slice Creation Use Case

##### High Level Description

This use case supports creation of RAN slice subnet.

Network slices may span across multiple domains such as RAN, Core, and Transport. The slice is divided into multiple subnets; one subnet per domain, i.e., RAN Slice Subnet, Transport Slice Subnet, and Core Slice Subnet. This section only covers the RAN Slice Subnet.

Network slice creation requires creation of O-RAN Network Slice Subnet Instance (O-NSSI). RAN Network Slice Subnet Management Function (NSSMF) manages the creation and deletion of O-NSSI. For details, please see O- RAN.WG1.Slicing-Architecture-v06.00 [14].

RAN NSSMF also manages disaggregated RAN deployment use cases where Network Functions (such as O-DU and

O-CU) are deployed in different O-Clouds or in different locations in each O-Cloud. RAN NSSMF manages creation of O-NSSI and relevant Network Functions (NFs) across multiple O-Clouds. RAN NSSMF triggers the Network Functions management operation via NFO. RAN NSSMF also coordinates with the constituent Transport NSSMF to achieve the slice connectivity across multiple O-Clouds.

RAN NSSMF coordinates with its constituent Transport NSSMF through NSMF to stitch the connectivity across multiple O-Clouds or multiple sites in a distributed O-Cloud (for disaggregated RAN deployments). In such deployments, the network connectivity for the slice may require multiple network connections, herein referred to as network segments. For example, a slice spanning across two O-Clouds connected by transport may have up to 5 network segments. Two network segments within each O-Cloud, two segments between the O-Clouds and their respective Transport attachment points and a fifth network segment in the transport network.

In multi-vendor O-RAN deployments, many flavors of NFs may co-exist. Some may require trunked interfaces whereas others may require access interfaces. Similarly, multiple forms for NFs may exist such as CNFs, VNFs, or PNFs.

The End-2-End slice is associated with a network segment unique identifier per network segment, herein called a tag. While a choice of various viable identifiers (such as VLANs, VNIs, VRFs, etc.) is available, in this Use Case a VLAN ID is one of the example identifier/tags for network slicing. In that case, VLAN IDs are chosen for both within O-Cloud as well as for handover to the transport network.

NOTE 1: The use case further elaborates on the scenario of using VLAN IDs, but other network segmentation solutions are also possible.

The packets marked with this unique tag/VLAN ID traverse the network segments within O-Cloud and are of local significance within a given network segment. This tag/VLAN ID may be stitched/mapped to a different tag by the O- Cloud Gateway to handover to the transport network attachment point. As an example, say VLAN ID 100 was chosen to mark an EMBB slice. This VLAN ID 100 may map to a VRF\_X at O-Cloud Gateway and a VLAN ID 200 may be used to carry the same packets in the transport network. This mapping allows the transport network to carry the packets associated with each slice.

Depending upon the slice SLAs and deployment scenario of a slice, RAN NSSMF makes the decisions such as:

* If additional NF instances need to be deployed (e.g., one O-DU instance per slice), or
* Use the existing NF for the new slice (e.g., shared resources for a slice)
* RAN NSSMF/SMO makes an NF placement decision taking all relevant information into account.
* Etc.

NOTE 2: The actual details of such decisions by RAN NSSMF are out of the scope for this use case. See O- RAN.WG1.Slicing-Architecture-v06.00 for details.

##### Sequence Description

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>> Related use** |
| Goal | Creation of network slice subnet in O-Cloud. |  |

|  |  |  |
| --- | --- | --- |
| Actors and Roles | RAN NSSMF - Manages network slice subnet, e.g., through SMO services. This includes:   * Triggers the Instantiation of NFs for a given slice * Orchestrates the end-2-end connectivity between different involved NFs for a given slice   SMO/FOCOM/IMS - Federated O-Cloud Orchestration and Management NFO/DMS - To deploy NFs, if needed |  |
| Assumptions | 1. RAN NSSMF function is available and drives the creation of network slice subnet instance (O-NSSI) 2. RAN NSSMF uses FOCOM to communicate with IMS, and it interacts NFO to trigger the NF management with DMS 3. If network slice spans multiple O-Clouds (or multiple sites in a distributed O-Cloud) within RAN domain below use case request is executed for each O-Cloud or site. 4. RAN NSSMF may, but need not, request the deployment of NFs (depending upon the slice SLAs) |  |
| Preconditions | 1. SMO is available 2. IMS and DMS are available 3. The O-Cloud Node Cluster Network access or trunk port is created if the NFs require access or trunk port support. |  |
| Begins when | RAN NSSMF starts the creation of an instance of O-NSSI |  |
| Step 1(M) | SMO/FOCOM requests an O-Cloud internal VLAN ID from O-Cloud over O2ims to associate with the slice. The requested VLAN ID will be used to tag the data frames of the NF's respective slice, configured through the O1 interface. Also, the requested VLAN ID will be used to provision the O-Cloud Site Network Fabric.  If NF is already deployed and is using trunk port, add this VLAN ID to the trunk port and If NF is using cluster access mode ports, add a new access port and  this VLAN ID to it. | VLAN Allocation Use case [3.9.1] |
| Step 2(O) | If a slice spans across multiple O-Clouds or sites in a distributed O-Cloud:  NFs associated with the slice need to be connected to the O-Cloud Gateway so that they can connect to their counterpart through transport network in the remote O-Cloud or site in a distributed O-Cloud. 3GPP TS 28.541 defines EP\_Transport for this connectivity.  For example: O-DU connects to endpoint EP\_F1U to communicate with O- CU\_UP. This EP\_F1U needs to be connected to EP\_Transport to achieve this connectivity.  FOCOM sends request to IMS to ensure connectivity of the NFs associated with slice to the O-Cloud Gateway. This connectivity requires two interconnections. One connection from the NF to O-Cloud Gateway and second from the O-Cloud Gateway to the Transport network. Depending upon the case, the following options are possible to ensure inter-domain connectivity:   1. The Network Segment (e.g., VLAN ID) used for handover shall be selected/reserved by the O-Cloud 2. The O-Cloud shall be capable of receiving the Network Segment (e.g., VLAN ID) used for handover as an input for the O-Cloud internal configuration |  |
| Step 3(O) | If NF need to be instantiated as part of the creation of slice subnet instance:  SMO/ NFO sends request to O-Cloud via O2dms interface to deploy NFs. NFO may select appropriate cluster to deploy the NF on.  Execute "Instantiate Network Function on O-Cloud" Use Case.  If NF needs to be connected to the trunk port, the trunk port is created prior to deploying the NF. Add the VLAN ID allocated in step 1 to this trunk port. | Instantiate NF use case [3.2.1] |

|  |  |  |
| --- | --- | --- |
|  | If NF needs an access port for the new slice, infrastructure to create access port and assign the VLAN ID to that port. |  |
| Step 4(M) | The response is returned |  |
| Step 5(O) | Exceptions: Slice creation fails. The failure exception could occur because of partial failures, such as:   * Fail to deploy NF * Fail to create connectivity for any network segment Clean up resources are required for such exceptions, such as: * Free up resources allocated for the deployment of NFs * Free up network resources, e.g., IPAM, VLAN ID, etc. |  |
| Post Conditions | None |  |
| Traceability | REQ-ORC-GEN25, REQ-ORC-GEN26, REQ-ORC-GEN27, REQ-ORC- GEN28, REQ-ORC-O2-46, REQ-ORC-O2-64, REQ-ORC-O2-65 |  |

##### UML sequence diagram

![](../assets/images/5efb854b8379.jpg)

Figure 3-53: Network Slice Creation

#### Network Slice Deletion Use Case

##### High Level Description

This use case supports the deletion of the network slice.

When RAN NSSMF deletes a slice subnet, the Network Function instances associated with the slice may need to be terminated as well. Depending upon the deployment scenario (e.g., shared network functions vs. non shared), RAN NSSMF makes decision if NF needs to be terminated or not. RAN NSSMF sends request to NFO to terminate appropriate NFs.

A VLAN ID associated with the slice is deallocated (both at O-Cloud Site Network Fabric as well as O-Cloud Node Cluster Network level) so that O-Cloud could reuse the VLAN ID for further use.

##### Sequence Description

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>> Related use** |
| Goal | Deletion of slice subnet instance in O-Cloud or a site in a distributed O-Cloud |  |
| Actors and Roles | RAN NSSMF - Manages network slice subnet management. SMO/FOCOM/IMS - Federated O-Cloud Orchestration and Management NFO/DMS - To terminate NFs, if needed |  |
| Assumptions | 1. RAN NSSMF function is available and drives the deletion of network slice subnet instance 2. RAN NSSMF uses FOCOM to communicate with IMS, and it interacts NFO to trigger the NF management with DMS 3. If network slice spans multiple O-Clouds (or sites in a distributed O-Cloud) within RAN domain, below use case request is executed for each O-Cloud or sites. 4. RAN NSSMF may, but need not, trigger the termination of NFs |  |
| Preconditions | 1. SMO is available 2. IMS and DMS are available |  |
| Begins when | RAN NSSMF starts the deletion of an instance of O-NSSI |  |
| Step 1 (O) | If NF need to be terminated as part of the deletion of slice subnet instance:  SMO/ NFO sends request to O-Cloud via O2dms interface to terminate NFs Execute the "Terminate Network Function on O-Cloud" Use Case | Terminate NF use case [3.2.5] |
| Step 2 (M) | SMO/FOCOM sends a request to O-Cloud over O2ims to deallocate the VLAN ID associated with the slice | VLAN  Deallocation Use case [3.9.2] |
| Step 3 (O) | If slice spans across multiple O-Clouds, FOCOM sends request to IMS to remove the connectivity of the NFs associated with the slice from the O-Cloud Gateway. |  |
| Step 4(M) | The response is returned |  |
| Exceptions | Slice deletion fails |  |
| Post Conditions | None |  |
| Traceability | REQ-ORC-GEN25, REQ-ORC-GEN26, REQ-ORC-GEN27, REQ-ORC- GEN28, REQ-ORC-O2-46, REQ-ORC-O2-64, REQ-ORC-O2-65 |  |

|  |  |  |
| --- | --- | --- |
|  |  |  |

##### UML sequence diagram

![](../assets/images/e84d329bbe77.jpg)

Figure 3-54: Network Slice Deletion

### Provisioning Use Cases

#### Network Resource Provisioning for Underlay Network Use Case

##### High level description

This use case describes the procedure for SMO to provision network resource for the Underlay Network (infrastructure- level network) enabling O-Cloud Nodes to communicate with each other and with the O-Cloud Gateway connected to networks outside of the O-Cloud site. This procedure can be invoked independently to the existing O-Cloud Basic Use Case specified in clause 3.1.

##### Sequence description

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>> Related use** |
| Goal | Network resource provisioning for the Undelay Network enabling O-Cloud  Nodes to be interconnected as well as with transport network via O-Cloud Gateway. |  |
| Actors and Roles | SMO: FOCOM IMS  Network Operator |  |
| Assumptions | Network Resource for Underlay Network has not been provisioned |  |
| Preconditions | 1. SMO and IMS are available 2. Network connectivity exists between the O-Cloud and SMO 3. The compute systems for the O-Cloud Nodes and the O-Cloud Network Fabric are physically interconnected (i.e., cables are wired) |  |
| Begins when | Network operator decides to provision network resource for the Underlay Network. |  |
| Step 1 (M) | SMO sends a request to the IMS using O2ims services to provision the network resource for the Underlay Network to enable network connectivity among O- Clouds Nodes. |  |
| Step 2 (M) | IMS sends a response to the SMO to inform that the request is accepted and it starts provisioning. IMS performs the network resource provisioning for the Underlay Network to the O-Cloud Node and if necessary, O-Cloud Network Fabric for L2 level and O-Cloud Gateway for L3 level as well.  NOTE 1: Network resource provisioning for the Underlay Network can be also performed during O-Cloud Platform Software Installation Use Case described in clause 3.1.2. |  |
| Step 3 (M) | IMS informs the SMO of the success or failure of the network provisioning request. |  |
| Ends when | Network resources for the Underlay Network are provisioned. |  |
| Exceptions | None identified. |  |
| Post Conditions | Network resources for the Underlay Network have been provisioned and network connectivity has been established between O-Cloud Nodes and with transport network via O-Cloud Gateway. |  |
| Traceability | REQ-ORC-O2-45, REQ-ORC-O2-46 |  |

##### UML sequence diagram

![](../assets/images/25c6f483a6c7.jpg)

Figure 3-55: Network Resource Provisioning for Underlay Network

#### Create O-Cloud Node Cluster Use Cases

##### General

There are two methods for creating an O-Cloud Node Cluster. The first use case focuses on create a Kubernetes (K8s) Cluster and is tailored to establish a containerized K8s environment. The second use case leverages an O-Cloud Template, which uses a declarative approach. The template specifies the desired state and target configuration for the O- Cloud, ensuring that the necessary computing, storage, and network resources are allocated to form the O-Cloud Node Cluster. The resulting O-Cloud Node Cluster can be of any type, such as Kubernetes (K8s), bare metal, virtual machines or other configurations.

##### Create Kubernetes (K8s) Cluster

* + - * 1. High level description

This use case describes the processing of a request to create a single Kubernetes (K8s) Cluster from the FOCOM towards the IMS at the O-Cloud. The use case aims to assign a suitable set of computer systems, storage resources and network connectivity as a basis for a K8s Cluster, to establish a K8s Cluster in the O-Cloud and to inform the requesting entity what has been created. Before this use case is started it is expected that SMO has concluded that a new K8s Cluster needs to be created in a specific O-Cloud. When the use case is concluded, any modified O-Cloud (exposed) Resources are updated in the O-Cloud Inventory model.

NOTE: A Kubernetes (K8s) Cluster is an example of O-Cloud Node Cluster supporting container infrastructure services.

* + - * 1. Sequence description

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| **Use Case Title** | Create Kubernetes (K8s) Cluster |  |

|  |  |  |
| --- | --- | --- |
| **Goal** | The goals of this use case are to:   1. Assign suitable computer systems, storage resources, and networking connectivity as a basis for a new K8s Cluster. 2. Establish a new K8s Cluster in the O-Cloud. 3. Inform the requestor (normally FOCOM) that the K8s Cluster deployment management applications are operational and communicate the DMS Endpoint associated to the new K8s Cluster.   NOTE 1: The intent is to hide all O-Cloud internal implementation specific actions that the IMS implementations need to do to create the requested K8s Cluster. The O- Cloud internally will search for and book usable O-Cloud internal resources (whose exposure to the SMO depends on the resource view and inventories resources exposed by the IMS) to create a new K8s Cluster that satisfies the request. |  |
| **Actors and Roles** | Service Management Orchestrator (SMO) - The SMO provides the "requirements" and needs for CNFs, and the K8s Cluster to be created. FOCOM is the endpoint for O2ims at the SMO as a client to IMS in the O-Cloud.  Infrastructure Management Services (IMS) - The IMS Provisions Abstracted Resources. The IMS functionality in the O-Cloud is the manager side of the endpoint for FOCOM. |  |
| **Assumptions** | The following assumptions are relevant to this use case:   1. Bare Metal infrastructure - It is assumed that O-Cloud Resources form a bare metal hardware infrastructure that will be used by the K8s Cluster. 2. Underlay Network - The underlay network is established and available. 3. O-Cloud exists - The O-Cloud is running and has undergone genesis. 4. External Storage Resources - External storage resources are available so that K8s Clusters can be connected to the external storage resource. |  |
| **Preconditions** | The following preconditions are used by this use case:   1. Bare Metal deployed - The deployment of the hardware infrastructure layer has been successfully performed. This is done either as operator on- premises cloud resources or made available from a Cloud Provider. The hardware infrastructure layer includes O-Cloud internal resources such as computer systems, network resources, and storage resources. 2. IMS operational - The IMS services in the O-Cloud are active and operational. For the IMS to be running, it is assumed that the O-Cloud is configured, active and in a running state. 3. Connectivity & Authorized - The O-Cloud has connectivity and authorization allowing communication with the SMO. |  |
| **Begins when** | This use case begins when there is a request to create a K8s Cluster. |  |
| **Step 1 (M)** | REQUEST TO CREATE KUBERNETES (K8s) CLUSTER -  A request to create new Kubernetes (K8s) Cluster is sent from FOCOM to IMS with the Cluster ID. The request can contain or reference a Cluster Template, which describes the declarative target for the O-Cloud Node Cluster. At the IMS, the (O- Cloud internal) resources are booked for the new K8s Cluster. The IMS marks the resources as booked for new K8s Cluster with the Cluster ID.  NOTE 2: Within this use case, the term *"booked resource"* is a resource that has been reserved internal to the O-Cloud. As compared to an *allocated resource* which is a term that describes a booked resource that is externally exposed.  NOTE 3: The create K8s Cluster request only exposes Worker nodes. The IMS internally manages supporting nodes (e.g. Control Plane nodes) which are not exposed.  The request from the SMO (FOCOM) for a new K8s Cluster on an O-Cloud Site near a Location from the O-Cloud (IMS Provisioning Service) provides some of the following input objectives. FOCOM requests a new K8s Cluster in a Location with "X" vCPU performance and "Y" Memory from the IMS Provisioning Service. In addition, |  |

|  |  |  |
| --- | --- | --- |
|  | the following non-exhaustive list of requirements will be transferred, directly or by reference, to IMS by means of a Cluster Template. The requirements defined in 3 through 7 might need to be repeated per Node Pool Group/Type (Definition of these requirements are FFS).   1. LOCATION: Kubernetes (K8s) Cluster shall be [On] or [Near] a given geographic Location. 2. LABELS: K8s Cluster shall have the following Labels (if that is required).    1. Labels can be requested on Cluster and/or NodePool levels    2. Taints - Taints can be applied by IMS at creation to support the DMS to place Pods according to its demands defined by Tolerances. Taints can be considered as a special preconfigured Label. Taints should be possible to be given as requirements by the requestor of a K8s Cluster (or later update) and applied by the IMS logic. 3. COMPUTE/MEMORY: K8s Cluster shall have at least "X" vCPU as performance and "Y" amount of Memory (CPU RAM). 4. NODES: K8s Cluster shall have a minimum of "Z" nodes (if that is required). 5. SPECIAL NEEDS: This defines if there are special needs or capabilities for the Host/Node. Some examples of special needs are Host Profiles, Accelerators, and Affinity rules. The special needs are for FFS. 6. NETWORKING: K8s Cluster and/or its Nodes shall have the following capabilities (some of them also created with the K8s initial creation). NOTE 4: the following traffic requirements relate to Primary Networks and Secondary Networks. However, the expression of these is FFS.   O-Cloud Networking objectives (one or more where applicable) are specified:   * 1. NIC with I/F Type [Std] or [SR-IOV].   2. External DC-GW (N-S) connectivity [Port, Encapsulation-method and Traffic Type Identifier] (e.g. VLAN ID on a Port).   3. K8s Cluster Nodes (as O-Cloud Nodes) shall be transparently connected as [Pod Access I/F] or [Pod Trunk I/F].   4. O-Cloud Internal (E-W) Inter-Cluster network (never leaves the O- Cloud).   5. O-Cloud Site Internal (E-W) Inter-Cluster network (never leaves the O-Cloud Site).   6. K8s Cluster (E-W) Intra-Cluster network (never leaves the Cluster).   7. Minimum requirement on its Network Attachment Definition in the K8s Cluster.  1. STORAGE: K8S Cluster and/or its Nodes shall have the following capabilities (some of them also created with the K8s initial creation) for O- Cloud Storage objectives (one or more where applicable) are specified:    1. Capacity - How much storage is needed.    2. Storage Classes - This indicates factors for the storage offered. Abstracts underlying implementation detail. Storage Classes definitions/categories will be FFS.    3. Persistency -If storage is requested to be of a persistent storage type it implies that the storage data will survive restarts.    4. Dynamic creation supported - This indicates if dynamic creation of storage is supported or whether the storage is statically allocated.    5. Redundancy - Indicates if the storage is redundant. 2. K8s VERSION: K8s Cluster shall have a specific [Version]. 3. CLUSTER/DEPLOYMENT TYPE: Some expected cluster types will be FFS. (if that is required) *(Type can be Native K8s...).* Based on deployment model. The deployment type and cluster type will be FFS. For instance, high-availability, redundancy, topology, and resiliency requirements of the cluster are FFS. 4. USER CREDENTIALS: The Create K8s Cluster request has User Credentials. Security Policies are executed. NOTE 5: These user credentials are later used to authorize the user to have access to or use the created K8s Cluster based on their role privilege (DMS privileges). |  |
| **Step 2 (ALT)** | O-CLOUD PROCESSING OF THE CREATE -  The following things happen within the O-Cloud if suitable resources are found: |  |

|  |  |  |
| --- | --- | --- |
|  | * The IMS creates a new Kubernetes (K8s) Cluster ID. * The IMS books resources in the O-Cloud for the new Kubernetes (K8s) Cluster. * The IMS marks the resources as booked for the new Kubernetes (K8s) Cluster ID. * The IMS creates the Kubernetes (K8s) Cluster by allocating the required O- Cloud Resources. * The IMS starts the Kubernetes (K8s) Cluster and configures the requested cluster-wide services including CRDs, CNIs, CSIs, and Network Interface Connection Points. NOTE 6: The management and configuration of "Cloud Provider Controllers" is FFS. * Required Kubernetes K8s Operators get created. These operators are created based on input requirements from Step 1. There could be different operators for other operations, for example, "networking". * Native Kubernetes microservices are spawned and given associated namespaces. * Platform service(s) are installed with a namespace that is provided by the platform service package or overridden by the cluster lifecycle manager. A platform service package is a bundle of service(s) that provide an application with specific service(s). However, these platform service(s) are not contained in the deployment of the application. The platform service(s) might be exposed as a capability of the K8s Cluster on which a package is installed. NOTE 7: An application here is any type of software that consume the platform service(s). NOTE 8: The scope of the platform services can be within a namespace or cluster-wide. * Requested initial pre-provisioned configurations are set. For example, the initial Network Attachment Definitions (NAD). * A DMS user and/or credentials with limited and authorized privileges and permissions as per agreed security policies (FFS) is added. * The IMS assigns the DMS user credentials to the K8s Cluster. This means that the DMS is created and/or associated with the K8s Cluster. NOTE 9: The DMS user credentials will allow workload placement later onto the K8s Cluster. DMS is not the K8s control plane, just a slice of the functionality exposed by the K8s control plane.   RESPONSE TO CREATE KUBERNETES (K8s) CLUSTER -  After the above happens, the IMS responds to the *create Kubernetes (K8s) Cluster request* with the DMS end point and Kubernetes (K8s) Cluster ID. The O-Cloud (exposed) Inventory is also updated to reflect any changes in the use of O-Cloud Resources.  NOTE 10: The IMS may indicate that resources are found, booked, and creation will start. Though this will be further defined in the protocol specifications. |  |
| **Step 3 (ALT)** | EXCEPTION: RESPONSE TO INSUFFICIENT RESOURCES FOUND - There were  insufficient resources to be able to create the requested Kubernetes (K8s) Cluster. In this case, the IMS responds to the request that there are insufficient suitable resources. IMS cleans up all internal actions for this request.  NOTE 11: The IMS "cleans up", meaning that any internal activities and reservations that occurred in processing the failed request are reversed.  NOTE 12: if some resources were found that match the request, but insufficient to fully satisfy the request, the IMS will respond insufficient resources found. It is up to the requestor to query and reformulate a new request. |  |
| **Step 4 (ALT)** | EXCEPTION: RESPONSE TO MALFORMED REQUEST - The request had an  incorrect format and was not understood by the IMS. An unsuccessful create request is returned to the requestor. The request was non-sensical or the parameters comprising the request do not make sense. IMS cleans up all internal actions for this request. |  |

|  |  |  |
| --- | --- | --- |
|  | NOTE 13: The IMS "cleans up" meaning that any internal activities and reservations that occurred in processing the failed request are reversed. |  |
| **Ends when** | This use case ends when the Kubernetes (K8s) Cluster is created, or the use case has encountered an exception. |  |
| **Exceptions** | INSUFFICIENT RESOURCES - If there are insufficient resources to fulfill the request. The request to create a Kubernetes Cluster cannot be performed.  MALFORMED REQUEST - The request had an incorrect format and could not be processed by the IMS. The request to create a Kubernetes Cluster is rejected. |  |
| **Post-conditions** | SUCCESS: There is a new provisioned K8s Cluster with a K8s Cluster ID. There are provisioned resources for the new K8s Cluster.  The requested O-Cloud networking and connectivity to support the K8s Cluster has been established.  The O-Cloud (exposed) Inventory is updated with the with newly created K8s Cluster as a Resource instance of a specific Resource Type. Resource Type is FFS.  FAILURE: The state of the O-Cloud and IMS is in the same state as before the request arrived: no resources are booked, and no IDs are assigned. |  |
| **Traceability** | REQ-ORC-O2-47, REQ-ORC-O2-48, REQ-ORC-O2-49 |  |

* + - * 1. UML sequence diagram

![](../assets/images/9e71989980d7.jpg)

Figure 3-56: Create Kubernetes (K8s) Cluster

##### Create O-Cloud Node Cluster using O-Cloud Template

* + - * 1. High Level Description

This use case describes the processing of a request to create a single O-Cloud Node Cluster using a O-Cloud Template from the SMO (FOCOM) towards the IMS at the O-Cloud. The use case aims to assign a suitable set of computer systems, storage resources and network connectivity as a basis O-Cloud Node Cluster to establish a Node Cluster in the O-Cloud and to inform the requesting entity what has been created. Before this use case is started it is expected that SMO has concluded that a new Node Cluster needs to be created in a specific O-Cloud. When the use case is concluded, the relevant modeled representation of O-Cloud resources are updated with the newly created O-Cloud Node Cluster and its references to other resources.

* + - * 1. Sequence Description

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| **Use Case Title** | Create O-Cloud Node Cluster using O-Cloud Template |  |
| **Goal** | The goals of this use case are to:   1. Assign suitable computer systems, storage resources, and networking connectivity as a basis for a new Node Cluster. 2. Establish a new Node Cluster in the O-Cloud using O-Cloud Template. 3. Inform the requestor (normally FOCOM) that the O-Cloud Node Cluster is operational and communicate the DMS Endpoint associated to the new O- Cloud Node Cluster.   See NOTE 1. |  |
| **Actors and Roles** | **Service Management Orchestrator (SMO)** - The SMO provides the "requirements" and needs for CNFs, and the O-Cloud Node Cluster to be created. FOCOM is the endpoint for O2ims at the SMO as a client to IMS in the O-Cloud.  **Infrastructure Management Services (IMS)** - The IMS Provisions Abstracted Resources. The IMS functionality in the O-Cloud is the manager side of the endpoint for FOCOM. |  |
| **Assumptions** | The following assumptions are relevant to this use case:   1. Infrastructure - It is assumed that O-Cloud Resources form an infrastructure that will be used by the O-Cloud Node Cluster. 2. Underlay Network - The underlay network is established and available. 3. O-Cloud exists - The O-Cloud is running and has undergone genesis. 4. Storage Resources - storage resources are available so that O-Cloud Node Clusters can be provided with storage resource. 5. O-Cloud Template - It is assumed that the O-Cloud Template referenced in the Provisioning Request exists in the O-Cloud Template catalog for both SMO and corresponding O-Cloud. 6. A Provisioning Request shall be capable of creating a Node Cluster based on the O-Cloud Template. 7. The Provisioning Request object may include required or optional input parameters according to an input data template parameter schema definition in the O-Cloud Template. |  |

|  |  |  |
| --- | --- | --- |
|  | 8. The Provisioning Request object is a declarative definition of the reference to a Template and corresponding required or optional parameters. |  |
| **Preconditions** | The following preconditions are used by this use case:   1. Infrastructure deployed - The deployment of the infrastructure layer has been successfully performed. This is done either as operator on-premises cloud resources or made available from a Cloud Provider. The infrastructure layer includes O-Cloud internal resources such as computer systems, network resources, and storage resources. 2. SMO is aware of what parameters if any to be supplied with the request. 3. IMS operational - The IMS services in the O-Cloud are active and operational. For the IMS to be running, it is assumed that the O-Cloud is configured, active and in a running state. 4. Connectivity & Authorized - The O-Cloud has connectivity and authorization allowing communication with the SMO. |  |
| **Begins when** | This use case begins when there is a request to create a O-Cloud Node Cluster. |  |
| **Step 1 (M)** | REQUEST TO CREATE O-CLOUD NODE CLUSTER -  A Provisioning Request object to create new O-Cloud Node Cluster using an O- Cloud Template is sent from SMO (FOCOM) to IMS. The request contains a reference to an O-Cloud Template in the catalog, which describes the declarative target for the O-Cloud Node Cluster. At the IMS, the (O-Cloud internal) resources are booked for the new O-Cloud Node Cluster.  The template and provisioning request provide requirements about capacity and capabilities of the O-Cloud Node Cluster related to number of O-Cloud Nodes, compute and storage types and capacities, requirements for the O-Cloud Node Cluster Site Networks, location of the O-Cloud Node Cluster, and other characterizations.  See NOTE 2. |  |
| **Step 2 (ALT)** | O-CLOUD PROCESSING OF THE PROVISIONING REQUEST OBJECT -  The IMS responds to SMO (FOCOM), confirming that the Provisioning Request object has been created.  The following things happen within the O-Cloud if suitable resources are found:   * The IMS creates a new O-Cloud Cluster ID. * The IMS books resources in the O-Cloud for the new Node Cluster. * The IMS marks the resources as booked for the new O-Cloud Cluster ID. * Refer to Step 3-4 for monitoring the status of the Provisioning Request. * The IMS creates the Node Cluster by allocating the required O-Cloud Resources. * The IMS updates the Provisioning Request object status throughout the Node Cluster creation progress.   SUCCESSFUL CREATION OF NODE CLUSTER  After the above happens, the IMS updates the Provisioning Request object with the |  |

|  |  |  |
| --- | --- | --- |
|  | corresponding successful status.  A new or existing DMS endpoint is associated with the provisioned O-Cloud Node Cluster.  The relevant modeled representation of O-Cloud resources are updated with the newly created O-Cloud Node Cluster and its references to other resources.  See NOTE 3. |  |
| **Step 3-4 (PAR)** | The process of creating O-Cloud Node Cluster may take significant time. During this period, SMO could monitor the provisioning status until the creation request is either successfully completed or has failed.  See NOTE 4.  The SMO (FOCOM) begins monitoring the status of the Provisioning Request object:   * A Provisioning Request object status request is sent from the SMO (FOCOM) to the IMS. * A response from IMS to SMO (FOCOM) is sent containing the current Provisioning Request object status   EXCEPTION: INSUFFICIENT RESOURCES - There were insufficient resources to be able to create the requested O-Cloud Node Cluster. In this case, the IMS updates the Provisioning Request object that there are insufficient suitable resources. IMS cleans up all internal actions for this request.  EXCEPTION: CREATION FAILED - The creation of a new O-Cloud Node Cluster could not be completed. In this case, the IMS updates the Provisioning Request object that the creation has failed. IMS cleans up all internal actions for this request.  See NOTE 5 and NOTE 6. |  |
| **Step 5 (ALT)** | EXCEPTION: MALFORMED REQUEST - The request had an incorrect format and was not understood by the IMS. An unsuccessful Provisioning Request response is returned to the requestor. The request was non-sensical or the parameters comprising the request do not make sense. IMS cleans up all internal actions for this request.  See NOTE 7. |  |
| **Ends when** | This use case ends when the O-Cloud Node Cluster is created, or the use case has encountered an exception. |  |
| **Exceptions** | INSUFFICIENT RESOURCES - If there are insufficient resources to fulfill the request. The request to create a O-Cloud Node Cluster cannot be performed.  CREATION FAILED - The creation of a new O-Cloud Node Cluster couldn't be completed.  MALFORMED REQUEST - The request had an incorrect format and could not be processed by the IMS. The request to create an O-Cloud Node Cluster is rejected. |  |
| **Post-conditions** | SUCCESS: There is a new provisioned O-Cloud Node Cluster with an O-Cloud Cluster ID.  There are provisioned resources for the new O-Cloud Node Cluster.  A new or existing DMS endpoint is associated with the provisioned O-Cloud Node |  |

|  |  |  |
| --- | --- | --- |
|  | Cluster.  See NOTE 8.  The relevant modeled representation of O-Cloud resources are updated with the newly created O-Cloud Node Cluster and its references to other resources.  FAILURE: The state of the O-Cloud and IMS is in the same state as before the request arrived: no resources are booked, and no IDs are assigned. |  |
| **Traceability** | REQ-ORC-O2-49, REQ-ORC-O2-107, REQ-ORC-O2-108 |  |
| **Notes** | NOTE 1: The intent is to hide all O-Cloud internal implementation specific actions that the IMS implementations need to do to create the requested O-Cloud Node Cluster. The O-Cloud internally will search for and book usable O-Cloud internal resources (whose exposure to the SMO depends on the resource view and inventories resources exposed by the IMS) to create a new O-Cloud Node Cluster that satisfies the request.  NOTE 2: Within this use case, the term *"booked resource"* is a resource that has been reserved internal to the O-Cloud. As compared to an *allocated* resource which is a term that describes a booked resource that is externally exposed. Provisioning Request  NOTE 3: The IMS may indicate that resources are found, booked, and creation will start by updating the Provisioning Request object. Though this will be further defined in the protocol specifications.  NOTE: 4: The IMS may also indicate via a notification to the SMO the successful or failed creation of the O-Cloud Node Cluster.  NOTE 5: The IMS "cleans up", meaning that any internal activities and reservations that occurred in processing the failed request are reversed.  NOTE 6: If some resources were found that match the request, but insufficient to fully satisfy the request, the IMS will respond insufficient resources found. It is up to the requestor to track the Provisioning Request object and reformulate a new request.  NOTE 7: The IMS "cleans up" meaning that any internal activities and reservations that occurred in processing the failed request are reversed.  NOTE 8: Access to the DMS also requires credentials or access rights to the endpoint. |  |

* + - * 1. UML Sequence Diagram

![](../assets/images/0979190836f8.jpg)

Figure 3-57: Create O-Cloud Node Cluster using O-Cloud Template

#### Delete Kubernetes (K8s) Cluster Use Case

##### High Level Description

This use case describes the processing of a request to delete a single Kubernetes (K8s) Cluster from FOCOM to IMS in the O-Cloud. The objective of the operation is to delete a previously created Kubernetes Cluster. This is part of a family of O2 IMS Provisioning operations related to Kubernetes Clusters.

When the use case is concluded, the specified Kubernetes (K8s) Cluster in the O-Cloud is deleted. Typically, the associated (exposed) O-Cloud Resources are released and updated in the O-Cloud Inventory model. Depending on implementation the O-Cloud Resources may not immediately be released.

##### Sequence Description

|  |  |  |
| --- | --- | --- |
| **USE CASE STAGE** | **EVOLUTION / SPECIFICATION** | **<<Uses>>**  **Related Use** |
| **Use Case Title** | Delete Kubernetes (K8s) Cluster |  |
| **Goal** | The goals of this use case are to:   1. Delete an existing K8s Cluster in the O-Cloud. 2. Release assigned O-Cloud Resources from the K8s Cluster. 3. Inform the requestor (normally FOCOM) that the K8s Cluster has been deleted. |  |
| **Actors and Roles** | Service Management Orchestrator (SMO) - The FOCOM in the SMO is the consumer that will request the deletion of the K8s Cluster.  Infrastructure Management Services (IMS) - The IMS processes the request for the deletion of the K8s Cluster. The O-Cloud IMS functionality acts as a manager for any requesting authorized client. |  |
| **Assumptions** | The following assumption is relevant to this use case:   1. Kubernetes Cluster exists - An existing Kubernetes Cluster has been previously created. 2. Workload migration - If the user of the cluster would like to migrate any traffic that it is interested in, it is assumed that such traffic has already been migrated away. This should be done at the SMO. 3. Clean up - It is assumed that the SMO would have deleted the relevant O-RAN NF before the delete cluster request is sent. |  |
| **Preconditions** | The following preconditions are used by this use case:   1. IMS operational - The IMS in the O-Cloud is active and operational. For the IMS to be running, it is assumed that the O-Cloud is configured, active and in a running state. 2. Connectivity & Authorized - The O-Cloud has connectivity and authorization allowing communication with the SMO. |  |
| **Begins when** | This use case begins when there is a request to delete a K8s Cluster. |  |
| **Step 1 (M)** | REQUEST TO DELETE KUBERNETES (K8s) CLUSTER -  A request to delete an existing Kubernetes (K8s) Cluster is sent from FOCOM to IMS with the *Cluster ID* over the O2 IMS interface. |  |

|  |  |  |
| --- | --- | --- |
|  | NOTE 1: *Cluster ID* is an O-Cloud unique identity for the specific Cluster to be deleted. Its exact place in the information model and format are FFS. |  |
| **Step 2 (ALT)** | O-CLOUD PROCESSES THE DELETE K8s CLUSTER -  The following steps are done by the IMS in the O-Cloud to process the K8s Cluster deletion request:   * The IMS will gracefully terminate the cluster, release its resources, and update the O-Cloud Resource configurations.   + If the Cluster is non-responsive, then the IMS performs a forceful delete of the association of the O-Cloud Resources to the cluster and update the configurations. * Delete K8s Cluster ID - The K8s Cluster ID in the request is deleted. * Clean internal resources - The O-Cloud internal resources are cleaned. * Release resources - Typically, the associated (exposed) O-Cloud Resources are released and updated in the O-Cloud Inventory model. Depending on implementation the O-Cloud Resources may not be immediately released. * Inventory updated - The O-Cloud inventory for O-Cloud resources is updated when resources are released. * List of Clusters is updated - The O-Cloud inventory that lists the clusters is updated. * Cluster endpoint deleted - The corresponding Cluster endpoint is deleted. * NOTE 2: There are cases where a deletion request could not be processed properly. For example, a token mismatch where the connections are bad, a CNI (container network interface) connectivity issue, or Kubeconfig error where the registry is not deleted. This may place the K8s cluster in a *Terminating* or *Pending* state. In this case, the IMS will get an indication that the K8s termination error is returned.   NOTE 3: When the delete K8s Cluster operation is executed, the nodes in the cluster are not drained before deletion.  NOTE 4: Void  RESPONSE TO DELETE KUBERNETES (K8s) CLUSTER -  After the above happens, the IMS then responds to the *delete Kubernetes (K8s) request* with the response over the O2 IMS interface. The O-Cloud (exposed) Inventory is also updated to reflect any changes in the use of O-Cloud Resources. | Note: see also the O- Cloud Inventory Update Use Case |
| **Step 3 (ALT)** | EXCEPTION: KUBERNETES CLUSTER NOT FOUND - The requested  Kubernetes Cluster ID was not found or does not exist in the O-Cloud. |  |
| **Ends when** | This use case ends when the Kubernetes (K8s) Cluster is deleted, or the use case has encountered an exception. |  |
| **Exceptions** | KUBERNETES CLUSTER NOT FOUND - The requested Kubernetes Cluster ID was not found or does not exist in the O-Cloud. |  |
| **Post-conditions** | SUCCESS: The K8s Cluster with requested K8s Cluster ID has been deleted. Resources are released for the deleted K8s Cluster.  The requested O-Cloud networking and connectivity to support the K8s Cluster are released.  NOTE 5: if there are any faults in the O-Cloud Resources those should be reported through normal Fault Management Operations.  The O-Cloud (exposed) Inventory is updated reflect the deletion of the K8s Cluster. |  |

|  |  |  |
| --- | --- | --- |
|  | When the delete Kubernetes Cluster operation is done, IMS performs the internal clean up and reports resultant updates to O-Cloud inventory and communicate changes for those resources.  FAILURE: The state of the O-Cloud and IMS is in the same state as before the bad request arrived. No Kubernetes Cluster is affected or altered. |  |
| **Traceability** | Requirement [REQ-ORCH-O2-61], [REQ-ORCH-O2-62], [REQ-ORCH-O2-63] |  |

##### UML Sequence Diagram

![](../assets/images/e5f80976db82.jpg)

Figure 3-58: Delete Kubernetes (K8s) Cluster

#### Update O-Cloud Node Cluster Use Cases

##### General

An O-Cloud Node Cluster can be updated by adding or removing O-Cloud Nodes, or by adjusting its capabilities, and one option for doing so is by using an O-Cloud Template with a declarative approach. In this approach, the desired final state of the Node Cluster is specified within the template. The O-Cloud system automatically determines how to modify the existing resources such as computing, storage, and network capacity to meet the desired state.

##### Update O-Cloud Node Cluster

* + - * 1. High Level Description

This use case describes the flow of a request to update a single O-Cloud Node Cluster with O-Cloud Node addition(s) or reduction(s), including adding/removing cluster capabilities. The update request of an O-Cloud Node Cluster originates from FOCOM and is sent towards the IMS within the O-Cloud. The objective of the operation is to update a previously created and configured O-Cloud Node Cluster. This is part of a family of O2 IMS Provisioning operations related to O-Cloud Node Clusters.

An update of an O-Cloud Node Cluster can also include updates of configuration that are cluster-wide, and updating the capabilities of cluster, e.g., adding support for new types of resources comprising the O-Cloud Nodes or modes of network connectivity.

NOTE: the operations that are performed during an update may be part of maintenance or management functions. When the use case is concluded, the specified O-Cloud Node Cluster in the O-Cloud has been updated.

A disruption policy is the amount of disruption allowed during the update operation. An update of an O-Cloud Node Cluster is manually initiated or automatically scheduled, planned, or triggered. This deployment-level tolerance for disruption is the number of O-Cloud Nodes that can become simultaneously unavailable during the update. For example, a deployment could be created with a disruption policy of losing up to 2 nodes. In this case, it would be possible to lose 2 nodes and continue while performing the cluster update. Each pod may have its own Disruption policy. The idea is to calculate how many nodes could be updated at a time.

* + - * 1. Sequence Description

|  |  |  |
| --- | --- | --- |
| **USE CASE STAGE** | **EVOLUTION / SPECIFICATION** | **<<Uses>>**  **Related Use** |
| **Use Case Title** | Update O-Cloud Node Cluster |  |
| **Goal** | The goals of this use case are to:   1. Update a previously created and configured O-Cloud Node Cluster in the O-Cloud by adding or removing O-Cloud Nodes to make the resulting cluster have increased or decreased capacities and/or capabilities for workload deployments. 2. Accommodate pre-planned upgrades. 3. Inform the requestor (normally FOCOM) that the O-Cloud Node Cluster has been updated. 4. Perform this upgrade below the allowed disruption policy. | 3.1.5  Hardware Infrastructur e Scaling of O-Cloud Post Deployment |
| **Actors and Roles** | **Service Management Orchestrator (SMO)** - The FOCOM in the SMO is the consumer that will request for the O-Cloud Node Cluster to be updated.  **Infrastructure Management Services (IMS)** - The IMS processes the request for an O-Cloud Node Update. |  |

|  |  |  |
| --- | --- | --- |
| **Assumptions** | The following assumptions are relevant to this use case:   1. **O-Cloud Node Cluster exists** - An existing O-Cloud Node Cluster has been previously created. 2. **Disruption Policy** - There is a known disruption policy. The update operation takes place within the limits of the disruption policy. NOTE 1: The Cluster scheduler takes into account the disruption policy depending on a non-critical update operation (add, remove, upgrade a node). 3. **Forced Update** - The management system could initiate a forced O-Cloud Node update in critical situations irrespective of a disruption policy. NOTE 2: A forced update could impact the underlying NF SLA objectives within the cluster. 4. **Migration** - In case of removal of O-Cloud Nodes as part of the update, it is assumed that NFO has migrated relevant workloads (NF deployment units) away from the node that is to be removed so that the procedure could be performed within a disruption policy. 5. **Hardware Infrastructure Scaling of an O-Cloud -** It is assumed that at some point the Hardware Infrastructure has been installed, thus invoking the Hardware Infrastructure Scaling of an O-Cloud Use case. The Hardware is known for the O-Cloud. NOTE 3: The use case does not preclude that when adding new H/W, at the same time this same new H/W is also added to a cluster. 6. **O-Cloud Node Role** - When the Update request is received, it is assumed that the Role of the O-Cloud Node to be incorporated is known. | 3.1.5  Hardware Infrastructur e Scaling of O-Cloud Post Deployment |
| **Preconditions** | The following preconditions are used by this use Case:   1. **IMS operational** - The IMS in the O-Cloud is active and operational. 2. **Connectivity & Authorized** - The O-Cloud has connectivity and authorization allowing communication with the SMO. |  |
| **Begins when** | This use case begins when there is a request to Update an O-Cloud Node Cluster. |  |
| **Step 1 (M)** | **REQUEST TO UPDATE O-CLOUD NODE CLUSTER** -  A request to update an existing O-Cloud Node Cluster is sent from FOCOM to IMS with the Cluster ID over the O2ims interface. The Request includes the Nodes to remove or the number and types of Nodes to add as well as their other cluster capabilities, for instance, network connectivity modes. The request can contain or reference a Cluster Template, which describes the declarative target for the O- Cloud Node Cluster to be realized with the update. |  |
| **Step 2 (M)** | **O-CLOUD PROCESSES THE UPDATE O-CLOUD NODE CLUSTER** -  The following steps are done by the IMS in the O-Cloud to process the Update O- Cloud Node Cluster request:   * **Pod/Disruption Check** -The IMS checks if the request can be honored with the appropriate disruption level including all relevant resources, for instance network requirements. * **Network Feasibility Check** - In the case that the update O-Cloud Node Cluster operation adds a node, the IMS performs feasibility checks for network related aspects. * **Resource Check** - IMS checks the resources associated and the IMS processes the request which is asking for O-Cloud resource additions or reductions. * **Mark Roles for Nodes** - If Nodes are added through the update operation, they are marked with their roles. NOTE 4: the role marking is FFS. * **O-Cloud Node Addition/Removal** - The IMS allocates or deallocates an O-Cloud Resource with the intention to start (addition) or stop (removal) using it as an O-Cloud Node. * **Inventory Updates -** The IMS updates the inventory for the DMS associated with the modified cluster to consider the changes in capabilities and/or capacity for the O-Cloud Node Cluster. If a subscription for notifications has been established, then a notification is sent to the SMO. | Note: see also 3.1.4 O-Cloud Inventory Update Use Case |

|  |  |  |
| --- | --- | --- |
|  | NOTE 5: Update of the O-Cloud Node Cluster may also impact workloads deployed from the NFO/DMS.  NOTE 6: Additions and removals of O-Cloud Nodes will result in O-Cloud Node Clusters that have increased or decreased capacities and/or capabilities for workload deployments. |  |
| **Step 3 (M)** | **CONFIGURATION AND NETWORK RELATED UPDATES PROCESSED**  If the update is deemed feasible within disruption policy and with available resources, the configuration or network related impacts are processed. |  |
| **Step 4 (ALT)** | **RESPONSE TO UPDATE O-CLOUD NODE CLUSTER** -  After the above happens, the IMS then responds to the *Update O-Cloud Node request* with the response over the O2 IMS interface.  NOTE 7: afterward, the SMO can process the inventory changes from O-Cloud Node Update. See to 3.1.4 O-Cloud Inventory Update Use Case. | 3.1.4 O-  Cloud Inventory Update Use Case |
| **Step 5 (ALT)** | **EXCEPTION: O-CLOUD NODE CLUSTER NOT FOUND** - The requested O-Cloud  Node Cluster ID was not found or does not exist in the O-Cloud. The Use Case Ends. |  |
| **Step 6 (ALT)** | **EXCEPTION: O-CLOUD NODE CLUSTER UNAVAILABLE -**  In this case a valid Cluster is found, however the O-Cloud Node cluster is unavailable, busy, or malfunctioning.  The Use Case Ends. |  |
| **Step 7 (ALT)** | **EXCEPTION: INSUFFICIENT RESOURCES TO PERFORM OPERATION**  The O-Cloud does not have enough resources to perform the Update operation. The Use Case Ends. |  |
| **Step 8 (ALT)** | **EXCEPTION: DISRUPTION POLICY VIOLATION**  The O-Cloud cannot honour the disruption policy necessary to perform the update operation. The assumption of performing the operation within the policy was not fulfilled.  The Use Case Ends. |  |
| **Ends when** | This Use Case Ends when a O-Cloud Node Cluster is updated, or the use case has encountered an exception. |  |
| **Exceptions** | **O-CLOUD NODE CLUSTER NOT FOUND** - The requested O-Cloud Node Cluster ID was not found or does not exist in the O-Cloud.  **O-CLOUD NODE CLUSTER UNAVAILABLE -** The O-Cloud Node Cluster is unavailable, busy, or malfunctioning.  **INSUFFICIENT RESOURCES TO PERFORM OPERATION -** There are insufficient resources to perform the Update operation.  **DISRUPTION POLICY VIOLATION -** The Update operation cannot be performed within the disruption policy. |  |

|  |  |  |
| --- | --- | --- |
| **Post-conditions** | **SUCCESS**: The O-Cloud Node Cluster with requested O-Cloud Node Cluster ID has been updated.  **FAILURE**: The state of the O-Cloud and IMS is in the same state as before one of the exception cases were encountered. No O-Cloud Node Cluster is affected or altered. |  |
| **Traceability** | [REQ-ORCH-O2-91], [REQ-ORCH-O2-92], [REQ-ORCH-O2-93] |  |

* + - * 1. UML Sequence Diagram

![](../assets/images/c90ef2af8bc0.jpg)

Figure 3-59: Update O-Cloud Node Cluster

##### Update O-Cloud Node Cluster using O-Cloud Template

* + - * 1. High level description

This use case describes the flow of a request to update a single O-Cloud Node Cluster using O-Cloud Template. For example, O-Cloud Node addition(s) or reduction(s), including adding/removing cluster capabilities. The update request of an O-Cloud Node Cluster originates from FOCOM and is sent towards the IMS within the O-Cloud. The objective of the operation is to update a previously created and configured O-Cloud Node Cluster. This is part of a family of O2 IMS Provisioning operations related to O-Cloud Node Clusters.

An update of an O-Cloud Node Cluster can also include updates of configuration that are cluster-wide, and updating the capabilities of cluster, e.g., adding support for new types of resources comprising the O-Cloud Nodes or modes of network connectivity. See NOTE 1 in clause 3.11.4.3.2.

When the use case is concluded, the specified O-Cloud Node Cluster in the O-Cloud has been updated.

* + - * 1. Sequence Description

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| **Use Case Title** | Update O-Cloud Node Cluster using O-Cloud Template |  |
| **Goal** | The goals of this use case are to:   1. Update a previously created and configured O-Cloud Node Cluster in the O- Cloud using O-Cloud Template by referring to a new O-Cloud Template and/or updated parameters to update the cluster accordingly. The updated cluster may have increased or decreased capabilities and/or capacities for workload deployments. 2. Inform the requestor (normally FOCOM) that the O-Cloud Node Cluster has been updated. |  |
| **Actors and Roles** | **Service Management Orchestrator (SMO)** - The FOCOM in the SMO is the consumer that will request for the O-Cloud Node Cluster to be updated.  **Infrastructure Management Services (IMS)** - The IMS processes the request for an O-Cloud Node Update. |  |
| **Assumptions** | The following assumption is relevant to this use case:   1. **O-Cloud Node Cluster exists** - An existing O-Cloud Node Cluster has been previously created. |  |
| **Preconditions** | The following preconditions are used by this use case:   1. **IMS Operational** - The IMS in the O-Cloud is active and operational. 2. **Connectivity & Authorized** - The O-Cloud has connectivity and authorization allowing communication with the SMO. |  |
| **Begins when** | This use case begins when the FOCOM determines that an update of an O-Cloud Node Cluster is needed. |  |
| **Step 1** | The FOCOM sends to the IMS an update provisioning request. The Update Provisioning Request object contains the reference of the O-Cloud Template along with all relevant parameters |  |
| **Step 2 (ALT)** | **IMS PROCESSES THE UPDATE PROVISIONING REQUEST**  The following steps are done by the IMS in the O-Cloud to process the Update Provisioning Request:   * **Network Feasibility Check** - In the case that the update O-Cloud Node |  |

|  |  |  |
| --- | --- | --- |
|  | Cluster operation adds a node, the IMS performs feasibility checks for network related aspects.   * **Resource Check** - IMS checks the resources associated and the IMS processes the request which is asking for O-Cloud resource additions or reductions.   See NOTE 2. |  |
| **Step 3** | **RESPONSE TO UPDATE PROVISIONING REQUEST**  After the above happens, the IMS then responds to the Update Provisioning request with a response over the O2 IMS interface back to the SMO (FOCOM).  At this point refer to Step 5-6 for monitoring the Update Provisioning request status. |  |
| **Step 4** | IMS performs updates to O-Cloud Node Cluster based on the request.  O-Cloud Node Addition/Removal - The IMS allocates or deallocates an O-Cloud Resource with the intention to start (addition) or stop (removal) using it as an O- Cloud Node.  See NOTE 3. |  |
| **Step 5-6 (PAR)** | SMO (FOCOM) begins monitoring the status of the Provisioning Request object:   * A Provisioning Request object status request is sent from the SMO to the IMS. * A response from IMS to SMO is sent containing the current status of the Update Provisioning Request status.   EXCEPTION: INSUFFICIENT RESOURCES - There were insufficient resources to be able to update the requested O-Cloud Node Cluster. In this case, the IMS updates the Provisioning Request object that there are insufficient suitable resources. IMS cleans up all internal actions for this request.  EXCEPTION: UPDATE FAILED - Update of the O-Cloud Node Cluster could not be completed. The Provisioning Request object is updated with an error status. IMS cleans up all internal action for this request.  See NOTE 4. |  |
| **Ends when** | This use case ends when an O-Cloud Node Cluster is updated using the Updated Provisioning Request, or the use case has encountered an exception. |  |
| **Exceptions** | **O-CLOUD NODE CLUSTER NOT FOUND** - The requested O-Cloud Node Cluster ID was not found or does not exist in the O-Cloud.  **UPDATE FAILED** - Update of O-Cloud Node Cluster could not be completed.  **INSUFFICIENT RESOURCES TO PERFORM OPERATION -** There are insufficient resources to perform the Update operation.  **MALFORMED REQUEST -** The request had an incorrect format and could not be processed by the IMS. The request to update the Provisioning Request Object is rejected.  See NOTE 5. |  |
| **Post-conditions** | **SUCCESS**: The O-Cloud Node Cluster with O-Cloud Node Cluster ID has been updated.  **FAILURE**: The state of the O-Cloud and IMS is in the same state as before one of the exception cases were encountered. No O-Cloud Node Cluster is affected or altered. |  |

|  |  |  |
| --- | --- | --- |
| **Traceability** | [REQ-ORCH-O2-91], [REQ-ORCH-O2-92], [REQ-ORCH-O2-93] |  |
| **Notes** | NOTE 1: The operations that are performed during an update can be part of maintenance or management functions.  NOTE 2: Update of the O-Cloud Node Cluster can also impact workloads deployed from the NFO/DMS.  NOTE 3: Additions and removals of O-Cloud Nodes will result in O-Cloud Node Clusters that have increased or decreased capacities and/or capabilities for workload deployments.  NOTE 4: The IMS "cleans up" meaning that any internal activities and reservations that occurred in processing the failed request are roll-backed.  NOTE 5: The implementation might encounter more exceptions of what is described in this current use case. |  |

* + - * 1. UML Sequence Diagram

![](../assets/images/b3f049067563.jpg)

Figure 3-60: Update O-Cloud Node Cluster using O-Cloud Template

### Resource Optimization Use Cases

#### Introduction

O-Cloud resource optimization is the process of utilizing the O-Cloud resources in an efficient manner and eliminating waste of O-Cloud resources by selecting, provisioning, and rightsizing the resources within the O-Cloud.

The Network Functions (NFs) within O-Cloud are orchestrated as VNFs/CNFs. The SMO (NFO, FOCOM) handle the management and orchestration of VNFs/CNFs and underlying O-Cloud infrastructure. The SMO's management, orchestration, and optimization functionalities can be enhanced by intelligent observability analysis from VNFs/CNFs and O-Cloud.

The Non-RT RIC hosts third-party applications such as rApp in the SMO, which can collect and read various O1 and O2- related observability data and metrics through O1 & O2 related services. These third-party rApps can be leveraged to provide guidance/recommendations to the NFO and FOCOM for management, orchestration, and optimization of VNFs/CNFs and underlying O-Cloud infrastructure.

#### O-Cloud Drain Node Use Case

##### High Level Description

This use case describes the procedure for the SMO and O-Cloud to drain one or more O-Cloud Node(s) based on recommendations from rApp or manually by O-Cloud Maintainer via SMO. The draining of O-Cloud Node(s) will mark the specific O-Cloud Node(s) as cordoned or un-schedulable and can necessitate means to relocate, migrate or terminate Network Functions or its components to another O-Cloud Node.

There are various possible scenarios where there's a need to drain an O-Cloud Node(s). One such example scenario could be where rApp, with the help of AI/ML, can provide insights to FOCOM/NFO for O-Cloud Node failure. rApp predicting the O-Cloud Node failure can recommend FOCOM/NFO to drain that particular O-Cloud Node and proactively migrate the workloads from the O-Cloud Node. Subsequently, this NF migration, as a result of the node draining recommendation, ensures service continuity by minimizing disruption and assuring the quality of service for the network slices and services.

In this use case, the SMO manages NF(s) relocation. The request for draining an O-Cloud Node(s) can be manual, or rApps can send a recommendation to FOCOM/NFO. This use-case (along with other Resource Optimization use-cases) envisions a data-driven approach for optimizing O-Cloud resources. The rApps in non-RT RIC utilizing AI/ML framework can provide guidance to FOCOM/NFO complementing FOCOM/NFO scheduling capabilities and empowering the system to make more data driven placement decisions.

NOTE 1 : The current version of the specification does not specify whether it's the IMS or DMS that receives the request to drain the O-Cloud node(s).

NOTE 2 : The O-Cloud Node(s) is set to maintenance mode (see clause 3.10.2 in O2 GA&P [9]) by default, when this use case is called.

##### Sequence Description

|  |  |
| --- | --- |
| **Use Case Stage** | **Evolution / Specification** |
| Goal | To drain O-Cloud Node(s) by labelling the node(s) as cordoned or un-schedulable, and it may  safely evict/migrate all the Network Function(s) and/ or its components from the O-Cloud Node(s). |
| Actors and Roles | O-Cloud Maintainer SMO: FOCOM /NFO  IMS: Infrastructure Management Services DMS - Deployment Management Services rApp (via Non-RT RIC)  NF - Network Function (Application) |
| Assumptions | 1. The "Service Request" to the SMO includes the identifiers of the O-Cloud Node(s) to be drained. 2. A trigger for draining a O-Cloud Node is received from FOCOM/NFO based on a request from O-Cloud Maintainer, or recommendation from rApp. 3. Data traffic from the node(s) that needs to be drained has been moved before triggering the O-Cloud Node(s) draining procedure. |
| Pre- conditions | 1. SMO is available 2. O-Cloud is available 3. O1 & O2 events have been subscribed by the monitoring system supervised by the O- Cloud Maintainer and /or rApp. |
| Begins when | Existing O-Cloud Node(s) is/are determined to be drained based on a request from O-Cloud Maintainer or recommendation from rApp. |
| Step 1 (M) | O-Cloud Maintainer provides a request or rApp provides recommendation to FOCOM/NFO to drain the specific set of O-Cloud Node(s). |
| Step 2 (M) | Once the recommendation from rApp or the request from the O-Cloud Maintainer to FOCOM/NFO gets accepted, FOCOM/NFO requests the IMS/DMS over the O2 interface to drain  one or more O-Cloud Node(s). |
| Step 3 (M) | IMS/DMS will mark the O-Cloud Node(s) as cordoned or un-schedulable. |
| Step 4 (M) | IMS/DMS will drain the O-Cloud Node(s), which can trigger migrating NF Deployment(s) from each individual O-Cloud Node.  NOTE 1: Steps 2-4 can be looped for each O-Cloud Node.  NOTE 2: Once the O-Cloud Node(s) is drained, all the NF Deployments(s) are either migrated or terminated from the O-Cloud Node(s).. |
| Step 5 (ALT) | SUCCESS:   * 1. IMS/DMS notifies FOCOM/NFO that the O-Cloud Node(s) drain action is completed.   2. FOCOM/NFO notifies the rApp or O-Cloud Maintainer that the O-Cloud Node(s) drain is completed. |
| Step 6 (ALT) | EXCEPTION:  The O-Cloud Node draining procedure encountered an exception. There can be various reasons for the exception, like the Node Cluster not found, the Node Cluster not responding or unavailable, or the Node Cluster having insufficient resources to migrate NF Deployment(s).   * 1. IMS/DMS notifies FOCOM/NFO that the O-Cloud Node(s) drain action was unsuccessful.   2. FOCOM/NFO notifies the rApp or O-Cloud Maintainer that the O-Cloud Node(s) drain action was unsuccessful. |
| Ends when | This use case ends when the O-Cloud Node(s) have been drained, i.e., when the O-Cloud Node(s) have been marked as cordoned or un-schedulable, and the NF deployment(s) have  been moved to other O-Cloud Node instances, or the use case has encountered an exception. |
| Exceptions | The Node Cluster Not Found - The requested Node Cluster was not found or does not exist in the O-Cloud.  The Node Cluster is unavailable - The requested Node Cluster is unavailable, busy, not responding, or malfunctioning.  Insufficient Resources - There are insufficient resources to migrate the NFs Deployment(s) within the O-Cloud Node Cluster. |
| Post-conditions | SUCCESS: The requested O-Cloud Node(s) in the Node Cluster has been marked cordoned or un-schedulable, and all the NF Deployment(s) are migrated to other O-Cloud Node(s) within the Node Cluster.  FAILURE: The O-Cloud and IMS/DMS state is in the same state as before the request arrived: no resources are amended, and no NF Deployment(s) are migrated or terminated. |

|  |  |
| --- | --- |
| Traceability | [REQ-ORC-GEN29], [REQ-ORC-O2-94], [REQ-ORC-O2-95] |

##### UML Sequence Diagram

![](../assets/images/10dd3a0de940.png)

Figure 3-61: O-Cloud Node Draining

#### O-Cloud Cordon and Uncordon Use Case

##### High Level Description

This use case describes how to Cordon and then Uncordon an O-Cloud Node(s) (after the successful cordoning of the node) in a O-Cloud Node Cluster.

Cordoning(s) a node is performed in order to mark the O-Cloud Node(s) un-schedulable. Marking the O-Cloud Node(s) as un-schedulable prevents the scheduler from placing new NF deployments on the specified O-Cloud Node(s) but does not affect existing NF deployments on the O-Cloud Node(s). This is useful as a preparatory step before draining an O-Cloud Node(s).

The action to Cordon or Uncordon an O-Cloud Node(s) can be a recommendation by an rApp or a manual request submitted by Cloud Maintainer via SMO

In the context of O-Cloud Resource Optimisation, rApps utilizing O2 telemetry data can recommend the cordoning and uncordoning of O-Cloud Nodes, to achieve optimized resource allocation, as explained below. To enable this functionality, O-Cloud exposes the following telemetry data to FOCOM and rApp, including but not limited to:

1. O-Cloud Node(s) CPU utilisation
2. O-Cloud Node(s) Memory utilisation
3. O-Cloud Node(s) Disk utilisation

rApps can correlate the above information with other data e.g., O1 telemetry data related to Network Traffic.

rApps can predict periods of high resource utilization (e.g., within the next 4 hours) and recommend Cordoning of O- Cloud Node(s) to FOCOM. This ensures that critical performance-sensitive workloads are not placed on specific O- Cloud Nodes during peak times.

rApps continuously evaluate the conditions (based on O2 and/or O1 telemetry data and their correlation) Once the predicted high traffic period has passed and the resource utilization on the O-Cloud Node has returned to normal levels, the rApp can recommend Uncordoning the O-Cloud Node to allow new NF deployments to be scheduled on the node again.

Alternatively, if periods of high resource utilization are predicted, then one possible action could be to recommend to uncordon some previously cordoned nodes (i.e., those that are done with the maintenance activities) so that they are available for this period. And when decreased resource utilization is predicted, the recommendation could be to cordon specific O-Cloud nodes that are not required for handling the NF Deployment.

NOTE 1: rApps take into consideration the potential impact of Cordoning & Uncordoning of the O-Cloud Node(s) on future system performance. Therefore, the rApps will only recommend Cordoning of the O-Cloud Node(s) if it predicts a prolonged period of high or low O-Cloud resource usage, and Uncordoning if the resource utilization returns to normal levels, to avoid unnecessary and frequent Cordoning and Uncordoning of the O-Cloud Node(s).

NOTE 2: This version of the use case does not describe the role and involvement of FOCOM vs. NFO and how IMS interacts with the DMS.

Editor's Note: Architecture issues associated with the use case such as the involvement of FOCOM vs. NFO and on how IMS interacts with the DMS are still under discussion and should be reviewed for any impact on the sequence description and UML flow diagrams.

##### Sequence Description

|  |  |
| --- | --- |
| **Use Case Stage** | **Evolution / Specification** |
| Goal | Cordon the O-Cloud Node to mark it as un-schedulable and subsequently Uncordon the O- Cloud Node to make it available for NF deployments |
| Actors and Roles | Cloud Maintainer SMO: FOCOM  IMS: Infrastructure Management Services rApp (via Non-RT RIC)  NF: Network Function (Application) |
| Assumptions | 1. The Service Request to the SMO includes the identifiers of the O-Cloud Node(s) to be Cordon and Uncordon. 2. A trigger to Cordon and/or Uncordon O-Cloud Node(s) is received from FOCOM based on a request from Cloud Maintainer, or recommendation from rApp. |
| Pre-conditions | 1. SMO is available. 2. O-Cloud is available. 3. Network connectivity exists between the O-Cloud and SMO 4. O1 & O2 events have been subscribed by the monitoring system supervised by O- Cloud Maintainer and/or rApp. |
| Begins when | Existing O-Cloud Node(s) is/are determined to be Cordon based on a request from O-Cloud Maintainer or recommendation from rApp. |
| Step 1 (M) | Cloud Maintainer provides a request or rApps provides recommendation to FOCOM to Cordon the specific set of O-Cloud Node(s). |
| Step 2 (M) | Once the recommendation from rApp or the request from the O-Cloud Maintainer to FOCOM gets accepted, FOCOM requests the IMS over the O2 interface to Cordon one or more O- Cloud Node(s).  NOTE 1: FOCOM verifies that the request or recommendation is valid before sending it to IMS  NOTE 2: FOCOM may reject the Cloud Maintainer's request or rApp's recommendation of cordon/uncordon for some reasons such as too-frequent requests. (e.g. 429 too many request) |
| Step 3 (M) | IMS will mark the O-Cloud Node(s), as cordoned or un-schedulable for new NF Deployments.  NOTE 3: Steps 2-3 can be looped for each O-Cloud Node. |
| Step 4 (ALT) | SUCCESS:  4.1 IMS notifies FOCOM that the O-Cloud Node(s) Cordon operation is complete.  4.2, 4.3 FOCOM notifies the rApp or Cloud Maintainer that the O-Cloud Node(s) Cordon is completed. |
| Step 5 (ALT) | EXCEPTION:  The O-Cloud Node Cordon procedure encountered an exception. There can be various reasons for the exception, like Node is already cordoned, there is a network or communication issue.  5.1 IMS notifies FOCOM that the O-Cloud Node(s) Cordon action was unsuccessful (e.g., "Node is already cordoned" or "communication timeout")  5.2, 5.3 FOCOM notifies the rApp or Cloud Maintainer that the O-Cloud Node(s) Cordon action was unsuccessful. |
| Step 6 (O) | Cloud Maintainer provides a request or rApps provides recommendation to FOCOM to Uncordon the specific set of O-Cloud Node(s). |
| Step 7 (O) | Once the recommendation from rApp or the request from the O-Cloud Maintainer to FOCOM gets accepted, FOCOM requests the IMS over O2 interface to Uncordon one or more O-Cloud Node(s). |
| Step 8 (O) | IMS will mark the O-Cloud Node(s), as uncordoned or schedulable for new NF Deployments.  NOTE 4: Steps 7-8 can be looped for each O-Cloud Node. |
| Step 9 (O) | SUCCESS:  9.1 IMS notifies FOCOM that the O-Cloud Node(s) Uncordon operation is complete.  9.2, 9.3 FOCOM notifies the rApp or Cloud Maintainer that the O-Cloud Node(s) Uncordon is completed. |
| Step 10 (ALT) | EXCEPTION:  The O-Cloud Node Uncordon procedure encountered an exception. There can be various reasons for the exception, like Node is already uncordoned, there is a network or communication issue. |

|  |  |
| --- | --- |
|  | * 1. IMS notifies FOCOM that the O-Cloud Node(s) Uncordon action was unsuccessful. (e.g., "Node is already uncordoned" or "communication timeout").   2. , 10.3 FOCOM notifies the rApp or Cloud Maintainer that the O-Cloud Node(s) Uncordon action was unsuccessful. |
| Ends when | O-Cloud Node(s) have been Cordon and IMS marks the Node(s) in the existing Node pool as un-schedulable or the use case has encountered an exception  OR  O-Cloud node(s) have been Uncordon and IMS marks the Node(s) in the existing Node pool as schedulable or the use case has encountered an exception |
| Exceptions | 1. Cordon operation is not successful on the O-Cloud Node(s). 2. Uncordon operation is not successful on the O-Cloud Node(s). |
| Post-conditions | SUCCESS: The requested O-Cloud Node(s) in the Node Cluster has been marked cordoned or un-schedulable. If required, O-Cloud Node(s) draining operation can be initiated on the O- Cloud Node(s)  OR  Subsequently, the requested O-Cloud Node(s) in the Node Cluster has been Uncordoned or schedulable.  FAILURE: The O-Cloud and IMS stay is in the same state as before the request arrived |
| Traceability | [REQ-ORC-GEN31]. [REQ-ORC-GEN32] [REQ-ORC-O2-101], [REQ-ORC-O2-102], [REQ- ORC-O2-103], [REQ-ORC-O2-104] |

##### UML Sequence Diagram

![](../assets/images/d5b6f69bcaee.png)

Figure 3-62: Node Cordon and Uncordon

### Heartbeat Monitoring Use Cases

#### Heartbeat Subscription Use Case

##### High Level Description

This Use Case supports subscription to an IMS heartbeat. SMO or other entities will be able to subscribe to receiving heartbeat messages from the IMS to detect reachability failures to the IMS. The subscription will include, the subscriber callback endpoint, heartbeat messages period and missed heartbeat message threshold(s) to trigger failure.

NOTE: Heartbeat messages will be defined in the Heartbeat UC.

##### Sequence Description

|  |  |  |
| --- | --- | --- |
| **USE CASE STAGE** | **EVOLUTION / SPECIFICATION** | **<<Uses>**  **>**  **Related Use** |
| **Use Case Title** | Heartbeat Subscription (IMS) |  |
| **Goal** | This use case describes a flow where one or more consumers subscribe to receiving heartbeat messages from the IMS in order to detect communication failures.  Each SUBSCRIBER has a *consumer subscription identifier*. There is one consumer subscription identifier per subscription. It doesn't have to be unique for that subscription. The consumer subscription identifier is a character string that can be associated with meta-data within the SMO. |  |
| **Actors and Roles** | **SMO (FOCOM)** - The FOCOM within the SMO or other entities.  **IMS** - The IMS within the O-Cloud. |  |
| **Assumptions** | There can be multiple subscribers to exchange heartbeat messages with the IMS.  Each subscription is associated with one subscriber. Thus, each subscription will only go to one endpoint. Thus, there cannot be multiple endpoints for single subscription.  The subscriber may not be the ultimate consumer of the HB. The subscriber is not necessarily the same entity as the endpoint for notifications. |  |
| **Preconditions** | **CONNECTIVITY** - The Subscriber has connectivity to the IMS by some mechanism.  **O-Cloud OPERATIONAL** - O-Cloud is installed, operating, and the IMS in the O- Cloud has registered with SMO. |  |
| **Begins when** | The use case is triggered when a subscriber wishes to:   1. **NOTIFICATION** - A subscriber wishes to subscribe to receiving heartbeat messages from the IMS. 2. **HEARTBEAT SUBSCRIPTION CHANGE** - To change the   characteristics of a heartbeat subscription a user would need to create a new heartbeat subscription followed by a deleting the previous heartbeat subscription. This is done because there is no heartbeat subscription update procedure. |  |

|  |  |  |
| --- | --- | --- |
|  | (3) **OPERATOR INITIATED** - An O-Cloud operator may also initiate a subscription. |  |
| **Step 1 (M)** | **NOTIFICATION CRITERIA** - This gives a notification criterion which initiates the subscription.  The subscription criteria will indicate the endpoint for the IMS to send heartbeat, period and missed heartbeat pulse threshold(s) to trigger failure. |  |
| **Step 2 (M)** | **SUBSCRIPTION** - The subscriber sends a heartbeat subscription to the IMS. The subscription includes the *Consumer Subscription Identifier.* |  |
| **Step 3 (M)** | **CALLBACK REACHABILITY CHECK** - A Reachability Check is performed between the subscriber and IMS. This is a connectivity and authorization check. |  |
| **Step 4 (ALT)** | **REACHABILITY SUCCESS** - This step indicates that the reachability check has passed successfully. |  |
| **Step 5 (ALT)** | **REACHABILITY FAILURE** - This step indicates that the reachability check has failed. |  |
| **Step 6 (ALT)** | **SUBSCRIPTION DENIED (FAILURE) -** The IMS has failed the reachability check. IMS will proceed to deny the heartbeat subscription. |  |
| **Step 7 (ALT)** | **SUBSCRIPTION STATUS (FAILURE)** - If the reachability check has failed, the subscription status will indicate a failure. The use case will end at this point. This is a return to Step 2. |  |
| **Step 8 (M)** | **SUBSCRIPTION ACKNOWLEDGE** - The IMS indicates a subscription acknowledge. This essentially indicates a success for the heartbeat subscription. (Optional) The *consumer subscription identifier may* be passed back in the subscription acknowledge. |  |
| **Step 9 (M)** | **SUBSCRIPTION STATUS (SUCCESS)** - A subscription status will indicate a success back to O-Cloud Operator. This is a return to Step 1. |  |
| **Ends when** | This use case ends when a heartbeat subscription status has been sent successfully or on one of the failure cases, when there was a subscription failure. |  |
| **Exceptions** | **FAILURE CASE 1**: **FAILURE INDICATION** - The Subscription acknowledge indicates a failure.  **FAILURE CASE 2**: **CONNECTIVITY ISSUE** - Can't reach the publisher, the reachability check has failed.  **ALTERNATE CASE 1**: **VALIDITY CHECK** - A validity check confirms the reachability of the callback endpoint, checking that the IMS has permission to reach the consumer through a TLS connection. If a validity check is performed AND it fails, this would lead to Fail Case 2 (Connectivity Issue). |  |
| **Post-conditions** | **SUCCESS:** The IMS has the subscriber call-back (a fully qualified URL), and it is persisted. The IMS has created its own internal association for heartbeat subscription which includes the consumer subscription identifier, the call-back URL and along with heartbeat message period and thresholds.  **FAILURE:** The heartbeat subscription operation has failed. See the exception cases. |  |

|  |  |  |
| --- | --- | --- |
| **Traceability** | [REQ-ORC-O2-15], [REQ-ORC-O2-105], [REQ-ORC-O2-106] |  |

##### UML Sequence Diagram

![](../assets/images/2b4572ec499f.jpg)

Figure 3-63: Heartbeat Subscription

## Orchestration Requirements

The following section contains requirements on the O-Cloud, SMO, O1 and O2 based on the Orchestration Use Cases above.

### General Requirements

|  |  |  |
| --- | --- | --- |
| [REQ-ORC-GEN1] | The O-RAN SMO shall support the creation of a globally unique identifier (Global O-Cloud ID) which can uniquely identify an O-Cloud instance in a provider's network. | Use Case 3.1.1 |
| [REQ-ORC-GEN2] | The O-RAN SMO shall be able to create an inventory placeholder based on a Global O-Cloud ID for an O-Cloud expected to be managed by the SMO. | Use Case 3.1.1 |
| [REQ-ORC-GEN3] | The O-RAN SMO shall be able to initiate an O-Cloud build out by loading the first O-Cloud server and providing a "blueprint" of the functionality and resources needed. | Use Case 3.1.2 |
| [REQ-ORC-GEN4] | The O-RAN O-Cloud Infrastructure Management Services shall be able to orchestrate the control plane and resource nodes from O-Cloud Nodes as they are detected. | Use Case 3.1.2 |
| [REQ-ORC-GEN5] | The O-RAN O-Cloud Infrastructure Management Services shall be able to notify the SMO when it has completed the O-Cloud build and is ready to be integrated to the SMO. | Use Case 3.1.2 |
| [REQ-ORC-GEN6] | The O-RAN O-Cloud Infrastructure Management Services shall be able to provide SMO with information about its current SW inventory and platform software | Use Case 3.1.3 |
| [REQ-ORC-GEN7] | The O-RAN SMO shall be able to verify an O-Cloud instance is at the SW inventory or build expected for platform software for given deployment | Use Case 3.1.3 |
| [REQ-ORC-GEN8] | The SMO shall be able to configure an O-Cloud to notify the SMO of O- Cloud Configuration Changes, Faults detected within, and performance of O-Cloud Nodes. | Use Case 3.1.3 |
| [REQ-ORC-GEN9] | The O-RAN O-Cloud Infrastructure Management Services shall be able to provide on demand a list of its DMS with the resource locations that each can support and information linking the DMS with the deployment descriptor model types that each support. | Use Case 3.1.3 |
| [REQ-ORC-GEN10] | The O-RAN O-Cloud Infrastructure Management Services shall be able to provide on demand a list of resource build configurations (aka "flavors") that it can currently support. | Use Case 3.1.4 |
| [REQ-ORC-GEN11] | The O-RAN O-Cloud Infrastructure Management Services shall be able to provide on demand a report of capacity that it could support based on the "flavors" it has defined. | Use Case 3.1.4 |
| [REQ-ORC-GEN12] | The O-RAN O-Cloud Infrastructure Management Services shall be able to provide on demand a report of availability that it can still support and utilization, based on the "flavors" it has defined. | Use Case 3.1.4 |
| [REQ-ORC-GEN13] | The O-RAN O-Cloud Infrastructure Management Services shall be able to notify the SMO when there is a change in Inventory status. | Use Case 3.1.4 |
| [REQ-ORC-GEN14] | The O-RAN O-Cloud Infrastructure Management Services shall be able to detect, configure and incorporate new O-Cloud Nodes into the O-Cloud instance according to the rules identified in the O-Cloud blueprint. | Use Case 3.1.5 |

|  |  |  |
| --- | --- | --- |
| [REQ-ORC-GEN15] | The O-RAN O-Cloud Infrastructure Management Services shall be able to notify the SMO when resources which can affect the total capacity of the O-Cloud are changed. | Use Case 3.1.5 |
| [REQ-ORC-GEN16] | The O-RAN O-Cloud Infrastructure Management Services shall be able to support secure get of software packages of specific version from a server within the SMO for the purpose of upgrading and downgrading the O-Cloud software build. | Use Case 3.1.6 |
| [REQ-ORC-GEN17] | The O-RAN O-Cloud Infrastructure Management Services shall be able to evaluate a downloaded software package and verify that it can be activated without impacting applications or networks executing on the affected O- Cloud resources. | Use Case 3.1.6 |
| [REQ-ORC-GEN18] | The O-RAN SMO shall be able to separate requests for managing an O- Cloud and managing O-RAN Network Functions on the O-Cloud. | Use Case 3.2.1 |
| [REQ-ORC-GEN19] | The O-RAN SMO shall determine which locations within the O-Cloud that should be used for implementing an end-to-end service or an xAPP if these are not specified in the service request | Use Case 3.2.1, 3.3.2 |
| [REQ-ORC-GEN20] | The O-Cloud Deployment Management Services shall be able to use a descriptor to orchestrate the creation and management of NF deployments. | Use Case 3.2.1 |
| [REQ-ORC-GEN21] | The O-RAN SMO shall be able to restore a NF to a previous configuration as needed for network recovery. | Use Case 3.4, see also  [8] |
| [REQ-ORC-GEN22] | The O-Cloud Deployment Management Service shall be able to allocate new resources to an NF Deployment on request from the SMO in order to support scale out or software upgrade of an NF Deployment. | Use Case 3.2.2, 3.2.4 |
| [REQ-ORC-GEN23] | The O-Cloud Deployment Management Service shall be able to deallocate resources from an NF Deployment on request from the SMO in order to support scale in or software upgrade of an NF Deployment. | Use Case 3.2.3, 3.2.4 |
| [REQ-ORC-GEN24] | The O-Cloud shall be able to allocate and deallocate VLAN IDs upon request from SMO (FOCOM). | Use Case 3.9.1, 3.9.2 |
| [REQ-ORC-GEN25] | The O-Cloud shall support network connectivity to attach NFs to the required endpoints within one location/site. | Use Case 3.10.1,  3.10.2 |
| [REQ-ORC-GEN26] | The O-Cloud shall be able to connect the NF's endpoint to the endpoint at O-Cloud Gateway so that it can be connected to the external entity. | Use Case 3.10.1,  3.10.2 |
| [REQ-ORC-GEN27] | The O-Cloud shall support a reservation mechanism for Network Segment(s) (e.g., VLAN ID) based upon the request triggered via FOCOM over the O2ims interface.  NOTE: The reservation process includes that the reserved ID(s) is returned to the FOCOM | Use Case 3.10.1,  3.10.2 |
| [REQ-ORC-GEN28] | The O-Cloud shall support mapping the ports connecting the O-Cloud Site Network Fabric and ports connecting to the transport (e.g., Transport Network Element) on the O-Cloud Gateway (e.g., VRF) when deployed. | Use Case 3.10.1,  3.10.2 |
| [REQ-ORC-GEN29] | The SMO (FOCOM/NFO) shall support the capability to receive recommendations to drain O-Cloud node(s). | Use Case 3.12.1 |

|  |  |  |
| --- | --- | --- |
| [REQ-ORC-GEN30] | All detected faults shall be logged in a Fault Log(s) by the O-Cloud Resource detecting the fault.  NOTE: Fault logs can be kept remotely or locally by the O-Cloud Resource. | Use Case 3.7.8,  3.7.10  (Log Query, Logging Configuration Use Case) |
| [REQ-ORC-GEN31] | The SMO (FOCOM) shall support the capability to receive recommendations to Cordon O-Cloud Node(s). | Use Case  3.12.3 (O-  Cloud Cordon and Uncordon) |
| [REQ-ORC-GEN32] | The SMO (FOCOM) shall support the capability to receive recommendations to Uncordon O-Cloud Node(s). | Use Case  3.12.3 (O-  Cloud Cordon and Uncordon) |

### Orchestration Requirements Relating to O1

Defines requirements for O-RAN managed function IM elements and FM/PM elements needed for orchestration using the O1 interface.

|  |  |  |
| --- | --- | --- |
| [REQ-ORC-O1-1] | The O-RAN SMO shall be able to subscribe to notification of configuration events, fault events and performance measurements from an O-RAN NF instantiated on an O-Cloud, using the O1 interface. | Use Case 3.2.1 |
| [REQ-ORC-O1-2] | An O-RAN NF instantiated on an O-Cloud shall be able to send notification of configuration changes to the O-RAN SMO using the O1 interface. | Use Case 3.3.2, 3.4 |

NOTE: These requirements may overlap with those in [5] and may be moved to [5] in future.

### Orchestration Requirements Relating to O2

|  |  |  |
| --- | --- | --- |
| [REQ- ORC- O2-1] | The O-RAN SMO shall be able to provide a boot image for a remote node using the O2 interface. | Use Case 3.1.2 |
| [REQ- ORC- O2-2] | The O-RAN SMO shall be able to send a cloud descriptor, (i.e., cloud deployment and configuration files) for initial cloud startup using the O2 interface. | Use Case 3.1.2 |
| [REQ- ORC- O2-3] | The O-RAN SMO shall be able to send a Query Information request to query the O-Cloud for objects and attributes such as SW inventory using the O2 interface. | Use Case 3.1.3, 3.1.11 |
| [REQ- ORC- O2-4] | The O-Cloud shall be able to receive a request to download software sent to it from the SMO using the O2 interface, such as request for download of an xAPP deployment. | Use Case 3.1.3, 3.3.2 |
| [REQ- ORC- O2-5] | The O-RAN SMO shall be able to subscribe to notification of configuration events, fault events and performance measurements from the O-Cloud using the O2 interface. | Use Case 3.1.3 |
| [REQ- ORC- O2-6] | The O-RAN SMO shall be able to query the O-Cloud for the DMS end points it supports using the O2 interface. | Use Case 3.1.3 |
| [REQ- ORC- O2-7] | The O-RAN SMO shall be able to query the O-Cloud for attributes such as capabilities and capacities using the O2 interface. | Use Case 3.1.4 |
| [REQ- ORC- O2-8] | The O-Cloud shall be able to send asynchronous events to the SMO when available capabilities or capacities are changed, including when new hardware is added, using the O2 interface. | Use Case 3.1.4, 3.1.5 |

|  |  |  |
| --- | --- | --- |
| [REQ- ORC- O2-9] | The O-Cloud shall be able to asynchronously notify the SMO when a software update (upgrade or downgrade) completes, using the O2 interface. | Use Case 3.1.6 |
| [REQ- ORC- O2-10] | The O-RAN SMO shall be able to request the O-Cloud to instantiate a NF Deployment using cloud resources through the O2 interface. | Use Case 3.2.1 |
| [REQ- ORC- O2-11] | The O-RAN SMO shall be able to request the O-Cloud to terminate NF Deployment using O2 interface. | Use Case 3.2.5 |
| [REQ- ORC- O2-12] | The O-RAN SMO shall be able to request the O-Cloud to heal NF Deployment(s) through the O2 interface.  NOTE: The NF Deployment could be restarted (stop and start) or its associated resources be reallocated/replaced on the same or different O-Cloud Nodes. Alternatively, to perform service recovery, new NF Deployment instances can be created on O-Cloud Nodes with resources of equivalent characteristics and profile as defined in that NF deployment descriptors and cloud native descriptors. | Use Case 3.6.2 |
| [REQ- ORC- O2-13] | The O-RAN SMO shall be able to request the O-Cloud to heal O-Cloud Node(s) through the O2 interface.  NOTE: The O-Cloud Node could be restarted (stop and start), or be reallocated/replaced by other O-Cloud infrastructure resources. NF deployment requirements from the NF deployment descriptor and cloud native descriptors, that are available to O-Cloud DMS, shall be taken into consideration as part of the O-Cloud Node healing. | Use Case 3.6.3 |
| [REQ- ORC- O2-14] | The O-RAN SMO shall be able to issue a subscription to the O-Cloud to receive alarm event notifications using the O2 interface. | Use Case 3.7.1  (IMS O2 Alarm Subscription) |
| [REQ- ORC- O2-15] | Each subscriber should have a *consumer subscription identifier*.  NOTE: The *consumer subscription identifier* is an identifier provided by the consumer that is reflected in the alarm and performance notifications. | Use Case 3.7.1, 3.7.4, 3.7.5,  3.8.2, 3.13.1  (IMS O2 Alarm Subscription, Alarm Subscription Query, Alarm Subscription Delete, Performance Subscription, Heartbeat Subscription) |
| [REQ- ORC- O2-16] | The IMS in the O-Cloud (alarm producer) shall be able to asynchronously notify the endpoint specified by the SMO (alarm consumer) of alarm notifications related to O-Cloud resources using the O2 interface. | Use Case 3.7.2  (IMS O2 Alarm Notification) |
| [REQ- ORC- O2-17] | The SMO shall be able to query the O-Cloud for alarms on O-Cloud resources with query criteria which define the alarm characteristics that the SMO is interested in using the O2 interface. | Use Case 3.7.3  (IMS O2 Alarm Query) |
| [REQ- ORC-02- 18] | The IMS O-Cloud shall return alarms in response to the SMO alarm query that match the alarm query criteria using the O2 interface. | Use Case 3.7.3  (IMS O2 Alarm Query) |
| [REQ- ORC- O2-19] | The SMO shall be able to query the O-Cloud for state and status information using the O2 Interface. This is called a functional status query. Furthermore, the SMO uses query criteria in the query to indicate specific kinds of state and status information it is interested in. | Use Case 3.1.7 (Functional Status Query) |
| [REQ- ORC- O2-20] | The IMS shall respond to a functional status query using the O2 Interface. The IMS does so by returning state and status information for the O-Cloud based on the query criteria. | Use Case 3.1.7 (Functional Status Query) |
| [REQ- ORC- O2-21] | The SMO shall be able to perform an Alarm Subscription query towards the IMS using the O2 Interface. | Use Case 3.7.4  (Alarm Subscription Query) |

|  |  |  |
| --- | --- | --- |
| [REQ- ORC- O2-22] | The IMS shall be able to process and respond to an Alarm Subscription query from the SMO using the O2 Interface. | Use Case 3.7.4  (Alarm Subscription Query) |
| [REQ- ORC- O2-23] | The SMO shall be able to request for an Alarm Subscription delete towards the IMS using the O2 Interface. | Use Case 3.7.5  (Alarm Subscription Delete) |
| [REQ- ORC- O2-24] | The IMS shall be able to process and respond to an Alarm Subscription delete requests from the SMO using the O2 Interface. | Use Case 3.7.5  (Alarm Subscription Delete) |
| [REQ- ORC- O2-25] | The O-Cloud operator, SMO, or IMS shall be able to initiate an alarm synchronization operation using the O2 Interface. | Use Case 3.7.6  (Alarm Synchronization) |
| [REQ- ORC- O2-26] | The SMO shall correlate and resolve discrepancies by all alarms of interest from O-Cloud during alarm synchronization operation using the O2 Interface. | Use Case 3.7.6  (Alarm Synchronization) |
| [REQ- ORC- O2-27] | The O-Cloud operator or SMO shall be able to initiate an alarm acknowledge operation using the O2 Interface. | Use Case 3.7.7  (Alarm Acknowledge/ Clear) |
| [REQ- ORC- O2-28] | The O-Cloud operator or SMO shall be able to initiate an alarm clear operation using the O2 Interface. | Use Case 3.7.7  (Alarm Acknowledge/ Clear) |
| [REQ- ORC- O2-29] | The IMS shall be able to process and respond to an alarm acknowledge request from the SMO using the O2 Interface. | Use Case 3.7.7  (Alarm Acknowledge/ Clear) |
| [REQ- ORC- O2-30] | The IMS shall be able to process and respond to an alarm clear request from the SMO using the O2 Interface. | Use Case 3.7.7  (Alarm Acknowledge/ Clear) |
| [REQ- ORC- O2-31] | The SMO shall be able to request to the IMS for PM Job(s) to be created using the O2 interface. | Use Case 3.8.1  (IMS PM Job Creation) |
| [REQ- ORC- O2-32] | The IMS shall be able to create PM Job(s) requested by the SMO. | Use Case 3.8.1  (IMS PM Job Creation) |
| [REQ- ORC- O2-33] | The consumer (SMO) shall be able to query the O-Cloud for any Log using the O2 Interface.  NOTE: The typical logs can be Alarm, Debug and Fault Logs.  The SMO shall be able to specify a Log Query filter in the Log Query request to provide details of what it is interested in. | Use Case 3.7.8  (Log Query Use Case) |
| [REQ- ORC- O2-34] | The consumer (SMO) shall be able to receive and process Log Files if the IMS returns files. | Use Case 3.7.8  (Log Query Use Case) |
| [REQ- ORC- O2-35] | The consumer (SMO) shall be able to accept an endpoint from the producer (IMS). The SMO shall be able to try to access the endpoint to retrieve those files. | Use Case 3.7.8  (Log Query Use Case) |
| [REQ- ORC- O2-36] | The producer (IMS) shall respond to a Log Query using the O2 Interface.  The IMS shall return either Log File(s) matching the Log Query request or an endpoint that a consumer can retrieve the Log File(s) at. | Use Case 3.7.8  (Log Query Use Case) |
| [REQ- ORC- O2-37] | The O-RAN SMO shall be able to request for a Performance Management Subscription towards the IMS (in the O-Cloud) using the O2 Interface to receive performance reporting data (file ready, event notifications, or streaming events). | Use Case 3.8.2  (Performance Management Subscription) |

|  |  |  |
| --- | --- | --- |
| [REQ- ORC- O2-38] | The IMS shall be able to create a Performance Management Subscription when requested by a subscriber. The IMS shall issue a notification of the status of the Performance Subscription request. | Use Case 3.8.2  (Performance Management Subscription) |
| [REQ- ORC- O2-39] | When the subscription indicates that performance data should be sent (based on the subscription criteria), the IMS shall attempt to open a connection to a subscriber endpoint. If successfully opened, the IMS shall send a performance event notification to the subscriber. | Use Case 3.8.3  (Performance Measurement Event Notification Reporting) |
| [REQ- ORC- O2-40] | When the subscription indicates that performance data should be sent in a streaming session (based on the subscription filter), if there is not already a persistent connection, the IMS shall attempt to open a connection to a subscriber endpoint.  Alternatively, the consumer (FOCOM) may establish a communication session to the producer (IMS) | Use Case 3.8.4  (Performance Measurement Streaming Reporting) |
| [REQ- ORC- O2-41] | Upon, successful establishment of a communication session, the IMS shall send a performance event notification to the subscriber. | Use Case 3.8.4  (Performance Measurement Streaming Reporting) |
| [REQ- ORC- O2-42] | When the subscription filter indicates that performance data should be sent in a file, the producer (IMS) shall attempt to open a connection to a consumer (subscriber) endpoint. | Use Case 3.8.5  (Performance Measurement File Reporting) |
| [REQ- ORC- O2-43] | The producer (IMS) shall send the Performance Data file(s), or the producer (IMS) shall send a *file ready* notification for the consumer to retrieve the files later over the O2 interface. | Use Case 3.8.5  (Performance Measurement File Reporting) |
| [REQ- ORC- O2-44] | The consumer (FOCOM) shall be able to receive Performance Data file(s) from the producer (IMS) or receive a *file ready* notification. | Use Case 3.8.5  (Performance Measurement File Reporting) |
| [REQ- ORC- O2-45] | The O-RAN SMO shall be able to request provisioning network resource for the Underlay Network through the O2 interface. | Use Case 3.11.1, 3.1.2 |
| [REQ- ORC- O2-46] | The O-Cloud shall support the provisioning of the O-Cloud Site Network Fabric and the O-Cloud GW via FOCOM over the O2ims interface. | Use Case 3.11.1, 3.1.2, 3.10.1,  3.10.2 |
| [REQ- ORC- O2-47] | The FOCOM (SMO) shall be able to send a create Kubernetes (K8s) Cluster with user credentials and requested capability parameters for the K8s Cluster.  NOTE: These user credentials are later used to authorize the user to have access or use to the created K8s Cluster based on their role privilege (DMS privileges). | Use Case 3.11.2.2 (Create K8s Cluster) |
| [REQ- ORC- O2-48] | IMS in the O-Cloud shall be able to process a request to create Kubernetes (K8s) cluster based on requested capability parameters. | Use Case 3.11.2.2  (Create K8s Cluster) |
| [REQ- ORC- O2-49] | IMS shall clean up after an exception of the create an O-Cloud Node Cluster request.  NOTE: The specific details of actions or activities that are reversed to accomplish a "clean up" is left up to implementation. | Use Case 3.11.2.2  (Create Kubernetes (K8s) Cluster)  Use Case 3.11.2.3  (Create O-Cloud Node Cluster using O-Cloud Template) |
| [REQ- ORC- O2-50] | The SMO (FOCOM) shall be able to request updating of the O-Cloud Resource state and status (functional status update) using the O2 Interface. | Use Case 3.1.8  (Functional Status Update) |

|  |  |  |
| --- | --- | --- |
| [REQ- ORC- O2-51] | The IMS shall be able to process and respond to a functional status update request using the O2 Interface. | Use Case 3.1.8 (Functional Status Update) |
| [REQ- ORC- O2-52] | The consumer (SMO) shall be able to issue a *Query O-Cloud Info Request* which is a generalized query for any Inventory object and its associated inventory information over the O2 Interface. | Use Case 3.7.9, 3.8.11  (Alarm Dictionary Discovery Use Case, PM Dictionary Discovery Use Case) |
| [REQ- ORC- O2-53] | The producer (IMS) shall respond to the *Query O-Cloud Info Request* over the O2 Interface by providing the information associated with the request Inventory object(s).  NOTE: Upon receipt, the consumer (SMO) is expected to associate the new Alarm/PM Dictionaries with the newly discovered Resource Types. | Use Case 3.7.9, 3.8.11  (Alarm Dictionary Discovery Use Case, PM Dictionary Discovery Use Case) |
| [REQ- ORC- O2-54] | An entity, or SMO, shall be able to perform Logging Management operations to administer, provision, and configure logging behavior using the O2 Interface.  Some examples include configuring the retention period of logs, activating logging, configuring the logging rotation method, and configure Log Levels. | Use Case 3.7.10  (Logging Configuration Use Case) |
| [REQ- ORC-  O2-55] | An IMS shall be able to process a Logging Management operation from an entity or SMO requested over the O2 Interface. | Use Case 3.7.10  (Logging Configuration Use Case) |
| [REQ- ORC- O2-56] | The consumer (SMO) shall be able to perform a PM Job Query towards the IMS using the O2 Interface. | Use Case 3.8.6 (PM Job Query) |
| [REQ- ORC-  O2-57] | The IMS shall be able to process and respond to an PM Job Query from the consumer (SMO) using the O2 Interface. | Use Case 3.8.6 (PM Job Query) |
| [REQ- ORC- O2-58] | The consumer (SMO) shall be able to issue a PM Job Delete request to delete PM Job(s) towards the IMS using the O2 Interface. | Use Case 3.8.7 (PM Job Delete) |
| [REQ- ORC- O2-59] | The IMS shall be able to process and respond to an PM Job Delete request from the consumer (SMO) using the O2 Interface. | Use Case 3.8.7 (PM Job Delete) |
| [REQ- ORC- O2-60] | PM Job(s) shall first be placed in a suspended state before they can be deleted. | Use Case 3.8.7 (PM Job Delete) |
| [REQ- ORC- O2-61] | The FOCOM (SMO) shall be able to send a delete Kubernetes (K8s) Cluster request over the O2 IMS Interface.  The request shall have the ID of the K8s Cluster to be deleted. | Use Case 3.11.3  (Delete K8s Cluster Use Case) |
| [REQ- ORC- O2-62] | IMS in the O-Cloud shall be able to process a request to delete a Kubernetes (K8s) Cluster. | Use Case 3.11.3  (Delete K8s Cluster Use Case) |
| [REQ- ORC- O2-63] | When the delete Kubernetes Cluster is done, IMS shall perform internal clean up and report resultant updates to O-Cloud inventory and communicate changes for those resources. | Use Case 3.11.3  (Delete K8s Cluster Use Case) |
| [REQ- ORC-O2- 64] | The O-Cloud shall support the attachment of the Network Functions to the O- Cloud Node Cluster Network via NFO over the O2dms interface.  NOTE: The relevant O-Cloud Node interfaces to connect to the O-Cloud Node Cluster Network shall be provisioned before being able to perform the attachment of the NF Deployments. | Use Case 3.10.1 (Network Slice Creation Use Case), 3.10.2 (Network Slice Deletion Use Case) |

|  |  |  |
| --- | --- | --- |
| [REQ- ORC-O2- 65] | The O-Cloud shall support provisioning of the O-Cloud GW ports connecting the Transport Network Element where the following options are possible (depending on the case):   1. The Network Segment (e.g., VLAN ID) used for handover shall be selected/reserved by the O-Cloud. 2. The O-Cloud shall be capable of receiving the Network Segment (e.g., VLAN ID) used for handover as an input for the O-Cloud internal configuration. | Use Case 3.10.1 (Network Slice Creation Use Case), 3.10.2 (Network Slice Deletion Use Case) |
| [REQ- ORC-O2- 66] | The consumer (SMO) shall be able to issue a PM Job Update request to update a PM Job's characteristics through request parameters towards the IMS using the O2 Interface. | Use Case 3.8.8 (PM Job Update) |
| [REQ- ORC-O2- 67] | The IMS shall be able to process and respond to a PM Job Update request from the consumer (SMO) using the O2 Interface. | Use Case 3.8.8 (PM Job Update) |
| [REQ- ORC-O2- 68] | The IMS shall be able to update the measure selection criteria which in turn will cause the PM Job to update the different aspects of collection including the measured Resources, qualified Resource Types, collected Measures, and measure selection criteria.  NOTE: If currently running collections are affected by a PM Job update, it will be implementation specific as to what happens with data collection already in progress. For example, if a 5-minute interval PM Job is updated to now collect at 7-minute intervals and the update request arrives 2 minutes into the existing 5- minute interval. There would be an extra data point which could have a suspect flag. | Use Case 3.8.8 (PM Job Update) |
| [REQ- ORC-O2- 69] | The consumer (SMO) shall be able to issue a PM Job Suspend request to suspend a PM Job towards the IMS using the O2 Interface. | Use Case 3.8.9 (PM Job Suspend) |
| [REQ- ORC-O2- 70] | The IMS shall be able to process and respond to a PM Job Suspend request from the consumer (SMO) using the O2 Interface. | Use Case 3.8.9  (PM Job Suspend) |
| [REQ- ORC-O2- 71] | The consumer (SMO) shall be able to issue a PM Job Resume request to resume a PM Job towards the IMS using the O2 Interface. | Use Case 3.8.10  (PM Job Resume Use Case) |
| [REQ- ORC-O2- 72] | The IMS shall be able to process and respond to a PM Job Resume request from the consumer (SMO) using the O2 Interface. | Use Case 3.8.10  (PM Job Resume Use Case) |
| [REQ- ORC-O2- 73] | An entity, SMO, operator shall be able to issue an Alarm List Configuration request to update the Retention Period for the entire Alarm List over the O2 interface. The request may also include additional extension parameters specific to implementation. | Use Case 3.7.11  (Alarm List Configuration Use Case) |
| [REQ- ORC-O2- 74] | The IMS in the O-Cloud shall be able to process and respond to an Alarm List Configuration request by adjusting the Retention Period or process additional extension parameters and respond with the results of the operation. | Use Case 3.7.11  (Alarm List Configuration Use Case) |
| [REQ- ORC- O2-75] | The SMO (FOCOM) shall be able to request an IMS Software Update towards the IMS using the O2 Interface | Use Case 3.1.9  (IMS Software Update) |
| [REQ- ORC- O2-76] | The O-RAN O-Cloud Infrastructure Management Services shall be able process and respond to an IMS Software Update request from the SMO (FOCOM) using the O2 Interface. | Use Case 3.1.9  (IMS Software Update) |

|  |  |  |
| --- | --- | --- |
| [REQ- ORC- O2-77] | The O-Cloud shall be able to heal NF Deployment(s), triggered either by a request over O2-DMS or via auto-healing triggers inside the O-Cloud. | Use Case 3.6.2  (NF Deployment Level Healing) |
| [REQ- ORC- O2-78] | The O-Cloud shall be able to heal O-Cloud Node(s), triggered either by a request over O2-IMS or via auto-healing triggers inside the O-Cloud. | Use Case 3.6.3  (O-Cloud Node Level Healing) |
| [REQ- ORC- O2-79] | The SMO (FOCOM) shall be able to request an update of a DMS software within an O-Cloud towards the IMS using the O2 Interface. | Use Case 3.1.10  (DMS Software Update) |
| [REQ- ORC- O2-80] | The O-RAN O-Cloud Infrastructure Management Services shall be able to process and respond to a DMS Software Update request from the SMO (FOCOM) using the O2 Interface, and to perform consequently the DMS software update according to the request. | Use Case 3.1.10  (DMS Software Update) |
| [REQ- ORC- O2-81] | The O-Cloud operator or SMO shall be able to initiate an alarm suppression activation, deactivation, query, and update operation using the O2 Interface. | Use Case 3.7.12.2  (Alarm Suppression) |
| [REQ- ORC- O2-82] | The IMS shall be able to process and respond to an alarm suppression activation, deactivation, query, and update request from the SMO using the O2 Interface. | Use Case 3.7.12.2  (Alarm Suppression) |
| [REQ- ORC- O2-83] | The IMS shall be able to notify the SMO using the O2 Interface when IMS autonomously activate, deactivate, and update an alarm suppression. | Use Case 3.7.12.3  (Alarm Suppression) |
| [REQ- ORC- O2-84] | If the PM Job has an embedded subscription, the PM Job deletion request shall cause the associated PM subscription to be also deleted. | Use Case 3.8.7 (Performance Measurement Job Delete Use Case) |
| [REQ- ORC- O2-85] | The SMO shall be able to perform a Performance Measurement Subscription query towards the IMS using the O2 Interface. | Use Case 3.8.12  (Performance Subscription Query Use Case) |
| [REQ- ORC- O2-86] | The IMS shall be able to process and respond to a Performance Measurement Subscription query from the SMO using the O2 Interface. | Use Case 3.8.12  (Performance Management Subscription Query Use Case) |
| [REQ- ORC- O2-87] | The SMO shall be able to perform a Performance Measurement Subscription update (embedded or normal) with an update order towards the IMS using the O2 Interface. | Use Case 3.8.13  (Performance Management Subscription Update Use Case) |
| [REQ- ORC- O2-88] | The IMS shall be able to process and respond to a Performance Measurement Subscription update using the update order in the request from the SMO using the O2 Interface. | Use Case 3.8.13  (Performance Management Subscription Update Use Case) |
| [REQ- ORC- O2-89] | The SMO shall be able to perform a Performance Measurement Subscription delete request towards the IMS using the O2 Interface. | Use Case 3.8.14  (Performance Management Subscription Delete Use Case) |
| [REQ- ORC- O2-90] | The IMS shall be able to process and respond to a Performance Measurement Subscription delete request from the SMO using the O2 Interface. | Use Case 3.8.14  (Performance Management Subscription Delete Use Case) |
| [REQ- ORC- O2-91] | The FOCOM (SMO) shall be able to send an update O-Cloud Node Cluster request over the O2ims Interface.  NOTE: The update request includes information to identify the O-Cloud Node Cluster update and the update (increase or decrease) requirements. | Use Case 3.11.4.2 (Update Kubernetes (K8s) Cluster))  Use Case 3.11.4.3 (Update O- Cloud Node Cluster using O- Cloud Template) |

|  |  |  |
| --- | --- | --- |
| [REQ- ORC- O2-92] | IMS in the O-Cloud shall be able to process a request to update a O-Cloud Node Cluster. | Use Case 3.11.4.2 (Update Kubernetes (K8s) Cluster)  Use Case 3.11.4.3 (Update O- Cloud Node Cluster using O- Cloud Template) |
| [REQ- ORC- O2-93] | When the update O-Cloud Node Cluster is done, IMS shall update the appropriate inventory. | Use Case 3.11.4.2 (Update Kubernetes (K8s) Cluster)  Use Case 3.11.4.3 (Update O- Cloud Node Cluster using O- Cloud Template) |
| [REQ- ORC- O2-94] | The SMO (FOCOM/NFO) shall support the capability to send O-Cloud Node draining request to the O-Cloud (IMS/DMS) over O2 interface. | Use Case 3.12.2 (O-Cloud Node Draining Use Case) |
| [REQ- ORC- O2-95] | The SMO (FOCOM/NFO) shall support the capability to receive O-Cloud Node draining response from the O-Cloud (IMS/DMS) over O2 interface. | Use Case 3.12.2 (O-Cloud Node Draining Use Case) |
| [REQ- ORC- O2-96] | The IMS shall be able to process and respond to a Query Information request from the SMO using the O2 Interface. | Use Case 3.1.11 (Query Information Use Case) |
| [REQ- ORC-O2- 97] | The SMO shall be able to issue an Alarm Purge request that specify alarms to be purged towards the IMS using the O2 Interface. | Use Case 3.7.13  (Alarm Purge Use Case) |
| [REQ- ORC-O2- 98] | The IMS shall be able to process Alarm Purge request from the SMO using the O2 Interface by removing inactive alarms or acknowledge active alarms from the Alarm List and respond to the request back to the requestor. | Use Case 3.7.13  (Alarm Purge Use Case) |
| [REQ- ORC- O2-99] | The SMO shall be able to request for a Performance Management Configuration to update attribute(s) of specified object(s) towards the IMS using the O2 Interface. | Use Case 3.8.15  (Performance Management Configuration Use Case) |
| [REQ- ORC- O2-100] | The IMS shall be able process a Performance Management Configuration request from the SMO and return a success or partial success based on outcomes.  NOTE: If a Performance Management Configuration update has a mixture of valid object(s) and attribute(s) and non-existing object(s) and attribute(s), then the operation will only be completed for the configurable attribute(s). This situation would return a partial success from the IMS to the requestor. | Use Case 3.8.15  (Performance Management Configuration Use Case) |
| [REQ- ORC- O2-101] | The SMO (FOCOM) shall support the capability to send O-Cloud Node(s) Cordon request to the O-Cloud (IMS) over O2 interface | Use Case 3.12.3 (O-Cloud Cordon and Uncordon Use Case) |
| [REQ- ORC- O2-102] | The SMO (FOCOM) shall support the capability to send O-Cloud Node(s) Uncordon request to the O-Cloud (IMS) over O2 interface | Use Case 3.12.3 (O-Cloud Cordon and Uncordon Use Case) |
| [REQ- ORC- O2-103] | The SMO (FOCOM) shall support the capability to receive O-Cloud Node(s) Cordon response from the O-Cloud (IMS) over O2 interface | Use Case 3.12.3 (O-Cloud Cordon and Uncordon Use Case) |
| [REQ- ORC- O2-104] | The SMO (FOCOM) shall support the capability to receive O-Cloud Node(s) Uncordon response from the O-Cloud (IMS) over O2 interface | Use Case 3.12.3 (O-Cloud Cordon and Uncordon Use Case) |
| [REQ- ORC- O2-105] | The O-RAN SMO shall be able to request for a Heartbeat Subscription towards the IMS (in the O-Cloud) using the O2 Interface to receive a heartbeat messages. | Use Case 3.13.1  (Heartbeat Subscription Use Case) |

|  |  |  |
| --- | --- | --- |
| [REQ- ORC- O2-106] | The IMS shall be able to create a Heartbeat Subscription when requested by a subscriber. The IMS shall issue a notification of the status of the Heartbeat Subscription request. | Use Case 3.13.1  (Heartbeat Subscription Use Case) |
| [REQ- ORC- O2-107] | The SMO (FOCOM) shall be able to send a create O-Cloud Node Cluster using O-Cloud Template. | Use Case 3.11.2.3  (Create O-Cloud Node Cluster using O-Cloud Template) |
| [REQ- ORC- O2-108] | IMS in the O-Cloud shall be able to process a request to create an O-Cloud Node Cluster using O-Cloud Template. | Use Case 3.11.2.3  (Create O-Cloud Node Cluster using O-Cloud Template) |

### Requirements Relating to NF Deployment Descriptor

The following section contains requirements on the Deployment Descriptor for NF Deployment.

|  |  |  |
| --- | --- | --- |
| [REQ-DESC-1] | The Deployment Descriptor shall contain deployment information that enables the SMO, together with other input data to deploy an NF Deployment. | Use case 3.2.1  (NF Deployment Instantiation) |
| [REQ-DESC-2] | The Deployment Descriptor shall contain lifecycle parameters that enable customization of an NF Deployment. | Use case 3.2.1  (NF Deployment Instantiation) |
| [REQ-DESC-3] | The Deployment Descriptor shall contain information related to cloud resource requirements. | Use case 3.2.1  (NF Deployment Instantiation) |

## Annex A (Informative): Terminology Used in O-Cloud Requirements

The following terms and definitions are used in the O-Cloud requirements.

|  |  |
| --- | --- |
| Requirements Term | Description |
| deployment descriptor | Deployment descriptor is a completed data model which provides an O-Cloud the necessary information to create a deployment. |
| deployment descriptor model type | Deployment descriptors use a model type such as TOSCA, HELM, or HOT Templates to describe the deployment to be performed. The type of model used by the descriptor should be included in its metadata.  NOTE: HELM is a registered trademark of the Linux Foundation, in the United States and other countries. O-RAN is not affiliated with, endorsed or sponsored by the Linux Foundation. |
| NF deployment | NF deployment (or "Deployment") is defined in [9]. |
| NF deployment unit | Part of a NF deployment that may be individually scaled. |
| flavor | In the case of O-Clouds the deployment units are in defined patterns known as [deployment] flavors [2]. The flavors are part of the deployment descriptor. |
| capacity | This is the capacity that an entity is designed for. For each flavor defined the maximum that could be deployed should be reported to the SMO. Cloud Scale Up and Scale Down would affect these values and cause the change to be reported to the SMO. |
| utilization | This is the count that is currently allocated from the O-Cloud capacity, for each flavor. |
| availability | This is the count that could be allocated based on the capacity minus the utilization, for each flavor. |
| cloud descriptor | This is the outlined plan for the O-Cloud. From this plan the O-Cloud Infrastructure Management Services knows which pools are expected to be available as resources are discovered and what version of software is required for O-Cloud Nodes in each pool. |
| cloud blueprint | This is information about the functionality and resources needed in an O-Cloud build out. |

## Annex (Informative): Change History

|  |  |  |
| --- | --- | --- |
| **Date** | **Revision** | **Description** |
| 2023.11.28 | 09.00 | Incorporated 5 CRs for 2023 Nov train  #18 O2 OrchUC FM AlarmListConfiguration UseCase\_v00.03  #21 DTAG.AO-2023.06.02-WG6-CR-0004-Performance\_Measurement\_Subscription- v02.00  #24 DTAG.AO-2023.09.22-WG6-CR-0006-Preinstalled PM Job\_v01.00 #26 ERI-2023.09.11-WG6-CR-0052-OUC updates for AAL  #32 DCM-2023.10.11-WG6-ORCH-UC-O-Cloud\_Node\_Backup UC\_v03  Fixed 2 bugs in Bug List  #1 Fixed Preconditions from "Valid User" to "Privilege" for consistency #3 Editorial corrections |
| 2024.3.28 | 10.00 | Incorporated 2 CRs for 2024 Mar train  #29 DCM-2024.02.16-WG6-CR-0003-ORCH-  UC\_Cluster\_templates\_and\_network\_alignments-v02  #33 ERI-2024.02.27-WG6-CR-0027-NF-Deployment-Use-Cases-Update-v02 Fixed a bug Bug List  #4 Editorial correction  Incorporated editorial comments in WG Approval Comment Wiki |
| 2024.7.26 | 11.00 | Incorporated 4 CRs for 2024 July train  #24 NOK 2024.05.28 WG6 CR Deployment NF Descriptor Requirements V01.02 #33 DELL.AO-2024-04-01-WG6-CR0008-ORCH\_UC-Logging Configuration-v00.05  #34 DELL.AO-2024.03.08-WG6-CR-0006-ORCH\_UC-Performance Management CR- v00.06  #36 DTAG-2023.08.28-WG6-CR-0005-3.2.1  Instantiate\_Network\_Function\_Deployment\_on\_O-Cloud-v15.03 Fixed 2 bugs in Bug List  #3 ORCH-UC Clause 4.4 (fixed the use case name to "NF Deployment Instantiation")  #4 ORCH-UC Clause 4.1 (fixed the use case name to "Logging Configuration") Incorporated editorial comments in WG Approval Comment Wiki |
| 2024.12.10 | 12.00 | Incorporated 7 CRs for 2024 Nov train  DTAG-2024.07.24-WG6-CR-0010-3.2.5\_NF\_Deployment\_Termination-v01.01 DTAG.AO-2024.09.02-WG6-CR-0008\_O\_Cloud\_Pre Deployment\_v01.00  ERI-2024.06.24-WG6-CR-0037-Scale-Out-NF-Deployment-Use-Case-Update-v09 ERI-2024.06.24-WG6-CR-0043-Scale-In-NF-Deployment-Use-Case-Update-v04 DCM-2024.10.30-WG6-CR-0004-ORCH-UC\_Clarify\_NW\_to\_which\_O-  Cloud\_connects-v01  RHT.AO-2024.08.30-WG6-CR-0001-Provisioning-Cluster-Template-Use-Case-v000.8 RHT.AO-2024.09.23-WG6-CR-0001-Update-Using-Cluster-Template-Use-Case-v0.5  Incorporated editorial comments in WG Approval Comment Wiki |
---

- View in [Reader Mode](https://simewu.com/spec-reader/pages/06-WG6/O-RAN.WG6.ORCH-USE-CASES-R004-v12.00.docx).
- Go back to [Table of Contents](../README.md).
- Download the [Original Document](https://github.com/Simewu/spec-reader/raw/refs/heads/main/documents/O-RAN.WG6.ORCH-USE-CASES-R004-v12.00.docx).
