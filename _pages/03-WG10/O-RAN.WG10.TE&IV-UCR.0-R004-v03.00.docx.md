---
title: O-RAN.WG10.TE&IV-UCR.0-R004-v03.00.docx.md
author: O-RAN Alliance
layout: post
---

- View in [GitHub Mode]({{site.github_page_url}}/O-RAN.WG10.TE%26IV-UCR.0-R004-v03.00.docx.md).
- Go back to [Table of Contents]({{site.baseurl}}/).
- Download the [Original Document]({{site.download_url}}/O-RAN.WG10.TE&IV-UCR.0-R004-v03.00.docx).

---

* toc
{:toc}

---

![webwxgetmsgimg (7).jpeg]({{site.baseurl}}/assets/images/9c69df009b87.jpg)

<div class="table-wrapper" markdown="block">

|  |
| --- |
| O-RAN.WG10.TE&IV-UCR.0-R004-v03.00 |
| *Technical Specification* |
| **O-RAN Work Group 10 (OAM for O-RAN)**  **Topology Exposure and Inventory Management Services Use Cases and Requirement Specification** |

</div>

Copyright (C) 2024 by the O-RAN ALLIANCE e.V.

The copying or incorporation into any other work of part or all of the material available in this specification in any form without the prior written permission of O-RAN ALLIANCE e.V. is prohibited, save that you may print or download extracts of the material of this specification for your personal use, or copy the material of this specification for the purpose of sending to individual third parties for their information provided that you acknowledge O-RAN ALLIANCE as the source of the material and that you inform the third party that these conditions apply to them and that they must comply with them.

O-RAN ALLIANCE e.V., Buschkauler Weg 27, 53347 Alfter, Germany Register of Associations, Bonn VR 11238, VAT ID DE321720189

Contents

Foreword 3

Modal verbs terminology 3

1. Scope 3
2. References 3
   1. Normative references 3
   2. Informative references 4
3. Definition of terms, symbols and abbreviations 4
   1. Terms 4
   2. Symbols 5
   3. Abbreviations 5
4. Use Case Description 5
   1. O-RAN TE&IV Use Cases 5
      1. Use case 1: O-RAN network provisioning 5
      2. Use case 2: Alarm query with TE&IV services 13
      3. Use case 3: Terminate NF Deployment on O-Cloud 15
      4. Use case 4: Topology based alarm correlation 19
      5. Use case 5: O-RAN Network Planning 22
      6. Use Case 6: NF Deployment Homing based on TE&IV services 24
      7. Use Case 7: TE&IV Updates related to O-Cloud-Provisioning 26
      8. Use case 8: Handling Cloud Site Outage Using TE&IV Services 30
5. Requirements 33
   1. Functional Requirements 33
   2. Non-Functional Requirements 34
   3. Dependencies 34

Annex A (informative) 35

Change History 37

# Foreword

This Technical Specification (TS) has been produced by WG10 of the O-RAN Alliance.

# Modal verbs terminology

In the present document "**shall**", "**shall not**", "**should**", "**should not**", "**may**", "**need not**", "**will**", "**will not**", "**can**" and "**cannot**" are to be interpreted as described in clause 3.2 of the O-RAN Drafting Rules (Verbal forms for the expression of provisions).

"**must**" and "**must not**" are **NOT** allowed in O-RAN deliverables except when used in direct citation.

# Scope

The content of the present document is subject to continuing work within O-RAN and may change following formal O-RAN approval. Should the O-RAN Alliance modify the contents of the present document, it will be re-released by O-RAN with an identifying change of version date and an increase in version number as follows:

version xx.yy.zz where:

xx: the first digit-group is incremented for all changes of substance, i.e. technical enhancements, corrections, updates, etc. (the initial approved document will have xx=01). Always 2 digits with leading zero if needed.

yy: the second digit-group is incremented when editorial only changes have been incorporated in the document. Always 2 digits with leading zero if needed.

zz: the third digit-group included only in working versions of the document indicating incremental changes during the editing process. External versions never include the third digit-group. Always 2 digits with leading zero if needed.

The present document specifies new use cases and refines existing use cases present in O-RAN specifications for Topology Exposure and Inventory Management. For each use case, the document describes the motivation, resources, steps involved and the data requirements. The functional and non functional requirements for Topology Exposure and Inventory Management services are derived from the use cases that further serve as a basis for specifying the topology and inventory models, services and APIs.

# References

## Normative references

References are either specific (identified by date of publication and/or edition number or version number) or non-specific. For specific references, only the cited version applies. For non-specific references, the latest version of the referenced document (including any amendments) applies.

NOTE: While any hyperlinks included in this clause were valid at the time of publication, O-RAN cannot guarantee their long-term validity.

The following referenced documents are necessary for the application of the present document.

1. 3GPP TS 23.032: "3rd Generation Partnership Project; Technical Specification Group Services and System Aspects; Universal Geographical Area Description (GAD) (Release 17)"
2. O-RAN TS: "Topology Exposure & Inventory Common Information Models and Interface Specification - Stage 2"

## Informative references

References are either specific (identified by date of publication and/or edition number or version number) or non-specific. For specific references, only the cited version applies. For non-specific references, the latest version of the referenced document (including any amendments) applies.

NOTE: While any hyperlinks included in this clause were valid at the time of publication, O-RAN cannot guarantee their long-term validity.

The following referenced documents are not necessary for the application of the present document, but they assist the user with regard to a particular subject area.

[i.1] 3GPP TR 21.905: "Vocabulary for 3GPP Specifications"

[i.2] O-RAN-WG10.OAM-Architecture-v07.00: "O-RAN Operations and Maintenance Architecture v07.00" [i.3] 3GPP TS 28.541: "5G Network Resource Model (NRM); Stage 2 and Stage 3 (Release 17)"

[i.4] O-RAN.WG6.O2-GA&P-R003-v03.00:"O2 Interface General Aspects and Principles" [i.5] O-RAN.WG6.O2IMS-INTERFACE-v03.00: "O2ims Interface Specification"

[i.6] O-RAN.WG2.R1UCR-R003-v03.00: "R1interface: Use Cases and Requirements"

[i.7] O-RAN.WG4.MP.0-R003-v11.00: "O-RAN Working Group 4 (Open Fronthaul Interfaces WG) Management Plane Specification"

[i.8] O-RAN.WG10.O1-Interface.0-R003-v10.00: "O-RAN Operations and Maintenance Interface Specification"

[i.9] O-RAN.WG6.ORCH-USE CASES-R003-v06.00: "O-RAN Working Group 6 Cloudification and Orchestration Use Cases and Requirements for O-RAN Virtualized RAN"

[i.10] O-RAN.WG6.CADS-v04.00 - "Cloud Architecture and Deployment Scenarios for O-RAN Virtualized RAN"

# Definition of terms, symbols and abbreviations

## Terms

For the purposes of the present document, the terms given in [i.1] and the following apply:

**Inventory**: Inventory consists of information about planned, active and available networks, resources, services, their states, relationships, and specific properties.

**Topology**: Topology consists of information about relationships and characteristics of services and resources, derived from inventory and from other SMO services.

**RAN Resources**: RAN resources includes GNBDUFunction, GNBCUCPFunction, GNBCUUPFunction, NRCellCU, NRCellDU, NRSectorCarrier, NRCellRelation, NRFreqRelation, NRFrequency etc., as described in 3GPP 5G NRM [i.3], other ORAN NFs as described in [i.2].

**NF Deployment**: Based on term usage in [i.4], NF Deployment covers O-DU, O-CU-UP, O-CU-CP, near-RT RIC deployments in the O-Cloud.

**O-Cloud Resources**: O-Cloud Resources include O-Cloud IMS model elements as depicted in the O-RAN IMS Interface [i.5].

**TE&IV resources**: TE&IV resources depict RAN resources, O-Cloud resources, and relationships with other RAN or O- Cloud resources etc., represented in topology and inventory models.

**Planned inventory**: Represents the physical, logical, and virtual resources, their state, specific properties, and relationships, reserved for planned network realization.

**TE&IV Service Producer:** The SMO Functions providing the TE&IV services and managing the inventory objects in the TE&IV Repositories.

**TE&IV Service Consumer:** The SMO Consumer which uses TE&IV services.

## Symbols

Void

## Abbreviations

TE&IV: Topology Exposure and InVentory management

# Use Case Description

## O-RAN TE&IV Use Cases

### Use case 1: O-RAN network provisioning

#### Background and goal of the use case

The O-RAN Provisioning use case in WG10 OAM Architecture Specification [i.2] describes the sequence of steps to deploy and provision O-RAN NFs on physical/virtualized resources by leveraging the SMO Framework and O-Cloud management entities.

The goal of this use case is to highlight the role of Topology Exposure (TE) and Inventory Management (IV) services during provisioning of O-RAN NFs. This use case leverages flows of O-RAN provisioning use case and highlights the interactions of O-RAN entities with TE&IV service producer. These interactions are for CRUD operations on inventory objects corresponding to the newly deployed NFs.

NOTE: Throughout this document, as defined in [i.9], the term NF implies that it can be deployed as one of PNF or cloudified NF. A cloudified NF can be realized via one or many NF Deployments, as per [i.9], which can be a VNF or a CNF.

#### Entities/resource involved in the use case

The SMO Framework leverages TE &IV services within the SMO. TE&IV services maintain the state of O-RAN NFs in the TE&IV repositories, which will be used by TE&IV Service Consumers within the SMO Framework to derive the contextual information of the network. TE&IV services support CRUD operations on inventory objects in TE&IV repositories and interactions with TE&IV Service Consumers.

#### Solutions

###### Table 4.1.1.3-1: O-RAN network provisioning

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>> Related**  **use** |
| Goal | O-RAN network provisioning using TE&IV services |  |
| Actors and Roles | [1]. Service Management and Orchestration Framework: TE&IV Service Producer and TE&IV Service Consumer (such as Non-RT RIC Services, RAN NF OAM Services, O-Cloud Resources Management and Orchestration Services)  [2]. O-Cloud: DMS  [3]. PNF (e.g., O-RU, O-DU)  [4]. VNF (e.g., Near RT-RIC, xApps, O-CU-CP, O-CU-UP)  [5]. Consumers of the SMO services which are authorized to use TE&IV Service Producer services |  |
| Assumptions | Common Topology and Inventory Model is available in TE&IV Service Producer EXAMPLE: For the purpose of this use case, the TE&IV inventory objects follow the Inventory object status values highlighted in Annex A |  |
| Pre-conditions | [1]. O-RAN Service Design completed as per WG10 OAM Architecture Specification Clause 4.2.1.3  [2]. O-RAN Network Planning completed as per Clause 4.1.5.3 and inventory objects are created with status as Planned  [3]. The PNF is constructed/installed and ready to be registered and Activated [4]. The cloudified NF Software Package has been uploaded to the O-Cloud [5]. Secure network connectivity is already available between RAN components  [6]. O-DU and O-RU are PNFs and the inventory objects corresponding to these RAN Nodes are available in the TE&IV repositories with a Planned status and ready to be registered and activated  [7]. On boarding of cloudified NF Descriptors to the O-Cloud is completed [8]. TE&IV Service Producer is ready to accept requests from TE&IV Service  Consumers |  |
| Begins when | The personnel authorized for initiating the Network provisioning operation, decides to deploy an O-RAN network in specific geo-location e.g., location identified using TE&IV  services. Refer to WG10 OAM Architecture Specification Clause 4.2.1.3 for details. |  |
| **O-RAN Service Deployment** | | |
| Step 1 (M) | TE&IV Service Consumer sends a query to the TE&IV Service Producer to get Planned  O-RAN Service inventory objects |  |
| Step 2 (M) | Response from TE&IV Service Producer with details of the Planned inventory objects |  |
| Step 3 (O) | TE&IV Service Consumer updates the inventory objects with deployment specific parameter values. The request also transitions the O-RAN Service inventory object status to Assigned.  NOTE: It is assumed that any resource reservation if required is carried out at this stage |  |
| Step 4 (O) | Confirmation of successful inventory object update in TE&IV Repository |  |
|  | Deployment details of the O-RAN Service is omitted. Refer to the deployment details of cloudified NF and PNF described below in steps 4.1.1 to 4.1.6 (for cloudified NF) and  4.2.1 to 4.2.4 (for PNF Registration) |  |
| Step 5 (M) | In case of a successful deployment of the O-RAN Service, the TE&IV Service Consumer sends a request to TE&IV Service Producer to update the inventory object with the details of the O-RAN Service being deployed and the status of the corresponding inventory object is changed to Deployed.  In case of a failure in deployment of O-RAN Service, the status of the O-RAN Service inventory objects remains Assigned so that the deployment can be re-initiated without repeated assignment of parameter values. The use case flow stops with the deployment failure. The subsequent flows are continued once the retry results in a successful  deployment. |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>> Related**  **use** |
| Step 6 (M) | Confirmation of the status update on O-RAN Service Inventory Object in TE&IV  Repository |  |
| Step 7 (M) | After completion of the RAN Node deployment, once the status of the associated inventory objects are updated as Deployed, the O-RAN Service activation is initiated.  Refer to steps 4.1.7 to 4.1.10 for details of the cloudified NF and steps 4.2.5 to 4.2.8 for PNF.  On successful completion of RAN Node activation, the status of the O-RAN Service inventory object is transitioned to Active.  In case the O-RAN Service activation failed (or if any of the RAN Node activation failed), the status remains in Deployed. The use case flow stops with the activation failure of O- RAN Service. The subsequent flows are continued once the retry results in a successful activation. |  |
| Step 8 (M) | Confirmation of the status update on O-RAN Service Inventory Object in TE&IV  Repository |  |
| **4.1 Cloudified NF Deployment and Activation** | | |
|  | For the cloudified NF (e.g., O-CU-CP, O-CU-UP, Near-RT RIC, xApps etc.) deployment  details refer to WG10 OAM Architecture Specification Clause 4.2.1.3 Steps 5-10 |  |
| Step 4.1.1 (O) | For the deployment of Cloudified NF (i.e VNF or CNF), the TE&IV Service Consumer  retrieves planned inventory from TE&IV Repository |  |
| Step 4.1.2 (O) | TE&IV Service Producer responds with the Planned inventory details. |  |
|  | Steps 11 - 18 is repeated for each cloudified NF deployed |  |
| Step 4.1.3 (O) | TE&IV Service Consumer updates the inventory objects with deployment specific parameter values. The status of the RAN Node inventory object is updated as Assigned. |  |
| Step 4.1.4 (O) | Confirmation of the RAN Node inventory object update in TE&IV Repository |  |
| Step 4.1.5 (O) | Once deployment of the RAN Node is completed, on successful completion TE&IV Service Consumer updates the RAN Node inventory object with deployment details and the status is changed to Deployed. In case of a failure in the deployment of the RAN Node, the status remains as Assigned so that the re-deployment can be initiated without  re-assignment of the inventory object parameter values. |  |
| Step 4.1.6 (M) | Confirmation of the Status update of RAN Node as Deployed in TE&IV Repository |  |
| Step 4.1.7 (M) | RAN Node is provisioned with the runtime configuration. On successful completion of the provisioning, the TE&IV Service Consumer updates the status of the RAN Node inventory object as Active. In case of a failure the inventory object remains in the  Deployed state. |  |
| Step 4.1.8 (M) | Confirmation of the Status update of RAN Node as Active in TE&IV Repository |  |
| Step 4.1.9 (M) | Once the management and control plane connectivity is established with the RAN Node, the TE&IV Service Consumer updates the planned topology object with the updated  inventory details |  |
| Step 4.1.10 (M) | Confirmation of the Topology object update in TE&IV repository |  |
| **4.2 PNF Registration & Activation** | | |
|  | For the PNF (e.g., O-DU, O-RU) Deployment details refer to WG10 OAM Architecture Specification Clause 4.2.1.3 Steps 23-40 for details. Steps 19-26 are repeated for each PNF being deployed.  NOTE: PNF details are assumed to be part of the planned inventory which is retrieved by  TE&IV Service Consumer in steps 1-2 |  |
| Step 4.2.1 (O) | TE&IV Service Consumer updates the inventory objects with deployment specific  parameter values such as the RAN Node identifier. The status of the RAN Node inventory object is updated as Assigned. |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>> Related**  **use** |
| Step 4.2.2 (O) | Confirmation of the RAN Node inventory object update in TE&IV Repository |  |
| Step 4.2.3 (M) | Once the PNF is powered on and the discovery and registration process is completed,  the TE&IV Service Consumer updates the status of the RAN Node as Deployed. |  |
| Step 4.2.4(M) | Confirmation of the status update of RAN Node as Deployed in TE&IV Repository. In case of a failure in discovery or registration of the PNF, the status of the RAN Node  Inventory object remains as Assigned. |  |
| Step 4.2.5 (M) | After the registration of the PNF and once the provisioning of the PNF is successfully completed with the required runtime configuration, the TE&IV Service Consumer updates the status of the RAN Node inventory object as Active. In case of a failure in provisioning  the PNF, the status of the inventory object remains as Deployed. |  |
| Step 4.2.6 (M) | Confirmation of the status update of RAN Node as Active in TE&IV Repository |  |
| Step 4.2.7 (O) | After the deployment and provisioning of RAN Node is completed, once the management and control plane connectivity are established with the RAN Node, the TE&IV Service  Consumer updates the planned topology object with the updated inventory details |  |
| Step 4.2.8 (O) | Confirmation of the Topology object update in TE&IV repository |  |
| **Post deployment validation/verification** | | |
|  | Post deployment Test details of NFs and O-RAN Service are omitted |  |
| Step 9 (O) (Continued from O- RAN Service Provisioning Step  8) | After the post deployment test execution and validation, the TE&IV Service Consumer sends request to get the status for the corresponding inventory objects |  |
| Step 10 (O) | The status and other details of the inventory objects corresponding to RAN Nodes and O-  RAN Service are provided and verified by the test executioner to certify and commission the deployment as successful or failure. |  |
| Ends when | All O-RAN Network Functions needed for service have been deployed and configured with the status of inventory objects as Active. In case of a failure, the specific stages of the deployment or provisioning are repeated with associated changes in the deployment stages.  The SMO holds current inventory of all O-RAN network functions.  Post deployment test results of the RAN Nodes and O-RAN Service are verified against the corresponding inventory object status and Topology objects |  |
| Exceptions | Not applicable |  |
| Post Conditions | The O-RAN network has been established and provides service to customers |  |
| Traceability | REQ -TE&IV-CRUDQ-FUN1, REQ -TE&IV-CRUDQ-FUN2, REQ -TE&IV-CRUDQ-FUN3,  REQ-TE&IV-MODEL-FUN10 |  |

</div>

![Generated by PlantUML]({{site.baseurl}}/assets/images/4e51851bf370.png)

###### Figure 4.1.1.3-1: O-RAN Network Design and Planning TE&IV Operation

![Generated by PlantUML]({{site.baseurl}}/assets/images/31ab51a78e55.png)

###### Figure 4.1.1.3-3: O-RAN Service Deployment TE&IV Operations

![Generated by PlantUML]({{site.baseurl}}/assets/images/11e34e961f92.png)

###### Figure 4.1.1.3-4: Cloudified NF Deployment TE&IV Operations

![Generated by PlantUML]({{site.baseurl}}/assets/images/7a1fb8d97a18.png)

###### Figure 4.1.1.3-5: PNF Deployment TE&IV Operations

![Generated by PlantUML]({{site.baseurl}}/assets/images/b0f9d7847611.png)

###### Figure 4.1.1.3-6: Testing of deployed NF TE&IV Operations

#### Required Data

* + - * + A unique identifier is assigned during creation of TE&IV resource in the TE&IV repositories, which is returned by the TE&IV Service Producer in the response for create operation.
        + Representation of TE&IV resources in the TE&IV repositories may include, but not limited to the following:

Unique identifier, name, lifecycle state of the resource etc.

### Use case 2: Alarm query with TE&IV services

This use case is improvement of alarm query use case specified in R1UCR [i.6] with TE&IV services.

This use case allows an rApp acting as service consumer to query identities of cells and NF Deployments in specific geo- location and then use retrieved identities to query alarm information.

#### Background and goal of the use case

An rApp acting as service consumer can query from the RAN NF OAM information about an individual alarm, a set of alarms matching provided filtering criteria or all active alarms available in the alarm list.

An rApp acting as TE&IV Service Consumer can query TE&IV Service Producer to get identities of cells and NF Deployments in specific geo-location.

#### Entities/resources involved in the use case

1. RAN OAM-related functions
   1. Receives request to query alarm information,
   2. Responds with success or failure to the query of alarm information
2. rApp
   1. Initiates query of alarm information
   2. Initiates query to get identities of cells and NF Deployment in specific geo-location.
3. TE&IV Service Producer
   1. Exposes TE&IV services based on a Topology and Inventory Models and APIs, which offers among others the capability to provide the relationship between TE&IV resources and geo-location
   2. Consumes the data provided by the SMO functions (e.g., O1-related data, O2-related data, DME, SME) and exposes it via the Topology and Inventory Model and APIs.

#### Solutions

###### Table 4.1.2.3-1: Query alarm information use case using TE&IV services

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>> Related use**  **case** |
| Goal | Query of alarm information of cells in a specific geo-location from RAN NF  OAM using data from TE&IV services |  |
| Actors and Roles | [1]. rApp in the role of service consumer that queries alarm information.  [2]. RAN NF OAM provides alarm information in response to the alarm queries  [3]. TE&IV Service Producer |  |
| Assumptions | n/a |  |
| Preconditions | The rApp is deployed and authorized to query RAN NF OAM and TE&IV Service Producer. Geo-location of cell and NF Deployment is available for  query in the TE&IV Service Producer |  |
| Begins when | The rApp determines the need to query alarm information from cells in  specific geo-location |  |
| Step 1 (M) | The rApp queries the TE&IV Service Producer for identities of cells and its  associated NF deployments in specific geo-location |  |
| Step 2 (M) | TE&IV Service Producer validates the request and retrieves cells and its associated NF deployments in specific geo-location from the TE&IV  repositories. |  |
| Step 3 (M) | TE&IV Service Producer returns the identities of cells and its associated  NF Deployment instances. |  |
| Step 4 (M) | The rApp queries alarm information from the RAN NF OAM by providing the rAppId, NF Deployment/Cells and optional query information that  determines the requested result set. |  |
| Step 5 (M) | The RAN NF OAM responds to the rApp with success along with the  requested alarm information. |  |
| Ends when | The rApp has successfully queried the alarm information |  |
| Exceptions | n/a |  |
| Post Conditions | n/a |  |
| Traceability | REQ-TE&IV-MODEL-FUN6 |  |

</div>

![Generated by PlantUML]({{site.baseurl}}/assets/images/b3bf0f0fbabc.png)

###### Figure 4.1.2.3-1: Query alarm information

#### Required data

TE&IV Service Producer has the relationship information about the cells and NF deployments associated with geo-location.

The query request to TE&IV Service Producer contains the geo-location [1], cell type and NF Deployment type. TE&IV service returns identities of the requested cell and its associated NF deployment in the requested geo-location.

The Query alarm information request contains the rAppId and optional query information. The query information determines the requested alarm information, for instance a single alarm with a particular alarm ID, all alarms in the alarm list or a subset of these alarms that match a set of filtering parameters.

The Query alarm information response contains the requested alarm information scoped by the query information provided in the request.

### Use case 3: Terminate NF Deployment on O-Cloud

#### Background and goal of the use-case

The goal of automation of lifecycle management of NFs is to attain service agility and lower operational costs in a service provider's network. Automated lifecycle management enables the service provider to deploy and terminate services within a short span of time.

When services are terminated, the allocated resources and constituent NFs are terminated and become available for consumption by other services.

This use case highlights the interaction of SMO with TE&IV services for deleting resources in the TE&IV repositories when NF Deployments are terminated on O-Cloud, based on the use case "Terminate Network Function on O-Cloud" in [i.9].

#### Entities/resource involved in the use-case

SMO:

* + - * + TE&IV Service Producer - Exposes CRUD operations on TE&IV resources in TE&IV repositories
        + SMOS Consumer (e.g., NFO) - Interacts with O-Cloud to perform life cycle management of NF Deployments

O-Cloud:

* + - * + DMS - Interacts with SMO for lifecycle management of NF Deployments

#### Solutions

###### Table 4.1.3.3-1: Terminate NF Deployment on O-Cloud

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Goal | To delete an active NF from the TE&IV repository. This requires that the active NF is deactivated prior to termination of the NF deployment which allows for the deletion of the inventory object associated with the NF from the TE&IV  repository. |  |
| Actors and Roles | Network Function Install Project Manager  SMO: NFO, SMOS Consumer such as NFO, TE&IV Service Producer O-Cloud: DMS  Network Function |  |
| Assumptions | [1]. The "Service Request" to the SMO includes the identifiers of the network function instance(s) to be terminated.  [2]. The Network Function Install Project Manager has subscribed to receive notifications from the SMO  [3]. The network function(s) to be terminated do not handle calls and do not provide services. SMOS Consumer (e.g., NFO) and DMS perform the needed actions for terminating the NFs on the O-Cloud  [4]. NF Termination is an asynchronous operation and SMOS Consumer notifies the TE&IV Service Producer about the termination status  EXAMPLE: For the purpose of this use case, the TE&IV inventory objects follow the inventory object status model values highlighted in Annex A |  |
| Pre-condition | [1]. SMO is available |  |
| Begins when | Existing Network Function(s) are determined to be terminated on the O-Cloud and corresponding inventory object details are queried on TE&IV Service  Producer |  |
| Step 1 (M) | Network Function Install Project Manager requests NFO to terminate the network function instance(s) by providing the identifiers of the network function  instance(s). |  |
|  | For each NF deployment associated with each Network Function in the Service Request, the steps 2 to 8 are executed.  The details on how the SMOS Consumer and DMS perform the termination operation in O-Cloud is omitted. Refer to [i.9] clause 3.2.5 for more details.  NOTE: NF Termination is an asynchronous process that may go through multiple stages of operation. SMOS Consumer notifies TE&IV Service Producer when the NF is deactivated initially prior to graceful termination and resource deallocation. |  |
| Step 2 (M) | If TE&IV Service Producer subscribed to NF Deactivation events from SMOS Consumer, a notification is sent to TE&IV Service Producer indicating the  deactivation status. |  |
| Step 3 (M) | TE&IV Service Producer updates the resource inventory object status in the TE&IV repositories (e.g., from Active to Deployed). |  |
| Step 4 (M) | TE&IV Service Producer sends the updated resource inventory object status to SMOS Consumer. |  |
| Step 5 (M) | If TE&IV Service Producer has not subscribed to SMOS Consumer notification, a request to update the resource inventory object status is sent to TE&IV Service Producer and the corresponding status change is updated on  the TE&IV repositories (e.g., from Active to Deployed). |  |
| Step 6 (M) | Status of the inventory object update sent to SMOS Consumer. |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
|  | Steps 7 to 15 are for TE&IV Service operations after successful resource deallocation and termination of the NF in O-Cloud |  |
| Step 7 (M) | If TE&IV Service Producer subscribed to SMOS Consumer notifications, the termination completion notification is received by the TE&IV Service Producer. |  |
| Step 8 (M) | TE&IV Service Producer updates the status of the corresponding resource inventory object (e.g., Deployed to Assigned) |  |
| Step 9 (M) | Status of the inventory object update sent to SMOS Consumer |  |
| Step 10 (M) | If TE&IV Service Producer has not subscribed to TE&IV Service Consumer notification, a request to update the resource inventory object status is initiated by SMOS Consumer. The TE&IV Service Producer updates the resource  inventory object status in TE&IV repositories (e.g., Deployed to Assigned) |  |
| Step 11 (M) | Status of the inventory object update sent to SMOS Consumer |  |
| Step 12 (O) | SMOS Consumer initiates request to delete the resource inventory objects from TE&IV repository |  |
| Step 13 (O) | TE&IV Service Producer deletes the corresponding resources from TE&IV repositories |  |
| Step 14 (O) | Status of the inventory object update sent to TE&IV Service Consumer |  |
| Step 15 (M) | Based on the subscription of NF termination status notification, SMOS  Consumer notifies the Network Function Install Project Manager that the Network Function(s) have been terminated. |  |
| Ends when | Network Function(s) in the O-Cloud have been terminated. |  |
| Exceptions | None identified |  |
| Post Conditions | [1]. Network Function(s) have been terminated.  [2]. The consumer may unsubscribe to receive notification related to terminated NF instance(s) from SMO. |  |
| Traceability | REQ -TE&IV-CRUDQ-FUN6 |  |

</div>

**-RAN**

**ALLIANCE**

**Personnel**

**Service Management** &

**Orchestration Framework**

Networl< Function Install

TE&IV I

Service Producer I SMOS Consumer

Project Manager I I

I

I

I

Query Inventory object details for the NF(s) I

I

I I I

**1** Service req Jes to terminal NF(s) with NF identifier(s) I

I

I

SMOS Consumer (eg., NFO) and OMS peiform needed actions to successfully\ terminate the NFs on 0-Cloud.

Further details on how SMOS Consumer and OMS peiforms this operation is omitted in this use case

**ref** ,

Terminate l\1etwork Functi

Refer i.9 Claus

on on 0-Cloud -

! 3.2.5

NF Termination is an asynchronous process and SMOS Consumer notifies TE&IV Service Producer when the NF is initially deactivated prior to termination

**alt** *)* **[If TE&IV Service Pro Jue, r subscribe for NF Deactivation events from SMOS Consumer (eg., NFO)]**

I I

I

I

Topology and Inventory Record State from

I

: ,( **2** Notify NF deactivation status

I:

I

**3** Update Topology and Inventory Record

I**"Active" to "Deployed" :;::::::J**

I

I : **4** Status of the Topology and Inventory object update

I

I 1'"''"'''""''"'"''"'"'"'"''"'"'"'"''''"'''"'"'"'"''""''"'"'"'"'"'"'''"'"''?,

**isr.OS Consumer informs TE&IV en ice Produce of NF deactivation]** ,

I I

Topology and Inventory Record State from**IP'5** U date Topology and Inventory Record I

I

I**"Active" to "Deployed"** ' I

I

I I I

I **-6**.status of the Top,olos.t and lnvento r\_object. up\_date ?. :

I

NF Te **min,** ion processlong wch resource deallocation is in progress (by SMOS Consumer/DMS)

I I

I I NF Termination process is now completed along with

I

I

I I resource deallocation by SMOS Consumer/OMS

I I

I I I

**alt** *)* **[If TEf,IV Service Pro Jue, r subscribe for NF termination events from SMOS Consumer (eg., NFO)]** I

I

I I **7** Notify NF termination status I

I:

I I

I

I I

Topology and Inventory Record State from

I" **Deployed" to "Assigned"**

I

**8** Update Topology and Inventory Record I

I

I I

I

I I

is

...

**OS Consumer informs TE&IV**

**,en**

I I

##### ,,..**9**...S..t.a..t.u.s...o..f.t.h..e...T..o..p.o..l.o..g.y...a..n..d..I.n..v.e..n..to..r.y...o..b.j.e..c.t..u..p..d..a..te....................>.., ,

I:

, , .

**ice Producer,of NF termination]** ,

I

Topology and Inventory Record State from

I" **Deployed" to "Assigned"**

**10** Update Topology and Inventory Record I I

I

I I

,,..**1**..**1**..S...t.a.t.u..s...o.f..t.h..e...T..o.p..o..l.o.g..y...a..n.d...I.n.v..e..n.t.o..r.y...o..b.j.e..c.t..u..p..d..a.t.e ;.,,

I I

**opt** *),* I

I I

:**,,c: 12** Delete correseondini resources from Toeoloiy and inventory I

I I

, **13** Delete resources from inventory I I

I

I I

: \_**14** ResP.onse\_with\_status.ofTop\_olosJ. and lnvento t object. deletion?:

I I

I **opt** *)* I I

I

**15** Notify **s** CCE ssful termin tion of NF instances I

II

1 I I

I

Networl< Function Install

**PrnJel"''"**

TE&IV I

IService Producer

I SMOS C nsumer I

###### Figure 4.1.3.3-1: Terminate NF Deployment on O-Cloud

#### Required Data

TE&IV Service Producer may use the NF Deployment identifier to delete the inventory objects of the NF Deployments from TE&IV repositories.

### Use case 4: Topology based alarm correlation

This use case provides the background, motivation, and requirements for Topology based alarm correlation, allowing operators to resolve or handle the alarms triggered through O1, O2 and M-Plane interface (in case of hybrid O-RU) using Topology Exposure and Inventory Management services, thereby reducing effort for root cause analysis of alarms.

#### Background and goal of the use case

Faults are inevitable in big distributed system like O-RAN. Unhandled alarms will degrade the performance of the O-RAN network and will impact the users. It is important to quickly find the relationship between different alarms. Faults in O1 nodes are reported through O1 interface, faults in O-Cloud resources are reported through O2 interface and faults in the O-RU are reported through M-Plane interface. With disaggregated nature of O-RAN architecture, it becomes difficult to determine the relationship between alarms raised in O1 node or O-Cloud or O-RU. Topology and Inventory models with capability to show relationship between RAN resources, O-Cloud resources and transport resources is required to pinpoint the relationship between alarming resources.

Sample scenario: Internal network switch failure in O-Cloud may impact NF Deployments which might affect the O-RAN network. Different alarms will be raised over O2, O1 and M-Plane interface as result of cascading effect of failure of an internal network switch in O-Cloud.

Topology based alarm correlation can query the TE&IV Service Producer to understand the relationships between the topology/inventory resources and the alarmed resources.

The objective of this use case is to leverage TE&IV services for alarm correlation to determine the root cause of a problem.

#### Entities/resource involved in the use case

1. TE&IV Service Consumer (e.g., an rApp)
   1. Query the TE&IV Service Producer to get the relationship between alarmed resources
2. TE&IV Service Producer
   1. Exposes TE&IV services based on Topology and Inventory Models and APIs, which offers among others the capability to provide the relationship between resources provided by O1 nodes, O-Cloud and O-RU
   2. Consumes the data provided by the SMO functions (e.g., O1-related data, O2-related data, DME, SME) and exposes it via the Topology and Inventory Models and APIs

#### Solutions

###### Table 4.1.4.3-1 Topology based Alarm Correlation

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Use>>**  **Related Use** |
| Goal | Alarm correlation using TE&IV services |  |
| Actors and Roles | [1]. TE&IV Service Consumer (e.g., an rApp)  [2]. TE&IV Service Producer |  |
| Assumptions | [1]. All relevant functions and components are instantiated. [2]. TE&IV services are supported and active in the SMO.  [3]. TE&IV Service Producer has an up-to-date view of the active alarm state list.  [4]. Some of the O-Cloud resource data that is volatile and  frequently changed inside O-Cloud is not stored in TE&IV. |  |
| Pre Conditions | Network is operational.  TE&IV Service Producer has an up-to-date view of the O-RAN network including RAN resources, NF Deployments, O-Cloud resources, and transport resources |  |
| Begins when | Fault occurs in O-RU, O-DU, and O-Cloud  Several alarms are received by TE&IV Service Consumer |  |
| Step 1 (M) | TE&IV Service Consumer queries the TE&IV Service Producer to get the NF Deployment instances using those O-Cloud resources that were  indicated in the O-Cloud alarm resources |  |
| Step 2 (M) | TE&IV Service Producer returns the data on the NF Deployment instances using the faulty O-Cloud resources to the TE&IV Service  Consumer. |  |
| Step 3 (M) | TE&IV Service Consumer queries the TE&IV Service Producer about the  NF instances that were impacted by the O1 alarms |  |
| Step 4 (M) | TE&IV Service Producer returns to the TE&IV Service Consumer the list  of NF instances |  |
| Step 5 (M) | TE&IV Service Consumer queries the TE&IV Service Producer to get the cells associated with impacted NF instances and connected O-RUs  impacted by the M-Plane alarms. |  |
| Step 6 (M) | TE&IV Service Producer returns to the TE&IV Service Consumer the list  of impacted O-RUs and cells. |  |
| Ends when | TE&IV Service Producer provided to the TE&IV Service Consumer all the requested data that correlated the faulty O-Cloud resources with the NF Deployment instances and ultimately with the cells that were using those  O-Cloud resources. |  |
| Exceptions | None Identified |  |
| Post Conditions | TE&IV Service Consumer obtains the correlated alarm data between the  faulty O-Cloud resources, O-RAN NFs, and the impacted cells. |  |
| Traceability | REQ-TE&IV-MODEL-FUN1, REQ-TE&IV-MODEL-FUN2, REQ-TE&IV- MODEL-FUN3, REQ-TE&IV-MODEL-FUN4, REQ-TE&IV-MODEL-FUN5, REQ-TE&IV-MODEL-FUN7, REQ-TE&IV-MODEL-FUN8, REQ-TE&IV-  MODEL-FUN9, REQ-TE&IV-CRUDQ-FUN3 |  |

</div>

![Generated by PlantUML]({{site.baseurl}}/assets/images/68759cef2072.png)

###### Figure 4.1.4.3-1: Topology based Alarm Correlation

#### Required data

TE&IV Service Producer has the information about the O-Cloud resources, the O-RAN NFs, and their associated NF Deployments.

TE&IV Service Producer has information regarding the relationship between O-Cloud resources, the O-RAN NFs, and their associated NF Deployments.

TE&IV Service Producer has the connectivity relationships information

* Between the O-RAN NFs
* Between the O-Cloud resources

TE&IV Service Producer has the logical resource relationship of RAN resources.

TE&IV Service Producer has the identity information of TE&IV resources which enables correlation of the different identities used across different functions in SMO.

TE&IV Service Producer provides fault state and associated properties of the TE&IV resources to reflect the result of alarm correlation.

### Use case 5: O-RAN Network Planning

#### Background and goal of the use case

Network planning enables CSPs to design, manage and optimize networks efficiently. Network planning and network design aim at ensuring that the new telecommunications network operates at optimum cost and has sufficient capacity and reliability to meet the needs of the subscriber and operator. With the advent of cloud native technologies and the ability to iterate and deploy quickly through containers, microservices etc., the time period between network planning and design to network deployment and realization has reduced significantly compared to the traditional process.

The Inventory function supports the network planning process by storing and providing information regarding planned networks. TE&IV services enable bulk upload of network data to TE&IV repositories, which eases planning and deployment of large-scale networks.

The objective of this use case is to illustrate the use of bulk upload services offered by TE&IV Service Producer during O- RAN network planning.

NOTE: File format for bulk upload of network data is dependent on the common topology and inventory model and is not covered in this specification.

#### Entities/resource involved in the use case

1. Service Management and Orchestration - Supports the deployment of O-RAN NFs.
2. TE&IV Service Consumer - Manages TE&IV resources related to O-RAN NF state and configuration in the TE&IV repositories. The TE&IV Service Consumer may be an existing SMO Decoupled SMO service such as Non-RT RIC Services, RAN NF OAM Services, O-Cloud Resources Management and Orchestration Services.
3. TE&IV Service Producer - Exposes the capability for bulk upload of network data in the TE&IV repositories.

#### Solutions

###### Table 4.1.5.3-1: O-RAN Network Planning

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Goal | Illustrate the role of TE&IV services in O-RAN network planning and  deployment |  |
| Actors and Roles | [1]. Service Management and Orchestration Framework: TE&IV Service Producer, TE&IV Service Consumer  [2]. Consumers of the SMO Service such as Radio and Transport network designers, Radio and transport network  planners, Field Technician, Network Operator |  |
| Assumptions | [1]. The Service Management and Orchestration Framework and O-Cloud are connected and interact normally.  [2]. O-DU and O-RU are PNFs.  EXAMPLE: For the purpose of this use case, the TE&IV inventory objects follow the Inventory object status model values highlighted in Annex A  O-Cloud inventory objects planning may follow the same pattern as RAN network objects |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Pre-conditions | [1]. Planning data for RAN, transport networks etc. are available in files in pre-defined format  [2]. Planning data has information about NF hierarchy, geo- location, O-Cloud Id for NF deployment etc.  [3]. PNFs are installed  [4]. Transport network is installed  [5]. O-Cloud supports platform and resource management normally  [6]. NF Software Package has been uploaded to the O-Cloud [7]. O1 interface is configured between NFs and the SMO [8]. TE&IV services are up and running in the SMO  [9]. TE&IV Service Consumers have subscribed for notifications  regarding events related to creation of TE&IV resources in the TE&IV repositories |  |
| Begins when | Radio and Transport network planners decide to create a planned network in a specific geo-location based on finalized design from  network designers |  |
| Step 1 (O) | If the TE&IV Service Consumer is not subscribed to the RAN  inventory create/update events, a subscription request is sent to the TE&IV Service Producer |  |
| Step 2 (O) | TE&IV Service Producer confirms the subscription of RAN inventory  object creation/update |  |
| Step 3 (M) | SMO Service Consumer such as Radio planner upload the planned  inventory details to the TE&IV Service Producer |  |
| Step 4 (M) | TE&IV Service Producer creates RAN inventory objects and association as a part of planned in the TE&IV repositories as per  uploaded data |  |
| Step 5 (M) | TE&IV Service Producer acknowledges creation of the RAN inventory  objects and associations as per uploaded data |  |
| Step 6 (O) | TE&IV Service Producer notifies the subscribed TE&IV Service  Consumers about the change in RAN inventory data |  |
| Step 7 (O) | If the TE&IV Service Consumer is not subscribed to the Transport  inventory object create/update events, a subscription request is sent to the TE&IV Service Producer |  |
| Step 8 (O) | TE&IV Service Producer confirms the subscription of Transport  inventory object creation/update |  |
| Step 9 (M) | SMO Service Consumer such as Transport planner upload the  planned inventory details to the TE&IV Service Producer |  |
| Step 10 (M) | TE&IV Service Producer creates Transport inventory objects and  association as a part of planned in the TE&IV repositories as per uploaded data |  |
| Step 11 (M) | TE&IV Service Producer acknowledges creation of the RAN inventory  objects and associations as per uploaded data |  |
| Step 12 (O) | TE&IV Service Producer notifies the subscribed TE&IV Service  Consumers about the change in Transport inventory data |  |
| Ends when | The SMO holds up-to-date, active inventory of O-RAN NFs. |  |
| Exceptions | None |  |
| Post Condition | O-RAN network has been established and provides service to  customers |  |
| Traceability | REQ -TE&IV-CRUDQ-FUN1, REQ -TE&IV-CRUDQ-FUN4, REQ -  TE&IV-CRUDQ-FUN5, REQ -TE&IV-BULK-FUN1 |  |

</div>

![Generated by PlantUML]({{site.baseurl}}/assets/images/8136259ca635.png)

###### Figure 4.1.5.3-1: O-RAN Network Planning

#### Required Data

* + - * + A unique identifier is assigned during the lifecycle of TE&IV resource in the TE&IV repositories, which is returned by the TE&IV Service Producer in the response for each TE&IV service operation.
        + Representation of TE&IV resources in the TE&IV repositories may include, but not limited to the following:

Unique identifier, name, lifecycle state of the resource etc.

### Use Case 6: NF Deployment Homing based on TE&IV services

This use case provides the background, motivation, and requirements on TE&IV services for supporting NF Deployment use case with topology data. Specifically, to support queries from a TE&IV Service Consumer that is performing a NF Deployment homing decision.

This use case shows how a TE&IV Service Consumer in SMO can use the topology information about planned and available O-Cloud resources retrieved from TE&IV Service Producer.

#### Background and goal of the use-case

Orchestration use cases [i.9] involve homing decisions for NF Deployments into an appropriate O-Cloud Node Cluster.

TE&IV services will provide the topology and inventory information of the O-Cloud resources across operator's RAN network, including both active and planned view. TE&IV Service Producer shall discover the O-Cloud capabilities and expose to TE&IV Service Consumer through models and APIs

To satisfy the Network function orchestration use-cases [i.9], a TE&IV Service Consumer in SMO queries the TE&IV Service Producer to retrieve the required topology information of the O-Cloud resources across operator's network.

#### Entities/resources involved in the use-case

1. TE&IV Service Consumer
   1. Queries TE&IV Service Producer to retrieve the relationships and properties of O-Cloud resources available across operator's network
2. TE&IV Service Producer
   1. Exposes TE&IV services based on Topology and Inventory Models and APIs, which offer, among others, the capability to provide the relationships between O-Cloud resources, RAN resources and NF Deployments.
   2. Consumes the data provided by the SMO functions (e.g., O2-related functions, DME, SME, etc) and exposes it via the Topology and Inventory Models and APIs

#### Solutions

###### Table 4.1.6.3-1 NF Deployment Homing based on TE&IV services

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Use Case**  **Stage** | **Evolution / Specification** | **<<Use>>**  **Related Use** |
| Goal | TE&IV Service Producer to provide the requested topology data to TE&IV Service  Consumer containing information and relationships of the O-Cloud resources, RAN resources meeting the TE&IV Service Consumer query criteria. |  |
| Actors and  Roles | [1]. TE&IV Service Consumer  [2]. TE&IV Service Producer |  |
| Assumptions | [1]. All relevant SMO functions and components are instantiated. [2]. TE&IV services are supported and active in the SMO.  [3]. TE&IV Service Producer provides data to support TE&IV Service  Consumer which is performing NF deployment homing. |  |
| Pre Conditions | TE&IV Service Producer has an up-to-date view of the installed and running O-RU and connectivity including location information.  TE&IV Service Producer has the up-to-date view of the O-Cloud resources with their location information.  A TE&IV Service Consumer in SMO is handling homing decision for NF Deployments based on given application constraints (e.g. proximity to radio equipment), cloud resources (deploymentDescriptor) and operator constraints. This use case only deals with TE&IV producer supporting with data required by the TE&IV consumer in its homing decisions. Therefore, the actual flow of the TE&IV consumer performing homing is out of scope for this use case.  TE&IV Service Producer is a consumer of RAN NF OAM and FOCOM services as  indicated in the requirements identified in clause 5.2 |  |
| Begins when | TE&IV Service Consumer determines it needs topology data to use as input to its  NF Deployment homing decision. |  |
| Step 1 (M) | TE&IV Service Consumer queries TE&IV Service Producer to get the identities of  the O-Clouds and their O-Cloud Node Clusters and the O-RU locations at a given geographical coverage area. |  |
| Step 2 (M) | TE&IV Service Producer validates the requests, retrieves the O-Cloud data, including their O-Cloud Node Clusters and O-RU information.  Among the topology data returned there are: the identities of the O-Cloud Node Clusters and their location attribute and O-RU information together with location information, adjacency and latency information, and other connectivity and  topology related information. |  |
| Step 3 (M) | TE&IV Service Producer returns the retrieved connectivity and location information  of the O-Cloud, O-Cloud Node Clusters and O-RU to the TE&IV Service Consumer |  |
| Step 4 (M) | TE&IV Service Consumer queries the infrastructure information of each of the O- Cloud Node Clusters it selected, to obtain their capabilities, the available  resources, and the planned resources (in case any have already been planned for |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
|  | this NF Deployment, as well as to see what resources have already been  reserved) |  |
| Step 5(M) | TE&IV Service Producer validates the requests, retrieves infrastructure information of the O-Cloud Node Clusters and returns the information to the TE&IV Service  Consumer. |  |
| Step 6 (M) | TE&IV Service Producer returns the retrieved O-Cloud Node Clusters  infrastructure information to the TE&IV Service Consumer |  |
| Ends when | TE&IV Service Consumer now has the up-to-date information on the O-Cloud  resources available at the O-Cloud site(s) it selected, including both the capabilities and resources availability. |  |
| Exceptions | n/a |  |
| Post  Conditions | n/a |  |
| Traceability | REQ-TE&IV-MODEL-FUN2, REQ-TE&IV-MODEL-FUN3, REQ-TE&IV-MODEL-  FUN4, REQ-TE&IV-MODEL-FUN6, REQ-TE&IV-MODEL-FUN7 |  |

</div>

![Generated by PlantUML]({{site.baseurl}}/assets/images/de5d962da733.png)

###### Figure 4.1.6.3-1: NF Deployment Homing based on TE&IV services

#### Required Data

TE&IV Service Producer has the connectivity and location information of O-RU

TE&IV Service Producer has the connectivity, infrastructure and location information of O-Cloud(s) and O-Cloud Node Clusters.

### Use Case 7: TE&IV Updates related to O-Cloud-Provisioning

#### Background and goal of the use-case

This use case describes the creation of a single O-Cloud Node Cluster with O-Cloud Node addition(s), including addition of cluster capabilities. The creation of an O-Cloud Node request originates from FOCOM and is sent towards the IMS within the O-Cloud. The objective of the operation is to create the O-Cloud Node Cluster information in the TE&IV repositories using TE&IV services. The create operation initiated by FOCOM is part of a family of O2 IMS Provisioning operations related to O- Cloud Node Clusters [i.5].

This use case highlights the interaction of FOCOM with TE&IV Service Producer for creating the newly provisioned O-Cloud Node Cluster information in the TE&IV repositories. Based on either a polling (Request/Response) mechanism or event (Subscribe/Notify) mechanism.

Further to a query or subscription request from TE&IV Service Consumer(s), the TE&IV Service Producer shall maintain and notify the latest status of the O-Cloud Node Cluster information to TE&IV Service Consumer(s).

#### Entities/resource involved in the use-case

SMO:

FOCOM

* + - * + TE&IV Service Producer
        + TE&IV Service Consumer
        + FOCOM - Is assumed to be inside the SMO but outside the same SMO Function as the TE&IV Service Producer. This module encapsulates the O2 IMS interface to the O-Cloud which requests the O-Cloud to create a planned O-Cloud Node Cluster

#### Solutions

###### Table 4.1.7.3-1 O-Cloud-Provisioning

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Goal | Have up-to date information in the TE&IV repositories about the O-Cloud Node  Clusters. |  |
| Actors and Roles | See clause 4.1.7.2 |  |
| Assumptions | [1]. O-Cloud is running  [2]. A request to create new O-Cloud Node Cluster is sent from FOCOM to IMS with the Inventory Cluster ID using O2 IMS Provisioning service.  [3]. FOCOM will successfully create the new O-Cloud Node Cluster based on the planned view in the O-Cloud infrastructure inventory.  [4]. The query request from the TE&IV Service Consumer to the TE&IV  Service Producer is an asynchronous event |  |
| Pre-condition | [1]. SMO is available.  [2]. In case Subscribe/Notify mechanism is used, the TE&IV Service Producer has previously subscribed to event notifications from  FOCOM. |  |
| Begins when | The TE&IV Service Consumer intends to transition a planned Cluster  Inventory to an active Cluster. |  |
| Step 1 (M) | TE&IV Service Consumer sends a request to TE&IV Service Producer to get  the details of a planned O-Cloud Node Cluster matching specific criteria. |  |
| Step 2 (M) | TE&IV Service Producer returns the corresponding Node Cluster Inventory  data |  |
| Step 3 (M) | TE&IV Service Consumer after determining template parameter values for a new Node Cluster instance request an update of the Cluster inventory data to persist those variables. The Cluster inventory record is moved from "Planned"  to "Assigned". |  |
| Step 4 (M) | TE&IV Service Producer returns a status of the operation. For this use case it is assumed that the response indicates success. If the operation failed the state remains unchanged, thus the request can be re-issued once the failure  problem has been remediated. |  |
| NOTE: | The actual request to create the O-Cloud Node Cluster is done outside of the TE&IV Service Producer. In this use case it is assumed that the operation was  successful. |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| Step 5 (M) Alternate  Subscribe/Notify | FOCOM sends asynchronous event to TE & IV Service Producer that a cluster has been created. The notification includes the Cluster Information and the  Cluster Inventory Id for the inventory record for which it was created. |  |
| Step 6 (M)  Alternate Subscribe/Notify | TE&IV Service Producer updates the Cluster Inventory record identified by the  Inventory Record Id with as built details from the Cluster Info moving it from a "Assigned" state towards "Deployed" state. |  |
| Step 7 (M) Alternate Query/Response | TE&IV Service Consumer informs TE&IV Service Producer that an "Assigned" cluster identified by its Inventory Record Id has been created and the TE&IV Service Producer needs to update its inventory record based on the cluster  identified by the Cluster Resource Id to indicate it is now "Deployed". |  |
| Step 8 (M) Alternate  Query/Response | TE&IV Service Producer requests the current Cluster Info from the FOCOM using the Cluster Resource Id |  |
| Step 9 (M)  Alternate Query/Response | FOCOM returns status [Success] and the cluster resource information to the TE&IV Service Producer |  |
| Step 10 (M) Alternate  Query/Response | TE&IV Service Producer updates the inventory record identified by the Inventory Record Id with as built details from the Cluster Info moving it from a  "Assigned" state towards "Deployed" state. |  |
| Step 11 (M)  Alternate Query/Response | TE&IV Service Producer returns the status (success/fail) of the request to transition from "Assigned" to "Deployed" to the TE&IV Service Consumer. |  |
| Step 12 (M) Alternate Notification | If the TE&IV Service Consumer has subscribed to change notifications and the inventory information for the O-Cloud Node Cluster was updated an asynchronous event is published by the TE&IV Service Producer to the TE&IV  Service Consumer. |  |
| Step 13 (M) | After ensuring the O-Cloud Node Cluster is ready for use by other SMO Functions the TE&IV Service Consumer requests an update to the Node Cluster inventory record to indicate it has transitioned from the "Deployed"  state to the "Active" state. |  |
| Step 14 (M) | TE&IV Service Producer returns a status of the operation. For this use case it is assumed that the response indicates success. If the operation failed the state remains unchanged, thus the request can be re-issued once the failure  problem has been remediated. |  |
| Step 15 (M) | SMOS Consumer requests the Node Cloud Cluster inventory details. |  |
| Step 16 (M) | TE&IV Service Consumer sends a request to TE&IV Service Producer to get  the details of a planned O-Cloud Node Cluster matching specific criteria. |  |
| Ends when | TE&IV Service Producer returns the corresponding Node Cluster Inventory  data |  |
| Exceptions | None identified. |  |
| Post Conditions | The TE&IV Service Producer shall maintain and notify the latest status of the O-Cloud Node Cluster information to TE&IV Service Consumer(s)  based on future subscription requests. |  |
| Traceability | REQ -TE&IV-CRUDQ-FUN1, REQ- TE&IV -CRUDQ-FUN2, REQ- TE&IV - CRUDQ-FUN3, REQ- TE&IV -CRUDQ-FUN4, REQ- TE&IV -CRUDQ-FUN5, REQ-TE&IV-MODEL-FUN3, REQ-TE&IV-MODEL-FUN5, REQ-TE&IV-  MODEL-FUN8 |  |

</div>

![Generated by PlantUML]({{site.baseurl}}/assets/images/4d59d5dec728.png)

###### Figure 4.1.7.3-1: O-Cloud-Provisioning

#### Required Data

TE&IV Service Producer has the connectivity, infrastructure and location information of O-Cloud(s) and O-Cloud Node Clusters.

A unique identifier is assigned during creation of TE&IV resource in the TE&IV repositories, which is returned by the TE&IV Service Producer in the response for create operation.

The unique identifier assigned during creation of TE&IV resource is in the Cluster Information provided by the FOCOM such that the TE&IV Service Producer can associate the O-Cloud Node Cluster with its corresponding inventory record.

### Use case 8: Handling Cloud Site Outage Using TE&IV Services

#### Background and goal of the use case

Due to some outage or failure, a cloud site serving a node at a popular public event goes down. An rApp acting as a TE&IV Service Consumer monitoring this, uses TE&IV services to find out what O-RAN network function(s) will be impacted by this outage. The rApp is given only the details of the cloud site facing the outage through alarms generated by the cloud provider. For the rApp to identify the O-RAN Network Function instances, it would need to query TE&IV Service Producer to retrieve the list of topology attributes from the Cloud, the RAN, and the relationship between the RAN and the Cloud domains.

Towards this goal, the rApp queries TE&IV Service producer to list the available NF Deployments from the Cloud namespace and its relationship to the O-RAN Network Function instances in the RAN namespace. Finally, the rApp queries the topology attributes in the RAN Namespace from the TE&IV Service Producer which would then be identified and recommended to an Orchestrator within the SMO to perform a rehoming of the affected O-RAN Network Functions to a functional cloud site to avoid network disruption.

The motivation of this use case is to highlight the role of TE&IV services in rehoming O-RAN NFs to a viable cloud site to avoid network disruption at a popular public event. This use case leverages the O-RAN NF and O-Cloud models as outlined in [2], and the RAN-O-Cloud relationship exposed by TE&IV Service Producer.

#### Entities/resources involved in the use case

1. TE&IV Service Consumer as rApp
   1. Queries TE&IV Service Producer to retrieve the relationships and properties of Cloud and RAN resources across operator's network.
2. TE&IV Service Producer
   1. Exposes TE&IV services based on Topology and Inventory Models and APIs, which offers among others the capability to provide the relationship between resources provided by Cloud and RAN.
   2. Consumes the data provided by SMO functions and exposes it via the Topology and Inventory Models and APIs.

#### Solutions

###### Table 4.1.8.3-1: Handling Cloud Site Outage Using TE&IV Services

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Use Case**  **Stage** | **Evolution / Specification** | **<<Use>>**  **Related Use** |
| Goal | TE&IV Service Consumer (e.g., rApp) to rehome RAN Logical NFs to another  Cloud Site to avoid disruption of a critical network. |  |
| Actors and  Roles | [1]. TE&IV Service Consumer (e.g., rApp)  [2]. TE&IV Service Producer |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| Assumptions | TE&IV Service Producer synchronizes its repositories with the RAN and Cloud  Topology information |  |
| Pre Conditions | [1]. Network is facing an imminent outage.  [2]. TE&IV Service Producer has an up-to-date view of the O-RAN network including RAN resources, NF Deployments, and O-Cloud resources  [3]. The rApp is deployed and authorized to query RAN NF OAM and TE&IV Service Producer. Geo-location of cell and NF Deployment is available  for query in the TE&IV Service Producer |  |
| Begins when | TE&IV Service Consumer is notified of a set of alarms generated by a disruption in  a cloud site related to NF Deployments |  |
| Step 1 (M) | TE&IV Service Consumer queries TE&IV Service Producer for Cloud Site ID  affected by the outage |  |
| Step 2 (M) | TE&IV Service Producer traverses through the TE&IV Cloud topology information  to retrieve the associated node clusters and NF deployments. |  |
| Step 3 (M) | TE&IV Service Consumer queries TE&IV Service Producer for the associated NF  Deployments serving the RAN logical NFs. |  |
| Step 4 (M) | TE&IV Service Producer exposes the relationship between the RAN Logical NF  instances and its associated NF Deployments. |  |
| Step 5 (M) | TE&IV Service Consumer queries the TE&IV Service Producer for the Topology attributes of the RAN Logical NF instance Topology entity.  NOTE: Steps 5 to 7 can be looped for each RAN Logical NF Instance |  |
| Step 6 (M) | TE&IV Service Producer responds with the list of Topology attributes for the RAN  Logical NF instance Topology entity. |  |
| Step 7 (O) | TE&IV Service Consumer requests additional RAN related information from  various other sources |  |
| Step 8 (M) | TE&IV Service Consumer analyses the RAN Logical NF instances associated to  the affected NF Deployments |  |
| Step 9 (M) | TE&IV Service Consumer performs the necessary tasks to rehome the NF  Deployments to another available node cluster / cloud site |  |
| Ends when | Homing is completed as per Use Case 6: NF Deployment Homing based on  TE&IV services, clause 4.1.6 |  |
| Exceptions | n/a |  |
| Post  Conditions | TE&IV Service Producer maintains an updated view of the RAN, Cloud, and  relationship topology information |  |
| Traceability | REQ-TE&IV -CRUDQ-FUN3, REQ-TE&IV-MODEL-FUN1, REQ-TE&IV-MODEL- FUN2, REQ-TE&IV-MODEL-FUN3, REQ-TE&IV-MODEL-FUN4, REQ-TE&IV-  MODEL-FUN5, REQ-TE&IV-MODEL-FUN6 |  |

</div>

![Generated by PlantUML]({{site.baseurl}}/assets/images/9c4f701220b3.png)

###### Figure 4.1.8.3-1: Handling Cloud Site Outage Using TE&IV Services

#### Required Data

TE&IV Service Producer has information about the O-Cloud resources and the O-RAN Network Functions

TE&IV Service Producer has information regarding the relationship between O-RAN Network Functions and its associated NF deployments in the cloud.

# Requirements

## Functional Requirements

###### Table 5.1-1: TE&IV services Functional Requirements

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **REQ** | **Description** | **Notes** |
| REQ -TE&IV-CRUDQ-FUN1 | TE&IV services shall support the creation of TE&IV resources. | Use case 4.1.1  Use case 4.1.5  Use case 4.1.7 |
| REQ- TE&IV -CRUDQ-FUN2 | TE&IV services shall support the  update of TE&IV resources. | Use case 4.1.1  Use case 4.1.7 |
| REQ-TE&IV -CRUDQ-FUN3 | TE&IV services shall support the query of TE&IV resources. | Use case 4.1.1  Use case 4.1.2  Use case 4.1.4  Use case 4.1.7  Use case 4.1.8 |
| REQ -TE&IV-CRUDQ-FUN4 | TE&IV services shall support the capability of subscribing for notifications related to changes in  TE&IV resources. | Use case 4.1.5  Use case 4.1.7 |
| REQ -TE&IV-CRUDQ-FUN5 | TE&IV services shall support the capability of notifying subscribers related to changes in TE&IV  resources. | Use case 4.1.5  Use case 4.1.7 |
| REQ -TE&IV-CRUDQ-FUN6 | TE&IV services shall support the  capability to delete TE&IV resources. | Use case 4.1.3 |
| REQ- TE&IV -BULK-FUN1 | TE&IV services shall support the bulk upload capability for creating and  updating TE&IV resources. | Use case 4.1.5 |
| REQ-TE&IV-MODEL-FUN1 | TE&IV services shall have the capability to provide data about RAN resources and the relationship  between them. | Use case 4.1.4  Use case 4.1.8 |
| REQ-TE&IV-MODEL-FUN2 | TE&IV services shall have the capability to provide data about NF Deployments and the relationships  between them. | Use case 4.1.4  Use case 4.1.6  Use case 4.1.8 |
| REQ-TE&IV-MODEL-FUN3 | TE&IV services shall have the capability to provide data about O- Cloud resources available in the network and the relationships  between them. | Use case 4.1.4  Use case 4.1.6  Use case 4.1.7  Use case 4.1.8 |
| REQ-TE&IV-MODEL-FUN4 | TE&IV services shall have the capability to provide data on the relationships between the RAN resources, NF Deployment instances  and O-Cloud resources. | Use case 4.1.4  Use case 4.1.6  Use case 4.1.8 |
| REQ-TE&IV-MODEL-FUN5 | TE&IV services shall be capable of uniquely identifying different types of TE&IV resources. | Use case 4.1.4  Use case 4.1.1  Use case 4.1.5  Use case 4.1.7 |
| REQ-TE&IV-MODEL-FUN6 | TE&IV services shall have the capability to support geo-location [1]  based query. | Use case 4.1.2  Use case 4.1.6  Use case 4.1.8 |
| REQ-TE&IV-MODEL-FUN7 | TE&IV services shall have the capability to provide data on the | Use case 4.1.4  Use case 4.1.1  Use case 4.1.6 |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
|  | connectivity relationships between  the TE&IV resources. |  |
| REQ-TE&IV-MODEL-FUN8 | TE&IV services shall have the capability to provide data on the lifecycle state of the TE&IV  resources. | Use case 4.1.4  Use case 4.1.5  Use case 4.1.7 |
| REQ-TE&IV-MODEL-FUN9 | TE&IV services shall have the capability to provide data on the state of TE&IV resources derived from configuration, fault, and performance  data. | Use case 4.1.4 |
| REQ-TE&IV-MODEL-FUN10 | TE&IV services shall provide the capability to update the status of the TE&IV inventory objects based on the deployment and activation status of the O-RAN Service and RAN  Nodes | Use case 4.1.1 |

</div>

## Non-Functional Requirements

Void

## Dependencies

###### Table 5.3-1: TE&IV Dependencies

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **SMOS** | **Description** | **Notes** |
| FOCOM | TE&IV services are dependent on the FOCOM to provide a subscribe/notify pattern for O-Cloud Inventory  Change Notifications. | Use Case 4.1.6  Use Case 4.1.7 |
| FOCOM | TE&IV services are dependent on FOCOM to map a TE&IV Record Identifier to an O-Cloud Resource Identifier. | Use Case 4.1.6  Use Case 4.1.7  The TE&IV Record Identifier is expected to be provided on inventory create requests and must be included in the inventory change notification to correlate the O-Cloud inventory to SMO inventory. |
| FOCOM | TE&IV services are dependent on FOCOM to support a query using an O-Cloud Resource Identifier which relates to inventory resources in the  O-Cloud. | Use Case 4.1.6  Use Case 4.1.7 |
| RAN NF OAM FM | TE&IV services are dependent on RAN NF OAM FM to expose the capabilities to query and subscribe to alarm events related to NF/Cells, that TE&IV Service Producer can  consume | Use Case 4.1.2  Use Case 4.1.6 |
| NFO | TE&IV services are dependent on the NFO to provide a subscribe/notify pattern for O-Cloud Inventory  Change Notifications. | Use Case 4.1.3 |

</div>

# Annex A (informative):

#### A.1 Inventory Object Status Values

Throughout the life cycle of the Network provisioning use case the RAN Inventory object status in the TE&IV repository is transitioned across various values depending on the orchestration and provisioning stage of the associated network resources. The status values are updated by the TE&IV Service Consumer through the services exposed by the TE&IV Service Producer. For the Network provisioning use case following status values are considered.

NOTE: The status values specified are intended to provide information about the different stages in the lifecycle of the inventory object. It should be noted that these values might differ in various implementations.

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Inventory Object Status** | **Description** |
| Planned | O-RAN Service or RAN Node Inventory Object created in TE&IV Repository |
| Assigned | O-RAN Service or RAN Node Inventory Object is assigned with deployment specific parameter values in TE&IV Repository. |
| Deployed | O-RAN Service or RAN Node deployed- cloudified NF deployed, PNF is discovered and registered |
| Active | O-RAN Service /RAN Node created and provisioned in O-Cloud or PNF is registered and provisioned. The RAN Node and O- RAN Service are operational. |

</div>

The transitioning across the above status values and corresponding actions are shown in the diagram below.

![Generated by PlantUML]({{site.baseurl}}/assets/images/01d5be4550aa.png)

###### Figure A.1-1: TE&IV Inventory Object Status Transition

# Change History

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| Date | Revision | Description |
| 2023.03.09 | 01.00 | Incorporate approved CRs : ERI-2022.09.22-WG10-ERI-021-Terminology-v03 , NEC-2022-09-10-.WG10-CR-0001-Inventory\_ORAN\_provisioning\_usecase\_v06, NEC-2022-12-08-.WG10-CR-0002-  Inventory\_ORAN\_Network\_Planning\_usecase\_v08, NEC-2023-01-26-.WG10-CR- 0003-Inventory\_Functional\_Requirements\_v02 ,NEC-2023-02-09-.WG10-CR-0003- ORAN\_TAI\_Scope\_v01, NEC-2023-02-23-.WG10-CR-0005-  ORAN\_Inventory\_EN\_Resolution\_v03 , NEC-2023-02-28-.WG10-CR-0006- ORAN\_Inventory\_EN\_Resolution\_2\_v02, ERI-2023.03.03-WG10-ERI-029- Functional-Requirement-v03, ERI-2023.01.27-WG10-CR-027-use-case-Topology- based-alarm-correlation-v04, ERI-2023.02.15-WG10-CR-028-use-case-R1 Alarm query using TE&IV Services-v04 |
| 2023.03.13 | 01.00 | Address comments from WG10 review |
| 2023.05.04 | 01.00.01 | Implemented approved CRs for July train: ERI-2023.03.16-WG10-CR-030-use-case- NF\_Deployment\_Homing\_v06, NEC-2023-03-30-WG10-CR-0007- Inventory\_Functional\_Requirements\_v03, NEC-2023-04-13-WG10-CR-0008- Inventory\_ORAN\_NF\_Termination\_usecase\_v01 |
| 2023.05.11 | 01.00.02 | Updated Table of Contents, Included CR version |
| 2023.07.05 | 01.00.03 | Implemented approved CRs for July train: NEC-2023-05-18-WG10-CR-0009- Inventory\_Resolve\_EN\_v01, ERI-2023.05.09-WG10-CR-034-use-case-O- Cloud\_Provisioning-v04, alignment with ERI-2023.03.16-WG10-CR-030-use-case- NF\_Deployment\_Homing\_v06, [NEC-2023-06-14-.WG10-CR-0010-](https://oranalliance.atlassian.net/wiki/download/attachments/2595782657/NEC-2023-06-14-.WG10-CR-0010-ORAN_Usecase_Required_Data_v2.docx?api=v2) [ORAN\_Usecase\_Required\_Data\_v2,](https://oranalliance.atlassian.net/wiki/download/attachments/2595782657/NEC-2023-06-14-.WG10-CR-0010-ORAN_Usecase_Required_Data_v2.docx?api=v2) NEC-2023-03-30-WG10-CR-0007- Inventory\_Functional\_Requirements\_v04, NEC-2023-05-18-WG10-CR-0009- Inventory\_Resolve\_EN\_v02, ERI-2023.07.12-WG10-CR-037-Editorial\_updates-v01 |
| 2023.07.05 | 01.00.04 | Updated as per review comments received in WG10 TE&IV review page (Editorial) |
| 2023.10.10 | 01.00.05 | Implemented approved CRs for November train: ATT-2023.08.30-WG10-CR-014- O-Cloud Provisioning Update-v05, ERI-2023.10.02-WG10-CR-039-use-case- Updates to R1 Alarm query using TE&IV Services-v02, ERI-2023.10.02-WG10-CR- 040-use-case-Updates-to-NF-Deployment-Homing-v02, ERI-2023.10.02-WG10-CR- 040-use-case-Updates to Topology based Alarm Correlation-v01, NEC-2023-09-14-  WG10-CR-0011-NW\_Provisioning\_NW\_Planning Revision\_v06, ERI-2023.10.10- WG10-CR-046-Editorial\_Updates\_to\_TE&IV\_UCR\_v01 |
| 2023.11.01 | 02.00 | Implemented approved CR for November train: NEC-2023-10-12-.WG10-CR-0012- Terminate\_NF\_NW\_PlanningRevision\_v03 |
| 2024.07.12 | 03.00 | Implemented approved CR for July train: ERI-2024.06.06-WG10-CR-0088- Cloudsite-Outage-Use-Case-v02, Editorial corrections. |
| 2024.07.15 | 03.00 | Addressed WG10 review comments. Used Atlassian versioning to track revisions on the captured comments. |

</div>
---

- View in [GitHub Mode]({{site.github_page_url}}/O-RAN.WG10.TE%26IV-UCR.0-R004-v03.00.docx.md).
- Go back to [Table of Contents]({{site.baseurl}}/).
- Download the [Original Document]({{site.download_url}}/O-RAN.WG10.TE&IV-UCR.0-R004-v03.00.docx).

---

* toc
{:toc}
